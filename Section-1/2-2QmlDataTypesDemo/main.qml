import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml DataTypes Demo")

    property string mString: ""
    Rectangle{
        width: 200
        height: 100
        color: "yellow"
        anchors.centerIn: parent

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
        }
    }

}
