import QtQuick 2.0

//Item {
//    id: header
    Rectangle{
        id: headerRec
        color: "black"
        width: parent.width
        height: 30


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

