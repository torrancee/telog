import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
import QtQuick.Dialogs.qml 1.0
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.0

Window {
    id: window
    visible: true
    width: 1280
    height: 960
    color: "#ffffff"
    property alias textArea: textArea
    property alias swipeView: swipeView
    title: qsTr("T&E log viewer")

    Rectangle {
        id: background
        x: window.x
        y: window.y
        width: window.width
        height: window.height
        color: "#2f2c2c"
        anchors.fill: parent

        Frame {
            id: frame
            x: background.x
            y: background.y
            width: 150
            height: window.height
            topPadding: 0

            Rectangle {
                id: rectangle
                x: 0
                y: frame.y
                width: 150
                height: window.height
                color: "#121212"
                anchors.left: parent.left
                anchors.leftMargin: -12

                ColumnLayout {
                    x: 30
                    y: 46
                    spacing: 15

                    RoundButton {
                        id: home
                        text: "Home"
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 90

                        onClicked: {
                            console.log("Browse clicked")
                            swipeView.setCurrentIndex(0)
                        }
                    }

                    RoundButton {
                        id: browse
                        text: "Browse"
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 90

                        onClicked: {
                            console.log("Browse clicked")
                            swipeView.setCurrentIndex(1)
                        }
                    }

                    RoundButton {
                        id: regex
                        text: "Regex"
                        checked: false
                        display: AbstractButton.TextOnly
                        focusPolicy: Qt.TabFocus
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 90

                        onClicked: {
                            console.log("Browse clicked")
                            swipeView.setCurrentIndex(2)
                        }
                    }
                }
            }


        }

        SwipeView {
            id: swipeView
            x: background.x + 150
            y: background.y
            width: background.width - 150
            height: background.height
            currentIndex: 1
            leftPadding: 10
            padding: 10
            font.family: "Verdana"

            Item {

                ColumnLayout {
                    x: 10
                    y: 0

                    Label {
                        id: homelabel
                        color: "#e3e6ea"
                        text: qsTr("Home")
                        font.bold: true
                        Layout.preferredHeight: 70
                        Layout.preferredWidth: 150
                        styleColor: "#e9dfdf"
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 24
                        horizontalAlignment: Text.AlignLeft
                    }

                    RowLayout {
                        Layout.preferredHeight: 49
                        Layout.preferredWidth: 643
                        transformOrigin: Item.Center
                        spacing: 10

                        TextField {
                            id: loadFileField
                            width: 400
                            height: 45
                            text: qsTr("")
                            font.wordSpacing: 0
                            font.pointSize: 13
                            horizontalAlignment: Text.AlignLeft
                            Layout.fillHeight: false
                            Layout.fillWidth: true
                            font.kerning: false
                            font.preferShaping: false
                            padding: 0
                            bottomPadding: 0
                            rightPadding: 0
                            leftPadding: 10
                            topPadding: 0
                            Layout.preferredHeight: 49
                            Layout.preferredWidth: 200
                            placeholderText: "File Path..."
                        }

                        Button {
                            id: button
                            text: qsTr("Load")
                        }
                    }
                }

                RowLayout {
                    id: rowLayout
                    x: 8
                    y: 130
                    width: 300
                    height: 100

                    Label {
                        id: fileLoadedLabel
                        width: 200
                        color: "#e3e6ea"
                        text: qsTr("File Loaded")
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 150
                        font.pointSize: 24
                        styleColor: "#e9dfdf"
                        horizontalAlignment: Text.AlignLeft
                        Layout.preferredHeight: 70
                    }

                    CheckBox {
                        id: checkBox
                        x: 250
                        width: 74
                        text: qsTr("Ok!")
                        font.family: "Verdana"
                        checked: false
                    }
                }
            }

            Item {
                Label {
                    id: browselabel
                    width: 150
                    height: 70
                    color: "#e3e6ea"
                    text: qsTr("Browse")
                    font.bold: true
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    styleColor: "#e9dfdf"
                    horizontalAlignment: Text.AlignHCenter

                    ScrollView {
                        id: scrollView
                        anchors.rightMargin: -353
                        anchors.bottomMargin: -156
                        anchors.leftMargin: 18
                        anchors.topMargin: 76
                        anchors.fill: parent

                        TextArea {
                            id: textArea
                            text: qsTr("Text Area")
                            font.pointSize: 8
                            color: "white"
                            anchors.fill: parent
                        }
                    }
                }
            }

            Item {
                Label {
                    id: regexlabel
                    width: 150
                    height: 70
                    color: "#e3e6ea"
                    text: qsTr("Regex")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    styleColor: "#e9dfdf"
                    horizontalAlignment: Text.AlignHCenter
                }
            }

        }

    }

    Image {
        id: image
        x: 0
        y: background.height - 141
        width: 150
        height: 142
        fillMode: Image.PreserveAspectFit
        visible: true
        source: "qrc:/img/Ericsson_logo.png"
    }


}

/*##^## Designer {
    D{i:24;anchors_height:200;anchors_width:200;anchors_x:285;anchors_y:78}D{i:34;anchors_height:142;anchors_width:150;anchors_x:0;anchors_y:818}
}
 ##^##*/
