#include <Geode/Geode.hpp>

ChanceObject::ChanceObject() {}

ChanceObject::ChanceObject(int groupID, int chance) {
		m_groupID = groupID;
		m_oldGroupID = groupID;
		m_chance = chance;
		m_unk00c = 0;
	}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

