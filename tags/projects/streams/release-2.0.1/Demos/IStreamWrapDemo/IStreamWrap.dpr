////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// PJSoft Stream Library Demo Program:                                        //
//   IStreamWrap.exe v1.0 of 30/09/2001                                       //
//   Project file: IStreamWrap.dpr v1.0 of 30/09/2001                         //
//                                                                            //
// This program demonstrates how to use the classes that implement IStream    //
// interfaces for wrapped streams that are provided in the PJIStreams unit    //
//                                                                            //
// Copyright © 2001 Peter Johnson, Llanarth, Wales, UK                        //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.pjsoft.contactbox.co.uk/         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


program IStreamWrap;

uses
  Forms,
  FmIStreamWrap in 'FmIStreamWrap.pas' {IStreamWrapForm},
  FmIStreamWrapHelp in 'FmIStreamWrapHelp.pas' {IStreamWrapHelpForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TIStreamWrapForm, IStreamWrapForm);
  Application.Run;
end.
