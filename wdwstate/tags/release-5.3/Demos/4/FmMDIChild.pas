{
  Demo of using TPJWdwState with MDI applications.

  FmMDIChild.pas - MDI child form.

  v1.0 of 27 Sep 2007

  This demo application is freeware and subject to no restrictions. No warranty
  is provided either express or implied. Use entirely at your own risk.

  The application was modified by Peter Johnson from an test application
  provided by Craig Symons.
}


unit FmMDIChild;

interface

uses
  Classes, Controls, StdCtrls, Forms,
  PJWdwState, ExtCtrls;

type
  TForm2 = class(TForm)
    PJWdwState1: TPJWdwState;
    Label1: TLabel;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.

