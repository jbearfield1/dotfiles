import Quickshell
import QtQuick


Rectangle {
	property real margin: 5
	implicitWidth: text.width + margin * 2
	implicitHeight: parent.height
	color:"#131927"

	Text {
		id: text
		text: {
			Qt.formatDateTime(clock.date, "dddd, MMMM d  hh:mm")
		}
		font.family: "JetBrains Mono Nerd Font"
		font.pixelSize: 14
		color: "#926b7d"
		anchors.centerIn: parent

		SystemClock {
			id: clock
			precision: SystemClock.Minutes
		}
	}
}
