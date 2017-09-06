import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

import "js/fontawesome.js" as FontAwesome
import "js/ionicons.js" as Ionicons

Item {
    width: parent.width
    height: size.dp(530+76)
    anchors.bottom: parent.bottom

    Rectangle{
        id: dialPad
        color:"#212121"
        width: parent.width
        height: size.dp(530)

        anchors{
            bottom: parent.bottom
        }

        Dialpad{}

        Item{
            anchors.bottom: parent.bottom
            width: parent.width
            height: size.dp(24 + 86)
            Item{
                width: parent.width*0.66666
                height: parent.height
                Button{
                    anchors.horizontalCenter: parent.horizontalCenter

                    width: size.dp(256)
                    height: size.dp(86)
                    Text {
                        anchors.centerIn: parent
                        font.pointSize: 52
                        font.family: "FontAwesome"
                        text: FontAwesome.Icon.Phone
                        color: "white"
                    }
                }
            }

            Button{
                width: size.dp(86)
                height: size.dp(86)
                Text {
                    anchors.centerIn: parent
                    font.pointSize: 42
                    font.family: "Ionicons"
                    text: Ionicons.Icon.person_add
                    color: "white"
                    opacity: 0.5
                }
            }
        }
    }

    Rectangle{
        color:"#141414"

        width: parent.width
        height: size.dp(76)

        anchors{
            bottom: dialPad.top
        }

        Button{
            id: carrierSelection

            width: parent.height
            height: width

            Text {
                anchors.centerIn: parent
                font.pointSize: 32
                font.family: "FontAwesome"
                text: FontAwesome.Icon.Phone
                color: "white"
                opacity: 0.75
            }
        }

        TextField {
            id: dialedNumber
            anchors.left: carrierSelection.right;
            anchors.right: dialerBackspace.left;
            anchors.margins: size.dp(20)
            style: touchStyle
            height: parent.height
        }

        Button{
            id: dialerBackspace
            anchors.right: parent.right

            width: parent.height
            height: width

            Text {
                anchors.centerIn: parent
                font.pointSize: 32
                font.family: "Ionicons"
                text: Ionicons.Icon.backspace
                color: "white"
                opacity: 0.75
            }
            onClicked: {
                dialedNumber.remove(dialedNumber.cursorPosition-1,dialedNumber.cursorPosition)
            }
        }

        FontLoader {
            source: "/usr/share/glacier-phone/res/fontawesome-webfont.ttf"
        }
        FontLoader {
            source: "/usr/share/glacier-phone/res/ionicons.ttf"
        }

        Component {
            id: touchStyle

            TextFieldStyle {
                textColor: "white"
                font.pointSize: size.dp(42)
                background: Item {
                    implicitHeight: size.dp(50)
                    implicitWidth: size.dp(320)
                    BorderImage {
                        source: "/usr/share/glacier-phone/res/textinput.png"
                        border.left: size.dp(8)
                        border.right: size.dp(8)
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }
            }
        }
    }
}
