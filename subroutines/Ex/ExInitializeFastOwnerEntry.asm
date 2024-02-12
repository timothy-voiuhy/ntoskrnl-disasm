ExInitializeFastOwnerEntry proc near    ; DATA XREF: .rdata:0000000140099EF4↑o
                                        ; .pdata:00000001400DC50C↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049DA56 SIZE 00000017 BYTES

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                mov     rax, cr8
                mov     r9d, 2
                cmp     al, r9b
                ja      loc_14049DA56
                xor     edx, edx
                lea     r8d, [r9+46h]
                call    memset
                mov     rax, gs:188h
                mov     [rbx+20h], rax
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInitializeFastOwnerEntry endp
