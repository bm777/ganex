import QtQuick 2.0

Rectangle {
    id: root
    border.color: "#ffdf60"
//    color: "#ffdf60"

    Text {
        id: close
        text: qsTr("x")
        color: "red"
        font{pointSize: 20}
        x: parent.width - width * 1.5
        y: 5
    }

}
