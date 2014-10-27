import QtQuick 2.0

//Item {
//    id: radioPlayerItem

    Rectangle{
        id: radioPlayerRec
        //color: "black"
        width: parent.width
        height: 80

        //anchors.centerIn: root.top
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#7AFAFF" }
            GradientStop { position: 1.0; color: "#8CFBFF" }
        }
        //color: "blue"

        Row{
            id: radioPlayerRow
            spacing: 10

            //            Rectangle { color: "red"; width: 50; height: 50 }
            //            Rectangle { color: "green"; width: 20; height: 50 }
            //            Rectangle { color: "blue"; width: 50; height: 20 }
            anchors.verticalCenter: radioPlayerRec.verticalCenter
            anchors.left: radioPlayerRec.left
            anchors.leftMargin: 3
            anchors.top: radioPlayerRec.top
            anchors.topMargin: 10

            Rectangle{
                id: playButton
                width: radioPlayerRec.width/5
                height: (radioPlayerRec.height/1.5)
                color: "transparent"
                Image {
                    id: playButtonImage
                    source: "Artwork/Player/pause.png"
                    anchors.fill: playButton
                }


               MouseArea{
                   anchors.fill: playButton
                   onClicked: {
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
        }


        Rectangle{
            id: radioPlayerDecorationStripe
            width: radioPlayerRec.width
            height: 2.5
            color: "white"
            y: radioPlayerRec.height -10
        }
    }
//}
