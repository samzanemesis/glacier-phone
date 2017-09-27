import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Rectangle{

    anchors.fill: parent
    color: "#151515"

    Rectangle{
        id: header
        width: parent.width
        height: size.dp(86)
        color: "#151515"
    }

    Image {
        id: callerImage

        width: parent.width
        height: parent.width * 0.65

        anchors.top: header.bottom

        asynchronous : true
        fillMode: Image.PreserveAspectCrop
        clip: true
        source: "/usr/share/glacier-phone/res/defaultCallerImage.png"
    }

    Item{
         width:parent.width
         anchors.top: callerImage.bottom;
         anchors.bottom: parent.bottom;
         Item{
            id: callerID
            width: parent.width
            height: size.dp(275)
            Text {
                anchors.centerIn: parent
                text: "420420420"
                color: "white"
                font.pointSize: 36
            }
         }
         Item{
             width:parent.width
             anchors.top: callerID.bottom;
             anchors.bottom: parent.bottom;

             Button{
                 id: hangButton
                 anchors{
                     horizontalCenter: parent.horizontalCenter
                     bottom: parent.bottom
                     bottomMargin: size.dp(50)
                 }
                 style: ButtonStyle {
                     roundedButton: true
                     bgColor: "#ff3b2f"
                     centerColor : "#ffbd99"
                 }
                 width: size.dp(256)
                 height: size.dp(86)
                 Image {
                     source: "image://theme/phone"
                     width: 52
                     height: 52
                     anchors.centerIn: parent

                     transform: Rotation {
                         origin.x: size.dp(26)
                         origin.y: size.dp(35)
                         angle: 135} //HACK
                 }
             }

             Item{
                 width: size.dp(400)
                 height: size.dp(86)
                 anchors{
                     horizontalCenter: parent.horizontalCenter
                     bottom: hangButton.top
                     bottomMargin: size.dp(50)
                 }
                 Row {
                     anchors.fill: parent
                     spacing: (parent.width - size.dp(86))/2 - size.dp(86) //Change "2" to numbuttons - 1
                     CallButton{
                         icon: "image://theme/volume-up"
                     }
                     CallButton{
                         icon: "image://theme/microphone-slash"
                     }
                     CallButton{
                         icon: "image://theme/th"
                     }
                 }


             }
         }

    }

}
