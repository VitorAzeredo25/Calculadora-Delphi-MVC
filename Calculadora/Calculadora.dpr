program Calculadora;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {Form1},
  uCalculadoraModel in 'model\uCalculadoraModel.pas',
  uCalculadoraController in 'controller\uCalculadoraController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
