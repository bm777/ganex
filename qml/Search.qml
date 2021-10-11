import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: root
    width: parent.width * 0.9
    height: 50
    radius: height/2
    color: "#10b6b6b6"
    // icon searcah
    Image {
        source: "../img/search.png"
        height: parent.height * 0.4
        width: height
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: search.left
    }

    // search
    Search {
        id: search
        width: parent.width * 0.8
        height: parent.height
        anchors.centerIn: parent
    }

    // micro
    Image {
        source: "qrc:img/micro"
        height: parent.height * 0.4
        width: height
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: search.right
    }
}
