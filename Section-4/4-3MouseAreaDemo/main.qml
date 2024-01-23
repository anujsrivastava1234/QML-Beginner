import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MouseArea Demo")

    Rectangle{
        id:hoverContainerId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle{
            id:movingRectId
            width: 50
            height: 50
            color: "blue"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: {
                    if(containsMouse==true){
                        movingRectId.color="red"
                    }else{
                        movingRectId.color="blue"
                    }
                }
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                movingRectId.x=mouse.x
            }
            onWheel: {
                console.log("X : "+wheel.x+" y: "+wheel.y+" angleData: "+wheel.angleDelta)
            }
            hoverEnabled:true
            onHoveredChanged: {
                if(containsMouse==true){
                    movingRectId.color="red"
                }else{
                    movingRectId.color="green"
                }
            }
        }
    }

    Rectangle{
        id:dragContainerId
        y:250
        width: parent.width
        height: 200
        color: "beige"

        Rectangle{
            id:draggableRectId
            width: 50
            color: "blue"
            height: width

            onXChanged: {
                console.log("X Coordinate is : "+x)
            }
        }
        MouseArea{
            anchors.fill: parent
            drag.target: draggableRectId
            drag.axis: Drag.XAndYAxis
            drag.minimumY:  0
            drag.maximumY: dragContainerId.height - draggableRectId.width
            drag.minimumX: 0
            drag.maximumX: dragContainerId.width - draggableRectId.width


        }
    }

}
