import QtQuick 2.12
import DSmotoCluster 1.0

Item {
    width: Constants.width
    height: Constants.height

    Background {
        width: 1920
        height: 720
    }

    Tachometer {
        id: tachometer
        width: 1920
        height: 720
    }
}
