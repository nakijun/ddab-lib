{
 * FmEg2.pas
 *
 * Form unit that implements example 2 for the Version Information Component
 * HelpEgs demo program.
 *
 * $Rev$
 * $Date$
 *
 * Any copyright in this file is dedicated to the Public Domain.
 * http://creativecommons.org/publicdomain/zero/1.0/
}

unit FmEg2;

{$UNDEF Supports_RTLNameSpaces}
{$IFDEF CONDITIONALEXPRESSIONS}
  {$IF CompilerVersion >= 24.0} // Delphi XE3 and later
    {$LEGACYIFEND ON}  // NOTE: this must come before all $IFEND directives
  {$IFEND}
  {$IF CompilerVersion >= 23.0} // Delphi XE2 and later
    {$DEFINE Supports_RTLNameSpaces}
  {$IFEND}
  {$IF CompilerVersion >= 15.0} // Delphi 7 and later
    {$WARN UNSAFE_CODE OFF}
  {$IFEND}
{$ENDIF}

interface

uses
  // Delphi
  {$IFDEF Supports_RTLNameSpaces}
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.StdCtrls,
  {$ELSE}
  Forms, Classes, Controls, StdCtrls,
  {$ENDIF}
  // DelphiDabbler
  PJVersionInfo;

type
  TEgForm2 = class(TForm)
    Memo1: TMemo;
    PJVersionInfo1: TPJVersionInfo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  end;

var
  EgForm2: TEgForm2;

implementation

uses
  // Delphi
  {$IFDEF Supports_RTLNameSpaces}
  Vcl.Dialogs, System.SysUtils, Winapi.Windows, Winapi.ShellAPI;
  {$ELSE}
  Dialogs, SysUtils, Windows, ShellAPI;
  {$ENDIF}

{$R *.DFM}

function DirToPath(const Dir: string): string;
  // Ensures path end in '\'
begin
  if (Dir <> '') and (Dir[Length(Dir)] <> '\') then
    Result := Dir + '\'
  else
    Result := Dir;
end;

function WindowsDir: string;
  // Returns Windows directory
begin
  SetLength(Result, MAX_PATH);
  SetLength(Result, GetWindowsDirectory(PChar(Result), MAX_PATH));
end;

function SystemDir: string;
  // Returns Windows System directory
begin
  SetLength(Result, MAX_PATH);
  SetLength(Result, GetSystemDirectory(PChar(Result), MAX_PATH));
end;

function FindProg(const ExeName: string): string;
  // Finds program in Windows or System directory
begin
  Result := DirToPath(WindowsDir) + ExeName;
  if FileExists(Result) then Exit;
  Result := DirToPath(SystemDir) + ExeName;
  if not FileExists(Result) then
    raise Exception.CreateFmt(
      'Can''t find %s in Windows or System folders', [ExeName]
    );
end;

procedure TEgForm2.Button1Click(Sender: TObject);
begin
  // Get version info for Calc.exe
  PJVersionInfo1.FileName := FindProg('Calc.exe');
  with Memo1.Lines do
  begin
    // Clear the memo and write narrative
    Clear;
    Add('String information block for Windows'
      + ' Calculator (method 1)');
    Add('');
    // Add string information using dedicated properties
    Add('Comments: ' + PJVersionInfo1.Comments);
    Add('CompanyName: ' + PJVersionInfo1.CompanyName);
    Add('FileDescription: ' + PJVersionInfo1.FileDescription);
    Add('FileVersion: ' + PJVersionInfo1.FileVersion);
    Add('InternalName: ' + PJVersionInfo1.InternalName);
    Add('LegalCopyright: ' + PJVersionInfo1.LegalCopyright);
    Add('LegalTrademarks: ' + PJVersionInfo1.LegalTrademarks);
    Add('OriginalFileName: ' + PJVersionInfo1.OriginalFileName);
    Add('PrivateBuild: ' + PJVersionInfo1.PrivateBuild);
    Add('ProductName: ' + PJVersionInfo1.ProductName);
    Add('ProductVersion: ' + PJVersionInfo1.ProductVersion);
    Add('SpecialBuild: ' + PJVersionInfo1.SpecialBuild);
  end;
end;

procedure TEgForm2.Button2Click(Sender: TObject);

  // ---------------------------------------------------------------------------
  procedure AddStrInfo(StrName: string);
    // Add string info to memo by name
  begin
    Memo1.Lines.Add(StrName + ': ' + PJVersionInfo1.StringFileInfo[StrName]);
  end;
  // ---------------------------------------------------------------------------

begin
  // Get string info for Notepad.exe
  PJVersionInfo1.FileName := FindProg('Notepad.exe');
  // Clear memo and write narrative
  Memo1.Clear;
  Memo1.Lines.Add('String information block for Windows'
      + ' NotePad (method 2)');
  Memo1.Lines.Add('');
  // Add string info using string info names
  AddStrInfo('Comments');
  AddStrInfo('CompanyName');
  AddStrInfo('FileDescription');
  AddStrInfo('FileVersion');
  AddStrInfo('InternalName');
  AddStrInfo('LegalCopyright');
  AddStrInfo('LegalTrademarks');
  AddStrInfo('OriginalFileName');
  AddStrInfo('PrivateBuild');
  AddStrInfo('ProductName');
  AddStrInfo('ProductVersion');
  AddStrInfo('SpecialBuild');
end;

procedure TEgForm2.FormShow(Sender: TObject);
  // Clears memo when form is displayed
begin
  Memo1.Clear;
end;

procedure TEgForm2.Button3Click(Sender: TObject);
  // Displays example in help
  // this event handler is not included in help example
const
  cURL = 'http://delphidabbler.com/url/verinfo-eg2';
begin
  ShellExecute(Handle, 'open', cURL, nil, nil, SW_SHOWNORMAL);
end;

end.
