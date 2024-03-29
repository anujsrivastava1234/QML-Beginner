import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: "Hello World"

    Row{
        id:row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id:redRectId
            width: 150
            height: 150
            color: "red"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangle")
                    textToShow="red"
                }
            }
        }

        Rectangle{
            id:blueRectId
            width: 150
            height: 150
            color: "blue"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue rectangle")
                    textToShow="blue"
                }
            }
        }

        Rectangle{
            id:greenRectId
            width: 150
            height: 150
            color: "green"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green rectangle")
                    textToShow="green"
                }
            }
        }

        Rectangle{
            id:textRectId
            width: 150
            height: 150
            color: "dodgerblue"
            radius: 75
            Text {
                id:mTextToShow
                anchors.centerIn: parent
                text: textToShow
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangle")
                    mTextToShow.text="loop"

                }
            }
        }
    }
}
