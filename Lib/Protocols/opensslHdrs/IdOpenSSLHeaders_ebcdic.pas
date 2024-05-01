  (* This unit was generated using the script genOpenSSLHdrs.sh from the source file IdOpenSSLHeaders_ebcdic.h2pas
     It should not be modified directly. All changes should be made to IdOpenSSLHeaders_ebcdic.h2pas
     and this file regenerated. IdOpenSSLHeaders_ebcdic.h2pas is distributed with the full Indy
     Distribution.
   *)
   
{$i IdCompilerDefines.inc} 
{$i IdSSLOpenSSLDefines.inc} 
{$IFNDEF USE_OPENSSL}
  { error Should not compile if USE_OPENSSL is not defined!!!}
{$ENDIF}
{******************************************************************************}
{                                                                              }
{            Indy (Internet Direct) - Internet Protocols Simplified            }
{                                                                              }
{            https://www.indyproject.org/                                      }
{            https://gitter.im/IndySockets/Indy                                }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  This file is part of the Indy (Internet Direct) project, and is offered     }
{  under the dual-licensing agreement described on the Indy website.           }
{  (https://www.indyproject.org/license/)                                      }
{                                                                              }
{  Copyright:                                                                  }
{   (c) 1993-2020, Chad Z. Hower and the Indy Pit Crew. All rights reserved.   }
{                                                                              }
{******************************************************************************}
{                                                                              }
{                                                                              }
{******************************************************************************}

unit IdOpenSSLHeaders_ebcdic;

interface

// Headers for OpenSSL 1.1.1
// ebcdic.h


uses
  IdCTypes,
  IdGlobal,
  IdSSLOpenSSLConsts;


  //extern const unsigned char os_toascii[256];
  //extern const unsigned char os_toebcdic[256];

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ebcdic2ascii}
  {$EXTERNALSYM ascii2ebcdic}

{$IFNDEF USE_EXTERNAL_LIBRARY}
var
  ebcdic2ascii: function (dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer; cdecl = nil;
  ascii2ebcdic: function (dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer; cdecl = nil;

{$ELSE}
  function ebcdic2ascii(dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function ascii2ebcdic(dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

{$ENDIF}

implementation

  uses
    classes, 
    IdSSLOpenSSLExceptionHandlers, 
    IdResourceStringsOpenSSL
  {$IFNDEF USE_EXTERNAL_LIBRARY}
    ,IdSSLOpenSSLLoader
  {$ENDIF};
  

{$IFNDEF USE_EXTERNAL_LIBRARY}
const
  ebcdic2ascii_procname = 'ebcdic2ascii';
  ascii2ebcdic_procname = 'ascii2ebcdic';


{$WARN  NO_RETVAL OFF}
function  ERR_ebcdic2ascii(dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer; 
begin
  EIdAPIFunctionNotPresent.RaiseException(ebcdic2ascii_procname);
end;


function  ERR_ascii2ebcdic(dest: Pointer; const srce: Pointer; count: TIdC_SIZET): Pointer; 
begin
  EIdAPIFunctionNotPresent.RaiseException(ascii2ebcdic_procname);
end;



{$WARN  NO_RETVAL ON}

procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoaded: boolean;

begin
  ebcdic2ascii := LoadLibFunction(ADllHandle, ebcdic2ascii_procname);
  FuncLoaded := assigned(ebcdic2ascii);
  if not FuncLoaded then
  begin
    {$if declared(ebcdic2ascii_introduced)}
    if LibVersion < ebcdic2ascii_introduced then
    begin
      {$if declared(FC_ebcdic2ascii)}
      ebcdic2ascii := @FC_ebcdic2ascii;
      {$else}
      {$if not defined(ebcdic2ascii_allownil)}
      ebcdic2ascii := @ERR_ebcdic2ascii;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(ebcdic2ascii_removed)}
    if ebcdic2ascii_removed <= LibVersion then
    begin
      {$if declared(_ebcdic2ascii)}
      ebcdic2ascii := @_ebcdic2ascii;
      {$else}
      {$if not defined(ebcdic2ascii_allownil)}
      ebcdic2ascii := @ERR_ebcdic2ascii;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(ebcdic2ascii_allownil)}
    if not FuncLoaded then
    begin
      ebcdic2ascii := @ERR_ebcdic2ascii;
      AFailed.Add('ebcdic2ascii');
    end;
    {$ifend}
  end;


  ascii2ebcdic := LoadLibFunction(ADllHandle, ascii2ebcdic_procname);
  FuncLoaded := assigned(ascii2ebcdic);
  if not FuncLoaded then
  begin
    {$if declared(ascii2ebcdic_introduced)}
    if LibVersion < ascii2ebcdic_introduced then
    begin
      {$if declared(FC_ascii2ebcdic)}
      ascii2ebcdic := @FC_ascii2ebcdic;
      {$else}
      {$if not defined(ascii2ebcdic_allownil)}
      ascii2ebcdic := @ERR_ascii2ebcdic;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(ascii2ebcdic_removed)}
    if ascii2ebcdic_removed <= LibVersion then
    begin
      {$if declared(_ascii2ebcdic)}
      ascii2ebcdic := @_ascii2ebcdic;
      {$else}
      {$if not defined(ascii2ebcdic_allownil)}
      ascii2ebcdic := @ERR_ascii2ebcdic;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(ascii2ebcdic_allownil)}
    if not FuncLoaded then
    begin
      ascii2ebcdic := @ERR_ascii2ebcdic;
      AFailed.Add('ascii2ebcdic');
    end;
    {$ifend}
  end;


end;

procedure Unload;
begin
  ebcdic2ascii := nil;
  ascii2ebcdic := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF USE_EXTERNAL_LIBRARY}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
