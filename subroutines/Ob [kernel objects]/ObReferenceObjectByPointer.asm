ObReferenceObjectByPointer proc near    ; CODE XREF: sub_14060BD48+146↓p
                                        ; sub_1406483B0+36D↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046D786 SIZE 00000034 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_140311858
                lea     rax, [rcx-30h]
                shr     rax, 8
                movzx   ecx, al
                movzx   eax, byte ptr [rsi-18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                lea     rax, qword_140CFCE60
                cmp     [rax+rcx*8], r8

loc_14031181E:                          ; CODE XREF: ObReferenceObjectByPointer+7B↓j
                jnz     short loc_14031185D
                cmp     cs:dword_140CFB010, 0
                mov     ebx, 1
                jnz     loc_14046D786

loc_140311832:                          ; CODE XREF: ObReferenceObjectByPointer+15BFBC↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_14046D7A1
                xor     eax, eax

loc_140311847:                          ; CODE XREF: ObReferenceObjectByPointer+82↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140311858:                          ; CODE XREF: ObReferenceObjectByPointer+15↑j
                test    r9b, r9b
                jmp     short loc_14031181E
; ---------------------------------------------------------------------------

loc_14031185D:                          ; CODE XREF: ObReferenceObjectByPointer:loc_14031181E↑j
                mov     eax, 0C0000024h
                jmp     short loc_140311847
ObReferenceObjectByPointer endp
