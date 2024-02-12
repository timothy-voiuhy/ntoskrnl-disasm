RtlInitUnicodeString proc near          ; CODE XREF: sub_140201574+6D↑p
                                        ; sub_1402F1EC4+19↓p ...

; FUNCTION CHUNK AT 000000014043511C SIZE 0000000A BYTES

                mov     qword ptr [rcx], 0
                mov     [rcx+8], rdx
                test    rdx, rdx
                jnz     short loc_14024C3C2
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14024C3C2:                          ; CODE XREF: RtlInitUnicodeString+E↑j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                nop     dword ptr [rax+00000000h]

loc_14024C3D0:                          ; CODE XREF: RtlInitUnicodeString+28↓j
                inc     rax
                cmp     word ptr [rdx+rax*2], 0
                jnz     short loc_14024C3D0
                add     rax, rax
                cmp     rax, 0FFFEh
                jnb     loc_14043511C

loc_14024C3E9:                          ; CODE XREF: RtlInitUnicodeString+1E8D71↓j
                mov     [rcx], ax
                add     ax, 2
                mov     [rcx+2], ax
                retn
RtlInitUnicodeString endp
