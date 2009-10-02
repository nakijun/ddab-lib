////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// PJSoft Stream Library Demo Program:                                        //
//   RCDataUser.exe v1.0 of 30/09/2001                                        //
//   Project file: RCDataUser.dpr v1.0 of 30/09/2001                          //
//                                                                            //
// This program displays some rich text taken from an embedded resource. The  //
// resource file is that created by sister program RCDataCreator. Use         //
// RCDataCreator to create the resource then rebuild this project to include  //
// the resource and display the rich text.                                    //
// NOTE: RCDataCreator must be run before building and running this program.  //
//                                                                            //
// Copyright © 2001 Peter Johnson, Llanarth, Wales, UK                        //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.pjsoft.contactbox.co.uk/         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


program RCDataUser;

uses
  Forms,
  FmRCDataUser in 'FmRCDataUser.pas' {ResUseForm};

{$R *.RES}

{$R HELLO.RES}    // the resource file created by RCDataCreator.exe

begin
  Application.Initialize;
  Application.CreateForm(TResUseForm, ResUseForm);
  Application.Run;
end.
