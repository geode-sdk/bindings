#include <Geode/Geode.hpp>

UndoObject::UndoObject() {
    m_objectCopy = nullptr;
    m_command = (UndoCommand)0;
    m_objects = nullptr;
    m_redo = false;
    m_undoTransform = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool UndoObject::init(GameObject* object, UndoCommand command) {
    if (object) {
        m_objectCopy = GameObjectCopy::create(object);
        m_objectCopy->retain();
    }
    m_command = command;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
UndoObject::~UndoObject() {
    CC_SAFE_RELEASE(m_objectCopy);
    CC_SAFE_RELEASE(m_objects);
}

UndoObject* UndoObject::create(GameObject* object, UndoCommand command) {
    auto ret = new UndoObject();
    if (ret->init(object, command)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

UndoObject* UndoObject::createWithArray(cocos2d::CCArray* array, UndoCommand command) {
    auto ret = new UndoObject();
    if (ret->init(array, command)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

UndoObject* UndoObject::createWithTransformObjects(cocos2d::CCArray* objects, UndoCommand command) {
    auto ret = new UndoObject();
    if (ret->initWithTransformObjects(objects, command)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool UndoObject::init(cocos2d::CCArray* array, UndoCommand command) {
    if (array) {
        m_objects = cocos2d::CCArray::create();
        m_objects->addObjectsFromArray(array);
        m_objects->retain();
    }
    m_command = command;
    return true;
}

bool UndoObject::initWithTransformObjects(cocos2d::CCArray* objects, UndoCommand command) {
    m_objects = cocos2d::CCArray::create();
    for (int i = 0; i < objects->count(); i++) {
        m_objects->addObject(GameObjectCopy::create(static_cast<GameObject*>(objects->objectAtIndex(i))));
    }
    m_objects->retain();
    m_command = command;
    return true;
}

void UndoObject::setObjects(cocos2d::CCArray* objects) {
    if (m_objects != objects) {
        CC_SAFE_RETAIN(objects);
        CC_SAFE_RELEASE(m_objects);
        m_objects = objects;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

