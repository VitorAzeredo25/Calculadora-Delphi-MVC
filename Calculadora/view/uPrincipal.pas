unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uCalculadoraController;

type
  TFrmCalculadora = class(TForm)
    pnlDisplay: TPanel;
    pnlComandos: TPanel;
    pnlBotoes: TPanel;
    pnlOperacoes: TPanel;

    bbtnSete: TBitBtn;
    bbtnOito: TBitBtn;
    bbtnNove: TBitBtn;
    bbtnQuatro: TBitBtn;
    bbtnCinco: TBitBtn;
    bbtnSeis: TBitBtn;
    bbtnUm: TBitBtn;
    bbtnDois: TBitBtn;
    bbtnTres: TBitBtn;
    bbtnZero: TBitBtn;

    edtDisplay: TEdit;
    edtHist: TEdit;

    bbtnIgual: TBitBtn;
    bbtnMult: TBitBtn;
    bbtnDivi: TBitBtn;
    bbtnMenos: TBitBtn;
    bbtnMais: TBitBtn;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure NumeroClick(Sender: TObject);
    procedure OperacaoClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);

  private
    { Private declarations }
    FController: TCalculadoraController;
    procedure AtualizarDisplay;
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses uCalculadoraModel;

{$R *.dfm}

{ TFrmCalculadora }

procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  FController := TCalculadoraController.Create(TCalculadoraModel.Create);
end;



procedure TFrmCalculadora.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;



procedure TFrmCalculadora.NumeroClick(Sender: TObject);
begin
  FController.AdicionarNumero((Sender as TBitBtn).Tag);
  AtualizarDisplay;
end;




procedure TFrmCalculadora.OperacaoClick(Sender: TObject);
var
  OperacaoEscolhida: TOperacao;
  SimboloOperacao: String;
begin
  SimboloOperacao := '';
  OperacaoEscolhida := opNenhuma;

  if Sender = bbtnMais then
  begin
    OperacaoEscolhida := opSoma;
    SimboloOperacao := '+';
  end
  else if Sender = bbtnMenos then
  begin
    OperacaoEscolhida := opSubtracao;
    SimboloOperacao := '-';
  end
  else if Sender = bbtnMult then
  begin
    OperacaoEscolhida := opMultiplicacao;
    SimboloOperacao := '*';
  end
  else if Sender = bbtnDivi then
  begin
    OperacaoEscolhida := opDivisao;
    SimboloOperacao := '/';
  end;

  if OperacaoEscolhida <> opNenhuma then
  begin
    FController.DefinirOperacao(OperacaoEscolhida);

    edtHist.Text := edtDisplay.Text + ' ' + SimboloOperacao;
  end;
end;

procedure TFrmCalculadora.IgualClick(Sender: TObject);
begin
  edtHist.Text := edtHist.Text + ' ' + edtDisplay.Text + ' =';

  FController.Calcular;

  AtualizarDisplay;
end;




procedure TFrmCalculadora.AtualizarDisplay;
begin
  edtDisplay.Text := FController.DisplayText;
end;

end.
