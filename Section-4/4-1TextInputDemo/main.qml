import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Input Demo")

    Row{
        x:10
        y:10
        spacing: 10

        Rectangle{
            id:firstNameLabelId
            width: firstNameDisplayId.implicitWidth + 20
            height: firstNameDisplayId.implicitHeight + 20
            color: "beige"
            Text {
                id: firstNameDisplayId
                anchors.centerIn: parent
                text: qsTr("FirstName : ")
            }
        }

        Rectangle{
            id:firstNameTextInputId
            width: textInputId.implicitWidth + 20
            height: textInputId.implicitHeight + 20
            color: "beige"
            TextInput{
                id:textInputId
                anchors.centerIn: parent
                focus: true
                text: "Type in your First Name"
                onEditingFinished: {
                    console.log("the firstname changed to : "+text)
                }
            }
        }
    }

    Row{
        x:10
        y:60
        spacing: 10

        Rectangle{
            id:lastNameLabelId
            width: lastNameDisplayId.implicitWidth + 20
            height: lastNameDisplayId.implicitHeight + 20
            color: "beige"
            Text {
                id: lastNameDisplayId
                anchors.centerIn: parent
                text: qsTr("LastName : ")
            }
        }

        Rectangle{
            id:lastNameTextInputId
            width: lasttextInputId.implicitWidth + 20
            height: lasttextInputId.implicitHeight + 20
            color: "beige"
            TextInput{
                id:lasttextInputId
                anchors.centerIn: parent
                focus: true
                text: "Type in your Last Name"
                onEditingFinished: {
                    console.log("The lastname changed to : "+text)
                }
            }
        }
    }


}
