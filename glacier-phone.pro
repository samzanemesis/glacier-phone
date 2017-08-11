TARGET = glacier-phone

CONFIG += sailfishapp

SOURCES += src/glacier-phone.cpp

OTHER_FILES += qml/glacier-phone.qml \
    qml/cover/CoverPage.qml \
    qml/pages/SecondPage.qml \
    rpm/glacier-phone.changes.in \
    rpm/glacier-phone.spec \
    rpm/glacier-phone.yaml \
    translations/*.ts \
    glacier-phone.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/glacier-phone-de.ts

DISTFILES += \
    qml/js/fontawesome.js \
    qml/js/ionicons.js \
    qml/res/fontawesome-webfont.ttf \
    qml/res/ionicons.ttf \
    qml/Dialpad.qml \
    qml/Dialer.qml \
    qml/CallButton.qml \
    qml/ContactsDelegate.qml \
    qml/res/defaultCallerImage.png \
    qml/res/defaultContact.png \
    qml/res/textinput.png \
    qml/res/tempCallers/contact1.png \
    qml/res/tempCallers/contact2.png \
    qml/res/tempCallers/contacts4.png \
    qml/res/tempCallers/contacts5.png \
    qml/res/tempCallers/contacts6.png \
    qml/res/tempCallers/contact3.png \
    qml/res/tempCallers/contact4.png \
    qml/res/tempCallers/contact5.png \
    qml/res/tempCallers/contact6.png \
    qml/SpeeddialList.qml \
    qml/PhonePage.qml \
    qml/Pager.qml \
    qml/DialerPage.qml \
    qml/CallLogPage.qml \
    qml/ContactsPage.qml \
    qml/HeaderPhone.qml \
    qml/CallPage.qml \
    qml/ParallaxText.qml
