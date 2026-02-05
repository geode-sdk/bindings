#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B GameToolbox::colorToSepia(cocos2d::ccColor3B color, float factor) {
    cocos2d::ccColor3B sepia;
    sepia.r = std::min<uint8_t>(255, color.r * 0.393 + color.g * 0.769 + color.b * 0.189);
    sepia.g = std::min<uint8_t>(255, color.r * 0.349 + color.g * 0.686 + color.b * 0.168);
    sepia.b = std::min<uint8_t>(255, color.r * 0.272 + color.g * 0.534 + color.b * 0.131);
    return factor < 1.f ? GameToolbox::multipliedColorValue(color, sepia, factor) : sepia;
}

void GameToolbox::contentScaleClipRect(cocos2d::CCRect& rect) {}

gd::string GameToolbox::createHashString(gd::string const& str, int length) {
    std::string ret;
    if (length > 0) {
        auto strSize = str.size();
        if (length > strSize) ret = str;
        else {
            int increment = (float)strSize / (float)length;
            for (int i = 0; i < length; i += increment) {
                ret += str[i];
            }
        }
    }
    return ret;
}

uint64_t GameToolbox::fast_rand() {
    auto value = GameToolbox::getfast_srand() * 214013 + 2531011;
    GameToolbox::fast_srand(value);
    return value >> 16 & 32767;
}

cocos2d::CCSequence* GameToolbox::getDropActionWDelay(float delay, float duration, float scale, cocos2d::CCNode* target, cocos2d::SEL_CallFunc selector) {
    auto scaleAndFade = cocos2d::CCSpawn::create(
        cocos2d::CCEaseExponentialIn::create(cocos2d::CCScaleTo::create(duration, scale)),
        cocos2d::CCEaseExponentialIn::create(cocos2d::CCFadeIn::create(duration)),
        nullptr
    );
    auto delayTime = cocos2d::CCDelayTime::create(delay);
    if (target) {
        return cocos2d::CCSequence::create(delayTime, scaleAndFade, cocos2d::CCCallFunc::create(target, selector), nullptr);
    }
    else {
        return cocos2d::CCSequence::create(delayTime, scaleAndFade, nullptr);
    }
}

cocos2d::CCSequence* GameToolbox::getDropActionWEnd(float delay, float duration, float scale, cocos2d::CCAction* action, float actionDelay) {
    return cocos2d::CCSequence::create(
        GameToolbox::getDropActionWDelay(delay, duration, scale, nullptr, nullptr),
        cocos2d::CCDelayTime::create(actionDelay),
        action,
        nullptr
    );
}

cocos2d::CCActionInterval* GameToolbox::getEasedAction(cocos2d::CCActionInterval* action, int easingType, float easingRate) {
    if (easingType == 0) return action;
    if (easingRate <= 0.f) easingRate = 2.f;
    switch (easingType) {
        case 1: return cocos2d::CCEaseInOut::create(action, easingRate);
        case 2: return cocos2d::CCEaseIn::create(action, easingRate);
        case 3: return cocos2d::CCEaseOut::create(action, easingRate);
        case 4: return cocos2d::CCEaseElasticInOut::create(action, easingRate);
        case 5: return cocos2d::CCEaseElasticIn::create(action, easingRate);
        case 6: return cocos2d::CCEaseElasticOut::create(action, easingRate);
        case 7: return cocos2d::CCEaseBounceInOut::create(action);
        case 8: return cocos2d::CCEaseBounceIn::create(action);
        case 9: return cocos2d::CCEaseBounceOut::create(action);
        case 10: return cocos2d::CCEaseExponentialInOut::create(action);
        case 11: return cocos2d::CCEaseExponentialIn::create(action);
        case 12: return cocos2d::CCEaseExponentialOut::create(action);
        case 13: return cocos2d::CCEaseSineInOut::create(action);
        case 14: return cocos2d::CCEaseSineIn::create(action);
        case 15: return cocos2d::CCEaseSineOut::create(action);
        case 16: return cocos2d::CCEaseBackInOut::create(action);
        case 17: return cocos2d::CCEaseBackIn::create(action);
        case 18: return cocos2d::CCEaseBackOut::create(action);
        default: return action;
    }
}

uint64_t GameToolbox::getfast_srand() {
    return *reinterpret_cast<uint64_t*>(geode::base::get() + GEODE_WINDOWS(0x6c2e90) GEODE_IOS(0x86a7e0));
}

int GameToolbox::getInvertedEasing(int easingType) {
    switch (easingType) {
        case 2: return 3;
        case 3: return 2;
        case 5: return 6;
        case 6: return 5;
        case 8: return 9;
        case 9: return 8;
        case 11: return 12;
        case 12: return 11;
        case 14: return 15;
        case 15: return 14;
        case 17: return 18;
        case 18: return 17;
        default: return easingType;
    }
}

cocos2d::CCDictionary* GameToolbox::getLargestMergedIntDicts(cocos2d::CCDictionary* dict1, cocos2d::CCDictionary* dict2) {
    if (dict2->count() > dict1->count()) {
        GameToolbox::mergeDictsSaveLargestInt(dict2, dict1);
        return dict2;
    }
    else {
        GameToolbox::mergeDictsSaveLargestInt(dict1, dict2);
        return dict1;
    }
}

