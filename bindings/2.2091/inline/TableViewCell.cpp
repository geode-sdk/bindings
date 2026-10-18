#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void TableViewCell::updateVisibility() {
    if (!m_tableView) return;
    auto height = this->getContentSize().height;
    auto tableHeight = m_tableView->getContentSize().height;
    auto y = this->getPosition().y + this->getParent()->getPosition().y;
    this->setVisible(tableHeight >= y && y >= -height);
}
TableViewCell::TableViewCell(const char* identifier, float width, float height) {
    this->m_width = width;
    this->m_height = height;
    this->m_backgroundLayer = cocos2d::CCLayerColor::create({0,0,0,0}, width, height);
    this->addChild(m_backgroundLayer, -1);
    this->m_mainLayer = cocos2d::CCLayer::create();
    this->addChild(m_mainLayer);
    this->m_cellIdentifier = identifier;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

