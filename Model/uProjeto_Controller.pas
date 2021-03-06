unit uProjeto_Controller;

interface

uses uiProjeto_Interface;

type

  TProjeto = class(TInterfacedObject, iProjeto)

    private
      FId    : Integer;
      FNome  : String;
      FValor : Currency;

      procedure SetId(const Value: Integer);
      procedure SetNome(const Value: String);
      procedure SetValor(const Value: Currency);

    public
      constructor Create(Id : Integer; Nome : String; Valor : Currency);

      property Id    : Integer  read FId    write SetId;
      property Nome  : String   read FNome  write SetNome;
      property Valor : Currency read FValor write SetValor;
  end;

implementation

{ TProjeto }

constructor TProjeto.Create(Id: Integer; Nome: String; Valor: Currency);
begin
  FId    := Id;
  FNome  := Nome;
  FValor := Valor;
end;

procedure TProjeto.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TProjeto.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TProjeto.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
