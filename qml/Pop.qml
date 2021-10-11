import QtQuick 2.0

Rectangle {
    id: root
    border.color: "#ffdf60"
    property bool art: true
//    color: "#ffdf60"
    property string t1: "MR der | open to ocean"
    property string t2: "sub title of the art"

    Text {
        id: close
        text: qsTr("x")
        color: "red"
        font{pointSize: 20}
        x: parent.width - width * 1.5
        y: 5
        MouseArea {
            anchors.fill: parent
            onClicked: root.visible = false
        }
    }

    Text {
        id: _t1
        text: t1
        x: parent.width * 0.05
        y: x
        font{family: "Nunito"; pointSize: 14}
    }
    Text {
        id: _t2
        text: t2
        x: parent.width * 0.05
        y: x * 2
        color: "#666666"
        font{family: "Nunito"; pointSize: 12}
    }

    Image {
        anchors.centerIn: parent
        height: 150
        visible: !art
        width: height
        source: "../img/music.png"
    }
    Image {
        anchors.centerIn: parent
        height: 150
        visible: art
        width: height
        source: "../img/art.png"
    }


}
