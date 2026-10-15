#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCMouseDispatcher::forceAddDelegate(cocos2d::CCMouseDelegate* p0) {
    if (auto handler = CCMouseHandler::handlerWithDelegate(p0)) m_pMouseHandlers->addObject(handler);
}

bool cocos2d::CCMouseDispatcher::dispatchScrollMSG(float x, float y) {
    m_bLocked = true;
    for (auto handler : geode::cocos::CCArrayExt<CCMouseHandler, false>(m_pMouseHandlers)) {
        if (!handler) continue;
        auto delegate = handler->getDelegate();
        if (!delegate) continue;
        delegate->scrollWheel(x, y);
        break;
    }
    m_bLocked = false;
    if (m_bToRemove) {
        m_bToRemove = false;
        if (m_pHandlersToRemove) {
            void* delegate;
            CCARRAYDATA_FOREACH(m_pHandlersToRemove, delegate) {
                forceRemoveDelegate(static_cast<CCMouseDelegate*>(delegate));
            }
        }
        ccCArrayRemoveAllValues(m_pHandlersToRemove);
    }

    if (m_bToAdd) {
        m_bToAdd = false;
        if (m_pHandlersToAdd) {
            void* delegate;
            CCARRAYDATA_FOREACH(m_pHandlersToAdd, delegate) {
                forceAddDelegate(static_cast<CCMouseDelegate*>(delegate));
            }
        }
        ccCArrayRemoveAllValues(m_pHandlersToAdd);
    }

    return true;
}
#endif

