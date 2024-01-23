import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property and Signal Handlers")

    property string mFirstName: "Daniel"
    onMFirstNameChanged:{
        console.log("The firstname chnaged to : "+mFirstName)
    }

    Rectangle{
        width: 300
        height: 100
        anchors.centerIn: parent
        color: "yellowgreen"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName="John"
            }
        }

        Component.onCompleted: {
            console.log("The firstName is "+mFirstName)
        }
    }
}
