TARGET = glacier-phone

SOURCES += src/glacier-phone.cpp

OTHER_FILES += qml/glacier-phone.qml \
    qml/cover/CoverPage.qml \
    qml/pages/SecondPage.qml \
    rpm/glacier-phone.spec \
    translations/*.ts \
    glacier-phone.desktop

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
