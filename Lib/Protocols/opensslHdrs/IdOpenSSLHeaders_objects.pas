  (* This unit was generated using the script genOpenSSLHdrs.sh from the source file IdOpenSSLHeaders_objects.h2pas
     It should not be modified directly. All changes should be made to IdOpenSSLHeaders_objects.h2pas
     and this file regenerated. IdOpenSSLHeaders_objects.h2pas is distributed with the full Indy
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

unit IdOpenSSLHeaders_objects;

interface

// Headers for OpenSSL 1.1.1
// objects.h


uses
  IdCTypes,
  IdGlobal,
  IdSSLOpenSSLConsts,
  IdOpenSSLHeaders_ossl_typ;

type
  obj_name_st = record
    type_: TIdC_INT;
    alias: TIdC_INT;
    name: PIdAnsiChar;
    data: PIdAnsiChar;
  end;
  OBJ_NAME = obj_name_st;
  POBJ_NAME = ^OBJ_NAME;

//# define         OBJ_create_and_add_object(a,b,c) OBJ_create(a,b,c)

    { The EXTERNALSYM directive is ignored by FPC, however, it is used by Delphi as follows:
		
  	  The EXTERNALSYM directive prevents the specified Delphi symbol from appearing in header 
	  files generated for C++. }
	  
  {$EXTERNALSYM OBJ_NAME_init}
  {$EXTERNALSYM OBJ_NAME_get}
  {$EXTERNALSYM OBJ_NAME_add}
  {$EXTERNALSYM OBJ_NAME_remove}
  {$EXTERNALSYM OBJ_NAME_cleanup}
  {$EXTERNALSYM OBJ_dup}
  {$EXTERNALSYM OBJ_nid2obj}
  {$EXTERNALSYM OBJ_nid2ln}
  {$EXTERNALSYM OBJ_nid2sn}
  {$EXTERNALSYM OBJ_obj2nid}
  {$EXTERNALSYM OBJ_txt2obj}
  {$EXTERNALSYM OBJ_obj2txt}
  {$EXTERNALSYM OBJ_txt2nid}
  {$EXTERNALSYM OBJ_ln2nid}
  {$EXTERNALSYM OBJ_sn2nid}
  {$EXTERNALSYM OBJ_cmp}
  {$EXTERNALSYM OBJ_new_nid}
  {$EXTERNALSYM OBJ_add_object}
  {$EXTERNALSYM OBJ_create}
  {$EXTERNALSYM OBJ_create_objects}
  {$EXTERNALSYM OBJ_length} {introduced 1.1.0}
  {$EXTERNALSYM OBJ_get0_data} {introduced 1.1.0}
  {$EXTERNALSYM OBJ_find_sigid_algs}
  {$EXTERNALSYM OBJ_find_sigid_by_algs}
  {$EXTERNALSYM OBJ_add_sigid}
  {$EXTERNALSYM OBJ_sigid_free}

{$IFNDEF USE_EXTERNAL_LIBRARY}
var
  OBJ_NAME_init: function : TIdC_INT; cdecl = nil;
  //TIdC_INT OBJ_NAME_new_index(TIdC_ULONG (*hash_func) (const PIdAnsiChar *);
  //                       TIdC_INT (*cmp_func) (const PIdAnsiChar *; const PIdAnsiChar *);
  //                       void (*free_func) (const PIdAnsiChar *; TIdC_INT; const PIdAnsiChar *));
  OBJ_NAME_get: function (const name: PIdAnsiChar; type_: TIdC_INT): PIdAnsiChar; cdecl = nil;
  OBJ_NAME_add: function (const name: PIdAnsiChar; type_: TIdC_INT; const data: PIdAnsiChar): TIdC_INT; cdecl = nil;
  OBJ_NAME_remove: function (const name: PIdAnsiChar; type_: TIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_NAME_cleanup: procedure (type_: TIdC_INT); cdecl = nil;
//  void OBJ_NAME_do_all(TIdC_INT type_; void (*fn) (const OBJ_NAME *; void *arg);
//                       void *arg);
//  void OBJ_NAME_do_all_sorted(TIdC_INT type_;
//                              void (*fn) (const OBJ_NAME *; void *arg);
//                              void *arg);

  OBJ_dup: function (const o: PASN1_OBJECT): PASN1_OBJECT; cdecl = nil;
  OBJ_nid2obj: function (n: TIdC_INT): PASN1_OBJECT; cdecl = nil;
  OBJ_nid2ln: function (n: TIdC_INT): PIdAnsiChar; cdecl = nil;
  OBJ_nid2sn: function (n: TIdC_INT): PIdAnsiChar; cdecl = nil;
  OBJ_obj2nid: function (const o: PASN1_OBJECT): TIdC_INT; cdecl = nil;
  OBJ_txt2obj: function (const s: PIdAnsiChar; no_name: TIdC_INT): PASN1_OBJECT; cdecl = nil;
  OBJ_obj2txt: function (buf: PIdAnsiChar; buf_len: TIdC_INT; const a: PASN1_OBJECT; no_name: TIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_txt2nid: function (const s: PIdAnsiChar): TIdC_INT; cdecl = nil;
  OBJ_ln2nid: function (const s: PIdAnsiChar): TIdC_INT; cdecl = nil;
  OBJ_sn2nid: function (const s: PIdAnsiChar): TIdC_INT; cdecl = nil;
  OBJ_cmp: function (const a: PASN1_OBJECT; const b: PASN1_OBJECT): TIdC_INT; cdecl = nil;
//  const void *OBJ_bsearch_(const void *key; const void *base; TIdC_INT num; TIdC_INT size;
//                           TIdC_INT (*cmp) (const void *; const void *));
//  const void *OBJ_bsearch_ex_(const void *key; const void *base; TIdC_INT num;
//                              TIdC_INT size;
//                              TIdC_INT (*cmp) (const void *; const void *);
//                              TIdC_INT flags);

  //# define _DECLARE_OBJ_BSEARCH_CMP_FN(scope; type1; type2; nm)    \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *; const void *); \
  //  static TIdC_INT nm##_cmp(type1 const *; type2 const *); \
  //  scope type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)
  //
  //# define DECLARE_OBJ_BSEARCH_CMP_FN(type1; type2; cmp)   \
  //  _DECLARE_OBJ_BSEARCH_CMP_FN(static; type1; type2; cmp)
  //# define DECLARE_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)     \
  //  type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)

  (*
   * Unsolved problem: if a type is actually a pointer type, like
   * nid_triple is, then its impossible to get a const where you need
   * it. Consider:
   *
   * typedef TIdC_INT nid_triple[3];
   * const void *a_;
   * const nid_triple const *a = a_;
   *
   * The assignment discards a const because what you really want is:
   *
   * const TIdC_INT const * const *a = a_;
   *
   * But if you do that, you lose the fact that a is an array of 3 ints,
   * which breaks comparison functions.
   *
   * Thus we end up having to cast, sadly, or unpack the
   * declarations. Or, as I finally did in this case, declare nid_triple
   * to be a struct, which it should have been in the first place.
   *
   * Ben, August 2008.
   *
   * Also, strictly speaking not all types need be const, but handling
   * the non-constness means a lot of complication, and in practice
   * comparison routines do always not touch their arguments.
   *)

  //# define IMPLEMENT_OBJ_BSEARCH_CMP_FN(type1, type2, nm)  \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  static type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define IMPLEMENT_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)   \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define OBJ_bsearch(type1;key;type2;base;num;cmp)                              \
  //  ((type2 *)OBJ_bsearch_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)CHECKED_PTR_OF(type2;cmp##_type_2);     \
  //                          cmp##_BSEARCH_CMP_FN)))
  //
  //# define OBJ_bsearch_ex(type1;key;type2;base;num;cmp;flags)                      \
  //  ((type2 *)OBJ_bsearch_ex_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)type_2=CHECKED_PTR_OF(type2;cmp##_type_2); \
  //                          cmp##_BSEARCH_CMP_FN));flags)

  OBJ_new_nid: function (num: TIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_add_object: function (const obj: PASN1_OBJECT): TIdC_INT; cdecl = nil;
  OBJ_create: function (const oid: PIdAnsiChar; const sn: PIdAnsiChar; const ln: PIdAnsiChar): TIdC_INT; cdecl = nil;
  OBJ_create_objects: function (in_: PBIO): TIdC_INT; cdecl = nil;

  OBJ_length: function (const obj: PASN1_OBJECT): TIdC_SIZET; cdecl = nil; {introduced 1.1.0}
  OBJ_get0_data: function (const obj: PASN1_OBJECT): PByte; cdecl = nil; {introduced 1.1.0}

  OBJ_find_sigid_algs: function (signid: TIdC_INT; pdig_nid: PIdC_INT; ppkey_nid: PIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_find_sigid_by_algs: function (psignid: PIdC_INT; dig_nid: TIdC_INT; pkey_nid: TIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_add_sigid: function (signid: TIdC_INT; dig_id: TIdC_INT; pkey_id: TIdC_INT): TIdC_INT; cdecl = nil;
  OBJ_sigid_free: procedure ; cdecl = nil;

{$ELSE}
  function OBJ_NAME_init: TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  //TIdC_INT OBJ_NAME_new_index(TIdC_ULONG (*hash_func) (const PIdAnsiChar *);
  //                       TIdC_INT (*cmp_func) (const PIdAnsiChar *; const PIdAnsiChar *);
  //                       void (*free_func) (const PIdAnsiChar *; TIdC_INT; const PIdAnsiChar *));
  function OBJ_NAME_get(const name: PIdAnsiChar; type_: TIdC_INT): PIdAnsiChar cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_NAME_add(const name: PIdAnsiChar; type_: TIdC_INT; const data: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_NAME_remove(const name: PIdAnsiChar; type_: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  procedure OBJ_NAME_cleanup(type_: TIdC_INT) cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
//  void OBJ_NAME_do_all(TIdC_INT type_; void (*fn) (const OBJ_NAME *; void *arg);
//                       void *arg);
//  void OBJ_NAME_do_all_sorted(TIdC_INT type_;
//                              void (*fn) (const OBJ_NAME *; void *arg);
//                              void *arg);

  function OBJ_dup(const o: PASN1_OBJECT): PASN1_OBJECT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_nid2obj(n: TIdC_INT): PASN1_OBJECT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_nid2ln(n: TIdC_INT): PIdAnsiChar cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_nid2sn(n: TIdC_INT): PIdAnsiChar cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_obj2nid(const o: PASN1_OBJECT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_txt2obj(const s: PIdAnsiChar; no_name: TIdC_INT): PASN1_OBJECT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_obj2txt(buf: PIdAnsiChar; buf_len: TIdC_INT; const a: PASN1_OBJECT; no_name: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_txt2nid(const s: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_ln2nid(const s: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_sn2nid(const s: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_cmp(const a: PASN1_OBJECT; const b: PASN1_OBJECT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
//  const void *OBJ_bsearch_(const void *key; const void *base; TIdC_INT num; TIdC_INT size;
//                           TIdC_INT (*cmp) (const void *; const void *));
//  const void *OBJ_bsearch_ex_(const void *key; const void *base; TIdC_INT num;
//                              TIdC_INT size;
//                              TIdC_INT (*cmp) (const void *; const void *);
//                              TIdC_INT flags);

  //# define _DECLARE_OBJ_BSEARCH_CMP_FN(scope; type1; type2; nm)    \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *; const void *); \
  //  static TIdC_INT nm##_cmp(type1 const *; type2 const *); \
  //  scope type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)
  //
  //# define DECLARE_OBJ_BSEARCH_CMP_FN(type1; type2; cmp)   \
  //  _DECLARE_OBJ_BSEARCH_CMP_FN(static; type1; type2; cmp)
  //# define DECLARE_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)     \
  //  type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)

  (*
   * Unsolved problem: if a type is actually a pointer type, like
   * nid_triple is, then its impossible to get a const where you need
   * it. Consider:
   *
   * typedef TIdC_INT nid_triple[3];
   * const void *a_;
   * const nid_triple const *a = a_;
   *
   * The assignment discards a const because what you really want is:
   *
   * const TIdC_INT const * const *a = a_;
   *
   * But if you do that, you lose the fact that a is an array of 3 ints,
   * which breaks comparison functions.
   *
   * Thus we end up having to cast, sadly, or unpack the
   * declarations. Or, as I finally did in this case, declare nid_triple
   * to be a struct, which it should have been in the first place.
   *
   * Ben, August 2008.
   *
   * Also, strictly speaking not all types need be const, but handling
   * the non-constness means a lot of complication, and in practice
   * comparison routines do always not touch their arguments.
   *)

  //# define IMPLEMENT_OBJ_BSEARCH_CMP_FN(type1, type2, nm)  \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  static type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define IMPLEMENT_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)   \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define OBJ_bsearch(type1;key;type2;base;num;cmp)                              \
  //  ((type2 *)OBJ_bsearch_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)CHECKED_PTR_OF(type2;cmp##_type_2);     \
  //                          cmp##_BSEARCH_CMP_FN)))
  //
  //# define OBJ_bsearch_ex(type1;key;type2;base;num;cmp;flags)                      \
  //  ((type2 *)OBJ_bsearch_ex_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)type_2=CHECKED_PTR_OF(type2;cmp##_type_2); \
  //                          cmp##_BSEARCH_CMP_FN));flags)

  function OBJ_new_nid(num: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_add_object(const obj: PASN1_OBJECT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_create(const oid: PIdAnsiChar; const sn: PIdAnsiChar; const ln: PIdAnsiChar): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_create_objects(in_: PBIO): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

  function OBJ_length(const obj: PASN1_OBJECT): TIdC_SIZET cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF}; {introduced 1.1.0}
  function OBJ_get0_data(const obj: PASN1_OBJECT): PByte cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF}; {introduced 1.1.0}

  function OBJ_find_sigid_algs(signid: TIdC_INT; pdig_nid: PIdC_INT; ppkey_nid: PIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_find_sigid_by_algs(psignid: PIdC_INT; dig_nid: TIdC_INT; pkey_nid: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  function OBJ_add_sigid(signid: TIdC_INT; dig_id: TIdC_INT; pkey_id: TIdC_INT): TIdC_INT cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};
  procedure OBJ_sigid_free cdecl; external {$IFNDEF OPENSSL_USE_STATIC_LIBRARY}CLibCrypto{$ENDIF};

{$ENDIF}

implementation

  uses
    classes, 
    IdSSLOpenSSLExceptionHandlers, 
    IdResourceStringsOpenSSL
  {$IFNDEF USE_EXTERNAL_LIBRARY}
    ,IdSSLOpenSSLLoader
  {$ENDIF};
  
const
  OBJ_length_introduced = (byte(1) shl 8 or byte(1)) shl 8 or byte(0);
  OBJ_get0_data_introduced = (byte(1) shl 8 or byte(1)) shl 8 or byte(0);

{$IFNDEF USE_EXTERNAL_LIBRARY}
const
  OBJ_NAME_init_procname = 'OBJ_NAME_init';
  //TIdC_INT OBJ_NAME_new_index(TIdC_ULONG (*hash_func) (const PIdAnsiChar *);
  //                       TIdC_INT (*cmp_func) (const PIdAnsiChar *; const PIdAnsiChar *);
  //                       void (*free_func) (const PIdAnsiChar *; TIdC_INT; const PIdAnsiChar *));
  OBJ_NAME_get_procname = 'OBJ_NAME_get';
  OBJ_NAME_add_procname = 'OBJ_NAME_add';
  OBJ_NAME_remove_procname = 'OBJ_NAME_remove';
  OBJ_NAME_cleanup_procname = 'OBJ_NAME_cleanup';
//  void OBJ_NAME_do_all(TIdC_INT type_; void (*fn) (const OBJ_NAME *; void *arg);
//                       void *arg);
//  void OBJ_NAME_do_all_sorted(TIdC_INT type_;
//                              void (*fn) (const OBJ_NAME *; void *arg);
//                              void *arg);

  OBJ_dup_procname = 'OBJ_dup';
  OBJ_nid2obj_procname = 'OBJ_nid2obj';
  OBJ_nid2ln_procname = 'OBJ_nid2ln';
  OBJ_nid2sn_procname = 'OBJ_nid2sn';
  OBJ_obj2nid_procname = 'OBJ_obj2nid';
  OBJ_txt2obj_procname = 'OBJ_txt2obj';
  OBJ_obj2txt_procname = 'OBJ_obj2txt';
  OBJ_txt2nid_procname = 'OBJ_txt2nid';
  OBJ_ln2nid_procname = 'OBJ_ln2nid';
  OBJ_sn2nid_procname = 'OBJ_sn2nid';
  OBJ_cmp_procname = 'OBJ_cmp';
//  const void *OBJ_bsearch_(const void *key; const void *base; TIdC_INT num; TIdC_INT size;
//                           TIdC_INT (*cmp) (const void *; const void *));
//  const void *OBJ_bsearch_ex_(const void *key; const void *base; TIdC_INT num;
//                              TIdC_INT size;
//                              TIdC_INT (*cmp) (const void *; const void *);
//                              TIdC_INT flags);

  //# define _DECLARE_OBJ_BSEARCH_CMP_FN(scope; type1; type2; nm)    \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *; const void *); \
  //  static TIdC_INT nm##_cmp(type1 const *; type2 const *); \
  //  scope type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)
  //
  //# define DECLARE_OBJ_BSEARCH_CMP_FN(type1; type2; cmp)   \
  //  _DECLARE_OBJ_BSEARCH_CMP_FN(static; type1; type2; cmp)
  //# define DECLARE_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)     \
  //  type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)

  (*
   * Unsolved problem: if a type is actually a pointer type, like
   * nid_triple is, then its impossible to get a const where you need
   * it. Consider:
   *
   * typedef TIdC_INT nid_triple[3];
   * const void *a_;
   * const nid_triple const *a = a_;
   *
   * The assignment discards a const because what you really want is:
   *
   * const TIdC_INT const * const *a = a_;
   *
   * But if you do that, you lose the fact that a is an array of 3 ints,
   * which breaks comparison functions.
   *
   * Thus we end up having to cast, sadly, or unpack the
   * declarations. Or, as I finally did in this case, declare nid_triple
   * to be a struct, which it should have been in the first place.
   *
   * Ben, August 2008.
   *
   * Also, strictly speaking not all types need be const, but handling
   * the non-constness means a lot of complication, and in practice
   * comparison routines do always not touch their arguments.
   *)

  //# define IMPLEMENT_OBJ_BSEARCH_CMP_FN(type1, type2, nm)  \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  static type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define IMPLEMENT_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)   \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define OBJ_bsearch(type1;key;type2;base;num;cmp)                              \
  //  ((type2 *)OBJ_bsearch_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)CHECKED_PTR_OF(type2;cmp##_type_2);     \
  //                          cmp##_BSEARCH_CMP_FN)))
  //
  //# define OBJ_bsearch_ex(type1;key;type2;base;num;cmp;flags)                      \
  //  ((type2 *)OBJ_bsearch_ex_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)type_2=CHECKED_PTR_OF(type2;cmp##_type_2); \
  //                          cmp##_BSEARCH_CMP_FN));flags)

  OBJ_new_nid_procname = 'OBJ_new_nid';
  OBJ_add_object_procname = 'OBJ_add_object';
  OBJ_create_procname = 'OBJ_create';
  OBJ_create_objects_procname = 'OBJ_create_objects';

  OBJ_length_procname = 'OBJ_length'; {introduced 1.1.0}
  OBJ_get0_data_procname = 'OBJ_get0_data'; {introduced 1.1.0}

  OBJ_find_sigid_algs_procname = 'OBJ_find_sigid_algs';
  OBJ_find_sigid_by_algs_procname = 'OBJ_find_sigid_by_algs';
  OBJ_add_sigid_procname = 'OBJ_add_sigid';
  OBJ_sigid_free_procname = 'OBJ_sigid_free';


{$WARN  NO_RETVAL OFF}
function  ERR_OBJ_NAME_init: TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_NAME_init_procname);
end;


  //TIdC_INT OBJ_NAME_new_index(TIdC_ULONG (*hash_func) (const PIdAnsiChar *);
  //                       TIdC_INT (*cmp_func) (const PIdAnsiChar *; const PIdAnsiChar *);
  //                       void (*free_func) (const PIdAnsiChar *; TIdC_INT; const PIdAnsiChar *));
function  ERR_OBJ_NAME_get(const name: PIdAnsiChar; type_: TIdC_INT): PIdAnsiChar; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_NAME_get_procname);
end;


function  ERR_OBJ_NAME_add(const name: PIdAnsiChar; type_: TIdC_INT; const data: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_NAME_add_procname);
end;


function  ERR_OBJ_NAME_remove(const name: PIdAnsiChar; type_: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_NAME_remove_procname);
end;


procedure  ERR_OBJ_NAME_cleanup(type_: TIdC_INT); 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_NAME_cleanup_procname);
end;


//  void OBJ_NAME_do_all(TIdC_INT type_; void (*fn) (const OBJ_NAME *; void *arg);
//                       void *arg);
//  void OBJ_NAME_do_all_sorted(TIdC_INT type_;
//                              void (*fn) (const OBJ_NAME *; void *arg);
//                              void *arg);

function  ERR_OBJ_dup(const o: PASN1_OBJECT): PASN1_OBJECT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_dup_procname);
end;


function  ERR_OBJ_nid2obj(n: TIdC_INT): PASN1_OBJECT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_nid2obj_procname);
end;


function  ERR_OBJ_nid2ln(n: TIdC_INT): PIdAnsiChar; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_nid2ln_procname);
end;


function  ERR_OBJ_nid2sn(n: TIdC_INT): PIdAnsiChar; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_nid2sn_procname);
end;


function  ERR_OBJ_obj2nid(const o: PASN1_OBJECT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_obj2nid_procname);
end;


function  ERR_OBJ_txt2obj(const s: PIdAnsiChar; no_name: TIdC_INT): PASN1_OBJECT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_txt2obj_procname);
end;


function  ERR_OBJ_obj2txt(buf: PIdAnsiChar; buf_len: TIdC_INT; const a: PASN1_OBJECT; no_name: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_obj2txt_procname);
end;


function  ERR_OBJ_txt2nid(const s: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_txt2nid_procname);
end;


function  ERR_OBJ_ln2nid(const s: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_ln2nid_procname);
end;


function  ERR_OBJ_sn2nid(const s: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_sn2nid_procname);
end;


function  ERR_OBJ_cmp(const a: PASN1_OBJECT; const b: PASN1_OBJECT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_cmp_procname);
end;


//  const void *OBJ_bsearch_(const void *key; const void *base; TIdC_INT num; TIdC_INT size;
//                           TIdC_INT (*cmp) (const void *; const void *));
//  const void *OBJ_bsearch_ex_(const void *key; const void *base; TIdC_INT num;
//                              TIdC_INT size;
//                              TIdC_INT (*cmp) (const void *; const void *);
//                              TIdC_INT flags);

  //# define _DECLARE_OBJ_BSEARCH_CMP_FN(scope; type1; type2; nm)    \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *; const void *); \
  //  static TIdC_INT nm##_cmp(type1 const *; type2 const *); \
  //  scope type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)
  //
  //# define DECLARE_OBJ_BSEARCH_CMP_FN(type1; type2; cmp)   \
  //  _DECLARE_OBJ_BSEARCH_CMP_FN(static; type1; type2; cmp)
  //# define DECLARE_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)     \
  //  type2 * OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num)

  (*
   * Unsolved problem: if a type is actually a pointer type, like
   * nid_triple is, then its impossible to get a const where you need
   * it. Consider:
   *
   * typedef TIdC_INT nid_triple[3];
   * const void *a_;
   * const nid_triple const *a = a_;
   *
   * The assignment discards a const because what you really want is:
   *
   * const TIdC_INT const * const *a = a_;
   *
   * But if you do that, you lose the fact that a is an array of 3 ints,
   * which breaks comparison functions.
   *
   * Thus we end up having to cast, sadly, or unpack the
   * declarations. Or, as I finally did in this case, declare nid_triple
   * to be a struct, which it should have been in the first place.
   *
   * Ben, August 2008.
   *
   * Also, strictly speaking not all types need be const, but handling
   * the non-constness means a lot of complication, and in practice
   * comparison routines do always not touch their arguments.
   *)

  //# define IMPLEMENT_OBJ_BSEARCH_CMP_FN(type1, type2, nm)  \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  static type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define IMPLEMENT_OBJ_BSEARCH_GLOBAL_CMP_FN(type1; type2; nm)   \
  //  static TIdC_INT nm##_cmp_BSEARCH_CMP_FN(const void *a_; const void *b_)    \
  //      { \
  //      type1 const *a = a_; \
  //      type2 const *b = b_; \
  //      return nm##_cmp(a;b); \
  //      } \
  //  type2 *OBJ_bsearch_##nm(type1 *key; type2 const *base; TIdC_INT num) \
  //      { \
  //      return (type2 *)OBJ_bsearch_(key; base; num; sizeof(type2); \
  //                                        nm##_cmp_BSEARCH_CMP_FN); \
  //      } \
  //      extern void dummy_prototype(void)
  //
  //# define OBJ_bsearch(type1;key;type2;base;num;cmp)                              \
  //  ((type2 *)OBJ_bsearch_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)CHECKED_PTR_OF(type2;cmp##_type_2);     \
  //                          cmp##_BSEARCH_CMP_FN)))
  //
  //# define OBJ_bsearch_ex(type1;key;type2;base;num;cmp;flags)                      \
  //  ((type2 *)OBJ_bsearch_ex_(CHECKED_PTR_OF(type1;key);CHECKED_PTR_OF(type2;base); \
  //                         num;sizeof(type2);                             \
  //                         ((void)CHECKED_PTR_OF(type1;cmp##_type_1);     \
  //                          (void)type_2=CHECKED_PTR_OF(type2;cmp##_type_2); \
  //                          cmp##_BSEARCH_CMP_FN));flags)

function  ERR_OBJ_new_nid(num: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_new_nid_procname);
end;


function  ERR_OBJ_add_object(const obj: PASN1_OBJECT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_add_object_procname);
end;


function  ERR_OBJ_create(const oid: PIdAnsiChar; const sn: PIdAnsiChar; const ln: PIdAnsiChar): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_create_procname);
end;


function  ERR_OBJ_create_objects(in_: PBIO): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_create_objects_procname);
end;



function  ERR_OBJ_length(const obj: PASN1_OBJECT): TIdC_SIZET; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_length_procname);
end;

 {introduced 1.1.0}
function  ERR_OBJ_get0_data(const obj: PASN1_OBJECT): PByte; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_get0_data_procname);
end;

 {introduced 1.1.0}

function  ERR_OBJ_find_sigid_algs(signid: TIdC_INT; pdig_nid: PIdC_INT; ppkey_nid: PIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_find_sigid_algs_procname);
end;


function  ERR_OBJ_find_sigid_by_algs(psignid: PIdC_INT; dig_nid: TIdC_INT; pkey_nid: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_find_sigid_by_algs_procname);
end;


function  ERR_OBJ_add_sigid(signid: TIdC_INT; dig_id: TIdC_INT; pkey_id: TIdC_INT): TIdC_INT; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_add_sigid_procname);
end;


procedure  ERR_OBJ_sigid_free; 
begin
  EIdAPIFunctionNotPresent.RaiseException(OBJ_sigid_free_procname);
end;



{$WARN  NO_RETVAL ON}

procedure Load(const ADllHandle: TIdLibHandle; LibVersion: TIdC_UINT; const AFailed: TStringList);

var FuncLoaded: boolean;

begin
  OBJ_NAME_init := LoadLibFunction(ADllHandle, OBJ_NAME_init_procname);
  FuncLoaded := assigned(OBJ_NAME_init);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_NAME_init_introduced)}
    if LibVersion < OBJ_NAME_init_introduced then
    begin
      {$if declared(FC_OBJ_NAME_init)}
      OBJ_NAME_init := @FC_OBJ_NAME_init;
      {$else}
      {$if not defined(OBJ_NAME_init_allownil)}
      OBJ_NAME_init := @ERR_OBJ_NAME_init;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_NAME_init_removed)}
    if OBJ_NAME_init_removed <= LibVersion then
    begin
      {$if declared(_OBJ_NAME_init)}
      OBJ_NAME_init := @_OBJ_NAME_init;
      {$else}
      {$if not defined(OBJ_NAME_init_allownil)}
      OBJ_NAME_init := @ERR_OBJ_NAME_init;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_NAME_init_allownil)}
    if not FuncLoaded then
    begin
      OBJ_NAME_init := @ERR_OBJ_NAME_init;
      AFailed.Add('OBJ_NAME_init');
    end;
    {$ifend}
  end;


  OBJ_NAME_get := LoadLibFunction(ADllHandle, OBJ_NAME_get_procname);
  FuncLoaded := assigned(OBJ_NAME_get);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_NAME_get_introduced)}
    if LibVersion < OBJ_NAME_get_introduced then
    begin
      {$if declared(FC_OBJ_NAME_get)}
      OBJ_NAME_get := @FC_OBJ_NAME_get;
      {$else}
      {$if not defined(OBJ_NAME_get_allownil)}
      OBJ_NAME_get := @ERR_OBJ_NAME_get;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_NAME_get_removed)}
    if OBJ_NAME_get_removed <= LibVersion then
    begin
      {$if declared(_OBJ_NAME_get)}
      OBJ_NAME_get := @_OBJ_NAME_get;
      {$else}
      {$if not defined(OBJ_NAME_get_allownil)}
      OBJ_NAME_get := @ERR_OBJ_NAME_get;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_NAME_get_allownil)}
    if not FuncLoaded then
    begin
      OBJ_NAME_get := @ERR_OBJ_NAME_get;
      AFailed.Add('OBJ_NAME_get');
    end;
    {$ifend}
  end;


  OBJ_NAME_add := LoadLibFunction(ADllHandle, OBJ_NAME_add_procname);
  FuncLoaded := assigned(OBJ_NAME_add);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_NAME_add_introduced)}
    if LibVersion < OBJ_NAME_add_introduced then
    begin
      {$if declared(FC_OBJ_NAME_add)}
      OBJ_NAME_add := @FC_OBJ_NAME_add;
      {$else}
      {$if not defined(OBJ_NAME_add_allownil)}
      OBJ_NAME_add := @ERR_OBJ_NAME_add;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_NAME_add_removed)}
    if OBJ_NAME_add_removed <= LibVersion then
    begin
      {$if declared(_OBJ_NAME_add)}
      OBJ_NAME_add := @_OBJ_NAME_add;
      {$else}
      {$if not defined(OBJ_NAME_add_allownil)}
      OBJ_NAME_add := @ERR_OBJ_NAME_add;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_NAME_add_allownil)}
    if not FuncLoaded then
    begin
      OBJ_NAME_add := @ERR_OBJ_NAME_add;
      AFailed.Add('OBJ_NAME_add');
    end;
    {$ifend}
  end;


  OBJ_NAME_remove := LoadLibFunction(ADllHandle, OBJ_NAME_remove_procname);
  FuncLoaded := assigned(OBJ_NAME_remove);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_NAME_remove_introduced)}
    if LibVersion < OBJ_NAME_remove_introduced then
    begin
      {$if declared(FC_OBJ_NAME_remove)}
      OBJ_NAME_remove := @FC_OBJ_NAME_remove;
      {$else}
      {$if not defined(OBJ_NAME_remove_allownil)}
      OBJ_NAME_remove := @ERR_OBJ_NAME_remove;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_NAME_remove_removed)}
    if OBJ_NAME_remove_removed <= LibVersion then
    begin
      {$if declared(_OBJ_NAME_remove)}
      OBJ_NAME_remove := @_OBJ_NAME_remove;
      {$else}
      {$if not defined(OBJ_NAME_remove_allownil)}
      OBJ_NAME_remove := @ERR_OBJ_NAME_remove;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_NAME_remove_allownil)}
    if not FuncLoaded then
    begin
      OBJ_NAME_remove := @ERR_OBJ_NAME_remove;
      AFailed.Add('OBJ_NAME_remove');
    end;
    {$ifend}
  end;


  OBJ_NAME_cleanup := LoadLibFunction(ADllHandle, OBJ_NAME_cleanup_procname);
  FuncLoaded := assigned(OBJ_NAME_cleanup);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_NAME_cleanup_introduced)}
    if LibVersion < OBJ_NAME_cleanup_introduced then
    begin
      {$if declared(FC_OBJ_NAME_cleanup)}
      OBJ_NAME_cleanup := @FC_OBJ_NAME_cleanup;
      {$else}
      {$if not defined(OBJ_NAME_cleanup_allownil)}
      OBJ_NAME_cleanup := @ERR_OBJ_NAME_cleanup;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_NAME_cleanup_removed)}
    if OBJ_NAME_cleanup_removed <= LibVersion then
    begin
      {$if declared(_OBJ_NAME_cleanup)}
      OBJ_NAME_cleanup := @_OBJ_NAME_cleanup;
      {$else}
      {$if not defined(OBJ_NAME_cleanup_allownil)}
      OBJ_NAME_cleanup := @ERR_OBJ_NAME_cleanup;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_NAME_cleanup_allownil)}
    if not FuncLoaded then
    begin
      OBJ_NAME_cleanup := @ERR_OBJ_NAME_cleanup;
      AFailed.Add('OBJ_NAME_cleanup');
    end;
    {$ifend}
  end;


  OBJ_dup := LoadLibFunction(ADllHandle, OBJ_dup_procname);
  FuncLoaded := assigned(OBJ_dup);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_dup_introduced)}
    if LibVersion < OBJ_dup_introduced then
    begin
      {$if declared(FC_OBJ_dup)}
      OBJ_dup := @FC_OBJ_dup;
      {$else}
      {$if not defined(OBJ_dup_allownil)}
      OBJ_dup := @ERR_OBJ_dup;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_dup_removed)}
    if OBJ_dup_removed <= LibVersion then
    begin
      {$if declared(_OBJ_dup)}
      OBJ_dup := @_OBJ_dup;
      {$else}
      {$if not defined(OBJ_dup_allownil)}
      OBJ_dup := @ERR_OBJ_dup;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_dup_allownil)}
    if not FuncLoaded then
    begin
      OBJ_dup := @ERR_OBJ_dup;
      AFailed.Add('OBJ_dup');
    end;
    {$ifend}
  end;


  OBJ_nid2obj := LoadLibFunction(ADllHandle, OBJ_nid2obj_procname);
  FuncLoaded := assigned(OBJ_nid2obj);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_nid2obj_introduced)}
    if LibVersion < OBJ_nid2obj_introduced then
    begin
      {$if declared(FC_OBJ_nid2obj)}
      OBJ_nid2obj := @FC_OBJ_nid2obj;
      {$else}
      {$if not defined(OBJ_nid2obj_allownil)}
      OBJ_nid2obj := @ERR_OBJ_nid2obj;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_nid2obj_removed)}
    if OBJ_nid2obj_removed <= LibVersion then
    begin
      {$if declared(_OBJ_nid2obj)}
      OBJ_nid2obj := @_OBJ_nid2obj;
      {$else}
      {$if not defined(OBJ_nid2obj_allownil)}
      OBJ_nid2obj := @ERR_OBJ_nid2obj;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_nid2obj_allownil)}
    if not FuncLoaded then
    begin
      OBJ_nid2obj := @ERR_OBJ_nid2obj;
      AFailed.Add('OBJ_nid2obj');
    end;
    {$ifend}
  end;


  OBJ_nid2ln := LoadLibFunction(ADllHandle, OBJ_nid2ln_procname);
  FuncLoaded := assigned(OBJ_nid2ln);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_nid2ln_introduced)}
    if LibVersion < OBJ_nid2ln_introduced then
    begin
      {$if declared(FC_OBJ_nid2ln)}
      OBJ_nid2ln := @FC_OBJ_nid2ln;
      {$else}
      {$if not defined(OBJ_nid2ln_allownil)}
      OBJ_nid2ln := @ERR_OBJ_nid2ln;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_nid2ln_removed)}
    if OBJ_nid2ln_removed <= LibVersion then
    begin
      {$if declared(_OBJ_nid2ln)}
      OBJ_nid2ln := @_OBJ_nid2ln;
      {$else}
      {$if not defined(OBJ_nid2ln_allownil)}
      OBJ_nid2ln := @ERR_OBJ_nid2ln;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_nid2ln_allownil)}
    if not FuncLoaded then
    begin
      OBJ_nid2ln := @ERR_OBJ_nid2ln;
      AFailed.Add('OBJ_nid2ln');
    end;
    {$ifend}
  end;


  OBJ_nid2sn := LoadLibFunction(ADllHandle, OBJ_nid2sn_procname);
  FuncLoaded := assigned(OBJ_nid2sn);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_nid2sn_introduced)}
    if LibVersion < OBJ_nid2sn_introduced then
    begin
      {$if declared(FC_OBJ_nid2sn)}
      OBJ_nid2sn := @FC_OBJ_nid2sn;
      {$else}
      {$if not defined(OBJ_nid2sn_allownil)}
      OBJ_nid2sn := @ERR_OBJ_nid2sn;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_nid2sn_removed)}
    if OBJ_nid2sn_removed <= LibVersion then
    begin
      {$if declared(_OBJ_nid2sn)}
      OBJ_nid2sn := @_OBJ_nid2sn;
      {$else}
      {$if not defined(OBJ_nid2sn_allownil)}
      OBJ_nid2sn := @ERR_OBJ_nid2sn;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_nid2sn_allownil)}
    if not FuncLoaded then
    begin
      OBJ_nid2sn := @ERR_OBJ_nid2sn;
      AFailed.Add('OBJ_nid2sn');
    end;
    {$ifend}
  end;


  OBJ_obj2nid := LoadLibFunction(ADllHandle, OBJ_obj2nid_procname);
  FuncLoaded := assigned(OBJ_obj2nid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_obj2nid_introduced)}
    if LibVersion < OBJ_obj2nid_introduced then
    begin
      {$if declared(FC_OBJ_obj2nid)}
      OBJ_obj2nid := @FC_OBJ_obj2nid;
      {$else}
      {$if not defined(OBJ_obj2nid_allownil)}
      OBJ_obj2nid := @ERR_OBJ_obj2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_obj2nid_removed)}
    if OBJ_obj2nid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_obj2nid)}
      OBJ_obj2nid := @_OBJ_obj2nid;
      {$else}
      {$if not defined(OBJ_obj2nid_allownil)}
      OBJ_obj2nid := @ERR_OBJ_obj2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_obj2nid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_obj2nid := @ERR_OBJ_obj2nid;
      AFailed.Add('OBJ_obj2nid');
    end;
    {$ifend}
  end;


  OBJ_txt2obj := LoadLibFunction(ADllHandle, OBJ_txt2obj_procname);
  FuncLoaded := assigned(OBJ_txt2obj);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_txt2obj_introduced)}
    if LibVersion < OBJ_txt2obj_introduced then
    begin
      {$if declared(FC_OBJ_txt2obj)}
      OBJ_txt2obj := @FC_OBJ_txt2obj;
      {$else}
      {$if not defined(OBJ_txt2obj_allownil)}
      OBJ_txt2obj := @ERR_OBJ_txt2obj;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_txt2obj_removed)}
    if OBJ_txt2obj_removed <= LibVersion then
    begin
      {$if declared(_OBJ_txt2obj)}
      OBJ_txt2obj := @_OBJ_txt2obj;
      {$else}
      {$if not defined(OBJ_txt2obj_allownil)}
      OBJ_txt2obj := @ERR_OBJ_txt2obj;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_txt2obj_allownil)}
    if not FuncLoaded then
    begin
      OBJ_txt2obj := @ERR_OBJ_txt2obj;
      AFailed.Add('OBJ_txt2obj');
    end;
    {$ifend}
  end;


  OBJ_obj2txt := LoadLibFunction(ADllHandle, OBJ_obj2txt_procname);
  FuncLoaded := assigned(OBJ_obj2txt);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_obj2txt_introduced)}
    if LibVersion < OBJ_obj2txt_introduced then
    begin
      {$if declared(FC_OBJ_obj2txt)}
      OBJ_obj2txt := @FC_OBJ_obj2txt;
      {$else}
      {$if not defined(OBJ_obj2txt_allownil)}
      OBJ_obj2txt := @ERR_OBJ_obj2txt;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_obj2txt_removed)}
    if OBJ_obj2txt_removed <= LibVersion then
    begin
      {$if declared(_OBJ_obj2txt)}
      OBJ_obj2txt := @_OBJ_obj2txt;
      {$else}
      {$if not defined(OBJ_obj2txt_allownil)}
      OBJ_obj2txt := @ERR_OBJ_obj2txt;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_obj2txt_allownil)}
    if not FuncLoaded then
    begin
      OBJ_obj2txt := @ERR_OBJ_obj2txt;
      AFailed.Add('OBJ_obj2txt');
    end;
    {$ifend}
  end;


  OBJ_txt2nid := LoadLibFunction(ADllHandle, OBJ_txt2nid_procname);
  FuncLoaded := assigned(OBJ_txt2nid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_txt2nid_introduced)}
    if LibVersion < OBJ_txt2nid_introduced then
    begin
      {$if declared(FC_OBJ_txt2nid)}
      OBJ_txt2nid := @FC_OBJ_txt2nid;
      {$else}
      {$if not defined(OBJ_txt2nid_allownil)}
      OBJ_txt2nid := @ERR_OBJ_txt2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_txt2nid_removed)}
    if OBJ_txt2nid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_txt2nid)}
      OBJ_txt2nid := @_OBJ_txt2nid;
      {$else}
      {$if not defined(OBJ_txt2nid_allownil)}
      OBJ_txt2nid := @ERR_OBJ_txt2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_txt2nid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_txt2nid := @ERR_OBJ_txt2nid;
      AFailed.Add('OBJ_txt2nid');
    end;
    {$ifend}
  end;


  OBJ_ln2nid := LoadLibFunction(ADllHandle, OBJ_ln2nid_procname);
  FuncLoaded := assigned(OBJ_ln2nid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_ln2nid_introduced)}
    if LibVersion < OBJ_ln2nid_introduced then
    begin
      {$if declared(FC_OBJ_ln2nid)}
      OBJ_ln2nid := @FC_OBJ_ln2nid;
      {$else}
      {$if not defined(OBJ_ln2nid_allownil)}
      OBJ_ln2nid := @ERR_OBJ_ln2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_ln2nid_removed)}
    if OBJ_ln2nid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_ln2nid)}
      OBJ_ln2nid := @_OBJ_ln2nid;
      {$else}
      {$if not defined(OBJ_ln2nid_allownil)}
      OBJ_ln2nid := @ERR_OBJ_ln2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_ln2nid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_ln2nid := @ERR_OBJ_ln2nid;
      AFailed.Add('OBJ_ln2nid');
    end;
    {$ifend}
  end;


  OBJ_sn2nid := LoadLibFunction(ADllHandle, OBJ_sn2nid_procname);
  FuncLoaded := assigned(OBJ_sn2nid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_sn2nid_introduced)}
    if LibVersion < OBJ_sn2nid_introduced then
    begin
      {$if declared(FC_OBJ_sn2nid)}
      OBJ_sn2nid := @FC_OBJ_sn2nid;
      {$else}
      {$if not defined(OBJ_sn2nid_allownil)}
      OBJ_sn2nid := @ERR_OBJ_sn2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_sn2nid_removed)}
    if OBJ_sn2nid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_sn2nid)}
      OBJ_sn2nid := @_OBJ_sn2nid;
      {$else}
      {$if not defined(OBJ_sn2nid_allownil)}
      OBJ_sn2nid := @ERR_OBJ_sn2nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_sn2nid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_sn2nid := @ERR_OBJ_sn2nid;
      AFailed.Add('OBJ_sn2nid');
    end;
    {$ifend}
  end;


  OBJ_cmp := LoadLibFunction(ADllHandle, OBJ_cmp_procname);
  FuncLoaded := assigned(OBJ_cmp);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_cmp_introduced)}
    if LibVersion < OBJ_cmp_introduced then
    begin
      {$if declared(FC_OBJ_cmp)}
      OBJ_cmp := @FC_OBJ_cmp;
      {$else}
      {$if not defined(OBJ_cmp_allownil)}
      OBJ_cmp := @ERR_OBJ_cmp;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_cmp_removed)}
    if OBJ_cmp_removed <= LibVersion then
    begin
      {$if declared(_OBJ_cmp)}
      OBJ_cmp := @_OBJ_cmp;
      {$else}
      {$if not defined(OBJ_cmp_allownil)}
      OBJ_cmp := @ERR_OBJ_cmp;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_cmp_allownil)}
    if not FuncLoaded then
    begin
      OBJ_cmp := @ERR_OBJ_cmp;
      AFailed.Add('OBJ_cmp');
    end;
    {$ifend}
  end;


  OBJ_new_nid := LoadLibFunction(ADllHandle, OBJ_new_nid_procname);
  FuncLoaded := assigned(OBJ_new_nid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_new_nid_introduced)}
    if LibVersion < OBJ_new_nid_introduced then
    begin
      {$if declared(FC_OBJ_new_nid)}
      OBJ_new_nid := @FC_OBJ_new_nid;
      {$else}
      {$if not defined(OBJ_new_nid_allownil)}
      OBJ_new_nid := @ERR_OBJ_new_nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_new_nid_removed)}
    if OBJ_new_nid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_new_nid)}
      OBJ_new_nid := @_OBJ_new_nid;
      {$else}
      {$if not defined(OBJ_new_nid_allownil)}
      OBJ_new_nid := @ERR_OBJ_new_nid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_new_nid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_new_nid := @ERR_OBJ_new_nid;
      AFailed.Add('OBJ_new_nid');
    end;
    {$ifend}
  end;


  OBJ_add_object := LoadLibFunction(ADllHandle, OBJ_add_object_procname);
  FuncLoaded := assigned(OBJ_add_object);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_add_object_introduced)}
    if LibVersion < OBJ_add_object_introduced then
    begin
      {$if declared(FC_OBJ_add_object)}
      OBJ_add_object := @FC_OBJ_add_object;
      {$else}
      {$if not defined(OBJ_add_object_allownil)}
      OBJ_add_object := @ERR_OBJ_add_object;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_add_object_removed)}
    if OBJ_add_object_removed <= LibVersion then
    begin
      {$if declared(_OBJ_add_object)}
      OBJ_add_object := @_OBJ_add_object;
      {$else}
      {$if not defined(OBJ_add_object_allownil)}
      OBJ_add_object := @ERR_OBJ_add_object;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_add_object_allownil)}
    if not FuncLoaded then
    begin
      OBJ_add_object := @ERR_OBJ_add_object;
      AFailed.Add('OBJ_add_object');
    end;
    {$ifend}
  end;


  OBJ_create := LoadLibFunction(ADllHandle, OBJ_create_procname);
  FuncLoaded := assigned(OBJ_create);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_create_introduced)}
    if LibVersion < OBJ_create_introduced then
    begin
      {$if declared(FC_OBJ_create)}
      OBJ_create := @FC_OBJ_create;
      {$else}
      {$if not defined(OBJ_create_allownil)}
      OBJ_create := @ERR_OBJ_create;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_create_removed)}
    if OBJ_create_removed <= LibVersion then
    begin
      {$if declared(_OBJ_create)}
      OBJ_create := @_OBJ_create;
      {$else}
      {$if not defined(OBJ_create_allownil)}
      OBJ_create := @ERR_OBJ_create;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_create_allownil)}
    if not FuncLoaded then
    begin
      OBJ_create := @ERR_OBJ_create;
      AFailed.Add('OBJ_create');
    end;
    {$ifend}
  end;


  OBJ_create_objects := LoadLibFunction(ADllHandle, OBJ_create_objects_procname);
  FuncLoaded := assigned(OBJ_create_objects);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_create_objects_introduced)}
    if LibVersion < OBJ_create_objects_introduced then
    begin
      {$if declared(FC_OBJ_create_objects)}
      OBJ_create_objects := @FC_OBJ_create_objects;
      {$else}
      {$if not defined(OBJ_create_objects_allownil)}
      OBJ_create_objects := @ERR_OBJ_create_objects;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_create_objects_removed)}
    if OBJ_create_objects_removed <= LibVersion then
    begin
      {$if declared(_OBJ_create_objects)}
      OBJ_create_objects := @_OBJ_create_objects;
      {$else}
      {$if not defined(OBJ_create_objects_allownil)}
      OBJ_create_objects := @ERR_OBJ_create_objects;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_create_objects_allownil)}
    if not FuncLoaded then
    begin
      OBJ_create_objects := @ERR_OBJ_create_objects;
      AFailed.Add('OBJ_create_objects');
    end;
    {$ifend}
  end;


  OBJ_length := LoadLibFunction(ADllHandle, OBJ_length_procname);
  FuncLoaded := assigned(OBJ_length);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_length_introduced)}
    if LibVersion < OBJ_length_introduced then
    begin
      {$if declared(FC_OBJ_length)}
      OBJ_length := @FC_OBJ_length;
      {$else}
      {$if not defined(OBJ_length_allownil)}
      OBJ_length := @ERR_OBJ_length;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_length_removed)}
    if OBJ_length_removed <= LibVersion then
    begin
      {$if declared(_OBJ_length)}
      OBJ_length := @_OBJ_length;
      {$else}
      {$if not defined(OBJ_length_allownil)}
      OBJ_length := @ERR_OBJ_length;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_length_allownil)}
    if not FuncLoaded then
    begin
      OBJ_length := @ERR_OBJ_length;
      AFailed.Add('OBJ_length');
    end;
    {$ifend}
  end;

 {introduced 1.1.0}
  OBJ_get0_data := LoadLibFunction(ADllHandle, OBJ_get0_data_procname);
  FuncLoaded := assigned(OBJ_get0_data);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_get0_data_introduced)}
    if LibVersion < OBJ_get0_data_introduced then
    begin
      {$if declared(FC_OBJ_get0_data)}
      OBJ_get0_data := @FC_OBJ_get0_data;
      {$else}
      {$if not defined(OBJ_get0_data_allownil)}
      OBJ_get0_data := @ERR_OBJ_get0_data;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_get0_data_removed)}
    if OBJ_get0_data_removed <= LibVersion then
    begin
      {$if declared(_OBJ_get0_data)}
      OBJ_get0_data := @_OBJ_get0_data;
      {$else}
      {$if not defined(OBJ_get0_data_allownil)}
      OBJ_get0_data := @ERR_OBJ_get0_data;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_get0_data_allownil)}
    if not FuncLoaded then
    begin
      OBJ_get0_data := @ERR_OBJ_get0_data;
      AFailed.Add('OBJ_get0_data');
    end;
    {$ifend}
  end;

 {introduced 1.1.0}
  OBJ_find_sigid_algs := LoadLibFunction(ADllHandle, OBJ_find_sigid_algs_procname);
  FuncLoaded := assigned(OBJ_find_sigid_algs);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_find_sigid_algs_introduced)}
    if LibVersion < OBJ_find_sigid_algs_introduced then
    begin
      {$if declared(FC_OBJ_find_sigid_algs)}
      OBJ_find_sigid_algs := @FC_OBJ_find_sigid_algs;
      {$else}
      {$if not defined(OBJ_find_sigid_algs_allownil)}
      OBJ_find_sigid_algs := @ERR_OBJ_find_sigid_algs;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_find_sigid_algs_removed)}
    if OBJ_find_sigid_algs_removed <= LibVersion then
    begin
      {$if declared(_OBJ_find_sigid_algs)}
      OBJ_find_sigid_algs := @_OBJ_find_sigid_algs;
      {$else}
      {$if not defined(OBJ_find_sigid_algs_allownil)}
      OBJ_find_sigid_algs := @ERR_OBJ_find_sigid_algs;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_find_sigid_algs_allownil)}
    if not FuncLoaded then
    begin
      OBJ_find_sigid_algs := @ERR_OBJ_find_sigid_algs;
      AFailed.Add('OBJ_find_sigid_algs');
    end;
    {$ifend}
  end;


  OBJ_find_sigid_by_algs := LoadLibFunction(ADllHandle, OBJ_find_sigid_by_algs_procname);
  FuncLoaded := assigned(OBJ_find_sigid_by_algs);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_find_sigid_by_algs_introduced)}
    if LibVersion < OBJ_find_sigid_by_algs_introduced then
    begin
      {$if declared(FC_OBJ_find_sigid_by_algs)}
      OBJ_find_sigid_by_algs := @FC_OBJ_find_sigid_by_algs;
      {$else}
      {$if not defined(OBJ_find_sigid_by_algs_allownil)}
      OBJ_find_sigid_by_algs := @ERR_OBJ_find_sigid_by_algs;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_find_sigid_by_algs_removed)}
    if OBJ_find_sigid_by_algs_removed <= LibVersion then
    begin
      {$if declared(_OBJ_find_sigid_by_algs)}
      OBJ_find_sigid_by_algs := @_OBJ_find_sigid_by_algs;
      {$else}
      {$if not defined(OBJ_find_sigid_by_algs_allownil)}
      OBJ_find_sigid_by_algs := @ERR_OBJ_find_sigid_by_algs;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_find_sigid_by_algs_allownil)}
    if not FuncLoaded then
    begin
      OBJ_find_sigid_by_algs := @ERR_OBJ_find_sigid_by_algs;
      AFailed.Add('OBJ_find_sigid_by_algs');
    end;
    {$ifend}
  end;


  OBJ_add_sigid := LoadLibFunction(ADllHandle, OBJ_add_sigid_procname);
  FuncLoaded := assigned(OBJ_add_sigid);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_add_sigid_introduced)}
    if LibVersion < OBJ_add_sigid_introduced then
    begin
      {$if declared(FC_OBJ_add_sigid)}
      OBJ_add_sigid := @FC_OBJ_add_sigid;
      {$else}
      {$if not defined(OBJ_add_sigid_allownil)}
      OBJ_add_sigid := @ERR_OBJ_add_sigid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_add_sigid_removed)}
    if OBJ_add_sigid_removed <= LibVersion then
    begin
      {$if declared(_OBJ_add_sigid)}
      OBJ_add_sigid := @_OBJ_add_sigid;
      {$else}
      {$if not defined(OBJ_add_sigid_allownil)}
      OBJ_add_sigid := @ERR_OBJ_add_sigid;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_add_sigid_allownil)}
    if not FuncLoaded then
    begin
      OBJ_add_sigid := @ERR_OBJ_add_sigid;
      AFailed.Add('OBJ_add_sigid');
    end;
    {$ifend}
  end;


  OBJ_sigid_free := LoadLibFunction(ADllHandle, OBJ_sigid_free_procname);
  FuncLoaded := assigned(OBJ_sigid_free);
  if not FuncLoaded then
  begin
    {$if declared(OBJ_sigid_free_introduced)}
    if LibVersion < OBJ_sigid_free_introduced then
    begin
      {$if declared(FC_OBJ_sigid_free)}
      OBJ_sigid_free := @FC_OBJ_sigid_free;
      {$else}
      {$if not defined(OBJ_sigid_free_allownil)}
      OBJ_sigid_free := @ERR_OBJ_sigid_free;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if declared(OBJ_sigid_free_removed)}
    if OBJ_sigid_free_removed <= LibVersion then
    begin
      {$if declared(_OBJ_sigid_free)}
      OBJ_sigid_free := @_OBJ_sigid_free;
      {$else}
      {$if not defined(OBJ_sigid_free_allownil)}
      OBJ_sigid_free := @ERR_OBJ_sigid_free;
      {$ifend}
      {$ifend}
      FuncLoaded := true;
    end;
    {$ifend}
    {$if not defined(OBJ_sigid_free_allownil)}
    if not FuncLoaded then
    begin
      OBJ_sigid_free := @ERR_OBJ_sigid_free;
      AFailed.Add('OBJ_sigid_free');
    end;
    {$ifend}
  end;


