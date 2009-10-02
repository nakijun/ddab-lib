{ ##
  @PROJECT_NAME             UserDemo
  @PROJECT_DESC             User demo for Window State Components:
                            demonstrates use of TPJUserWdwState component.
  @FILE                     FmUserDemo.pas
  @COMMENTS                 Demo's main form.
  @DEPENDENCIES             Requires TPJUserWdwState.
  @LICENSE                  This demo application is freeware and subject to no
                            restrictions. No warranty is provided either express
                            or implied. Use entirely at your own risk.
  @COPYRIGHT                Copyright (c) 2006, Peter D Johnson.
  @HISTORY(
    @REVISION(
      @VERSION              1.0
      @DATE                 15/10/2006
      @COMMENTS             Original version.
    )
  )
}


unit FmUserDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, PJWdwState, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    PJUserWdwState1: TPJUserWdwState;
    procedure PJUserWdwState1ReadData(Sender: TObject;
      var Data: TPJWdwStateData);
    procedure PJUserWdwState1SaveData(Sender: TObject;
      const Data: TPJWdwStateData);
  private
    function DataFile: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.DataFile: string;
begin
  // Returns name of data file in same directly as application
  Result := ExtractFilePath(ParamStr(0)) + 'wdwstate.dat';
end;

procedure TForm1.PJUserWdwState1ReadData(Sender: TObject;
  var Data: TPJWdwStateData);
var
  FS: TFileStream;
begin
  // We first check there is a data file: exception in TFileStream.Create if not
  // Then we read binary data from it directly into Data
  if FileExists(DataFile) then
  begin
    FS := TFileStream.Create(DataFile, fmOpenRead or fmShareDenyNone);
    try
      FS.ReadBuffer(Data, SizeOf(Data));
    finally
      FS.Free;
    end;
  end;
end;

procedure TForm1.PJUserWdwState1SaveData(Sender: TObject;
  const Data: TPJWdwStateData);
var
  FS: TFileStream;
begin
  // We simply save Data param as binary data into a file stream
  FS := TFileStream.Create(DataFile, fmCreate);
  try
    FS.WriteBuffer(Data, SizeOf(Data));
  finally
    FS.Free;
  end;
end;

end.

