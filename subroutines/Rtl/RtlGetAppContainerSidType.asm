RtlGetAppContainerSidType proc near     ; CODE XREF: sub_140679848+22↑p
                                        ; sub_140679848+3A↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080F638 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     byte ptr [rcx+1], 2
                mov     rbx, rdx
                mov     rdi, rcx
                jb      short loc_140679951
                cmp     byte ptr [rcx], 1
                jnz     short loc_140679951
                add     rcx, 2
                lea     rdx, qword_14000AA08
                mov     r8d, 6
                call    RtlCompareMemory
                cmp     rax, 6
                jnz     short loc_140679951
                cmp     dword ptr [rdi+8], 2
                jnz     short loc_140679951
                mov     rcx, rdi
                call    RtlSubAuthorityCountSid
                mov     cl, [rax]
                cmp     cl, 8
                jz      short loc_140679949
                cmp     cl, 0Ch
                jnz     loc_14080F638
                mov     dword ptr [rbx], 1

loc_14067993B:                          ; CODE XREF: RtlGetAppContainerSidType+6F↓j
                xor     eax, eax

loc_14067993D:                          ; CODE XREF: RtlGetAppContainerSidType+195D63↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140679949:                          ; CODE XREF: RtlGetAppContainerSidType+4A↑j
                mov     dword ptr [rbx], 2
                jmp     short loc_14067993B
; ---------------------------------------------------------------------------

loc_140679951:                          ; CODE XREF: RtlGetAppContainerSidType+14↑j
                                        ; RtlGetAppContainerSidType+19↑j ...
                and     dword ptr [rbx], 0
                jmp     loc_14080F63E
RtlGetAppContainerSidType endp
