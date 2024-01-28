#pragma once

#include <string>
#include <array>
#include <concepts>
#include <string_view>

// c++ jank

struct MyString {
    std::array<char, 1024> buffer{};
    std::size_t m_size = 0;
    constexpr MyString() {
        buffer[0] = 0;
    }
    constexpr char* begin() {
        return buffer.data();
    }
    constexpr char* end() {
        return buffer.data() + m_size;
    }
    constexpr char* data() { return buffer.data(); }
    constexpr std::size_t size() const { return m_size; }

    constexpr void push(char x) {
        buffer[m_size++] = x;
        buffer[m_size] = 0;
    }
    constexpr void push(std::string_view x) {
        std::copy(x.begin(), x.end(), end());
        m_size += x.size();
        buffer[m_size] = 0;
    }
    constexpr operator std::string_view() {
        return std::string_view(begin(), end());
    }

    template <std::integral Int>
    constexpr void push_fmt(Int value) {
        if (value < 0) {
            push('-');
            value = -value;
        }

        constexpr auto digits = "0123456789abcedf";

        std::array<char, 64> buffer;
        auto index = buffer.size();
        do {
            const auto digit = value % 10;
            value /= 10;
            buffer[--index] = digits[digit];
        } while (value != 0);

        for (; index < buffer.size(); ++index) {
            push(buffer[index]);
        }
    }
};

struct BigArray {
    std::array<char, 1024> data{};
    std::size_t size = 0;
};

consteval auto to_oversize_array(auto callable) {
    BigArray res;
    auto str = callable();
    std::copy(str.begin(), str.end(), res.data.begin());
    res.size = str.size() + 1; // i want the null terminator
    return res;
}

consteval auto to_fit_array(auto callable) {
    constexpr auto oversized = to_oversize_array(callable);
    std::array<char, oversized.size> result;
    std::copy(oversized.data.data(), oversized.data.data() + oversized.size, result.begin());
    return result;
}

template <auto data>
consteval const auto& make_static() {
    return data;
}

consteval const char* to_literal(auto callable) {
    constexpr auto& static_data = make_static<to_fit_array(callable)>();
    return static_data.data();
}

// c++ jank ends here
