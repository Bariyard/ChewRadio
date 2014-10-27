import QtQuick 2.0

Item {
    id: radioPlayerItem

    Rectangle{
        id: radioPlayerRec
        width: root.width
        height:  radioPlayerItem.height
        //anchors.centerIn: parent.top
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#7AFAFF" }
            GradientStop { position: 1.0; color: "#8CFBFF" }
        }

        Grid{
            id: radioPlayerRow
            spacing: 10

            //            Rectangle { color: "red"; width: 50; height: 50 }
            //            Rectangle { color: "green"; width: 20; height: 50 }
            //            Rectangle { color: "blue"; width: 50; height: 20 }

            Rectangle{
                id: playButton
                width: radioPlayerRec.width/5.5
                height: (radioPlayerRec.height/1.2)
                color: "transparent"

                Image {
                    source: "Artwork/Player/play.png"
                    anchors.fill: playButton
                }
            }

//            Rectangle{
//                id: volumeSlider

//                width: (radioPlayerRow.width/1.5)
//                height: (radioPlayerRow.height /3.5)

//                //                color: "transparent"
//                color: "green"

                Row{
                    id:volumeSliderRow
                    spacing: 4

//                    width: volumeSlider.width
//                    height: volumeSlider.height
                    width: (radioPlayerRow.width/1.5)
                    height: (radioPlayerRow.height /3.5)

                    Rectangle{
                        id: volumeIconRec
                        width: 20
                        height: volumeSliderRow.height
                        color: "transparent"

                        Image {
                            id: volumeIcon
                            source: "Artwork/Player/volume.png"
                            anchors.fill: volumeIconRec
                        }
                    }


                    Rectangle {
                        id: volumeBar
                        width: volumeSliderRow.width
                        height: volumeSliderRow.height/2
                        color: "black"
                        //                anchors.horizontalCenter: radioPlayerRec.horizontalCenter
                        anchors.centerIn: volumeSliderRow
                        radius: 20
                        border{
                            width: 2
                            color: "white"
                        }
                    }
                }
//            }


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
