#include <Geode/Bindings.hpp>

DynamicObjectAction::DynamicObjectAction() {}

DynamicObjectAction::DynamicObjectAction(EffectGameObject* object, GameObject* targetObject, GameObject* centerObject) {
		m_gameObject1 = object;
		m_gameObject2 = targetObject;
		m_gameObject3 = centerObject;
		m_gameObject4 = nullptr;
		m_gameObject5 = nullptr;
		m_gameObject6 = nullptr;
		m_gameObject7 = nullptr;
		m_gameObject8 = nullptr;
		m_unkFloat1 = 0.f;
		m_unkFloat2 = 0.f;
		m_unkFloat3 = 0.f;
		m_unkBool1 = false;
		m_unkBool2 = false;
		m_unkBool3 = false;
		m_unkBool4 = false;
		m_controlID = object->m_controlID;
		m_targetGroupID = object->m_targetGroupID;
		m_centerGroupID = object->m_centerGroupID;
	}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

