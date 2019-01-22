#-------------------------------------------------
#
# Project created by QtCreator 2016-12-20T16:45:23
#
#-------------------------------------------------
VERSION = 1.30.1

DEFINES += APP_VERSION=\\\"$$VERSION\\\"

CONFIG(release, debug|release) {
    DEFINES += USE_RELEASE=1
}
CONFIG(debug, debug|release) {
    DEFINES += USE_DEBUG=1
}
unix:!macx {
    DEFINES += USE_RELAUNCH=1 BUILD_LINUX=1 BUILD_MACOS=0 BUILD_WINDOWS=0
}
win32:win64 {
    DEFINES += USE_RELAUNCH=1 BUILD_WINDOWS=1 BUILD_LINUX=0 BUILD_MACOS=0
}
macx {
    DEFINES += BUILD_MACOS=1 BUILD_LINUX=0 BUILD_WINDOWS=0
}

QT       += core gui  network widgets
# concurrent
TARGET = orionlauncher
TEMPLATE = app

CONFIG += c++11

SOURCES += main.cpp\
        orionlauncherwindow.cpp \
        serverlistitem.cpp \
        proxylistitem.cpp \
        changelogform.cpp \
        updatemanager.cpp \
    xxhash.cpp

HEADERS  += orionlauncherwindow.h \
        serverlistitem.h \
        proxylistitem.h \
        qzipreader_p.h \
        changelogform.h \
        updatemanager.h \
        updateinfo.h \
        xxhash.h \
    qzipwriter_p.h


FORMS    += orionlauncherwindow.ui \
    changelogform.ui

OTHER_FILES += orionlauncher.rc

RC_FILE = orionlauncher.rc

RESOURCES += \
    res.qrc
