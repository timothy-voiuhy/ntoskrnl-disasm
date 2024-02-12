FsRtlAddToTunnelCacheEx proc near       ; CODE XREF: FsRtlAddToTunnelCache+29↓p
                                        ; DATA XREF: .rdata:00000001400504C8↑o ...

var_68          = byte ptr -68h
var_64          = dword ptr -64h
var_60          = byte ptr -60h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140802924 SIZE 0000001D BYTES

                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     ebp, [rsp+88h+arg_20]
                xor     r14d, r14d
                mov     eax, ebp
                mov     [rsp+88h+var_68], r14b
                and     ebp, 2
                mov     r15, r9
                mov     r12, r8
                mov     [rsp+88h+arg_20], ebp
                lea     r13d, [r14+1]
                mov     rsi, rcx
                and     eax, r13d
                cmp     cs:dword_140D2D040, r14d
                mov     [rsp+88h+var_64], eax
                jz      loc_14062D68B
                movzx   edi, word ptr [r8]
                lea     rax, [r11-60h]
                add     edi, [rsp+88h+arg_28]
                movzx   ecx, word ptr [r9]
                add     ecx, 70h ; 'p'
                mov     [r11-58h], rax
                add     edi, ecx
                lea     rax, [r11-60h]
                mov     [r11-60h], rax
                cmp     edi, 0B0h
                jbe     loc_140802924

loc_14062D4BF:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+1D550C↓j
                mov     edx, edi
                mov     r8d, 506E7554h
                mov     ecx, r13d
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14062D68B
                mov     [rsp+88h+var_68], r13b

loc_14062D4E0:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+1D5506↓j
                test    ebp, ebp
                mov     rcx, rsi
                cmovz   r12, r15
                call    ExAcquireFastMutex
                lea     r13, [rsi+38h]
                mov     rbp, [r13+0]
                mov     rdi, r13
                test    rbp, rbp
                jz      short loc_14062D54E
                mov     r13d, [rsp+88h+var_64]
                mov     r15, [rsp+88h+arg_8]

loc_14062D50B:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+108↓j
                mov     r9b, r13b
                mov     r8, r12
                mov     rdx, r15
                mov     rcx, rbp
                mov     r14, rbp
                call    sub_14021D56C
                test    eax, eax
                jg      loc_14062D69D
                jns     short loc_14062D53A
                mov     eax, 10h

loc_14062D52E:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+272↓j
                lea     rdi, [rax+rbp]
                mov     rbp, [rdi]
                test    rbp, rbp
                jnz     short loc_14062D50B

loc_14062D53A:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+F7↑j
                mov     rsi, [rsp+88h+arg_0]
                mov     r15, [rsp+88h+arg_18]
                lea     r13, [rsi+38h]

loc_14062D54E:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+CC↑j
                xor     ebp, ebp
                mov     [rbx], rbx
                mov     [rbx+8], rbp
                mov     [rbx+10h], rbp
                test    r14, r14
                jz      loc_14062D722
                mov     rax, [rdi]
                test    rax, rax
                jnz     loc_14062D6A7
                mov     [rbx], r14
                mov     [rdi], rbx

