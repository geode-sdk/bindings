#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCConfiguration::CCConfiguration() {
    m_nMaxTextureSize = 0;
    m_nMaxModelviewStackDepth = 0;
    m_bSupportsPVRTC = false;
    m_bSupportsNPOT = false;
    m_bSupportsBGRA8888 = false;
    m_bSupportsDiscardFramebuffer = false;
    m_bSupportsShareableVAO = false;
    m_nMaxSamplesAllowed = 0;
    m_nMaxTextureUnits = 0;
    m_pGlExtensions = nullptr;
    m_pValueDict = nullptr;
}

int cocos2d::CCConfiguration::getMaxModelviewStackDepth() const {
    return m_nMaxModelviewStackDepth;
}

int cocos2d::CCConfiguration::getMaxTextureUnits() const {
    return m_nMaxTextureUnits;
}

cocos2d::CCObject* cocos2d::CCConfiguration::getObject(const char* key) const {
    return m_pValueDict->objectForKey(key);
}

void cocos2d::CCConfiguration::loadConfigFile(const char* filename) {
    auto dict = CCDictionary::createWithContentsOfFile(filename);

    auto metadataOk = false;
    if (auto metadata = geode::cast::typeinfo_cast<CCDictionary*>(dict->objectForKey("metadata"))) {
        if (auto format = geode::cast::typeinfo_cast<CCString*>(metadata->objectForKey("format"))) {
            if (format->intValue() == 1) metadataOk = true;
        }
    }

    if (!metadataOk) return;

    auto data = geode::cast::typeinfo_cast<CCDictionary*>(dict->objectForKey("data"));
    if (!data) return;

    CCDictElement* element;
    CCDictElement* temp;
    HASH_ITER(hh, data->m_pElements, element, temp) {
        if (!m_pValueDict->objectForKey(element->getStrKey())) {
            m_pValueDict->setObject(element->getObject(), element->getStrKey() );
        }
    }

    CCDirector::sharedDirector()->setDefaultValues();
}

void cocos2d::CCConfiguration::setObject(const char* key, cocos2d::CCObject* value) {
    m_pValueDict->setObject(value, key);
}

bool cocos2d::CCConfiguration::supportsDiscardFramebuffer() const {
    return m_bSupportsDiscardFramebuffer;
}

bool cocos2d::CCConfiguration::supportsShareableVAO() const {
    return m_bSupportsShareableVAO;
}
#endif

