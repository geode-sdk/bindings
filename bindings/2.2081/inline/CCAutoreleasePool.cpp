#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAutoreleasePool::~CCAutoreleasePool() {
    CC_SAFE_DELETE(m_pManagedObjectArray);
}

void cocos2d::CCAutoreleasePool::addObject(cocos2d::CCObject* p0) {
    m_pManagedObjectArray->addObject(p0);
    p0->m_uAutoReleaseCount++;
    p0->release();
}

void cocos2d::CCAutoreleasePool::removeObject(cocos2d::CCObject* p0) {
    for (int i = 0; i < p0->m_uAutoReleaseCount; i++) {
        m_pManagedObjectArray->removeObject(p0, false);
    }
}
#endif

