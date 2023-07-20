unit soapForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Soap.InvokeRegistry, System.Net.URLClient, System.Net.HttpClient,
  Soap.SOAPHTTPTrans, Soap.Rio, Soap.SOAPHTTPClient, Vcl.StdCtrls,
  FacturacionCodigos, Velthuis.BigIntegers, XSBuiltIns, FacturacionSincronizacion,
  ServicioRecepcionCompras, Xml.XMLDoc, Xml.Win.msxmldom, ComObj, msxml,
  XMLIntf, xmldom, sbxcore, sbxtypes, sbxxmlsigner, sbxutils, sbxCertificateManager,
  ServicioFacturacionCompraVenta, System.Hash, ZLib;
type
  TForm1 = class(TForm)
    CodigosFact: THTTPRIO;
    Label1: TLabel;
    Memo1: TMemo;
    HTTPReqResp1: THTTPReqResp;
    procesoUnificado: TButton;
    sincronizacionCodigoBtn: TButton;
    SincronizacionCatalogos: THTTPRIO;
    firmadoXmlBtn: TButton;
    sbxXMLSigner1: TsbxXMLSigner;
    CompraVenta: THTTPRIO;
    shaGZIP: TButton;
    procedure HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Client: THTTPClient);
    procedure CodigosFactAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure procesoUnificadoClick(Sender: TObject);
    procedure sincronizacionCodigoBtnClick(Sender: TObject);
    procedure HTTPRIO2HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Client: THTTPClient);
    procedure SincronizacionCatalogosAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure HTTPRIO3HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Client: THTTPClient);
    procedure CompraVentaAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure firmadoXmlBtnClick(Sender: TObject);
    procedure shaGZIPClick(Sender: TObject);
  private
    { Private declarations }
    procedure getCuis;
    procedure getCudf(cuis :string);
    function getmodule11 (cadena : string; numDig,limMult  : Integer; x10 : Boolean) : string;
    function getBase16(pString: string): string;
    function getBase10(pString: string): string;
    function getCud(codControl : string) : string;
    procedure sincronizacionProductos (cuis : string);
    procedure firmarXML;
    procedure compress;
    function gzipSha256Hash (const AInput: string) : string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  respuesta: ServicioFacturacionCodigos;
  sincronizacion: ServicioFacturacionSincronizacion;
  solcuis: solicitudCuis;
  comunicacion: respuestaComunicacion;
  compraVenta: ServicioFacturacion;
implementation

{$R *.dfm}

//genera xml para el proceso SOAP codigos
procedure TForm1.CodigosFactAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var xml : TStringlist;
begin
  xml := TStringlist.create;
  try
    soapresponse.Position:=0;
    xml.LoadFromStream(SOAPResponse);
    xml.SaveToFile('file.xml');
  finally
    xml.Free;
  end;
end;

//proceso para agregar token a la cabecera del proceso soap para obtener codigos
procedure TForm1.HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Client: THTTPClient);
var Token : string;
begin
  Token:= 'TokenApi eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIi'+
  'OiJtYXJjb25pIiwiY29kaWdvU2lzdGVtYSI6Ijc3MTMwNDkyNUVDQ0Y5MUM2Mz'+
  'k2QkY2Iiwibml0IjoiSDRzSUFBQUFBQUFBQURNeU5USUZBZ05ETXdEYnY1WUJDZ'+
  '0FBQUE9PSIsImlkIjoyNDg1NSwiZXhwIjoxNjkzNDQwMDAwLCJpYXQiOjE2ODkw'+
  'OTE4NDYsIm5pdERlbGVnYWRvIjoyNTI1NTU1MDE2LCJzdWJzaXN0ZW1hIjoiU0Z'+
  'FIn0.Y0Cm8hiycIjrzbqlIg8P6qqgyeGG-8Aslg_1n8x3dJGscCojqzAADkzYmp'+
  '6RdpbwoWWRxL314cheh9uZwUWErQ';
  //token en el encabezado SOAP
  Client.CustomHeaders['apikey'] := Token;
