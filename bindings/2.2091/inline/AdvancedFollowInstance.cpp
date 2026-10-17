#include <Geode/Bindings.hpp>

AdvancedFollowInstance::AdvancedFollowInstance() {}

AdvancedFollowInstance::AdvancedFollowInstance(AdvancedFollowTriggerObject* object, int groupID, int targetID, int otherID, int unknown, int controlID) {
		m_gameObject = object;
		m_group = groupID;
		m_objectKey = targetID;
		m_controlId = controlID;
		m_otherObjectKey = otherID;
		m_relatedToGJGameStateUnkUint7 = unknown;
		m_finished = false;
		m_doStart = false;
		m_started = false;
		m_processed = false;
	}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

