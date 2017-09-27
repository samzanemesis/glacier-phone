import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

Item{
    id: dialer
    width: size.dp(480)
    height: size.dp(360)

    property int positon: 0
    property bool replace: false
    property string string: ""

    anchors{
        top: parent.top
        topMargin: size.dp(32)
        horizontalCenter: parent.horizontalCenter
    }

    GridLayout {
        height: parent.height
        width: parent.width
        columns: 3
        Repeater {
            model: dialerModel
            delegate: Button {

                Layout.fillWidth: true
                Layout.fillHeight: true
                MouseArea{
                    anchors.fill: parent

                    onClicked: {
                        dialedNumber.insert(dialedNumber.cursorPosition,model.digit)
                    }

                    onPressAndHold: {
                        string = model.T9
                        replaceTimer.start()
                    }
                    onReleased: {
                        replaceTimer.stop()
                        positon = 0
                        replace = false
                    }
                }
                Item{
                    height: parent.height
                    width:  parent.width/2

                    Text {
                        font.pointSize: 40
                        color: "white"
                        text: model.digit
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Light
                        anchors.right: parent.right
                        Text {
                            font.pointSize: 12
                            color: "white"
                            text: model.T9
                            height: parent.paintedHeight
                            font.weight: Font.Light
                            verticalAlignment : Text.AlignBottom
                            anchors.left: parent.right
                            opacity: 0.5
                        }
                    }
                }
            }
        }
    }

    ListModel {
        id: dialerModel

        ListElement {
            digit: "1"
            T9: ""
        }
        ListElement {
            digit: "2"
            T9: "ABC"
        }
        ListElement {
            digit: "3"
            T9: "DEF"
        }
        ListElement {
            digit: "4"
            T9: "GHI"
        }
        ListElement {
            digit: "5"
            T9: "JKL"
        }
        ListElement {
            digit: "6"
            T9: "MNO"
        }
        ListElement {
            digit: "7"
            T9: "PQRS"
        }
        ListElement {
            digit: "8"
            T9: "TUV"
        }
        ListElement {
            digit: "9"
            T9: "WXYZ"
        }
        ListElement {
            digit: "*"
            T9: ""
        }
        ListElement {
            digit: "0"
            T9: "+"
        }
        ListElement {
            digit: "#"
            T9: ""
        }
    }

    Timer{
        id: replaceTimer
        repeat: true
        interval: 800
        onTriggered: {
            if(positon > string.length)
            {
                positon = 0
            }
            if(positon != 0){
                dialedNumber.remove(dialedNumber.cursorPosition-1,dialedNumber.cursorPosition)
            }
            dialedNumber.insert(dialedNumber.cursorPosition, string.substring(positon,positon+1))
            positon++
            replace = true
        }
    }
}
