; Force a reboot (reboot + force = 2 + 4 = 6):
;Shutdown, 6

; Call the Windows API function "SetSuspendState" to have the system suspend or hibernate.
; Parameter #1: Pass 1 instead of 0 to hibernate rather than suspend.
; Parameter #2: Pass 1 instead of 0 to suspend immediately rather than asking each application for permission.
; Parameter #3: Pass 1 instead of 0 to disable all wake events.

>+Backspace::
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
return