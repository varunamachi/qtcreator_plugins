#include(../plugin.pri)
## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=/data/kode/g3/qt-creator-4.0.0-beta1

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):IDE_BUILD_TREE=/data/kode/g3/build-qtcreator-qt56-Debug

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)
INCLUDEPATH += $$QTCREATOR_SOURCES/src/

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on OS X
USE_USER_DESTDIR = yes

DEFINES += GO_LIBRARY
CONFIG += c++11

# Go files

SOURCES += \
    golangplugin.cpp \
    goproject.cpp \
    goprojectfile.cpp \
    goprojectmanager.cpp \
    goprojectnode.cpp \
    filefilteritems.cpp \
    goprojectfileformat.cpp \
    goprojectitem.cpp \
    toolchain.cpp \
    toolchainmanager.cpp \
    toolchainoptionspage.cpp \
    toolchainconfigwidget.cpp \
    gotoolchain.cpp \
    gobuildconfiguration.cpp \
    gokitinformation.cpp \
    gorunconfigurationfactory.cpp \
    gorunconfiguration.cpp \
    goapplicationwizard.cpp

HEADERS += \
    golangplugin.h \
    golangconstants.h \
    golang_global.h \
    goproject.h \
    goprojectfile.h \
    goprojectmanager.h \
    goprojectnode.h \
    filefilteritems.h \
    goprojectfileformat.h \
    goprojectitem.h \
    toolchain.h \
    toolchainmanager.h \
    toolchainoptionspage.h \
    toolchainconfigwidget.h \
    gotoolchain.h \
    gobuildconfiguration.h \
    gokitinformation.h \
    gorunconfigurationfactory.h \
    gorunconfiguration.h \
    goapplicationwizard.h

OTHER_FILES +=
    GoLang.pluginspec.in

RESOURCES += \
    golangplugin.qrc
