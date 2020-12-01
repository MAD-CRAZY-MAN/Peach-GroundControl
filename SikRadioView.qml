import QtQuick          2.3
import QtQuick.Window   2.2
import QtQuick.Controls 1.2

import QGroundControl               1.0
import QGroundControl.Palette       1.0
import QGroundControl.Controls      1.0
import QGroundControl.Controllers   1.0
import QGroundControl.ScreenTools   1.0

Rectangle
{
    visible: true
    id: myRect

    width:20
    height: 20;
    anchors.leftMargin: 10;
    anchors.topMargin: 10;

    color:  "blue"
    Text {
        id: myTxt
        text: qsTr("This is a good beginning")
        color:"red"
        font.pointSize: 20;
    }
}
