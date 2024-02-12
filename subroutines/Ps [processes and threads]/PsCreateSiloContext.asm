PsCreateSiloContext proc near           ; CODE XREF: sub_1406E03C0+29↑p
                                        ; sub_1409074F0+7A↓p ...

var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = word ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140822578 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 60h
                xor     ebx, ebx
                mov     rdi, r9
                mov     [rsp+68h+var_18], rbx
                mov     eax, edx
                mov     rsi, rcx
                cmp     r8d, 1
                jz      loc_1406E0503
                cmp     r8d, 200h
                jnz     loc_140822578
                mov     rdx, cs:PsSiloContextNonPagedType

loc_1406E046C:                          ; CODE XREF: PsCreateSiloContext+DA↓j
                lea     rcx, [rsp+68h+arg_10]
                mov     [rsp+68h+arg_10], bx
                mov     [rsp+68h+var_20], rcx
                xor     r9d, r9d
                lea     rcx, [rsp+68h+var_18]
                mov     byte ptr [rsp+68h+arg_10+1], 1
                mov     [rsp+68h+var_28], rcx
                xor     r8d, r8d
                mov     [rsp+68h+var_30], ebx
                xor     ecx, ecx
                mov     [rsp+68h+var_38], ebx
                mov     [rsp+68h+var_40], eax
                call    sub_14061EDD0
                mov     r9d, eax
                test    eax, eax
                js      short loc_1406E04EF
                mov     r8, [rsp+68h+var_18]
                lea     rdx, [r8-30h]
                movzx   ecx, byte ptr [rdx+1Ah]
                test    cl, 40h
                jz      short loc_1406E04DD
                and     ecx, 7Fh
                lea     rax, unk_140C25E20
                movzx   ecx, byte ptr [rcx+rax]
                sub     rdx, rcx
                mov     rbx, [rdx]
                add     rbx, 20h ; ' '

loc_1406E04DD:                          ; CODE XREF: PsCreateSiloContext+93↑j
                mov     rax, [rsp+68h+arg_20]
                mov     [rbx], rsi
                mov     [rbx+8], rdi
                mov     [rax], r8

loc_1406E04EF:                          ; CODE XREF: PsCreateSiloContext+81↑j
                mov     eax, r9d

loc_1406E04F2:                          ; CODE XREF: PsCreateSiloContext+14214D↓j
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E0503:                          ; CODE XREF: PsCreateSiloContext+22↑j
                mov     rdx, cs:PsSiloContextPagedType
                jmp     loc_1406E046C
PsCreateSiloContext endp
