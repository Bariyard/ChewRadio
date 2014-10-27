import QtQuick 2.0
import QtQuick.Window 2.0

Item{
    id: logoItems
    property int position: 0

    Rectangle{
        width: 20
        height: 15
        clip: true
        color: "transparent"

        Image {
            id: iconFont

            fillMode: Image.PreserveAspectCrop
            source: "Artwork/Player/logoFont.png"
            clip: true
            smooth: true
            width: 70; height: 290
            x: 0
            y: logoItems.position
        }
    }
}




