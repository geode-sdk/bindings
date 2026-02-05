#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJSmartBlockPreview::addCount(int count) {
    this->createInfoLabel();
    m_infoLabel->setPosition({ 90.f, 90.f });
    m_infoLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    m_infoLabel->limitLabelWidth(20.f, .6f, .0f);
}

void GJSmartBlockPreview::createInfoLabel() {
    if (m_infoLabel) return;
    m_infoLabel = cocos2d::CCLabelBMFont::create(" ", "bigFont.fnt");
    this->addChild(m_infoLabel);
}

bool GJSmartBlockPreview::init(gd::string key) {
    if (!cocos2d::CCNode::init()) return false;
    this->setContentSize({ 90.f, 90.f });
    m_prefabKey = key;
    return true;
}

void GJSmartBlockPreview::toggleSelectItem(bool selected) {
    if (m_selected == selected) return;
    m_selected = selected;
    if (!m_selectSprite) {
        m_selectSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_select_001.png");
        this->addChild(m_selectSprite);
        m_selectSprite->setScale(2.8f);
        m_selectSprite->setPosition({ 45.f, 45.f });
    }
    m_selectSprite->setVisible(m_selected);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

