RtlSetBitsEx    proc near               ; CODE XREF: RtlFindClearBitsAndSetEx+F6↓p
                                        ; sub_1402D6AAC+120↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                test    r8, r8
                jz      short locret_140269A7D
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                lea     rbp, cs:140000000h
                and     edx, 7
                shr     rsi, 3
                add     rsi, [rcx+8]
                mov     rdi, r8
                lea     rax, [rdx+r8]
                cmp     rax, 8
                ja      short loc_140269A7F
                mov     al, [r8+rbp+1DAE0h]
                mov     ecx, edx
                shl     al, cl

loc_140269A67:                          ; CODE XREF: RtlSetBitsEx+A8↓j
                or      [rsi], al

loc_140269A69:                          ; CODE XREF: RtlSetBitsEx+9F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi

locret_140269A7D:                       ; CODE XREF: RtlSetBitsEx+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140269A7F:                          ; CODE XREF: RtlSetBitsEx+39↑j
                test    edx, edx
                jz      short loc_140269A99
                mov     al, [rdx+rbp+1A870h]
                or      [rsi], al
                mov     eax, 8
                sub     eax, edx
                inc     rsi
                sub     rdi, rax

loc_140269A99:                          ; CODE XREF: RtlSetBitsEx+61↑j
                cmp     rdi, 8
                jbe     short loc_140269ABC
                mov     rbx, rdi
                mov     edx, 0FFh
                shr     rbx, 3
                mov     rcx, rsi
                mov     r8, rbx
                call    memset
                add     rsi, rbx
                and     edi, 7

loc_140269ABC:                          ; CODE XREF: RtlSetBitsEx+7D↑j
                test    rdi, rdi
                jz      short loc_140269A69
                mov     al, [rdi+rbp+1DAE0h]
                jmp     short loc_140269A67
RtlSetBitsEx    endp

; ---------------------------------------------------------------------------
algn_140269ACA:                         ; DATA XREF: .pdata:00000001400CDF38↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140269AD0   proc near               ; CODE XREF: sub_1402EBD64+175E23↓p
                                        ; sub_140659560+796↓p
                                        ; DATA XREF: ...
                mov     r8d, [rcx+34h]
                mov     eax, [rcx+2Ch]
                and     r8d, 3FFFFFFFh
                sub     eax, r8d
                mov     r8d, eax
                cmp     rdx, r8
                jnb     short loc_140269AF3

