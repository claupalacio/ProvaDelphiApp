unit uiMontaDataSet_Interface;

interface

uses
  Data.DB, Datasnap.DBClient;

type
  iMontaDataSet = interface
    function ConfiguraDataSet    : TCLientDataset;
    function ConfiguraDataSource : TDatasource;
    function MontaDataSet        : TCLientDataset;
  end;

implementation

end.
