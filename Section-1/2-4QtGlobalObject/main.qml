import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object")

    property var fonts: Qt.fontFamilies()

    Rectangle{
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Quitting the Application")
                Qt.quit();

                for(var i=0;i<fonts.length;i++){
                    console.log("["+i+"]"+fonts[i])
                }

                //Hash a string
                var mName="Anuj"
                var mHashName=Qt.md5(mName)
                console.log("The hash of the name is : "+mHashName)

                //open url externally
                Qt.openUrlExternally("https://www.youtube.com/watch?v=9EDZixuODrw")

                //open local file
                Qt.openUrlExternally("file:///home/anuj/Qt/InstallationLog.txt")

                //Capture platform OS
                console.log("The current platform "+Qt.platform.os)
            }
        }
    }
}
