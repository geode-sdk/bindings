#include <Geode/Bindings.hpp>

GJTransformState::GJTransformState() {
		m_scaleX = 1.f;
		m_scaleY = 1.f;
		m_angleX = 0.f;
		m_angleY = 0.f;
		m_skewX = 0.f;
		m_skewY = 0.f;
		m_transformRotation = 0.f;
		m_transformReset = false;
		m_transformRotationX = 0.f;
		m_transformRotationY = 0.f;
		m_transformScaleX = 1.f;
		m_transformScaleY = 1.f;
	}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

