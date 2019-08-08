import QtQuick 2.12
import DSmotoCluster 1.0

Item {
    id: backgroundElement
    width: 1920
    height: 720

    Image {
        id: backgroundColorImage
        fillMode: Image.PreserveAspectFit
        source: "imports/assets/Background and Mask/Background.png"
    }

    Image {
        id: backgroundMaskImage
        antialiasing: false
        visible: true
        fillMode: Image.PreserveAspectFit
        source: "imports/assets/Background and Mask/Outer Mask.png"
    }

    Image {
        id: backgroundPerspectiveLinesImage
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "imports/assets/Background and Mask/Perspective-lines.png"
    }
}
