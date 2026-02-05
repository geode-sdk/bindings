#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJMessageCell::GJMessageCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

void GJMessageCell::updateToggle() {
   if (m_message && m_toggler) m_toggler->toggle(m_message->m_toggled);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJMessageCell::~GJMessageCell() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_uploadActionDelegate == this) glm->m_uploadActionDelegate = nullptr;
    if (m_popup) m_popup->m_delegate = nullptr;
    CC_SAFE_RELEASE(m_message);
}

void GJMessageCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

