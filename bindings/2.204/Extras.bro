class PlayerButtonCommand {
    PlayerButton m_button;
    bool m_isPush;
    bool m_isPlayer2;
    PAD = win 0x6, android32 0x6;
}

class FMODSound {
    
}

class AdvancedFollowInstance {
    
}

class SFXTriggerInstance {

}

class EventTriggerInstance {

}

class SongChannelState {
    
}

class ChanceObject {

}

class GameObjectPhysics {

}

class DynamicObjectAction {

}

class GJTransformState {

}

class CAState {
	cocos2d::ccColor3B m_fromColor;
    cocos2d::ccColor3B m_toColor;
	cocos2d::ccColor3B m_color;
	bool m_property19;
	bool m_blending;
	bool m_copyOpacity;
	bool m_unknown;
	int m_playerColor;
    int m_colorID;
	int m_copyID;
	int m_unknown2;
	float m_duration;
	float m_fromOpacity;
    float m_toOpacity;
	float m_deltaTime;
	float m_unknown3;
	cocos2d::ccHSVValue m_copyHSV;
}

class GJPointDouble {

}

class DynamicSaveObject {
    GameObject* m_gameObject;
    unsigned int m_unkIntUnusedMaybe;
    double m_unkDouble1;
    double m_unkDouble2;
    float m_unkFloat1;
    float m_unkFloat2;
    float m_unkFloat3;
    float m_unkFloat4;
    float m_unkFloat5;
    float m_unkFloat6;
}

class ActiveSaveObject1 {
	GameObject* m_gameObject;
	bool m_unkBool1;
	bool m_unkBool2;
	PAD = win 0x2;
}

class ActiveSaveObject2 {
	GameObject* m_gameObject;
	EasingType m_easingType;
}