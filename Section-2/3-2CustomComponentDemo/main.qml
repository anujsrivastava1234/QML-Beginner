import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Component Demo")

    // Column{
    //     spacing: 20
    //     Rectangle{
    //         width: 300
    //         height: 100
    //         color: "red"
    //     }

    //     Rectangle{
    //         width: 300
    //         height: 100
    //         color: "blue"
    //     }
    // }

    Column{
        MButton{
            buttonText: "Button 1"
            mColor: "beige"
            onButtonClicked: {
                console.log("Clicked on Button 1")
            }
        }
        MButton{
            buttonText: "Button 2"
            mColor: "green"
            onButtonClicked: {
                console.log("Clicked on Button 2")
            }
        }
    }


}
