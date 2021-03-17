unit uGeraSql_Controller;

interface

uses
  uIGeraSql_Interface, Vcl.StdCtrls, System.Classes;

type

  TGeraSql = class(TInterfacedObject, IGeraSql)

    private
      FColunas   : TMemo;
      FTabela    : TMemo;
      FCondicoes : TMemo;

    public
	    procedure SetColunas(Colunas: TMemo);
      procedure SetTabela(Tabela: TMemo);
      procedure SetCondicoes(Condicoes: TMemo);
      function  GeraSQL : TStringList;
  end;

implementation

{ TGeraSql }

uses uspQuery;

function TGeraSql.GeraSQL: TStringList;
var
  qryGeraSQL : TspQuery;

  spColunas   : TStringList;
  spTabelas   : TStringList;
  spCondicoes : TStringList;

begin

  qryGeraSQL := TspQuery.Create(nil);

  spColunas   := TStringList.Create;
  spTabelas   := TStringList.Create;
  spCondicoes := TStringList.Create;

  spColunas.AddStrings(FColunas.Lines);
  spTabelas.AddStrings(FTabela.Lines);
  spCondicoes.AddStrings(FCondicoes.Lines);

  qryGeraSQL.spColunas   := spColunas;
  qryGeraSQL.spTabelas   := spTabelas;
  qryGeraSQL.spCondicoes := spCondicoes;

  Result := qryGeraSQL.GeraSQL;

end;

procedure TGeraSql.SetColunas(Colunas: TMemo);
begin
  FColunas := Colunas;
end;

procedure TGeraSql.SetCondicoes(Condicoes: TMemo);
begin
  FCondicoes := Condicoes;
end;

procedure TGeraSql.SetTabela(Tabela: TMemo);
begin
  FTabela := Tabela;
end;

end.
