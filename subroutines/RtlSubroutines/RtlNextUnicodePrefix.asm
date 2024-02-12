RtlNextUnicodePrefix proc near          ; DATA XREF: .rdata:0000000140095A9C↑o
                                        ; .pdata:000000014010ABE0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140849F4A SIZE 0000002E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                mov     rdi, rcx
                test    dl, dl
                jnz     short loc_1407725E1
                mov     rbx, [rcx+10h]
                test    rbx, rbx
                jnz     short loc_140772615

loc_1407725E1:                          ; CODE XREF: RtlNextUnicodePrefix+16↑j
                mov     rax, [rcx+8]
                mov     ecx, 800h
                cmp     [rax], cx
                jz      short loc_14077264F
                mov     rcx, [rax+20h]
                add     rax, 18h

loc_1407725F7:                          ; CODE XREF: RtlNextUnicodePrefix+9A↓j
                test    rcx, rcx
                jnz     short loc_140772653

loc_1407725FC:                          ; CODE XREF: RtlNextUnicodePrefix+6F↓j
                                        ; RtlNextUnicodePrefix+D79B3↓j
                add     rax, 0FFFFFFFFFFFFFFE8h

loc_140772600:                          ; CODE XREF: RtlNextUnicodePrefix+61↓j
                mov     [rdi+10h], rax

loc_140772604:                          ; CODE XREF: RtlNextUnicodePrefix+91↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140772615:                          ; CODE XREF: RtlNextUnicodePrefix+1F↑j
                mov     rax, [rbx+10h]
                mov     ecx, 803h
                cmp     [rax], cx
                jz      short loc_140772600
                lea     rcx, [rax+18h]
                call    RtlRealSuccessor
                test    rax, rax
                jnz     short loc_1407725FC
                lea     rcx, [rbx+18h]
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jnz     loc_140849F4A

loc_140772641:                          ; CODE XREF: RtlNextUnicodePrefix+D7998↓j
                mov     rax, [rcx-10h]
                cmp     [rax+2], si
                jg      loc_140849F5D

loc_14077264F:                          ; CODE XREF: RtlNextUnicodePrefix+2D↑j
                xor     eax, eax
                jmp     short loc_140772604
; ---------------------------------------------------------------------------

loc_140772653:                          ; CODE XREF: RtlNextUnicodePrefix+3A↑j
                mov     rax, rcx
                mov     rcx, [rcx+8]
                jmp     short loc_1407725F7
RtlNextUnicodePrefix endp
