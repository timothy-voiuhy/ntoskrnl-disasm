RtlIpv6AddressToStringA proc near       ; CODE XREF: RtlIpv6AddressToStringExA+7D↓p
                                        ; DATA XREF: .rdata:000000014008B418↑o ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048E072 SIZE 00000127 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14d, 8
                lea     rbp, [rdx+2Eh]
                xor     r13d, r13d
                mov     rdi, rdx
                mov     rbx, rcx
                lea     r15d, [r14-7]
                cmp     [rcx], r13w
                jnz     short loc_14036C719
                cmp     [rcx+2], r13w
                jnz     short loc_14036C719
                cmp     [rcx+4], r13w
                jnz     short loc_14036C719
                cmp     [rcx+6], r13w
                jnz     short loc_14036C719
                cmp     [rcx+0Ch], r13w
                jnz     loc_14048E072

loc_14036C719:                          ; CODE XREF: RtlIpv6AddressToStringA+37↑j
                                        ; RtlIpv6AddressToStringA+3E↑j ...
                mov     ecx, 0FFFDh
                mov     r10d, r13d
                mov     r11d, r13d
                mov     esi, r13d
                test    [rbx+8], cx
                jnz     short loc_14036C73F
                mov     eax, 0FE5Eh
                mov     ecx, 6
                cmp     [rbx+0Ah], ax
                cmovz   r14d, ecx

loc_14036C73F:                          ; CODE XREF: RtlIpv6AddressToStringA+6B↑j
                mov     r12d, r14d
                mov     edx, r13d
                test    r14d, r14d
                jz      short loc_14036C786
                mov     r8, r13

loc_14036C74D:                          ; CODE XREF: RtlIpv6AddressToStringA+C4↓j
                lea     r9d, [rdx+1]
                cmp     [rbx+r8*2], r13w
                jnz     loc_14036C805
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

loc_14036C77B:                          ; CODE XREF: RtlIpv6AddressToStringA+148↓j
                add     r8, r15
                mov     edx, r9d
                cmp     r8, r12
                jl      short loc_14036C74D

loc_14036C786:                          ; CODE XREF: RtlIpv6AddressToStringA+88↑j
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

loc_14036C7A8:                          ; CODE XREF: RtlIpv6AddressToStringA+117↓j
                cmp     rsi, r15
                jge     short loc_14036C80D
                cmp     r13, rsi
                jg      short loc_14036C80D
                mov     rdx, rbp
                lea     r8, qword_1404157B0
                sub     rdx, rdi
                mov     rcx, rdi
                call    sprintf_s
                lea     rsi, [r15-1]

loc_14036C7CB:                          ; CODE XREF: RtlIpv6AddressToStringA+17C↓j
                movsxd  rcx, eax
                inc     rsi
                add     rdi, rcx
                cmp     rsi, r12
                jl      short loc_14036C7A8
                cmp     r14d, 8
                jb      loc_14048E15C

loc_14036C7E3:                          ; CODE XREF: RtlIpv6AddressToStringA+121AD4↓j
                mov     rax, rdi

loc_14036C7E6:                          ; CODE XREF: RtlIpv6AddressToStringA+121A5C↓j
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036C805:                          ; CODE XREF: RtlIpv6AddressToStringA+96↑j
                mov     esi, r9d
                jmp     loc_14036C77B
; ---------------------------------------------------------------------------

loc_14036C80D:                          ; CODE XREF: RtlIpv6AddressToStringA+EB↑j
                                        ; RtlIpv6AddressToStringA+F0↑j
                test    rsi, rsi
                jz      short loc_14036C81B
                cmp     rsi, r15
                jnz     loc_14048E13C

loc_14036C81B:                          ; CODE XREF: RtlIpv6AddressToStringA+150↑j
                                        ; RtlIpv6AddressToStringA+121A97↓j
                movzx   eax, word ptr [rbx+rsi*2]
                lea     r8, qword_1404157E0
                ror     ax, 8
                mov     rdx, rbp
                movzx   r9d, ax
                sub     rdx, rdi
                mov     rcx, rdi
                call    sprintf_s
                jmp     short loc_14036C7CB
RtlIpv6AddressToStringA endp
