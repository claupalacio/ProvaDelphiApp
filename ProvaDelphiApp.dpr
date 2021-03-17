program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufPrincipal in 'View\ufPrincipal.pas' {fPrincipal},
  uIGeraSql_Interface in 'Controller\uIGeraSql_Interface.pas',
  uGeraSql_Controller in 'Controller\uGeraSql_Controller.pas',
  ufTarefa1 in 'View\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'View\ufTarefa2.pas' {fTarefa2},
  uThread_Controller in 'Controller\uThread_Controller.pas',
  ufTarefa3 in 'View\ufTarefa3.pas' {fTarefa3},
  uiMontaDataSet_Interface in 'Controller\uiMontaDataSet_Interface.pas',
  uMontaDataSet_Controller in 'Controller\uMontaDataSet_Controller.pas',
  uIProjeto_Interface in 'Model\uIProjeto_Interface.pas',
  uProjeto_Controller in 'Model\uProjeto_Controller.pas',
  uIProjetos_Interface in 'Controller\uIProjetos_Interface.pas',
  uProjetos_Controller in 'Controller\uProjetos_Controller.pas',
  uiOperacoesEmLote_Interface in 'Controller\uiOperacoesEmLote_Interface.pas',
  uOperacoesEmLote_Controller in 'Controller\uOperacoesEmLote_Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
