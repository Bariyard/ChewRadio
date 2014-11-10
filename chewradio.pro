TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
ICON = resources/icon.png
macx: ICON = resources/chewradio.icns
win32: RC_FILE = resources/chewradio.rc

OTHER_FILES += resources/chewradio.rc
