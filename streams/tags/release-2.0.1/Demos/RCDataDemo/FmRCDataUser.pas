////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// delphiDabbler Stream Library Demo Program:                                 //
//   RCDataUser.exe v1.0 of 30/09/2001                                        //
//   Main form file: FmRCDataUser v1.0 of 30/09/2001                          //
//                                                                            //
// This program displays some rich text taken from an embedded resource. The  //
// resource file is that created by sister program RCDataCreator. Use         //
// RCDataCreator to create the resource then rebuild this project to include  //
// the resource and display the rich text.                                    //
// NOTE: RCDataCreator must be run before building and running this program.  //
//                                                                            //
// Copyright © 2001-3 Peter Johnson, Llanarth, Wales, UK                      //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.delphidabbler.com/               //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


unit FmRCDataUser;

interface

uses
  // Delphi
  StdCtrls, Classes, Controls, ComCtrls, Forms;

type
  {
  TResUseForm:
    Main application form class.
  }
  TResUseForm = class(TForm)
    reDisplay: TRichEdit;
    btnDisplay: TButton;
    btnClose: TButton;
    procedure btnDisplayClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  end;

var
  ResUseForm: TResUseForm;

implementation

uses
  // Delphi
  Windows;

{$R *.DFM}

procedure TResUseForm.btnDisplayClick(Sender: TObject);
  {Display RTF sotred in RCDATA resource 100}
var
  RS: TResourceStream;  // object to read resource data
begin
  // Create resource stream using Delphi's TResourceStream class
  RS := TResourceStream.CreateFromID(HInstance, 100, RT_RCDATA);
  try
    // Load the rich edit component
    reDisplay.Lines.LoadFromStream(RS);
  finally
    // Free the stream
    RS.Free;
  end;
end;

procedure TResUseForm.btnCloseClick(Sender: TObject);
  {Close application}
begin
  Close;
end;

end.
