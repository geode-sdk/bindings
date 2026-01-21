#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int LevelTools::getAudioBPM(int id) {
    switch (id) {
        case 0: return 160;
        case 1: return 142;
        case 2: return 163;
        case 3: return 145;
        case 4: return 142;
        case 5: return 170;
        case 6: return 178;
        case 7: return 143;
        case 8: return 140;
        case 10: return 140;
        case 12: return 170;
        default: return 130;
    }
}

bool LevelTools::getLastGameplayReversed() {
    return *reinterpret_cast<bool*>(geode::base::get() + GEODE_WINDOWS(0x6a4c06) GEODE_IOS(0x85f0c0));
}

float LevelTools::offsetBPMForTrack(int id) {
    return id == 11 ? .1f : id == 13 ? .07f : .0f;
}

void LevelTools::toggleDebugLogging(bool enabled) {}

float LevelTools::valueForSpeedMod(int speed) {
    switch (speed) {
        case 1: return 251.16008f;
        case 2: return 387.42014f;
        case 3: return 468.00015f;
        case 4: return 576.00018f;
        default: return 311.5801f;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
gd::string LevelTools::base64DecodeString(gd::string str) {
    return str.empty() ? str : cocos2d::ZipUtils::base64URLDecode(str);
}

gd::string LevelTools::base64EncodeString(gd::string str) {
    return str.empty() ? str : cocos2d::ZipUtils::base64URLEncode(str);
}

cocos2d::CCDictionary* LevelTools::createStarPackDict() {
    auto dict = cocos2d::CCDictionary::create();
    std::string packs = "1,3,2,4,3,4,5,5,6,6,7,6,8,7,9,8,10,8,11,9,19,10,20,10,21,10,22,10,26,"
                        "10,27,10,28,10,29,10,30,10,31,10,32,4,33,5,34,6,35,8,36,8,37,5,38,5,39,"
                        "6,40,7,41,8,42,8,43,8,44,9,45,6,46,10,47,10,48,10,49,10,50,10,52,4,53,3,"
                        "54,4,55,4,56,5,57,6,58,7,59,8,60,8,61,8,62,9,63,9,64,10,65,10,66,10";
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = packs.find_first_of(",");
    auto size = packs.size();
    while (index != std::string::npos) {
        auto str = packs.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = packs.find_first_of(",", start);
    }
    for (int i = 1; i < parts->count(); i += 2) {
        dict->setObject(parts->stringAtIndex(i), parts->stringAtIndex(i - 1)->intValue());
    }
    return dict;
}

bool LevelTools::getLastGameplayRotated() {
    return *reinterpret_cast<bool*>(geode::base::get() + 0x6a4c05);
}

float LevelTools::getLastTimewarp() {
    return *reinterpret_cast<float*>(geode::base::get() + 0x69c198);
}

gd::unordered_set<int> LevelTools::getLevelList() {
    auto levelStart = reinterpret_cast<int*>(geode::base::get() + 0x608580);
    auto levelList = std::unordered_set<int>(levelStart, levelStart + 40);
    levelList.insert(5002);
    levelList.insert(5003);
    levelList.insert(5004);
    return levelList;
}

SongInfoObject* LevelTools::getSongObject(int id) {
    auto artistID = artistForAudio(id);
    return SongInfoObject::create(id, getAudioTitle(id), nameForArtist(artistID), artistID, 0.f, "", "", "", 0, "", false, 0, -1);
}

cocos2d::CCPoint LevelTools::posForTime(float time, cocos2d::CCArray* objects, int speed, bool platformer, int& rotateChannel) {
    return posForTimeInternal(time, objects, speed, platformer, false, false, rotateChannel, 0);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

