import QtQuick 2.0

Rectangle {
    id: root
    color: "#ffdf60"
    radius: 15


    /// separator
    Rectangle {id: separator
        height: parent.height
        width: 4
        color: "#000000"
        anchors.centerIn: parent
    }
    Rectangle {
        height: parent.height
        width: parent.width * 0.45
        color: "#ffffff"
        anchors.left: separator.right
    }
}
