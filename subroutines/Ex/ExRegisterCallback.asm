ExRegisterCallback proc near            ; CODE XREF: sub_1403CECF8+1DB↓p
                                        ; sub_1407ADEE0+CB↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140495E28 SIZE 0000009D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbp, rdx
                mov     rsi, r8
                mov     edx, 746C6644h
                mov     rdi, rcx
                call    ObfReferenceObjectWithTag
                mov     edx, 30h ; '0'
                mov     ecx, 200h
                mov     r8d, 65524243h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140495E28
                and     dword ptr [rax+28h], 0
                lea     rcx, [rdi+8]
                mov     [rax+10h], rdi
                xor     r14b, r14b
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     byte ptr [rax+2Ch], 0
                call    KeAcquireSpinLockRaiseToDpc
                movzx   esi, al
                cmp     [rdi+20h], r14b
                jz      short loc_14037EF1B

loc_14037EEB6:                          ; CODE XREF: ExRegisterCallback+E2↓j
                lea     rcx, [rdi+10h]
                mov     r14b, 1
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_140495E3C
                mov     [rbx], rcx
                mov     [rbx+8], rdx
                mov     [rdx], rbx
                mov     [rcx+8], rbx

loc_14037EED8:                          ; CODE XREF: ExRegisterCallback+E4↓j
                lea     rcx, [rdi+8]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140495E43

loc_14037EEEF:                          ; CODE XREF: ExRegisterCallback+117005↓j
                                        ; ExRegisterCallback+117011↓j ...
                mov     cr8, rsi
                test    r14b, r14b
                jz      loc_140495EA7

loc_14037EEFC:                          ; CODE XREF: ExRegisterCallback+117080↓j
                mov     rax, rbx

loc_14037EEFF:                          ; CODE XREF: ExRegisterCallback+116FF7↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037EF1B:                          ; CODE XREF: ExRegisterCallback+74↑j
                lea     rcx, [rdi+10h]
                cmp     [rcx], rcx
                jz      short loc_14037EEB6
                jmp     short loc_14037EED8
ExRegisterCallback endp
