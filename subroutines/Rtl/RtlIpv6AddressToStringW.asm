RtlIpv6AddressToStringW proc near       ; CODE XREF: RtlIpv6AddressToStringExW+6C↑p
                                        ; sub_14096E93C+79↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140495AE2 SIZE 0000010D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     ebp, 8
                lea     r14, [rdx+5Ch]
                xor     r13d, r13d
                mov     rdi, rdx
                mov     rbx, rcx
                lea     r15d, [rbp-7]
                cmp     [rcx], r13w
                jz      loc_14037E77E

loc_14037E63C:                          ; CODE XREF: RtlIpv6AddressToStringW+183↓j
                                        ; RtlIpv6AddressToStringW+18E↓j ...
                mov     ecx, 0FFFDh
                mov     r10d, r13d
                mov     r11d, r13d
                mov     esi, r13d
                test    [rbx+8], cx
                jz      loc_14037E7AF

loc_14037E654:                          ; CODE XREF: RtlIpv6AddressToStringW+1C0↓j
                mov     r12d, ebp
                mov     edx, r13d
                test    ebp, ebp
                jz      short loc_14037E67E
                mov     r8, r13

loc_14037E661:                          ; CODE XREF: RtlIpv6AddressToStringW+7C↓j
                lea     r9d, [rdx+1]
                cmp     [rbx+r8*2], r13w
                jz      loc_14037E730
                mov     esi, r9d

loc_14037E673:                          ; CODE XREF: RtlIpv6AddressToStringW+14F↓j
                add     r8, r15
                mov     edx, r9d
                cmp     r8, r12
                jl      short loc_14037E661

loc_14037E67E:                          ; CODE XREF: RtlIpv6AddressToStringW+5C↑j
                mov     eax, r13d
                mov     ecx, r10d
                sub     ecx, r11d
                cmp     ecx, r15d
                cmovg   eax, r10d
                cmp     ecx, 1
                movsxd  r15, eax
                mov     eax, r13d
                cmovg   eax, r11d
                xor     esi, esi
                movsxd  r13, eax

loc_14037E6A0:                          ; CODE XREF: RtlIpv6AddressToStringW+103↓j
                cmp     rsi, r15
                jl      loc_14037E754

loc_14037E6A9:                          ; CODE XREF: RtlIpv6AddressToStringW+157↓j
                test    rsi, rsi
                jz      short loc_14037E6D2
                cmp     rsi, r15
                jz      short loc_14037E6D2
                mov     rdx, r14
                lea     r8, qword_1404158F0
                sub     rdx, rdi
                mov     rcx, rdi
                sar     rdx, 1
                call    swprintf_s
                movsxd  rcx, eax
                lea     rdi, [rdi+rcx*2]

loc_14037E6D2:                          ; CODE XREF: RtlIpv6AddressToStringW+AC↑j
                                        ; RtlIpv6AddressToStringW+B1↑j
                movzx   eax, word ptr [rbx+rsi*2]
                lea     r8, asc_1404158E0 ; "%x"
                ror     ax, 8
                mov     rdx, r14
                sub     rdx, rdi
                movzx   r9d, ax
                sar     rdx, 1
                mov     rcx, rdi
                call    swprintf_s

loc_14037E6F6:                          ; CODE XREF: RtlIpv6AddressToStringW+179↓j
                movsxd  rcx, eax
                inc     rsi
                lea     rdi, [rdi+rcx*2]
                cmp     rsi, r12
                jl      short loc_14037E6A0
                cmp     ebp, 8
                jb      loc_140495BAC

loc_14037E70E:                          ; CODE XREF: RtlIpv6AddressToStringW+1175EA↓j
                mov     rax, rdi

loc_14037E711:                          ; CODE XREF: RtlIpv6AddressToStringW+11758C↓j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14037E730:                          ; CODE XREF: RtlIpv6AddressToStringW+6A↑j
                sub     edx, esi
                mov     ecx, r10d
                sub     ecx, r11d
                inc     edx
                cmp     edx, ecx
                mov     eax, esi
                cmovle  eax, r11d
                mov     r11d, eax
                mov     eax, r9d
                cmovle  eax, r10d
                mov     r10d, eax
                jmp     loc_14037E673
; ---------------------------------------------------------------------------

loc_14037E754:                          ; CODE XREF: RtlIpv6AddressToStringW+A3↑j
                cmp     r13, rsi
                jg      loc_14037E6A9
                mov     rdx, r14
                lea     r8, asc_1404158A0 ; "::"
                sub     rdx, rdi
                mov     rcx, rdi
                sar     rdx, 1
                call    swprintf_s
                lea     rsi, [r15-1]
                jmp     loc_14037E6F6
; ---------------------------------------------------------------------------

loc_14037E77E:                          ; CODE XREF: RtlIpv6AddressToStringW+36↑j
                cmp     [rcx+2], r13w
                jnz     loc_14037E63C
                cmp     [rcx+4], r13w
                jnz     loc_14037E63C
                cmp     [rcx+6], r13w
                jnz     loc_14037E63C
                cmp     [rcx+0Ch], r13w
                jz      loc_14037E63C
                jmp     loc_140495AE2
; ---------------------------------------------------------------------------

loc_14037E7AF:                          ; CODE XREF: RtlIpv6AddressToStringW+4E↑j
                mov     eax, 0FE5Eh
                mov     ecx, 6
                cmp     [rbx+0Ah], ax
                cmovz   ebp, ecx
                jmp     loc_14037E654
RtlIpv6AddressToStringW endp
