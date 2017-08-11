import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Item {
    width: parent.width
    height: parent.height

    Text
    {
        text: " This is the \n Contacts Page "
        anchors.centerIn: parent
        fontSizeMode: Text.Fit;
        minimumPixelSize: 10;
        font.pixelSize: 72
        horizontalAlignment: Text.AlignHCenter
        color: "white"
    }
}
