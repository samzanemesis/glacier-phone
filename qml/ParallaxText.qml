import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Text {
    property string labelText: "PLACEHOLDER"
    property int parallaxPosition
    anchors.verticalCenter: parent.verticalCenter

    text: labelText
    color: "white"
    font.pointSize: 16
    font.capitalization: Font.AllUppercase
    opacity: 0.5

    x: {
        (parent.width - paintedWidth + parallaxPosition)/2
    }
}
