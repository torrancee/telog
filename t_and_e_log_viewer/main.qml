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
    title: qsTr("Hello World")

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
                    }

                    RoundButton {
                        id: browse
                        text: "Browse"
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 90
                    }

                    RoundButton {
                        id: regex
                        text: "Regex"
                        checked: false
                        display: AbstractButton.TextOnly
                        focusPolicy: Qt.TabFocus
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 90
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
            leftPadding: 10
            padding: 10
            font.family: "Verdana"

            Item {
                Label {
                    id: homelabel
                    x: 10
                    width: 150
                    height: 70
                    color: "#e3e6ea"
                    text: qsTr("Home")
                    styleColor: "#e9dfdf"
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    horizontalAlignment: Text.AlignLeft
                }

                RowLayout {
                    x: 10
                    y: 76
                    width: 643
                    height: 49
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

            Item {
                Label {
                    id: browselabel
                    width: 150
                    height: 70
                    color: "#e3e6ea"
                    text: qsTr("Browse")
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    styleColor: "#e9dfdf"
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Item {
                Label {
                    id: regexlabel
                    width: 150
                    height: 70
                    color: "#e3e6ea"
                    text: qsTr("Regex")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    styleColor: "#e9dfdf"
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Label {
                id: loadfile1
                x: -9
                y: 4
                color: "#e3e6ea"
                text: qsTr("Load file")
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 150
                font.pointSize: 18
                styleColor: "#e9dfdf"
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 70
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
