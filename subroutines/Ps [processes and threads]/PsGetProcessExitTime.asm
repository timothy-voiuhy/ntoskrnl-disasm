PsGetProcessExitTime proc near          ; DATA XREF: .pdata:00000001401066C8↑o
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                mov     rax, [rax+840h]
                retn
PsGetProcessExitTime endp
