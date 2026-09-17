import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Layouts

Rectangle {
	id: soundWidgetRoot
	property real margin: 5
	implicitHeight: parent.height
	implicitWidth: text.implicitWidth + icon.implicitWidth + margin * 2
	color: "#131927"

	readonly property int volume: Math.round(Pipewire.defaultAudioSink.audio.volume * 100)
	readonly property bool isMuted: Pipewire.defaultAudioSink.audio.muted

	RowLayout {
		anchors.centerIn: parent
		spacing: 1
		Text {
			id: text
			text: `${volume}%`
			font.family: "JetBrains Mono Nerd Font"
			font.pixelSize: 13
			color: "#926b7d"

			PwObjectTracker {
				objects: Pipewire.nodes.values
			}
		}

		Text {
			id: icon
			readonly property string icon_string: {
				if (isMuted) return "no_sound"
				if (volume >= 50) return "volume_up"
				if (volume > 0) return "volume_down"
				return "volume_mute"
			}
			text: icon_string
			font.family: "Material Symbols Rounded"
			font.pixelSize: 20
			color: "#926b7d"
		}
	}
}
