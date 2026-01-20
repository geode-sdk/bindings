#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
float CCScrollLayerExt::getMinY() {
    return this->getContentSize().height - m_contentLayer->getContentSize().height - m_scrollLimitTop;
}

void CCScrollLayerExt::setContentLayerSize(cocos2d::CCSize size) {
    m_contentLayer->setContentSize(size);
}
#endif

#if defined(GEODE_IS_WINDOWS)
float CCScrollLayerExt::getMaxY() {
    return m_scrollLimitBottom;
}

void CCScrollLayerExt::scrollLayer(float offset) {
    float y = m_contentLayer->getPositionY() + offset;
    float minY = getMinY();
    float maxY = getMaxY();
    m_contentLayer->setPositionY(y < minY ? minY : y > maxY ? maxY : y);
}

void CCScrollLayerExt::setContentOffset(cocos2d::CCPoint offset, bool animate) {
    if (animate) {
        m_contentLayer->runAction(cocos2d::CCSequence::create(
            cocos2d::CCEaseOut::create(cocos2d::CCMoveTo::create(.3f, offset), 3.f),
            cocos2d::CCCallFunc::create(this, callfunc_selector(CCScrollLayerExt::constraintContent)),
            nullptr
        ));
    }
    else {
        m_contentLayer->setPosition(offset);
        this->constraintContent();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

