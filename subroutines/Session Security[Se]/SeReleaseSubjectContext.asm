SeReleaseSubjectContext proc near       ; CODE XREF: sub_140218580+923↑p
                                        ; sub_140218580+10AF↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080767A SIZE 00000055 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:dword_140D2D010, 0
                mov     rbx, rcx
                jnz     loc_14080767A

loc_1406526AA:                          ; CODE XREF: SeReleaseSubjectContext+1B5015↓j
                                        ; SeReleaseSubjectContext+1B5033↓j ...
                mov     rax, gs:188h
                mov     rdx, [rbx+10h]
                mov     rcx, [rax+0B8h]
                add     rcx, 4B8h
                call    sub_14024C4A0
                mov     rcx, [rbx]
                xor     edi, edi
                mov     [rbx+10h], rdi
                test    rcx, rcx
                jnz     short loc_1406526E7

loc_1406526D8:                          ; CODE XREF: SeReleaseSubjectContext+5C↓j
                mov     [rbx], rdi
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406526E7:                          ; CODE XREF: SeReleaseSubjectContext+46↑j
                call    PsDereferenceSiloContext
                jmp     short loc_1406526D8
SeReleaseSubjectContext endp
