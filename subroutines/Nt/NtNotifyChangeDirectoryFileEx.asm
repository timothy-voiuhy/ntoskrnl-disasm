NtNotifyChangeDirectoryFileEx proc near ; CODE XREF: NtNotifyChangeDirectoryFile+47↑p
                                        ; DATA XREF: .pdata:0000000140106194↑o ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = byte ptr  48h
arg_48          = dword ptr  50h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+20h], r9
                mov     [r11+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rbx, rdx
                mov     rdi, rcx
                xor     r13d, r13d
                mov     [r11-50h], r13
                mov     [r11-48h], r13
                mov     rax, gs:188h
                mov     [rsp+98h+var_38], rax
                mov     r15b, [rax+232h]
                test    r15b, r15b
                jz      short loc_14070F1E7

loc_14070F18B:                          ; DATA XREF: .rdata:00000001400858E0↑o
;   __try { // __except at loc_14070F1E2
                mov     rcx, [r11+28h]
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovnb  rcx, rax
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     r12d, [rsp+98h+arg_30]
                test    r12d, r12d
                jz      short loc_14070F1C6
                mov     edx, r12d
                lea     r8d, [r13+4]
                mov     rcx, [rsp+98h+arg_28]
                call    ProbeForWrite
                nop
;   } // starts at 14070F18B

loc_14070F1C6:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+6F↑j
                                        ; DATA XREF: .rdata:00000001400858E0↑o
                mov     eax, [rsp+98h+arg_38]
                test    eax, 0FFFFF000h
                jnz     short loc_14070F1D8
                test    eax, eax
                jnz     short loc_14070F1EF

loc_14070F1D8:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+92↑j
                mov     eax, 0C000000Dh
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F1E2:                          ; DATA XREF: .rdata:00000001400858E0↑o
;   __except(1) // owned by 14070F18B
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F1E7:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+49↑j
                mov     r12d, [rsp+98h+arg_30]

loc_14070F1EF:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+96↑j
                mov     [rsp+98h+var_78], r13
                lea     r9, [rsp+98h+var_50]
                mov     r8b, r15b
                mov     r14d, 1
                mov     edx, r14d
                mov     rcx, rdi
                call    sub_1402433F0
                test    eax, eax
                js      loc_14070F57A
                mov     rdi, [rsp+98h+var_50]
                cmp     [rdi+0B0h], r13
                jz      short loc_14070F23B
                test    [rsp+98h+arg_10], 0FFFFFFFFFFFFFFFEh
                jz      short loc_14070F23B
                mov     ebx, 0C000000Dh
                jmp     loc_14070F31F
; ---------------------------------------------------------------------------

loc_14070F23B:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+E1↑j
                                        ; NtNotifyChangeDirectoryFileEx+EF↑j
                test    rbx, rbx
                jz      short loc_14070F284
                mov     r8, cs:ExEventObjectType
                mov     [rsp+98h+var_40], r13
                mov     [rsp+98h+var_70], r13
                lea     rax, [rsp+98h+var_40]
                mov     [rsp+98h+var_78], rax
                mov     r9b, r15b
                mov     edx, 2
                mov     rcx, rbx
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                mov     rcx, [rsp+98h+var_40]
                mov     [rsp+98h+var_48], rcx
                test    eax, eax
                js      loc_14070F31F
                call    KeResetEvent

loc_14070F284:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+FE↑j
                mov     esi, [rdi+50h]
                test    sil, 2
                jz      loc_14070F335
                shr     esi, 2
                and     sil, r14b
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+98h+var_50]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+98h+var_58], r13b
                mov     ecx, r14d
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_14070F2E7
                test    rax, rax
                jz      short loc_14070F2D5
                or      [rax+1Ah], r14b

loc_14070F2D5:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+18F↑j
                mov     rdi, [rsp+98h+var_50]
                mov     rcx, rdi
                call    ObfReferenceObject
                mov     ebx, r13d
                jmp     short loc_14070F309
