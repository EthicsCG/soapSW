program pruebaFact;

uses
  Vcl.Forms,
  soapForm in 'soapForm.pas' {Form1},
  FacturacionCodigos in 'FacturacionCodigos.pas',
  procesoFunciones in 'procesoFunciones.pas' {Form2},
  FacturacionSincronizacion in 'FacturacionSincronizacion.pas',
  ServicioRecepcionCompras in 'ServicioRecepcionCompras.pas',
  ServicioFacturacionCompraVenta in 'ServicioFacturacionCompraVenta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
