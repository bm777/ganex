import QtQuick 2.0

Rectangle {
    id: root
    color: "#ffdf60"
    radius: 15
    property string f: "Nunito"
    property string t1: "Title of the art"
    property string t2: "sub title of the top"
    property bool music: true



    Text {
        id: title1
        text:t1
        font{family: f; pointSize: 13; bold: true}
        x: parent.width * 0.05
        y: 10
    }
    Text {
        id: title2
        text:t2
        font{family: f; pointSize: 13; bold: false}
        anchors.top: title1.bottom
        anchors.topMargin: 5
        x: title1.x
        color: "#666666"
    }



    /// separator
    Rectangle {id: separator
        height: parent.height
        width: 4
        color: "#000000"
        anchors.centerIn: parent
    }
    Rectangle {id: content
        height: parent.height
        width: parent.width * 0.45
        color: "#ffffff"
        anchors.left: separator.right
        Image {
            anchors.centerIn: parent
            height: parent.height
            width: height
            visible: music
            source: "../img/music.png"
        }
        Image {
            anchors.centerIn: parent
            height: parent.height
            width: height
            visible: !music
            source: "../img/art.png"
        }
    }
    Rectangle {
        width: parent.width - content.x - content.width
        anchors.left: content.right
        height: parent.height
//        border.color: "red"
        color: "transparent"
        Rectangle {
            width: parent.width * 0.3
            height: width
            anchors.centerIn: parent
            radius: height/2
            color: "#000000"
        }
    }


}
