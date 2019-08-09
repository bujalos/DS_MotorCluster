import QtQuick 2.12
import DSmotoCluster 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.00

Item {

    property int tachometerValue

    id: tachometerItem
    width: 1351
    height: 132
    opacity: 1

    ShaderEffectSource {
        id: shaderEffectMask
        visible: false
        hideSource: true
        sourceItem: effectSource
        anchors.fill: parent
    }

    Item {
        anchors.fill: parent
        id: effectSource
        width: 1351
        height: 132
        visible: true

        Rectangle {
            id: tachometerRpmBarMaskRectangle
            x: -325
            y: -628
            width: 1000
            height: 900
            color: "#000000"
            radius: 0
            visible: true
            transformOrigin: Item.BottomRight
            border.width: 0
            clip: false
            rotation: tachometerLocator.rotation
        }
    }

    Image {
        id: tachometerRpmBarImage
        x: 0
        y: 0
        width: 1351
        height: 132
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "imports/assets/RPM/RPM-Progress.png"
    }


    MaskItem {
        id: tachometerRpmBarMask
        y: 0
        width: 1351
        height: 132
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        clip: false
        invert: true
        foreground: shaderEffectMask
        background: tachometerRpmBarImage
    }

    Item {
        id: tachometerLocator
        x: 675
        y: 272
        width: 0
        height: 0
        scale: 1
        rotation: tachometerValue
    }
}
