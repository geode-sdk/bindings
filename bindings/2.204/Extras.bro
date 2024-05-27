class FMODSound {
    
}

class AdvancedFollowInstance {
	GameObject* m_gameObject;
	PAD = win 0x18;
}

class SFXTriggerInstance {
	PAD = win 0x10;
}

class EventTriggerInstance {
	PAD = win 0x10;
	gd::vector<int> m_unkVecInt;
}

class SongChannelState {
	PAD = win 0x4;
	SongTriggerGameObject* m_songTriggerGameObject1;
	PAD = win 0xc;
	SongTriggerGameObject* m_songTriggerGameObject2;
	PAD = win 0xc;
}

class SongTriggerState {
	SongTriggerGameObject* m_songTriggerGameObject;
	PAD = win 0xc;
}

class SFXTriggerState {
	SFXTriggerGameObject* m_sfxTriggerGameObject;
	PAD = win 0x9c;
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
	float m_scaleX;
	float m_scaleY;
	float m_angleX;
	float m_angleY;
	float m_skewX;
	float m_skewY;
	float m_unk1;
	float m_unk2;
	float m_unk3;
	float m_unk4;
	cocos2d::CCPoint m_unk5;
	cocos2d::CCPoint m_unk6;
	cocos2d::CCPoint m_unk7;
	float m_unk8;
	float m_unk9;
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
	PAD = win 0x38;
}

class FMODSoundState {
	gd::string m_unkString;
	PAD = win 0xa4;
}

//Needed because pair<int,FMODSoundState> gets padded in gd but not when we compile it
class FMODSoundState_padded {
	PAD = win 0x4;
	gd::string m_unkString;
	PAD = win 0xa4;
}

class TimerItem {
	PAD = win 0x38;
	gd::vector<int> m_unkVecInt;
	PAD = win 0x4;
}

//Needed because pair<int,TimerItem> gets padded in gd but not when we compile it
class TimerItem_padded {
	PAD = win 0x3c;
	gd::vector<int> m_unkVecInt;
	PAD = win 0x4;
}

class EnterEffectAnimValue {
	PAD = win 0x20;
}