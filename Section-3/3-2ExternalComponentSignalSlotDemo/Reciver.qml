import QtQuick 2.15

Item {


    property alias rectColor: recieverRectId.color
    width: recieverRectId.width
    height: recieverRectId.height


    function recieveInfo(count){
        displayTextId.text=count
        console.log("Recevier received number : "+count)
    }

    Rectangle{
        id:recieverRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text:"0"
        }


    }
}
