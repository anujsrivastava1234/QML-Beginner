import QtQuick 2.15

Item{
    id:rootId
    property alias buttonText: mButton.text
    signal buttonClicked
    property alias mColor: containerId.color
    width: containerId.width
    height: containerId.height

    Rectangle{
        id:containerId
        width: mButton.implicitWidth + 20
        height: mButton.implicitHeight + 20
        color: "red"
        border{color: "blue" ; width: 3}
        Text {
            anchors.centerIn: parent
            id: mButton
            text: qsTr("Button")
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                // console.log("Clicked on "+mButton.text)
                    rootId.buttonClicked()
            }
        }
    }
}




