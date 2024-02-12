RtlUTF8ToUnicodeN proc near             ; CODE XREF: RtlAnsiCharToUnicodeChar+1D249E↓p
                                        ; RtlMultiByteToUnicodeN+19ACFA↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014082CA50 SIZE 0000024E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r13
                push    r14
                sub     rsp, 20h
                mov     ebp, [rsp+38h+arg_20]
                xor     edi, edi
                mov     eax, edx
                add     rbp, r9
                shr     rax, 1
                xor     edx, edx
                mov     rbx, r8
                mov     rsi, rcx
                mov     r10, rcx
                lea     r14, [rcx+rax*2]
                test    r9, r9
                jz      loc_14082CA50
                test    rcx, rcx
                jz      loc_14082CA5A
                lea     r13d, [rdx+7Fh]
                mov     r8d, 0FFFDh

loc_140716831:                          ; CODE XREF: RtlUTF8ToUnicodeN+20D↓j
                mov     r11d, 7FFh

loc_140716837:                          ; CODE XREF: RtlUTF8ToUnicodeN+1162CF↓j
                                        ; RtlUTF8ToUnicodeN+1162E4↓j ...
                cmp     r9, rbp
                jnb     loc_1407169B0
                movsx   ecx, byte ptr [r9]
                inc     r9
                test    edx, edx
                jnz     loc_14082CA7B
                mov     edx, ecx
                cmp     ecx, r13d
                ja      loc_14082CB28

loc_14071685A:                          ; CODE XREF: RtlUTF8ToUnicodeN+1162AE↓j
                                        ; RtlUTF8ToUnicodeN+11630E↓j ...
                cmp     r10, r14
                jnb     loc_14082CC62
                mov     [r10], dx
                mov     rax, r14
                add     r10, 2
                mov     rcx, rbp
                sub     rax, r10
                sub     rcx, r9
                sar     rax, 1
                cmp     rcx, 0Dh
                jbe     loc_140716986
                cmp     rcx, rax
                cmovb   rax, rcx
                lea     r11, [rax-7]
                lea     r11, [r10+r11*2]
                cmp     r10, r11
                jnb     loc_1407169EB

loc_14071689C:                          ; CODE XREF: RtlUTF8ToUnicodeN+228↓j
                movsx   ecx, byte ptr [r9]
                inc     r9
                cmp     ecx, r13d
                ja      loc_140716A10
                mov     [r10], cx
                add     r10, 2
                test    r9b, 1
                jnz     loc_14082CB7D

loc_1407168BE:                          ; CODE XREF: RtlUTF8ToUnicodeN+1163B5↓j
                test    r9b, 2
                jz      short loc_1407168F3
                movzx   ecx, word ptr [r9]
                test    ecx, 8080h
                jnz     loc_1407169F2
                movzx   eax, cx
                add     r9, 2
                shr     ecx, 8
                and     ax, r13w
                and     cx, r13w
                mov     [r10], ax
                mov     [r10+2], cx
                add     r10, 4

loc_1407168F3:                          ; CODE XREF: RtlUTF8ToUnicodeN+E2↑j
                                        ; RtlUTF8ToUnicodeN+1A1↓j
                cmp     r10, r11
                jnb     loc_1407169E5
                mov     edx, [r9+4]
                mov     eax, edx
                mov     ecx, [r9]
                or      eax, ecx
                test    eax, 80808080h
                jnz     loc_1407169F2
                movzx   eax, cx
                add     r9, 8
                and     ax, r13w
                mov     [r10], ax
                mov     eax, ecx
                shr     eax, 8
                and     ax, r13w
                mov     [r10+2], ax
                mov     eax, ecx
                shr     eax, 10h
                and     ax, r13w
                shr     ecx, 18h
                mov     [r10+4], ax
                and     cx, r13w
                movzx   eax, dx
                mov     [r10+6], cx
                and     ax, r13w
                mov     [r10+8], ax
                mov     eax, edx
                shr     eax, 8
                and     ax, r13w
                mov     [r10+0Ah], ax
                mov     eax, edx
                shr     eax, 10h
                shr     edx, 18h
                and     ax, r13w
                and     dx, r13w
                mov     [r10+0Ch], ax
                mov     [r10+0Eh], dx
                add     r10, 10h
                jmp     loc_1407168F3
