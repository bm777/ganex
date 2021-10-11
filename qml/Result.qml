import QtQuick 2.0

Rectangle {
    id: root
    color: "#ffdf60"
    radius: 15
    property string t1: "Title"
    property string t2: "sub title"


    Text {
        id: title1
        text:t1
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
