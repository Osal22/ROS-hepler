import QtQuick 2.12
import QtQuick.Window 2.12
import Controll 1.0

Window {
    id:rootWindow
    visible: true
    width: 55
    height: 95
    minimumHeight: height
    minimumWidth: width
    maximumHeight: height
    maximumWidth: width
    title: qsTr("Hello World")
    flags: {
     Qt.FramelessWindowHint | Qt.Window | Qt.WindowStaysOnTopHint
    }


Controll
{
    id:controll_btn
}

MouseArea{
    anchors.fill: parent
    width: parent.width
    height: parent.height
    property variant clickPos: "1,1"

    onPressed: {
        clickPos  = Qt.point(mouse.x,mouse.y)
    }

    onPositionChanged: {
        var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
        rootWindow.x += delta.x;
        rootWindow.y += delta.y;
    }


}

    Rectangle{
        id:rectbuild
        anchors.top:parent.top
        anchors.left: parent.left
        width:45
        height:45
        color: "transparent"

        Image {
            anchors.fill: parent
            id: imgbuild
            source: "/image/build.png"
        }
        MouseArea{
        width: parent.width
        height: parent.height
        id:buildmousearea
        hoverEnabled: true
        onEntered: {
            imgbuild.source="/image/build_hov.png"
        }
        onExited: {
            imgbuild.source="/image/build.png"

        }
        onClicked: {
            controll_btn.build()
        }

    }
    }

    Rectangle{
        id:rectrun
        anchors.top: rectbuild.bottom
        anchors.topMargin: 5
        anchors.left: rectbuild.left
        width: 45
        height: 45
        color: "transparent"
        Image {
            anchors.fill: parent
            id: imgrun
            source: "/image/run.png"
        }

        MouseArea{
        width: parent.width
        height: parent.height
        id:runmousearea
        hoverEnabled: true
        onEntered: {
            imgrun.source="/image/run_hov.png"
        }
        onExited: {
            imgrun.source="/image/run.png"

        }
        onClicked: {
            controll_btn.run_p();
        }
    }
    }


}
