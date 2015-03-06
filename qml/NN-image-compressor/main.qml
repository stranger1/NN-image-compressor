import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

ApplicationWindow {
    title: qsTr("NN image compressor")
    width: 640
    height: 480

    TabView {
        anchors.fill: parent
        Tab {
            title: qsTr("Compress")
            ColumnLayout {
                id: columnLayout1
                anchors.fill: parent
                Image {
                    id: imageToCompress
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    height: 400
                    width: 400
                    fillMode: Image.PreserveAspectFit
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: bottomLayoutPart.top
                    source: "not-found.png"
                }

                RowLayout {
                    id: bottomLayoutPart
                    anchors.top: imageToCompress.bottom
                    anchors.left: parent.left
                Label {
                    id: labelFilePath
                    width: 50
                    Layout.fillWidth: true
                    text: qsTr( "File: " )
                    Layout.minimumWidth: 50
                    anchors.left: parent.left
                    anchors.right: inputFilePath.left
                }

                TextField {
                    id: inputFilePath
                    Layout.fillWidth: true
                    width: 270
                    height: bottomLayoutPart.height
                    anchors.left: labelFilePath.right
                    anchors.right: buttonBrowse.left
                }

                Button {
                    id : buttonBrowse
                    Layout.fillWidth: true
                    text: qsTr("Browse")
                    anchors.left: inputFilePath.right
                    anchors.right: parent.right
                }
                }
             }
        }
    }

}
