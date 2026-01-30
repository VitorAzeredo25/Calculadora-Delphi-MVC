unit uCalculadoraController;

interface
uses
  System.SysUtils, uCalculadoraModel;

type
  TCalculadoraController = class
    private
    FModel: TCalculadoraModel;

    public
    constructor Create(AModel: TCalculadoraModel);
    destructor Destroy; override;

    // Operações
    function Somar(A, B: Double): Double;
    function Subtrair(A, B: Double): Double;
    function Dividir(A, B: Double): Double;
    function Multiplicar(A, B: Double): Double;
  end;


implementation


{ TCalculadoraController }



constructor TCalculadoraController.Create(AModel: TCalculadoraModel);
begin
  inherited Create;
  FModel := AModel;
end;

destructor TCalculadoraController.Destroy;
begin
  FModel.Free;
  inherited;
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
