class FMODSound {
    
}

class AdvancedFollowInstance {
	GameObject* m_gameObject;
	int m_group;
	int m_objectKey;
	int m_controlId;
	int m_otherObjectKey;
	int m_relatedToGJGameStateUnkUint7;
	bool m_finished;
	bool m_doStart;
	bool m_started;
	bool m_processed;
}

class SFXTriggerInstance {
	float m_unkFloat1;
	float m_unkFloat2;
	float m_unkFloat3;
	SFXTriggerGameObject* m_sfxTriggerGameObject;
}

class EventTriggerInstance {
	int m_unkInt1;
	int m_unkInt2;
	int m_unkInt3;
	bool m_unkBool1;
	gd::vector<int> m_unkVecInt;
}

class SongChannelState {
	SongTriggerGameObject* m_songTriggerGameObject1;
	double m_unkDouble1;
	SongTriggerGameObject* m_songTriggerGameObject2;
	double m_unkDouble2;
}

class SongTriggerState {
	SongTriggerGameObject* m_songTriggerGameObject;
	double m_unkDouble;
}

// not an official name, I just had to make it a class cause there's 3 of em
class SFXStateContainer {
	double m_unkDouble1;
	double m_unkDouble2;
	float m_unkFloat1;
	float m_unkFloat2;
	bool m_unkBool;
}

class SFXTriggerState {
	SFXTriggerGameObject* m_sfxTriggerGameObject;
	int m_unkInt1;
	double m_unkDouble1;
	double m_unkDouble2;
	double m_unkDouble3;
	double m_unkDouble4;
	float m_unkFloat1;
	float m_unkFloat2;
	float m_unkFloat3;
	float m_unkFloat4;
	int m_unkInt2;
	bool m_processed;
	bool m_unkBool1;
	SFXStateContainer m_sfxStateContainers[3];
}

class ChanceObject {
    int m_groupID;
    int m_oldGroupID;
    int m_chance;
    int m_unk010;
}

class GameObjectPhysics {
	float m_unk0;
    float m_unk4;
    int m_unk8;
    float m_unkc;
    float m_unk10;
    float m_unk14;
    float m_unk18;
    float m_unk1c;
    float m_unk20;
    int m_unk24;
}

class DynamicObjectAction {
	GameObject* m_gameObject1;
	GameObject* m_gameObject2;
	GameObject* m_gameObject3;
	GameObject* m_gameObject4;
	GameObject* m_gameObject5;
	GameObject* m_gameObject6;
	GameObject* m_gameObject7;
	GameObject* m_gameObject8;
	float m_unkFloat1;
    float m_unkFloat2;
    float m_unkFloat3;
	bool m_unkBool1;
    bool m_unkBool2;
    bool m_unkBool3;
	bool m_unkBool4;
	float m_unkFloat4;
    float m_unkFloat5;
    float m_unkFloat6;
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

class SavedObjectStateRef {
    GameObject* m_gameObject;
    double m_unkDouble1;
    double m_unkDouble2;
    float m_unkFloat1;
    float m_unkFloat2;
    float m_addToCustomScaleX;
    float m_addToCustomScaleY;
    float m_unkFloat3;
    float m_unkFloat4;
}

class SavedActiveObjectState {
	GameObject* m_gameObject;
	bool m_unkBool1;
	bool m_unkBool2;
}

class SavedSpecialObjectState {
	GameObject* m_gameObject;
	int m_animationID;
}

class SequenceTriggerState {
	gd::unordered_map<int,float> m_unkUnorderedMap1;
	gd::unordered_map<int,int> m_unkUnorderedMap2;
}

class FMODSoundTween {
	double m_unkDouble1;
	double m_unkDouble2;
	double m_unkDouble3;
}

class FMODQueuedMusic {
	gd::string m_filePath;
	float m_unkFloat1;
	float m_unkFloat2;
	float m_unkFloat3;
	int m_unkInt1;
	int m_unkInt2;
	int m_unkInt3;
	int m_unkInt4;
	bool m_unkBool1;
	int m_keyForFMODMusicMap1;
	bool m_unkBool2;
	int m_keyForFMODMusicMap2;
	bool m_unkBool3;
	float m_unkFloat4;
	FMOD::Sound* m_sound;
	bool m_dontReset;
}

// not an official name, I just had to make it a class cause of padding
class SoundStateContainer {
	int m_fadePointCount;
	float m_fadePointVolumes[4];
	uint64_t m_fadePointOffsets[4];
	uint64_t m_currentOffset;
	int m_loopStartMs;
	int m_loopEndMs;
	int m_currentMs;
	uint64_t m_playStartOffset;
	uint64_t m_playEndOffset;
	int m_usePlayOffsets;
}

class FMODSoundState {
	gd::string m_filePath;
	float m_speed;
	float m_unkFloat1;
	float m_volume;
	bool m_shouldLoop;
	int m_channelID;
	SoundStateContainer m_soundStateContainer;
	int m_uniqueID;
	int m_sfxGroup;
	float m_pitch;
	bool m_fastFourierTransform;
	bool m_reverb;
	int m_unkInt1;
	bool m_unkBool1;
	int m_keyForFMODMusicMap;
	bool m_unkBool2;
}

class TimerItem {
	PAD = win 0x38;
	gd::vector<int> m_unkVecInt;
	PAD = win 0x4;
}

class EnterEffectAnimValue {
	int m_unkInt1;
	float m_unkFloat1;
	float m_unkFloat2;
	float m_unkFloat3;
	float m_unkFloat4;
	int m_unkInt2;
	float m_unkFloat5;
	int m_unkInt3;
}

class DynamicMoveCalculation {
	// todo
}