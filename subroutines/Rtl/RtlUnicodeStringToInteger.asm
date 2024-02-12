RtlUnicodeStringToInteger proc near     ; CODE XREF: sub_1403A82A4+D3825↑p
                                        ; RtlGetIntegerAtom+82↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140823882 SIZE 00000061 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     [rsp+arg_18], r14
                mov     r14, r8
                mov     ebx, edx
                xor     r9d, r9d
                mov     esi, r9d
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jz      loc_1406E7005
                test    al, 1
                jnz     loc_1406E7005
                mov     r10, [rcx+8]
                mov     r8d, eax
                shr     r8d, 1
                movzx   edi, r9w
                jz      loc_140823893

loc_1406E6EA7:                          ; CODE XREF: RtlUnicodeStringToInteger+13CA25↓j
                dec     r8d
                movzx   edi, word ptr [r10]
                add     r10, 2
                cmp     di, 20h ; ' '
                jbe     loc_140823882

loc_1406E6EBC:                          ; CODE XREF: RtlUnicodeStringToInteger+13CA2E↓j
                                        ; RtlUnicodeStringToInteger+13CA39↓j
                movzx   eax, di
                lea     ecx, [rdi-2Bh]
                mov     edx, 0FFFDh
                test    dx, cx
                jz      loc_1406E6F90

loc_1406E6ED0:                          ; CODE XREF: RtlUnicodeStringToInteger+144↓j
                                        ; RtlUnicodeStringToInteger+13CA41↓j
                mov     rcx, r10
                mov     edx, r8d
                test    ebx, ebx
                jz      loc_1406E6FAE
                cmp     ebx, 10h
                jnz     loc_1406E6F71
                lea     r11d, [rbx-0Ch]

loc_1406E6EEB:                          ; CODE XREF: RtlUnicodeStringToInteger+12B↓j
                                        ; RtlUnicodeStringToInteger+15A↓j ...
                test    ax, ax
                jz      short loc_1406E6F42

loc_1406E6EF0:                          ; CODE XREF: RtlUnicodeStringToInteger+C4↓j
                lea     ecx, [rax-30h]
                cmp     cx, 9
                ja      short loc_1406E6F28
                movzx   edx, ax
                sub     edx, 30h ; '0'

loc_1406E6EFF:                          ; CODE XREF: RtlUnicodeStringToInteger+1C9↓j
                                        ; RtlUnicodeStringToInteger+13CA7E↓j
                cmp     edx, ebx
                jnb     short loc_1406E6F42
                test    r11d, r11d
                jz      short loc_1406E6F68
                mov     ecx, r11d
                shl     r9d, cl
                or      r9d, edx

loc_1406E6F11:                          ; CODE XREF: RtlUnicodeStringToInteger+10F↓j
                test    r8d, r8d
                jz      short loc_1406E6F42
                dec     r8d
                movzx   eax, word ptr [r10]
                add     r10, 2
                test    ax, ax
                jnz     short loc_1406E6EF0
                jmp     short loc_1406E6F42
; ---------------------------------------------------------------------------

loc_1406E6F28:                          ; CODE XREF: RtlUnicodeStringToInteger+97↑j
                lea     ecx, [rax-41h]
                cmp     cx, 5
                jbe     loc_1406E7023
                lea     ecx, [rax-61h]
                cmp     cx, 5
                jbe     loc_1408238D8

loc_1406E6F42:                          ; CODE XREF: RtlUnicodeStringToInteger+8E↑j
                                        ; RtlUnicodeStringToInteger+A1↑j ...
                cmp     di, 2Dh ; '-'
                jz      short loc_1406E6FA9

loc_1406E6F48:                          ; CODE XREF: RtlUnicodeStringToInteger+14C↓j
                                        ; RtlUnicodeStringToInteger+1AA↓j
                nop

loc_1406E6F49:                          ; DATA XREF: .rdata:000000014007B6F0↑o
;   __try { // __except at loc_1406E6F4E
                mov     [r14], r9d
                jmp     short loc_1406E6F50
;   } // starts at 1406E6F49
; ---------------------------------------------------------------------------

