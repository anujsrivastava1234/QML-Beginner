import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Notifier{
        id:notifierId
        rectColor: "yellowgreen"
        Component.onCompleted: {
            notifierId.notify.connect(reciverId.recieveInfo) //Connect Signal to slot
        }
    }

    Reciver{
        id:reciverId
        anchors.right: parent.right
        rectColor: "dodgerblue"
    }
}
