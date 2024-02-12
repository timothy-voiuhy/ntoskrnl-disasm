RtlAreBitsSet   proc near               ; CODE XREF: sub_14075BEC8+EC↓p
                                        ; DATA XREF: .pdata:00000001400D731C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     eax, [rcx]
                mov     r9d, edx
                cmp     edx, eax
                jnb     loc_14034130E
                cmp     r8d, 1
                jbe     short loc_1403412DD
                sub     eax, r9d
                cmp     eax, r8d
                jb      short loc_14034130E
                mov     rcx, [rcx+8]
                lea     ebx, [r8-1]
                add     ebx, r9d
                mov     eax, r9d
                shr     rax, 5
                lea     rdx, [rcx+rax*4]
                mov     eax, ebx
                mov     r10d, [rdx]
                shr     rax, 5
                lea     r11, [rcx+rax*4]
                cmp     rdx, r11
                jnz     short loc_1403412EC
                mov     ecx, 20h ; ' '
                sub     ecx, r8d
                or      r8d, 0FFFFFFFFh
                shr     r8d, cl
                mov     ecx, r9d
                shl     r8d, cl
                and     r10d, r8d
                cmp     r10d, r8d

loc_1403412D3:                          ; CODE XREF: RtlAreBitsSet+B1↓j
                setz    al

loc_1403412D6:                          ; CODE XREF: RtlAreBitsSet+7A↓j
                                        ; RtlAreBitsSet+A0↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403412DD:                          ; CODE XREF: RtlAreBitsSet+16↑j
                jnz     short loc_14034130E
                mov     rax, [rcx+8]
                bt      [rax], r9d
                setb    al
                jmp     short loc_1403412D6
; ---------------------------------------------------------------------------

loc_1403412EC:                          ; CODE XREF: RtlAreBitsSet+46↑j
                or      r8d, 0FFFFFFFFh
                mov     ecx, r9d
                mov     eax, r8d
                shl     eax, cl
                and     r10d, eax
                cmp     r10d, eax
                jnz     short loc_14034130E

loc_140341300:                          ; CODE XREF: RtlAreBitsSet+9C↓j
                add     rdx, 4
                cmp     rdx, r11
                jz      short loc_140341312
                cmp     [rdx], r8d
                jz      short loc_140341300

loc_14034130E:                          ; CODE XREF: RtlAreBitsSet+C↑j
                                        ; RtlAreBitsSet+1E↑j ...
                xor     al, al
                jmp     short loc_1403412D6
; ---------------------------------------------------------------------------

loc_140341312:                          ; CODE XREF: RtlAreBitsSet+97↑j
                mov     eax, [rdx]
                not     ebx
                mov     cl, bl
                shr     r8d, cl
                and     eax, r8d
                cmp     eax, r8d
                jmp     short loc_1403412D3
RtlAreBitsSet   endp

; ---------------------------------------------------------------------------
byte_140341323  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D731C↑o

; =============== S U B R O U T I N E =======================================


sub_14034132C   proc near               ; CODE XREF: sub_14023D8E0+1B2↑p
                                        ; sub_140613E40+80↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047D5B6 SIZE 0000003D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C19184
                mov     rbx, rcx
                test    eax, eax
                jnz     loc_14047D5B6

loc_14034134C:                          ; CODE XREF: sub_14034132C+13C29F↓j
                movzx   edi, byte ptr [rbx-0Dh]
                test    dil, 8
                jz      short loc_140341399
                lea     rcx, [rbx-10h]
                call    sub_1403413E8
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140341399
                movzx   ecx, word ptr [rbx-0Eh]
                movzx   r8d, cl
                test    dil, 4
                jnz     loc_14047D5D0

loc_140341379:                          ; CODE XREF: sub_14034132C+13C2C2↓j
                and     byte ptr [rbx-0Dh], 0F7h
                and     edi, 1
                mov     edx, edi
                shl     r8, 4
                mov     rcx, rsi
                call    PsReturnPoolQuota
                mov     edx, [rbx-0Ch]
                mov     rcx, rsi
                call    ObDereferenceObjectDeferDeleteWithTag

loc_140341399:                          ; CODE XREF: sub_14034132C+28↑j
                                        ; sub_14034132C+39↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14034132C   endp

algn_1403413AA:                         ; DATA XREF: .rdata:0000000140080674↑o
                                        ; .pdata:00000001400D7328↑o
                align 10h
; Exported entry 1931. PsReturnPoolQuota

; =============== S U B R O U T I N E =======================================


