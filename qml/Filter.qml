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
         id: type_filter
         text: "Art selection"
         font {family: f; pointSize: 11; bold: false}
         x: filter.x
         color: "#78909c"
         anchors.top: filter.bottom
         anchors.topMargin: parent.height * 0.05
     }

     Column {id: col
         x:filter.x
         height: type_filter.height * 0.7
         anchors.top: type_filter.bottom
         anchors.topMargin: 10
         Radio {
             checked: true
             text: qsTr("Picture")
             first: "#ffdf60"
             second: "#ffdf60"
         }
         Radio {
             text: qsTr("Audio")
             first: "#ffdf60"
             second: "#ffdf60"
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
     Rectangle {
         width: parent.width * 0.8
         height: child
         anchors.horizontalCenter: parent.horizontalCenter
         color: "#ffdf60"
         anchors.top: connexion.bottom
         anchors.topMargin: 5
         Text {
             text: "Searcher"
             font{family: f; pointSize: 15; bold: false}
             x: parent.width * 0.1
             y: parent.height * 0.8
             color: "#666666"
         }
     }



     // background for content of filter
     Rectangle {
         width: parent.width * 0.8
         height: parent.height * 0.15
         anchors.horizontalCenter: parent.horizontalCenter
         color: "#1bffdf60"
         anchors.top: type_filter.bottom
         anchors.topMargin: 5
     }

}
