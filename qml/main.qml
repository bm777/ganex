import QtQuick 2.13
import QtQuick.Window 2.13
import QtGraphicalEffects 1.12


Window {
    id: root
    title: qsTr("ganex")
    width: 1500
    height: 800
    visible: true
    property bool dark: false

    Rectangle {
        anchors.fill: parent
        color: "#f6f6f8"
    }
    // header
    Header {
        id: header
        width: parent.width
        height: parent.height * 0.08
    }

    // filter and compare
    Filter {
        id: filter
        width: parent.width * 0.22
        height: parent.height * 0.8
//        anchors.verticalCenter: parent.verticalCenter
        anchors.top: header.bottom
        anchors.topMargin: (root.height - height) * 0.2
    }

    //
    Item {
        id: search
        visible: filter.search
        width: parent.width - filter.width
        height: parent.height - filter.y
        y: filter.y
        x: filter.width

        Searcher {
//            border.color: "red"

        }
    }
    Item {
        id: creator
        visible: !search.visible
    }

}
