import QtQuick
import QtQuick.Window
import StyleSingleton 1.0

Window {
    width: 1022
    height: 470
    visible: true
    title: qsTr("HMI")
    
    MainScreen {
        anchors.centerIn: parent
    }
}
