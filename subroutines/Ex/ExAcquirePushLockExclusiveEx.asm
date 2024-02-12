ExAcquirePushLockExclusiveEx proc near  ; CODE XREF: sub_140200C20+44↑p
                                        ; sub_1402077E0+14↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041CF9A SIZE 00000029 BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041CF9A

loc_14024538B:                          ; DATA XREF: .rdata:0000000140056D88↑o
                                        ; .rdata:0000000140056D98↑o ...
                mov     [rsp+38h+arg_0], rbx
                test    dl, 2
                jnz     loc_140245478
                mov     [rsp+38h+arg_10], edi
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_14024549E
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+38h+arg_8], edi
                test    al, al
                jz      loc_1402454CD

loc_1402453D3:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+18F↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+38h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_1402454E6
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_14024542C
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_1402454BC

loc_14024542C:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+98↑j
                mov     eax, 0FFFFFFFFh

loc_140245431:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+158↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_140245448:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+17C↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+38h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140245478
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_140245517

loc_140245478:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+23↑j
                                        ; ExAcquirePushLockExclusiveEx+F6↑j ...
                lock bts qword ptr [rsi], 0
                jb      loc_140245504

loc_140245484:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+1A2↓j
                test    rdi, rdi
                jz      short loc_14024548D
                or      byte ptr [rdi+1Ah], 1

loc_14024548D:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+117↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_14024549D:                         ; DATA XREF: .pdata:00000001400CC270↑o
                                        ; .pdata:00000001400CC27C↑o
                align 2

loc_14024549E:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+4A↑j
                                        ; DATA XREF: .pdata:00000001400CC27C↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+38h+var_18], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1402454BC:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+B6↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     loc_140245431
; ---------------------------------------------------------------------------

loc_1402454CD:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+5D↑j
                cmp     [rbx+366h], dil
                jnz     short loc_1402454F1
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_14041CFB2

loc_1402454E6:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+85↑j
                                        ; ExAcquirePushLockExclusiveEx+1D7C4E↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140245448
; ---------------------------------------------------------------------------

loc_1402454F1:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+164↑j
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_1402453D3
; ---------------------------------------------------------------------------

loc_140245504:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+10E↑j
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F5F10
                jmp     loc_140245484
; ---------------------------------------------------------------------------

loc_140245517:                          ; CODE XREF: ExAcquirePushLockExclusiveEx+102↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140245478
ExAcquirePushLockExclusiveEx endp
