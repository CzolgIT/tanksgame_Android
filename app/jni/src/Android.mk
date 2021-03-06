LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include/$(LOCAL_PATH)/../SD2_image/

# Add your application source files here...
LOCAL_SRC_FILES := Main.cpp Game.cpp Manager.cpp Button.cpp FirstLaunch.cpp _Scene.cpp Window.cpp Texture.cpp Title.cpp Menu.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
