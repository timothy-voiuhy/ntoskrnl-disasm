KeInitializeCrashDumpHeader proc near   ; DATA XREF: .pdata:00000001400F26B8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_20]
                mov     r10, r8
                xor     r8d, r8d
                mov     r11d, 2000h
                test    rax, rax
                jz      short loc_1405057BD
                mov     [rax], r11d

loc_1405057BD:                          ; CODE XREF: KeInitializeCrashDumpHeader+18↑j
                cmp     ecx, 1
                jz      short loc_1405057C9
                mov     eax, 0C00000EFh
                jmp     short loc_14050580E
; ---------------------------------------------------------------------------

loc_1405057C9:                          ; CODE XREF: KeInitializeCrashDumpHeader+20↑j
                test    edx, edx
                jz      short loc_1405057D4
                mov     eax, 0C00000F0h
                jmp     short loc_14050580E
; ---------------------------------------------------------------------------

loc_1405057D4:                          ; CODE XREF: KeInitializeCrashDumpHeader+2B↑j
                cmp     r9d, r11d
                jnb     short loc_1405057E0
                mov     eax, 0C00000F2h
                jmp     short loc_14050580E
; ---------------------------------------------------------------------------

loc_1405057E0:                          ; CODE XREF: KeInitializeCrashDumpHeader+37↑j
                mov     rax, gs:188h
                xor     r9d, r9d
                mov     [rsp+48h+var_10], rax
                mov     rcx, r10
                mov     [rsp+48h+var_18], r8
                mov     [rsp+48h+var_20], r8
                lea     edx, [r9+1]
                mov     [rsp+48h+var_28], r8
                call    sub_140501C08
                xor     eax, eax

loc_14050580E:                          ; CODE XREF: KeInitializeCrashDumpHeader+27↑j
                                        ; KeInitializeCrashDumpHeader+32↑j ...
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeCrashDumpHeader endp
