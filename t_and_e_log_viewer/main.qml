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
                            console.log("Home clicked")
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
                            objectName: "wiktor"
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

                            onAccepted: {
                                uiproxy.reqestLoadFile(loadFileField.text)
                                uiproxy.getBrowseText()
                            }

                            function setText(msg) {
                                console.log(msg)
                                textArea.append(msg)
                            }
                        }
                    }

                    Label {
                        id: homelabel1
                        color: "#e3e6ea"
                        text: qsTr("Available trace objects:")
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 150
                        font.pointSize: 24
                        font.bold: true
                        styleColor: "#e9dfdf"
                        horizontalAlignment: Text.AlignLeft
                        Layout.preferredHeight: 70
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
                    leftPadding: 0
                    font.bold: true
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                    styleColor: "#e9dfdf"
                    horizontalAlignment: Text.AlignHCenter
                }

                ScrollView {
                    id: scrollView
                    x: 18
                    y: 76
                    width: swipeView.width
                    anchors.rightMargin: 10
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 10
                    anchors.topMargin: 76
                    anchors.fill: parent

                    TextArea {
                        id: textArea
                        objectName: "textArea"
                        width: scrollView.width
                        height: 26
                        padding: 5
                        leftPadding: 5
                        rightPadding: 5
                        bottomPadding: 5
                        topPadding: 5
                        font.pointSize: 8
                        color: "white"
                        verticalAlignment: Text.AlignTop

                        function updateTextArea(msg){
                            console.log("called from c++")
                            console.log(msg)
                            append("aaaaaaaa")
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
    D{i:21;anchors_height:26;anchors_width:677.890625}
}
 ##^##*/
