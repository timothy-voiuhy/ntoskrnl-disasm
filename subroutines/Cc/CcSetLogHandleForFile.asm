CcSetLogHandleForFile proc near         ; DATA XREF: .pdata:00000001400F0F18↑o

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  [rsp+58h+var_28], xmm0
                mov     [r11-18h], rax
                mov     rbp, r8
                mov     rax, [rcx+28h]
                mov     rsi, rdx
                mov     rbx, [rax+8]
                cmp     dword ptr [rbx+4], 0
                jz      loc_1404EB31C
                test    dword ptr [rbx+98h], 1000000h
                jnz     loc_1404EB2FD
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+58h+var_28]
                mov     rdi, rax
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                cmp     qword ptr [rbx+0F0h], 0
                mov     [rbx+0F8h], rbp
                jz      short loc_1404EB22C
                lea     rcx, [rbx+78h]
                mov     r8, [rcx]
                mov     rdx, [rcx+8]
                cmp     [r8+8], rcx
                jnz     loc_1404EB2F6
                cmp     [rdx], rcx
                jnz     loc_1404EB2F6
                mov     [rdx], r8
                mov     [r8+8], rdx

loc_1404EB22C:                          ; CODE XREF: CcSetLogHandleForFile+75↑j
                test    rsi, rsi
                jz      short loc_1404EB266
                bts     dword ptr [rbx+98h], 19h
                lea     rax, [rbx+78h]
                cmp     dword ptr [rbx+70h], 0
                jz      loc_1404EB2ED
                lea     rcx, [rdi+60h]

loc_1404EB24B:                          ; CODE XREF: CcSetLogHandleForFile+161↓j
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_1404EB2F6
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax

loc_1404EB266:                          ; CODE XREF: CcSetLogHandleForFile+9F↑j
                lea     rcx, [rsp+58h+var_28]
                mov     [rbx+0F0h], rsi
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+58h+var_18]
                test    eax, eax
                jz      short loc_1404EB2D3
                test    al, 1
                jz      short loc_1404EB2D3
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EB2D3
                cmp     bl, 0Fh
                ja      short loc_1404EB2D3
                cmp     al, 2
                jb      short loc_1404EB2D3
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+58h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404EB2D3
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404EB2D3:                          ; CODE XREF: CcSetLogHandleForFile+F4↑j
                                        ; CcSetLogHandleForFile+F8↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404EB2ED:                          ; CODE XREF: CcSetLogHandleForFile+B1↑j
                lea     rcx, [rdi+20h]
                jmp     loc_1404EB24B
; ---------------------------------------------------------------------------

loc_1404EB2F6:                          ; CODE XREF: CcSetLogHandleForFile+86↑j
                                        ; CcSetLogHandleForFile+8F↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1404EB2FD:                          ; CODE XREF: CcSetLogHandleForFile+44↑j
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                mov     edx, 281h
                mov     r8, 0FFFFFFFFC0000420h
                lea     ecx, [r9+34h]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1404EB31C:                          ; CODE XREF: CcSetLogHandleForFile+34↑j
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                mov     edx, 27Bh
                mov     r8, 0FFFFFFFFC0000420h
                lea     ecx, [r9+34h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
CcSetLogHandleForFile endp
