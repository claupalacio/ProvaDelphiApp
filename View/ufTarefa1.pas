unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uGeraSql_Controller;

type
  TfTarefa1 = class(TForm)
    memColunas: TMemo;
    memTabelas: TMemo;
    memCondicoes: TMemo;
    btnGeraSql: TBitBtn;
    memSqlGerado: TMemo;
    lblColunas: TLabel;
    lblTabelas: TLabel;
    lblCondicoes: TLabel;
    lblSqlGerado: TLabel;
    btnLimpar: TBitBtn;
    procedure btnGeraSqlClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function  geraSQL : TStringList;
    procedure limparCampos;
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGeraSqlClick(Sender: TObject);
begin
  memSqlGerado.Clear;
  memSqlGerado.lines := geraSQL;
end;

procedure TfTarefa1.btnLimparClick(Sender: TObject);
begin
  limparCampos;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfTarefa1.geraSQL: TStringList;
var
  g : TGeraSql;
begin

  g := TGeraSql.Create;
  try
    g.SetColunas(memColunas);
    g.SetTabela(memTabelas);
    g.SetCondicoes(memCondicoes);
    Result := g.GeraSQL;
  finally
    g.Destroy;
  end;

end;

procedure TfTarefa1.limparCampos;
begin
  memColunas.Clear;
  memTabelas.Clear;
  memCondicoes.Clear;
  memSqlGerado.Clear;
end;

end.
