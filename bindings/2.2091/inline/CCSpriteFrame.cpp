#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSpriteFrame* cocos2d::CCSpriteFrame::create(char const* filename, cocos2d::CCRect const& rect) {
	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
	return create(filename, rect, false, CCPointZero, rectInPixels.size);
}

cocos2d::CCSpriteFrame* cocos2d::CCSpriteFrame::create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) {
    auto ret = new CCSpriteFrame();
    ret->initWithTextureFilename(filename, rect, rotated, offset, size);
    ret->autorelease();
    return ret;
}

cocos2d::CCSpriteFrame* cocos2d::CCSpriteFrame::createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) {
    CCSpriteFrame *pSpriteFrame = new CCSpriteFrame();;
    pSpriteFrame->initWithTexture(pobTexture, rect);
    pSpriteFrame->autorelease();

    return pSpriteFrame;
}

bool cocos2d::CCSpriteFrame::initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) {
    CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS(rect);
    return initWithTexture(pobTexture, rectInPixels, false, CCPointZero, rectInPixels.size);
}

bool cocos2d::CCSpriteFrame::initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) {
    CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
	return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
}

void cocos2d::CCSpriteFrame::setOffset(cocos2d::CCPoint const& p0) {
    m_obOffset = p0;
    m_obOffsetInPixels = CC_POINT_POINTS_TO_PIXELS(m_obOffset);
}

void cocos2d::CCSpriteFrame::setOffsetInPixels(cocos2d::CCPoint const& p0) {
    m_obOffsetInPixels = p0;
    m_obOffset = CC_POINT_PIXELS_TO_POINTS(m_obOffsetInPixels);
}

void cocos2d::CCSpriteFrame::setRect(cocos2d::CCRect const& p0) {
    m_obRect = p0;
    m_obRectInPixels = CC_RECT_POINTS_TO_PIXELS(m_obRect);
}

void cocos2d::CCSpriteFrame::setRectInPixels(cocos2d::CCRect const& p0) {
    m_obRectInPixels = p0;
    m_obRect = CC_RECT_PIXELS_TO_POINTS(p0);
}
#endif

