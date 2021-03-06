unit uMontaDataSet_Controller;

interface

uses uiMontaDataSet_Interface, Datasnap.DBClient, Data.DB, System.SysUtils,
  Vcl.Forms, uProjetos_Controller, uProjeto_Controller;

type
  TMontaDataSet = class(TInterfacedObject, iMontaDataSet)

  private
    function ConfiguraDataSet    : TCLientDataset;

  public
    function ConfiguraDataSource : TDatasource;
    function MontaDataSet        : TCLientDataset;

  end;

implementation

{ TMontaDataSet }

function TMontaDataSet.ConfiguraDataSet: TCLientDataset;
begin
  ConfiguraDataSet := TClientDataSet.Create(nil);

  ConfiguraDataSet.FieldDefs.Add('IdProjeto', ftInteger);
  ConfiguraDataSet.FieldDefs.Add('NomeProjeto', ftString, 65);
  ConfiguraDataSet.FieldDefs.Add('Valor', ftFloat);
  ConfiguraDataSet.CreateDataSet;
end;

function TMontaDataSet.ConfiguraDataSource: TDatasource;
begin
  ConfiguraDataSource := TDataSource.Create(nil);
end;

function TMontaDataSet.MontaDataSet: TCLientDataset;
var
  I  : Integer;
  LP : TProjetos;
  P  : TProjeto;
begin

  MontaDataSet    := ConfiguraDataSet;
  try
    LP := TProjetos.Create(10);

    for P in LP.Projetos do
    begin
      MontaDataSet.Append;
      MontaDataSet.FieldByName('IdProjeto').AsInteger  := P.Id;
      MontaDataSet.FieldByName('NomeProjeto').AsString := P.Nome;
      MontaDataSet.FieldByName('Valor').AsFloat        := P.Valor;
      MontaDataSet.Post;
    end;

  finally
    LP.Destroy;
  end;

end;

end.
