#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCArray* cocos2d::CCDictionary::allKeysForObject(cocos2d::CCObject* p0) {
    auto keyCount = this->count();
    if (keyCount <= 0) return nullptr;
    auto arr = CCArray::createWithCapacity(keyCount);
    CCDictElement* element;
    CCDictElement* temp;
    if (m_eDictType == kCCDictStr) {
        HASH_ITER(hh, m_pElements, element, temp) {
            if (element->getObject() == p0) {
                auto key = new CCString(element->getStrKey());
                arr->addObject(key);
                key->release();
            }
        }
    }
    else if (m_eDictType == kCCDictInt) {
        HASH_ITER(hh, m_pElements, element, temp) {
            if (element->getObject() == p0) {
                auto key = new CCInteger(element->getIntKey());
                arr->addObject(key);
                key->release();
            }
        }
    }
    return arr;
}

char const* cocos2d::CCDictionary::charForKey(gd::string const& p0) {
    return this->valueForKey(p0)->getCString();
}

cocos2d::CCObject* cocos2d::CCDictionary::randomObject() {
    if (m_eDictType == kCCDictUnknown) return nullptr;
    auto key = this->allKeys()->randomObject();
    if (m_eDictType == kCCDictInt) return this->objectForKey(static_cast<CCInteger*>(key)->getValue());
    else if (m_eDictType == kCCDictStr) return this->objectForKey(static_cast<CCString*>(key)->getCString());
    else return nullptr;
}

bool cocos2d::CCDictionary::writeToFile(char const* p0) {
    return CCFileUtils::sharedFileUtils()->writeToFile(this, p0);
}
#endif

