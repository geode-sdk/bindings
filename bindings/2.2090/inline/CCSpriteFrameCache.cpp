#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCSpriteFrameCache::addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) {
    m_pSpriteFrames->setObject(pobFrame, pszFrameName);
}

void cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(char const* plist, char const* textureFilename) {
    if (auto texture = CCTextureCache::sharedTextureCache()->addImage(textureFilename, false)) {
        this->addSpriteFramesWithFile(plist, texture);
    }
}

void cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) {
    this->addSpriteFramesWithDictionary(CCContentManager::sharedManager()->addDict(plist, false), texture);
}

void cocos2d::CCSpriteFrameCache::removeSpriteFrames() {
    m_pSpriteFrames->removeAllObjects();
    m_pSpriteFramesAliases->removeAllObjects();
    m_pLoadedFileNames->clear();
}

void cocos2d::CCSpriteFrameCache::removeUnusedSpriteFrames() {
    auto removed = false;
    CCDictElement* element = nullptr;
    CCDictElement* temp = nullptr;
    HASH_ITER(hh, m_pSpriteFrames->m_pElements, element, temp) {
        auto spriteFrame = static_cast<CCSpriteFrame*>(element->getObject());
        if (spriteFrame->retainCount() == 1) {
            m_pSpriteFrames->removeObjectForElememt(element);
            removed = true;
        }
    }

    if (removed) m_pLoadedFileNames->clear();
}

void cocos2d::CCSpriteFrameCache::removeSpriteFrameByName(char const* name) {
    if (!name) return;
    if (auto key = static_cast<CCString*>(m_pSpriteFramesAliases->objectForKey(name))) {
        m_pSpriteFrames->removeObjectForKey(key->getCString());
        m_pSpriteFramesAliases->removeObjectForKey(name);
    }
    else m_pSpriteFrames->removeObjectForKey(name);
    m_pLoadedFileNames->clear();
}

void cocos2d::CCSpriteFrameCache::removeSpriteFramesFromTexture(cocos2d::CCTexture2D* texture) {
    auto keysToRemove = CCArray::create();

    CCDictElement* element = nullptr;
    CCDictElement* temp = nullptr;
    HASH_ITER(hh, m_pSpriteFrames->m_pElements, element, temp) {
        CCSpriteFrame* frame = (CCSpriteFrame*)m_pSpriteFrames->objectForKey(element->getStrKey());
        if (frame && frame->getTexture() == texture) {
            keysToRemove->addObject(CCString::create(element->getStrKey()));
        }
    }

    m_pSpriteFrames->removeObjectsForKeys(keysToRemove);
}
#endif

