# AutoHotkey Controller Scripts

These scripts require **AutoHotkey v2.0** and map gamepad/controller inputs to keyboard shortcuts for specific workflows.

## `pdf_controller.ahk`

Controller mapping for reading PDFs in **Adobe Acrobat**. Hotkeys are active only when an Acrobat window is focused.

| Controller input | Action |
|---|---|
| A / `Joy1` | Zoom in, sends `Ctrl` + `=` |
| B / `Joy2` | Zoom out, sends `Ctrl` + `-` |
| X / `Joy3` | Next page, sends `Page Down` |
| Y / `Joy4` | Previous page, sends `Page Up` |
| Start / `Joy8` | Toggle Read Mode, sends `Ctrl` + `H` |
| Right trigger / high `JoyZ` | Scroll down |
| Left trigger / low `JoyZ` | Scroll up |

Run the script, then open or focus Adobe Acrobat. The trigger scroll loop checks input every 50 ms and only sends scroll commands while Acrobat is active.

## `roq_controller.ahk`

Controller mapping for answering multiple-choice questions (specifically made with radoncquestions in mind) and navigating pages.

| Controller input | Action |
|---|---|
| A / `Joy1` | Sends `1` |
| B / `Joy2` | Sends `2` |
| Y / `Joy4` | Sends `3` |
| X / `Joy3` | Sends `4` |
| D-pad right / `JoyPOV 9000` | Sends `Right Arrow` |
| D-pad left / `JoyPOV 27000` | Sends `Left Arrow` |
| D-pad up / `JoyPOV 0` | Scrolls up |
| D-pad down / `JoyPOV 18000` | Scrolls down |

Run the script before starting the question workflow. Unlike the PDF script, these hotkeys are global and are not limited to a specific active window.
