#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ColorChannelSprite::updateValues(ColorAction* action) {
    if (!action) {
        this->setColor(cocos2d::ccWHITE);
        this->updateCopyLabel(0, false);
        this->updateOpacity(1.f);
        this->updateBlending(false);
        return;
    }
    this->updateCopyLabel(action->m_copyID, action->m_copyColorLoop);
    this->updateOpacity(action->m_fromOpacity);
    this->updateBlending(action->m_blending);
    if (action->m_copyID != 0 && !action->m_copyOpacity) {
        this->setColor(cocos2d::ccGRAY);
    }
    else {
        this->setColor(action->m_fromColor);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

