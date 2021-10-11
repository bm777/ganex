import QtQuick 2.0

Rectangle {
    id: root
    border.color: "#ffdf60"
//    color: "#ffdf60"
    property string t1: "title of the art"
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

}
