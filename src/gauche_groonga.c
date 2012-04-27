/*
 * gauche_groonga.c
 */

#include "gauche_groonga.h"

/*
 * The following function is a dummy one; replace it for
 * your C function definitions.
 */

ScmObj test_gauche_groonga(void)
{
    return SCM_MAKE_STR("gauche_groonga is working");
}

/*
 * Module initialization function.
 */
extern void Scm_Init_gauche_groongalib(ScmModule*);

void Scm_Init_gauche_groonga(void)
{
    ScmModule *mod;

    /* Register this DSO to Gauche */
    SCM_INIT_EXTENSION(gauche_groonga);

    /* Create the module if it doesn't exist yet. */
    mod = SCM_MODULE(SCM_FIND_MODULE("gauche_groonga", TRUE));

    /* Register stub-generated procedures */
    Scm_Init_gauche_groongalib(mod);
}
