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