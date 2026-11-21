#include <Geode/binding/InputCaptureDelegate.hpp>

void InputCaptureDelegate::inputKeySelected(int) {}

#ifdef GEODE_IS_MACOS
InputCaptureDelegate::~InputCaptureDelegate() {}
#endif
