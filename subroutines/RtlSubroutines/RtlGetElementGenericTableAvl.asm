RtlGetElementGenericTableAvl proc near  ; DATA XREF: .pdata:00000001400F7E60↑o
                push    rbx
                sub     rsp, 20h
                mov     r8d, [rcx+28h]
                or      ebx, 0FFFFFFFFh
                mov     r9d, edx
                mov     r10, rcx
                cmp     edx, ebx
                jz      loc_14058C18E
                mov     edx, [rcx+2Ch]
                lea     eax, [r9+1]
                cmp     eax, edx
                ja      loc_14058C18E
                mov     rcx, [rcx+20h]
                test    rcx, rcx
                jnz     short loc_14058C0D4
                mov     rcx, [r10+10h]
                mov     rax, [rcx+8]
                jmp     short loc_14058C0C4
; ---------------------------------------------------------------------------

loc_14058C0BD:                          ; CODE XREF: RtlGetElementGenericTableAvl+47↓j
                mov     rcx, rax
                mov     rax, [rax+8]

loc_14058C0C4:                          ; CODE XREF: RtlGetElementGenericTableAvl+3B↑j
                test    rax, rax
                jnz     short loc_14058C0BD
                xor     r8d, r8d
                mov     [r10+20h], rcx
                and     [r10+28h], r8d

loc_14058C0D4:                          ; CODE XREF: RtlGetElementGenericTableAvl+31↑j
                cmp     r9d, r8d
                jnz     short loc_14058C0E2

loc_14058C0D9:                          ; CODE XREF: RtlGetElementGenericTableAvl+109↓j
                lea     rax, [rcx+20h]
                jmp     loc_14058C190
; ---------------------------------------------------------------------------

loc_14058C0E2:                          ; CODE XREF: RtlGetElementGenericTableAvl+57↑j
                jnb     short loc_14058C133
                mov     eax, r8d
                shr     eax, 1
                cmp     r9d, eax
                jb      short loc_14058C106
                sub     r8d, r9d
                jz      loc_14058C181

loc_14058C0F7:                          ; CODE XREF: RtlGetElementGenericTableAvl+82↓j
                call    sub_14035D4BC
                mov     rcx, rax
                add     r8d, ebx
                jnz     short loc_14058C0F7
                jmp     short loc_14058C181
; ---------------------------------------------------------------------------

loc_14058C106:                          ; CODE XREF: RtlGetElementGenericTableAvl+6C↑j
                mov     rcx, [r10+10h]
                mov     rax, [rcx+8]
                jmp     short loc_14058C117
; ---------------------------------------------------------------------------

loc_14058C110:                          ; CODE XREF: RtlGetElementGenericTableAvl+9A↓j
                mov     rcx, rax
                mov     rax, [rax+8]

loc_14058C117:                          ; CODE XREF: RtlGetElementGenericTableAvl+8E↑j
                test    rax, rax
                jnz     short loc_14058C110
                mov     r11d, r9d
                test    r9d, r9d
                jz      short loc_14058C181

loc_14058C124:                          ; CODE XREF: RtlGetElementGenericTableAvl+AF↓j
                call    sub_1403108D0
                mov     rcx, rax
                add     r11d, ebx
                jnz     short loc_14058C124
                jmp     short loc_14058C181
; ---------------------------------------------------------------------------

loc_14058C133:                          ; CODE XREF: RtlGetElementGenericTableAvl:loc_14058C0E2↑j
                sub     edx, r9d
                mov     r11d, r9d
                sub     r11d, r8d
                lea     r8d, [rdx-1]
                cmp     r11d, edx
                ja      short loc_14058C159
                test    r11d, r11d
                jz      short loc_14058C181

loc_14058C14A:                          ; CODE XREF: RtlGetElementGenericTableAvl+D5↓j
                call    sub_1403108D0
                mov     rcx, rax
                add     r11d, ebx
                jnz     short loc_14058C14A
                jmp     short loc_14058C181
; ---------------------------------------------------------------------------

loc_14058C159:                          ; CODE XREF: RtlGetElementGenericTableAvl+C3↑j
                mov     rcx, [r10+10h]
                mov     rax, [rcx+10h]
                jmp     short loc_14058C16A
; ---------------------------------------------------------------------------

loc_14058C163:                          ; CODE XREF: RtlGetElementGenericTableAvl+ED↓j
                mov     rcx, rax
                mov     rax, [rax+10h]

loc_14058C16A:                          ; CODE XREF: RtlGetElementGenericTableAvl+E1↑j
                test    rax, rax
                jnz     short loc_14058C163
                test    r8d, r8d
                jz      short loc_14058C181

loc_14058C174:                          ; CODE XREF: RtlGetElementGenericTableAvl+FF↓j
                call    sub_14035D4BC
                mov     rcx, rax
                add     r8d, ebx
                jnz     short loc_14058C174

loc_14058C181:                          ; CODE XREF: RtlGetElementGenericTableAvl+71↑j
                                        ; RtlGetElementGenericTableAvl+84↑j ...
                mov     [r10+20h], rcx
                mov     [r10+28h], r9d
                jmp     loc_14058C0D9
; ---------------------------------------------------------------------------

loc_14058C18E:                          ; CODE XREF: RtlGetElementGenericTableAvl+15↑j
                                        ; RtlGetElementGenericTableAvl+24↑j
                xor     eax, eax

loc_14058C190:                          ; CODE XREF: RtlGetElementGenericTableAvl+5D↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetElementGenericTableAvl endp
