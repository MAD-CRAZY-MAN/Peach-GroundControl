import QtQuick          2.3
import QtQuick.Window   2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts              1.11

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
       width:      233
       spacing:    _defaultTextHeight / 2

        QGCLabel {
            anchors.left:           parent.left
            anchors.right:          parent.right
            anchors.topMargin:      _verticalMargin + 10
            height:     20
            text:                   qsTr("Sik Radio setup")
            wrapMode:               Text.WordWrap
            horizontalAlignment:    Text.AlignHCenter
            visible:                !ScreenTools.isShortScreen
        }

        QGCButton {
            id:             loadButton
            anchors.left:           parent.left
            anchors.right:          parent.right
            anchors.leftMargin:     _horizontalMargin
            height:      40
            text:           qsTr("load setting")
        }
        QGCButton {
            id:             saveButton
            anchors.left:           parent.left
            anchors.right:          parent.right
            anchors.leftMargin:     _horizontalMargin
            height:      40
            text:           qsTr("save setting")
        }
    }

    Rectangle {
        id:                     divider
        anchors.topMargin:      _verticalMargin
        anchors.bottomMargin:   _verticalMargin
        anchors.leftMargin:     _horizontalMargin
        anchors.rightMargin:    _horizontalMargin
        anchors.left:           buttonColumn.right
        anchors.top:            parent.top
        anchors.bottom:         parent.bottom
        width:                  1
        color:                  qgcPal.windowShade
   }

    Rectangle {
        id:                     parameterSetup
        anchors.right:          parent.right
        anchors.top:            parent.top
        anchors.bottom:         parent.bottom
        anchors.left:           divider.right
        color:                  qgcPal.window

        QGCLabel {
            id: comport
            text: qsTr("ComPort")
            anchors.left:           parent.left
            anchors.top:            parent.top
            anchors.topMargin:       _verticalMargin
            anchors.leftMargin:     _horizontalMargin
            font.pointSize: 15
            font.bold: true
        }

        RowLayout {
            id: comportLayout
            anchors.top:  comport.bottom
            anchors.left: parent.bottom
            anchors.leftMargin:     _horizontalMargin
            spacing: 50
            QGCLabel {
                text: qsTr("Port")
            }
            QGCComboBox {
                width: 300
                model: [ "Banana", "Apple", "Coconut" ]
            }
        }

        QGCLabel {
            id: local
            text: qsTr("Local")
            anchors.left:           parent.left
            anchors.top:            comportLayout.bottom
            anchors.leftMargin:     _horizontalMargin
            anchors.topMargin:     _horizontalMargin * 3
            font.pointSize: 15
            font.bold: true
        }


        RowLayout {
            id: parameterLayout
            anchors.top: local.bottom
            anchors.left: parent.right
            anchors.leftMargin:     _horizontalMargin
            spacing: 50
            QGCLabel {
                text: qsTr("Net ID")
            }
            QGCComboBox {
                model: [ "asdf", "asdfd", "as" ]
            }
       }
   }
}