loc_14062D576:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+2ED↓j
                                        ; FsRtlAddToTunnelCacheEx+2F6↓j
                mov     rax, ds:0FFFFF78000000014h
                lea     rdx, [rbx+18h]
                mov     [rbx+28h], rax
                lea     rax, [rsi+40h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14062D747
                mov     [rdx], rax
                mov     r14d, 1
                mov     [rdx+8], rcx
                mov     [rcx], rdx
                lea     rcx, [rbx+70h]
                mov     [rax+8], rdx
                add     [rsi+50h], r14w
                mov     rax, [rsp+88h+arg_8]
                neg     [rsp+88h+arg_20]
                mov     [rbx+30h], rax
                sbb     eax, eax
                and     eax, 2
                mov     [rbx+38h], eax
                mov     rdi, [rsp+88h+arg_10]
                mov     [rbx+58h], rcx
                movzx   edx, word ptr [rdi]
                add     rdx, 70h ; 'p'
                add     rdx, rbx
                mov     [rbx+48h], rdx
                movzx   eax, word ptr [rdi]
                mov     [rbx+52h], ax
                mov     [rbx+50h], ax
                movzx   eax, word ptr [r15]
                mov     [rbx+42h], ax
                mov     [rbx+40h], ax
                movzx   eax, word ptr [rdi]
                test    ax, ax
                jz      short loc_14062D616
                mov     rdx, [rdi+8]
                mov     r8d, eax
                call    memmove

loc_14062D616:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+1D8↑j
                movzx   ecx, word ptr [r15]
                test    cx, cx
                jz      short loc_14062D633
                mov     rdx, [r15+8]
                mov     r8d, ecx
                mov     rcx, [rbx+48h]
                call    memmove
                movzx   ecx, word ptr [r15]

loc_14062D633:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+1ED↑j
                movzx   eax, word ptr [rdi]
                mov     rdx, [rsp+88h+arg_30]
                add     rax, 70h ; 'p'
                add     rax, rbx
                movzx   ecx, cx
                add     rcx, rax
                mov     eax, [rsp+88h+arg_28]
                mov     r8d, eax
                mov     [rbx+60h], rcx
                mov     [rbx+68h], eax
                call    memmove
                cmp     [rsp+88h+var_68], bpl
                jz      short loc_14062D66C
                or      [rbx+38h], r14d

loc_14062D66C:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+236↑j
                lea     rdx, [rsp+88h+var_60]
                mov     rcx, rsi
                call    sub_1406E62C4
                mov     rcx, rsi
                call    KeReleaseGuardedMutex
                lea     rcx, [rsp+88h+var_60]
                call    sub_140326670

loc_14062D68B:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+59↑j
                                        ; FsRtlAddToTunnelCacheEx+A5↑j
                add     rsp, 48h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062D69D:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+F1↑j
                mov     eax, 8
                jmp     loc_14062D52E
; ---------------------------------------------------------------------------

loc_14062D6A7:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+13A↑j
                mov     rax, [rax+10h]
                mov     [rbx+10h], rax
                mov     rax, [rdi]
                mov     rcx, [rax+8]
                mov     [rbx+8], rcx
                mov     rax, [rdi]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jnz     short loc_14062D72B

loc_14062D6C6:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+301↓j
                mov     rcx, [rax+8]
                test    rcx, rcx
                jnz     short loc_14062D733

loc_14062D6CF:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+309↓j
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_14062D741
                mov     [rbx], rcx
                mov     rax, [rdi]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jz      short loc_14062D73B
                mov     [rcx+10h], rbx

loc_14062D6EA:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+30F↓j
                                        ; FsRtlAddToTunnelCacheEx+315↓j
                lea     rax, [r14+18h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     short loc_14062D747
                mov     r8, [rax+8]
                cmp     [r8], rax
                jnz     short loc_14062D747
                mov     [r8], rdx
                mov     rcx, r14
                mov     [rdx+8], r8
                lea     rdx, [rsp+88h+var_60]
                call    sub_1403266C8
                mov     eax, 0FFFFh
                add     [rsi+50h], ax
                jmp     loc_14062D576
; ---------------------------------------------------------------------------

loc_14062D722:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+12E↑j
                mov     [r13+0], rbx
                jmp     loc_14062D576
; ---------------------------------------------------------------------------

loc_14062D72B:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+294↑j
                mov     [rcx], rbx
                mov     rax, [rdi]
                jmp     short loc_14062D6C6
; ---------------------------------------------------------------------------

loc_14062D733:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+29D↑j
                mov     [rcx], rbx
                mov     rax, [rdi]
                jmp     short loc_14062D6CF
; ---------------------------------------------------------------------------

loc_14062D73B:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+2B4↑j
                mov     [rcx+8], rbx
                jmp     short loc_14062D6EA
; ---------------------------------------------------------------------------

loc_14062D741:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+2A5↑j
                mov     [r13+0], rbx
                jmp     short loc_14062D6EA
; ---------------------------------------------------------------------------

loc_14062D747:                          ; CODE XREF: FsRtlAddToTunnelCacheEx+163↑j
                                        ; FsRtlAddToTunnelCacheEx+2C5↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
FsRtlAddToTunnelCacheEx endp
