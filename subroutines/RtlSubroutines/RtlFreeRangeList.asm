RtlFreeRangeList proc near              ; CODE XREF: sub_14075F990+153↑p
                                        ; sub_14075FE10+D↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rbx, rcx
                and     dword ptr [rcx+10h], 0
                and     dword ptr [rcx+14h], 0
                mov     rdi, [rax]
                lea     rcx, [rax-28h]
                sub     rdi, 28h ; '('
                cmp     rbx, rax
                jz      short loc_14076005E
                lea     rax, [rcx+28h]

loc_14076002C:                          ; CODE XREF: RtlFreeRangeList+5C↓j
                mov     r8, [rax]
                cmp     [r8+8], rax
                jnz     short loc_14076006A
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     short loc_14076006A
                mov     [rdx], r8
                mov     [r8+8], rdx
                call    sub_140760078
                mov     rcx, rdi
                mov     rdi, [rdi+28h]
                sub     rdi, 28h ; '('
                lea     rax, [rcx+28h]
                cmp     rbx, rax
                jnz     short loc_14076002C

loc_14076005E:                          ; CODE XREF: RtlFreeRangeList+26↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076006A:                          ; CODE XREF: RtlFreeRangeList+33↑j
                                        ; RtlFreeRangeList+3C↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlFreeRangeList endp