end;

//genera xml al ejecutar el proceso SOAP sincronización
procedure TForm1.SincronizacionCatalogosAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var xml : TStringlist;
begin
  xml := TStringlist.create;
  try
    soapresponse.Position:=0;
    xml.LoadFromStream(SOAPResponse);
    xml.SaveToFile('fileSinc.xml');
  finally
    xml.Free;
  end;
end;

//genera cabecera con token para soap de sincronización
procedure TForm1.HTTPRIO2HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Client: THTTPClient);
var Token : string;
begin
  Token:= 'TokenApi eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIi'+
  'OiJtYXJjb25pIiwiY29kaWdvU2lzdGVtYSI6Ijc3MTMwNDkyNUVDQ0Y5MUM2Mz'+
  'k2QkY2Iiwibml0IjoiSDRzSUFBQUFBQUFBQURNeU5USUZBZ05ETXdEYnY1WUJDZ'+
  '0FBQUE9PSIsImlkIjoyNDg1NSwiZXhwIjoxNjkzNDQwMDAwLCJpYXQiOjE2ODkw'+
  'OTE4NDYsIm5pdERlbGVnYWRvIjoyNTI1NTU1MDE2LCJzdWJzaXN0ZW1hIjoiU0Z'+
  'FIn0.Y0Cm8hiycIjrzbqlIg8P6qqgyeGG-8Aslg_1n8x3dJGscCojqzAADkzYmp'+
  '6RdpbwoWWRxL314cheh9uZwUWErQ';
  //token en el encabezado SOAP
  Client.CustomHeaders['apikey'] := Token;
end;

//genera xml al ejecutar el proceso SOAP para la recepción de compras
procedure TForm1.CompraVentaAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var xml : TStringlist;
begin
  xml := TStringlist.create;
  try
    soapresponse.Position:=0;
    xml.LoadFromStream(SOAPResponse);
    xml.SaveToFile('fileCompra.xml');
  finally
    xml.Free;
  end;
end;

//genera cabecera con token para recepcion de compras
procedure TForm1.HTTPRIO3HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Client: THTTPClient);
var Token : string;
begin
  Token:= 'TokenApi eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIi'+
  'OiJtYXJjb25pIiwiY29kaWdvU2lzdGVtYSI6Ijc3MTMwNDkyNUVDQ0Y5MUM2Mz'+
  'k2QkY2Iiwibml0IjoiSDRzSUFBQUFBQUFBQURNeU5USUZBZ05ETXdEYnY1WUJDZ'+
  '0FBQUE9PSIsImlkIjoyNDg1NSwiZXhwIjoxNjkzNDQwMDAwLCJpYXQiOjE2ODkw'+
  'OTE4NDYsIm5pdERlbGVnYWRvIjoyNTI1NTU1MDE2LCJzdWJzaXN0ZW1hIjoiU0Z'+
  'FIn0.Y0Cm8hiycIjrzbqlIg8P6qqgyeGG-8Aslg_1n8x3dJGscCojqzAADkzYmp'+
  '6RdpbwoWWRxL314cheh9uZwUWErQ';
  //token en el encabezado SOAP
  Client.CustomHeaders['apikey'] := Token;
end;

procedure TForm1.procesoUnificadoClick(Sender: TObject);
var archivo :TextFile;
    linea :string;
    sw : Integer;
    cuis, vigenciaC : string;
    cudf, vigCudf, codControl, direccion : string;
    cud : string;