bool GameToolbox::isIOS() {
    #ifdef GEODE_IS_IOS
    return true;
    #else
    return false;
    #endif
}

bool GameToolbox::saveStringToFile(gd::string const& path, gd::string const& content) {
    #ifdef GEODE_IS_WINDOWS
    FILE* file = nullptr;
    fopen_s(&file, (cocos2d::CCFileUtils::sharedFileUtils()->getWritablePath() + path).c_str(), "w");
    #else
    auto file = fopen((cocos2d::CCFileUtils::sharedFileUtils()->getWritablePath() + path).c_str(), "w");
    #endif
    if (!file) return false;
    auto result = fwrite(content.c_str(), 1, content.size(), file);
    fclose(file);
    return result == content.size();
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GameToolbox::alignItemsVertically(cocos2d::CCArray* items, float gap, cocos2d::CCPoint position) {
    auto y = -gap;
    for (auto node : geode::cocos::CCArrayExt<cocos2d::CCNode, false>(items)) {
        y += node->getScaleY() * node->getContentSize().height + gap;
    }

    y = -y / 2.f;
    for (auto node : geode::cocos::CCArrayExt<cocos2d::CCNode, false>(items)) {
        auto size = node->getContentSize();
        auto scale = node->getScaleY();
        node->setPosition({ 0.f, scale * size.height / 2.f + y });
        node->setPosition(node->getPosition() + position);
        y += scale * size.height + gap;
    }
}

CCMenuItemToggler* GameToolbox::createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, cocos2d::CCArray* container) {
    return GameToolbox::createToggleButton(label, selector, state, menu, position, parent, labelParent, .7f, .5f, 80.f, { 8.f, 0.f }, "bigFont.fnt", false, 0, container);
}

bool GameToolbox::doWeHaveInternet() {
    return true;
}

float GameToolbox::fast_rand_0_1() {
    return GameToolbox::fast_rand() / 32767.f;
}

float GameToolbox::fast_rand_minus1_1() {
    return GameToolbox::fast_rand_0_1() * 2.f - 1.f;
}

void GameToolbox::fast_srand(uint64_t seed) {
    *reinterpret_cast<uint64_t*>(geode::base::get() + 0x6c2e90) = seed;
}

cocos2d::ccHSVValue GameToolbox::getMultipliedHSV(cocos2d::ccHSVValue const& value, float factor) {
    cocos2d::ccHSVValue ret;
    ret.h = value.h * factor;
    ret.s = value.absoluteSaturation ? value.s * factor : value.s * factor + (1.f - factor);
    ret.v = value.absoluteBrightness ? value.v * factor : value.v * factor + (1.f - factor);
    ret.absoluteSaturation = value.absoluteSaturation;
    ret.absoluteBrightness = value.absoluteBrightness;
    return ret;
}

bool GameToolbox::isRateEasing(int easingType) {
    return easingType > 0 && easingType < 7;
}

cocos2d::ccColor3B GameToolbox::multipliedColorValue(cocos2d::ccColor3B minColor, cocos2d::ccColor3B maxColor, float factor) {
    if (factor < 1.f) {
        if (factor > 0.f) {
            cocos2d::ccColor3B ret;
            ret.r = (maxColor.r - minColor.r) * factor + minColor.r;
            ret.g = (maxColor.g - minColor.g) * factor + minColor.g;
            ret.b = (maxColor.b - minColor.b) * factor + minColor.b;
            return ret;
        }
        else return minColor;
    }
    else return maxColor;
}

void GameToolbox::openAppPage() {
    cocos2d::CCApplication::sharedApplication()->openURL("https://store.steampowered.com/recommended/recommendgame/322170");
}

cocos2d::CCParticleSystemQuad* GameToolbox::particleFromString(gd::string const& str, cocos2d::CCParticleSystemQuad* system, bool dontUpdate) {
    cocos2d::ParticleStruct ret;
    GameToolbox::particleStringToStruct(str, ret);
    return GameToolbox::particleFromStruct(ret, system, dontUpdate);
}

void GameToolbox::postClipVisit() {
    glDisable(GL_SCISSOR_TEST);
}

void GameToolbox::preVisitWithClipRect(cocos2d::CCRect rect) {
    glEnable(GL_SCISSOR_TEST);
    GameToolbox::contentScaleClipRect(rect);
    cocos2d::CCDirector::sharedDirector()->getOpenGLView()->setScissorInPoints(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
}

cocos2d::ccColor3B GameToolbox::strongColor(cocos2d::ccColor3B color) {
    if (color.r != 255 && color.b != 255 && color.g != 255) {
        auto factor = std::min(1.5f, 255.f / std::max({ color.r, color.g, color.b }));
        color.r *= factor;
        color.g *= factor;
        color.b *= factor;
    }
    return color;
}

cocos2d::ccColor3B GameToolbox::transformColor(cocos2d::ccColor3B const& color, float h, float s, float v) {
    return GameToolbox::transformColor(color, { h, s, v, true, true });
}
#endif

#if defined(GEODE_IS_IOS)
#endif

