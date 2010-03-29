#$(call inherit-product, build/target/product/generic.mk)

# Manually set the policy and PRODUCT_PACKAGES so we can tweak them 
# depending on whether or not we build with Google. There is no way
# to override PRODUCT_PACKAGES from an inheriting product yet.

# build/target/product.core.mk
PRODUCT_POLICY := android.policy_phone
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=droid.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES += \
    framework-res \
    Browser \
    Contacts \
    Launcher \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    Bugreport


# build/target/product/generic.mk
PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    AlarmClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery \
    Mms \
    Music \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider
# end generic.mk

PRODUCT_NAME := alldroid_hdpi
PRODUCT_BRAND := alldroid
PRODUCT_DEVICE := generic

USE_CAMERA_STUB := false

# Let's grab the hdpi versions of apps and some extras
PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpapers \
    VoiceDialer \
    libRS \
    librs_jni

PRODUCT_PACKAGES += Superuser 

# Build WebKit with V8
#JS_ENGINE=v8

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk


PRODUCT_LOCALES := \
    hdpi
