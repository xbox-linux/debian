////////////////////// compile-time options ////////////////////////////////

// selects between the supported video modes, see boot.h for enum listing those available
#define VIDEO_PREFERRED_MODE VIDEO_MODE_640x480

#undef LOADHDD
//#define LOADHDD_CFGFALLBACK
#undef LOADHDD_CFGFALLBACK
#define LOADXBE

/*
#define LOADXBE
#undef LOADHDD
*/

// Do not change this
#ifdef LOADXBE
#define LOADHDD_CFGFALLBACK
#endif 
