LOCAL_PATH := $(call my-dir)
THIS_DIR := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -g "-I$(TI_MOBILE_SDK)/android/native/include" -I$(SYSROOT)/usr/include
#LOCAL_C_INCLUDES += "/Users/ewing/Source/LANICA/SWIG_EXPERIMENTS3/iOSChipmunkSwig/CalcSwig/Classes"
LOCAL_C_INCLUDES += "/Users/ewing/Source/GIT/Chipmunk2D/include/chipmunk"

# Several places in generated code we set some jvalues to NULL and
# since NDK r8b we'd get warnings about each one.
LOCAL_CFLAGS += -Wno-conversion-null

# cf https://groups.google.com/forum/?fromgroups=#!topic/android-ndk/Q8ajOD37LR0
LOCAL_CFLAGS += -Wno-psabi
LOCAL_CFLAGS += -std=c99
#-DCP_ALLOW_PRIVATE_ACCESS=1
#LOCAL_CFLAGS += -Wno-error=format-security
#LOCAL_CFLAGS += -std=c99

# Yes, I know this lets me crash things. This is what I want in crash test dummy.
#LOCAL_CFLAGS += -fpermissive

#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -llog -L$(TARGET_OUT) "-L$(TI_MOBILE_SDK)/android/native/libs/$(TARGET_ARCH_ABI)" -lkroll-v8 -L/Users/ewing/Source/LANICA/SWIG_EXPERIMENTS3/AndroidCalcSwig/CalcSwig/libs/$(TARGET_ARCH_ABI) -lchipmunk
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -llog -L$(TARGET_OUT) "-L$(TI_MOBILE_SDK)/android/native/libs/$(TARGET_ARCH_ABI)" -lkroll-v8 -L/Users/ewing/Source/LANICA/SWIG_EXPERIMENTS3/AndroidCalcSwig/CalcSwig/libs/$(TARGET_ARCH_ABI)

LOCAL_MODULE := CalcSwig 
LOCAL_SRC_FILES := ./chipmunk.c \
./cpBody.c \
./cpSpace.c \
./cpSpaceStep.c \
./cpBBTree.c \
./cpHashSet.c \
./cpShape.c \
./cpBB.c \
./cpCollision.c \
./cpSweep1D.c \
./cpPolyShape.c \
./cpSpaceQuery.c \
./cpVect.c \
./cpArray.c \
./cpArbiter.c \
./cpSpaceComponent.c \
./cpSpaceHash.c \
./cpSpatialIndex.c \
./constraints/cpPinJoint.c \
./constraints/cpGearJoint.c \
./constraints/cpSlideJoint.c \
./constraints/cpRotaryLimitJoint.c \
./constraints/cpRatchetJoint.c \
./constraints/cpConstraint.c \
./constraints/cpSimpleMotor.c \
./constraints/cpGrooveJoint.c \
./constraints/cpDampedSpring.c \
./constraints/cpPivotJoint.c \
./constraints/cpDampedRotarySpring.c \
moduleJNI.cpp \
example.c example_wrap_javascript_v8.cpp

include $(BUILD_SHARED_LIBRARY)
