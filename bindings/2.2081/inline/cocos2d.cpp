#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSize cocos2d::__CCSizeApplyAffineTransform(cocos2d::CCSize const& p0, cocos2d::CCAffineTransform const& p1) {
    return { p1.a * p0.width + p1.c * p0.height, p1.b * p0.width + p1.d * p0.height };
}

bool cocos2d::CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const& p0, cocos2d::CCAffineTransform const& p1) {
    return p0.a == p1.a && p0.b == p1.b && p0.c == p1.c && p0.d == p1.d && p0.tx == p1.tx && p0.ty == p1.ty;
}

cocos2d::CCAffineTransform cocos2d::CCAffineTransformScale(cocos2d::CCAffineTransform const& p0, float p1, float p2) {
    return CCAffineTransformMake(p0.a * p1, p0.b * p1, p0.c * p2, p0.d * p2, p0.tx, p0.ty);
}

void cocos2d::ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) {
	CCPoint vertices[] = {
		origin,
		CCPoint{destination.x, origin.y},
		destination,
		CCPoint{origin.x, destination.y}
	};

	ccDrawSolidPoly(vertices, 4, color);
}

void cocos2d::ccGLBlendResetToCache() {
    glBlendEquation(GL_FUNC_ADD);
    auto sfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x84bfdc);
    auto dfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x84bfe0);
    if (sfactor == GL_ONE && dfactor == GL_ZERO) {
        glDisable(GL_BLEND);
    }
    else {
        glEnable(GL_BLEND);
        glBlendFunc(sfactor, dfactor);
    }
}

void cocos2d::ccGLDeleteTextureN(unsigned int p0, unsigned int p1) {
    auto currentTexture = reinterpret_cast<GLuint*>(geode::base::get() + 0x84bf9c + p0 * 4);
    if (*currentTexture == p1) *currentTexture = -1;
    glDeleteTextures(1, &p1);
}

cocos2d::CCPoint cocos2d::ccpFromSize(cocos2d::CCSize const& size) {
    return size;
}

float cocos2d::ccpToAngle(cocos2d::CCPoint const& point) {
    return point.getAngle();
}
#endif

