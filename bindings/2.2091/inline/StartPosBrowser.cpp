#include <Geode/binding/StartPosBrowser.hpp>
#include <Geode/mapping/CCArray.hpp>
#include <Geode/mapping/CCLabelBMFont.hpp>
#include <Geode/mapping/CCString.hpp>

StartPosBrowser::StartPosBrowser() {
    m_startPosObjects = nullptr;
    m_listLayer = nullptr;
    m_selectedCellIdx = 0;
    m_pageLabel = nullptr;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
StartPosBrowser* StartPosBrowser::create(cocos2d::CCArray* startPosObjects, int selectedCellIdx) {
    auto ret = new StartPosBrowser();
    if (ret->init(startPosObjects, selectedCellIdx)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void StartPosBrowser::updatePageLabel() {
    int count = 1;
    if (m_startPosObjects) count = m_startPosObjects->count() + 1;
    m_pageLabel->setString(cocos2d::CCString::createWithFormat("Total: %i", count)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif
