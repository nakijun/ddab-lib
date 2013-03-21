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
 * The Original Code is AboutBoxDemo.dpr
 *
 * The Initial Developer of the Original Code is Peter Johnson
 * (http://www.delphidabbler.com/).
 *
 * Portions created by the Initial Developer are Copyright (C) 2005 Peter
 * Johnson. All Rights Reserved.
 *
 * ***** END LICENSE BLOCK *****
 }


{
  Demo program for DelphiDabbler about box component.

  This file: AboutBoxDemo.dpr v1.0 - project file.

  Update history:
  + v1.0 of 08/11/2005 - original version.
}


program AboutBoxDemo;

uses
  Forms,
  FmDemo in 'FmDemo.pas' {Form1};
      
{$R *.res}
{$R VerInfo.res}

begin                       
  Application.Initialize;
  Application.Title := 'About Box Demo';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.