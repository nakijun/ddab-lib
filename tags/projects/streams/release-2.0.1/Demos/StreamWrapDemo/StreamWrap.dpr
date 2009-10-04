////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// PJSoft Stream Library Demo Program:                                        //
//   StreamWrap.exe v1.0 of 30/09/2001                                        //
//   Project file: StreamWrap.dpr v1.0 of 30/09/2001                          //
//                                                                            //
// This program demonstrates how to derived a class from the TPJSteamWrapper  //
// class. It provides a class that can read and write strings from and to a   //
// stream.                                                                    //
//                                                                            //
// Copyright © 2001 Peter Johnson, Llanarth, Wales, UK                        //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.pjsoft.contactbox.co.uk/         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


program StreamWrap;

uses
  Forms,
  FmStreamWrap in 'FmStreamWrap.pas' {StreamWrapForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TStreamWrapForm, StreamWrapForm);
  Application.Run;
end.
