#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::extension::CCControl* cocos2d::extension::CCControl::create() {
    auto ret = new CCControl();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void cocos2d::extension::CCControl::addHandleOfControlEvent(int p0, cocos2d::extension::CCControlEvent p1) {
    m_mapHandleOfControlEvent[p1] = p0;
}

int cocos2d::extension::CCControl::getHandleOfControlEvent(cocos2d::extension::CCControlEvent p0) {
    auto it = m_mapHandleOfControlEvent.find(p0);
    return it != m_mapHandleOfControlEvent.end() ? it->second : -1;
}

bool cocos2d::extension::CCControl::hasVisibleParents() {
    for (auto parent = this->getParent(); parent != nullptr; parent = parent->getParent()) {
        if (!parent->isVisible()) return false;
    }
    return true;
}

void cocos2d::extension::CCControl::removeHandleOfControlEvent(cocos2d::extension::CCControlEvent p0) {
    if (auto it = m_mapHandleOfControlEvent.find(p0); it != m_mapHandleOfControlEvent.end()) {
        m_mapHandleOfControlEvent.erase(it);
    }
}
#endif

