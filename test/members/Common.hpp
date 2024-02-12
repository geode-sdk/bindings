#pragma once
#include <Geode/Enums.hpp>
#include <cocos-ext.h>
#include <cocos2d.h>
#include <fmod.hpp>
#include <cstdint>
#include <type_traits>
#include <unordered_map>
#include <Geode/GeneratedBinding.hpp>

template <auto V1, auto V2, auto V3, class... Types>
struct False {
    static constexpr auto value = false;
};

template<int Difference, int Expected, int Current, class Class, class Member, bool Predicate>
struct MemberIsOffsetBy {
    static_assert(False<Difference, Expected, Current, Class, Member>::value, "Member is offset by this value (Difference, Expected, Current, Class, Member)");
};

template<int Difference, int Expected, int Current, class Class, bool Predicate>
struct SizeIsOffsetBy {
    static_assert(False<Difference, Expected, Current, Class>::value, "Size is offset by this value (Difference, Expected, Current, Class)");
};

template<int Difference, int Expected, int Current, class Class, class Member>
struct MemberIsOffsetBy<Difference, Expected, Current, Class, Member, true> {
    
};

template<int Difference, int Expected, int Current, class Class>
struct SizeIsOffsetBy<Difference, Expected, Current, Class, true> {
    
};

template <class Member, class Class, int Offset, int Expected>
struct SingleMemberChecker {
    using IsOffsetBy = MemberIsOffsetBy<Offset - Expected, Expected, Offset, Class, Member, Expected == Offset>;
};

template <class Class, int Offset, int Expected>
struct SingleSizeChecker {
    using IsOffsetBy = SizeIsOffsetBy<Offset - Expected, Expected, Offset, Class, Expected == Offset>;
};

#ifndef USE_HACKY_SCRIPT

#define GEODE_MEMBER_CHECK(Class_, Member_, Offset_) \
    class Member_;                              \
    SingleMemberChecker<                        \
        Member_,                                \
        Class_,                                 \
        offsetof(Class_, Member_),              \
        Offset_                                 \
    >::IsOffsetBy GEODE_CONCAT(OffsetBy, __LINE__)

#define GEODE_SIZE_CHECK(Class_, Offset_) SingleSizeChecker<Class_, sizeof(Class_), Offset_>::IsOffsetBy GEODE_CONCAT(OffsetBy, __LINE__)

#else

#include "ConstexprString.hpp"

#define STRING_PREFIX "[GEODE_BEGIN]"
#define STRING_SUFFIX "[GEODE_END]"

#define GEODE_MEMBER_CHECK(Class_, Member_, Expected_) \
class Member_; \
GEODE_EXPORT const char* GEODE_CONCAT(OffsetBy, __LINE__) = to_literal([] { \
    MyString str; \
    str.push(STRING_PREFIX); \
    str.push(#Class_ "::" #Member_); \
    str.push('.'); \
    str.push_fmt(Expected_); \
    str.push('.'); \
    str.push_fmt(offsetof(Class_, Member_)); \
    str.push(STRING_SUFFIX); \
    return str; \
});

#define GEODE_SIZE_CHECK(Class_, Expected_) \
GEODE_EXPORT const char* GEODE_CONCAT(SizeOf, __LINE__) = to_literal([] { \
    MyString str; \
    str.push(STRING_PREFIX); \
    str.push("sizeof(" #Class_ ")"); \
    str.push('.'); \
    str.push_fmt(Expected_); \
    str.push('.'); \
    str.push_fmt(sizeof(Class_)); \
    str.push(STRING_SUFFIX); \
    return str; \
});



#endif
