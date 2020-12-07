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
    id:     sikView
    color:  qgcPal.window
    z:      QGroundControl.zOrderTopMost

    ExclusiveGroup { id: setupButtonGroup }

    readonly property real  _defaultTextHeight:     ScreenTools.defaultFontPixelHeight
    readonly property real  _defaultTextWidth:      ScreenTools.defaultFontPixelWidth
    readonly property real  _horizontalMargin:      _defaultTextWidth / 2
    readonly property real  _verticalMargin:        _defaultTextHeight / 2
    readonly property real  _buttonWidth:           _defaultTextWidth * 18


    Column{
       id : buttonColumn
       width:      200
       spacing:    _defaultTextHeight / 2
        QGCLabel {
            anchors.left:           parent.left
            anchors.right:          parent.right
            text:                   qsTr("Sik Radio setup")
            wrapMode:               Text.WordWrap
            horizontalAlignment:    Text.AlignHCenter
            visible:                !ScreenTools.isShortScreen
        }

        QGCButton {
            id:             loadButton
            anchors.left:           parent.left
            anchors.right:          parent.right
            text:           qsTr("load setting")
        }
        QGCButton {
            id:             saveButton
            anchors.left:           parent.left
            anchors.right:          parent.right
            text:           qsTr("save setting")
        }
    }
    Rectangle {
        id:                     divider
        anchors.topMargin:      _verticalMargin
        anchors.bottomMargin:   _verticalMargin
        anchors.leftMargin:     _horizontalMargin
        anchors.left:           buttonColumn.right
        anchors.top:            parent.top
        anchors.bottom:         parent.bottom
        width:                  1
        color:                  "white"//qgcPal.windowShade
    }

   GroupBox {
       anchors.left: divider.right
       anchors.right:          parent.right
       anchors.top:            parent.top
       anchors.leftMargin:     _horizontalMargin
       width: 3000
       height: 2000
       title: qsTr("Local")
       ColumnLayout{
           x: 10
           y: 10
           spacing: 10
           anchors.margins: 2
           RowLayout{
               QGCLabel {
                   //anchors.left:           parent.left
                   //anchors.right:          parent.right
                   text:                   qsTr("serial: ")
                   //wrapMode:               Text.WordWrap
                   //horizontalAlignment:    Text.AlignHleft
                   //visible:                !ScreenTools.isShortScreen
               }
               QGCComboBox {
                   id: portComBox
                   Layout.fillWidth: true
               //    Layout.minimumHeight: 30
                 //  Layout.maximumHeight: 30
                   model: [ "Banana", "Apple", "Coconut" ]
                //currentIndex:2
               }
          }
      }
  }
}





