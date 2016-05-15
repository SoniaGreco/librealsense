include(include.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_CXXFLAGS += -std=c++11
PKGCONFIG += glfw3 gl libusb-1.0
CONFIG += link_pkgconfig
INCLUDEPATH += ../include
LIBS += -pthread

SOURCES += ../examples/cpp-multi-threading-2.cpp
HEADERS += ../examples/concurrency.hpp

LIBS += -L$$DESTDIR/ -lrealsense

PRE_TARGETDEPS += $$DESTDIR/librealsense.a

