////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// PJSoft Stream Library Demo Program:                                        //
//   RCDataCreator.exe v1.0 of 30/09/2001                                     //
//   Project file: RCDataCreator.dpr v1.0 of 30/09/2001                       //
//                                                                            //
// This program demonstrates how to use the resource file stream writer       //
// classes from the PJResWriterStreams unit. The program creates an RCDATA    //
// resource file containing some rich text format data. The sister program    //
// RCDataUser uses this resource and displays the rich text.                  //
//                                                                            //
// Copyright © 2001 Peter Johnson, Llanarth, Wales, UK                        //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.pjsoft.contactbox.co.uk/         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


program RCDataCreator;

uses
  Forms,
  FmRCDataCreator in 'FmRCDataCreator.pas' {RCDataCreatorForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TRCDataCreatorForm, RCDataCreatorForm);
  Application.Run;
end.
