import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: root
//    width: parent.width * 0.9
    height: 50
    radius: height/2
    property string f: "Nunito"
    color: "#ffffff"

    // icon searcah
    Image {id: _l
        source: "../img/search.png"
        height: parent.height * 0.4
        width: height
        anchors.verticalCenter: parent.verticalCenter
        x: parent.height * 0.2
    }

    // search
    TextField {id: search
        placeholderText: "What are you looking for"
        color: "#666666"
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width - (_l.width + _r.width) * 2
        maximumLength: 30
        hoverEnabled: true
        font{family: f; pointSize: 12}
        background: Rectangle {
            color: "transparent"
//            border.color: "black"
        }
        anchors.left: _l.right
        verticalAlignment: TextInput.AlignVCenter

    }

    // micro
    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height * 0.9
        x: parent.width - width - parent.height * 0.1
        width: height
        radius: height/2
        color: "#eeeeee"

        Image {id: _r
            source: "../img/micro.png"
            height: parent.height * 0.5
            width: height
            anchors.centerIn: parent
        }
    }
}
