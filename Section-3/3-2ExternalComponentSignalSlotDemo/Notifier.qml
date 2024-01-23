import QtQuick 2.15

Item {

    property int count: 0
    property alias rectColor: notifyRectId.color
    width: notifyRectId.width
    height: notifyRectId.height
    signal notify(string count)

    Rectangle{
        id:notifyRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text:count
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++
                notify(count)
            }
        }
    }
}
