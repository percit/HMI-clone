import QtQuick

QtObject{
    readonly property int currentSpeed: 87
    readonly property int currentGear: 3
    readonly property string drivingMode: drivingModes[0]
    readonly property var drivingModes: ["SPORT", "ECO", "COMFORT"]
}

