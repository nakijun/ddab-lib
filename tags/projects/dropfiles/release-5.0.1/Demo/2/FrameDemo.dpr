{ ##
  @PROJECT_NAME             FrameDemo
  @PROJECT_DESC             Demonstrates use of Drop Files components and
                            frames.
  @FILE                     FrameDemo.dpr
  @COMMENTS                 Project file.
  @LEGAL_NOTICE             This demo program is distributed under the Mozilla
                            Public License - see below for details.
  @HISTORY(
    @REVISION(
      @VERSION              1.0
      @DATE                 19/03/2006
      @COMMENTS             Original version.
    )
  )
}


{
 * ***** BEGIN LICENSE BLOCK *****
 *
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * The Original Code is FrameDemo.dpr.
 *
 * The Initial Developer of the Original Code is Peter Johnson
 * (http://www.delphidabbler.com/).
 *
 * Portions created by the Initial Developer are Copyright (C) 2006 Peter
 * Johnson. All Rights Reserved.
 *
 * ***** END LICENSE BLOCK *****
}


program FrameDemo;

uses
  Forms,
  FmFrameDemo in 'FmFrameDemo.pas' {FmMain},
  FrDemo in 'FrDemo.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DelphiDabbler Frame Drop Files Demo';
  Application.CreateForm(TFmMain, FmMain);
  Application.Run;
end.