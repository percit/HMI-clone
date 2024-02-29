import QtQuick

QtObject{
    readonly property int currentSpeed: 87
    readonly property int currentGear: 3
    readonly property string drivingMode: drivingModes[0]
    readonly property int range: 251
    readonly property int chargingStationDistance: 30
    readonly property int batteryValue: 80
    readonly property int fuelValue: 40
    readonly property int revValue: 30 

    readonly property var drivingModes: ["SPORT", "ECO", "COMFORT"]
}