; ---------------------------------------------------------------------------

loc_14070F2E7:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+18A↑j
                lea     rcx, [rsp+98h+var_58]
                mov     [rsp+98h+var_78], rcx
                mov     r9, rax
                mov     r8b, sil
                mov     dl, r15b
                mov     rdi, [rsp+98h+var_50]
                mov     rcx, rdi
                call    sub_1406A0C70
                mov     ebx, eax

loc_14070F309:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+1A5↑j
                cmp     [rsp+98h+var_58], r13b
                jz      short loc_14070F32E
                mov     rcx, [rsp+98h+var_48]
                test    rcx, rcx
                jz      short loc_14070F31F
                call    PsDereferenceSiloContext

loc_14070F31F:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+F6↑j
                                        ; NtNotifyChangeDirectoryFileEx+139↑j ...
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F32E:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+1CE↑j
                mov     [rsp+98h+var_58], r14b
                jmp     short loc_14070F374
; ---------------------------------------------------------------------------

loc_14070F335:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+14B↑j
                mov     r14b, r13b
                mov     [rsp+98h+var_58], r13b
                test    r15b, r15b
                jz      short loc_14070F374

loc_14070F342:                          ; DATA XREF: .rdata:00000001400858F0↑o
;   __try { // __except at loc_14070F35C
                xor     r8d, r8d
                lea     rdx, [rsp+98h+arg_10]
                lea     rcx, [rsp+98h+arg_20]
                call    sub_140236180
                jmp     short loc_14070F374
;   } // starts at 14070F342
; ---------------------------------------------------------------------------

loc_14070F35C:                          ; DATA XREF: .rdata:00000001400858F0↑o
;   __except(1) // owned by 14070F342
                mov     ebx, eax
                mov     rdx, [rsp+98h+var_48]
                mov     rcx, [rsp+98h+var_50]
                call    sub_1408925D4
                mov     eax, ebx
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F374:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+1F3↑j
                                        ; NtNotifyChangeDirectoryFileEx+200↑j ...
                mov     rcx, rdi
                call    sub_1402360C0
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     r13, rax
                mov     r9, [rsp+98h]
                mov     r8b, r14b
                xor     r8b, 1
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rbx, rax
                mov     [rsp+98h+var_40], rax
                test    rax, rax
                jnz     short loc_14070F3C5
                mov     rdx, [rsp+98h+var_48]
                mov     rcx, rdi
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F3C5:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+26C↑j
                mov     [rax+0C0h], rdi
                mov     rax, [rsp+98h+var_38]
                mov     [rbx+98h], rax
                mov     [rbx+40h], r15b
                mov     rax, [rsp+98h+var_48]
                mov     [rbx+50h], rax
                mov     rax, [rsp+98h+arg_20]
                mov     [rbx+48h], rax
                mov     rax, [rsp+98h+arg_10]
                mov     [rbx+58h], rax
                mov     rax, [rsp+98h+arg_18]
                mov     [rbx+60h], rax
                mov     rsi, [rbx+0B8h]
                mov     byte ptr [rsi-48h], 0Ch
                mov     ecx, [rsp+98h+arg_48]
                cmp     ecx, 2
                setz    al
                add     al, 2
                mov     [rsi-47h], al
                mov     [rsi-18h], rdi
                test    r12d, r12d
                jz      loc_14070F525
                mov     eax, [r13+30h]
                test    al, 4
                jz      short loc_14070F4A5

loc_14070F43B:                          ; DATA XREF: .rdata:0000000140085900↑o
;   __try { // __except at loc_14070F478
                mov     r14d, r12d
                mov     edx, r12d
                call    sub_1402159F0
                mov     rcx, rax
                mov     [rbx+18h], rax
;   } // starts at 14070F43B

