#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
int EditButtonBar::getPage() {
    return m_scrollLayer->getRelativePageForNum(m_scrollLayer->m_page);
}

bool EditButtonBar::init(cocos2d::CCArray* objects, cocos2d::CCPoint position, int tab, bool hasCreateItems, int columns, int rows) {
    if (!cocos2d::CCNode::init()) return false;
    m_buttonArray = cocos2d::CCArray::create();
    m_buttonArray->retain();
    m_buttonArray->addObjectsFromArray(objects);
    m_pagesArray = cocos2d::CCArray::create();
    m_pagesArray->retain();
    m_position = position;
    m_tabIndex = tab;
    m_hasCreateItems = hasCreateItems;
    this->loadFromItems(m_buttonArray, rows, columns, false);
    return true;
}

void EditButtonBar::reloadItems(int rowCount, int columnCount) {
    if (m_buttonArray) this->loadFromItems(m_buttonArray, rowCount, columnCount, false);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

