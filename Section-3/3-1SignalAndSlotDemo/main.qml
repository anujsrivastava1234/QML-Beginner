import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal And Slots Demo")

    property int increment: 50

    Rectangle{
        id:rectangleId
        width: 200 + increment
        height: 300
        color: "red"
        signal greet(string message) //signal
        onGreet: {
            console.log("onGreet : greet signal emitted")
        }

        onWidthChanged: {
            console.log("onWidthChanged")
        }

        function myGreeting(mMessage){
            console.log("myGreeting slot called.The parameter is "+mMessage)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello There") //fire the signal
                increment += 50
            }
        }

        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }

    }
}