loc_1406E6F4E:                          ; DATA XREF: .rdata:000000014007B6F0↑o
;   __except(1) // owned by 1406E6F49
                jmp     short loc_1406E6F52
; ---------------------------------------------------------------------------

loc_1406E6F50:                          ; CODE XREF: RtlUnicodeStringToInteger+EC↑j
                mov     eax, esi

loc_1406E6F52:                          ; CODE XREF: RtlUnicodeStringToInteger:loc_1406E6F4E↑j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                mov     r14, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406E6F68:                          ; CODE XREF: RtlUnicodeStringToInteger+A6↑j
                imul    r9d, ebx
                add     r9d, edx
                jmp     short loc_1406E6F11
; ---------------------------------------------------------------------------

loc_1406E6F71:                          ; CODE XREF: RtlUnicodeStringToInteger+81↑j
                cmp     ebx, 2
                jz      loc_1408238CD
                cmp     ebx, 8
                jz      loc_1408238C2
                cmp     ebx, 0Ah
                jnz     short loc_1406E7005
                mov     r11d, r9d
                jmp     loc_1406E6EEB
; ---------------------------------------------------------------------------

loc_1406E6F90:                          ; CODE XREF: RtlUnicodeStringToInteger+6A↑j
                test    r8d, r8d
                jz      loc_14082389E
                dec     r8d
                movzx   eax, word ptr [r10]
                add     r10, 2
                jmp     loc_1406E6ED0
; ---------------------------------------------------------------------------

loc_1406E6FA9:                          ; CODE XREF: RtlUnicodeStringToInteger+E6↑j
                neg     r9d
                jmp     short loc_1406E6F48
; ---------------------------------------------------------------------------

loc_1406E6FAE:                          ; CODE XREF: RtlUnicodeStringToInteger+78↑j
                mov     ebx, 0Ah
                mov     r11d, r9d
                cmp     ax, 30h ; '0'
                jnz     loc_1406E6EEB
                test    r8d, r8d
                jz      short loc_1406E701A
                dec     r8d
                movzx   eax, word ptr [r10]
                add     r10, 2
                cmp     ax, 78h ; 'x'
                jz      short loc_1406E700F
                cmp     ax, 6Fh ; 'o'
                jz      loc_1408238A6
                cmp     ax, 62h ; 'b'
                jz      loc_1408238B4
                mov     r8d, edx
                mov     r10, rcx

loc_1406E6FF0:                          ; CODE XREF: RtlUnicodeStringToInteger+1B8↓j
                                        ; RtlUnicodeStringToInteger+13CA4F↓j ...
                test    r8d, r8d
                jz      short loc_1406E701A
                dec     r8d
                movzx   eax, word ptr [r10]
                add     r10, 2
                jmp     loc_1406E6EEB
; ---------------------------------------------------------------------------

loc_1406E7005:                          ; CODE XREF: RtlUnicodeStringToInteger+25↑j
                                        ; RtlUnicodeStringToInteger+2D↑j ...
                mov     esi, 0C000000Dh
                jmp     loc_1406E6F48
; ---------------------------------------------------------------------------

loc_1406E700F:                          ; CODE XREF: RtlUnicodeStringToInteger+174↑j
                mov     ebx, 10h
                lea     r11d, [rbx-0Ch]
                jmp     short loc_1406E6FF0
; ---------------------------------------------------------------------------

loc_1406E701A:                          ; CODE XREF: RtlUnicodeStringToInteger+163↑j
                                        ; RtlUnicodeStringToInteger+193↑j
                movzx   eax, r9w
                jmp     loc_1406E6EEB
; ---------------------------------------------------------------------------

loc_1406E7023:                          ; CODE XREF: RtlUnicodeStringToInteger+CF↑j
                movzx   edx, ax
                sub     edx, 37h ; '7'
                jmp     loc_1406E6EFF
; } // starts at 1406E6E60
RtlUnicodeStringToInteger endp