; ---------------------------------------------------------------------------

loc_140716986:                          ; CODE XREF: RtlUTF8ToUnicodeN+9E↑j
                cmp     rax, rcx
                jb      loc_14082CB76

loc_14071698F:                          ; CODE XREF: RtlUTF8ToUnicodeN+1CC↓j
                cmp     r9, rbp
                jnb     short loc_1407169AE
                movsx   edx, byte ptr [r9]
                inc     r9
                cmp     edx, r13d
                ja      loc_14082CB28
                mov     [r10], dx
                add     r10, 2
                jmp     short loc_14071698F
; ---------------------------------------------------------------------------

loc_1407169AE:                          ; CODE XREF: RtlUTF8ToUnicodeN+1B2↑j
                xor     edx, edx

loc_1407169B0:                          ; CODE XREF: RtlUTF8ToUnicodeN+5A↑j
                test    edx, edx
                jnz     loc_14082CC7D

loc_1407169B8:                          ; CODE XREF: RtlUTF8ToUnicodeN+1164AC↓j
                                        ; RtlUTF8ToUnicodeN+1164B9↓j
                test    rbx, rbx
                jz      short loc_1407169C9
                sub     r10, rsi
                sar     r10, 1
                add     r10d, r10d
                mov     [rbx], r10d

loc_1407169C9:                          ; CODE XREF: RtlUTF8ToUnicodeN+1DB↑j
                mov     eax, edi

loc_1407169CB:                          ; CODE XREF: RtlUTF8ToUnicodeN+116275↓j
                                        ; RtlUTF8ToUnicodeN+116284↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407169E5:                          ; CODE XREF: RtlUTF8ToUnicodeN+116↑j
                                        ; RtlUTF8ToUnicodeN+22E↓j ...
                mov     r8d, 0FFFDh

loc_1407169EB:                          ; CODE XREF: RtlUTF8ToUnicodeN+B6↑j
                xor     edx, edx
                jmp     loc_140716831
; ---------------------------------------------------------------------------

loc_1407169F2:                          ; CODE XREF: RtlUTF8ToUnicodeN+EE↑j
                                        ; RtlUTF8ToUnicodeN+12C↑j
                movzx   ecx, cl
                inc     r9
                cmp     ecx, r13d
                ja      short loc_140716A10
                mov     [r10], cx

loc_140716A01:                          ; CODE XREF: RtlUTF8ToUnicodeN+265↓j
                add     r10, 2
                cmp     r10, r11
                jb      loc_14071689C
                jmp     short loc_1407169E5
; ---------------------------------------------------------------------------

loc_140716A10:                          ; CODE XREF: RtlUTF8ToUnicodeN+C6↑j
                                        ; RtlUTF8ToUnicodeN+21B↑j ...
                movsx   edx, byte ptr [r9]
                inc     r9
                test    cl, 40h
                jz      short loc_140716A47
                mov     eax, edx
                and     al, 0C0h
                cmp     al, 80h
                jnz     short loc_140716A47
                and     edx, 3Fh
                test    cl, 20h
                jnz     loc_14082CB9A
                and     ecx, 1Fh
                cmp     ecx, 1
                jbe     short loc_140716A47
                shl     ecx, 6
                or      edx, ecx

loc_140716A3D:                          ; CODE XREF: RtlUTF8ToUnicodeN+11647D↓j
                mov     [r10], dx
                sub     r11, 2
                jmp     short loc_140716A01
; ---------------------------------------------------------------------------

loc_140716A47:                          ; CODE XREF: RtlUTF8ToUnicodeN+23A↑j
                                        ; RtlUTF8ToUnicodeN+242↑j ...
                sub     r9, 2
                jmp     short loc_1407169E5
RtlUTF8ToUnicodeN endp
