import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

import "js/ionicons.js" as Ionicons

// Currently qtquickcontrols-nemo isn't very malleable nor customizable,
// this will be changed properly in time
Rectangle {

    width: parent.width
    height: size.dp(75)

    color: "#212121"

    z: 200

    Item{
        width: parent.width/2 - size.dp(20)
        height: parent.height  - size.dp(10)

        anchors{
            left: parent.left
            leftMargin: size.dp(20)
            verticalCenter: parent.verticalCenter
        }

        Text{
            anchors{
                left: parent.left
                right: parent.right
                verticalCenter: parent.verticalCenter
            }

            text: "Phone"
            color: "white"

            font.pointSize: size.dp(24)
        }
    }

    Row{

        width: parent.width/2 - size.dp(20)
        height: parent.height - size.dp(10)

        anchors{
            right: parent.right
            rightMargin: size.dp(20)
            verticalCenter: parent.verticalCenter
        }

        layoutDirection: Qt.RightToLeft

        spacing: size.dp(5)

        CallButton{
            width: parent.height
            icon: "image://theme/user"
        }
        CallButton{
            width: parent.height
            icon: "image://theme/search"
        }

    }

    Rectangle {
        id: headerDimmer
        width: parent.width
        height: size.dp(20)
        anchors.top: parent.bottom

        gradient: Gradient {
            GradientStop { position: 1.0; color: "transparent" }
            GradientStop { position: 0.0; color: Qt.rgba(0, 0, 0, 0.25) }
        }
    }
}
