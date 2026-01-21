#include <Geode/Geode.hpp>

MusicDelegateHandler::MusicDelegateHandler() {
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool MusicDelegateHandler::init(MusicDownloadDelegate* delegate) {
    if (!cocos2d::CCNode::init()) return false;
    m_delegate = delegate;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
MusicDelegateHandler* MusicDelegateHandler::create(MusicDownloadDelegate* delegate) {
    auto ret = new MusicDelegateHandler();
    if (ret->init(delegate)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

