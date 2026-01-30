program Calculadora;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {FrmCalculadora},
  uCalculadoraModel in 'model\uCalculadoraModel.pas',
  uCalculadoraController in 'controller\uCalculadoraController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
