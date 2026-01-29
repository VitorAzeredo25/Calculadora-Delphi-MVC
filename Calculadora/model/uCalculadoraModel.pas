unit uCalculadoraModel;

interface

uses
  System.SysUtils;

type
  // Objeto que irá guardar todas as operações da calculadora
  TCalculadoraModel = class
    function Adicao(A, B: Double): Double;
    function Subtracao(A, B: Double): Double;
    function Multiplicacao(A, B: Double): Double;
    function Divisao(A, B: Double): Double;
  end;

implementation


{ TCalculadoraModel }

    //Calculos de cada Function
function TCalculadoraModel.Adicao(A, B: Double): Double;
begin
  Result := A + B;
end;

function TCalculadoraModel.Divisao(A, B: Double): Double;
begin
  if B = 0 then
    raise Exception.Create('Divisão por zero!');
  Result := A / B;
end;

function TCalculadoraModel.Multiplicacao(A, B: Double): Double;
begin
  Result := A * B;
end;

function TCalculadoraModel.Subtracao(A, B: Double): Double;
begin
  Result := A - b;
end;

end.
