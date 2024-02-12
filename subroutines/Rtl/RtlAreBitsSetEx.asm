RtlAreBitsSetEx proc near               ; CODE XREF: sub_1408CAE80+4C↓p
                                        ; DATA XREF: .pdata:00000001400F7BE4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rax, [rcx]
                mov     r9, rdx
                cmp     rdx, rax
                jb      short loc_140587077

loc_140587070:                          ; CODE XREF: RtlAreBitsSetEx+1D↓j
                                        ; RtlAreBitsSetEx+35↓j ...
                xor     al, al
                jmp     loc_14058711C
; ---------------------------------------------------------------------------

loc_140587077:                          ; CODE XREF: RtlAreBitsSetEx+E↑j
                cmp     r8, 1
                ja      short loc_14058708F
                jnz     short loc_140587070
                mov     rax, [rcx+8]
                bt      [rax], r9
                setb    al
                jmp     loc_14058711C
; ---------------------------------------------------------------------------

loc_14058708F:                          ; CODE XREF: RtlAreBitsSetEx+1B↑j
                sub     rax, r9
                cmp     rax, r8
                jb      short loc_140587070
                mov     rcx, [rcx+8]
                lea     rbx, [r8-1]
                add     rbx, r9
                mov     rax, r9
                shr     rax, 6
                lea     rdx, [rcx+rax*8]
                mov     rax, rbx
                mov     r10, [rdx]
                shr     rax, 6
                lea     r11, [rcx+rax*8]
                cmp     rdx, r11
                jnz     short loc_1405870DD
                mov     ecx, 40h ; '@'
                sub     cl, r8b
                or      r8, 0FFFFFFFFFFFFFFFFh
                shr     r8, cl
                mov     rcx, r9
                shl     r8, cl
                and     r10, r8
                cmp     r10, r8
                jmp     short loc_140587119
; ---------------------------------------------------------------------------

loc_1405870DD:                          ; CODE XREF: RtlAreBitsSetEx+5E↑j
                or      r8, 0FFFFFFFFFFFFFFFFh
                mov     rcx, r9
                mov     rax, r8
                shl     rax, cl
                and     r10, rax
                cmp     r10, rax
                jz      short loc_140587100
                jmp     loc_140587070
; ---------------------------------------------------------------------------

loc_1405870F7:                          ; CODE XREF: RtlAreBitsSetEx+A7↓j
                cmp     [rdx], r8
                jnz     loc_140587070

loc_140587100:                          ; CODE XREF: RtlAreBitsSetEx+90↑j
                add     rdx, 8
                cmp     rdx, r11
                jnz     short loc_1405870F7
                mov     rax, [rdx]
                mov     cl, bl
                not     cl
                shr     r8, cl
                and     rax, r8
                cmp     rax, r8

loc_140587119:                          ; CODE XREF: RtlAreBitsSetEx+7B↑j
                setz    al

loc_14058711C:                          ; CODE XREF: RtlAreBitsSetEx+12↑j
                                        ; RtlAreBitsSetEx+2A↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAreBitsSetEx endp
