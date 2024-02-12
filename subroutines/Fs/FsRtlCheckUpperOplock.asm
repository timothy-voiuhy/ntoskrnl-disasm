FsRtlCheckUpperOplock proc near         ; DATA XREF: .pdata:000000014011C2C8↑o

var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = byte ptr -98h
var_97          = byte ptr -97h
var_96          = byte ptr -96h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_30          = qword ptr -30h
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+10h], rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_30], rax
                mov     [rsp+108h+var_90], r9
                mov     r13, r8
                mov     rax, [rsp+108h+arg_20]
                mov     [rsp+108h+var_88], rax
                mov     r15d, edx
                and     r15d, 6
                shl     r15d, 0Ch
                and     edx, 1
                shl     edx, 0Ch
                or      r15d, edx
                mov     rsi, [rcx]
                mov     [rsp+108h+var_80], rsi
                mov     [rsp+108h+var_98], 0
                xor     r14b, r14b
                mov     [rsp+108h+var_97], r14b
                xor     edi, edi
                mov     [rsp+108h+var_96], dil
                xor     edx, edx
                lea     r8d, [rdi+48h]
                lea     rcx, [r11-78h]
                call    memset
                xor     ebx, ebx
                test    rsi, rsi
                jz      loc_14088D3A9

loc_14088D0ED:                          ; DATA XREF: .rdata:00000001400B578C↑o
;   __try { // __finally(loc_14088D3D4)
                mov     rcx, [rsi+98h]
                call    ExAcquireFastMutexUnsafe
                mov     [rsp+108h+var_98], 1
                mov     r10d, [rsi+90h]
                cmp     r10d, 1
                jz      loc_14088D395
                test    [rsp+108h+arg_28], 20000h
                jz      short loc_14088D179
                lea     eax, [r10-1000h]
                test    eax, 0FFFFFFEFh
                jz      short loc_14088D138
                mov     ebx, 0C0000909h
                mov     [rsp+108h+var_94], ebx
                jmp     loc_14088D395
; ---------------------------------------------------------------------------

loc_14088D138:                          ; CODE XREF: FsRtlCheckUpperOplock+C8↑j
                lea     r14, [rsi+28h]
                mov     rdi, [r14]

loc_14088D13F:                          ; CODE XREF: FsRtlCheckUpperOplock+10A↓j
                cmp     rdi, r14
                jz      short loc_14088D16C
                mov     rax, [rdi+10h]
                cmp     dword ptr [rax+18h], 90240h
                jnz     short loc_14088D167
                mov     rdi, [rdi+8]
                xor     edx, edx
                mov     r8d, 1000h
                mov     rcx, [rdi]
                call    sub_1404F0C3C
                jmp     short $+2
; ---------------------------------------------------------------------------

loc_14088D167:                          ; CODE XREF: FsRtlCheckUpperOplock+EF↑j
                                        ; FsRtlCheckUpperOplock+105↑j
                mov     rdi, [rdi]
                jmp     short loc_14088D13F
; ---------------------------------------------------------------------------

loc_14088D16C:                          ; CODE XREF: FsRtlCheckUpperOplock+E2↑j
                mov     rcx, rsi
                call    sub_14021ACC0
                jmp     loc_14088D395
; ---------------------------------------------------------------------------

loc_14088D179:                          ; CODE XREF: FsRtlCheckUpperOplock+BA↑j
                mov     edx, r15d
                mov     ecx, r10d
                call    sub_14061AD94
                xor     ecx, ecx
                test    al, al
                jnz     loc_14088D397
                test    r15d, r15d
                jz      short loc_14088D202
                cmp     r15d, 1000h
                jz      short loc_14088D1DD
                cmp     r15d, 3000h
                jz      short loc_14088D1D3
                mov     eax, 5000h
                cmp     r15d, eax
                jz      short loc_14088D1BD
                mov     ebx, 0C00000E3h
                mov     [rsp+108h+var_94], ebx
                jmp     loc_14088D397
; ---------------------------------------------------------------------------

loc_14088D1BD:                          ; CODE XREF: FsRtlCheckUpperOplock+14D↑j
                mov     edi, 2000h
                mov     r14d, r10d
                shr     r14d, 2
                and     r14b, 1

loc_14088D1CD:                          ; CODE XREF: FsRtlCheckUpperOplock+17B↓j
                mov     al, [rsp+108h+var_97]
                jmp     short loc_14088D209
; ---------------------------------------------------------------------------

loc_14088D1D3:                          ; CODE XREF: FsRtlCheckUpperOplock+143↑j
                mov     r14b, 1

loc_14088D1D6:                          ; CODE XREF: FsRtlCheckUpperOplock+192↓j
                mov     edi, 4000h
                jmp     short loc_14088D1CD
; ---------------------------------------------------------------------------

loc_14088D1DD:                          ; CODE XREF: FsRtlCheckUpperOplock+13A↑j
                mov     r14b, 1
                mov     eax, 5000h
                and     r10d, eax
                cmp     r10d, eax
                jnz     short loc_14088D1F4
                mov     [rsp+108h+var_96], r14b
                jmp     short loc_14088D1D6
; ---------------------------------------------------------------------------

loc_14088D1F4:                          ; CODE XREF: FsRtlCheckUpperOplock+18B↑j
                mov     al, [rsp+108h+var_97]
                test    r10d, r10d
                jz      short loc_14088D209
                mov     edi, r10d
                jmp     short loc_14088D209
; ---------------------------------------------------------------------------

loc_14088D202:                          ; CODE XREF: FsRtlCheckUpperOplock+131↑j
                mov     al, 1
                mov     edi, 7000h

loc_14088D209:                          ; CODE XREF: FsRtlCheckUpperOplock+171↑j
                                        ; FsRtlCheckUpperOplock+19B↑j ...
                mov     [rsp+108h+var_78], 3
                mov     r15, [rsp+108h+var_88]
                test    r14b, r14b
                mov     r14, [rsp+108h+var_90]
                jz      short loc_14088D26D
                mov     [rsp+108h+var_A8], rcx
                lea     rax, [rsp+108h+var_98]
                mov     [rsp+108h+var_B0], rax
                mov     [rsp+108h+var_B8], rcx
                mov     [rsp+108h+var_C0], rcx
                mov     [rsp+108h+var_C8], rcx
                mov     [rsp+108h+var_D0], r15
                mov     [rsp+108h+var_D8], r14
                mov     [rsp+108h+var_E0], r13
                mov     r9d, [rsp+108h+arg_28]
                xor     r8d, r8d
                lea     rdx, [rsp+108h+var_78]
                mov     rcx, rsi
                call    sub_14035859C
                jmp     short loc_14088D2B9
; ---------------------------------------------------------------------------

loc_14088D26D:                          ; CODE XREF: FsRtlCheckUpperOplock+1C1↑j
                test    al, al
                jz      short loc_14088D2C1
                mov     [rsp+108h+var_A8], rcx
                lea     rax, [rsp+108h+var_98]
                mov     [rsp+108h+var_B0], rax
                mov     [rsp+108h+var_B8], rcx
                mov     [rsp+108h+var_C0], rcx
                mov     [rsp+108h+var_C8], rcx
                mov     [rsp+108h+var_D0], r15
                mov     [rsp+108h+var_D8], r14
                mov     [rsp+108h+var_E0], r13
                mov     r9d, [rsp+108h+arg_28]
                xor     r8d, r8d
                lea     rdx, [rsp+108h+var_78]
                mov     rcx, rsi
                call    sub_14036D0E8

loc_14088D2B9:                          ; CODE XREF: FsRtlCheckUpperOplock+20B↑j
                xor     ecx, ecx
                mov     [rsp+108h+var_94], eax
                mov     ebx, eax

loc_14088D2C1:                          ; CODE XREF: FsRtlCheckUpperOplock+20F↑j
                test    ebx, ebx
                jnz     loc_14088D397
                mov     eax, [rsi+90h]
                test    edi, eax
                jz      loc_14088D397
                movzx   r9d, [rsp+108h+var_96]
                or      r9d, [rsp+108h+arg_28]
                mov     [rsp+108h+var_A0], rcx
                lea     rax, [rsp+108h+var_98]
                mov     [rsp+108h+var_A8], rax
                mov     [rsp+108h+var_B0], rcx
                mov     [rsp+108h+var_B8], rcx
                mov     [rsp+108h+var_C0], rcx
                mov     [rsp+108h+var_C8], r15
                mov     [rsp+108h+var_D0], r14
                mov     [rsp+108h+var_D8], r13
                mov     dword ptr [rsp+108h+var_E0], edi
                mov     [rsp+108h+var_E8], ecx
                xor     r8d, r8d
                lea     rdx, [rsp+108h+var_78]
                mov     rcx, rsi
                call    sub_14024DBF0
                mov     ebx, eax
                mov     [rsp+108h+var_94], eax
                xor     ecx, ecx
                cmp     [rsp+108h+var_96], cl
                jz      short loc_14088D397
                mov     [rsp+108h+var_A0], rcx
                lea     rax, [rsp+108h+var_98]
                mov     [rsp+108h+var_A8], rax
                mov     [rsp+108h+var_B0], rcx
                mov     [rsp+108h+var_B8], rcx
                mov     [rsp+108h+var_C0], rcx
                mov     [rsp+108h+var_C8], r15
                mov     [rsp+108h+var_D0], r14
                mov     [rsp+108h+var_D8], r13
                mov     dword ptr [rsp+108h+var_E0], 2000h
                mov     [rsp+108h+var_E8], ecx
                mov     r9d, [rsp+108h+arg_28]
                xor     r8d, r8d
                lea     rdx, [rsp+108h+var_78]
                mov     rcx, rsi
                call    sub_14024DBF0
                mov     ebx, eax
                mov     [rsp+108h+var_94], eax

loc_14088D395:                          ; CODE XREF: FsRtlCheckUpperOplock+A9↑j
                                        ; FsRtlCheckUpperOplock+D3↑j ...
                xor     ecx, ecx
;   } // starts at 14088D0ED

