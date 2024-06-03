#include "Common.hpp"

#ifdef GEODE_IS_WINDOWS

using namespace geode::prelude;

//GEODE_SIZE_CHECK(GJBaseGameLayer, 0x36b0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_gameState, 0x1a8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x870);

GEODE_SIZE_CHECK(GJGameState, 0x6C8);

GEODE_SIZE_CHECK(TableViewCell, 0x230);

#endif
