import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextEdit Demo")

    Flickable{
        id:flickableId
        width: textInputId.width
        contentHeight: textInputId.implicitHeight + 20
        height: 300
        clip: true
        anchors.centerIn: parent
        TextEdit {
            id:textInputId
            width: 300
            text: " is simply dummy text of the printing and typesetting industry."+
                  " Lorem Ipsum has been the industry's standard dummy text ever since"+
                  " the 1500s, when an unknown printer took a galley of type and scrambled"+
                  " it to make a type specimen book. It has survived not only five centuries,"+
                  " but also the leap into electronic typesetting, remaining essentially unchanged."+
                  " It was popularised in the 1960s with the release of Letraset sheets containing Lorem"+
                  " Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker"+
                  " including versions of Lorem Ipsum."
            textFormat:TextEdit.RichText
            wrapMode: TextEdit.Wrap
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true
            onEditingFinished: {
                console.log("The current text is : "+text)
            }
        }
    }

    Rectangle{
        id:mRectId
        width: 200
        height: 100
        color: "red"
        anchors.top: flickableId.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                mRectId.focus=true
                console.log("The new text is : "+textInputId.text)
            }

        }
    }

}
