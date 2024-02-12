RtlGetIntegerAtom proc near             ; CODE XREF: RtlAddAtomToAtomTableEx+52↑p
                                        ; RtlLookupAtomInAtomTable+40↑p
                                        ; DATA XREF: ...

var_18          = xmmword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014080AF2A SIZE 00000034 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 30h
                xorps   xmm0, xmm0
                mov     rdi, rdx
                movups  [rsp+38h+var_18], xmm0
                test    rcx, 0FFFFFFFFFFFF0000h
                jz      loc_14080AF2A
                cmp     word ptr [rcx], 23h ; '#'
                jz      short loc_1406636B6

loc_1406636A8:                          ; CODE XREF: RtlGetIntegerAtom+4F↓j
                                        ; RtlGetIntegerAtom+89↓j ...
                xor     al, al

loc_1406636AA:                          ; CODE XREF: RtlGetIntegerAtom+A7↓j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406636B6:                          ; CODE XREF: RtlGetIntegerAtom+26↑j
                lea     rdx, [rcx+2]
                xor     ebx, ebx
                mov     rax, rdx
                cmp     [rdx], bx
                jz      short loc_1406636DD
                movzx   ecx, word ptr [rdx]

loc_1406636C7:                          ; CODE XREF: RtlGetIntegerAtom+5B↓j
                sub     cx, 30h ; '0'
                cmp     cx, 9
                ja      short loc_1406636A8
                add     rax, 2
                movzx   ecx, word ptr [rax]
                test    cx, cx
                jnz     short loc_1406636C7

loc_1406636DD:                          ; CODE XREF: RtlGetIntegerAtom+42↑j
                sub     ax, dx
                mov     qword ptr [rsp+38h+var_18+8], rdx
                mov     edx, 0Ah
                mov     word ptr [rsp+38h+var_18], ax
                lea     r8, [rsp+38h+arg_0]
                mov     word ptr [rsp+38h+var_18+2], ax
                lea     rcx, [rsp+38h+var_18]
                mov     [rsp+38h+arg_0], ebx
                call    RtlUnicodeStringToInteger
                test    eax, eax
                js      short loc_1406636A8
                test    rdi, rdi
                jz      short loc_140663725
                mov     ecx, [rsp+38h+arg_0]
                lea     eax, [rcx-1]
                cmp     eax, 0BFFFh
                ja      loc_14080AF51
                mov     [rdi], cx

loc_140663725:                          ; CODE XREF: RtlGetIntegerAtom+8E↑j
                                        ; RtlGetIntegerAtom+1A78C3↓j ...
                mov     al, 1
                jmp     short loc_1406636AA
RtlGetIntegerAtom endp
