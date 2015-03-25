<a href='Hidden comment: 
$Rev$
$Date$
'></a>

# TPJEnvVarsEnumerator #

| This is the documentation for the **v2.0** release of the unit. If you are using a **version 3** release please [see here](http://wiki.delphidabbler.com/index.php/Docs/TPJEnvVarsEnumerator). |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

**Project:** [Environment Variables Unit](EnvironmentVariablesUnit.md).

**Unit:** _PJEnvVars_.

This class provides an enumerator for use with the _[TPJEnvVars](TPJEnvVars.md)_ component. It enumerates the names of all environment variables in the program's environment block.

_TPJEnvVarsEnumerator_ implements the standard interface required by the compiler (Delphi 2005 and later) in order to support the <strong>for..in</strong> construct. The _[GetEnumerator](TPJEnvVarsGetEnumerator.md)_ method of _[TPJEnvVars](TPJEnvVars.md)_ creates instances of the enumerator. Consequently environment variable names can be accessed directly from a _[TPJEnvVars](TPJEnvVars.md)_ instance simply by doing:

```
var
  Name: string;
begin
  for Name in PJEnvVars1 do
  begin
    // do something with Name here
  end;
end;
```

where _PJEnvVars1_ is a _[TPJEnvVars](TPJEnvVars.md)_ component instance.

Compilers earlier than Delphi 2005 can still use _TPJEnvVarsEnumerator_ by creating an instance from the _[TPJEnvVars.GetEnumerator](TPJEnvVarsGetEnumerator.md)_ method and then manipulating the enumerator's property and methods directly. For example:

```
var
  Name: string;
  Enum: TPJEnvVarsEnumerator;
begin
  Enum := PJEnvVars1.GetEnumerator;
  try
    while Enum.MoveNext do
    begin
      Name := Enum.Current;
      // do something with Name here
    end;
  finally
    Enum.Free;
  end;
end;
```

## Methods ##

_TPJEnvVarsEnumerator_ defines the following methods:

### Create constructor ###

```
constructor Create;
```

The constructor initialises the enumeration.

### GetCurrent ###

```
function GetCurrent: string;
```

Gets the name of the current environment variable in the enumeration. This method is also the read accessor method for the _Current_ property. The two can be used interchangably.

### MoveNext ###

```
function MoveNext: Boolean;
```

Moves to the next name in the enumeration if it exists. Returns True if it was possible to move to the next item or False if there are no more items in the enumeration.

Use the return value to determine when to end an enumeration. Assuming _Enum_ is a enumerator instance, a common idiom is:

```
while Enum.MoveNext do
  // do something with Enum.Current or Enum.GetCurrent
```


## Property ##

There is just the one property:

### Current ###

The _Current_ property holds the name of the current environment variable in the enumeration. This property is functionally equivalent to _GetCurrent_.