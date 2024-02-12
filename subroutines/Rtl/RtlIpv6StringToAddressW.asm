RtlIpv6StringToAddressW proc near       ; CODE XREF: RtlIpv6StringToAddressExW+5F↑p
                                        ; DATA XREF: .rdata:0000000140085C10↑o ...

var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140486958 SIZE 00000278 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movzx   ebx, word ptr [rcx]
                xor     r9d, r9d
                mov     [rsp+68h+arg_0], r9b
                mov     eax, r9d
                mov     [rsp+68h+var_48], rax
                mov     edx, r9d
                mov     [rsp+68h+arg_18], edx
                mov     r13, r8
                mov     r12, rcx
                mov     r14d, r9d
                mov     r8b, r9b
                mov     esi, r9d
                mov     edi, r9d
                mov     r15d, r9d
                mov     ebp, r9d
                test    bx, bx
                jz      short loc_1403569CF
                mov     r10d, 80h

loc_140356979:                          ; CODE XREF: RtlIpv6StringToAddressW+18B↓j
                mov     ecx, r14d
                test    r14d, r14d
                jnz     loc_140356A0E

loc_140356985:                          ; CODE XREF: RtlIpv6StringToAddressW+13003B↓j
                cmp     bx, 3Ah ; ':'
                jz      loc_140486A47
                cmp     esi, 7
                ja      short loc_1403569CA
                cmp     bx, r10w
                jnb     short loc_1403569CA
                mov     edx, 4
                movzx   ecx, bx
                call    sub_1403D45AC
                xor     r9d, r9d
                test    eax, eax
                jnz     loc_140486A8B
                mov     edx, 80h
                movzx   ecx, bx
                call    sub_1403D45AC
                xor     r9d, r9d
                test    eax, eax
                jnz     loc_140356A69

loc_1403569CA:                          ; CODE XREF: RtlIpv6StringToAddressW+72↑j
                                        ; RtlIpv6StringToAddressW+78↑j ...
                mov     rax, [rsp+68h+var_48]

loc_1403569CF:                          ; CODE XREF: RtlIpv6StringToAddressW+51↑j
                                        ; RtlIpv6StringToAddressW+191↓j ...
                mov     rcx, [rsp+68h+arg_8]
                mov     [rcx], r12
                test    edi, edi
                jnz     loc_140486AF2

loc_1403569DF:                          ; CODE XREF: RtlIpv6StringToAddressW+1301DD↓j
                test    ebp, ebp
                jnz     loc_140486B02
                cmp     esi, 7
                jz      loc_140486B02

loc_1403569F0:                          ; CODE XREF: RtlIpv6StringToAddressW+1300E7↓j
                                        ; RtlIpv6StringToAddressW+13018D↓j ...
                mov     eax, 0C000000Dh

loc_1403569F5:                          ; CODE XREF: RtlIpv6StringToAddressW+1302AB↓j
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140356A0E:                          ; CODE XREF: RtlIpv6StringToAddressW+5F↑j
                sub     ecx, 1
                jnz     loc_140486958
                cmp     bx, r10w
                jnb     short loc_140356A50
                lea     edx, [rcx+4]
                movzx   ecx, bx
                call    sub_1403D45AC
                xor     r9d, r9d
                test    eax, eax
                jnz     loc_140486963
                mov     edx, 80h
                movzx   ecx, bx
                call    sub_1403D45AC
                xor     r9d, r9d
                test    eax, eax
                jnz     loc_14048696B
                mov     r8b, [rsp+68h+arg_0]

loc_140356A50:                          ; CODE XREF: RtlIpv6StringToAddressW+FB↑j
                cmp     bx, 3Ah ; ':'
                jz      loc_140486988
                cmp     bx, 2Eh ; '.'
                jnz     loc_1403569CA
                jmp     loc_1404869CD
; ---------------------------------------------------------------------------

loc_140356A69:                          ; CODE XREF: RtlIpv6StringToAddressW+A4↑j
                test    edi, edi
                jnz     loc_1403569CA
                mov     r8b, 1
                lea     r14d, [rdi+1]
                mov     rax, r12
                mov     [rsp+68h+arg_0], r8b
                mov     [rsp+68h+var_48], rax
                mov     r15d, r14d

loc_140356A88:                          ; CODE XREF: RtlIpv6StringToAddressW+1300A8↓j
                cmp     r14d, 1
                jnz     loc_1404869F2

loc_140356A92:                          ; CODE XREF: RtlIpv6StringToAddressW+130063↓j
                                        ; RtlIpv6StringToAddressW+1300D5↓j ...
                mov     edx, [rsp+68h+arg_18]

loc_140356A99:                          ; CODE XREF: RtlIpv6StringToAddressW+130122↓j
                add     r12, 2
                mov     r10d, 80h
                movzx   ebx, word ptr [r12]
                test    bx, bx
                jnz     loc_140356979
                jmp     loc_1403569CF
RtlIpv6StringToAddressW endp
