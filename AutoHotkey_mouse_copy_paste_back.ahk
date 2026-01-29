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

MButton::
    Send, !{Left}
return
