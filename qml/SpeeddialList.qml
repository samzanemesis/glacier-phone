import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Item{
    width: parent.width

    anchors.bottom: dialer.top


    //For future reference, this should list the last caller,
    //then the most dialed/received numbers

    ListView {
        id: flickableview
        model: dummyContacts
        anchors.fill: parent
        clip: true

        delegate: ContactsDelegate{
            width: size.dp(430)
            contactName: model.name
            contactAbout: model.about
            contactLocation: model.location
            contactPhone: model.phone
            contactImage: model.contactImage
        }

        //HACK :(
        onContentYChanged: {
            dialer.anchors.bottomMargin = Math.max(Math.min(0, -flickableview.contentY*3), -size.dp(530))
        }
    }


    //**********TEMP
    ListModel {
        id: dummyContacts
        ListElement {
            name: "Sam Pavlovic"
            about: "Nemo Mobile Dev"
            location: "Home"
            phone: "+5531995550812"
            contactImage: "contact1.png"
        }
        ListElement {
            name: "Aleksi Suomalainen"
            about: "Nemo Mobile Dev"
            location: "Office"
            phone: "123 456 7890"
            contactImage: "contact2.png"
        }
        ListElement {
            name: "André Staltz"
            about: "Cycle.js Developer"
            location: "Office"
            phone: "420 555 1337"
            contactImage: "contact3.png"
        }
        ListElement {
            name: "Andrea Bernabei"
            about: "Samsung UK"
            location: "Office"
            phone: "420 555 1337"
            contactImage: "contact4.png"
        }
        ListElement {
            name: "Sergey Chuplgin"
            about: ""
            location: "Office"
            phone: "420 555 1337"
            contactImage: "contact5.png"
        }
        ListElement {
            name: "Kahelin Eetu"
            about: "Student"
            location: "Home"
            phone: "420 555 1337"
            contactImage: "contact6.png"
        }
        ListElement {
            name: "Christopher Hind"
            about: "Software Engineer"
            location: "Home"
            phone: "+44420420420"
            contactImage: "contact7.png"
        }
        ListElement {
            name: "Dummy Contact"
            about: "Data on the net"
            location: "Home"
            phone: "000 000 000"
        }
        ListElement {
            name: "Dummy Contact"
            about: "Data on the net"
            location: "Home"
            phone: "000 000 000"
        }
        ListElement {
            name: "Dummy Contact"
            about: "Data on the net"
            location: "Home"
            phone: "000 000 000"
        }
        ListElement {
            name: "Dummy Contact"
            about: "Data on the net"
            location: "Home"
            phone: "000 000 000"
        }
        //TEMP**********
    }
}

