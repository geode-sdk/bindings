#include <Geode/Bindings.hpp>

pugi::xml_node::~xml_node() {
    // because xml_document uses bindings addresses it uses the destructor lock, and since xml_node 
    // is the subclass we need to remove the lock from the stack in order to not overlow it
	if (geode::DestructorLock::isLocked(this)) {
		geode::DestructorLock::removeLock(this);
	}
}  
#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

