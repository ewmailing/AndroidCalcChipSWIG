LOCAL_PATH := $(call my-dir)
THIS_DIR := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -g "-I$(TI_MOBILE_SDK)/android/native/include" -I$(SYSROOT)/usr/include
#LOCAL_C_INCLUDES += "/Users/ewing/Source/GIT/Chipmunk2D/include/chipmunk"

# Several places in generated code we set some jvalues to NULL and
# since NDK r8b we'd get warnings about each one.
#LOCAL_CFLAGS += -Wno-conversion-null

# cf https://groups.google.com/forum/?fromgroups=#!topic/android-ndk/Q8ajOD37LR0
#LOCAL_CFLAGS += -Wno-psabi

#LOCAL_CFLAGS += -Wno-error=format-security
#LOCAL_CFLAGS += -std=c99

# Yes, I know this lets me crash things. This is what I want in crash test dummy.
#LOCAL_CFLAGS += -fpermissive

# These are the LOCAL_MODULE names as defined in the prebuilt module's Android.mk
LOCAL_SHARED_LIBRARIES := chipmunk_shared
#LOCAL_STATIC_LIBRARIES := chipmunk_static
#LOCAL_LDLIBS := -llog


#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -llog -L$(TARGET_OUT) "-L$(TI_MOBILE_SDK)/android/native/libs/$(TARGET_ARCH_ABI)" -lkroll-v8 -L/Users/ewing/Source/LANICA/SWIG_EXPERIMENTS3/AndroidCalcSwig/CalcSwig/libs/$(TARGET_ARCH_ABI) -lchipmunk
#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -llog -L$(TARGET_OUT) "-L$(TI_MOBILE_SDK)/android/native/libs/$(TARGET_ARCH_ABI)" -lkroll-v8 -L/Users/ewing/Source/LANICA/SWIG_EXPERIMENTS3/AndroidCalcSwig/CalcSwig_corruptedStaticBody/libs/$(TARGET_ARCH_ABI) -lchipmunk
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -llog -L$(TARGET_OUT) "-L$(TI_MOBILE_SDK)/android/native/libs/$(TARGET_ARCH_ABI)" -lkroll-v8 

LOCAL_MODULE := CalcSwig 
LOCAL_SRC_FILES := moduleJNI.cpp example.c example_wrap_javascript_v8.cpp

include $(BUILD_SHARED_LIBRARY)



# Remember: The NDK_MODULE_PATH environmental variable must contain the modules directories in the search path.

#$(call import-add-path,<Chipmunk-Physics>/modules/)
# android build system will look for folder `chipmunk`
# in all import paths:
$(call import-module,Chipmunk2D) 


