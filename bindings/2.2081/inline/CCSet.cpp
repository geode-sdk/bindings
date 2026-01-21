#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSet* cocos2d::CCSet::create() {
    auto ret = new CCSet();
    ret->autorelease();
    return ret;
}

cocos2d::CCObject* cocos2d::CCSet::anyObject() {
    if (!m_pSet || m_pSet->empty())
    {
        return 0;
    }
    
    cocos2d::CCSetIterator it;

    for( it = m_pSet->begin(); it != m_pSet->end(); ++it)
    {
        if (*it)
        {
            return (*it);
        }
    }

    return 0;
}
#endif

