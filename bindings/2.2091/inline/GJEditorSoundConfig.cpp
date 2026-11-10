#include <Geode/binding/GJEditorSoundConfig.hpp>
#include <Geode/mapping/DS_Dictionary.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJEditorSoundConfig* GJEditorSoundConfig::createWithCoder(DS_Dictionary* dict)
{
    auto* ret = GJEditorSoundConfig::create();
    if (ret)
        ret->dataLoaded(dict);
    return ret;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
