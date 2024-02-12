IoLoadCrashDumpDriver proc near         ; DATA XREF: .pdata:00000001400F252C↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_18          = qword ptr  20h

                push    rbx
                sub     rsp, 40h
                and     [rsp+48h+arg_18], 0
                mov     rbx, r8
                and     [rsp+48h+var_18], 0
                cmp     cs:dword_140CF4DB0, 0
                jnz     short loc_140502825
                mov     eax, 0C0000002h
                jmp     short loc_140502881
; ---------------------------------------------------------------------------

loc_140502825:                          ; CODE XREF: IoLoadCrashDumpDriver+1C↑j
                cmp     dword ptr [rdx], 18h
                jnz     short loc_14050287C
                cmp     dword ptr [r8], 18h
                jnz     short loc_14050287C
                mov     rax, [rdx+8]
                test    rax, rax
                jz      short loc_14050287C
                mov     r8, [rdx+10h]
                test    r8, r8
                jz      short loc_14050287C
                lea     rdx, [rsp+48h+var_18]
                mov     r9d, 2
                mov     [rsp+48h+var_20], rdx
                lea     rdx, [rsp+48h+arg_18]
                mov     [rsp+48h+var_28], rdx
                mov     rdx, rax
                call    MmLoadSystemImage
                test    eax, eax
                js      short loc_140502881
                mov     rcx, [rsp+48h+arg_18]
                mov     [rbx+8], rcx
                mov     rcx, [rsp+48h+var_18]
                mov     [rbx+10h], rcx
                jmp     short loc_140502881
; ---------------------------------------------------------------------------

loc_14050287C:                          ; CODE XREF: IoLoadCrashDumpDriver+28↑j
                                        ; IoLoadCrashDumpDriver+2E↑j ...
                mov     eax, 0C000000Dh

loc_140502881:                          ; CODE XREF: IoLoadCrashDumpDriver+23↑j
                                        ; IoLoadCrashDumpDriver+66↑j ...
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoLoadCrashDumpDriver endp
