{ ##
  @PROJECT_NAME             StandAloneDemo
  @PROJECT_DESC             Stand-alone demo for Window State Components:
                            demonstrates run-time creation and use of
                            TPJWdwState.
  @FILE                     StandAloneDemo.dpr
  @COMMENTS                 Demo's project file.
  @LICENSE                  This demo application is freeware and subject to no
                            restrictions. No warranty is provided either express
                            or implied. Use entirely at your own risk.
  @COPYRIGHT                Copyright (c) 2005, Peter D Johnson.
  @HISTORY(
    @REVISION(
      @VERSION              1.0
      @DATE                 03/09/2005
      @COMMENTS             Original version.
    )
  )
}


program StandAloneDemo;

uses
  Forms,
  FmMain in 'FmMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