begin
  //llamada al proceso de obtención del Cuis
  getCuis;
  //obtiene los datos del archivo
  AssignFile(archivo, 'datosCuis.txt');
  Reset(archivo);
  sw := 0;
  while not Eof(archivo) do
  begin
    Readln(archivo, linea);
    if sw = 0 then
    begin
      cuis := linea;
      sw := 1;
    end
    else
      vigenciaC := linea;
  end;
  CloseFile(archivo);
  //llamada al proceso de obtención cufd mandando el cuis como parametro
  getCudf(cuis);
  //obtiene los datos del archivo
  AssignFile(archivo, 'datosCudf.txt');
  Reset(archivo);
  sw := 0;
  while not Eof(archivo) do
  begin
    Readln(archivo, linea);
    case sw of
      0: cudf := linea;
      1: vigCudf := linea;
      2: codControl := linea;
      3: direccion := linea;  
    end;
    sw := sw + 1;
  end;
  CloseFile(archivo);
  //llamada a la función para generar el codigo cuf ccn el código de control
  //como parametro
  cud := getCud(codControl);
  ShowMessage('Datos generados');
  Memo1.Lines.Add('cuis: '+cuis);
  Memo1.Lines.Add('vigencia cuis: '+vigenciaC);
  Memo1.Lines.Add('cudf: '+cudf);
  Memo1.Lines.Add('vigencia cudf: '+vigCudf);
  Memo1.Lines.Add('codigo control: '+codControl);
  Memo1.Lines.Add('direccion: '+direccion);
  Memo1.Lines.Add('cud: '+cud);
end;

//proceso para obtener el hash del archivo gzip
procedure TForm1.shaGZIPClick(Sender: TObject);
var resultado : string;
begin
  resultado := gzipSha256Hash('factura/compress.gzip');
  Memo1.Text := resultado;
end;

//proceso de sincronizacion de catalogos
procedure TForm1.sincronizacionCodigoBtnClick(Sender: TObject);
var archivo : TextFile;
    linea, cuis : string;
    sw : Integer;
begin
  //para la obtencion del codigo cuis
  AssignFile(archivo, 'datosCuis.txt');
  Reset(archivo);
  sw := 0;
  while not Eof(archivo) do
  begin
    Readln(archivo, linea);
    if sw = 0 then
    begin
      cuis := linea;
      sw := 1;
    end;
  end;
  CloseFile(archivo);
  //llamada al proceso para la obtencion del catalogo de productos, mandando
  //cuis como parametro
  sincronizacionProductos(cuis);
  Memo1.Lines.LoadFromFile('fileSinc.xml');
end;

//funcion genera cuis y lo almacena en archivo de texto
procedure TForm1.getCuis;
var datos : respuestaCuis;
    cuis : solicitudCuis;
    respuesta : ServicioFacturacionCodigos;
    //archivo de texto
    archivo : TextFile;
    sw : Integer;
    linea : string;
    vigencia : string;
begin
  sw := 0;
  //verificación si existe el archivo con los datos
  if not FileExists('datosCuis.txt') then
  begin
    sw := 1;
  end
  else
  begin
    //obtencion de la vigencia del cuis
    AssignFile(archivo, 'datosCuis.txt');
    Reset(archivo);
    while not Eof(archivo) do
    begin
      Readln(archivo, linea);
      vigencia := linea;
    end;
    CloseFile(archivo);
    //verifica si la fecha actual es mayor a la vigencia
    if Now() > StrToDateTime(vigencia) then
    begin
      //vacia los datos del archivo
      AssignFile(archivo, 'datosCuis.txt');
      Rewrite(archivo);
      Write(archivo, '');
      CloseFile(archivo);
      sw := 1;
    end;
  end;
  //verifica si es necesario llamada SOAP para solicitud de Cuis
  if sw = 1 then
  begin
    respuesta := GetServicioFacturacionCodigos(False, '', CodigosFact);
    try
      cuis := solicitudCuis.Create;
      //datos a enviar
      cuis.codigoAmbiente := 2;
      cuis.codigoSistema := '771304925ECCF91C6396BF6';
      cuis.nit := 2525555016;
      cuis.codigoModalidad := 1;
      cuis.codigoSucursal := 0;
      cuis.codigoPuntoVenta := 0;
      //obtiene respuesta de la solicitud
      datos := respuesta.cuis(cuis);
      cuis.Free;
      //crear archivo txt
      AssignFile (archivo,'datosCuis.txt');
      Rewrite (archivo);
      Writeln(archivo, datos.codigo);
      Writeln(archivo, DateTimeToStr(datos.fechaVigencia.AsDateTime));
      CloseFile (archivo);
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
  end;
