#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CommentCell::incrementDislikes() {
    m_comment->m_likeCount--;
    this->updateLabelValues();
}

void CommentCell::incrementLikes() {
    m_comment->m_likeCount++;
    this->updateLabelValues();
}

void CommentCell::onUndelete() {
    if (!m_comment) return;
    m_comment->m_commentDeleted = false;
    this->loadFromComment(m_comment);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CommentCell::~CommentCell() {
    CC_SAFE_RELEASE(m_comment);
}

void CommentCell::onDelete() {
    if (!m_comment) return;
    auto glm = GameLevelManager::sharedState();
    if (m_accountComment) glm->deleteAccountComment(m_comment->m_commentID, m_comment->m_accountID);
    else glm->deleteLevelComment(m_comment->m_commentID, m_comment->m_levelID);
    m_comment->m_commentDeleted = true;
    this->loadFromComment(m_comment);
}

void CommentCell::updateBGColor(int index) {
    if (m_compactMode) {
        m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 156, 85, 42 } : cocos2d::ccColor3B { 144, 79, 39 });
    }
    else {
        m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    }
}
#endif

#if defined(GEODE_IS_IOS)
CommentCell::CommentCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

