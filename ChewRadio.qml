import QtQuick 2.0
import QtQuick.Window 2.0


Rectangle {
    id: root
    width:  320//Screen.width /4
    height: Screen.height/2
    color: "green"

    Rectangle{
        id: headerRec
        color: "black"
        width: root.width
        height: 30
        //clip: true

        Row{
            spacing: 5
//            width: root.width
//            height: r
        Rectangle{
            id: headphoneRec
            color: "transparent"
            //anchors.verticalCenter: headerRec.verticalCenter
            width: 20
            height: 15



            MediaPlayerLogoFont{
                id: headphoneLogo
                // 0, -18, -36,
                position: -50
                //anchors.verticalCenter: headerRec.verticalCenter
                anchors.fill: headphoneRec
            }
        }


    Rectangle{
        id: volumeRec
        color: "transparent"
        //anchors.verticalCenter: headerRec.verticalCenter
        width: 20
        height: 15

        MediaPlayerLogoFont{
            id: volumeLogo
            // 0, -18, -36,
            position: 0
            //anchors.verticalCenter: headerRec.verticalCenter
            anchors.fill: volumeRec
        }
    }
    }
}
}