end;

procedure Unload;
begin
  OBJ_NAME_init := nil;
  OBJ_NAME_get := nil;
  OBJ_NAME_add := nil;
  OBJ_NAME_remove := nil;
  OBJ_NAME_cleanup := nil;
  OBJ_dup := nil;
  OBJ_nid2obj := nil;
  OBJ_nid2ln := nil;
  OBJ_nid2sn := nil;
  OBJ_obj2nid := nil;
  OBJ_txt2obj := nil;
  OBJ_obj2txt := nil;
  OBJ_txt2nid := nil;
  OBJ_ln2nid := nil;
  OBJ_sn2nid := nil;
  OBJ_cmp := nil;
  OBJ_new_nid := nil;
  OBJ_add_object := nil;
  OBJ_create := nil;
  OBJ_create_objects := nil;
  OBJ_length := nil; {introduced 1.1.0}
  OBJ_get0_data := nil; {introduced 1.1.0}
  OBJ_find_sigid_algs := nil;
  OBJ_find_sigid_by_algs := nil;
  OBJ_add_sigid := nil;
  OBJ_sigid_free := nil;
end;
{$ELSE}
{$ENDIF}

{$IFNDEF USE_EXTERNAL_LIBRARY}
initialization
  Register_SSLLoader(@Load,'LibCrypto');
  Register_SSLUnloader(@Unload);
{$ENDIF}
end.
