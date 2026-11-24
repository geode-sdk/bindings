#include <Geode/cocos/kazmath/include/kazmath/kazmath.h>
#include <Geode/cocos/kazmath/include/kazmath/GL/matrix.h>

#ifdef GEODE_IS_IOS
extern "C" void kmGLScalef(float x, float y, float z) {
    kmMat4 mat;
    kmMat4Scaling(&mat, x, y, z);
    kmGLMultMatrix(&mat);
}

extern "C" kmMat4* const kmMat4Scaling(kmMat4* mat, float const x, float const y, float const z) {
    mat->mat = {};
    mat->mat[0] = x;
    mat->mat[5] = y;
    mat->mat[10] = z;
    mat->mat[15] = 1.0f;
    return mat;
}
#endif