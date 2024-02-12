KeSetIdealProcessorThread proc near     ; CODE XREF: NtSetInformationThread+AA8↓p
                                        ; DATA XREF: .pdata:00000001400DAF7C↑o

arg_0           = dword ptr  8
arg_8           = word ptr  10h
arg_A           = byte ptr  12h
arg_B           = byte ptr  13h

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                mov     rax, gs:188h
                cmp     rcx, rax
                jnz     short loc_14037ABC5
                movzx   eax, word ptr [rcx+248h]

loc_14037AB9E:                          ; CODE XREF: KeSetIdealProcessorThread+4C↓j
                mov     [rsp+28h+arg_A], dl
                lea     r8, [rsp+28h+arg_0]
                lea     rdx, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], ax
                mov     [rsp+28h+arg_B], 0
                call    sub_14037ABD4
                mov     al, byte ptr [rsp+28h+arg_0+2]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037ABC5:                          ; CODE XREF: KeSetIdealProcessorThread+15↑j
                movzx   eax, word ptr [rcx+230h]
                jmp     short loc_14037AB9E
KeSetIdealProcessorThread endp
