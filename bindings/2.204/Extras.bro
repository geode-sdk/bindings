class PlayerButtonCommand {
    PlayerButton m_button;
    bool m_isPush;
    bool m_isPlayer2;
    PAD = win 0x6, android32 0x6;
}

class FMODSound {
    
}

class AdvancedFollowInstance {
	GameObject* m_gameObject;
	byte pad_1[24];
}

class SFXTriggerInstance {
	PAD = win 0x10;
}

class EventTriggerInstance {
	byte pad_1[16];
	gd::vector<int> m_unkVecInt;
}

class SongChannelState {
	PAD = win 0x24;
}

class SongTriggerState {
	PAD = win 0x10;
}

class SFXTriggerState {
	PAD = win 0xa0;
}

class ChanceObject {

}

class GameObjectPhysics {
	PAD = win 0x28;
}

class DynamicObjectAction {
	PAD = win 0x3c;
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

class SequenceTriggerState {
	gd::unordered_map<int,float> m_unkUnorderedMap1;
	gd::unordered_map<int,int> m_unkUnorderedMap2;
}

class FMODSoundTween {
	PAD = win 0x28;
}

class FMODQueuedMusic {
	gd::string m_unkString;
	byte pad_1[56];
}

class FMODSoundState {
	gd::string m_unkString;
	byte pad_1[164];
}

//Needed because pair<int,FMODSoundState> gets padded in gd but not when we compile it
class FMODSoundState_padded {
	byte pad_1[4];
	gd::string m_unkString;
	byte pad_2[164];
}

class TimerItem {
	byte pad_1[56];
	gd::vector<int> m_unkVecInt;
	byte pad_2[4];
}

//Needed because pair<int,TimerItem> gets padded in gd but not when we compile it
class TimerItem_padded {
	byte pad_1[60];
	gd::vector<int> m_unkVecInt;
	byte pad_2[4];
}

class EnterEffectAnimValue {
	byte pad_1[32];
}