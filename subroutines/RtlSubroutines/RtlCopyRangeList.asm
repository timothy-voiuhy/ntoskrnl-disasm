RtlCopyRangeList proc near              ; CODE XREF: sub_14075F990+33↑p
                                        ; ArbBootAllocation+78↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408422E6 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rcx+14h], 0
                mov     rdi, rdx
                mov     rbx, rcx
                jnz     short loc_14075FCF2
                mov     eax, [rdx+10h]
                mov     [rcx+10h], eax
                mov     eax, [rdx+14h]
                mov     [rcx+14h], eax
                mov     eax, [rdx+18h]
                mov     [rcx+18h], eax
                mov     rax, [rdx]

loc_14075FCA0:                          ; CODE XREF: RtlCopyRangeList+6D↓j
                lea     rsi, [rax-28h]
                cmp     rdi, rax
                jz      short loc_14075FCDF
                mov     rcx, rsi
                call    sub_14075FD00
                test    rax, rax
                jz      loc_1408422ED
                mov     rcx, [rbx+8]
                add     rax, 28h ; '('
                cmp     [rcx], rbx
                jnz     FatalListEntryError_102
                mov     [rax], rbx
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [rbx+8], rax
                mov     rax, [rsi+28h]
                jmp     short loc_14075FCA0
; ---------------------------------------------------------------------------

loc_14075FCDF:                          ; CODE XREF: RtlCopyRangeList+37↑j
                xor     eax, eax

loc_14075FCE1:                          ; CODE XREF: RtlCopyRangeList+87↓j
                                        ; RtlCopyRangeList+E268A↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14075FCF2:                          ; CODE XREF: RtlCopyRangeList+19↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14075FCE1
RtlCopyRangeList endp
