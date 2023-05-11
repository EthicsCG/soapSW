program pruebaFact;

uses
  Vcl.Forms,
  soapForm in 'soapForm.pas' {Form1},
  FacturacionCodigos in 'FacturacionCodigos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
