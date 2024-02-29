import QtQuick
import QtPositioning
import QtLocation

Item {
    id: root

    Plugin {
        id: plugin
        name: "osm" //paid options are ofc better looking
        PluginParameter {
            name: "osm.mapping.providersrepository.disabled"
            value: "true"
        }
    }
    Plugin {
        name: "mapboxgl" //this would be nicer

        PluginParameter {
            name: 'mapboxgl.access_token'
            value: 'VALID_MAPBOX_TOKEN'
        }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: plugin
        zoomLevel: 12
        activeMapType: map.supportedMapTypes[0]
        copyrightsVisible: false
    } //map
} //item