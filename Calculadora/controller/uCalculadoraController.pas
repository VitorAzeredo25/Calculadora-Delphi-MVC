unit uCalculadoraController;

interface
uses
  System.SysUtils, uCalculadoraModel;

type

  TOperacao = (opNenhuma, opSoma, opSubtracao, opMultiplicacao, opDivisao);

  TCalculadoraController = class
    private
    FModel: TCalculadoraModel;

    FDisplayAtual: String;
    FValorAnterior: Double;
    FOperacaoPendente: TOperacao;
    FLimparDisplay: Boolean;

    public
    constructor Create(AModel: TCalculadoraModel);
    destructor Destroy; override;

    // Operações
    function Somar(A, B: Double): Double;
    function Subtrair(A, B: Double): Double;
    function Dividir(A, B: Double): Double;
    function Multiplicar(A, B: Double): Double;

    procedure AdicionarNumero(Numero: Integer);
    procedure DefinirOperacao(Operacao: TOperacao);
    procedure Calcular;
    procedure LimparTudo;


    property DisplayText: String read FDisplayAtual;


  end;


implementation


{ TCalculadoraController }

constructor TCalculadoraController.Create(AModel: TCalculadoraModel);
begin
  inherited Create;
  FModel := AModel;
  LimparTudo;
end;

destructor TCalculadoraController.Destroy;
begin
  FModel.Free;
  inherited;
end;




procedure TCalculadoraController.AdicionarNumero(Numero: Integer);
begin
  if FLimparDisplay then
  begin
    FDisplayAtual := '';
    FLimparDisplay := False;
  end;

  if FDisplayAtual = '0' then
    FDisplayAtual := IntToStr(Numero)
  else
    FDisplayAtual := FDisplayAtual + IntToStr(Numero);
end;




procedure TCalculadoraController.Calcular;
var
  ValorAtual: Double;
  Resultado: Double;
begin
  if FOperacaoPendente = opNenhuma then
    Exit;

  ValorAtual := StrToFloatDef(FDisplayAtual, 0);
  Resultado := 0;

  case FOperacaoPendente of
    opSoma:        Resultado := FModel.Adicao(FValorAnterior, ValorAtual);
    opSubtracao:   Resultado := FModel.Subtracao(FValorAnterior, ValorAtual);
    opMultiplicacao: Resultado := FModel.Multiplicacao(FValorAnterior, ValorAtual);
    opDivisao:     Resultado := FModel.Divisao(FValorAnterior, ValorAtual);
  end;

  FDisplayAtual := FloatToStr(Resultado);

  FOperacaoPendente := opNenhuma;

  FLimparDisplay := True;
end;




procedure TCalculadoraController.DefinirOperacao(Operacao: TOperacao);
begin
  FValorAnterior := StrToFloatDef(FDisplayAtual, 0);
  FOperacaoPendente := Operacao;
  FLimparDisplay := True;
end;

procedure TCalculadoraController.LimparTudo;
begin
  FDisplayAtual := '0';
  FValorAnterior := 0;
  FOperacaoPendente := opNenhuma;
  FLimparDisplay := False;
end;




function TCalculadoraController.Dividir(A, B: Double): Double;
begin
  Result := FModel.Divisao(A, B);
end;

function TCalculadoraController.Multiplicar(A, B: Double): Double;
begin
  Result := FModel.Multiplicacao(A, B);
end;

function TCalculadoraController.Somar(A, B: Double): Double;
begin
  Result := FModel.Adicao(A, B);
end;

function TCalculadoraController.Subtrair(A, B: Double): Double;
begin
  Result := FModel.Subtracao(A, B);
end;

end.