end;

//funcion de obtencion cudf y almacenamiento de variables
procedure TForm1.getCudf (cuis :string);
var cudf : solicitudCufd;
    datos : respuestaCufd;
    respuesta : ServicioFacturacionCodigos;
    //archivo de texto
    archivo : TextFile;
    sw, swc : Integer;
    linea, vigencia : string;
begin
  sw := 0;
  if not FileExists('datosCudf.txt') then
  begin
    sw := 1;
  end
  else
  begin
    AssignFile(archivo, 'datosCudf.txt');
    Reset(archivo);
    swc := 0;
    while not Eof(archivo) do
    begin
      //obtiene la vigencia del cudf
      Readln(archivo, linea);
      case swc of
        1: vigencia := linea;
      end;
      swc := swc + 1;
    end;
    CloseFile(archivo);
    //verifica si la fecha actual es mayor a la vigencia
    if Now() > StrToDateTime(vigencia) then
    begin
      //vacia los datos del archivo
      AssignFile(archivo, 'datosCudf.txt');
      Rewrite(archivo);
      Write(archivo, '');
      CloseFile(archivo);
      sw := 1;
    end;
  end;
  //verifica para realizar el proceso soap para la obtencion del cufd
  if sw = 1 then
  begin
    respuesta := GetServicioFacturacionCodigos(False, '', CodigosFact);
    try
      cudf := solicitudCufd.Create;
      //datos necesarios para la solicitud
      cudf.codigoAmbiente := 2;
      cudf.codigoSistema := '771304925ECCF91C6396BF6';
      cudf.nit := 2525555016;
      cudf.codigoModalidad := 1;
      cudf.cuis := cuis;
      cudf.codigoSucursal := 0;
      cudf.codigoPuntoVenta := 0;
      //obtencion y llamada a la funcion para el cufd
      datos := respuesta.cufd(cudf);
      //crear archivo txt
      AssignFile (archivo,'datosCudf.txt');
      Rewrite (archivo);
      Writeln(archivo, datos.codigo);
      Writeln(archivo, DateTimeToStr(datos.fechaVigencia.AsDateTime));
      Writeln(archivo, datos.codigoControl);
      Writeln(archivo, datos.direccion);
      CloseFile (archivo);
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
  end;
end;

//funcion modulo11
function TForm1.getmodule11 (cadena : string; numDig,limMult  : Integer; x10 : Boolean) : string;
var
    mult, suma, I, n, dig : Integer;
begin
  if not x10 then
    numDig := 1;
  for n := 1 to numDig do
  begin
    suma := 0;
    mult := 2;
    for i := cadena.Length -1 downto 0 do
    begin
      suma := suma + (mult *  StrToInt(Copy(cadena, i, 1)));
      if ++mult > limMult then
        mult := 2;
    end;
    if x10 then
      dig := ((suma *10 ) mod 11) mod 10
    else
      dig := suma mod 11;
    if dig = 10 then
      cadena := cadena + '1';
    if dig = 11 then
      cadena := cadena + '0';
    if dig < 10 then
      cadena := cadena + dig.ToString;
  end;
  Result := cadena.Substring(cadena.Length - numDig, cadena.Length);
end;

//function base 16
function TForm1.getBase16(pString: string): string;
var
  vValor: BigInteger;
begin
  vValor := BigInteger.Parse(pString);
  Result := vValor.ToHexString;
end;

//funcion base 10
function TForm1.getBase10(pString: string): string;
var
  vValor: BigInteger;
begin
  vValor := BigInteger.Parse('$' + pString);
  Result := vValor.ToString();
end;

//funcion para obtener cud
function TForm1.getCud(codControl : string) : string;
var sucursal, modalidad, tipEmision, tipFactura, tipSector, nroFactura,
    pos : Integer;
    cudp : string;
    nit : Int64;
    cud : string;
    modulo11 : string;
    codigo : string;
