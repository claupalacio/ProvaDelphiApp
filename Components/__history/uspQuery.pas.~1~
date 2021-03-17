unit uspQuery;

interface

uses
  System.Classes, FireDAC.Comp.Client, FireDac.DApt;

  type

  TNotifyEvent = procedure (Sender : TObject) of Object;

  TspQuery = class(TFDQuery)

  private
    FspColunas: TStringList;
    FspTabelas: TStringList;
    FspCondicoes: TStringList;
    FStatus: TNotifyEvent;

    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetStatus(const Value: TNotifyEvent);

  Public
   Function GeraSQL:TstringList;
   procedure OnStatus;

  published
   property spColunas: TStringList read FspColunas write SetspColunas;
   property spTabelas: TStringList read FspTabelas write SetspTabelas;
   property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
   property Status : TNotifyEvent read FStatus write SetStatus;
  end;

implementation

{ TspQuery }

Function TspQuery.GeraSQL:TstringList;
  var campos, Script : String;
  i: Integer;
  SqlQuery :TStringList;
begin
  SqlQuery := TStringList.Create;
  try
   for i := 0 to spColunas.Count -1 do
   campos := campos + spColunas.Strings[i]+ ',';

   Script := ' Select ' +#13+
              Copy(campos,1,(length(campos)-1))+
             ' From '+spTabelas.Text+''+ #13+
             ' Where '+spCondicoes.Text;

    SqlQuery.Add(Script);
    SQL := SqlQuery;
  finally
    Result := SqlQuery;
    OnStatus;
    SqlQuery.Free;
  end;

end;

procedure TspQuery.OnStatus;
begin
 if Assigned(Status) then
  Status(Self);
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
  FspTabelas := Value;
end;

procedure TspQuery.SetStatus(const Value: TNotifyEvent);
begin
  FStatus := Value;
end;

end.
