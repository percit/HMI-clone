import QtQuick

Rectangle {
    width: 1022
    height: 470
    color: Style.backgroundColor
    border {
        color: Style.grey1
        width: 8
    }
    radius: 235

    SpeedometerTemplate {
        id: speedometer
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 70
        }
        centerText: "87"
        bottomText: "km/h"
    }

    MapModel {
        anchors.centerIn:parent
        width: 250
        height: 300
    }

    SpeedometerTemplate {
        id: revCounter
        anchors{
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 70
        }
        centerText: "3"
        bottomText: "SPORT"
    }
}