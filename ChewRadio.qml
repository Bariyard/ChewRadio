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

    Column{
        id: columnView
        //anchors.centerIn: root
        Rectangle{ id: headRec ; width: root.width; height: 30; color :"black"
            Header{ id: head; connectionStatus: "Ready"; anchors.fill: headRec}
        }

        Rectangle{ id: playRec ; width: root.width; height: 100 ; color: "blue"
            RadioPlayer{id: player; anchors.fill:playRec}
        }

        Rectangle{ id: radioSelectionRec ; width: root.width - 10; height: (root.height - (headRec.height + playRec.height) );
            anchors.horizontalCenter: columnView.horizontalCenter

            GridView {
                id: view
                anchors.top:  radioSelectionRec.top
                anchors.topMargin: 5
                width: radioSelectionRec.width; height: radioSelectionRec.height
                anchors.fill: radioSelectionRec
                interactive: false
                cellWidth: radioSelectionRec.width/4; cellHeight: radioSelectionRec.width/4
                model: RadioInfoModel {}
                delegate: RadioDel{}
            }
        }
    }

    Audio{
        id: audioPlayer
        source: ""
        autoLoad: false
        autoPlay: true
        volume: 0.7
        onStatusChanged: {
            console.log(audioPlayer.status)

            switch(audioPlayer.status){

            case Audio.NoMedia:
                //no media has been set.
                head.connectionStatus = "NoMedia"
                break;
            case Audio.Loading:
                //the media is currently being loaded.
                head.connectionStatus = "Loading"
                break;
            case Audio.Loaded:
                //the media has been loaded.
                head.connectionStatus = "Loaded"
                break;
            case Audio.Buffering:
                //the media is buffering data
                head.connectionStatus = "Buffering"
                break;
            case Audio.Stalled:
                //playback has been interrupted while the media is buffering data.
                head.connectionStatus = "Stalled"
                break;
            case Audio.Buffered:
                //the media has buffered data
                head.connectionStatus = "Connected"
                break;
            case Audio.EndOfMedia:
                //the media has played to the end
                head.connectionStatus = "EndOfMedia"
                break;
            case Audio.InvalidMedia:
                //the media cannot be played
                head.connectionStatus = "InvalidMedia"
                break;
            case Audio.UnknownStatus:
                //the status of the media is unknown
                head.connectionStatus = "UnknownStatus"
                break;
            default:break;
            }
            console.log(audioPlayer.metaData.title)
        }
    }

}
