PoFxPowerOnCrashdumpDevice proc near    ; DATA XREF: .pdata:00000001400F651C↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                push    rbx
                sub     rsp, 30h
                xor     ebx, ebx
                mov     r8, rdx
                test    rcx, rcx
                jnz     short loc_140569337
                mov     ecx, 0C000000Dh
                jmp     short loc_140569371
; ---------------------------------------------------------------------------

loc_140569337:                          ; CODE XREF: PoFxPowerOnCrashdumpDevice+E↑j
                mov     rdx, [rcx+250h]
                test    rdx, rdx
                jnz     short loc_14056934A
                mov     ecx, 0C0000001h
                jmp     short loc_140569371
; ---------------------------------------------------------------------------

loc_14056934A:                          ; CODE XREF: PoFxPowerOnCrashdumpDevice+21↑j
                mov     rax, [rcx+48h]
                lea     rcx, [rsp+38h+var_18]
                mov     [rsp+38h+var_18], rax
                mov     rax, rdx
                mov     [rsp+38h+var_10], r8
                call    sub_1404079D0
                mov     ecx, 0C0000001h
                test    al, al
                cmovz   ebx, ecx
                mov     ecx, ebx

loc_140569371:                          ; CODE XREF: PoFxPowerOnCrashdumpDevice+15↑j
                                        ; PoFxPowerOnCrashdumpDevice+28↑j
                mov     eax, ecx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxPowerOnCrashdumpDevice endp
