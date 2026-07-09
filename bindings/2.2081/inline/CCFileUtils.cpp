#include <Geode/Bindings.hpp>


virtual gd::string cocos2d::CCFileUtils::getWritablePath() { return ""; }

virtual bool cocos2d::CCFileUtils::isFileExist(const gd::string& strFilePath) { return false; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCFileUtils::removeAllPaths() {
    m_searchPathArray.clear();
}
#endif

