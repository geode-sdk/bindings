#include <Geode/Geode.hpp>

GJComment::GJComment() {
    m_commentID = 0;
    m_userID = 0;
    m_likeCount = 0;
    m_levelID = 0;
    m_isSpam = false;
    m_accountID = 0;
    m_commentDeleted = false;
    m_percentage = 0;
    m_modBadge = 0;
    m_color.r = 255;
    m_color.g = 255;
    m_color.b = 255;
    m_hasLevelID = false;
    m_unkMultiplayerBool = false;
    m_canDelete = false;
    m_userScore = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJComment::~GJComment() {
    CC_SAFE_RELEASE(m_userScore);
}

GJComment* GJComment::create() {
    auto ret = new GJComment();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

