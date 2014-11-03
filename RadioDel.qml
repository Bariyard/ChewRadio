import QtQuick 2.0
import QtQuick.Window 2.0

Item{
    id: radioDelItem
    width: view.cellWidth
    height: view.cellHeight

    Rectangle{
        id: logoRec
        width: parent.width
        height: parent.height

//        border.color: "black"
//            border.width: 3
//            radius: 10


    }

    MouseArea{
        anchors.fill: logoRec
        onClicked:
        {
            audioPlayer.source = streamingUrl
            player.stationName = name
            player.stationSite = site
            player.stationArtwork = icon

        }
//        hoverEnabled: true
//        onEntered: {
//            logoRec.width = logoRec.width + 10
//            logoRec.height = logoRec.height + 10
//        }

//        onExited: {
//            logoRec.width = logoRec.width - 10
//            logoRec.height = logoRec.height - 10
//        }
    }

    Image{
        id: logoImg
        source: icon
        smooth: true
        sourceSize.width: logoRec.width - 3//- logoRec.border.width)
        sourceSize.height: logoRec.height - 3//- logoRec.border.width)

        //anchors.margins:4
        anchors.centerIn: logoRec


    }
}





//Rectangle {
//    id: root
//////-----------------logo --------------------//////
//    Rectangle{
//        id: logoRec
//        width: 212
//        height: 212

//        color: "white"
//        radius: 20
//        border.color: "black"
//        border.width: 10

//    }
//    Image{
//        id: logoImg
//        sourceSize.width: (logoRec.width - (logoRec.border.width * 3))
//        sourceSize.height:  (logoRec.height - (logoRec.border.width * 3))
//        source: "Artwork/Radio/radio1_crop.png"
//        anchors.centerIn: logoRec


//        //anchors.fill: logoRec

//    }

//////-----------------logo --------------------//////


//////-----------------Player --------------------//////
////    MediaPlayer{
////        id: player
////        width: Screen.width/2
////        height: Screen.height/12
////        //anchors.centerIn: parent.top
////    }


//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            Qt.quit();
//        }
//    }

//}

