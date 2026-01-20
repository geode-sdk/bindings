#include <Geode/Geode.hpp>

BrowseSmartKeyLayer::BrowseSmartKeyLayer() {
    m_templatePage = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
BrowseSmartKeyLayer* BrowseSmartKeyLayer::create(GJSmartTemplate* smartTemplate, gd::string prefabKey) {
    auto ret = new BrowseSmartKeyLayer();
    if (ret->init(smartTemplate, prefabKey)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void BrowseSmartKeyLayer::addChanceToSelected(int chance, bool zero) {
    auto blocks = this->getAllSelectedBlocks();
    for (int i = 0; i < blocks->count(); i++) {
        if (auto prefab = m_template->getPrefabWithID(m_prefabKey, blocks->objectAtIndex(i)->getTag())) {
            if (zero) prefab->m_prefabChance = 0;
            else prefab->m_prefabChance += chance;
        }
    }
    this->updateChanceValues();
}

void BrowseSmartKeyLayer::createTemplateObjects() {
    auto blocks = this->getAllSelectedBlocks();
    if (blocks->count() == 0) return;
    for (int i = 0; i < blocks->count(); i++) {
        this->createPrefab(m_prefabKey, blocks->objectAtIndex(i)->getTag());
    }
    this->addChild(TextAlertPopup::create("Added to editor", .5f, .6f, 150, ""), 100);
}

void BrowseSmartKeyLayer::deletedSelectedItems() {
    for (int i = 0; i < m_pages->count(); i++) {
        auto page = static_cast<cocos2d::CCArray*>(m_pages->objectAtIndex(i));
        for (int j = 0; j < page->count();) {
            auto button = static_cast<CCMenuItemSpriteExtra*>(page->objectAtIndex(j));
            auto block = static_cast<GJSmartBlockPreview*>(button->getNormalImage());
            if (block->m_selected) {
                m_template->removePrefab(m_prefabKey, block->getTag());
                page->removeObjectAtIndex(j);
            }
            else j++;
        }
    }
    this->updateChanceValues();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

