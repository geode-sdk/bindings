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
#endif

#if defined(GEODE_IS_IOS)
#endif

