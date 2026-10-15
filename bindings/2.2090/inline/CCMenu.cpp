#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
void cocos2d::CCMenu::alignItemsInColumns(unsigned int columns, ...) {
    va_list args;
    va_start(args, columns);
    this->alignItemsInColumns(columns, args);
    va_end(args);
}

void cocos2d::CCMenu::alignItemsInRows(unsigned int rows, ...) {
    va_list args;
    va_start(args, rows);
    this->alignItemsInRows(rows, args);
    va_end(args);
}

cocos2d::CCMenu* cocos2d::CCMenu::create(cocos2d::CCMenuItem* item, ...) {
    va_list args;
    va_start(args, item);
    auto ret = cocos2d::CCMenu::createWithItems(item, args);
    va_end(args);
    return ret;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCMenu::alignItemsVertically() {
    this->alignItemsVerticallyWithPadding(5.f);
}

void cocos2d::CCMenu::setHandlerPriority(int newPriority) {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->setPriority(newPriority, this);
}

void cocos2d::CCMenu::alignItemsInColumns(unsigned int columns, va_list args) {
    CCArray* rows = CCArray::create();
    while (columns) {
        rows->addObject(CCInteger::create(columns));
        columns = va_arg(args, unsigned int);
    }
    alignItemsInColumnsWithArray(rows);
}

void cocos2d::CCMenu::alignItemsInColumnsWithArray(cocos2d::CCArray* rowsArray) {
    std::vector<unsigned int> rows;
    for (CCInteger* pInteger : geode::cocos::CCArrayExt<CCInteger*, false>(rowsArray)) {
        rows.push_back((unsigned int)pInteger->getValue());
    }

    int height = -5;
    unsigned int row = 0;
    unsigned int rowHeight = 0;
    unsigned int columnsOccupied = 0;
    unsigned int rowColumns;

    if (m_pChildren && m_pChildren->count() > 0) {
        CCObject* pObject = NULL;
        for (CCObject* pObject : geode::cocos::CCArrayExt<CCObject*, false>(m_pChildren)) {
            CCNode* pChild = geode::cast::typeinfo_cast<CCNode*>(pObject);
            if (pChild) {
                rowColumns = rows[row];

                float tmp = pChild->getContentSize().height;
                rowHeight = (unsigned int)((rowHeight >= tmp || isnan(tmp)) ? rowHeight : tmp);

                ++columnsOccupied;
                if (columnsOccupied >= rowColumns) {
                    height += rowHeight + 5;

                    columnsOccupied = 0;
                    rowHeight = 0;
                    ++row;
                }
            }
        }
    }    

    CCSize winSize = CCDirector::sharedDirector()->getWinSize();

    row = 0;
    rowHeight = 0;
    rowColumns = 0;
    float w = 0.0;
    float x = 0.0;
    float y = (float)(height / 2);

    if (m_pChildren && m_pChildren->count() > 0) {
        for (CCObject* pObject : geode::cocos::CCArrayExt<CCObject*, false>(m_pChildren)) {
            CCNode* pChild = geode::cast::typeinfo_cast<CCNode*>(pObject);
            if (pChild) {
                if (rowColumns == 0) {
                    rowColumns = rows[row];
                    w = winSize.width / (1 + rowColumns);
                    x = w;
                }

                float tmp = pChild->getContentSize().height;
                rowHeight = (unsigned int)((rowHeight >= tmp || isnan(tmp)) ? rowHeight : tmp);

                pChild->setPosition(ccp(x - winSize.width / 2,
                                       y - pChild->getContentSize().height / 2));

                x += w;
                ++columnsOccupied;

                if (columnsOccupied >= rowColumns) {
                    y -= rowHeight + 5;

                    columnsOccupied = 0;
                    rowColumns = 0;
                    rowHeight = 0;
                    ++row;
                }
            }
        }
    }    
}

void cocos2d::CCMenu::alignItemsInRows(unsigned int rows, va_list args) {
    CCArray* pArray = CCArray::create();
    while (rows) {
        pArray->addObject(CCInteger::create(rows));
        rows = va_arg(args, unsigned int);
    }
    alignItemsInRowsWithArray(pArray);
}

void cocos2d::CCMenu::alignItemsInRowsWithArray(cocos2d::CCArray* columnArray) {
    std::vector<unsigned int> columns;
    for (CCInteger* pInteger : geode::cocos::CCArrayExt<CCInteger*, false>(columnArray)) {
        columns.push_back((unsigned int)pInteger->getValue());
    }

    std::vector<unsigned int> columnWidths;
    std::vector<unsigned int> columnHeights;

    int width = -10;
    int columnHeight = -5;
    unsigned int column = 0;
    unsigned int columnWidth = 0;
    unsigned int rowsOccupied = 0;
    unsigned int columnRows;

    if (m_pChildren && m_pChildren->count() > 0) {
        for (CCObject* pObject : geode::cocos::CCArrayExt<CCObject*, false>(m_pChildren)) {
            CCNode* pChild = geode::cast::typeinfo_cast<CCNode*>(pObject);
            if (pChild) {
                columnRows = columns[column];

                float tmp = pChild->getContentSize().width;
                columnWidth = (unsigned int)((columnWidth >= tmp || isnan(tmp)) ? columnWidth : tmp);

                columnHeight += (int)(pChild->getContentSize().height + 5);
                ++rowsOccupied;

                if (rowsOccupied >= columnRows) {
                    columnWidths.push_back(columnWidth);
                    columnHeights.push_back(columnHeight);
                    width += columnWidth + 10;

                    rowsOccupied = 0;
                    columnWidth = 0;
                    columnHeight = -5;
                    ++column;
                }
            }
        }
    }

    CCSize winSize = CCDirector::sharedDirector()->getWinSize();

    column = 0;
    columnWidth = 0;
    columnRows = 0;
    float x = (float)(-width / 2);
    float y = 0.0;

    if (m_pChildren && m_pChildren->count() > 0) {
        for (CCObject* pObject : geode::cocos::CCArrayExt<CCObject*, false>(m_pChildren)) {
            CCNode* pChild = geode::cast::typeinfo_cast<CCNode*>(pObject);
            if (pChild) {
                if (columnRows == 0) {
                    columnRows = columns[column];
                    y = (float) columnHeights[column];
                }

                float tmp = pChild->getContentSize().width;
                columnWidth = (unsigned int)((columnWidth >= tmp || isnan(tmp)) ? columnWidth : tmp);

                pChild->setPosition(ccp(x + columnWidths[column] / 2,
                                       y - winSize.height / 2));

                y -= pChild->getContentSize().height + 10;
                ++rowsOccupied;

                if (rowsOccupied >= columnRows) {
                    x += columnWidth + 5;
                    rowsOccupied = 0;
                    columnRows = 0;
                    columnWidth = 0;
                    ++column;
                }
            }
        }
    }
}
#endif

