import QtQuick

Rectangle {//tu najpewniej bedzie obrazek zamiast zwyklego recta
    property alias centerText: centerText.text
    property alias bottomText: bottomText.text

    width: 304
    height:304
    color: Style.backgroundColor
    border {
        color: Style.grey1
        width: 5
    }
    radius: 152

    RadialBarShape {
        id: speedRevValue
        width: 250
        height: 250
        anchors.centerIn: parent
        value: 100
        dialType: RadialBarShape.DialType.MinToMax
        startAngle: 230
        spanAngle: 260
        progressColor: Style.orange
    }

    RadialBarShape {
        id: batteryValue
        width: 250
        height: 250
        anchors.centerIn: parent
        value: 100
        dialType: RadialBarShape.DialType.MinToMax
        startAngle: 150
        spanAngle: 60
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