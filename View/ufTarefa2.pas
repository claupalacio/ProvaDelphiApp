unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ComCtrls, uThread_Controller;

type
  TfTarefa2 = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    btnIniciar: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    edtIntervalo1: TSpinEdit;
    edtIntervalo2: TSpinEdit;
    procedure btnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    T1, T2 : TSoftThread;

    procedure Iniciar;
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

{ TfTarefa2 }

procedure TfTarefa2.btnIniciarClick(Sender: TObject);
begin
  Iniciar;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfTarefa2.Iniciar;
begin
  T1 := TSoftThread.Create(True);
  T1.SetIntervalo(edtIntervalo1.Value);
  T1.SetProgressBar(ProgressBar1);

  T2 := TSoftThread.Create(True);
  T2.SetIntervalo(edtIntervalo2.Value);
  T2.SetProgressBar(ProgressBar2);

  T1.Start;
  T2.Start;
end;

end.
