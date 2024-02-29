import QtQuick

Rectangle {
    width: 1022
    height: 470
    radius: 235
    color: Style.backgroundColor
    border {
        color: Style.grey1
        width: 8
    }

    property DataViewModel viewModel: DataViewModel {}

    Indicators {
        width: 373; height: 68
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 15
        }
    }

    SpeedometerTemplate {
        id: speedometer
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 70
        }
        isSpeedometer: true
        orangeValue: viewModel.currentSpeed / 3.00
        blueValue: viewModel.batteryValue
        centerText: viewModel.currentSpeed
        bottomText: "km/h"
    }

    Text {
        id: rangeValue
        anchors{
            horizontalCenter: speedometer.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 45
        }
        text: viewModel.range + " km"
        color: "white"
        font.pixelSize: 20
    }

    MapModel {
        id: map
        anchors.centerIn:parent
        width: 250
        height: 300
    }

    ChargingStationDistance {
        anchors {
            horizontalCenter: map.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 30
        }
        distanceValue: viewModel.chargingStationDistance
    }

    SpeedometerTemplate {
        id: revCounter
        anchors{
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 70
        }
        isSpeedometer: false
        orangeValue: viewModel.revValue
        blueValue: viewModel.fuelValue
        centerText: viewModel.currentGear
        bottomText: viewModel.drivingMode
    }
}