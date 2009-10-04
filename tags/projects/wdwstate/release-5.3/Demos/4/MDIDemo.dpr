{
  Demo of using TPJWdwState with MDI applications.

  MDIDemo.dpr - Project file.

  v1.0 of 27 Sep 2007

  This demo application is freeware and subject to no restrictions. No warranty
  is provided either express or implied. Use entirely at your own risk.

  The application was modified by Peter Johnson from an test application
  provided by Craig Symons.
}


program MDIDemo;

uses
  Forms,
  FmMDIMain in 'FmMDIMain.pas' {Form1},
  FmMDIChild in 'FmMDIChild.pas' {Form2};

{$R *.res}     

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

