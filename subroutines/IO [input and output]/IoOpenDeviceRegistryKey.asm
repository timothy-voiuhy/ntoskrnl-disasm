IoOpenDeviceRegistryKey proc near       ; DATA XREF: .pdata:0000000140105AE0↑o

var_28          = dword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     rdi, r9
                mov     r14d, r8d
                mov     ebx, edx
                mov     rsi, rcx
                test    rcx, rcx
                jz      loc_14070662D
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                test    rdx, rdx
                jz      loc_14070662D
                test    dword ptr [rdx+18Ch], 20000h
                jnz     loc_14070662D
                test    bl, 1
                jnz     loc_140706623
                test    bl, 2
                jz      loc_14070662D
                mov     ebp, 12h

loc_140706578:                          ; CODE XREF: IoOpenDeviceRegistryKey+118↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                mov     rax, [rsi+138h]
                mov     r8d, ebp
                mov     rcx, cs:qword_140CF4378
                bts     r8d, 9
                and     bl, 4
                mov     rdx, [rax+28h]
                cmovz   r8d, ebp
                and     [rsp+48h+var_10], 0
                xor     r9d, r9d
                mov     [rsp+48h+var_18], rdi
                mov     [rsp+48h+var_20], 1
                mov     rdx, [rdx+30h]
                mov     [rsp+48h+var_28], r14d
                call    sub_14062C9F8
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407065EB
                test    rdi, rdi
                jz      short loc_1407065EB
                mov     rcx, [rdi]
                call    sub_14070663C

loc_1407065EB:                          ; CODE XREF: IoOpenDeviceRegistryKey+CC↑j
                                        ; IoOpenDeviceRegistryKey+D1↑j
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx

loc_140706607:                          ; CODE XREF: IoOpenDeviceRegistryKey+122↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140706623:                          ; CODE XREF: IoOpenDeviceRegistryKey+54↑j
                mov     ebp, 11h
                jmp     loc_140706578
; ---------------------------------------------------------------------------

loc_14070662D:                          ; CODE XREF: IoOpenDeviceRegistryKey+27↑j
                                        ; IoOpenDeviceRegistryKey+3B↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_140706607
IoOpenDeviceRegistryKey endp
