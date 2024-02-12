RtlImageNtHeaderEx proc near            ; CODE XREF: sub_140207088+56↑p
                                        ; RtlImageNtHeader+19↑p ...

; FUNCTION CHUNK AT 000000014043AF62 SIZE 0000000B BYTES

                test    r9, r9
                jz      loc_14043AF62
                xor     r10d, r10d
                mov     [r9], r10
                test    ecx, 0FFFFFFFEh
                jnz     loc_14043AF62
                lea     rax, [rdx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      loc_14043AF62
                test    cl, 1
                jz      short loc_140261E6C
                xor     al, al

loc_140261E20:                          ; CODE XREF: RtlImageNtHeaderEx+82↓j
                mov     ecx, 5A4Dh
                cmp     [rdx], cx
                jnz     short loc_140261E8C
                mov     ecx, [rdx+3Ch]
                test    al, al
                jnz     short loc_140261E76

loc_140261E31:                          ; CODE XREF: RtlImageNtHeaderEx+9A↓j
                lea     rax, [rdx+rcx]
                cmp     rax, rdx
                jb      short loc_140261E8C
                mov     r8, 7FFFFFFEFFFFh
                cmp     rdx, r8
                jb      short loc_140261E59

loc_140261E49:                          ; CODE XREF: RtlImageNtHeaderEx+78↓j
                cmp     dword ptr [rax], 4550h
                jnz     short loc_140261E8C
                mov     [r9], rax

loc_140261E54:                          ; CODE XREF: RtlImageNtHeaderEx+1D9178↓j
                mov     eax, r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140261E59:                          ; CODE XREF: RtlImageNtHeaderEx+57↑j
                cmp     rax, r8
                jnb     short loc_140261E8C
                lea     rcx, [rax+108h]
                cmp     rcx, r8
                jb      short loc_140261E49
                jmp     short loc_140261E8C
; ---------------------------------------------------------------------------

loc_140261E6C:                          ; CODE XREF: RtlImageNtHeaderEx+2C↑j
                mov     al, 1
                cmp     r8, 40h ; '@'
                jnb     short loc_140261E20
                jmp     short loc_140261E8C
; ---------------------------------------------------------------------------

loc_140261E76:                          ; CODE XREF: RtlImageNtHeaderEx+3F↑j
                mov     rax, rcx
                cmp     rcx, r8
                jnb     short loc_140261E8C
                cmp     ecx, 0FFFFFFE7h
                jnb     short loc_140261E8C
                add     rax, 18h
                cmp     rax, r8
                jb      short loc_140261E31

loc_140261E8C:                          ; CODE XREF: RtlImageNtHeaderEx+38↑j
                                        ; RtlImageNtHeaderEx+48↑j ...
                mov     r10d, 0C000007Bh
                mov     eax, r10d
                retn
RtlImageNtHeaderEx endp
