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
    }

    Image{
        id: logoImg
        source: icon
        smooth: true
        sourceSize.width: logoRec.width - 3
        sourceSize.height: logoRec.height - 3
        anchors.centerIn: logoRec
    }
}

