import QtQuick

Rectangle {
    width: 1022
    height: 470
    color: Style.backgroundColor
    radius: 235
    border {
        color: Style.grey1
        width: 8
    }

    property DataViewModel viewModel: DataViewModel {}

    TurnSignals {
        anchors{
            left: parent.left
            leftMargin: 220
            top: parent.top
            topMargin: 30
        }
    }

    SpeedometerTemplate {
        id: speedometer
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 70
        }
        centerText: viewModel.currentSpeed
        bottomText: "km/h"
    }

    Text {
        id: rangeValue
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.bottom
        }
        text: viewModel.range + " km"
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
        centerText: viewModel.currentGear
        bottomText: viewModel.drivingMode
    }
}