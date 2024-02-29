import QtQuick
import QtQuick.Window

Window {
    width: 1022
    height: 470
    visible: true
    color: "transparent"
    title: qsTr("HMI")
    
    MainScreen {
        anchors.centerIn: parent
    }
}
