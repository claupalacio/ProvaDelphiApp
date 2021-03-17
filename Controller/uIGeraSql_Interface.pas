unit uIGeraSql_Interface;

interface

uses Vcl.StdCtrls, System.Classes;

type
  //Implementação da interface ISubstitui com função única
  IGeraSql = interface
    procedure SetColunas(Colunas: TMemo);
    procedure SetTabela(Tabela: TMemo);
    procedure SetCondicoes(Condicoes: TMemo);
    function  GeraSQL : TStringList;
  end;

implementation

end.