loc_14088D397:                          ; CODE XREF: FsRtlCheckUpperOplock+128↑j
                                        ; FsRtlCheckUpperOplock+158↑j ...
                cmp     [rsp+108h+var_98], cl
                jz      short loc_14088D3A9
                mov     rcx, [rsi+98h]
                call    ExReleaseFastMutexUnsafe

loc_14088D3A9:                          ; CODE XREF: FsRtlCheckUpperOplock+87↑j
                                        ; FsRtlCheckUpperOplock+33B↑j
                mov     eax, ebx
                mov     rcx, [rsp+108h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+108h+arg_8]
                add     rsp, 0E0h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4
; } // starts at 14088D060

loc_14088D3D4:                          ; DATA XREF: .rdata:00000001400B578C↑o
                                        ; .pdata:000000014011C2C8↑o ...
;   __finally // owned by 14088D0ED
                push    rbp
                sub     rsp, 70h
                mov     rbp, rdx
                cmp     byte ptr [rbp+70h], 0
                jz      short loc_14088D3F7
                mov     rcx, [rbp+88h]
                mov     rcx, [rcx+98h]
                call    ExReleaseFastMutexUnsafe
                nop

loc_14088D3F7:                          ; CODE XREF: FsRtlCheckUpperOplock+381↑j
                add     rsp, 70h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCheckUpperOplock endp
