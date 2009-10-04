{
  Demo of using TPJWdwState with MDI applications.
                                   
  FmMDIMain.pas - MDI main form.

  v1.0 of 27 Sep 2007

  This demo application is freeware and subject to no restrictions. No warranty
  is provided either express or implied. Use entirely at your own risk.

  The application was modified by Peter Johnson from an test application
  provided by Craig Symons.
}


unit FmMDIMain;

interface

uses
  Controls, ExtCtrls, ComCtrls, ToolWin, Menus, Classes, Forms,
  PJWdwState;

type

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    PJWdwState1: TPJWdwState;
    File1: TMenuItem;
    Exit1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure Exit1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

end.

