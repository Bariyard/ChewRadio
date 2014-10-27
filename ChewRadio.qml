import QtQuick 2.0
import QtQuick.Window 2.0
import QtMultimedia 5.0

Window{
    title: "ChewRadio"
    id: root
    width:  320//Screen.width /4
    height: Screen.height/2
    maximumWidth: 320//Screen.width /4
    maximumHeight: Screen.height/2
    minimumWidth: 320
    minimumHeight: 30

    color: "white"


    Rectangle{
        id: headerRec
        color: "black"
        width: root.width
        height: 30
        //clip: true


        Row{
            id: volumeRow
            spacing: 5
            anchors.verticalCenter: headerRec.verticalCenter
            anchors.left: headerRec.left
            anchors.leftMargin: 10
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

                MouseArea{
                    id: volumeMouseEvent
                    anchors.fill: volumeRec
                    hoverEnabled: true
                    onEntered: {
                        volumeLogo.position = -32
                    }
                    onExited: {
                        volumeLogo.position = 0
                    }

                    onClicked:{
                        if(volumeBarRec.visible === true)
                            volumeBarRec.visible = false
                        else
                            volumeBarRec.visible = true
                    }
                }
            }

            Rectangle{
                id: volumeBarRec
                width: 100
                height: 13
                anchors.verticalCenter: volumeRow.verticalCenter
                visible: false
                clip: true

                Rectangle{
                    id: volumeGainRec
                    width: audioPlayer.volume*100
                    height: 13
                    color: "orange"
                }

                MouseArea{
                    anchors.fill: volumeBarRec
                    onPositionChanged:{
                        volumeGainRec.width = mouseX
                        if(volumeGainRec.width <= 100 && volumeGainRec.width >= 0)
                            audioPlayer.volume = volumeGainRec.width /100
                    }
                    onClicked: {
                        volumeGainRec.width = mouseX
                        if(volumeGainRec.width <= 100 && volumeGainRec.width >= 0)
                            audioPlayer.volume = volumeGainRec.width /100
                    }

                }

            }

            // Rectangle{

            Text {
                id: connectionStatusText
                text: "Connected"
                color: "violet"

                MouseArea{
                    anchors.fill: connectionStatusText
                    hoverEnabled: true
                    onEntered: {
                        connectionStatusText.color = "orange"
                    }
                    onExited: {
                        connectionStatusText.color =  "violet"
                    }

                }
            }
        }
    }



    Audio{
        id: audioPlayer
//        source: "/Users/wrbally/Music/iTunes/iTunes Media/Music/Boeboe/Welcome to Doggtown/04 We Feelin' (Love).mp3"
        //source: "http://podcast.dgen.net:8000/rinseradio"
        //magic
//        source: "http://icy-e-05.sharp-stream.com/magic1054.mp3"

        //radio1
        source: "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_intl_lc_radio1_p"
        autoLoad: true
        autoPlay: true
        volume: 0.7


    }



}
