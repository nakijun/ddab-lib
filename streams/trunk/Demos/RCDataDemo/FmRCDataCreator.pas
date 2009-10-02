////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// delphiDabbler Stream Library Demo Program:                                 //
//   RCDataCreator.exe v1.0 of 30/09/2001                                     //
//   Main form file: FmRCDataCreator.pas v1.0 of 30/09/2001                   //
//                                                                            //
// This program demonstrates how to use the resource file stream writer       //
// classes from the PJResWriterStreams unit. The program creates an RCDATA    //
// resource file containing some rich text format data. The sister program    //
// RCDataUser uses this resource and displays the rich text.                  //
//                                                                            //
// Copyright © 2001-3 Peter Johnson, Llanarth, Wales, UK                      //
//                                                                            //
// Any comments to peter.johnson@openlink.org                                 //
// Library updates available from http://www.delphidabbler.com/               //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


unit FmRCDataCreator;

interface

uses
  // Delphi
  Classes, Controls, StdCtrls, Forms;

type
  {
  TRCDataCreatorForm:
    Main form class.
  }
  TRCDataCreatorForm = class(TForm)
    btnCreate: TButton;
    btnClose: TButton;
    procedure btnCreateClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  end;

var
  RCDataCreatorForm: TRCDataCreatorForm;

implementation

uses
  // Delphi
  SysUtils, Windows, Dialogs,
  // delphiDabbler Stream Library
  PJResWriterStreams;

{$R *.DFM}

{ Helper routine }

procedure CreateResourceFile(
  DataFile, ResFile: string;  // file names
  ResID: Integer              // id of resource
);
  {Creates resource file ResFile with ResID as indentifier from contents of
  DataFile}
var
  FS: TFileStream;                    // input file stream
  ResFileWriter: TPJResWriterStream;  // handles writing resource file
  ResDataWriter: TPJResDataStream;    // handles writing data within res file
begin
  // Intialise variables
  ResFileWriter := nil;
  ResDataWriter := nil;
  // Create inout file stream to rtf file we're embedding in resource file
  FS := TFileStream.Create(DataFile, fmOpenRead);
  try
    // Create resource file writer:
    //   this object handles formatting of resource file, using wrapped file
    //   stream to handle actual file output
    //   here we demostrate how to create wrapped file on fly and close it
    //   automatically
    ResFileWriter := TPJResWriterStream.Create(
      TFileStream.Create(ResFile, fmCreate),   // file stream used to write file
      True      // means wrapped TFileStream is freed when this stream destroyed
    );
    // Create resource data writer:
    //   this object handles layout of resource data section within file - the
    //   wrapped res file writer handles placing of this resource within
    //   resource file
    //   here we demonstrate wrapping a stream that we will free manually
    ResDataWriter := TPJResDataStream.Create(
      ResId,          // id of resource being created
      RT_RCDATA,      // resource is user defined data
      ResFileWriter,  // resource file writer used to handle res file structure
      False           // we don't free res file writer when this object is freed
    );
    // Copy source file into resource
    ResDataWriter.CopyFrom(FS, FS.Size);
  finally
    // Free streams we are handling ourselves
    ResDataWriter.Free;
    ResFileWriter.Free;
    FS.Free;
  end;
end;

procedure TRCDataCreatorForm.btnCreateClick(Sender: TObject);
  {Create RCDATA resource with id 100 in file Hello.res containing contents of
  Hello.rtf}
begin
  // Create resource file containing the rtf file, with id of 100
  CreateResourceFile('Hello.rtf', 'Hello.res', 100);
  // Show a message to say we've done
  MessageDlg(
    'Resource file Hello.res has been created'#10#10
    + 'Now build RCDataUser.dpr and run it',
    mtInformation,
    [mbOK],
    0
  );
end;

procedure TRCDataCreatorForm.btnCloseClick(Sender: TObject);
  {Close application}
begin
  Close;
end;

end.
