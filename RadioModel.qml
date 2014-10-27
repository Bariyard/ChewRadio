import QtQuick 2.0

ListModel{

    ListElement{
        name: "BBC Radio1"
        icon: "Artwork/radio1.png"
        url: "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_intl_lc_radio1_p"
        site: "http://www.bbc.co.uk/radio1"
    }

    ListElement{
        name: "Rinse FM"
        icon: "Artwork/rinse.png"
        url: "http://podcast.dgen.net:8000/rinseradio"
        site: "http://rinse.fm"
    }

    ListElement{
        name:"Magic 105.4"
        icon: "Artwork/magic.png"
        url: "http://icy-e-05.sharp-stream.com:80/magic1054.mp3"
        site: "http://www.magic.co.uk"
    }
}
