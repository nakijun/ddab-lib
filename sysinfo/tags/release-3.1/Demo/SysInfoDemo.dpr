{
 * SysInfoDemo.dpr
 *
 * Project file for System Information Unit demo program.
 *
 * v1.0 of 30 Jun 2003  - Original version.
 * v1.1 of 15 Apr 2008  - Added PJSysInfo unit to project.
 *
 *
 * This file is copyright (C) P D Johnson (www.delphidabbler.com), 2003-2008.
 * It may be used without restriction,
}


program SysInfoDemo;

uses
  Forms,
  FmDemo in 'FmDemo.pas' {DemoForm},
  PJSysInfo in '..\PJSysInfo.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDemoForm, DemoForm);
  Application.Run;
end.
