#include <Geode/binding/CCScrollLayerExt.hpp>
#include <Geode/mapping/CCNode.hpp>
#include <Geode/mapping/CCSequence.hpp>
#include <Geode/mapping/CCEaseOut.hpp>
#include <Geode/mapping/CCMoveTo.hpp>
#include <Geode/mapping/CCCallFunc.hpp>
#include <Geode/binding/GameManager.hpp>


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
    m_scrollDecay += offset;// * GameManager::get()->m_; // this member isnt in the bindings yet

    if (!m_scrolling) {
        schedule(schedule_selector(CCScrollLayerExt::updateScrollDecay));
        m_scrolling = true;
    }
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

