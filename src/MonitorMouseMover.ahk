; MonitorMouseMover
; A simple script that moves the mouse cursor from one monitor to another (with toggle)
; Matthias Schuetz, http://matthiasschuetz.com
;
; Copyright (C) Matthias Schuetz
; Free to use under the MIT license

#SingleInstance, Force

CoordMode, Mouse, Screen

SysGet, monitorCount, MonitorCount
MouseGetPos, x, y

Monitors := Object()

If (monitorCount < 2 || monitorCount > 2)
	return

Loop, %monitorCount% {
	SysGet, monitor, Monitor, %A_Index%

	Monitors[A_Index, 0] := monitorLeft
	Monitors[A_Index, 1] := monitorRight
	Monitors[A_Index, 2] := monitorRight - monitorLeft
	Monitors[A_Index, 3] := monitorBottom - monitorTop
}

If (Monitors[1][0] < Monitors[2][0]) {
	primaryMonitorLeft := Monitors[1][0]
	primaryMonitorRight := Monitors[1][1]
	targetMonitorX := Monitors[1][2]
	targetMonitorY := Monitors[1][3]
	sourceMonitorX := Monitors[2][2]
	sourceMonitorY := Monitors[2][3]
} Else {
	primaryMonitorLeft := Monitors[2][0]
	primaryMonitorRight := Monitors[2][1]
	targetMonitorX := Monitors[2][2]
	targetMonitorY := Monitors[2][3]
	sourceMonitorX := Monitors[1][2]
	sourceMonitorY := Monitors[1][3]
}

If (primaryMonitorLeft < 0) {
	If (x < primaryMonitorRight) {
		MouseMove, (sourceMonitorX / 2), (sourceMonitorY / 2)
	} Else {
		MouseMove, -(targetMonitorX / 2), (targetMonitorY / 2)
	}
} Else {
	If (x < primaryMonitorRight) {
		MouseMove, (targetMonitorX + (sourceMonitorX / 2)), (sourceMonitorY / 2)
	} Else {
		MouseMove, (targetMonitorX / 2), (targetMonitorY / 2)
	}
}