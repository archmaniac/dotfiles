; ==========================================
; Win + Ctrl + Enter -> Close active window
; ==========================================
#^Enter::
    WinClose, A
return

; ==========================================
; Win + Shift + Enter -> Toggle Maximize
; ==========================================
#+Enter::
    if (WinGetMinMax("A") = 1)
        WinRestore, A
    else
        WinMaximize, A
return

; ==========================================
; Win + Alt + Space -> Center active window
; ==========================================
#!Space::
    WinGetPos, X, Y, W, H, A
    NewX := (A_ScreenWidth - W) // 2
    NewY := (A_ScreenHeight - H) // 2
    WinMove, A,, NewX, NewY
return

; ==========================================
; Win + Ctrl + Space -> Minimize active window
; ==========================================
#^Space::
    WinMinimize, A
return

; ==========================================
; Win + Enter -> Open CMD
; ==========================================
#Enter::
    Run, cmd.exe
    WinWait, ahk_exe cmd.exe,, 5
    WinActivate, ahk_exe cmd.exe
return

; ==========================================
; Win + B -> Open a new Microsoft Edge window
; ==========================================
#b::
    Run, msedge.exe --new-window
    WinWait, ahk_exe msedge.exe,, 5
    WinActivate, ahk_exe msedge.exe
return
