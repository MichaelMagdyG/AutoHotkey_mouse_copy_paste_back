; -----------------------------
; Mouse Actions Script
; Back, Copy, Delete, Paste
; -----------------------------

; Middle click actions
MButton::
    KeyWait, MButton, T0.4
    if ErrorLevel
    {
        ; Held: Delete
        Send, {Del}
        ToolTip, Deleted!
        SetTimer, RemoveTooltip, -100
    }
    else
    {
        ; Tap: Back
        Send, !{Left}
        ToolTip, Back!
        SetTimer, RemoveTooltip, -100
    }
return

; Left click held → Copy
~LButton::
    KeyWait, LButton, T0.4
    if ErrorLevel
    {
        Send, ^c
        ToolTip, Copied!
        SetTimer, RemoveTooltip, -100
    }
return

; Right click held → Paste
~RButton::
    KeyWait, RButton, T0.4
    if ErrorLevel
    {
        Send, ^v
        ToolTip, Pasted!
        SetTimer, RemoveTooltip, -100
    }
return

RemoveTooltip:
    ToolTip
return
