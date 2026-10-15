#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
const char* cocos2d::CCTextureCache::description() {
    return CCString::createWithFormat("<CCTextureCache | Number of textures = %u>", m_pTextures->count())->getCString();
}

void cocos2d::CCTextureCache::dumpCachedTextureInfo() {
    unsigned int count = 0;
    unsigned int totalBytes = 0;
    CCDictElement* element = nullptr;
    CCDictElement* temp = nullptr;
    HASH_ITER(hh, m_pTextures->m_pElements, element, temp) {
        auto tex = static_cast<CCTexture2D*>(element->getObject());
        totalBytes += tex->getPixelsWide() * tex->getPixelsHigh() * (tex->bitsPerPixelForFormat() / 8);
        count++;
    }
}

bool cocos2d::CCTextureCache::reloadTexture(const char* fileName) {
    std::string fullpath = CCFileUtils::sharedFileUtils()->fullPathForFilename(fileName, false);
    if (fullpath.size() == 0) return false;

    auto texture = static_cast<CCTexture2D*>(m_pTextures->objectForKey(fullpath));

    if (!texture) {
        texture = this->addImage(fullpath.c_str(), false);
        return texture != nullptr;
    }
    else {
        auto image = new CCImage();
        if (image->initWithImageFile(fullpath.c_str())) {
            return texture->initWithImage(image);
        }
        return false;
    }
}

void cocos2d::CCTextureCache::removeAllTextures() {
    m_pTextures->removeAllObjects();
}

void cocos2d::CCTextureCache::removeUnusedTextures() {
    if (m_pTextures->count()) {
        CCDictElement* element = nullptr;
        CCDictElement* temp = nullptr;
        std::list<CCDictElement*> elementToRemove;
        HASH_ITER(hh, m_pTextures->m_pElements, element, temp) {
            if (element->getObject()->retainCount() == 1) {
                elementToRemove.push_back(element);
            }
        }

        for (auto element : elementToRemove) {
            m_pTextures->removeObjectForElememt(element);
        }
    }
}

void cocos2d::CCTextureCache::removeTexture(CCTexture2D* texture) {
    if (texture) m_pTextures->removeObjectsForKeys(m_pTextures->allKeysForObject(texture));
}

void cocos2d::CCTextureCache::reloadAllTextures() {}

cocos2d::CCDictionary* cocos2d::CCTextureCache::snapshotTextures() {
    auto ret = new CCDictionary();
    CCDictElement* element = nullptr;
    CCDictElement* temp = nullptr;
    HASH_ITER(hh, m_pTextures->m_pElements, element, temp) {
        ret->setObject(element->getObject(), element->getStrKey());
    }
    ret->autorelease();
    return ret;
}
#endif

