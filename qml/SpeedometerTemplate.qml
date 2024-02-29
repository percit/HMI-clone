import QtQuick

Image {
    property alias centerText: centerText.text
    property alias bottomText: bottomText.text
    property bool isSpeedometer: true
    property real orangeValue: 0
    property real blueValue: 0

    width: 304
    height:304
    source: isSpeedometer ? "qrc:/assets/left_circle.png" : "qrc:/assets/right_circle.png"

    RadialBarShape {
        id: speedRevValue
        width: 250
        height: 250
        anchors.centerIn: parent
        value: orangeValue
        dialType: RadialBarShape.DialType.MinToMax
        startAngle: 227
        spanAngle: 267
        progressColor: Style.orange
    }

    RadialBarShape {
        id: batteryValue
        width: 250
        height: 250
        anchors.centerIn: parent
        value: blueValue
        dialType: RadialBarShape.DialType.MinToMax
        startAngle: 152
        spanAngle: 58
        progressColor: Style.blue
    }

    Text {
        id: centerText
        anchors.centerIn: parent
        font.pixelSize: 90
        color: "white"
    }
    Text {
        id: bottomText
        anchors{
            horizontalCenter: centerText.horizontalCenter
            top: centerText.bottom
            topMargin: -15
        }
        color: Style.grey1
        font.pixelSize: 20
    }
}