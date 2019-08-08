import QtQuick 2.13
import DSmotoCluster 1.0
import QtQuick.Shapes 1.13

Item {
    id: tachometerItem
    width: 1920
    height: 720

    Image {
        id: tachometerRpmBarImage
        y: 80
        width: 1351
        height: 132
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "imports/assets/RPM/RPM-Progress.png"
    }

    Shape {
        id: tachometerShapePath
        width: 1000
        height: 200
        anchors.centerIn: parent
        containsMode: 0
        rendererType: Shape.GeometryRenderer
        ShapePath {
            strokeWidth: 5
            strokeColor: "#000000"
            strokeStyle: ShapePath.SolidLine
            startX: 0
            startY: 0
            PathCurve {
                x: 0
                y: 200
            }
            PathCurve {
                x: 100
                y: 5
            }
            PathCurve {
                x: 800
                y: 5
            }
        }
    }
}




/*##^## Designer {
    D{i:0;height:720;width:1920}
}
 ##^##*/
