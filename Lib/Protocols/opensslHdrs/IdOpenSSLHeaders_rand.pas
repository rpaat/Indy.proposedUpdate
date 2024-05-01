  (* This unit was generated using the script genOpenSSLHdrs.sh from the source file IdOpenSSLHeaders_rand.h2pas
     It should not be modified directly. All changes should be made to IdOpenSSLHeaders_rand.h2pas
     and this file regenerated. IdOpenSSLHeaders_rand.h2pas is distributed with the full Indy
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

unit IdOpenSSLHeaders_rand;

interface

// Headers for OpenSSL 1.1.1
// rand.h


uses
  IdCTypes,
  IdGlobal,
  IdSSLOpenSSLConsts,
  IdOpenSSLHeaders_ossl_typ;

type
  rand_meth_st_seed = function (const buf: Pointer; num: TIdC_INT): TIdC_INT; cdecl;
  rand_meth_st_bytes = function (buf: PByte; num: TIdC_INT): TIdC_INT; cdecl;
  rand_meth_st_cleanup = procedure; cdecl;
  rand_meth_st_add = function (const buf: Pointer; num: TIdC_INT; randomness: TIdC_DOUBLE): TIdC_INT; cdecl;
  rand_meth_st_pseudorand = function (buf: PByte; num: TIdC_INT): TIdC_INT; cdecl;
  rand_meth_st_status = function: TIdC_INT; cdecl;

  rand_meth_st = record
    seed: rand_meth_st_seed;
    bytes: rand_meth_st_bytes;
    cleanup: rand_meth_st_cleanup;
    add: rand_meth_st_add;
    pseudorand: rand_meth_st_pseudorand;
    status: rand_meth_st_status;
  end;

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM RAND_set_rand_method}
  {$EXTERNALSYM RAND_get_rand_method}
  {$EXTERNALSYM RAND_set_rand_engine}
  {$EXTERNALSYM RAND_OpenSSL}
  {$EXTERNALSYM RAND_bytes}
  {$EXTERNALSYM RAND_priv_bytes}
  {$EXTERNALSYM RAND_seed}
  {$EXTERNALSYM RAND_keep_random_devices_open}
  {$EXTERNALSYM RAND_add}
  {$EXTERNALSYM RAND_load_file}
  {$EXTERNALSYM RAND_write_file}
  {$EXTERNALSYM RAND_status}
  {$EXTERNALSYM RAND_query_egd_bytes}
  {$EXTERNALSYM RAND_egd}
  {$EXTERNALSYM RAND_egd_bytes}
  {$EXTERNALSYM RAND_poll}

{$IFNDEF USE_EXTERNAL_LIBRARY}
var
  RAND_set_rand_method: function (const meth: PRAND_METHOD): TIdC_INT; cdecl = nil;
  RAND_get_rand_method: function : PRAND_METHOD; cdecl = nil;
  RAND_set_rand_engine: function (engine: PENGINE): TIdC_INT; cdecl = nil;

  RAND_OpenSSL: function : PRAND_METHOD; cdecl = nil;

  RAND_bytes: function (buf: PByte; num: TIdC_INT): TIdC_INT; cdecl = nil;
  RAND_priv_bytes: function (buf: PByte; num: TIdC_INT): TIdC_INT; cdecl = nil;

  RAND_seed: procedure (const buf: Pointer; num: TIdC_INT); cdecl = nil;
  RAND_keep_random_devices_open: procedure (keep: TIdC_INT); cdecl = nil;

  RAND_add: procedure (const buf: Pointer; num: TIdC_INT; randomness: TIdC_DOUBLE); cdecl = nil;
  RAND_load_file: function (const file_: PIdAnsiChar; max_bytes: TIdC_LONG): TIdC_INT; cdecl = nil;
  RAND_write_file: function (const file_: PIdAnsiChar): TIdC_INT; cdecl = nil;
  RAND_status: function : TIdC_INT; cdecl = nil;

  RAND_query_egd_bytes: function (const path: PIdAnsiChar; buf: PByte; bytes: TIdC_INT): TIdC_INT; cdecl = nil;
  RAND_egd: function (const path: PIdAnsiChar): TIdC_INT; cdecl = nil;
  RAND_egd_bytes: function (const path: PIdAnsiChar; bytes: TIdC_INT): TIdC_INT; cdecl = nil;

  RAND_poll: function : TIdC_INT; cdecl = nil;

