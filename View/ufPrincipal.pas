unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfPrincipal = class(TForm)
    Tarefas: TMainMenu;
    Tarefa1: TMenuItem;
    Tarefa2: TMenuItem;
    Tarefa3: TMenuItem;
    Image1: TImage;
    Sair1: TMenuItem;
    procedure Tarefa1Click(Sender: TObject);
    procedure Tarefa2Click(Sender: TObject);
    procedure Tarefa3Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private

    procedure CriaForm(TForm: TFormClass; Form:TForm);
    function fcFormExists(fmForm: TForm): boolean;

  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;


procedure TfPrincipal.CriaForm(TForm: TFormClass; Form: TForm);
begin
  if not Assigned(Form) then
    Application.CreateForm(TForm, Form);

  Form.Show;
end;

function TfPrincipal.fcFormExists(fmForm: TForm): boolean;
var
  inIdx : integer;
begin
  fcFormExists := False;
  for inIdx := 0 to MDIChildCount - 1 do
    if MDIChildren[inIdx] = fmForm then
    begin
      fcFormExists := True;
      Exit;
    end;
end;

procedure TfPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrincipal.Tarefa1Click(Sender: TObject);
begin
  if fcFormExists(fTarefa1 as TForm) then
     fTarefa1.Show
  else
     fTarefa1 := TfTarefa1.Create(Self);
end;

procedure TfPrincipal.Tarefa2Click(Sender: TObject);
begin
  if fcFormExists(fTarefa2 as TForm) then
     fTarefa2.Show
  else
     fTarefa2 := TfTarefa2.Create(Self);
end;

procedure TfPrincipal.Tarefa3Click(Sender: TObject);
begin
  if fcFormExists(fTarefa3 as TForm) then
     fTarefa3.Show
  else
     fTarefa3 := TfTarefa3.Create(Self);
end;

end.
