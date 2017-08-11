import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Rectangle{
    width: parent.width
    height: parent.height
    color:"#0c0c0c"
    SpeeddialList{
        id:speedDial
        anchors.top: parent.top
    }

    Dialer{
        id:dialer
    }
}