loc_140269AE9:                          ; CODE XREF: sub_140269AD0+26↓j
                mov     rax, [rcx+8]
                lea     rax, [rax+rdx*8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140269AF3:                          ; CODE XREF: sub_140269AD0+17↑j
                lea     edx, [rax-1]
                jmp     short loc_140269AE9
sub_140269AD0   endp

; ---------------------------------------------------------------------------
algn_140269AF8:                         ; DATA XREF: .pdata:00000001400CDF44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140269B00   proc near               ; CODE XREF: sub_140267820+54↑p
                                        ; sub_140267820+98↑p ...

var_98          = byte ptr -98h
var_78          = word ptr -78h
var_74          = dword ptr -74h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043F9CC SIZE 00000140 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 0B0h
                mov     esi, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     r8d, 90h
                lea     rcx, [rsp+0B8h+var_98]
                call    memset
                mov     rax, 3FFFFFFFFFF000h
                cmp     rbx, rax
                jnb     loc_140269C3D
                cmp     esi, 1
                jnz     short loc_140269BC4
                mov     bpl, 11h

loc_140269B53:                          ; CODE XREF: sub_140269B00+D0↓j
                mov     rsi, [rdi+120h]
                shr     rbx, 0Ch
                movzx   edx, word ptr [rsi+20h]
                mov     eax, [rsi+24h]
                and     rdx, 0FFFFFFFFFFFFFFC0h
                mov     r8d, [rsi+28h]
                shl     rdx, 1Ah
                or      rdx, rax
                add     r8, rdx
                cmp     word ptr [rsi+22h], 10h
                lea     rcx, [r8-1]
                cmovb   r8, rcx
                mov     rcx, rbx
                shr     rcx, 20h
                cmp     rbx, rdx
                jb      short loc_140269BF3
                mov     rcx, rbx
                shr     rcx, 20h
                cmp     rbx, r8
                ja      short loc_140269BF3
                cmp     bpl, 11h
                jnz     short loc_140269BD2

loc_140269BA2:                          ; CODE XREF: sub_140269B00+F1↓j
                mov     rax, rsi

loc_140269BA5:                          ; CODE XREF: sub_140269B00+13F↓j
                                        ; sub_140269B00+1C3↓j
                lea     r11, [rsp+0B8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140269BC4:                          ; CODE XREF: sub_140269B00+4E↑j
                lea     rcx, [rdi+48h]
                call    ExAcquireSpinLockShared
                movzx   ebp, al
                jmp     short loc_140269B53
; ---------------------------------------------------------------------------

loc_140269BD2:                          ; CODE XREF: sub_140269B00+A0↑j
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F9CC

loc_140269BE9:                          ; CODE XREF: sub_140269B00+1D5ECE↓j
                                        ; sub_140269B00+1D5EDA↓j ...
                movzx   ecx, bpl
                mov     cr8, rcx
                jmp     short loc_140269BA2
; ---------------------------------------------------------------------------

loc_140269BF3:                          ; CODE XREF: sub_140269B00+8E↑j
                                        ; sub_140269B00+9A↑j
                movzx   eax, [rsp+0B8h+var_78]
                mov     r8, [rdi+110h]
                and     ax, 3Fh
                shl     cx, 6
                or      cx, ax
                mov     [rsp+0B8h+var_74], ebx
                mov     [rsp+0B8h+var_78], cx
                test    r8, r8
                jnz     short loc_140269C44

loc_140269C18:                          ; CODE XREF: sub_140269B00+1A1↓j
                                        ; sub_140269B00+1A9↓j
                cmp     bpl, 11h
                jz      short loc_140269C3D
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043FAA2

loc_140269C35:                          ; CODE XREF: sub_140269B00+1D5FA4↓j
                                        ; sub_140269B00+1D5FB0↓j ...
                movzx   eax, bpl
                mov     cr8, rax

loc_140269C3D:                          ; CODE XREF: sub_140269B00+45↑j
                                        ; sub_140269B00+11C↑j
                xor     eax, eax
                jmp     loc_140269BA5
; ---------------------------------------------------------------------------

loc_140269C44:                          ; CODE XREF: sub_140269B00+116↑j
                movzx   r10d, cx
                shl     r10, 1Ah
                xor     r10, rbx
                movzx   eax, cx
                mov     r10d, r10d
                shl     rax, 1Ah
                xor     r10, rax
                nop     dword ptr [rax+00h]

loc_140269C60:                          ; CODE XREF: sub_140269B00+19F↓j
                movzx   r9d, word ptr [r8-18h]
                mov     eax, [r8-14h]
                and     r9, 0FFFFFFFFFFFFFFC0h
                mov     edx, [r8-10h]
                shl     r9, 1Ah
                or      r9, rax
                add     rdx, r9
                cmp     word ptr [r8-16h], 10h
                lea     rcx, [rdx-1]
                cmovb   rdx, rcx
                cmp     r10, rdx
                ja      short loc_140269C98
                cmp     r10, r9
                jnb     short loc_140269CA6
                mov     r8, [r8]
                jmp     short loc_140269C9C
; ---------------------------------------------------------------------------

loc_140269C98:                          ; CODE XREF: sub_140269B00+18C↑j
                mov     r8, [r8+8]

loc_140269C9C:                          ; CODE XREF: sub_140269B00+196↑j
                test    r8, r8
                jnz     short loc_140269C60
                jmp     loc_140269C18
; ---------------------------------------------------------------------------

loc_140269CA6:                          ; CODE XREF: sub_140269B00+191↑j
                test    r8, r8
                jz      loc_140269C18
                lea     rbx, [r8-38h]
                mov     [rdi+120h], rbx
                cmp     bpl, 11h
                jnz     short loc_140269CC8

loc_140269CC0:                          ; CODE XREF: sub_140269B00+1E7↓j
                mov     rax, rbx
                jmp     loc_140269BA5
; ---------------------------------------------------------------------------

loc_140269CC8:                          ; CODE XREF: sub_140269B00+1BE↑j
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043FA37

loc_140269CDF:                          ; CODE XREF: sub_140269B00+1D5F39↓j
                                        ; sub_140269B00+1D5F45↓j ...
                movzx   ecx, bpl
                mov     cr8, rcx
                jmp     short loc_140269CC0
sub_140269B00   endp

; ---------------------------------------------------------------------------
algn_140269CE9:                         ; DATA XREF: .rdata:000000014005C588↑o
                                        ; .pdata:00000001400CDF50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140269CF0   proc near               ; CODE XREF: sub_14026B9D8+1E↓p
                                        ; sub_14065A620+1F↓p ...
                mov     eax, [rcx+38h]
                test    al, 20h
                jnz     short loc_140269D26
                bt      eax, 0Ah
                jb      short loc_140269D2D
                cmp     rcx, cs:qword_140C4CAA8
                jz      short loc_140269D2D
                cmp     qword ptr [rcx+40h], 0
                jnz     short loc_140269D2D
                xor     edx, edx
                lea     rax, unk_140C4CA40

loc_140269D16:                          ; CODE XREF: sub_140269CF0+34↓j
                cmp     rcx, [rax]
                jz      short loc_140269D2D
                inc     edx
                add     rax, 40h ; '@'
                cmp     edx, 1
                jb      short loc_140269D16

loc_140269D26:                          ; CODE XREF: sub_140269CF0+5↑j
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140269D2D:                          ; CODE XREF: sub_140269CF0+B↑j
                                        ; sub_140269CF0+14↑j ...
                xor     eax, eax
                retn
sub_140269CF0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140269D31:                         ; DATA XREF: .pdata:00000001400CDF5C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140269D38   proc near               ; CODE XREF: sub_1402FAE8C+9D↓p
                                        ; sub_1402FB078+37C↓p ...
                cmp     qword ptr [rcx+40h], 0
                jnz     short loc_140269D52
                mov     rax, [rcx+78h]
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140269D52:                          ; CODE XREF: sub_140269D38+5↑j
                mov     rax, [rcx]
                mov     rax, [rax+10h]
                retn
sub_140269D38   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140269D5B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDF68↑o

; =============== S U B R O U T I N E =======================================


sub_140269D64   proc near               ; CODE XREF: sub_1403658B4+275↓p
                                        ; sub_1403F6B04+57B↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043FB0C SIZE 00000038 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                test    byte ptr [rdx+22h], 8
                mov     rdi, rcx
                jz      short loc_140269D99
                xor     eax, eax

loc_140269D83:                          ; CODE XREF: sub_140269D64+D0↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140269D99:                          ; CODE XREF: sub_140269D64+1B↑j
                mov     [rcx+18h], rdx
                lea     rbp, unk_140C4E3F0
                mov     rsi, gs:188h
                xor     ebx, ebx
                mov     [rcx+38h], rsi
                mov     al, [rdx+22h]
                mov     [rdx+10h], rdi
                or      al, 8
                mov     [rdx+22h], al
                cmp     [rdi+47h], bl
                mov     [rcx+20h], rbx
                mov     [rcx+45h], bx
                lea     rcx, unk_140C4E3E0
                cmovnz  rbp, rcx
                mov     rcx, rbp
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                cmp     [rdi+47h], bl
                jnz     loc_14043FB0C
                mov     rdx, cs:qword_140C4E3F8
                test    rdx, rdx
                jz      short loc_140269E11

loc_140269DF2:                          ; CODE XREF: sub_140269D64+9F↓j
                cmp     rdi, rdx
                jb      short loc_140269E05
                mov     rax, [rdx+8]
                test    rax, rax
                jz      short loc_140269E0F

loc_140269E00:                          ; CODE XREF: sub_140269D64+A7↓j
                mov     rdx, rax
                jmp     short loc_140269DF2
; ---------------------------------------------------------------------------

loc_140269E05:                          ; CODE XREF: sub_140269D64+91↑j
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_140269E00
                jmp     short loc_140269E11
; ---------------------------------------------------------------------------

loc_140269E0F:                          ; CODE XREF: sub_140269D64+9A↑j
                mov     bl, 1

loc_140269E11:                          ; CODE XREF: sub_140269D64+8C↑j
                                        ; sub_140269D64+A9↑j
                lea     rcx, qword_140C4E3F8

loc_140269E18:                          ; CODE XREF: sub_140269D64+1D5DC9↓j
                mov     r9, rdi
                mov     r8b, bl
                call    RtlAvlInsertNodeEx
                mov     rcx, rbp
                mov     byte ptr [rdi+44h], 1
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, 1
                jmp     loc_140269D83
sub_140269D64   endp

; ---------------------------------------------------------------------------
algn_140269E39:                         ; DATA XREF: .rdata:000000014005C768↑o
                                        ; .pdata:00000001400CDF74↑o
                align 20h
; Exported entry 175. ExAcquireSpinLockExclusiveAtDpcLevel

; =============== S U B R O U T I N E =======================================


