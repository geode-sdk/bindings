#include <Geode/binding/SmartTemplateCell.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
SmartTemplateCell::SmartTemplateCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    m_smartTemplate = nullptr;
    this->init();
}
#endif

#ifdef GEODE_IS_MACOS
SmartTemplateCell::~SmartTemplateCell() {}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

