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

        Row{
            id: radioPlayerRow
            anchors.left: radioPlayerRec
            spacing: 10

//            Rectangle { color: "red"; width: 50; height: 50 }
//            Rectangle { color: "green"; width: 20; height: 50 }
//            Rectangle { color: "blue"; width: 50; height: 20 }
            Image {
                source: "Artwork/Player/play.png"
                sourceSize.width: radioPlayerRec.width/1.1
                sourceSize.height: (radioPlayerDecorationStripe.y /1.1)

            }

            Rectangle {
                id: volumeSilder
                width: (radioPlayerRec.width/1.5)
                height: (radioPlayerDecorationStripe.y /6)
                color: "black"
//                anchors.horizontalCenter: radioPlayerRec.horizontalCenter
                anchors.verticalCenter: radioPlayerRow.verticalCenter
                radius: 20
                border{
                    width: 2
                    color: "white"
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
