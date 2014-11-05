import QtQuick 2.0

Item {
    id: radioPlayerItem
    property string stationArtwork: ""
    property string stationName: "-"
    property string stationSite: "-"

    Rectangle{
        id: radioPlayerRec
        width: parent.width
        height: 100
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#7AFAFF" }
            GradientStop { position: 1.0; color: "#8CFBFF" }
        }

        Row{
            id: radioPlayerRow
            spacing: 10
            anchors.verticalCenter: radioPlayerRec.verticalCenter
            anchors.left: radioPlayerRec.left
            anchors.leftMargin: 11
            anchors.top: radioPlayerRec.top
            anchors.topMargin: 10

            Rectangle{
                id: radioPlayerArtworkRec
                width: radioPlayerRec.width/5
                height:(radioPlayerRec.height/1.5)
                color: "transparent"
                visible: false
                Image {
                    id: radioPlayerArtwork
                    source: stationArtwork
                    smooth: true

                    sourceSize.width: radioPlayerArtworkRec.width
                    sourceSize.height: radioPlayerArtworkRec.height
                    onSourceChanged: {
                        radioPlayerArtworkRec.visible = true;
                    }
                    anchors.fill: radioPlayerArtworkRec
                }
            }

            Rectangle{
                id: playButton
                width: radioPlayerRec.width/5
                height: (radioPlayerRec.height/1.5)
                color: "transparent"

                Image {
                    smooth: true
                    id: playButtonImage
                    source: {audioPlayer.playbackState === 1 ? "Artwork/Player/pause.png" :"Artwork/Player/play.png"}
                    sourceSize.width: playButton.width
                    sourceSize.height: playButton.height
                    anchors.fill: playButton
                }

               MouseArea{
                   anchors.fill: playButton
                   onClicked: {
                       if(audioPlayer.status === 1)
                           return
                       if(audioPlayer.playbackState === 1){
                            playButtonImage.source = "Artwork/Player/play.png"
                           audioPlayer.pause()
                       }else{
                            playButtonImage.source = "Artwork/Player/pause.png"
                           audioPlayer.play()
                       }
                   }
               }
            }

            Column{
                id: stationInfo
                Row{
                    Text{
                        text: "Station: "
                    }
                    Text {
                        text: stationName
                    }
                }

                Row{
                    Text{
                        text: "Site: "
                    }
                    Text {
                        text: stationSite
                    }
                }
            }

        }

        Rectangle{
            id: hideRec
            color: "transparent"
            width: stationInfo.width
            height: 20
//            anchors.right: radioPlayerRec.right
            x: radioPlayerRec.width - 40
            y: radioPlayerRec.height - 40
            Text{

                text: "Hide"
                anchors.fill: hideRec
            }
            MouseArea{
                anchors.fill: hideRec

                onClicked: {
                    playRec.visible = false

                }
            }
        }

        Rectangle{
            id: radioPlayerDecorationStripe
            width: radioPlayerRec.width
            height: 2.5
            color: "white"
            y: radioPlayerRec.height -10
        }
    }
}
