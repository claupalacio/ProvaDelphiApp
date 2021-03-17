unit uOperacoesEmLote_Controller;

interface

uses
  uiOperacoesEmLote_Interface, Data.DB;

type
  TOperacoesEmLote = class(TInterfacedObject, iOperacoesEmLote)

    FDataSet :TDataSet;

    function SetDataSet(DataSet:TDataSet):iOperacoesEmLote;
    function SomaTotal         : Double;
    function SomaTotalDivisoes : Double;
  end;

implementation

{ TController_OperacoesEmLote_Calculos }

function TOperacoesEmLote.SetDataSet(
  DataSet: TDataSet): iOperacoesEmLote;
begin
  Result   := Self;
  FDataSet := DataSet;
end;

function TOperacoesEmLote.SomaTotal: Double;
var
  Total : Double;
begin

  Total := 0;

  FDataSet.First;

  while not FDataSet.Eof do
  begin
    Total := Total + FDataSet.FieldByName('Valor').AsFloat;
    FDataSet.Next;
  end;

  Result := Total;

end;

function TOperacoesEmLote.SomaTotalDivisoes: Double;
var
  id: Integer;
  Total, vrAtual, vrAnterior: Double;
begin

  Total := 0;

  FDataSet.First;
  id := FDataSet.FieldByName('IdProjeto').AsInteger;

  while not FDataSet.Eof do
  begin
    vrAtual := FDataSet.FieldByName('Valor').AsFloat;

    if id <> FDataSet.FieldByName('IdProjeto').AsInteger then
      Total := Total + (vrAtual/vrAnterior);

    vrAnterior := FDataSet.FieldByName('Valor').AsFloat;
    id         := FDataSet.FieldByName('IdProjeto').AsInteger;

    FDataSet.Next;
  end;

  Result := Total;

end;

end.
