unit soapForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Soap.InvokeRegistry, System.Net.URLClient, System.Net.HttpClient,
  Soap.SOAPHTTPTrans, Soap.Rio, Soap.SOAPHTTPClient, Vcl.StdCtrls,
  FacturacionCodigos;

type
  TForm1 = class(TForm)
    HTTPRIO1: THTTPRIO;
    Label1: TLabel;
    verificaConexionBtn: TButton;
    getCuisBtn: TButton;
    Memo1: TMemo;
    HTTPReqResp1: THTTPReqResp;
    getCudfBtn: TButton;
    verForm2: TButton;
    procedure verificaConexionBtnClick(Sender: TObject);
    procedure HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Client: THTTPClient);
    procedure getCuisBtnClick(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure getCudfBtnClick(Sender: TObject);
    procedure verForm2Click(Sender: TObject);
  private
    { Private declarations }
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
//para usar el tipo de TXSDateTime;
uses XSBuiltIns, procesoFunciones;

{$R *.dfm}


procedure TForm1.getCudfBtnClick(Sender: TObject);
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
end;

//proceso para agregar token a la cabecera
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

end.
