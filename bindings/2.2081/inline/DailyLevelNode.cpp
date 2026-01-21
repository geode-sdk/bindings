#include <Geode/Geode.hpp>

DailyLevelNode::DailyLevelNode() {
    m_level = nullptr;
    m_page = nullptr;
    m_timeLabel = nullptr;
    m_unkBool = false;
    m_needsDownloading = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void DailyLevelNode::updateTimeLabel(gd::string text) {
    if (m_timeLabel) m_timeLabel->setString(text.c_str());
}
#endif

#if defined(GEODE_IS_WINDOWS)
DailyLevelNode::~DailyLevelNode() {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    CC_SAFE_RELEASE(m_level);
}

DailyLevelNode* DailyLevelNode::create(GJGameLevel* level, DailyLevelPage* page, bool isNew) {
    auto ret = new DailyLevelNode();
    if (ret->init(level, page, isNew)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

