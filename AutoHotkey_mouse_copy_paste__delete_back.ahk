#Requires AutoHotkey v1.1
#SingleInstance Force
SendMode Input
SetBatchLines -1

; -----------------------------
; Settings
; -----------------------------
HoldTime := 0.4
TooltipTime := 100

; -----------------------------
; Middle Click
; -----------------------------
MButton::
    if IsHeld("MButton")
    {
        SendInput, {Del}
        ShowTip("Deleted!")
    }
    else
    {
        SendInput, !{Left}
        ShowTip("Back!")
    }
return

; -----------------------------
; Left Click Held → Copy
; -----------------------------
~LButton::
    if IsHeld("LButton")
    {
        SendInput, ^c
        ShowTip("Copied!")
    }
return

; -----------------------------
; Right Click Held → Paste
; -----------------------------
~RButton::
    if IsHeld("RButton")
    {
        SendInput, ^v
        ShowTip("Pasted!")
    }
return

; -----------------------------
; Functions
; -----------------------------

IsHeld(key) {
    global HoldTime
    KeyWait, %key%, T%HoldTime%
    return ErrorLevel
}

ShowTip(msg) {
    global TooltipTime
    ToolTip, %msg%
    SetTimer, RemoveTooltip, -%TooltipTime%
}

RemoveTooltip:
    ToolTip
return


