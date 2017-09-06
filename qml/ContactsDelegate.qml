import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

import QtGraphicalEffects 1.0

Item {
    property string contactName : "Cuck"
    property string contactAbout
    property string contactLocation
    property string contactPhone
    property string contactImage : "defaultContact.png"
    width: parent.width
    height: size.dp(96)

    anchors.horizontalCenter: parent.horizontalCenter

    Item{
        id: callerPicture
        height: parent.height
        width: height
        Image{
            id: callerPictureImage
            source: "/usr/share/glacier-phone/res/tempCallers/" + contactImage
            width: size.dp(75)
            height: width
            anchors.centerIn: parent
            onStatusChanged: {
                if (status == Image.Error)
                {
                    source = "/usr/share/glacier-phone/res/defaultContact.png";
                }
            }
            visible: false
        }

        Rectangle {
            id: mask
            anchors { fill: callerPictureImage }
            color: "black"
            radius: height/2
            clip: true
            visible: false
        }

        OpacityMask {
            anchors.fill: mask
            source: callerPictureImage
            maskSource: mask
        }
    }
    Item{
        height: size.dp(75)
        anchors{
            left: callerPicture.right
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
        Text{
            id: contName
            anchors{
                top: parent.top
                left: parent.left
            }
            text: contactName
            font.pointSize: 21
            font.weight: Font.Light
            color:"white"
        }

        /*Text{
            id: contAbout
            anchors{
                top: contName.bottom
                left: contName.left
            }
            text: contactAbout
            font.weight: Font.Light
            font.pointSize: 10
            color:"white"
        }*/

        Text{
            id: contNumber
            anchors{
                top: contName.bottom
                left: contName.left
            }
            text: contactLocation + " • " + contactPhone
            font.pointSize: 12

            color:"white"
        }
    }


}