begin
  nit := 2525555016;
  sucursal := 0;
  modalidad := 1;
  //online/offline/masiva
  tipEmision := 1;
  //con/sin derecho credito fiscal
  tipFactura := 1;
  //factura compra venta/recibo/notadébito
  tipSector := 1;
  nroFactura := 4220;
  codigo := '';
  //punto de venta
  pos := 0;
  //concatenacion y ceros a la izquierda
  cudp := Format('%0.*D',[13,nit])+FormatDateTime('yyyyMMddHHnnssZZ', Now)+
          Format('%0.*D', [4, sucursal])+ modalidad.ToString +
          tipEmision.ToString + tipFactura.ToString + Format('%0.*D', [2, tipSector]) +
          Format('%0.*D', [10, nroFactura])+ Format('%0.*D', [4, pos]);
  //llamada para aplicar el algoritmo modulo 11
  modulo11 := getmodule11(cudp, 1, 9, false);
  //concatena al final el valor obtenido del modulo 11
  cudp := cudp + modulo11;
  //aplicacion de la base 16
  cud := getBase16(cudp);
  //concatenación con el codigo de control
  Result := cud + codControl;
end;

//funcion sincronizacion de productos
procedure TForm1.sincronizacionProductos (cuis : string);
var sincronizacion : ServicioFacturacionSincronizacion;
    solicitud : solicitudSincronizacion;
    datos : Array_Of_productosDto;
    i: Integer;
begin
  try
    sincronizacion := GetServicioFacturacionSincronizacion(False, '', SincronizacionCatalogos);
    //datos necesarios para la solicitud
    solicitud := solicitudSincronizacion.Create;
    solicitud.codigoAmbiente := 2;
    solicitud.codigoSistema := '771304925ECCF91C6396BF6';
    solicitud.nit := 2525555016;
    solicitud.cuis := cuis;
    solicitud.codigoSucursal := 0;
    solicitud.codigoPuntoVenta := 0;
    datos := sincronizacion.sincronizarListaProductosServicios(solicitud).listaCodigos;
    ShowMessage(Length(datos).ToString);
    for i := 0 to Length(datos) do
    begin
      //Memo1.Lines.Add(datos[i].ChildNodes['codigoActividad']);
    end;
    //ShowMessage(datos.listaCodigos);
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end
end;

procedure TForm1.firmadoXmlBtnClick(Sender: TObject);
begin
  firmarXML;
end;

procedure TForm1.firmarXML;
var dat: TsbxXMLSigner;
    certManager: TsbxCertificateManager;

begin
  dat := TsbxXMLSigner.Create(nil);
  certManager := TsbxCertificateManager.Create(nil);
  certManager.ImportFromFile('firma\softoken.p12', 'F4kM4rk0L');
  dat.InputFile := 'factura/factura.xml';
  dat.OutputFile := 'factura/facturafimada.xml';
  dat.CanonicalizationMethod := cxcmCanon;
  dat.SignatureType;
  try
    dat.SigningCertificate := certManager.Certificate;
    dat.Sign;
    ShowMessage('archivo firmado');
  except
    on E: Exception do
      MessageDlg('Error al abrir el certificado: ' + E.ToString, mtError, [mbOk], 0);
  end;
end;

procedure TForm1.compress;
var LInput, LOutput: TFileStream;
    LZip: TZCompressionStream;
begin
  LInput := TFileStream.Create('factura/factura.xml', fmOpenRead);
  LOutput := TFileStream.Create('factura/compress.gzip', fmCreate);
  LZip := TZCompressionStream.Create(clDefault, LOutput);
  LZip.CopyFrom(LInput, LInput.Size);
  LZip.Free;
  LInput.Free;
  LOutput.Free;
end;

function TForm1.gzipSha256Hash (const AInput: string) : string;
var hashBytes: TBytes;
    hashString: string;
begin
  hashBytes := THashSha2.GetHashBytes(AInput, THashSHA2.TSHA2Version.SHA256);
  hashString := LowerCase(THashSHA2.GetHashString(AInput, THashSHA2.TSHA2Version.SHA256));
  result := hashString;
end;
end.
