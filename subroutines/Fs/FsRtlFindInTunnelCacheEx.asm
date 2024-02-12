FsRtlFindInTunnelCacheEx proc near      ; CODE XREF: FsRtlFindInTunnelCache+2A↓p
                                        ; DATA XREF: .pdata:00000001400FE2E0↑o

var_38          = byte ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407E64A5 SIZE 00000023 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+18h], rbx
                mov     [r11+20h], rsi
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, r9
                mov     r13, r8
                mov     r14, rcx
                xor     ebx, ebx
                mov     esi, ebx
                mov     r15d, [rsp+58h+arg_28]
                and     r15d, 1
                cmp     cs:dword_140D2D040, ebx
                jz      loc_14062C485
                lea     rax, [r11-38h]
                mov     [r11-30h], rax
                lea     rax, [r11-38h]
                mov     [r11-38h], rax
                call    ExAcquireFastMutex
                lea     rdx, [rsp+58h+var_38]
                mov     rcx, r14
                call    sub_1406E62C4
                mov     rdi, [r14+38h]
                test    rdi, rdi
                jz      short loc_14062C3C1
                mov     r14, [rsp+58h+arg_8]

loc_14062C395:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+9A↓j
                mov     rsi, rdi
                mov     r9b, r15b
                mov     r8, r13
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14021D56C
                test    eax, eax
                jg      loc_14062C47C
                jns     short loc_14062C3BC
                mov     rdi, [rdi+10h]

loc_14062C3B7:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+160↓j
                test    rdi, rdi
                jnz     short loc_14062C395

loc_14062C3BC:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+91↑j
                mov     r14, [rsp+58h+arg_0]

loc_14062C3C1:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+6E↑j
                                        ; DATA XREF: .rdata:000000014005029C↑o
;   __try { // __finally(loc_1407E64A5)
                test    rdi, rdi
                jz      loc_14062C44F
                lea     rdx, [rsi+50h]
                mov     rcx, r12
                call    RtlCopyUnicodeString
                lea     rdi, [rsi+40h]
                mov     rbx, [rsp+58h+arg_20]
                movzx   eax, word ptr [rdi]
                cmp     [rbx+2], ax
                jb      short loc_14062C41C
                mov     rdx, rdi
                mov     rcx, rbx
                call    RtlCopyUnicodeString

loc_14062C3F6:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+12D↓j
                mov     r8d, [rsi+68h]
                mov     rdx, [rsi+60h]
                mov     rcx, [rsp+58h+arg_38]
                call    memmove
                mov     ecx, [rsi+68h]
                mov     rax, [rsp+58h+arg_30]
                mov     [rax], ecx
                mov     bl, 1
                jmp     short loc_14062C44F
; ---------------------------------------------------------------------------

loc_14062C41C:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+C9↑j
                mov     rdx, rax
                mov     ecx, 11h
                mov     r8d, 346E7554h
                call    ExAllocatePoolWithTag
                mov     rcx, rax
                mov     [rbx+8], rax
                movzx   eax, word ptr [rdi]
                mov     [rbx+2], ax
                mov     [rbx], ax
                movzx   r8d, word ptr [rdi]
                mov     rdx, [rsi+48h]
                call    memmove
                jmp     short loc_14062C3F6
;   } // starts at 14062C3C1
; ---------------------------------------------------------------------------

loc_14062C44F:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+A4↑j
                                        ; FsRtlFindInTunnelCacheEx+FA↑j
                                        ; DATA XREF: ...
                mov     rcx, r14
                call    KeReleaseGuardedMutex
                lea     rcx, [rsp+58h+var_38]
                call    sub_140326670
                mov     al, bl

loc_14062C463:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+167↓j
                mov     rbx, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14062C47C:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+8B↑j
                mov     rdi, [rdi+8]
                jmp     loc_14062C3B7
; ---------------------------------------------------------------------------

loc_14062C485:                          ; CODE XREF: FsRtlFindInTunnelCacheEx+3F↑j
                xor     al, al
                jmp     short loc_14062C463
; } // starts at 14062C320
FsRtlFindInTunnelCacheEx endp
