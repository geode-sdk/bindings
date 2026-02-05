#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCShaderCache::reloadDefaultShaders() {
    CCGLProgram* program;
    program = this->programForKey(kCCShader_PositionTextureColor);
    program->reset();
    this->loadDefaultShader(program, 0);
    program = this->programForKey(kCCShader_PositionTextureColorAlphaTest);
    program->reset();
    this->loadDefaultShader(program, 1);
    program = this->programForKey(kCCShader_PositionColor);
    program->reset();
    this->loadDefaultShader(program, 2);
    program = this->programForKey(kCCShader_PositionTexture);
    program->reset();
    this->loadDefaultShader(program, 3);
    program = this->programForKey(kCCShader_PositionTexture_uColor);
    program->reset();
    this->loadDefaultShader(program, 4);
    program = this->programForKey(kCCShader_PositionTextureA8Color);
    program->reset();
    this->loadDefaultShader(program, 5);
    program = this->programForKey(kCCShader_Position_uColor);
    program->reset();
    this->loadDefaultShader(program, 6);
    program = this->programForKey(kCCShader_PositionLengthTexureColor);
    program->reset();
    this->loadDefaultShader(program, 7);
}
#endif

