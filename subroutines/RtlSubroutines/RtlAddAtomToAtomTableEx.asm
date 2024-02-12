RtlAddAtomToAtomTableEx proc near       ; CODE XREF: sub_140703F00+11F↓p
                                        ; RtlAddAtomToAtomTable+7↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = word ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014044C38A SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     ebx, r9d
                mov     r14, r8
                mov     r12, rdx
                mov     r15, rcx
                xor     esi, esi
                mov     [rax-40h], rsi
                mov     [rax-38h], rsi
                mov     [rax-50h], esi
                mov     [rax-58h], si
                mov     [rax-48h], rsi
                call    sub_140663974
                test    al, al
                jz      loc_14044C38A

loc_1402A99BA:                          ; DATA XREF: .rdata:00000001400621C0↑o
;   __try { // __except at loc_1402A9B3F
                lea     rdx, [rsp+98h+var_58]
                mov     rcx, r12
                call    RtlGetIntegerAtom
                test    al, al
                jnz     loc_1402A9AD9
                cmp     [r12], si
                jz      loc_1402A9B0B
                lea     rax, [rsp+98h+var_40]
                mov     [rsp+98h+var_68], rax
                lea     rax, [rsp+98h+var_48]
                mov     [rsp+98h+var_70], rax
                lea     rax, [rsp+98h+var_50]
                mov     [rsp+98h+var_78], rax
                lea     r9, [rsp+98h+var_38]
                xor     r8d, r8d
                mov     rdx, r12
                mov     rcx, r15
                call    sub_140663AC0
                mov     edi, eax
                mov     [rsp+98h+var_54], eax
                test    eax, eax
                js      loc_1402A9B3D
                mov     rcx, [rsp+98h+var_40]
                test    rcx, rcx
                jz      short loc_1402A9A45
                mov     rdx, [rsp+98h+var_48]
                call    sub_1402A9BC4
                test    r14, r14
                jz      short loc_1402A9A3A
                movzx   eax, word ptr [rcx+0Ah]
                mov     [r14], ax

loc_1402A9A3A:                          ; CODE XREF: RtlAddAtomToAtomTableEx+C0↑j
                mov     edi, esi
                mov     [rsp+98h+var_54], esi
                jmp     loc_1402A9B3D
; ---------------------------------------------------------------------------

loc_1402A9A45:                          ; CODE XREF: RtlAddAtomToAtomTableEx+B1↑j
                mov     r13, [rsp+98h+var_38]
                test    r13, r13
                jz      loc_1402A9B34
                mov     edi, 0C0000017h
                mov     [rsp+98h+var_54], edi
                mov     r8d, ebx
                lea     rdx, [rsp+98h+var_48]
                mov     ecx, [rsp+98h+var_50]
                call    sub_14034EE18
                mov     rsi, rax
                mov     [rsp+98h+var_40], rax
                test    rax, rax
                jz      loc_1402A9B3D
                mov     ebx, [rsp+98h+var_50]
                lea     rcx, [rax+2Ah]
                mov     r8d, ebx
                mov     rdx, r12
                call    memmove
                shr     rbx, 1
                movzx   ecx, bl
                mov     [rsi+28h], cl
                xor     ebx, ebx
                mov     [rsi+rcx*2+2Ah], bx
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_14070CEAC
                test    al, al
                jz      short loc_1402A9B12
                mov     ecx, 0C000h
                movzx   eax, word ptr [rsi+8]
                or      ax, cx
                mov     [rsi+0Ah], ax
                mov     [r13+0], rsi
                test    r14, r14
                jz      short loc_1402A9AD1
                movzx   eax, word ptr [rsi+0Ah]
                mov     [r14], ax

loc_1402A9AD1:                          ; CODE XREF: RtlAddAtomToAtomTableEx+157↑j
                mov     edi, ebx
                mov     [rsp+98h+var_54], ebx
                jmp     short loc_1402A9B3D
; ---------------------------------------------------------------------------

loc_1402A9AD9:                          ; CODE XREF: RtlAddAtomToAtomTableEx+59↑j
                mov     ecx, 0C000h
                movzx   eax, [rsp+98h+var_58]
                cmp     ax, cx
                jnb     short loc_1402A9AF9
                mov     edi, esi
                mov     [rsp+98h+var_54], esi

loc_1402A9AEE:                          ; CODE XREF: RtlAddAtomToAtomTableEx+199↓j
                test    r14, r14
                jz      short loc_1402A9B3D
                mov     [r14], ax
                jmp     short loc_1402A9B3D
; ---------------------------------------------------------------------------

loc_1402A9AF9:                          ; CODE XREF: RtlAddAtomToAtomTableEx+176↑j
                mov     eax, esi
                mov     [rsp+98h+var_58], ax
                mov     edi, 0C000000Dh
                mov     [rsp+98h+var_54], edi
                jmp     short loc_1402A9AEE
; ---------------------------------------------------------------------------

loc_1402A9B0B:                          ; CODE XREF: RtlAddAtomToAtomTableEx+64↑j
                mov     edi, 0C0000033h
                jmp     short loc_1402A9B39
; ---------------------------------------------------------------------------

loc_1402A9B12:                          ; CODE XREF: RtlAddAtomToAtomTableEx+13E↑j
                mov     rcx, [rsp+98h+var_48]
                test    rcx, rcx
                jz      short loc_1402A9B2A
                lea     rax, [rsi+10h]
                cmp     rcx, rax
                jz      short loc_1402A9B2A
                call    sub_140701A1C

loc_1402A9B2A:                          ; CODE XREF: RtlAddAtomToAtomTableEx+1AA↑j
                                        ; RtlAddAtomToAtomTableEx+1B3↑j
                mov     rcx, rsi
                call    sub_140701A1C
                jmp     short loc_1402A9B3D
; ---------------------------------------------------------------------------

loc_1402A9B34:                          ; CODE XREF: RtlAddAtomToAtomTableEx+DD↑j
                mov     edi, 0C000000Dh

loc_1402A9B39:                          ; CODE XREF: RtlAddAtomToAtomTableEx+1A0↑j
                mov     [rsp+98h+var_54], edi

loc_1402A9B3D:                          ; CODE XREF: RtlAddAtomToAtomTableEx+A3↑j
                                        ; RtlAddAtomToAtomTableEx+D0↑j ...
                jmp     short loc_1402A9B4D
;   } // starts at 1402A99BA
; ---------------------------------------------------------------------------

loc_1402A9B3F:                          ; DATA XREF: .rdata:00000001400621C0↑o
;   __except(1) // owned by 1402A99BA
                mov     edi, eax
                mov     [rsp+98h+var_54], eax
                mov     r15, [rsp+98h+arg_0]

loc_1402A9B4D:                          ; CODE XREF: RtlAddAtomToAtomTableEx:loc_1402A9B3D↑j
                mov     rcx, r15
                call    sub_140663E04
                mov     eax, edi

loc_1402A9B57:                          ; CODE XREF: RtlAddAtomToAtomTableEx+1A2A1F↓j
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+38h]
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
; } // starts at 1402A9970
RtlAddAtomToAtomTableEx endp
