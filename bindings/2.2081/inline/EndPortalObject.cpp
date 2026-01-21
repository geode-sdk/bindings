#include <Geode/Geode.hpp>

EndPortalObject::EndPortalObject() {
    m_gradientBar = nullptr;
    m_flippedX = false;
    m_startPosHeightRelated = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EndPortalObject* EndPortalObject::create() {
    auto ret = new EndPortalObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void EndPortalObject::triggerObject(GJBaseGameLayer* layer) {
    auto playLayer = GameManager::sharedState()->m_playLayer;
    if (!playLayer->m_player1->m_isDead) {
        playLayer->m_levelEndAnimationStarted = true;
        playLayer->m_uiLayer->disableMenu();
        playLayer->playEndAnimationToPos(this->getStartPos());
    }
}

void EndPortalObject::updateColors(cocos2d::ccColor3B color) {
    if (m_particle) {
        m_particle->setStartColor({ color.r / 255.f, color.g / 255.f, color.b / 255.f, 1.f });
        m_particle->setEndColor({ color.r / 255.f, color.g / 255.f, color.b / 255.f, 1.f });
    }
    m_gradientBar->setColor(color);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

