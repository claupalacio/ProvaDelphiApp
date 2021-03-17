unit uiOperacoesEmLote_Interface;

interface

uses
  Data.DB;

Type
  iOperacoesEmLote = interface
    function SetDataSet(DataSet:TDataSet) : iOperacoesEmLote;
    function SomaTotal         : Double;
    function SomaTotalDivisoes : Double;
  end;

implementation

end.
