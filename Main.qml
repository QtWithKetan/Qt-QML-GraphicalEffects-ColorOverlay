import QtQuick
import Qt5Compat.GraphicalEffects

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item
    {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        Image
        {
            id: sourceImage
            source: "https://upload.wikimedia.org/wikipedia/en/9/94/Simba_%28_Disney_character_-_adult%29.png"
            sourceSize: Qt.size(parent.width, parent.height)
            smooth: true
            visible: false
        }

        ColorOverlay
        {
            anchors.fill: sourceImage
            source: sourceImage
            color: "#800000FF"
            cached: true
        }
    }
}
