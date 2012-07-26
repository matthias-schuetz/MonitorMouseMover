MonitorMouseMover
=================

## A simple script that moves the mouse cursor from one monitor to another in a dual monitor setup (with toggle)

MonitorMouseMover was developed to speed up the work with the mouse. Nearly every developer or designer uses two monitors and if you have to switch between the screens very often, a script like MonitorMouseMover can help you.

<img src="http://matthias-schuetz.github.com/monitormousemover/monitormousemover.gif" />

## Usage

There are two versions of the script: One which just toggles the mouse cursor position from one monitor to another (screen center) and exits. This version is meant to be used with a seperate shortcut tool. The standalone version of MonitorMouseMover runs in the background (system tray) and provides the configuration of a hotkey you can use to activate the script. Just choose the version you like and compile it with AutoHotkey.

### Requirements

Microsoft Windows

## Configuration (Standalone version)

The standalone version of MonitorMouseMover comes with an INI configuration file which is built up as follows:

```
[shortcut]

; Shortcut to run MonitorMouseMover
;
; Example:
; #x equals "WIN+X"
;
; Possible modifier keys:
; #        WIN
; !        ALT
; ^        CTRL
; +        SHIFT

Hotkey=#x
```

You can simply adjust the hotkey variable as you want. After restarting MonitorMouseMover, the new hotkey is active.

## License

MonitorMouseMover is released under the MIT license.