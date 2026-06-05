#Requires AutoHotkey v2.0
Persistent

; ---- Activate hotkeys only when Acrobat is active ----
HotIfWinActive "ahk_class AcrobatSDIWindow"

; Zoom In (A button = Joy1)
Joy1:: Send("^=")  ; Ctrl + =
; Zoom Out (B button = Joy2)
Joy2:: Send("^-")

; Next Page (X button = Joy3)
Joy3:: Send("{PgDn}")
; Previous Page (Y button = Joy4)
Joy4:: Send("{PgUp}")

; Toggle Read Mode (Start button = Joy8)
Joy8:: Send("^h")

HotIfWinActive ; clear context

; ---- Trigger-based scroll loop ----
SetTimer(CheckTriggers, 50)

CheckTriggers() {
    ; Only act if Acrobat is active
    if !WinActive("ahk_class AcrobatSDIWindow")
        return

    ; Get Z-axis state (shared for LT/RT on most controllers)
    zAxis := GetKeyState("JoyZ", "Raw")

    ; Debug: ToolTip("Z: " zAxis) ; uncomment for testing

    if zAxis > 70 {
        Send("{WheelDown}")
    } else if zAxis < 30 {
        Send("{WheelUp}")
    }
}