{$ELSE}
  function RAND_set_rand_method(const meth: PRAND_METHOD): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_get_rand_method: PRAND_METHOD cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_set_rand_engine(engine: PENGINE): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  function RAND_OpenSSL: PRAND_METHOD cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  function RAND_bytes(buf: PByte; num: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_priv_bytes(buf: PByte; num: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  procedure RAND_seed(const buf: Pointer; num: TIdC_INT) cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  procedure RAND_keep_random_devices_open(keep: TIdC_INT) cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  procedure RAND_add(const buf: Pointer; num: TIdC_INT; randomness: TIdC_DOUBLE) cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_load_file(const file_: PIdAnsiChar; max_bytes: TIdC_LONG): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_write_file(const file_: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_status: TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  function RAND_query_egd_bytes(const path: PIdAnsiChar; buf: PByte; bytes: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_egd(const path: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function RAND_egd_bytes(const path: PIdAnsiChar; bytes: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  function RAND_poll: TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

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
  RAND_set_rand_method_procname = 'RAND_set_rand_method';
  RAND_get_rand_method_procname = 'RAND_get_rand_method';
  RAND_set_rand_engine_procname = 'RAND_set_rand_engine';

  RAND_OpenSSL_procname = 'RAND_OpenSSL';

  RAND_bytes_procname = 'RAND_bytes';
  RAND_priv_bytes_procname = 'RAND_priv_bytes';

  RAND_seed_procname = 'RAND_seed';
  RAND_keep_random_devices_open_procname = 'RAND_keep_random_devices_open';

  RAND_add_procname = 'RAND_add';
  RAND_load_file_procname = 'RAND_load_file';
  RAND_write_file_procname = 'RAND_write_file';
  RAND_status_procname = 'RAND_status';

  RAND_query_egd_bytes_procname = 'RAND_query_egd_bytes';
  RAND_egd_procname = 'RAND_egd';
  RAND_egd_bytes_procname = 'RAND_egd_bytes';

  RAND_poll_procname = 'RAND_poll';


{$WARN  NO_RETVAL OFF}
function  ERR_RAND_set_rand_method(const meth: PRAND_METHOD): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_set_rand_method_procname);
end;


function  ERR_RAND_get_rand_method: PRAND_METHOD; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_get_rand_method_procname);
end;


function  ERR_RAND_set_rand_engine(engine: PENGINE): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_set_rand_engine_procname);
end;



function  ERR_RAND_OpenSSL: PRAND_METHOD; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_OpenSSL_procname);
end;



function  ERR_RAND_bytes(buf: PByte; num: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_bytes_procname);
end;


function  ERR_RAND_priv_bytes(buf: PByte; num: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_priv_bytes_procname);
end;



procedure  ERR_RAND_seed(const buf: Pointer; num: TIdC_INT); 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_seed_procname);
end;


procedure  ERR_RAND_keep_random_devices_open(keep: TIdC_INT); 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_keep_random_devices_open_procname);
end;



procedure  ERR_RAND_add(const buf: Pointer; num: TIdC_INT; randomness: TIdC_DOUBLE); 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_add_procname);
end;


function  ERR_RAND_load_file(const file_: PIdAnsiChar; max_bytes: TIdC_LONG): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_load_file_procname);
end;


function  ERR_RAND_write_file(const file_: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_write_file_procname);
end;


function  ERR_RAND_status: TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_status_procname);
end;



