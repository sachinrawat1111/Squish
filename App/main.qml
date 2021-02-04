import QtQuick 2.12
import QtQuick.Dialogs 1.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello QT")
    function openFile(fileUrl){
        var request = new XMLHttpRequest()
        request.open("GET",fileUrl,false)
        request.send(null)
        return request.responseText
    }
    RowLayout{
        anchors.fill:parent
        Button{
            id: button1
            text: "Ok"
            onClicked: text1.text="Ok clicked"
        }
        Text{
            id: text1
            text: "Hello"
        }
    }
    //    header: ToolBar{
    //        RowLayout{
    //            anchors.fill:parent
    //            ToolButton{
    //                id: openButton
    //                text:"Open"
    //                onClicked:fileDialog.open()
    //            }
    //        }
    //    }
    //    FileDialog{
    //        id:fileDialog
    //        title: "Please choose file"
    //        folder: shortcuts.home
    //        onAccepted: textEdit.text = openFile(fileDialog.fileUrl)
    //    }
    //    TextArea{
    //        id: textEdit
    //        anchors.fill:parent
    //        text: "Placeholder text"

    //    }
}

