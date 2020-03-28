include($$PWD/../../plugins.pri)
include($$PWD/../common/common.pri)

DESTDIR = $$PLUGINS_PREFIX/Visual
TARGET = plusfoldwave

HEADERS += plusfoldwave.h \
           visualplusfoldwavefactory.h
           
SOURCES += plusfoldwave.cpp \
           visualplusfoldwavefactory.cpp

unix{
    QMAKE_CLEAN = libplusfoldwave.so
    target.path = $$LIB_DIR/qmmp/Visual
    INSTALLS += target
}