import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Scope {
	id: root
	property string time

	Variants {
		model: Quickshell.screens;

		PanelWindow {
			required property var modelData
			screen: modelData
			color: "#2f2d42"

			anchors {
				top: true
				left: true
				right: true
			}

			implicitHeight: 25

			DateTimeWidget {
				anchors.centerIn: parent
			}

			RowLayout {
				id: layout
				anchors.right: parent.right
				anchors.verticalCenter: parent.verticalCenter
				anchors.rightMargin: 5
				implicitHeight: parent.height

				BatteryWidget {
					id: batteryWidget
				}

				SoundWidget {
					id: soundWidget
				}

				NetworkWidget {
					id: networkWidget
				}
			}

			Workspaces {
				id: workspaces
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
				anchors.leftMargin: 5
				implicitHeight: parent.height
			}
		}
	}

}
