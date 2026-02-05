#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CreateParticlePopup* CreateParticlePopup::create(gd::string str) {
    return CreateParticlePopup::create(nullptr, nullptr, str);
}

cocos2d::CCNode* CreateParticlePopup::getPage(int page) {
    return static_cast<cocos2d::CCNode*>(m_pageNodes->objectAtIndex(page - 1));
}

CCMenuItemSpriteExtra* CreateParticlePopup::getPageButton(int page) {
    return static_cast<CCMenuItemSpriteExtra*>(m_pageButtons->objectAtIndex(page - 1));
}

cocos2d::CCArray* CreateParticlePopup::getPageContainer(int page) {
    return static_cast<cocos2d::CCArray*>(m_pageObjectArrays->objectAtIndex(page - 1));
}

cocos2d::CCDictionary* CreateParticlePopup::getPageInputNodes(int page) {
    return static_cast<cocos2d::CCDictionary*>(m_inputDicts->objectAtIndex(page));
}

cocos2d::CCMenu* CreateParticlePopup::getPageMenu(int page) {
    return m_buttonMenu;
}

cocos2d::CCDictionary* CreateParticlePopup::getPageSliders(int page) {
    return static_cast<cocos2d::CCDictionary*>(m_sliderDicts->objectAtIndex(page));
}
#endif

#if defined(GEODE_IS_WINDOWS)
CreateParticlePopup* CreateParticlePopup::create(ParticleGameObject* object, cocos2d::CCArray* objects) {
    return CreateParticlePopup::create(object, objects, "");
}

void CreateParticlePopup::updateColorSprite(int tag) {
    if (tag == 1) {
        auto color = m_particle->getStartColor();
        m_startColorSprite->setColor({ (uint8_t)(color.r * 255.f), (uint8_t)(color.g * 255.f), (uint8_t)(color.b * 255.f) });
    }
    else if (tag == 2) {
        auto color = m_particle->getEndColor();
        m_endColorSprite->setColor({ (uint8_t)(color.r * 255.f), (uint8_t)(color.g * 255.f), (uint8_t)(color.b * 255.f) });
    }
}
#endif

#if defined(GEODE_IS_IOS)
bool CreateParticlePopup::particleValueIsInt(gjParticleValue type) {
    switch (type) {
        case gjParticleValue::MaxParticles: case gjParticleValue::Emission:
        case gjParticleValue::Angle: case gjParticleValue::AngleVar:
        case gjParticleValue::Speed: case gjParticleValue::SpeedVar:
        case gjParticleValue::PosVarX: case gjParticleValue::PosVarY:
        case gjParticleValue::GravityX: case gjParticleValue::GravityY:
        case gjParticleValue::AccelRad: case gjParticleValue::AccelRadVar:
        case gjParticleValue::AccelTan: case gjParticleValue::AccelTanVar:
        case gjParticleValue::StartSize: case gjParticleValue::StartSizeVar:
        case gjParticleValue::EndSize: case gjParticleValue::EndSizeVar:
        case gjParticleValue::StartSpin: case gjParticleValue::StartSpinVar:
        case gjParticleValue::EndSpin: case gjParticleValue::EndSpinVar:
        case gjParticleValue::StartRad: case gjParticleValue::StartRadVar:
        case gjParticleValue::EndRad: case gjParticleValue::EndRadVar:
        case gjParticleValue::RotSec: case gjParticleValue::RotSecVar:
            return true;
        default:
            return false;
    }
}
#endif

