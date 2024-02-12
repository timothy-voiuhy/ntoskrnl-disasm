IoIsValidNameGraftingBuffer proc near   ; DATA XREF: .pdata:000000014011CB2C↑o

var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_18          = qword ptr -18h
var_10          = byte ptr -10h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_18], rax
                mov     rax, [rcx+0B8h]
                xorps   xmm0, xmm0
                mov     rdi, rdx
                xor     esi, esi
                movups  [rbp+57h+var_78], xmm0
                mov     edx, [rax+8]
                test    edx, edx
                jz      short loc_1408965CC
                movzx   ecx, word ptr [rdi+0Eh]
                movzx   eax, word ptr [rdi+0Ah]
                add     ecx, 14h
                add     ecx, eax
                cmp     edx, ecx
                jb      loc_140896712

loc_1408965CC:                          ; CODE XREF: IoIsValidNameGraftingBuffer+45↑j
                movzx   eax, word ptr [rdi+0Ah]
                mov     r15w, 5Ch ; '\'
                cmp     ax, 6
                jbe     short loc_1408965FD
                cmp     [rdi+10h], r15w
                jnz     short loc_1408965FD
                cmp     [rdi+12h], r15w
                jnz     short loc_1408965FD
                movzx   ecx, word ptr [rdi+14h]
                cmp     cx, 2Eh ; '.'
                jz      short loc_1408965FD
                cmp     cx, 3Fh ; '?'
                jnz     loc_140896712

loc_1408965FD:                          ; CODE XREF: IoIsValidNameGraftingBuffer+69↑j
                                        ; IoIsValidNameGraftingBuffer+70↑j ...
                cmp     ax, 10h
                jbe     short loc_14089663F
                cmp     [rdi+10h], r15w
                jnz     short loc_14089663F
                cmp     word ptr [rdi+12h], 3Fh ; '?'
                jnz     short loc_14089663F
                cmp     word ptr [rdi+14h], 3Fh ; '?'
                jnz     short loc_14089663F
                cmp     [rdi+16h], r15w
                jnz     short loc_14089663F
                cmp     word ptr [rdi+18h], 55h ; 'U'
                jnz     short loc_14089663F
                cmp     word ptr [rdi+1Ah], 4Eh ; 'N'
                jnz     short loc_14089663F
                cmp     word ptr [rdi+1Ch], 43h ; 'C'
                jnz     short loc_14089663F
                cmp     [rdi+1Eh], r15w
                jz      loc_140896712

loc_14089663F:                          ; CODE XREF: IoIsValidNameGraftingBuffer+91↑j
                                        ; IoIsValidNameGraftingBuffer+98↑j ...
                cmp     ax, 0Ch
                jbe     loc_140896817
                cmp     [rdi+10h], r15w
                jnz     loc_140896817
                cmp     word ptr [rdi+12h], 3Fh ; '?'
                jnz     loc_140896817
                cmp     word ptr [rdi+14h], 3Fh ; '?'
                jnz     loc_140896817
                cmp     [rdi+16h], r15w
                jnz     loc_140896817
                cmp     word ptr [rdi+1Ah], 3Ah ; ':'
                jnz     loc_140896817
                movups  xmm0, cs:xmmword_1407D6920
                lea     rdx, [rbp+57h+var_38]
                mov     [rbp+57h+var_84], esi
                lea     rcx, [rbp+57h+var_78]
                mov     [rbp+57h+var_64], esi
                movdqu  [rbp+57h+var_38], xmm0
                mov     [rbp+57h+var_4C], esi
                mov     [rbp+57h+var_90], rsi
                call    RtlInitUnicodeString
                mov     rax, qword ptr [rbp+57h+var_78+8]
                lea     r8, [rbp+57h+var_68]
                movzx   ecx, word ptr [rdi+18h]
                xorps   xmm0, xmm0
                mov     edx, 1
                mov     [rax+8], cx
                lea     rax, [rbp+57h+var_78]
                lea     rcx, [rbp+57h+var_90]
                mov     [rbp+57h+var_58], rax
                mov     [rbp+57h+var_68], 30h ; '0'
                mov     [rbp+57h+var_60], rsi
                mov     [rbp+57h+var_50], 240h
                movdqu  [rbp+57h+var_48], xmm0
                call    ZwOpenSymbolicLinkObject
                test    eax, eax
                js      loc_140896817
                mov     edx, 208h
                mov     r8d, 20206F49h
                lea     ecx, [rdx-8]
                call    ExAllocatePoolWithTag
                mov     rcx, [rbp+57h+var_90]
                mov     r14, rax
                test    rax, rax
                jnz     short loc_14089673E
                call    ZwClose

loc_140896712:                          ; CODE XREF: IoIsValidNameGraftingBuffer+56↑j
                                        ; IoIsValidNameGraftingBuffer+87↑j ...
                xor     al, al

