ExIsResourceAcquiredSharedLite proc near
                                        ; CODE XREF: sub_14021DD20+DA↑p
                                        ; sub_1405FB990+133↓p ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404346B4 SIZE 000000CF BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 50h
                mov     rdi, rcx
                movzx   ecx, word ptr [rcx+1Ah]
                movzx   eax, cl
                and     al, 41h
                cmp     al, 1
                jz      loc_14024AA4D
                movzx   eax, cx
                and     ax, 1
                jnz     loc_14024AA3B

loc_14024A92B:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+142↓j
                test    ax, ax
                jnz     loc_1404346D0
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_18], rax
                cmp     [rdi+40h], eax
                jnz     short loc_14024A958
                xor     esi, esi

loc_14024A94A:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+77↓j
                mov     eax, esi

loc_14024A94C:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+1E9DD9↓j
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14024A958:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+46↑j
                                        ; DATA XREF: .rdata:0000000140057A4C↑o ...
                mov     [rsp+58h+arg_0], rbx
                mov     rbx, gs:188h
                cmp     [rdi+30h], rbx
                jnz     short loc_14024A979
                mov     esi, [rdi+38h]
                shr     esi, 3

loc_14024A972:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+7D↓j
                                        ; ExIsResourceAcquiredSharedLite+12C↓j
                mov     rbx, [rsp+58h+arg_0]
                jmp     short loc_14024A94A
; ---------------------------------------------------------------------------

loc_14024A979:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+6A↑j
                                        ; DATA XREF: .rdata:0000000140057A78↑o ...
                xor     esi, esi
                test    cl, cl
                js      short loc_14024A972

loc_14024A97F:                          ; DATA XREF: .rdata:0000000140057A78↑o
                                        ; .rdata:0000000140057A8C↑o ...
                mov     [rsp+58h+arg_8], rbp
                lea     rdx, [rdi+60h]
                movzx   ebp, byte ptr [rbx+408h]
                mov     qword ptr [rsp+58h+var_28+8], rdx
                mov     qword ptr [rsp+58h+var_28], rsi
                mov     [rsp+58h+arg_10], r14
                mov     r11, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                lea     r14, [rsi-1]
                test    eax, eax
                jnz     loc_1404346DE

loc_14024A9BD:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+1E9DE0↓j
                                        ; ExIsResourceAcquiredSharedLite+1E9DEA↓j ...
                lea     rcx, [rsp+58h+var_28]
                mov     byte ptr [rsp+58h+var_18], r11b
                call    sub_14024B3F0
                mov     rax, [rdi+10h]
                test    rax, rax
                jz      short loc_14024AA01
                mov     edx, [rax+8]
                cmp     ebp, edx
                jnb     short loc_14024A9E8
                mov     r8, rbp
                add     r8, r8
                cmp     [rax+r8*8], rbx
                jz      short loc_14024AA31

loc_14024A9E8:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+DA↑j
                mov     ecx, 1
                cmp     edx, ecx
                jbe     short loc_14024AA01

loc_14024A9F1:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+FF↓j
                cmp     [rax+10h], rbx
                lea     rax, [rax+10h]
                jz      short loc_14024AA68
                inc     ecx
                cmp     ecx, edx
                jb      short loc_14024A9F1

loc_14024AA01:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+D3↑j
                                        ; ExIsResourceAcquiredSharedLite+EF↑j ...
                lea     rcx, [rsp+58h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                mov     rbp, [rsp+58h+arg_8]
                test    eax, eax
                jnz     loc_140434720

loc_14024AA23:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+1E9E22↓j
                                        ; ExIsResourceAcquiredSharedLite+1E9E2E↓j ...
                mov     cr8, rbx
                mov     r14, [rsp+58h+arg_10]
                jmp     loc_14024A972
; ---------------------------------------------------------------------------

loc_14024AA31:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+E6↑j
                                        ; DATA XREF: .pdata:00000001400CC7D4↑o ...
                mov     esi, [rax+r8*8+8]

loc_14024AA36:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+16B↓j
                shr     esi, 3
                jmp     short loc_14024AA01
; ---------------------------------------------------------------------------

loc_14024AA3B:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+25↑j
                                        ; DATA XREF: .pdata:00000001400CC7E0↑o ...
                mov     rdx, cr8
                cmp     dl, 2
                jbe     loc_14024A92B
                jmp     loc_1404346B4
; ---------------------------------------------------------------------------

loc_14024AA4D:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+18↑j
                xor     esi, esi
                xor     r9d, r9d
                mov     r8, rdi
                mov     [rsp+58h+var_38], rsi
                mov     ecx, 1C6h
                lea     edx, [rsi+0Fh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14024AA68:                          ; CODE XREF: ExIsResourceAcquiredSharedLite+F9↑j
                                        ; DATA XREF: .pdata:00000001400CC7EC↑o ...
                mov     esi, [rax+8]
                jmp     short loc_14024AA36
ExIsResourceAcquiredSharedLite endp
