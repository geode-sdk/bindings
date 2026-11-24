#include <Geode/binding/CCURLObject.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CCURLObject::init(std::string name, std::string url) {
    m_name = std::move(name);
    m_url = std::move(url);
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

