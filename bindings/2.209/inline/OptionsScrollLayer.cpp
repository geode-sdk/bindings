#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCArray* OptionsScrollLayer::getRelevantObjects(cocos2d::CCArray* objects) {
    auto relevantObjects = cocos2d::CCArray::create();
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(objects)) {
        if (object->m_count > m_minCount || object->m_enabled) {
            relevantObjects->addObject(object);
        }
    }
    return relevantObjects;
}

bool OptionsScrollLayer::init(cocos2d::CCArray* objects, bool recreate, int minimum) {
    if (!FLAlertLayer::init(150)) return false;
    m_noElasticity = true;
    m_recreateList = recreate;
    m_minCount = minimum;
    if (objects) {
        m_optionObjects = objects;
        objects->retain();
    }
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    m_buttonMenu = cocos2d::CCMenu::create();
    m_mainLayer->addChild(m_buttonMenu, 10);
    m_joystickConnected = -1;
    auto closeButton = CCMenuItemSpriteExtra::create(cocos2d::CCSprite::createWithSpriteFrameName("GJ_closeBtn_001.png"), this, menu_selector(OptionsScrollLayer::onClose));
    closeButton->setSizeMult(1.6f);
    closeButton->setPosition(m_buttonMenu->convertToNodeSpace(winSize * .5f + cocos2d::CCPoint { -210.f, 135.f }));
    this->setupList(m_optionObjects);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

