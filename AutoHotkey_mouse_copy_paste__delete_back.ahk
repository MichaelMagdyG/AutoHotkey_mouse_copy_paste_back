~LButton::
    KeyWait, LButton, T0.4
    if ErrorLevel
        Send, ^c
return

~RButton::
    KeyWait, RButton, T0.4
    if ErrorLevel
        Send, ^v
return

; Middle click pressed
MButton::
    KeyWait, MButton, T0.4
    if ErrorLevel
    {
        ; Held: delete
        Send, {Del}
    }
    else
    {
        ; Just a tap: go back
        Send, !{Left}
    }
return
