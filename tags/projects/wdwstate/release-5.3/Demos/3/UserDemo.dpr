{ ##
  @PROJECT_NAME             UserDemo
  @PROJECT_DESC             User demo for Window State Components:
                            demonstrates use of TPJUserWdwState component.
  @FILE                     UserDemo.dpr
  @COMMENTS                 Demo's project file.
  @LICENSE                  This demo application is freeware and subject to no
                            restrictions. No warranty is provided either express
                            or implied. Use entirely at your own risk.
  @COPYRIGHT                Copyright (c) 2006, Peter D Johnson.
  @HISTORY(
    @REVISION(
      @VERSION              1.0
      @DATE                 15/10/2006
      @COMMENTS             Original version.
    )
  )
}


program UserDemo;

uses
  Forms,
  FmUserDemo in 'FmUserDemo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
