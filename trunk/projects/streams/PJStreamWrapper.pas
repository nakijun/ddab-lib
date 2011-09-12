{
 * PJStreamWrapper.pas
 *
 * Defines the TPJStreamWrapper class. This is a base class for descendant
 * classes that "wrap" a TStream class to provide some form of filter or
 * additional functionality. The wrapped TStream is used to do physical i/o.
 * TPJStreamWrapper simply replicates the facilities in the wrapped stream - it
 * is for descendant classes to add functionality.
 *
 * $Rev$
 * $Date$
 *
 *
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
 * The Original Code is PJStreamWrapper.pas.
 *
 * The Initial Developer of the Original Code is Peter Johnson
 * (http://www.delphidabbler.com/).
 *
 * Portions created by the Initial Developer are Copyright (C) 2000-2011 Peter
 * Johnson. All Rights Reserved.
 *
 * Contributor(s):
 *   NONE
 *
 * ***** END LICENSE BLOCK *****
}


unit PJStreamWrapper;

interface

uses
  // Delphi
  Classes;

{$UNDEF SUPPORTS_STRICT}
{$UNDEF SUPPORTS_TSTREAM64}
{$IFDEF CONDITIONALEXPRESSIONS}
  {$IF CompilerVersion >= 18.0} // >= Delphi 2006
    {$DEFINE SUPPORTS_STRICT}
    {$DEFINE SUPPORTS_TSTREAM64}
  {$IFEND}
{$ENDIF}

type

  ///  <summary>
  ///  Base class for descendant classes that "wrap" a TStream class to provide
  ///  some form of filter or additional functionality. The wrapped TStream is
  ///  used to do physical i/o. This base class simply replicates the facilities
  ///  in the wrapped stream - it is for descendant classes to add
  ///  functionality.
  ///  </summary>
  ///  <remarks>
  ///  Wrapping a TStream rather than adding functionality by extending the
  ///  class means that the functionality provided by the wrapper class can be
  ///  applied to any TStream descendant.
  ///  </remarks>
  TPJStreamWrapper = class(TStream)
  {$IFDEF SUPPORTS_STRICT}strict{$ENDIF}
  private
    ///  <summary>Reference to wrapped stream.</summary>
    fBaseStream: TStream;
    ///  <summary>Records whether wrapped stream is to be freed when this object
    ///  is destroyed.</summary>
    fCloseStream: Boolean;
  {$IFDEF SUPPORTS_STRICT}strict{$ENDIF}
  protected
    ///  <summary>Reference to the wrapped stream object.</summary>
    ///  <remarks>Enables sub-classes to access the wrapped stream.</remarks>
    property BaseStream: TStream read fBaseStream;

    ///  <summary>Sets the size of the wrapped stream.</summary>
    ///  <param name="NewSize">Longint [in] New size of stream.</param>
    ///  <remarks>
    ///  <para>If the wrapped stream does not support the SetSize operation then
    ///  the stream's size is not changed.</para>
    ///  <para>See also the overloaded version that takes a 64 bit size.</para>
    ///  </remarks>
    procedure SetSize(NewSize: Longint); override;

    {$IFDEF SUPPORTS_TSTREAM64}
    ///  <summary>Sets the size of the wrapped stream.</summary>
    ///  <param name="NewSize">Int64 [in] New size of stream.</param>
    ///  <remarks>
    ///  <para>If the wrapped stream does not support the SetSize operation then
    ///  the stream's size is not changed.</para>
    ///  <para>If the wrapped stream does not support 64 bit SetSize then
    ///  NewSize is truncated to 32 bits.</para>
    ///  <para>See also the overloaded version that takes a 32 bit size.</para>
    ///  </remarks>
    procedure SetSize(const NewSize: Int64); override;
    {$ENDIF}
  public
    ///  <summary>Object constructor. Creates a TStream descendant object that
    ///  wraps another stream and optionally takes ownership of it.</summary>
    ///  <param name="Stream">TStream [in] Stream to be wrapped.</param>
    ///  <param name="CloseStream">Boolean [in] Flag that indicates whether
    ///  Stream is to be freed when this object is be destroyed (True) or
    ///  whether caller retains responsibility for freeing Stream (False).
    ///  </param>
    constructor Create(const Stream: TStream;
      const CloseStream: Boolean = False); virtual;

    ///  <summary>Tears down object. Frees wrapped stream iff CloseStream
    ///  parameter of constructor was True.</summary>
    destructor Destroy; override;

    ///  <summary>Reads data from wrapped stream into a buffer.</summary>
    ///  <param name="Buffer">Untyped [in/out] Buffer that receives data read
    ///  from stream. Must have size of at least Count bytes.</param>
    ///  <param name="Count">Longint [in] Number of bytes to be read.</param>
    ///  <returns>Number of bytes actually read.</returns>
    ///  <remarks>If return value is less than Count then end of stream has been
    ///  reached.</remarks>
    function Read(var Buffer; Count: Longint): Longint; override;

    ///  <summary>Writes data from a buffer to wrapped stream.</summary>
    ///  <param name="Buffer">Untyped [in] Buffer containg date to be written.
    ///  Must contain at least Count bytes of data.</param>
    ///  <param name="Count">Longiny [in] Number of bytes of data to be
    ///  written.</param>
    ///  <returns>Number of bytes actually written.</returns>
    ///  <remarks>If the return value is less than Count then the stream is full
    ///  and not all the data could be written.</remarks>
    function Write(const Buffer; Count: Longint): Longint; override;

    ///  <summary>Sets the underlying stream's position.</summary>
    ///  <param name="Offset">Longint [in] New stream position relative to
    ///  position defined by Offset.</param>
    ///  <param name="Origin">Word [in] Specifies origin that Offset relates to.
    ///  For details of values see documentation of TStream.Seek.</param>
    ///  <returns>New stream position (value of Position property).</returns>
    ///  <remarks>
    ///  <para>If the wrapped stream does not support changing the stream
    ///  position an exception will be raised.</para>
    ///  <para>See also the overloaded version that takes a 64 bit size.</para>
    ///  </remarks>
    function Seek(Offset: Longint; Origin: Word): Longint; override;

    {$IFDEF SUPPORTS_TSTREAM64}
    ///  <summary>Sets the underlying stream's position.</summary>
    ///  <param name="Offset">Int64 [in] New stream position relative to
    ///  position defined by Offset.</param>
    ///  <param name="Origin">TSeekOrigin [in] Specifies origin that Offset
    ///  relates to. For details of values see documentation of TSeekOrigin.
    ///  </param>
    ///  <returns>New stream position (value of Position property).</returns>
    ///  <remarks>
    ///  <para>If the wrapped stream does not support changing the stream
    ///  position an exception will be raised.</para>
    ///  <para>If the wrapped stream does not support 64 bit Seek then the 32
    ///  bit version will be called instead and Offset may be truncated.</para>
    ///  <para>See also the overloaded version that takes a 32 bit size.</para>
    ///  </remarks>
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; override;
    {$ENDIF}
  end;


implementation


{ TPJStreamWrapper }

constructor TPJStreamWrapper.Create(const Stream: TStream;
  const CloseStream: Boolean);
begin
  inherited Create;
  fBaseStream := Stream;
  fCloseStream := CloseStream;
end;

destructor TPJStreamWrapper.Destroy;
begin
  if fCloseStream then
    fBaseStream.Free;
  inherited Destroy;
end;

function TPJStreamWrapper.Read(var Buffer; Count: Integer): Longint;
begin
  Result := fBaseStream.Read(Buffer, Count);
end;

{$IFDEF SUPPORTS_TSTREAM64}
function TPJStreamWrapper.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  Result := fBaseStream.Seek(Offset, Origin);
end;
{$ENDIF}

function TPJStreamWrapper.Seek(Offset: Integer; Origin: Word): Longint;
begin
  Result := fBaseStream.Seek(Offset, Origin);
end;

{$IFDEF SUPPORTS_TSTREAM64}
procedure TPJStreamWrapper.SetSize(const NewSize: Int64);
begin
  fBaseStream.Size := NewSize;
end;
{$ENDIF}

procedure TPJStreamWrapper.SetSize(NewSize: Integer);
begin
  {$IFDEF SUPPORTS_TSTREAM64}
  // according to comments in TStream.SetSize if we implement 64 bit version of
  // SetSize, our 32 bit implementation must call it
  SetSize(Int64(NewSize));
  {$ELSE}
  fBaseStream.Size := NewSize;
  {$ENDIF}
end;

function TPJStreamWrapper.Write(const Buffer; Count: Integer): Longint;
begin
  Result := fBaseStream.Write(Buffer, Count);
end;

end.

