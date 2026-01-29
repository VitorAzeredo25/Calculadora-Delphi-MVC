unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
