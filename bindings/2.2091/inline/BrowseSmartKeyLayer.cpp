#include <Geode/mapping/CCNode.hpp>
#include <Geode/mapping/CCObject.hpp>
#include <Geode/binding/BrowseSmartKeyLayer.hpp>
#include <Geode/binding/CCMenuItemSpriteExtra.hpp>
#include <Geode/binding/GJSmartTemplate.hpp>
#include <Geode/binding/TextAlertPopup.hpp>
#include <Geode/binding/GJSmartPrefab.hpp>

BrowseSmartKeyLayer::BrowseSmartKeyLayer() {
    m_templatePage = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
BrowseSmartKeyLayer* BrowseSmartKeyLayer::create(GJSmartTemplate* smartTemplate, std::string prefabKey) {
    auto ret = new BrowseSmartKeyLayer();
    if (ret->init(smartTemplate, prefabKey)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void BrowseSmartKeyLayer::createTemplateObjects() {
    auto blocks = this->getAllSelectedBlocks();
    if (blocks->count() == 0) return;
    for (int i = 0; i < blocks->count(); i++) {
        this->createPrefab(m_prefabKey, blocks->objectAtIndex(i)->getTag());
    }
    this->addChild(TextAlertPopup::create("Added to editor", .5f, .6f, 150, ""), 100);
}

#endif

#if defined(GEODE_IS_IOS)
#endif

