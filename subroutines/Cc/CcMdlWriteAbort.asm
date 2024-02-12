CcMdlWriteAbort proc near               ; DATA XREF: .pdata:00000001400F0F9C↑o

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 40h
                movzx   edi, word ptr [rdx+0Ah]
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     rbx, rdx
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                and     di, 2
                mov     rax, [rcx+28h]
                mov     rbp, [rax+8]

loc_1404EBF7A:                          ; CODE XREF: CcMdlWriteAbort+58↓j
                mov     rsi, [rbx]
                test    di, di
                jz      short loc_1404EBF8A
                mov     rcx, rbx
                call    MmUnlockPages

loc_1404EBF8A:                          ; CODE XREF: CcMdlWriteAbort+40↑j
                mov     rcx, rbx
                call    IoFreeMdl
                mov     rbx, rsi
                test    rsi, rsi
                jnz     short loc_1404EBF7A
                test    di, di
                jz      loc_1404EC02E
                mov     rcx, rbp
                call    sub_140265960
                lea     rdx, [rsp+48h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbp
                call    sub_14026529C
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+48h+var_18]
                test    eax, eax
                jz      short loc_1404EC02A
                test    al, 1
                jz      short loc_1404EC02A
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EC02A
                cmp     bl, 0Fh
                ja      short loc_1404EC02A
                cmp     al, 2
                jb      short loc_1404EC02A
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+48h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404EC02A
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404EC02A:                          ; CODE XREF: CcMdlWriteAbort+9B↑j
                                        ; CcMdlWriteAbort+9F↑j ...
                mov     cr8, rbx

loc_1404EC02E:                          ; CODE XREF: CcMdlWriteAbort+5D↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcMdlWriteAbort endp