function  ERR_RAND_query_egd_bytes(const path: PIdAnsiChar; buf: PByte; bytes: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_query_egd_bytes_procname);
end;


function  ERR_RAND_egd(const path: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_egd_procname);
end;


function  ERR_RAND_egd_bytes(const path: PIdAnsiChar; bytes: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_egd_bytes_procname);
end;



function  ERR_RAND_poll: TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(RAND_poll_procname);
end;



{$WARN  NO_RETVAL ON}

procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoaded: boolean;

begin
  RAND_set_rand_method := LoadLibFunction(ADllHandle, RAND_set_rand_method_procname);
  FuncLoaded := assigned(RAND_set_rand_method);
  if not FuncLoaded then
  begin
    {$if declared(RAND_set_rand_method_introduced)}
    if LibVersion < RAND_set_rand_method_introduced then
    begin
      {$if declared(FC_RAND_set_rand_method)}
      RAND_set_rand_method := @FC_RAND_set_rand_method;
      {$else}
      {$if not defined(RAND_set_rand_method_allownil)}
      RAND_set_rand_method := @ERR_RAND_set_rand_method;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_set_rand_method_removed)}
    if RAND_set_rand_method_removed <= LibVersion then
    begin
      {$if declared(_RAND_set_rand_method)}
      RAND_set_rand_method := @_RAND_set_rand_method;
      {$else}
      {$if not defined(RAND_set_rand_method_allownil)}
      RAND_set_rand_method := @ERR_RAND_set_rand_method;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_set_rand_method_allownil)}
    if not FuncLoaded then
    begin
      RAND_set_rand_method := @ERR_RAND_set_rand_method;
      AFailed.Add('RAND_set_rand_method');
    end;
    {$ifend}
  end;


  RAND_get_rand_method := LoadLibFunction(ADllHandle, RAND_get_rand_method_procname);
  FuncLoaded := assigned(RAND_get_rand_method);
  if not FuncLoaded then
  begin
    {$if declared(RAND_get_rand_method_introduced)}
    if LibVersion < RAND_get_rand_method_introduced then
    begin
      {$if declared(FC_RAND_get_rand_method)}
      RAND_get_rand_method := @FC_RAND_get_rand_method;
      {$else}
      {$if not defined(RAND_get_rand_method_allownil)}
      RAND_get_rand_method := @ERR_RAND_get_rand_method;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_get_rand_method_removed)}
    if RAND_get_rand_method_removed <= LibVersion then
    begin
      {$if declared(_RAND_get_rand_method)}
      RAND_get_rand_method := @_RAND_get_rand_method;
      {$else}
      {$if not defined(RAND_get_rand_method_allownil)}
      RAND_get_rand_method := @ERR_RAND_get_rand_method;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_get_rand_method_allownil)}
    if not FuncLoaded then
    begin
      RAND_get_rand_method := @ERR_RAND_get_rand_method;
      AFailed.Add('RAND_get_rand_method');
    end;
    {$ifend}
  end;


  RAND_set_rand_engine := LoadLibFunction(ADllHandle, RAND_set_rand_engine_procname);
  FuncLoaded := assigned(RAND_set_rand_engine);
  if not FuncLoaded then
  begin
    {$if declared(RAND_set_rand_engine_introduced)}
    if LibVersion < RAND_set_rand_engine_introduced then
    begin
      {$if declared(FC_RAND_set_rand_engine)}
      RAND_set_rand_engine := @FC_RAND_set_rand_engine;
      {$else}
      {$if not defined(RAND_set_rand_engine_allownil)}
      RAND_set_rand_engine := @ERR_RAND_set_rand_engine;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_set_rand_engine_removed)}
    if RAND_set_rand_engine_removed <= LibVersion then
    begin
      {$if declared(_RAND_set_rand_engine)}
      RAND_set_rand_engine := @_RAND_set_rand_engine;
      {$else}
      {$if not defined(RAND_set_rand_engine_allownil)}
      RAND_set_rand_engine := @ERR_RAND_set_rand_engine;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_set_rand_engine_allownil)}
    if not FuncLoaded then
    begin
      RAND_set_rand_engine := @ERR_RAND_set_rand_engine;
      AFailed.Add('RAND_set_rand_engine');
    end;
    {$ifend}
  end;


  RAND_OpenSSL := LoadLibFunction(ADllHandle, RAND_OpenSSL_procname);
  FuncLoaded := assigned(RAND_OpenSSL);
  if not FuncLoaded then
  begin
    {$if declared(RAND_OpenSSL_introduced)}
    if LibVersion < RAND_OpenSSL_introduced then
    begin
      {$if declared(FC_RAND_OpenSSL)}
      RAND_OpenSSL := @FC_RAND_OpenSSL;
      {$else}
      {$if not defined(RAND_OpenSSL_allownil)}
      RAND_OpenSSL := @ERR_RAND_OpenSSL;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_OpenSSL_removed)}
    if RAND_OpenSSL_removed <= LibVersion then
    begin
      {$if declared(_RAND_OpenSSL)}
      RAND_OpenSSL := @_RAND_OpenSSL;
      {$else}
      {$if not defined(RAND_OpenSSL_allownil)}
      RAND_OpenSSL := @ERR_RAND_OpenSSL;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_OpenSSL_allownil)}
    if not FuncLoaded then
    begin
      RAND_OpenSSL := @ERR_RAND_OpenSSL;
      AFailed.Add('RAND_OpenSSL');
    end;
    {$ifend}
  end;


  RAND_bytes := LoadLibFunction(ADllHandle, RAND_bytes_procname);
  FuncLoaded := assigned(RAND_bytes);
  if not FuncLoaded then
  begin
    {$if declared(RAND_bytes_introduced)}
    if LibVersion < RAND_bytes_introduced then
    begin
      {$if declared(FC_RAND_bytes)}
      RAND_bytes := @FC_RAND_bytes;
      {$else}
      {$if not defined(RAND_bytes_allownil)}
      RAND_bytes := @ERR_RAND_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_bytes_removed)}
    if RAND_bytes_removed <= LibVersion then
    begin
      {$if declared(_RAND_bytes)}
      RAND_bytes := @_RAND_bytes;
      {$else}
      {$if not defined(RAND_bytes_allownil)}
      RAND_bytes := @ERR_RAND_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_bytes_allownil)}
    if not FuncLoaded then
    begin
      RAND_bytes := @ERR_RAND_bytes;
      AFailed.Add('RAND_bytes');
    end;
    {$ifend}
  end;


  RAND_priv_bytes := LoadLibFunction(ADllHandle, RAND_priv_bytes_procname);
  FuncLoaded := assigned(RAND_priv_bytes);
  if not FuncLoaded then
  begin
    {$if declared(RAND_priv_bytes_introduced)}
    if LibVersion < RAND_priv_bytes_introduced then
    begin
      {$if declared(FC_RAND_priv_bytes)}
      RAND_priv_bytes := @FC_RAND_priv_bytes;
      {$else}
      {$if not defined(RAND_priv_bytes_allownil)}
      RAND_priv_bytes := @ERR_RAND_priv_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_priv_bytes_removed)}
    if RAND_priv_bytes_removed <= LibVersion then
    begin
      {$if declared(_RAND_priv_bytes)}
      RAND_priv_bytes := @_RAND_priv_bytes;
      {$else}
      {$if not defined(RAND_priv_bytes_allownil)}
      RAND_priv_bytes := @ERR_RAND_priv_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_priv_bytes_allownil)}
    if not FuncLoaded then
    begin
      RAND_priv_bytes := @ERR_RAND_priv_bytes;
      AFailed.Add('RAND_priv_bytes');
    end;
    {$ifend}
  end;


  RAND_seed := LoadLibFunction(ADllHandle, RAND_seed_procname);
  FuncLoaded := assigned(RAND_seed);
  if not FuncLoaded then
  begin
    {$if declared(RAND_seed_introduced)}
    if LibVersion < RAND_seed_introduced then
    begin
      {$if declared(FC_RAND_seed)}
      RAND_seed := @FC_RAND_seed;
      {$else}
      {$if not defined(RAND_seed_allownil)}
      RAND_seed := @ERR_RAND_seed;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_seed_removed)}
    if RAND_seed_removed <= LibVersion then
    begin
      {$if declared(_RAND_seed)}
      RAND_seed := @_RAND_seed;
      {$else}
      {$if not defined(RAND_seed_allownil)}
      RAND_seed := @ERR_RAND_seed;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_seed_allownil)}
    if not FuncLoaded then
    begin
      RAND_seed := @ERR_RAND_seed;
      AFailed.Add('RAND_seed');
    end;
    {$ifend}
  end;


  RAND_keep_random_devices_open := LoadLibFunction(ADllHandle, RAND_keep_random_devices_open_procname);
  FuncLoaded := assigned(RAND_keep_random_devices_open);
  if not FuncLoaded then
  begin
    {$if declared(RAND_keep_random_devices_open_introduced)}
    if LibVersion < RAND_keep_random_devices_open_introduced then
    begin
      {$if declared(FC_RAND_keep_random_devices_open)}
      RAND_keep_random_devices_open := @FC_RAND_keep_random_devices_open;
      {$else}
      {$if not defined(RAND_keep_random_devices_open_allownil)}
      RAND_keep_random_devices_open := @ERR_RAND_keep_random_devices_open;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_keep_random_devices_open_removed)}
    if RAND_keep_random_devices_open_removed <= LibVersion then
    begin
      {$if declared(_RAND_keep_random_devices_open)}
      RAND_keep_random_devices_open := @_RAND_keep_random_devices_open;
      {$else}
      {$if not defined(RAND_keep_random_devices_open_allownil)}
      RAND_keep_random_devices_open := @ERR_RAND_keep_random_devices_open;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_keep_random_devices_open_allownil)}
    if not FuncLoaded then
    begin
      RAND_keep_random_devices_open := @ERR_RAND_keep_random_devices_open;
      AFailed.Add('RAND_keep_random_devices_open');
    end;
    {$ifend}
  end;


  RAND_add := LoadLibFunction(ADllHandle, RAND_add_procname);
  FuncLoaded := assigned(RAND_add);
  if not FuncLoaded then
  begin
    {$if declared(RAND_add_introduced)}
    if LibVersion < RAND_add_introduced then
    begin
      {$if declared(FC_RAND_add)}
      RAND_add := @FC_RAND_add;
      {$else}
      {$if not defined(RAND_add_allownil)}
      RAND_add := @ERR_RAND_add;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_add_removed)}
    if RAND_add_removed <= LibVersion then
    begin
      {$if declared(_RAND_add)}
      RAND_add := @_RAND_add;
      {$else}
      {$if not defined(RAND_add_allownil)}
      RAND_add := @ERR_RAND_add;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_add_allownil)}
    if not FuncLoaded then
    begin
      RAND_add := @ERR_RAND_add;
      AFailed.Add('RAND_add');
    end;
    {$ifend}
  end;


  RAND_load_file := LoadLibFunction(ADllHandle, RAND_load_file_procname);
  FuncLoaded := assigned(RAND_load_file);
  if not FuncLoaded then
  begin
    {$if declared(RAND_load_file_introduced)}
    if LibVersion < RAND_load_file_introduced then
    begin
      {$if declared(FC_RAND_load_file)}
      RAND_load_file := @FC_RAND_load_file;
      {$else}
      {$if not defined(RAND_load_file_allownil)}
      RAND_load_file := @ERR_RAND_load_file;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_load_file_removed)}
    if RAND_load_file_removed <= LibVersion then
    begin
      {$if declared(_RAND_load_file)}
      RAND_load_file := @_RAND_load_file;
      {$else}
      {$if not defined(RAND_load_file_allownil)}
      RAND_load_file := @ERR_RAND_load_file;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_load_file_allownil)}
    if not FuncLoaded then
    begin
      RAND_load_file := @ERR_RAND_load_file;
      AFailed.Add('RAND_load_file');
    end;
    {$ifend}
  end;


  RAND_write_file := LoadLibFunction(ADllHandle, RAND_write_file_procname);
  FuncLoaded := assigned(RAND_write_file);
  if not FuncLoaded then
  begin
    {$if declared(RAND_write_file_introduced)}
    if LibVersion < RAND_write_file_introduced then
    begin
      {$if declared(FC_RAND_write_file)}
      RAND_write_file := @FC_RAND_write_file;
      {$else}
      {$if not defined(RAND_write_file_allownil)}
      RAND_write_file := @ERR_RAND_write_file;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_write_file_removed)}
    if RAND_write_file_removed <= LibVersion then
    begin
      {$if declared(_RAND_write_file)}
      RAND_write_file := @_RAND_write_file;
      {$else}
      {$if not defined(RAND_write_file_allownil)}
      RAND_write_file := @ERR_RAND_write_file;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_write_file_allownil)}
    if not FuncLoaded then
    begin
      RAND_write_file := @ERR_RAND_write_file;
      AFailed.Add('RAND_write_file');
    end;
    {$ifend}
  end;


  RAND_status := LoadLibFunction(ADllHandle, RAND_status_procname);
  FuncLoaded := assigned(RAND_status);
  if not FuncLoaded then
  begin
    {$if declared(RAND_status_introduced)}
    if LibVersion < RAND_status_introduced then
    begin
      {$if declared(FC_RAND_status)}
      RAND_status := @FC_RAND_status;
      {$else}
      {$if not defined(RAND_status_allownil)}
      RAND_status := @ERR_RAND_status;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_status_removed)}
    if RAND_status_removed <= LibVersion then
    begin
      {$if declared(_RAND_status)}
      RAND_status := @_RAND_status;
      {$else}
      {$if not defined(RAND_status_allownil)}
      RAND_status := @ERR_RAND_status;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_status_allownil)}
    if not FuncLoaded then
    begin
      RAND_status := @ERR_RAND_status;
      AFailed.Add('RAND_status');
    end;
    {$ifend}
  end;


  RAND_query_egd_bytes := LoadLibFunction(ADllHandle, RAND_query_egd_bytes_procname);
  FuncLoaded := assigned(RAND_query_egd_bytes);
  if not FuncLoaded then
  begin
    {$if declared(RAND_query_egd_bytes_introduced)}
    if LibVersion < RAND_query_egd_bytes_introduced then
    begin
      {$if declared(FC_RAND_query_egd_bytes)}
      RAND_query_egd_bytes := @FC_RAND_query_egd_bytes;
      {$else}
      {$if not defined(RAND_query_egd_bytes_allownil)}
      RAND_query_egd_bytes := @ERR_RAND_query_egd_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_query_egd_bytes_removed)}
    if RAND_query_egd_bytes_removed <= LibVersion then
    begin
      {$if declared(_RAND_query_egd_bytes)}
      RAND_query_egd_bytes := @_RAND_query_egd_bytes;
      {$else}
      {$if not defined(RAND_query_egd_bytes_allownil)}
      RAND_query_egd_bytes := @ERR_RAND_query_egd_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_query_egd_bytes_allownil)}
    if not FuncLoaded then
    begin
      RAND_query_egd_bytes := @ERR_RAND_query_egd_bytes;
      AFailed.Add('RAND_query_egd_bytes');
    end;
    {$ifend}
  end;


  RAND_egd := LoadLibFunction(ADllHandle, RAND_egd_procname);
  FuncLoaded := assigned(RAND_egd);
  if not FuncLoaded then
  begin
    {$if declared(RAND_egd_introduced)}
    if LibVersion < RAND_egd_introduced then
    begin
      {$if declared(FC_RAND_egd)}
      RAND_egd := @FC_RAND_egd;
      {$else}
      {$if not defined(RAND_egd_allownil)}
      RAND_egd := @ERR_RAND_egd;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_egd_removed)}
    if RAND_egd_removed <= LibVersion then
    begin
      {$if declared(_RAND_egd)}
      RAND_egd := @_RAND_egd;
      {$else}
      {$if not defined(RAND_egd_allownil)}
      RAND_egd := @ERR_RAND_egd;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_egd_allownil)}
    if not FuncLoaded then
    begin
      RAND_egd := @ERR_RAND_egd;
      AFailed.Add('RAND_egd');
    end;
    {$ifend}
  end;


  RAND_egd_bytes := LoadLibFunction(ADllHandle, RAND_egd_bytes_procname);
  FuncLoaded := assigned(RAND_egd_bytes);
  if not FuncLoaded then
  begin
    {$if declared(RAND_egd_bytes_introduced)}
    if LibVersion < RAND_egd_bytes_introduced then
    begin
      {$if declared(FC_RAND_egd_bytes)}
      RAND_egd_bytes := @FC_RAND_egd_bytes;
      {$else}
      {$if not defined(RAND_egd_bytes_allownil)}
      RAND_egd_bytes := @ERR_RAND_egd_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_egd_bytes_removed)}
    if RAND_egd_bytes_removed <= LibVersion then
    begin
      {$if declared(_RAND_egd_bytes)}
      RAND_egd_bytes := @_RAND_egd_bytes;
      {$else}
      {$if not defined(RAND_egd_bytes_allownil)}
      RAND_egd_bytes := @ERR_RAND_egd_bytes;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_egd_bytes_allownil)}
    if not FuncLoaded then
    begin
      RAND_egd_bytes := @ERR_RAND_egd_bytes;
      AFailed.Add('RAND_egd_bytes');
    end;
    {$ifend}
  end;


  RAND_poll := LoadLibFunction(ADllHandle, RAND_poll_procname);
  FuncLoaded := assigned(RAND_poll);
  if not FuncLoaded then
  begin
    {$if declared(RAND_poll_introduced)}
    if LibVersion < RAND_poll_introduced then
    begin
      {$if declared(FC_RAND_poll)}
      RAND_poll := @FC_RAND_poll;
      {$else}
      {$if not defined(RAND_poll_allownil)}
      RAND_poll := @ERR_RAND_poll;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(RAND_poll_removed)}
    if RAND_poll_removed <= LibVersion then
    begin
      {$if declared(_RAND_poll)}
      RAND_poll := @_RAND_poll;
      {$else}
      {$if not defined(RAND_poll_allownil)}
      RAND_poll := @ERR_RAND_poll;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(RAND_poll_allownil)}
    if not FuncLoaded then
    begin
      RAND_poll := @ERR_RAND_poll;
      AFailed.Add('RAND_poll');
    end;
    {$ifend}
  end;


end;

procedure Unload;
begin
  RAND_set_rand_method := nil;
  RAND_get_rand_method := nil;
  RAND_set_rand_engine := nil;
  RAND_OpenSSL := nil;
  RAND_bytes := nil;
  RAND_priv_bytes := nil;
  RAND_seed := nil;
  RAND_keep_random_devices_open := nil;
  RAND_add := nil;
  RAND_load_file := nil;
  RAND_write_file := nil;
  RAND_status := nil;
  RAND_query_egd_bytes := nil;
  RAND_egd := nil;
  RAND_egd_bytes := nil;
  RAND_poll := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF USE_EXTERNAL_LIBRARY}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
