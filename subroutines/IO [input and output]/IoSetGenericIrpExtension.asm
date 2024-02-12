IoSetGenericIrpExtension proc near      ; CODE XREF: sub_1405C9730+65↓p
                                        ; DATA XREF: .rdata:0000000140093424↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140494912 SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   ebx, r8w
                mov     rdi, rdx
                cmp     ebx, 4
                ja      short loc_14037A4CB
                mov     edx, 2
                test    r9b, r9b
                jz      loc_140494912

loc_14037A4A4:                          ; CODE XREF: IoSetGenericIrpExtension+11A499↓j
                call    sub_1402A2A90
                test    rax, rax
                jz      short loc_14037A4D2
                mov     r8, rbx
                lea     rcx, [rax+4]
                mov     rdx, rdi
                call    memmove
                xor     eax, eax

loc_14037A4BF:                          ; CODE XREF: IoSetGenericIrpExtension+50↓j
                                        ; IoSetGenericIrpExtension+57↓j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037A4CB:                          ; CODE XREF: IoSetGenericIrpExtension+14↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14037A4BF
; ---------------------------------------------------------------------------

loc_14037A4D2:                          ; CODE XREF: IoSetGenericIrpExtension+2C↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14037A4BF
IoSetGenericIrpExtension endp