loc_140896714:                          ; CODE XREF: IoIsValidNameGraftingBuffer+3B4↓j
                mov     rcx, [rbp+57h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14089673E:                          ; CODE XREF: IoIsValidNameGraftingBuffer+19B↑j
                xor     r8d, r8d
                mov     [rbp+57h+var_80], r14
                lea     rdx, [rbp+57h+var_88]
                mov     [rbp+57h+var_88], 2080000h
                call    ZwQuerySymbolicLinkObject
                mov     rcx, [rbp+57h+var_90]
                mov     ebx, eax
                call    ZwClose
                test    ebx, ebx
                js      loc_14089680D
                mov     rcx, [rbp+57h+var_80]
                cmp     [rcx], r15w
                jnz     loc_14089680D
                cmp     word ptr [rcx+2], 44h ; 'D'
                jnz     loc_14089680D
                cmp     word ptr [rcx+4], 65h ; 'e'
                jnz     loc_14089680D
                cmp     word ptr [rcx+6], 76h ; 'v'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+8], 69h ; 'i'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+0Ah], 63h ; 'c'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+0Ch], 65h ; 'e'
                jnz     short loc_14089680D
                cmp     [rcx+0Eh], r15w
                jnz     short loc_14089680D
                cmp     word ptr [rcx+10h], 4Ch ; 'L'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+12h], 61h ; 'a'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+14h], 6Eh ; 'n'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+1Ch], 52h ; 'R'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+1Eh], 65h ; 'e'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+20h], 64h ; 'd'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+22h], 69h ; 'i'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+24h], 72h ; 'r'
                jnz     short loc_14089680D
                cmp     word ptr [rcx+2Eh], 72h ; 'r'
                mov     eax, esi
                setz    al
                cmp     [rcx+30h], r15w
                setz    sil
                test    esi, eax
                jz      short loc_14089680D
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_140896712
; ---------------------------------------------------------------------------

loc_14089680D:                          ; CODE XREF: IoIsValidNameGraftingBuffer+1F2↑j
                                        ; IoIsValidNameGraftingBuffer+200↑j ...
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_140896817:                          ; CODE XREF: IoIsValidNameGraftingBuffer+D3↑j
                                        ; IoIsValidNameGraftingBuffer+DE↑j ...
                movzx   eax, word ptr [rdi+0Ah]
                cmp     ax, 0Ch
                jb      loc_140896712
                movzx   ecx, word ptr [rdi+10h]
                cmp     cx, r15w
                jnz     short loc_14089684F
                cmp     word ptr [rdi+12h], 3Fh ; '?'
                jnz     short loc_14089684F
                cmp     word ptr [rdi+14h], 3Fh ; '?'
                jnz     short loc_14089684F
                cmp     [rdi+16h], r15w
                jnz     short loc_14089684F
                cmp     word ptr [rdi+1Ah], 3Ah ; ':'
                jz      loc_140896922

loc_14089684F:                          ; CODE XREF: IoIsValidNameGraftingBuffer+2BD↑j
                                        ; IoIsValidNameGraftingBuffer+2C4↑j ...
                cmp     ax, 60h ; '`'
                jz      short loc_14089686A
                cmp     ax, 62h ; 'b'
                jnz     loc_140896712
                cmp     [rdi+70h], r15w
                jnz     loc_140896712

loc_14089686A:                          ; CODE XREF: IoIsValidNameGraftingBuffer+2E3↑j
                cmp     cx, r15w
                jnz     loc_140896712
                movzx   eax, word ptr [rdi+12h]
                cmp     ax, 3Fh ; '?'
                jz      short loc_140896888
                cmp     ax, r15w
                jnz     loc_140896712

loc_140896888:                          ; CODE XREF: IoIsValidNameGraftingBuffer+30C↑j
                cmp     word ptr [rdi+14h], 3Fh ; '?'
                jnz     loc_140896712
                cmp     [rdi+16h], r15w
                jnz     loc_140896712
                cmp     word ptr [rdi+18h], 56h ; 'V'
                jnz     loc_140896712
                cmp     word ptr [rdi+1Ah], 6Fh ; 'o'
                jnz     loc_140896712
                cmp     word ptr [rdi+1Ch], 6Ch ; 'l'
                jnz     loc_140896712
                cmp     word ptr [rdi+1Eh], 75h ; 'u'
                jnz     loc_140896712
                cmp     word ptr [rdi+20h], 6Dh ; 'm'
                jnz     loc_140896712
                cmp     word ptr [rdi+22h], 65h ; 'e'
                jnz     loc_140896712
                cmp     word ptr [rdi+24h], 7Bh ; '{'
                jnz     loc_140896712
                mov     cx, 2Dh ; '-'
                cmp     [rdi+36h], cx
                jnz     loc_140896712
                cmp     [rdi+40h], cx
                jnz     loc_140896712
                cmp     [rdi+4Ah], cx
                jnz     loc_140896712
                cmp     [rdi+54h], cx
                jnz     loc_140896712
                cmp     word ptr [rdi+6Eh], 7Dh ; '}'
                jnz     loc_140896712

loc_140896922:                          ; CODE XREF: IoIsValidNameGraftingBuffer+2D9↑j
                mov     al, 1
                jmp     loc_140896714
; } // starts at 140896570
IoIsValidNameGraftingBuffer endp
