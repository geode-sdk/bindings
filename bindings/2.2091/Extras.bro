class FMODSound {
	FMOD::Sound* m_sound;
	std::string m_filePath;
	int m_length;
	int m_playCount;
	int m_playIndex;
	bool m_preloaded;
}

class AdvancedFollowInstance {
	AdvancedFollowInstance() {}
	AdvancedFollowInstance(AdvancedFollowTriggerObject* object, int groupID, int targetID, int otherID, int unknown, int controlID) {
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

	AdvancedFollowTriggerObject* m_gameObject;
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
	std::vector<int> m_remapKeys;
}

class SongChannelState {
	SongTriggerGameObject* m_songTriggerGameObject1;
	[[renamed_from(m_unkDouble1)]]
	double m_startTime;
	SongTriggerGameObject* m_songTriggerGameObject2;
	[[renamed_from(m_unkDouble2)]]
	double m_prepareTime;
}

class SongTriggerState {
	SongTriggerGameObject* m_songTriggerGameObject;
	[[renamed_from(m_unkDouble)]]
	double m_startTime;
}

// not an official name, I just had to make it a class cause there's 3 of em
class SFXStateContainer {
	[[renamed_from(m_unkDouble1)]]
	double m_startTime;
	[[renamed_from(m_unkDouble2)]]
	double m_duration;
	[[renamed_from(m_unkFloat1)]]
	float m_target;
	[[renamed_from(m_unkFloat2)]]
	float m_unusedFrom; // always 0
	[[renamed_from(m_unkBool)]]
	bool m_active;
}

[[depends(SFXStateContainer)]]
class SFXTriggerState {
	SFXTriggerGameObject* m_sfxTriggerGameObject;
	[[renamed_from(m_unkInt1)]]
	int m_instanceID;
	[[renamed_from(m_unkDouble1)]]
	double m_startTime;
	[[renamed_from(m_unkDouble2)]]
	double m_playPosition; // playback position in ms
	[[renamed_from(m_unkDouble3)]]
	double m_positionTime; // time m_playPosition was last updated
	[[renamed_from(m_unkDouble4)]]
	double m_lastUpdateTime;
	[[renamed_from(m_unkFloat1)]]
	float m_speed; // SFX speed multiplier
	[[renamed_from(m_unkFloat2)]]
	float m_groupSpeed; // SFX-group speed multiplier
	[[renamed_from(m_unkFloat3)]]
	float m_volume;
	[[renamed_from(m_unkFloat4)]]
	float m_length; // sound length in ms
	[[renamed_from(m_unkInt2)]]
	int m_index;
	bool m_processed;
	[[renamed_from(m_unkBool1)]]
	bool m_loop;
	std::array<SFXStateContainer, 3> m_sfxStateContainers;
}

class ChanceObject {
	ChanceObject() {}
	ChanceObject(int groupID, int chance) {
		m_groupID = groupID;
		m_oldGroupID = groupID;
		m_chance = chance;
		m_unk00c = 0;
	}

