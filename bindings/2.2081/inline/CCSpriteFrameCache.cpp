#include <Geode/Geode.hpp>


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

void cocos2d::CCSpriteFrameCache::removeSpriteFrameByName(char const* name) {
    if (!name) return;
    if (auto key = static_cast<CCString*>(m_pSpriteFramesAliases->objectForKey(name))) {
        m_pSpriteFrames->removeObjectForKey(key->getCString());
        m_pSpriteFramesAliases->removeObjectForKey(name);
    }
    else m_pSpriteFrames->removeObjectForKey(name);
    m_pLoadedFileNames->clear();
}
#endif

