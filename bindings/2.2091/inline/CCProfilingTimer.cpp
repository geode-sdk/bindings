#include <Geode/mapping/CCProfilingTimer.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCProfilingTimer::CCProfilingTimer() {
    numberOfCalls = 0;
    m_dAverageTime1 = 0;
    m_dAverageTime2 = 0;
    totalTime = 0;
    minTime = 100000000;
    maxTime = 0;
}

cocos2d::CCProfilingTimer::~CCProfilingTimer() {}

bool cocos2d::CCProfilingTimer::initWithName(const char* timerName) {
    m_NameStr = timerName;
    return true;
}

const char* cocos2d::CCProfilingTimer::description() {
    static char s_desciption[512] = {'\0'};

    sprintf_s(s_desciption, 512,
        "%s ::\tavg1: %dµ,\tavg2: %dµ,\tmin: %dµ,\tmax: %dµ,\ttotal: %.2fs,\tnr calls: %d",
        m_NameStr.c_str(), m_dAverageTime1, m_dAverageTime2, minTime, maxTime, totalTime / 1000000.0, numberOfCalls);
    return s_desciption;
}

void cocos2d::CCProfilingTimer::reset() {
    numberOfCalls = 0;
    m_dAverageTime1 = 0;
    m_dAverageTime2 = 0;
    totalTime = 0;
    minTime = 100000000;
    maxTime = 0;
    gettimeofday((struct timeval*)&m_sStartTime, nullptr);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

