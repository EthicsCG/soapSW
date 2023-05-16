unit soapForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Soap.InvokeRegistry, System.Net.URLClient, System.Net.HttpClient,
  Soap.SOAPHTTPTrans, Soap.Rio, Soap.SOAPHTTPClient, Vcl.StdCtrls,
  FacturacionCodigos, Velthuis.BigIntegers, XSBuiltIns{, procesoFunciones};
  {Velthuis.BigIntegers -- liberiria para aceptar biginteger
   XSBuiltIns --para usar el tipo de dato TXSDateTime}

type
  TForm1 = class(TForm)
    HTTPRIO1: THTTPRIO;
    Label1: TLabel;
    Memo1: TMemo;
    HTTPReqResp1: THTTPReqResp;
    procesoUnificado: TButton;
    //procedure verificaConexionBtnClick(Sender: TObject);
    procedure HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Client: THTTPClient);
    //procedure getCuisBtnClick(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    //procedure getCudfBtnClick(Sender: TObject);
    //procedure verForm2Click(Sender: TObject);
    procedure procesoUnificadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure getCuis;
    procedure getCudf(cuis :string);
    function getmodule11 (cadena : string; numDig,limMult  : Integer; x10 : Boolean) : string;
    function getBase16(pString: string): string;
    function getBase10(pString: string): string;
    function getCud(codControl : string) : string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ws : ServicioFacturacionCodigos;
  respuesta : ServicioFacturacionCodigos;
  solcuis : solicitudCuis;
  comunicacion : respuestaComunicacion;
implementation

{$R *.dfm}

{procedure TForm1.getCudfBtnClick(Sender: TObject);
var cudf : solicitudCufd;
  datos : respuestaCufd;
  respuesta : ServicioFacturacionCodigos;
begin
  respuesta := GetServicioFacturacionCodigos(False, '', HTTPRIO1);
  try
    cudf := solicitudCufd.Create;
    cudf.codigoAmbiente := 2;
    cudf.codigoSistema := '771304925ECCF91C6396BF6';
    cudf.nit := 2525555016;
    cudf.codigoModalidad := 1;
    cudf.cuis := '20DAA4D';
    cudf.codigoSucursal := 0;
    cudf.codigoPuntoVenta := 0;
    datos := respuesta.cufd(cudf);
    cudf.Free;
    if Trim(datos.codigo) <> ''  then
      ShowMessage('Codigo Cudf: '+datos.codigo)
    else
      ShowMessage('sin datos del codigo');
    Memo1.Lines.LoadFromFile('file.xml');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TForm1.getCuisBtnClick(Sender: TObject);
var datos : respuestaCuis;
    cuis : solicitudCuis;
    respuesta : ServicioFacturacionCodigos;
    vigencia : TXSDateTime;
    codCuis : string;
begin
  respuesta := GetServicioFacturacionCodigos(False, '', HTTPRIO1);
  try
    cuis := solicitudCuis.Create;
    cuis.codigoAmbiente := 2;
    cuis.codigoSistema := '771304925ECCF91C6396BF6';
    cuis.nit := 2525555016;
    cuis.codigoModalidad := 1;
    cuis.codigoSucursal := 0;
    cuis.codigoPuntoVenta := 0;
    datos := respuesta.cuis(cuis);
    cuis.Free;
    codCuis := datos.codigo;
    vigencia := datos.fechaVigencia;
    if Trim(datos.codigo) <> ''  then
      ShowMessage('Codigo Cuis: '+codCuis)
    else
      ShowMessage('sin datos del codigo');
    Memo1.Lines.LoadFromFile('file.xml');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TForm1.verForm2Click(Sender: TObject);
begin
    procesoFunciones.Form2.Show;
end;

procedure TForm1.verificaConexionBtnClick(Sender: TObject);
var respuesta : ServicioFacturacionCodigos;
begin
  respuesta := GetServicioFacturacionCodigos(False, '', HTTPRIO1);
  respuesta.verificarComunicacion;
  try
    ShowMessage('Pasa dato apikey');
    Memo1.Lines.LoadFromFile('file.xml');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;}

