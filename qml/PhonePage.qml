import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0
import QtQuick.Layouts 1.0

import "js/fontawesome.js" as FontAwesome
import "js/ionicons.js" as Ionicons

Page {

    FontLoader {
        source: "res/fontawesome-webfont.ttf"
    }
    FontLoader {
        source: "res/ionicons.ttf"
    }

    anchors.fill: parent

    HeaderPhone{
        id: toolBar
    }

    Rectangle{
        id: tabIndicator
        anchors.top: toolBar.bottom
        width: parent.width
        height: size.dp(40)
        color: "#141414"

        ParallaxText{
            labelText: "PHONE"
            parallaxPosition: dialerPage.x
        }
        ParallaxText{
            labelText: "HISTORY"
            parallaxPosition: callLogPage.x
        }
        ParallaxText{
            labelText: "CONTACTS"
            parallaxPosition: contactsPage.x
        }

        Rectangle {
            width: parent.height
            height: width
            anchors.left: parent.left
            rotation: -90
            gradient: Gradient {
                GradientStop { position: 1.0; color: "transparent" }
                GradientStop { position: 0.0; color: "#141414" }
            }
        }

        Rectangle {
            width: parent.height
            height: width
            anchors.right: parent.right
            rotation: 90
            gradient: Gradient {
                GradientStop { position: 1.0; color: "transparent" }
                GradientStop { position: 0.0; color: "#141414" }
            }
        }
    }

    Pager
    {
        id: pager
        anchors.top: tabIndicator.bottom
        anchors.bottom: parent.bottom
        width: parent.width

        model: VisualItemModel {
            DialerPage{
                id:dialerPage
            }
            CallLogPage{
                id: callLogPage
            }
            ContactsPage{
                id: contactsPage
            }
        }

        // Initial view should be the AppLauncher
        currentIndex: 0

    }

}
