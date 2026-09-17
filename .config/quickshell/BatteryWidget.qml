import Quickshell.Services.UPower
import Quickshell.Widgets
import QtQuick
import QtQuick.Layouts

Rectangle {
	id: batWidgetRoot
	property real margin: 5
	implicitHeight: parent.height
	implicitWidth: text.implicitWidth + icon.implicitWidth + margin * 2
	color: "#131927"

	readonly property int percentage: Math.round(UPower.displayDevice.percentage * 100)
	readonly property bool isCharging: !(UPower.displayDevice.state === UPowerDeviceState.Discharging)

	RowLayout {
		anchors.centerIn: parent
		spacing: 1
		Text {
			id: text
			text: `${batWidgetRoot.percentage}%`
			font.family: "JetBrains Mono Nerd Font"
			font.pixelSize: 13
			color: "#926b7d"
		}

		Text {
			id: icon
			readonly property string icon_string: {
				if (isCharging) return "battery_charging_full"
				else if (percentage >= 87.5) return "battery_full"
				else return `battery_${Math.floor(batWidgetRoot.percentage / 12.5)}_bar`
				//return `battery_${Math.max(Math.floor(batWidgetRoot.percentage / 12.5) - 1, 0)}_bar`
			}
			text: icon_string
			font.family: "Material Symbols Rounded"
			font.pixelSize: 20
			color: "#926b7d"
		}
	}
}