//genera xml para cualquier proceso SOAP
procedure TForm1.HTTPRIO1AfterExecute(const MethodName: string;
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

//proceso para agregar token a la cabecera
procedure TForm1.HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Client: THTTPClient);
var Token : string;
begin
  Token:= 'TokenApi eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYXJjb25pI'+
          'iwiY29kaWdvU2lzdGVtYSI6Ijc3MTMwNDkyNUVDQ0Y5MUM2Mzk2QkY2Iiwi'+
          'bml0IjoiSDRzSUFBQUFBQUFBQURNeU5USUZBZ05ETXdEYnY1WUJDZ0FBQUE9'+
          'PSIsImlkIjoyNDg1NSwiZXhwIjoxNjg4MDgzMjAwLCJpYXQiOjE2ODMxNDUwMT'+
          'csIm5pdERlbGVnYWRvIjoyNTI1NTU1MDE2LCJzdWJzaXN0ZW1hIjoiU0ZFIn0'+
          '.-HAcNb1xKygGFvFGHiPliGt6v43118c3PfAA-MwpXh0UP0bW_dZICmRnAsfE'+
          't4HGLZpxUib2H32xLh1VyE8GvA';
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
  getCuis;
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
  getCudf(cuis);
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
  if not FileExists('datosCuis.txt') then
  begin
    sw := 1;
  end
  else
  begin
    AssignFile(archivo, 'datosCuis.txt');
    Reset(archivo);
    while not Eof(archivo) do
    begin
      Readln(archivo, linea);
      vigencia := linea;
    end;
    CloseFile(archivo);
    if Now() > StrToDateTime(vigencia) then
    begin
      AssignFile(archivo, 'datosCuis.txt');
      Rewrite(archivo);
      Write(archivo, '');
      CloseFile(archivo);
      sw := 1;
    end;
  end;
  if sw = 1 then
  begin
    respuesta := GetServicioFacturacionCodigos(False, '', HTTPRIO1);
    try
      cuis := solicitudCuis.Create;
      cuis.codigoAmbiente := 2;
      cuis.codigoSistema := '771304925ECCF91C6396BF6';
      cuis.nit := 2525555016;
      cuis.codigoModalidad := 1;
      cuis.codigoSucursal := 0;
      cuis.codigoPuntoVenta := 0;
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
      Readln(archivo, linea);
      case swc of
        1: vigencia := linea; 
      end;
      swc := swc + 1;
    end;
    CloseFile(archivo);
    if Now() > StrToDateTime(vigencia) then
    begin
      AssignFile(archivo, 'datosCudf.txt');
      Rewrite(archivo);
      Write(archivo, '');
      CloseFile(archivo);
      sw := 1;
    end;  
  end;
  if sw = 1 then
  begin
    respuesta := GetServicioFacturacionCodigos(False, '', HTTPRIO1);
    try
      cudf := solicitudCufd.Create;
      cudf.codigoAmbiente := 2;
      cudf.codigoSistema := '771304925ECCF91C6396BF6';
      cudf.nit := 2525555016;
      cudf.codigoModalidad := 1;
      cudf.cuis := cuis;
      cudf.codigoSucursal := 0;
      cudf.codigoPuntoVenta := 0;
      datos := respuesta.cufd(cudf);
      cudf.Free;
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
    pos, I : Integer;
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
  cudp := Format('%0.*D',[13,nit])+FormatDateTime('yyyyMMddHHnnssZZ', Now)+
          Format('%0.*D', [4, sucursal])+ modalidad.ToString +
          tipEmision.ToString + tipFactura.ToString + Format('%0.*D', [2, tipSector]) +
          Format('%0.*D', [10, nroFactura])+ Format('%0.*D', [4, pos]);
  modulo11 := getmodule11(cudp, 1, 9, false);
  cudp := cudp + modulo11;
  cud := getBase16(cudp);
  Result := cud + codControl;
end;
end.
