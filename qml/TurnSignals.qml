import QtQuick

Item {
    width: 550
    height: 40

    Image {
        id: leftSignal
        width: 30; height: 30
        source: "qrc:/assets/arrowleft.png"
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: rightSignal
        width: 30; height: 30
        source: "qrc:/assets/arrowright.png"
        anchors{
            left: leftSignal.right
            leftMargin: 530
            verticalCenter: parent.verticalCenter
        }
    }
}