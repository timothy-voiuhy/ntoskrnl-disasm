IoRegisterBootDriverCallback proc near  ; DATA XREF: .pdata:000000014010F0BC↑o

var_48          = byte ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 60h
                and     dword ptr [rax-34h], 0
                xorps   xmm0, xmm0
                and     dword ptr [rax-1Ch], 0
                mov     rbx, rdx
                cmp     cs:byte_140C45598, 0
                mov     rdi, rcx
                movups  xmmword ptr [rax-48h], xmm0
                jnz     short loc_1407D22E6
                cmp     cs:qword_140D586B8, 0
                jnz     short loc_1407D22C8
                lea     rdx, aCallbackBootdr ; "\\Callback\\BootDriver"
                lea     rcx, [rax-48h]
                call    RtlInitUnicodeString
                and     [rsp+68h+var_30], 0
                lea     rax, [rsp+68h+var_48]
                mov     r9b, 1
                mov     [rsp+68h+var_38], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rsp+68h+var_20], 240h
                mov     r8b, r9b
                mov     [rsp+68h+var_28], rax
                lea     rdx, [rsp+68h+var_38]
                lea     rcx, qword_140D586B8
                movdqu  [rsp+68h+var_18], xmm0
                call    ExCreateCallback
                test    eax, eax
                js      short loc_1407D22E6

loc_1407D22C8:                          ; CODE XREF: IoRegisterBootDriverCallback+32↑j
                mov     rcx, cs:qword_140D586B8
                mov     r8, rbx
                mov     rdx, rdi
                call    ExRegisterCallback

loc_1407D22DA:                          ; CODE XREF: IoRegisterBootDriverCallback+A8↓j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407D22E6:                          ; CODE XREF: IoRegisterBootDriverCallback+28↑j
                                        ; IoRegisterBootDriverCallback+86↑j
                xor     eax, eax
                jmp     short loc_1407D22DA
IoRegisterBootDriverCallback endp
