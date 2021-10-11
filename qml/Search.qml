import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: root
//    width: parent.width * 0.9
    height: 50
    radius: height/2
    color: "#ffffff"
    // icon searcah
    Image {
        source: "../img/search.png"
        height: parent.height * 0.4
        width: height
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: search.left
    }

    // search
    TextField {id: search
        placeholderText: "What are you looking for"
        color: "#666666"
        maximumLength: 30
        anchors.centerIn: parent
        hoverEnabled: true
        font{family: "Comfortaa"; pointSize: 14}
        background: Rectangle {
            color: "transparent"
    //        border.color: "black"
        }
        verticalAlignment: TextInput.AlignVCenter

    }

    // micro
    Image {
        source: "../img/micro.png"
        height: parent.height * 0.4
        width: height
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: search.right
    }
}
