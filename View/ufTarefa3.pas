unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uMontaDataSet_Controller, uOperacoesEmLote_Controller;

type
  TfTarefa3 = class(TForm)
    dbgValores: TDBGrid;
    Label1: TLabel;
    btnTotal: TButton;
    edtTotal: TEdit;
    btnTotalDivisoes: TButton;
    edtTotalDivisoes: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnTotalClick(Sender: TObject);
    procedure btnTotalDivisoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDatasource   : TDatasource;
    FDataSet      : TCLientDataset;

    procedure MontaGrid;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

{ TfTarefa3 }


procedure TfTarefa3.btnTotalClick(Sender: TObject);
var
  O : TOperacoesEmLote;
begin
  O := TOperacoesEmLote.Create;
  O.SetDataSet(dbgValores.DataSource.DataSet);
  edtTotal.Text := FormatFloat('0.00', O.SomaTotal);
end;

procedure TfTarefa3.btnTotalDivisoesClick(Sender: TObject);
var
  O : TOperacoesEmLote;
begin
  O := TOperacoesEmLote.Create;
  O.SetDataSet(dbgValores.DataSource.DataSet);
  edtTotalDivisoes.Text := FormatFloat('0.00', O.SomaTotalDivisoes);
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
  MontaGrid;
end;

procedure TfTarefa3.MontaGrid;
var
  M : TMontaDataSet;
begin

  M := TMontaDataSet.Create;
  try
    FDataSet    := M.MontaDataSet;
    FDataSource := M.ConfiguraDataSource;

    FDataSource.DataSet   := FDataSet;
    dbgValores.DataSource := FDatasource;

    TFloatField(FDataSet.FieldByName('Valor')).DisplayFormat := 'R$###,###,##0.00';
  finally
    M.Destroy;
  end;
end;

end.
