import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
import SignalMechnism 1.0
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal System Mechanism")
    SignalClass{
        id:signalMech
    }
    Label{
        id:mylabel
        text: qsTr("Current count is : ")+signalMech.count
        font.pixelSize: 24
        anchors.centerIn: parent
        color: "Green"
    }
    Button{
        text: qsTr("Count ++")
        highlighted: true
        anchors{
            top: mylabel.bottom
            topMargin: 20
            horizontalCenter: parent.horizontalCenter
        }

        onClicked: {
            signalMech.count = signalMech.count+1;
        }
    }
}
