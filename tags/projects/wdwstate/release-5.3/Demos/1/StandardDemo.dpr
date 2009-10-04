{ ##
  @PROJECT_NAME             StandardDemo
  @PROJECT_DESC             Standard demo for Window State Components:
                            demonstrates design time use of TPJRegWdwState.
  @FILE                     StandardDemo.dpr
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


program StandardDemo;

uses
  Forms,
  FmDemo in 'FmDemo.pas' {DemoForm},
  FmDemoDlg in 'FmDemoDlg.pas' {DemoDlg};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDemoForm, DemoForm);
  Application.Run;
end.
