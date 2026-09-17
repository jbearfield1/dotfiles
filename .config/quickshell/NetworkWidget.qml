import Quickshell.Networking
import QtQuick
import QtQuick.Layouts

Rectangle {
	id: networkWidgetRoot
	property real margin: 5
	implicitHeight: parent.height
	implicitWidth: text.implicitWidth + icon.implicitWidth + margin * 2
	color: "#131927"

	readonly property var device: Networking.devices.values.find(d => d.connected)
	readonly property bool isWifi: device.type === WifiDevice
	readonly property var network: device.networks.values.find(n => n.connected)

	RowLayout {
		anchors.centerIn: parent
		spacing: 1
		Text {
			id: text
			text: `${network.name} (${Math.round(network.signalStrength * 100)}%)`
			font.family: "JetBrains Mono Nerd Font"
			font.pixelSize: 13
			color: "#926b7d"
		}

		Text {
			id: icon
			//readonly property string icon_string: {
			//	if (!isWifi) return "";
			//	readonly property var signalStrength: network.signalStrength;
			//	if (signalStrength > 66) return "wifi";
			//	else if (signalStrength > 33) return "wifi_2_bar";
			//	else return "wifi_1_bar";
			//}
			//text: icon_string
			text: ""
			font.family: "Material Symbols Rounded"
			font.pixelSize: 20
			color: "#926b7d"
		}
	}
}
