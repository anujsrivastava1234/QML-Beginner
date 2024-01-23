import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Button Demo")

    ColumnLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        Button{
            id:btn1
            text: "Button 1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button 1")
            }
            onDoubleClicked: {
                console.log("Double Clicked")
            }
        }
        Button{
            id:btn2
            text: "Button 2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button 2")
            }
        }
    }
}
