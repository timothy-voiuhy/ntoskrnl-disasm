RtlCreateAcl    proc near               ; CODE XREF: sub_140201C7C+E6↑p
                                        ; RtlCheckTokenMembershipEx+FF↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, edx
                mov     esi, r8d
                mov     rdi, rcx
                cmp     edx, 8
                jb      short loc_1406244F5
                lea     eax, [r8-2]
                cmp     eax, 2
                ja      short loc_1406244FC
                mov     ebp, 0FFFCh
                cmp     ebx, ebp
                ja      short loc_1406244FC
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                xor     eax, eax
                mov     [rdi], sil
                and     bx, bp
                mov     [rdi+1], al
                mov     [rdi+2], bx
                mov     [rdi+4], eax

loc_1406244DF:                          ; CODE XREF: RtlCreateAcl+6A↓j
                                        ; RtlCreateAcl+71↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406244F5:                          ; CODE XREF: RtlCreateAcl+1F↑j
                mov     eax, 0C0000023h
                jmp     short loc_1406244DF
; ---------------------------------------------------------------------------

loc_1406244FC:                          ; CODE XREF: RtlCreateAcl+28↑j
                                        ; RtlCreateAcl+31↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1406244DF
RtlCreateAcl    endp

; ---------------------------------------------------------------------------
algn_140624503:                         ; DATA XREF: .pdata:00000001400FDD58↑o
                align 10h
; Exported entry 1978. RtlAddAce

; =============== S U B R O U T I N E =======================================


