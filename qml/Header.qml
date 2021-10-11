import QtQuick 2.0

Item {
    id: root
    property bool dark: false
    property string f: "Nunito"



    Rectangle {
        anchors.fill: parent
        color: "transparent"
//        border.color: "red"
    }

    // dclimate logomark
    // text dclimate
    Text {
        id: text_logo
        text: qsTr("GANex")
        font {family: f ; pointSize: 15; bold: true}
        anchors.left: parent.left
        anchors.leftMargin: 10
        y: parent.height * 0.2
    }
    // logo
//    Image {
//        id: logo
//        source: "../img/dclimate.png"
//        anchors.left: text_logo.right
//        height: parent.height * 0.7
//        width: height
//    }
    // smal text
    Text {
        text: "GAN explorer"
        font {family: f ; pointSize: 10; bold: false}
        anchors.top: text_logo.bottom
        anchors.topMargin: 1
        x: text_logo.x
    }



    // theme

    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        color: "#eeeeee"
        x: parent.width - width * 1.7
        radius: height/2
        width: height
        height: thema.height * 2

        Text {
            id: thema
            text: "D"
            color: "#4285f4"
            font {family: f ; pointSize: 15; bold: false}
            anchors.centerIn: parent
        }
    }

}
