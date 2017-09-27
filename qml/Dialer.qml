import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

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

            Button{
                id: callButton
                width: parent.width/2
                height: size.dp(86)
                Image {
                    anchors.centerIn: parent
                    width: 52
                    height: 52
                    source: "image://theme/phone"
                }
            }

            Button{
                width: parent.width/2
                height: size.dp(86)
                anchors.left:callButton.right
                Image {
                    width: 42
                    height: 42
                    anchors.centerIn: parent
                    source: "image://theme/user"
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
            Image {
                anchors.centerIn: parent
                width: 32
                height: 32
                source: "image://theme/phone"
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

            Image {
                width: 32
                height: 32
                anchors.centerIn: parent
                source: "image://theme/window-close"
                opacity: 0.75
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    dialedNumber.remove(dialedNumber.cursorPosition-1,dialedNumber.cursorPosition)
                }
                onPressAndHold: {
                    dialedNumber.text = ""
                }
            }
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
