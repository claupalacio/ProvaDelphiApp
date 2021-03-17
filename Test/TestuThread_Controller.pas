unit TestuThread_Controller;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Vcl.ComCtrls, System.SysUtils, uThread_Controller, System.Classes;

type
  // Test methods for class TSoftThread

  TestTSoftThread = class(TTestCase)
  strict private
    FSoftThread: TSoftThread;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSetIntervalo;
    procedure TestSetProgressBar;
    procedure TestExecute;
  end;

implementation

procedure TestTSoftThread.SetUp;
begin
  FSoftThread := TSoftThread.Create(True);
end;

procedure TestTSoftThread.TearDown;
begin
  FSoftThread.Free;
  FSoftThread := nil;
end;

procedure TestTSoftThread.TestSetIntervalo;
var
  Intervalo: Integer;
begin
  Intervalo := 10;
  try
    FSoftThread.SetIntervalo(Intervalo);
  finally
    CheckTrue(true);
  end;
end;

procedure TestTSoftThread.TestSetProgressBar;
var
  ProgressBar: TProgressBar;
begin
  try
    FSoftThread.SetProgressBar(ProgressBar);
  finally
    CheckTrue(true);
  end;

end;

procedure TestTSoftThread.TestExecute;
var
  ProgressBar: TProgressBar;
begin
  try
    FSoftThread := TSoftThread.Create(True);
    FSoftThread.SetIntervalo(10);
    FSoftThread.SetProgressBar(ProgressBar);
    FSoftThread.Execute;
  finally
    CheckTrue(true);
  end;
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTSoftThread.Suite);
end.
