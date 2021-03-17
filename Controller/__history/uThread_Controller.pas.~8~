unit uThread_Controller;

interface

uses
  System.Classes, System.SysUtils, Vcl.ComCtrls;

type
  TSoftThread = class(TThread)

    private
      FIntervalo   : Integer;
      FProgressBar : TProgressBar;

      procedure SetPosicaoProgressBar(Posicao : Integer);

    public
      procedure SetIntervalo(Intervalo: Integer);
      procedure SetProgressBar(ProgressBar: TProgressBar);
      procedure Execute; override;
  end;
implementation

{ TThread }

procedure TSoftThread.Execute;
var
  I: Integer;
begin
  inherited;

  for I := 1 to 100 do
  begin
    Sleep(FIntervalo);
    SetPosicaoProgressBar(I);
  end;

end;

procedure TSoftThread.SetIntervalo(Intervalo: Integer);
begin
  if Intervalo <= 0 then
    raise Exception.Create('Intervalo menor que zero!');

  FIntervalo := Intervalo;
end;

procedure TSoftThread.SetProgressBar(ProgressBar: TProgressBar);
begin
  FProgressBar := ProgressBar;
end;

procedure TSoftThread.SetPosicaoProgressBar(Posicao : Integer);
begin
  FProgressBar.Position := Posicao;
end;

end.
