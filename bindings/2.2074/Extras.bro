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
	int m_groupID1;
	int m_groupID2;
	int m_controlID;
	SFXTriggerGameObject* m_sfxTriggerGameObject;
}

class EventTriggerInstance {
	int m_targetID;
	int m_uniqueID;
	int m_controlID;
	bool m_inactive;
	gd::vector<int> m_remapKeys;
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

[[depends(SFXStateContainer)]]
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
	std::array<SFXStateContainer, 3> m_sfxStateContainers;
}

class ChanceObject {
	int m_groupID;
	int m_oldGroupID;
	int m_chance;
	int m_unk00c;
}

class SmartPrefabResult {
	GJSmartPrefab* m_smartPrefab;
	gd::string m_binaryKey;
	gd::string m_prefabKey;
	int m_prefabCount;
	bool m_unrequired;
	int m_rotation;
	bool m_flipX;
	bool m_flipY;
	bool m_ignoreCorners;
}

class GameObjectPhysics {
	GameObject* m_gameObject;
	cocos2d::CCPoint m_unkPoint1;
	cocos2d::CCPoint m_unkPoint2;
	float m_unkFloat1;
	float m_unkFloat2;
	int m_unkInt1;
	int m_unkInt2;
	int m_unkInt3;
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
	GJTransformState() {
		m_unk1 = 0.f;
		m_unk2 = false;
		m_unk5 = cocos2d::CCPoint {};
		m_unk6 = cocos2d::CCPoint {};
		m_unk7 = cocos2d::CCPoint {};
		m_angleY = 0.f;
		m_skewX = 0.f;
		m_skewY = 0.f;
		m_unk3 = 0.f;
		m_unk4 = 0.f;
		m_unk5.x = 0.f;
		m_unk5.y = 0.f;
		m_scaleX = 1.f;
		m_scaleY = 1.f;
		m_angleX = 0.f;
		m_unk8 = 1.f;
		m_unk9 = 1.f;
	}

	float m_scaleX;
	float m_scaleY;
	float m_angleX;
	float m_angleY;
	float m_skewX;
	float m_skewY;
	float m_unk1;
	bool m_unk2;
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
	std::array<float, 4> m_fadePointVolumes;
	std::array<uint64_t, 4> m_fadePointOffsets;
	uint64_t m_currentOffset;
	int m_loopStartMs;
	int m_loopEndMs;
	int m_currentMs;
	uint64_t m_playStartOffset;
	uint64_t m_playEndOffset;
	int m_usePlayOffsets;
}

[[depends(SoundStateContainer)]]
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
	int m_itemID;
	double m_time;
	bool m_paused;
	float m_timeMod;
	bool m_ignoreTimeWarp;
	double m_targetTime;
	bool m_stopTimeEnabled;
	int m_targetGroupID;
	int m_triggerUniqueID;
	int m_controlID;
	gd::vector<int> m_remapKeys;
	bool m_disabled;
}

class EnterEffectAnimValue {
	int m_key;
	float m_value;
	float m_distance;
	float m_duration;
	float m_elapsed;
	EasingType m_easingType;
	float m_easingRate;
	int m_easingBuffer;
}

class DynamicMoveCalculation {
	PAD = win 0x18;
}

class tk_spline {
	gd::vector<double> m_x;
	gd::vector<double> m_y;
	gd::vector<double> m_b;
	gd::vector<double> m_c;
	gd::vector<double> m_d;
	double m_c0;
	int m_type;
	int m_left;
	int m_right;
	double m_leftValue;
	double m_rightValue;
	bool m_madeMonotonic;
}
