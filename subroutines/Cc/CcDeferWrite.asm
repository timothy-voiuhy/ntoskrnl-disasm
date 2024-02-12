CcDeferWrite    proc near               ; DATA XREF: .pdata:00000001400F0E64↑o

var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_20          = dword ptr  50h
arg_28          = byte ptr  58h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     [rax+8], rcx
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                mov     r12, r8
                mov     r13, rdx
                mov     [rbp+var_20], rax
                mov     rbx, rcx
                mov     [rbp+var_8], rax
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                lea     edx, [rax+60h]
                mov     ecx, 200h
                mov     r8d, 77446343h
                mov     r15, r9
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_18], xmm1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1404EA485
                mov     rdx, r15
                mov     rcx, r12
                mov     rax, r13
                call    sub_1404079D0
                jmp     loc_1404EA63C
; ---------------------------------------------------------------------------

loc_1404EA485:                          ; CODE XREF: CcDeferWrite+60↑j
                lea     rdx, [rbp+var_30]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbx
                call    sub_1402F2BF4
                mov     rbx, rax
                mov     ecx, 1
                lock xadd [rax+3C8h], rcx
                inc     rcx
                cmp     rcx, 1
                jg      short loc_1404EA4BE
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1404EA4BE:                          ; CODE XREF: CcDeferWrite+A5↑j
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                movzx   r14d, byte ptr [rbp+var_20]
                test    eax, eax
                jz      short loc_1404EA526
                test    al, 1
                jz      short loc_1404EA526
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EA526
                cmp     r14b, 0Fh
                ja      short loc_1404EA526
                cmp     al, 2
                jb      short loc_1404EA526
                mov     r10, gs:20h
                mov     rdx, rsi
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rbp+var_20]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404EA526
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404EA526:                          ; CODE XREF: CcDeferWrite+C8↑j
                                        ; CcDeferWrite+CC↑j ...
                mov     cr8, r14
                mov     r14d, 1
                mov     eax, r14d
                lock xadd [rbx+3C8h], rax
                add     rax, r14
                cmp     rax, r14
                jg      short loc_1404EA54A
                lea     ecx, [r14+0Dh]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1404EA54A:                          ; CODE XREF: CcDeferWrite+132↑j
                mov     rax, [rbp+arg_0]
                lea     r8, [rbx+340h]
                and     qword ptr [rdi+28h], 0
                lea     rdx, [rdi+18h]
                cmp     [rbp+arg_28], 0
                lea     rcx, [rbx+310h]
                mov     [rdi+8], rax
                mov     eax, [rbp+arg_20]
                mov     [rdi+10h], eax
                mov     [rdi+48h], rbx
                mov     dword ptr [rdi], 6002FCh
                mov     [rdi+30h], r13
                mov     [rdi+38h], r12
                mov     [rdi+40h], r15
                mov     rax, ds:0FFFFF78000000320h
                mov     [rdi+58h], rax
                mov     byte ptr [rdi+50h], 0
                jz      short loc_1404EA5A4
                call    ExInterlockedInsertHeadList
                jmp     short loc_1404EA5A9
; ---------------------------------------------------------------------------

loc_1404EA5A4:                          ; CODE XREF: CcDeferWrite+18B↑j
                call    ExInterlockedInsertTailList

loc_1404EA5A9:                          ; CODE XREF: CcDeferWrite+192↑j
                mov     rcx, rbx
                call    sub_1404EA6C0
                lea     rcx, [rbx+80h]
                lea     rdx, [rbp+var_18]
                call    KeAcquireInStackQueuedSpinLock
                xor     r8d, r8d
                mov     dl, r14b
                mov     rcx, rbx
                call    sub_1402F9FDC
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+var_8]
                test    eax, eax
                jz      short loc_1404EA630
                test    r14b, al
                jz      short loc_1404EA630
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EA630
                cmp     dil, 0Fh
                ja      short loc_1404EA630
                cmp     al, 2
                jb      short loc_1404EA630
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_8]
                add     ecx, r14d
                shl     rsi, cl
                movzx   eax, si
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1404EA630
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1404EA630:                          ; CODE XREF: CcDeferWrite+1D4↑j
                                        ; CcDeferWrite+1D9↑j ...
                mov     cr8, rdi
                mov     rcx, rbx
                call    sub_1402F9FAC

loc_1404EA63C:                          ; CODE XREF: CcDeferWrite+70↑j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcDeferWrite    endp

byte_1404EA65B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400F0E64↑o
; Exported entry  43. CcErrorCallbackRoutine

; =============== S U B R O U T I N E =======================================


