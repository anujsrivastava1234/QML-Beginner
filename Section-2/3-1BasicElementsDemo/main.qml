import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QMl Basic Elements Demo")

    Item{
        x:50
        y:50
        width: 400
        height: 300
        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle{
            x:0
            y:10
            width: 50
            height: 50
            color: "red"
        }
        Rectangle{
            x:60
            y:10
            width: 50
            height: 50
            color: "blue"
        }
        Rectangle{
            x:120
            y:10
            width: 50
            height: 50
            color: "green"
        }
        Rectangle{
            x:180
            y:10
            width: 50
            height: 50
            color: "orange"
        }
        Text {
            id: mTextId
            x:70
            y:70
            text: "Hello World!"
            font.family: "Helvetica"
            font.pointSize: 24
            color: "red"
        }
    }
}
