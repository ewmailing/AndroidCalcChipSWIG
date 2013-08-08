NDK_TOOLCHAIN_VERSION=4.6
#TARGET_PLATFORM = android-17
APP_PLATFORM = android-14
APP_STL := stlport_static
#APP_STL := stlport_shared
ifeq ($(BUILD_X86), 1)
#	APP_ABI := armeabi armeabi-v7a x86
	APP_ABI := armeabi-v7a
else
	APP_ABI := armeabi-v7a
endif


TARGET_DEVICE := device
APP_OPTIM := debug
#APP_OPTIM := release
TI_DEBUG := 1