	int m_groupID;
	int m_oldGroupID;
	int m_chance;
	int m_unk00c;
}

class SmartPrefabResult {
	GJSmartPrefab* m_smartPrefab;
	std::string m_binaryKey;
	std::string m_prefabKey;
	int m_prefabCount;
	bool m_unrequired;
	int m_rotation;
	bool m_flipX;
	bool m_flipY;
	bool m_ignoreCorners;
}

class GameObjectPhysics {
	GameObject* m_gameObject;
	[[renamed_from(m_unkPoint1)]]
	cocos2d::CCPoint m_velocity;
	[[renamed_from(m_unkPoint2)]]
	cocos2d::CCPoint m_direction;
	[[renamed_from(m_unkFloat1)]]
	float m_targetAngle;
	[[renamed_from(m_unkFloat2)]]
	float m_turnSpeed;
	int m_unkInt1; // unused as of 2.2091
	[[renamed_from(m_unkInt2)]]
	int m_lastUpdateStep;
	[[renamed_from(m_unkInt3)]]
	int m_exclusiveStep; // exclusive follow claim
}

class DynamicObjectAction {
	DynamicObjectAction() {}
	DynamicObjectAction(EffectGameObject* object, GameObject* targetObject, GameObject* centerObject) {
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

	[[renamed_from(m_gameObject1)]]
	EffectGameObject* m_trigger;
	[[renamed_from(m_gameObject2)]]
	GameObject* m_centerObject;
	[[renamed_from(m_gameObject3)]]
	GameObject* m_aimTargetObject;
	[[renamed_from(m_gameObject4)]]
	GameObject* m_targetObject;
	[[renamed_from(m_gameObject5)]]
	GameObject* m_minXObject;
	[[renamed_from(m_gameObject6)]]
	GameObject* m_minYObject;
	[[renamed_from(m_gameObject7)]]
	GameObject* m_maxXObject;
	[[renamed_from(m_gameObject8)]]
	GameObject* m_maxYObject;
	[[renamed_from(m_unkFloat1)]]
	float m_elapsed;
	[[renamed_from(m_unkFloat2)]]
	float m_easedElapsed; // eased progress * duration that was already applied
	[[renamed_from(m_unkFloat3)]]
	float m_easedProgress; // eased progress, 0-1
	[[renamed_from(m_unkBool1)]]
	bool m_justStarted; // set until elapsed advances
	[[renamed_from(m_unkBool2)]]
	bool m_stopped;
	[[renamed_from(m_unkBool3)]]
	bool m_paused;
	[[renamed_from(m_unkBool4)]]
	bool m_pausePending;
	int m_controlID;
	int m_targetGroupID;
	int m_centerGroupID;
}

class GJTransformState {
	GJTransformState() {
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

	float m_scaleX;
	float m_scaleY;
	float m_angleX;
	float m_angleY;
	float m_skewX;
	float m_skewY;
	float m_transformRotation;
	bool m_transformReset;
	float m_transformRotationX;
	float m_transformRotationY;
	cocos2d::CCPoint m_transformPosition;
	cocos2d::CCPoint m_transformSkewX;
	cocos2d::CCPoint m_transformSkewY;
	float m_transformScaleX;
	float m_transformScaleY;
}

class CAState {
	cocos2d::ccColor3B m_fromColor;
	cocos2d::ccColor3B m_toColor;
	cocos2d::ccColor3B m_color;
	bool m_paused;
	bool m_blending;
	bool m_copyOpacity;
	bool m_legacyHSV;
	int m_playerColor;
	int m_colorID;
	int m_copyID;
	int m_uniqueID;
	float m_duration;
	float m_fromOpacity;
	float m_toOpacity;
	float m_deltaTime;
	float m_currentOpacity;
	cocos2d::ccHSVValue m_copyHSV;
}

class GJPointDouble {
	double m_x;
	double m_y;
}

class SavedObjectStateRef {
	GameObject* m_gameObject;
	double m_positionX;
	double m_positionY;
	float m_rotationXOffset;
	float m_rotationYOffset;
	float m_addToCustomScaleX;
	float m_addToCustomScaleY;
	[[renamed_from(m_unkFloat3)]]
	float m_stepStartX; // object X at the start of the step
	[[renamed_from(m_unkFloat4)]]
	float m_stepStartY; // object Y at the start of the step
}

class SavedActiveObjectState {
	GameObject* m_gameObject;
	bool m_activatedByPlayer1;
	bool m_activatedByPlayer2;
}

class SavedSpecialObjectState {
	GameObject* m_gameObject;
	int m_animationID;
}

class SequenceTriggerState {
    std::unordered_map<int, float> m_sequenceTimes;
    std::unordered_map<int, int> m_sequenceIndices;
}

class FMODSoundTween {
	float m_interval;
	float m_duration;
	float m_start;
	float m_end;
	float m_value;
	bool m_finished;
}

class FMODQueuedMusic {
	std::string m_filePath;
	float m_pitch;
	float m_unkFloat2; // unused as of 2.2091
	float m_volume;
	int m_start;
	int m_end;
	int m_fadeIn;
	int m_fadeOut;
	bool m_loop;
	int m_musicID;
	bool m_stopMusic;
	int m_channelID;
	bool m_noPrepare;
	int m_queuedStatus;
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
	std::string m_filePath;
	float m_speed;
	float m_unkFloat1; // unused as of 2.2091
	float m_volume;
	bool m_shouldLoop;
	int m_channelID;
	SoundStateContainer m_soundStateContainer;
	int m_uniqueID;
	int m_sfxGroup;
	float m_pitch;
	bool m_fastFourierTransform;
	bool m_reverb;
	int m_effectID;
	bool m_isMusic;
	int m_musicID;
	bool m_unkBool2;  // unused as of 2.2091
}

class TimerItem {
	int m_itemID;
	double m_time;
	bool m_active;
	float m_timeMod;
	bool m_ignoreTimeWarp;
	double m_targetTime;
	bool m_stopTimeEnabled;
	int m_targetGroupID;
	int m_triggerUniqueID;
	int m_controlID;
	std::vector<int> m_remapKeys;
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
	CCMoveCNode* m_moveNode;
	cocos2d::CCPoint m_offset;
	GameObject* m_gameObject;
}

class tk_spline {
	std::vector<double> m_x;
	std::vector<double> m_y;
	std::vector<double> m_b;
	std::vector<double> m_c;
	std::vector<double> m_d;
	double m_c0;
	int m_type;
	int m_left;
	int m_right;
	double m_leftValue;
	double m_rightValue;
	bool m_madeMonotonic;
}

class RecordCheckpoint {
	int m_index;
	int m_step;
	uint64_t m_seed;
	int m_attempts;
	int m_ticks;
	uint64_t m_time;
	int m_clicks;
	int m_points;
	[[renamed_from(m_inputs)]]
	std::string m_persistentState; // persistent item / timer state string
}

class RecordButtonCommand {
    PlayerButton m_button;
    bool m_isPush;
    bool m_isPlayer2;
    int m_step;
	[[renamed_from(m_unk00c)]]
	int m_checkpointID; // set by 98 / 99 replay actions
}

class AccountReviewCard {}
class AdminReportedMeta {}
class AdminAbuseMeta {}
class DropdownListStyle {}
class EditorSFXImportOptions {}
class EditorSFXBinding {}
class EmoteDef {}
class EmoteToken {}
class BulkCommentKey {}
class PlayerTrailState {}
class KeybindSettingsEntry {
	char const* m_label;
	char const* m_sprite;
	// null = the KeybindingsSettingsPopup itself
	cocos2d::CCObject* m_target;
	cocos2d::SEL_MenuHandler m_callback;
	bool m_closePopup;
}
[[depends(UIButtonConfig)]]
class LevelTouchSlot {
	UIButtonConfig m_config;
	// distance from the anchor, in LevelControlConfig::m_canvasSize units
	cocos2d::CCPoint m_offset;
	// 2 = left, 3 = right, anything else = centre
	int m_anchorX;
	// 2 = bottom, 3 = top, anything else = centre
	int m_anchorY;
	// scale m_offset by winSize / m_canvasSize on that axis
	bool m_scaleX;
	bool m_scaleY;
}
class GJPlayerState {}
class SongUsageEntry {}

class TraceDrawObject {
	TraceDrawObject() {}
	TraceDrawObject(int type, GameObject* fromObject, GameObject* toObject, cocos2d::ccColor4F color) {
		m_type = type;
		m_fromObject = fromObject;
		m_toObject = toObject;
		m_groupID = 0;
		m_color = color;
	}
	TraceDrawObject(int groupID, cocos2d::ccColor4F color) {
		m_type = 2;
		m_fromObject = nullptr;
		m_toObject = nullptr;
		m_groupID = groupID;
		m_color = color;
	}

	int m_type;
	GameObject* m_fromObject;
	GameObject* m_toObject;
	int m_groupID;
	cocos2d::ccColor4F m_color;
}

class TraceGroupOutline {
	uint64_t m_version;
	std::vector<cocos2d::CCPoint> m_points;
	std::vector<cocos2d::CCPoint> m_points2;
}
