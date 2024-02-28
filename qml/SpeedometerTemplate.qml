import QtQuick

Rectangle {//tu najpewniej bedzie obrazek zamiast zwyklego recta
    property alias centerText: centerText.text
    property alias bottomText: bottomText.text

    width: 304
    height:304
    color: Style.backgroundColor
    border {
        color: Style.grey1
        width: 8
    }
    radius: 152

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