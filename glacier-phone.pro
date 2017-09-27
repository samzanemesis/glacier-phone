TARGET = glacier-phone
target.path = /usr/bin
SOURCES += src/glacier-phone.cpp

desktop.files = glacier-phone.desktop
desktop.path = /usr/share/applications

qml.files = qml/*.qml
qml.path = /usr/share/glacier-phone/qml

res.files = qml/res/*
res.path = /usr/share/glacier-phone/res

icons.files = icons/256x256/glacier-phone.png
icons.path = /usr/share/icons/hicolor/256x256/apps

OTHER_FILES += qml/glacier-phone.qml \
    qml/pages/SecondPage.qml \
    rpm/glacier-phone.spec \
    translations/*.ts

INSTALLS += target desktop qml icons res

TRANSLATIONS += translations/glacier-phone-de.ts

DISTFILES += \
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
