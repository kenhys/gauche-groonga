/*
 * gauche_groonga.h
 */

/* Prologue */
#ifndef GAUCHE_GAUCHE_GROONGA_H
#define GAUCHE_GAUCHE_GROONGA_H

#include <gauche.h>
#include <gauche/extend.h>
#include <gauche/class.h>

#include "groonga.h"

SCM_DECL_BEGIN

/*
 * The following entry is a dummy one.
 * Replace it for your declarations.
 */

extern ScmObj test_gauche_groonga(void);

/* grn_obj */
typedef struct ScmGrnObjRec {
SCM_HEADER;
grn_obj h;
} ScmGrnObj;

SCM_CLASS_DECL(Scm_GrnObjClass);
#define SCM_CLASS_GRN_OBJ (&Scm_GrnObjClass)
#define SCM_GRN_OBJ(obj) ((ScmGrnObj*)(obj))
#define SCM_GRN_OBJ_P(obj) (SCM_XTYPEP(obj, SCM_CLASS_GRN_OBJ))

/* grn_ctx */
typedef struct ScmGrnCtxRec {
SCM_HEADER;
grn_ctx h;
} ScmGrnCtx;

SCM_CLASS_DECL(Scm_GrnCtxClass);
#define SCM_CLASS_GRN_CTX (&Scm_GrnCtxClass)
#define SCM_GRN_CTX(obj) ((ScmGrnCtx*)(obj))
#define SCM_GRN_CTX_P(obj) (SCM_XTYPEP(obj, SCM_CLASS_GRN_CTX))

/* Epilogue */
SCM_DECL_END

#endif  /* GAUCHE_GAUCHE_GROONGA_H */
