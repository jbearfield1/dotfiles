import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
	id: workspaceRoot
	property real margin: 5
	implicitHeight: parent.implicitHeight
	implicitWidth: wsLayout.implicitWidth + margin * 2
	//implicitWidth: text.implicitWidth + margin * 2
	color: "#131927"

	property int workspaceCount: 8

	property int activeIndex: {
		const fw = Hyprland.focusedWorkspace;
		if (!fw) return -1;
		let idx = fw.id - 1;
		return (idx >= 0 && idx < workspaceCount) ? idx : -1;
	}

	RowLayout {
		id: wsLayout
		anchors.centerIn: parent
		implicitHeight: parent.implicitHeight
		spacing: 5

		Repeater {
			model: workspaceRoot.workspaceCount

			delegate: Item {
				id: wsEntry

				required property int index
				property int wsId: index + 1
				implicitWidth: text.implicitWidth
				implicitHeight: parent.implicitHeight

				Text {
					id: text
					text: wsId
					font.family: "JetBrains Mono Nerd Font"
					font.pixelSize: 14
					color: (workspaceRoot.activeIndex === index ? "#ffffff" : "#926b7d")
					anchors.centerIn: parent
				}
			}
		}
	}
}
