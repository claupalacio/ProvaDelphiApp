unit uProjetos_Controller;

interface

uses uiProjetos_Interface, System.Generics.Collections, System.SysUtils, uProjeto_Controller;

type

  TProjetos = class(TInterfacedObject, iProjetos)

    private
      FProjetos       : TList<TProjeto>;
      FLimiteProjetos : Integer;

      procedure CriarProjetos;

      function NovoValor: Currency;

    public
      constructor Create(Limite: Integer);
      destructor  Destroy; override;

      property Projetos: TList<TProjeto> read FProjetos;
  end;

implementation

{ TProjeto }

constructor TProjetos.Create(Limite: Integer);
begin
  FProjetos       := TList<TProjeto>.Create;
  FLimiteProjetos := Limite;

  CriarProjetos;
end;

procedure TProjetos.CriarProjetos;
var
  I: Integer;
begin

  for I := 1 to FLimiteProjetos do
  begin
    FProjetos.Add(TProjeto.Create(I,'Projeto ' + I.ToString,NovoValor));
  end;

end;

destructor TProjetos.Destroy;
begin
  FProjetos.Free;
  inherited;
end;

function TProjetos.NovoValor: Currency;
begin
  Randomize;
  Result := Random(Trunc(1000));
end;

end.
