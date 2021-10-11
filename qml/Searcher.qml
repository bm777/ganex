import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: root
    anchors.fill: parent
    color: "transparent"


    Search {
        id: search
        width:parent.width * 0.4
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {id: result
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 1
        height: parent.height - search.height * 2
        anchors.top: res.bottom
        anchors.topMargin: 5
        color: "#D4EDFF"
//                border.color: "blue"
        ScrollView {
            clip: true
            width: parent.width
            height: parent.height
            contentHeight: col.height
            contentWidth: col.width
            spacing: 0

            Column {
                id: col

            }
        }

    }
}
