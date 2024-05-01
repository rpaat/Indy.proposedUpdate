  (* This unit was generated using the script genOpenSSLHdrs.sh from the source file IdOpenSSLHeaders_ocsperr.h2pas
     It should not be modified directly. All changes should be made to IdOpenSSLHeaders_ocsperr.h2pas
     and this file regenerated. IdOpenSSLHeaders_ocsperr.h2pas is distributed with the full Indy
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

unit IdOpenSSLHeaders_ocsperr;

interface

// Headers for OpenSSL 1.1.1
// ocsperr.h


uses
  IdCTypes,
  IdGlobal,
  IdSSLOpenSSLConsts;

const
  (*
   * OCSP function codes.
   *)
  OCSP_F_D2I_OCSP_NONCE = 102;
  OCSP_F_OCSP_BASIC_ADD1_STATUS = 103;
  OCSP_F_OCSP_BASIC_SIGN = 104;
  OCSP_F_OCSP_BASIC_SIGN_CTX = 119;
  OCSP_F_OCSP_BASIC_VERIFY = 105;
  OCSP_F_OCSP_CERT_ID_NEW = 101;
  OCSP_F_OCSP_CHECK_DELEGATED = 106;
  OCSP_F_OCSP_CHECK_IDS = 107;
  OCSP_F_OCSP_CHECK_ISSUER = 108;
  OCSP_F_OCSP_CHECK_VALIDITY = 115;
  OCSP_F_OCSP_MATCH_ISSUERID = 109;
  OCSP_F_OCSP_PARSE_URL = 114;
  OCSP_F_OCSP_REQUEST_SIGN = 110;
  OCSP_F_OCSP_REQUEST_VERIFY = 116;
  OCSP_F_OCSP_RESPONSE_GET1_BASIC = 111;
  OCSP_F_PARSE_HTTP_LINE1 = 118;

  (*
   * OCSP reason codes.
   *)
  OCSP_R_CERTIFICATE_VERIFY_ERROR = 101;
  OCSP_R_DIGEST_ERR = 102;
  OCSP_R_ERROR_IN_NEXTUPDATE_FIELD = 122;
  OCSP_R_ERROR_IN_THISUPDATE_FIELD = 123;
  OCSP_R_ERROR_PARSING_URL = 121;
  OCSP_R_MISSING_OCSPSIGNING_USAGE = 103;
  OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE = 124;
  OCSP_R_NOT_BASIC_RESPONSE = 104;
  OCSP_R_NO_CERTIFICATES_IN_CHAIN = 105;
  OCSP_R_NO_RESPONSE_DATA = 108;
  OCSP_R_NO_REVOKED_TIME = 109;
  OCSP_R_NO_SIGNER_KEY = 130;
  OCSP_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE = 110;
  OCSP_R_REQUEST_NOT_SIGNED = 128;
  OCSP_R_RESPONSE_CONTAINS_NO_REVOCATION_DATA = 111;
  OCSP_R_ROOT_CA_NOT_TRUSTED = 112;
  OCSP_R_SERVER_RESPONSE_ERROR = 114;
  OCSP_R_SERVER_RESPONSE_PARSE_ERROR = 115;
  OCSP_R_SIGNATURE_FAILURE = 117;
  OCSP_R_SIGNER_CERTIFICATE_NOT_FOUND = 118;
  OCSP_R_STATUS_EXPIRED = 125;
  OCSP_R_STATUS_NOT_YET_VALID = 126;
  OCSP_R_STATUS_TOO_OLD = 127;
  OCSP_R_UNKNOWN_MESSAGE_DIGEST = 119;
  OCSP_R_UNKNOWN_NID = 120;
  OCSP_R_UNSUPPORTED_REQUESTORNAME_TYPE = 129;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM ERR_load_OCSP_strings}

{$IFNDEF USE_EXTERNAL_LIBRARY}
var
  ERR_load_OCSP_strings: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function ERR_load_OCSP_strings: TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

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
  ERR_load_OCSP_strings_procname = 'ERR_load_OCSP_strings';


{$WARN  NO_RETVAL OFF}
function  ERR_ERR_load_OCSP_strings: TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(ERR_load_OCSP_strings_procname);
end;



{$WARN  NO_RETVAL ON}

procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoaded: boolean;

begin
  ERR_load_OCSP_strings := LoadLibFunction(ADllHandle, ERR_load_OCSP_strings_procname);
  FuncLoaded := assigned(ERR_load_OCSP_strings);
  if not FuncLoaded then
  begin
    {$if declared(ERR_load_OCSP_strings_introduced)}
    if LibVersion < ERR_load_OCSP_strings_introduced then
    begin
      {$if declared(FC_ERR_load_OCSP_strings)}
      ERR_load_OCSP_strings := @FC_ERR_load_OCSP_strings;
      {$else}
      {$if not defined(ERR_load_OCSP_strings_allownil)}
      ERR_load_OCSP_strings := @ERR_ERR_load_OCSP_strings;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(ERR_load_OCSP_strings_removed)}
    if ERR_load_OCSP_strings_removed <= LibVersion then
    begin
      {$if declared(_ERR_load_OCSP_strings)}
      ERR_load_OCSP_strings := @_ERR_load_OCSP_strings;
      {$else}
      {$if not defined(ERR_load_OCSP_strings_allownil)}
      ERR_load_OCSP_strings := @ERR_ERR_load_OCSP_strings;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(ERR_load_OCSP_strings_allownil)}
    if not FuncLoaded then
    begin
      ERR_load_OCSP_strings := @ERR_ERR_load_OCSP_strings;
      AFailed.Add('ERR_load_OCSP_strings');
    end;
    {$ifend}
  end;


end;

procedure Unload;
begin
  ERR_load_OCSP_strings := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF USE_EXTERNAL_LIBRARY}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
