unit uspQuery;

interface

uses
  System.Classes, FireDAC.Comp.Client, FireDac.DApt, System.SysUtils;

  type

  TspQuery = class(TFDQuery)

  private
    FspColunas   : TStringList;
    FspTabelas   : TStringList;
    FspCondicoes : TStringList;

    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);
    procedure SetspCondicoes(const Value: TStringList);

    procedure MontaSelect(Query : TStringList);
    procedure MontaFrom(Query : TStringList);
    procedure MontaWhere(Query : TStringList);
  Public
    Function GeraSQL : TstringList;

  Published
    property spColunas   : TStringList read FspColunas   write SetspColunas;
    property spTabelas   : TStringList read FspTabelas   write SetspTabelas;
    property spCondicoes : TStringList read FspCondicoes write SetspCondicoes;
  end;

implementation

{ TspQuery }

Function TspQuery.GeraSQL:TstringList;
var
  spSQL : TStringList;
begin

  spSQL       := TStringList.Create;
  MontaSelect(spSql);
  MontaFrom(spSql);
  MontaWhere(spSql);

  Result := spSQL;

end;

procedure TspQuery.MontaFrom(Query: TStringList);
var
  s     : String;
begin

  Query.add('from');
  for s in spTabelas do
    Query.add('  ' + s );

end;

procedure TspQuery.MontaSelect(Query: TStringList);
var
  s : string;
begin

  Query.add('select');

  if spColunas.Count = 0 then
    Query.add(' *');

  for s in spColunas do
  begin
    if Query.Count = 1 then
      Query.add('  ' + s )
    else
      Query.add(' ,' + s);
  end;

end;

procedure TspQuery.MontaWhere(Query: TStringList);
var
  s : String;
begin

  if spCondicoes.Count > 0 then
    Query.add('where 1 = 1 ');

  for s in spCondicoes do
    Query.add('   and ' + s);

end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin

  if Value.Count > 1 then
    raise Exception.Create('Quantidade de tabelas maior que 1!');

  if Value.Count = 0 then
    raise Exception.Create('Nenhuma tabela selecionada!');

  FspTabelas := Value;
end;

end.
