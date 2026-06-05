#Requires AutoHotkey v2.0
Persistent

; Answers
; A (A button = Joy1)
Joy1:: Send("1")
; B (B button = Joy2)
Joy2:: Send("2")
; C (Y button = Joy4)
Joy4:: Send("3")
; D (X button = Joy3)
Joy3:: Send("4")

; Page navigation
SetTimer(CheckPOV, 100)

CheckPOV() {
    static lastPOV := -1
    currentPOV := GetKeyState("JoyPOV")

    if (currentPOV != lastPOV) {
        lastPOV := currentPOV

        switch currentPOV {
            case 9000:
                Send("{Right}")
            case 27000:
                Send("{Left}")
            case 0:
                Send("{WheelUp}")    ; Scroll up
            case 18000:
                Send("{WheelDown}")  ; Scroll down
        }
    }
}