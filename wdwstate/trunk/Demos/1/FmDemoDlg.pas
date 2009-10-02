{ ##
  @PROJECT_NAME             StandardDemo
  @PROJECT_DESC             Standard demo for Window State Components:
                            demonstrates design time use of TPJRegWdwState.
  @FILE                     FmDemoDlg.pas
  @COMMENTS                 Demo's subsidiary dialog box.
  @DEPENDENCIES             Requires TPJRegWdwState.
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
    @REVISION(
      @VERSION              1.1
      @DATE                 16/12/2005
      @COMMENTS             Removed properties from form that were not supported
                            in earlier Delphis.
    )
  )
}


unit FmDemoDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PJWdwState, StdCtrls;

type
  TDemoDlg = class(TForm)
    PJRegWdwState1: TPJRegWdwState;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure PJRegWdwState1ReadWdwState(Sender: TObject; var Left, Top,
      Width, Height, State: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{
  The TPJRegWdwState component is set up with the following non-default property
  values:
    IgnoreState = True
    Options = [woIgnoreState, woIgnoreSize]
    OnReadWdwState = PJRegWdwState1ReadWdwState
    SubKey = 'Software\DelphiDabbler\Demos\WindowState\Dlg'
}

procedure TDemoDlg.FormShow(Sender: TObject);
begin
  // PJRegWdwState1.AutoSaveRestore is false so we must call
  // TPJRegWdwState.Restore when the form is shown ...
  PJRegWdwState1.Restore;
end;

procedure TDemoDlg.FormHide(Sender: TObject);
begin
  // ... and TPJRegWdwState.Save when the form is hidden to store the window
  // info
  PJRegWdwState1.Save;
end;

procedure TDemoDlg.PJRegWdwState1ReadWdwState(Sender: TObject; var Left,
  Top, Width, Height, State: Integer);
begin
  // Display size and position info read from registry
  Label1.Caption := Format(
    'Left=%d, Top=%d'#10'Width=%d, Height=%d',
    [Left, Top, Width, Height]
  )
end;

end.
