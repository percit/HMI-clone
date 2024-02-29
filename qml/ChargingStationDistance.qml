import QtQuick

Item {
    width: 150
    height: 50
    property int distanceValue: 30
    Image {
        id: image
        source: "qrc:/assets/charging_station_distance.png"
    }
    Text {
        anchors {
            verticalCenter: image.verticalCenter
            left: image.right
            leftMargin: 10
        }
        text: distanceValue + " km"
        color: "white"
    }
}