loc_14070F44D:                          ; DATA XREF: .rdata:0000000140085900↑o
                cmp     cs:dword_140CF4A5C, 0
                jnz     short loc_14070F460
                mov     r8, r14
                xor     edx, edx
                call    memset

loc_14070F460:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+314↑j
                mov     dword ptr [rbx+10h], 70h ; 'p'
                mov     r14b, [rsp+98h+var_58]
                mov     ecx, [rsp+98h+arg_48]
                jmp     loc_14070F519
; ---------------------------------------------------------------------------

loc_14070F478:                          ; DATA XREF: .rdata:0000000140085900↑o
;   __except(1) // owned by 14070F43B
                mov     ebx, eax
                mov     rcx, [rsp+98h+var_50]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+98h+var_78], dl
                xor     r9d, r9d
                mov     r8, [rsp+98h+var_48]
                mov     rdx, [rsp+98h+var_40]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F4A5:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+2F9↑j
                test    al, 10h
                jz      short loc_14070F519

loc_14070F4A9:                          ; DATA XREF: .rdata:0000000140085910↑o
;   __try { // __except at loc_14070F4EF
                mov     [rsp+98h+var_78], rbx
                mov     r9d, 1
                xor     r8d, r8d
                mov     edx, r12d
                mov     rcx, [rsp+98h+arg_28]
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jz      loc_14070F595
                movzx   eax, byte ptr [rsi-48h]
                mov     dword ptr [rsp+98h+var_78], eax
                mov     r9, r13
                mov     dl, r15b
                call    sub_140508980
                mov     ecx, [rsp+98h+arg_48]
                jmp     short loc_14070F525
;   } // starts at 14070F4A9
; ---------------------------------------------------------------------------

loc_14070F4EF:                          ; DATA XREF: .rdata:0000000140085910↑o
                                        ; .rdata:0000000140085920↑o
;   __except(1) // owned by 14070F4A9
;   __except(1) // owned by 14070F595
                mov     ebx, eax
                mov     rcx, [rsp+98h+var_50]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+98h+var_78], dl
                xor     r9d, r9d
                mov     r8, [rsp+98h+var_48]
                mov     rdx, [rsp+98h+var_40]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     short loc_14070F57A
; ---------------------------------------------------------------------------

loc_14070F519:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+333↑j
                                        ; NtNotifyChangeDirectoryFileEx+367↑j
                mov     rax, [rsp+98h+arg_28]
                mov     [rbx+70h], rax

loc_14070F525:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+2ED↑j
                                        ; NtNotifyChangeDirectoryFileEx+3AD↑j
                mov     [rsi-40h], r12d
                mov     eax, [rsp+98h+arg_38]
                mov     [rsi-38h], eax
                cmp     byte ptr [rsi-47h], 3
                jnz     short loc_14070F53C
                mov     [rsi-30h], ecx

loc_14070F53C:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+3F7↑j
                mov     byte ptr [rsi-46h], 0
                movzx   eax, byte ptr [rsi-46h]
                cmp     [rsp+98h+arg_40], 0
                mov     ecx, 1
                cmovnz  eax, ecx
                mov     [rsi-46h], al
                mov     [rsp+98h+var_68], 2
                mov     byte ptr [rsp+98h+var_70], r14b
                mov     byte ptr [rsp+98h+var_78], r15b
                xor     r9d, r9d
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_140643F60

loc_14070F57A:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+9D↑j
                                        ; NtNotifyChangeDirectoryFileEx:loc_14070F1E2↑j ...
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070F595:                          ; CODE XREF: NtNotifyChangeDirectoryFileEx+38D↑j
                                        ; DATA XREF: .rdata:0000000140085920↑o
;   __try { // __except at loc_14070F4EF
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 20h
;   } // starts at 14070F595
byte_14070F5A0  db 0CCh                 ; DATA XREF: .rdata:0000000140085920↑o
; } // starts at 14070F140
NtNotifyChangeDirectoryFileEx endp
