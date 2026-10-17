#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAnimationCache::CCAnimationCache() {
    m_pAnimations = nullptr;
}

void cocos2d::CCAnimationCache::removeAnimationByName(const char* p0) {
    if (p0) m_pAnimations->removeObjectForKey(p0);
}

void cocos2d::CCAnimationCache::parseVersion1(cocos2d::CCDictionary* animations) {
    CCSpriteFrameCache* frameCache = CCSpriteFrameCache::sharedSpriteFrameCache();

    CCDictElement* pElement = nullptr;
    CCDictElement* tmp = nullptr;
    HASH_ITER(hh, animations->m_pElements, pElement, tmp) {
        CCDictionary* animationDict = (CCDictionary*)pElement->getObject();
        CCArray* frameNames = (CCArray*)animationDict->objectForKey("frames");
        float delay = animationDict->valueForKey("delay")->floatValue();
        CCAnimation* animation = nullptr;

        if (frameNames == nullptr) {
            continue;
        }

        CCArray* frames = CCArray::createWithCapacity(frameNames->count());
        frames->retain();

        for (CCString* pObj : geode::cocos::CCArrayExt<CCString*, false>(frameNames)) {
            const char* frameName = pObj->getCString();
            CCSpriteFrame* spriteFrame = frameCache->spriteFrameByName(frameName);

            if (!spriteFrame) {
                continue;
            }

            CCAnimationFrame* animFrame = new CCAnimationFrame();
            animFrame->initWithSpriteFrame(spriteFrame, 1, nullptr);
            frames->addObject(animFrame);
            animFrame->release();
        }

        if (frames->count() == 0) {
            continue;
        }

        animation = CCAnimation::create(frames, delay, 1);

        CCAnimationCache::sharedAnimationCache()->addAnimation(animation, pElement->getStrKey());
        frames->release();
    }    
}

void cocos2d::CCAnimationCache::parseVersion2(cocos2d::CCDictionary* animations) {
    CCSpriteFrameCache* frameCache = CCSpriteFrameCache::sharedSpriteFrameCache();

    CCDictElement* pElement = nullptr;
    CCDictElement* tmp = nullptr;
    HASH_ITER(hh, animations->m_pElements, pElement, tmp) {
        const char* name = pElement->getStrKey();
        CCDictionary* animationDict = (CCDictionary*)pElement->getObject();

        const CCString* loops = animationDict->valueForKey("loops");
        bool restoreOriginalFrame = animationDict->valueForKey("restoreOriginalFrame")->boolValue();

        CCArray* frameArray = (CCArray*)animationDict->objectForKey("frames");

        if (frameArray == nullptr) {
            continue;
        }

        CCArray* array = CCArray::createWithCapacity(frameArray->count());
        array->retain();

        for (CCDictionary* entry : geode::cocos::CCArrayExt<CCDictionary*, false>(frameArray)) {
            const char* spriteFrameName = entry->valueForKey("spriteframe")->getCString();
            CCSpriteFrame* spriteFrame = frameCache->spriteFrameByName(spriteFrameName);

            if (!spriteFrame) {
                continue;
            }

            float delayUnits = entry->valueForKey("delayUnits")->floatValue();
            CCDictionary* userInfo = (CCDictionary*)entry->objectForKey("notification");

            CCAnimationFrame* animFrame = new CCAnimationFrame();
            animFrame->initWithSpriteFrame(spriteFrame, delayUnits, userInfo);

            array->addObject(animFrame);
            animFrame->release();
        }

        float delayPerUnit = animationDict->valueForKey("delayPerUnit")->floatValue();
        CCAnimation* animation = new CCAnimation();
        animation->initWithAnimationFrames(array, delayPerUnit, 0 != loops->length() ? loops->intValue() : 1);
        array->release();

        animation->setRestoreOriginalFrame(restoreOriginalFrame);

        CCAnimationCache::sharedAnimationCache()->addAnimation(animation, name);
        animation->release();
    }
}

void cocos2d::CCAnimationCache::addAnimationsWithDictionary(cocos2d::CCDictionary* dictionary, const char* plist) {
    CCDictionary* animations = (CCDictionary*)dictionary->objectForKey("animations");

    if (animations == nullptr) return;

    unsigned int version = 1;
    CCDictionary* properties = (CCDictionary*)dictionary->objectForKey("properties");
    if (properties) {
        version = properties->valueForKey("format")->intValue();
        CCArray* spritesheets = (CCArray*)properties->objectForKey("spritesheets");

        for (CCString* name : geode::cocos::CCArrayExt<CCString*, false>(spritesheets)) {
            if (plist) {
                const char* path = CCFileUtils::sharedFileUtils()->fullPathFromRelativeFile(name->getCString(), plist);
                CCSpriteFrameCache::sharedSpriteFrameCache()->addSpriteFramesWithFile(path);
            } 
            else {
                CCSpriteFrameCache::sharedSpriteFrameCache()->addSpriteFramesWithFile(name->getCString());
            }            
        }
    }

    switch (version) {
        case 1:
            parseVersion1(animations);
            break;
        case 2:
            parseVersion2(animations);
            break;
    }
}

void cocos2d::CCAnimationCache::addAnimationsWithFile(const char* plist) {
    std::string path = CCFileUtils::sharedFileUtils()->fullPathForFilename(plist, false);
    CCDictionary* dict = CCDictionary::createWithContentsOfFile(path.c_str());
    addAnimationsWithDictionary(dict, plist);
}
#endif

