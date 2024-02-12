IoGetGenericIrpExtension proc near      ; CODE XREF: sub_1405C9730+2B↓p
                                        ; DATA XREF: .rdata:000000014008F8A8↑o ...

; FUNCTION CHUNK AT 00000001404904A6 SIZE 00000028 BYTES

                sub     rsp, 28h
                mov     r10, rdx
                mov     r9d, 0C0000225h
                cmp     r8w, 4
                ja      short loc_140370D0F
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      loc_1404904AF
                test    rax, rax
                jz      short loc_140370D06
                movzx   eax, byte ptr [rax+2]
                test    al, 4
                jnz     loc_1404904A6

loc_140370D06:                          ; CODE XREF: IoGetGenericIrpExtension+28↑j
                                        ; IoGetGenericIrpExtension+11F7F9↓j
                mov     eax, r9d

loc_140370D09:                          ; CODE XREF: IoGetGenericIrpExtension+44↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140370D0F:                          ; CODE XREF: IoGetGenericIrpExtension+12↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140370D09
IoGetGenericIrpExtension endp
