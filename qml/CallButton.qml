import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

import "js/ionicons.js" as Ionicons

Button{
    property string fontFamily : "IonIcons"
    property string icon : "image://theme/user"
    property string buttonColor: "#1f1f1f"

    width: size.dp(86)
    height: width
    Image {
        width: 32
        height: 32
        anchors.centerIn: parent
        source: icon
        opacity: 0.5
    }
}
