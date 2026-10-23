#include <Geode/binding/TabbedPopupLayer.hpp>
#include <Geode/binding/ButtonSprite.hpp>
#include <Geode/binding/CCMenuItemSpriteExtra.hpp>

#if defined(GEODE_IS_WINDOWS)
void TabbedPopupLayer::beginTab(int tab) {
    if (tab >= 0 && tab < static_cast<int>(m_tabs.size())) m_buildTab = tab;
}

int TabbedPopupLayer::ensurePopupPage(int tab, int page) {
    if (tab < 0 || tab >= static_cast<int>(m_tabPages.size()) || page < 0) return 0;
    auto& pages = m_tabPages[tab];
    while (static_cast<int>(pages.size()) <= page) {
        int index = m_pageContainers->count();
        this->getPageContainer(index);
        pages.push_back(index);
    }
    return pages[page];
}

int TabbedPopupLayer::getPopupPage(int tab, int page) const {
    if (tab < 0 || tab >= static_cast<int>(m_tabPages.size()) || page < 0) return 0;
    auto& pages = m_tabPages[tab];
    if (page >= static_cast<int>(pages.size())) return 0;
    return pages[page];
}

void TabbedPopupLayer::offsetToNextPage(int perPage) {
    if (m_buildTab < 0 || m_buildTab >= static_cast<int>(m_tabs.size()) || perPage <= 0) return;
    auto& tab = m_tabs[m_buildTab];
    int remainder = tab.m_itemCount % perPage;
    if (remainder != 0) tab.m_itemCount += perPage - remainder;
}

int TabbedPopupLayer::pageForButtonCount(int count, int perPage) const {
    if (perPage <= 0) return 0;
    return std::max(count / perPage, 0);
}

void TabbedPopupLayer::refreshTabButtons(char const* selectedBG, char const* normalBG) {
    for (size_t i = 0; i < m_tabs.size(); i++) {
        auto button = m_tabs[i].m_button;
        if (!button) continue;
        if (auto sprite = static_cast<ButtonSprite*>(button->getNormalImage())) {
            sprite->updateBGImage(static_cast<int>(i) == m_currentTab ? selectedBG : normalBG);
        }
    }
}
#endif

