import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    id: root
    property bool dark: false
    property string f: "Nunito"

    //
     Rectangle {
         width: parent.width
         height: parent.height
//         color: "red"
         x: -background_with_raidus.radius
     }
     Rectangle {
         id: background_with_raidus
         anchors.fill: parent
//         color: "blue"
         radius: width * 0.1
     }

     ///////////////////////////////
     Text {
         id: filter
         text: "Filters"
         font{family: f; pointSize: 15; bold: true}
         x: parent.width * 0.1
         y: x * 0.6
         color: "#666666"
     }
     Image {
        y: filter.y + filter.height/2 - height/2
        height: filter.height * 1.2
        width: height
        x: parent.width - width * 2
        source: "../img/menu.png"
     }

     /// place and date
     Text {
         id: picture_filter
         text: "Picture"
         font {family: f; pointSize: 11; bold: false}
         x: filter.x
         color: "#78909c"
         anchors.top: filter.bottom
         anchors.topMargin: parent.height * 0.05
     }
     RadioButton {
         anchors.left: picture_filter.right
         anchors.leftMargin: 10
         height: picture_filter.height * 0.7
         y: picture_filter.y
     }
     Row {
         RadioButton {
             checked: true
             text: qsTr("Picture")
         }
         RadioButton {
             text: qsTr("Audio")
         }
     }


    /// connected as
     Text {
         id: connexion
         text: "Connected as"
         font{family: f; pointSize: 15; bold: false}
         x: parent.width * 0.1
         y: parent.height * 0.8
         color: "#666666"
     }



     // background for content of filter
     Rectangle {
         width: parent.width * 0.8
         height: 10
         anchors.horizontalCenter: parent.horizontalCenter
         color: "#1bffdf60"
         anchors.top: picture_filter.bottom
     }

}
