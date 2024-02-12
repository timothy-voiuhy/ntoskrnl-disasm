RtlGetElementGenericTable proc near     ; DATA XREF: .rdata:0000000140083798↑o
                                        ; .pdata:00000001400D8060↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404831FC SIZE 00000030 BYTES

                mov     [rsp+arg_0], rbx
                mov     r10d, [rcx+20h]
                lea     r11d, [rdx+1]
                mov     r8, [rcx+18h]
                or      ebx, 0FFFFFFFFh
                mov     r9d, r11d
                cmp     edx, ebx
                jnz     short loc_14034F114

loc_14034F10B:                          ; CODE XREF: RtlGetElementGenericTable+2A↓j
                xor     eax, eax

loc_14034F10D:                          ; CODE XREF: RtlGetElementGenericTable+35↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14034F114:                          ; CODE XREF: RtlGetElementGenericTable+19↑j
                mov     eax, [rcx+24h]
                cmp     r11d, eax
                ja      short loc_14034F10B
                cmp     r11d, r10d
                jnz     short loc_14034F127

loc_14034F121:                          ; CODE XREF: RtlGetElementGenericTable+5F↓j
                lea     rax, [r8+10h]
                jmp     short loc_14034F10D
; ---------------------------------------------------------------------------

loc_14034F127:                          ; CODE XREF: RtlGetElementGenericTable+2F↑j
                jb      short loc_14034F151
                sub     eax, r11d
                mov     edx, r11d
                sub     edx, r10d
                inc     eax
                cmp     edx, eax
                ja      loc_140483213
                test    edx, edx
                jz      short loc_14034F147

loc_14034F140:                          ; CODE XREF: RtlGetElementGenericTable+55↓j
                mov     r8, [r8]
                add     edx, ebx
                jnz     short loc_14034F140

loc_14034F147:                          ; CODE XREF: RtlGetElementGenericTable+4E↑j
                                        ; RtlGetElementGenericTable+76↓j ...
                mov     [rcx+18h], r8
                mov     [rcx+20h], r11d
                jmp     short loc_14034F121
; ---------------------------------------------------------------------------

loc_14034F151:                          ; CODE XREF: RtlGetElementGenericTable:loc_14034F127↑j
                mov     eax, r10d
                shr     eax, 1
                cmp     r11d, eax
                ja      loc_1404831FC
                lea     r8, [rcx+8]
                test    r11d, r11d
                jz      short loc_14034F147

loc_14034F168:                          ; CODE XREF: RtlGetElementGenericTable+80↓j
                mov     r8, [r8]
                add     r9d, ebx
                jz      short loc_14034F147
                jmp     short loc_14034F168
RtlGetElementGenericTable endp
