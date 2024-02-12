ObSetHandleAttributes proc near         ; CODE XREF: sub_1406F92E0+8F↓p
                                        ; DATA XREF: .rdata:000000014006220C↑o ...

var_88          = dword ptr -88h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080AFC6 SIZE 00000082 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                xorps   xmm0, xmm0
                mov     r13, rdx
                movups  [rsp+88h+var_68], xmm0
                mov     dl, r8b
                mov     rbx, rcx
                movups  [rsp+88h+var_58], xmm0
                xor     r12b, r12b
                xor     r15b, r15b
                movups  [rsp+88h+var_48], xmm0
                mov     rax, gs:188h
                mov     r14, [rax+0B8h]
                call    sub_140243260
                mov     edi, 1
                test    al, al
                jnz     loc_140663FAA
                mov     rax, gs:188h
                cmp     [rax+24Ah], dil
                jz      loc_14080AFC6
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rsi, [rcx+570h]

loc_140663EEB:                          ; CODE XREF: ObSetHandleAttributes+172↓j
                                        ; ObSetHandleAttributes+187↓j ...
                mov     rbp, gs:188h
                dec     word ptr [rbp+1E4h]
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140663A60
                mov     r10, rax
                test    rax, rax
                jz      loc_14080B02C
                mov     rax, [rax]
                mov     r8b, [r13+0]
                sar     rax, 10h
                and     rax, 0FFFFFFFFFFFFFFF0h
                test    r8b, r8b
                jnz     loc_14080AFE8

loc_140663F2A:                          ; CODE XREF: ObSetHandleAttributes+1A71CA↓j
                neg     r8b
                mov     r8d, 3
                sbb     ecx, ecx
                and     ecx, 2
                mov     edx, ecx
                or      edx, edi
                cmp     byte ptr [r13+1], 0
                cmovz   edx, ecx
                mov     rcx, r10
                call    sub_1402A9C1C

loc_140663F4C:                          ; CODE XREF: ObSetHandleAttributes+1A71C4↓j
                lock xadd [r10], rdi
                lea     rcx, [rsi+30h]
                lock or [rsp+88h+var_88], 0
                cmp     qword ptr [rcx], 0
                jnz     loc_14080B01F

loc_140663F64:                          ; CODE XREF: ObSetHandleAttributes+1A71D7↓j
                xor     ebx, ebx

loc_140663F66:                          ; CODE XREF: ObSetHandleAttributes+1A71E1↓j
                mov     rcx, rbp
                call    sub_14021E1F0
                test    r12b, r12b
                jnz     short loc_140663FDC

loc_140663F73:                          ; CODE XREF: ObSetHandleAttributes+198↓j
                test    r15b, r15b
                jnz     loc_14080B036

loc_140663F7C:                          ; CODE XREF: ObSetHandleAttributes+1A71F3↓j
                mov     eax, ebx

loc_140663F7E:                          ; CODE XREF: ObSetHandleAttributes+1A718B↓j
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140663FAA:                          ; CODE XREF: ObSetHandleAttributes+68↑j
                mov     rcx, cs:PsInitialSystemProcess
                xor     rbx, 0FFFFFFFF80000000h
                mov     rsi, cs:qword_140C259A0
                cmp     r14, rcx
                jz      loc_140663EEB
                lea     r8, [rsp+88h+var_68]
                xor     edx, edx
                call    sub_1402D3C90
                mov     r12b, dil
                jmp     loc_140663EEB
; ---------------------------------------------------------------------------

loc_140663FDC:                          ; CODE XREF: ObSetHandleAttributes+121↑j
                xor     edx, edx
                lea     rcx, [rsp+88h+var_68]
                call    sub_14021E230
                jmp     short loc_140663F73
; } // starts at 140663E50
ObSetHandleAttributes endp
