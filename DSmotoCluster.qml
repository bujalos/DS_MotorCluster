import QtQuick 2.12
import DSmotoCluster 1.0

Item {
    id: element
    width: Constants.width
    height: Constants.height

    Background {
        width: 1920
        height: 720
    }

    Tachometer {
        id: tachometer
        y: 80
        antialiasing: false
        anchors.horizontalCenter: parent.horizontalCenter
        tachometerValue: -62
    }
}
