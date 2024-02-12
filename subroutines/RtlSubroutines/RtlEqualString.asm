RtlEqualString  proc near               ; CODE XREF: sub_1403C0370+9C↓p
                                        ; sub_140A60804+1A6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   eax, word ptr [rcx]
                cmp     ax, [rdx]
                jnz     short loc_14021D647
                mov     rdi, [rcx+8]
                mov     rsi, [rdx+8]
                lea     rbp, [rdi+rax]
                cmp     rdi, rbp
                jnb     short loc_14021D629
                test    r8b, r8b
                jnz     short loc_14021D64B
                sub     rsi, rdi

loc_14021D61A:                          ; CODE XREF: RtlEqualString+47↓j
                mov     cl, [rsi+rdi]
                cmp     [rdi], cl
                jnz     short loc_14021D647
                inc     rdi
                cmp     rdi, rbp
                jb      short loc_14021D61A

loc_14021D629:                          ; CODE XREF: RtlEqualString+30↑j
                                        ; RtlEqualString+93↓j
                mov     al, 1

loc_14021D62B:                          ; CODE XREF: RtlEqualString+69↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021D647:                          ; CODE XREF: RtlEqualString+1F↑j
                                        ; RtlEqualString+3F↑j ...
                xor     al, al
                jmp     short loc_14021D62B
; ---------------------------------------------------------------------------

loc_14021D64B:                          ; CODE XREF: RtlEqualString+35↑j
                                        ; RtlEqualString+91↓j
                mov     cl, [rdi]
                mov     r14b, [rsi]
                cmp     cl, r14b
                jz      short loc_14021D668
                call    RtlUpperChar
                mov     cl, r14b
                mov     bl, al
                call    RtlUpperChar
                cmp     bl, al
                jnz     short loc_14021D647

loc_14021D668:                          ; CODE XREF: RtlEqualString+73↑j
                inc     rdi
                inc     rsi
                cmp     rdi, rbp
                jb      short loc_14021D64B
                jmp     short loc_14021D629
RtlEqualString  endp

; ---------------------------------------------------------------------------
algn_14021D675:                         ; DATA XREF: .pdata:00000001400CA878↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021D680   proc near               ; CODE XREF: sub_14062F0F0+26E↓p
                                        ; sub_14062F0F0+88F↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404283DC SIZE 00000019 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rdx
                mov     r14d, edi
                mov     r10d, edi
                mov     r11d, edi
                mov     rsi, rcx
                call    sub_14021D7A0
                test    eax, eax
                js      loc_14021D776
                test    rcx, rcx
                jz      short loc_14021D6CB
                movzx   r10d, word ptr [rcx+2]
                movzx   r11d, word ptr [rcx]
                mov     r14, [rcx+8]
                shr     r10, 1
                shr     r11, 1

loc_14021D6CB:                          ; CODE XREF: sub_14021D680+36↑j
                test    eax, eax
                js      loc_14021D776
                movzx   ecx, word ptr [rbx]
                mov     rax, rdi

loc_14021D6D9:                          ; DATA XREF: .rdata:0000000140050A84↑o
                                        ; .rdata:0000000140050A98↑o ...
                mov     [rsp+28h+arg_0], rbp
                mov     rdx, rdi
                mov     ebp, edi
                test    cl, 1
                jnz     loc_1404283EB
                movzx   r8d, word ptr [rbx+2]
                test    r8b, 1
                jnz     loc_1404283EB
                cmp     cx, r8w
                ja      loc_1404283EB
                mov     r9d, 0FFFEh
                cmp     r8w, r9w
                ja      loc_1404283EB
                mov     r9, [rbx+8]
                test    r9, r9
                jz      loc_1404283DC

loc_14021D722:                          ; CODE XREF: sub_14021D680+20AD65↓j
                mov     rdx, rcx
                mov     rax, r9
                shr     rdx, 1

loc_14021D72B:                          ; CODE XREF: sub_14021D680+20AD70↓j
                test    ebp, ebp
                js      short loc_14021D794
                mov     r8, rdi
                sub     r10, r11
                jz      short loc_14021D75E
                lea     r9, [r11+r11]
                sub     r9, rax
                add     r9, r14

loc_14021D741:                          ; CODE XREF: sub_14021D680+DC↓j
                test    rdx, rdx
                jz      short loc_14021D763
                movzx   ecx, word ptr [rax]
                dec     rdx
                mov     [r9+rax], cx
                inc     r8
                add     rax, 2
                sub     r10, 1
                jnz     short loc_14021D741

loc_14021D75E:                          ; CODE XREF: sub_14021D680+B5↑j
                test    rdx, rdx
                jnz     short loc_14021D78D

loc_14021D763:                          ; CODE XREF: sub_14021D680+C4↑j
                                        ; sub_14021D680+112↓j
                add     r11w, r8w
                mov     eax, edi
                add     r11w, r11w
                mov     [rsi], r11w

loc_14021D771:                          ; CODE XREF: sub_14021D680+116↓j
                mov     rbp, [rsp+28h+arg_0]

loc_14021D776:                          ; CODE XREF: sub_14021D680+2D↑j
                                        ; sub_14021D680+4D↑j
                                        ; DATA XREF: ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021D78D:                          ; CODE XREF: sub_14021D680+E1↑j
                                        ; DATA XREF: .pdata:00000001400CA89C↑o ...
                mov     edi, 80000005h
                jmp     short loc_14021D763
; ---------------------------------------------------------------------------

loc_14021D794:                          ; CODE XREF: sub_14021D680+AD↑j
                mov     eax, ebp
                jmp     short loc_14021D771
sub_14021D680   endp

; ---------------------------------------------------------------------------
algn_14021D798:                         ; DATA XREF: .pdata:00000001400CA8A8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021D7A0   proc near               ; CODE XREF: sub_14021D680+26↑p
                                        ; DATA XREF: .pdata:00000001400CA8B4↑o

; FUNCTION CHUNK AT 00000001404283F6 SIZE 00000018 BYTES

                movzx   r8d, word ptr [rcx]
                test    r8b, 1
                jnz     short loc_14021D7D4
                movzx   edx, word ptr [rcx+2]
                test    dl, 1
                jnz     short loc_14021D7D4
                cmp     r8w, dx
                ja      short loc_14021D7D4
                mov     r9d, 0FFFEh
                cmp     dx, r9w
                ja      short loc_14021D7D4
                cmp     qword ptr [rcx+8], 0
                jz      loc_1404283F6

loc_14021D7D0:                          ; CODE XREF: sub_14021D7A0+20AC69↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021D7D4:                          ; CODE XREF: sub_14021D7A0+8↑j
                                        ; sub_14021D7A0+11↑j ...
                mov     eax, 0C000000Dh
                retn
sub_14021D7A0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14021D7DB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA8B4↑o

; =============== S U B R O U T I N E =======================================


sub_14021D7F0   proc near               ; CODE XREF: sub_14035E5F0+67↓p
                                        ; sub_14057FEB0+52↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                xor     edi, edi
                mov     rbp, rdx
                mov     esi, edi
                mov     ebx, edi
                mov     r14, rcx
                call    sub_14021D8BC
                test    eax, eax
                js      short loc_14021D892
                test    rcx, rcx
                jz      short loc_14021D82F
                movzx   ebx, word ptr [rcx+2]
                mov     rsi, [rcx+8]
                shr     rbx, 1

loc_14021D82F:                          ; CODE XREF: sub_14021D7F0+32↑j
                test    eax, eax
                js      short loc_14021D892
                mov     rcx, rbp
                mov     r10, rdi
                mov     r11, rdi
                call    sub_14021D8BC
                mov     ecx, eax
                test    eax, eax
                js      short loc_14021D889
                test    rbp, rbp
                jz      short loc_14021D858
                movzx   r11d, word ptr [rbp+0]
                mov     r10, [rbp+8]
                shr     r11, 1

loc_14021D858:                          ; CODE XREF: sub_14021D7F0+5A↑j
                test    eax, eax
                js      short loc_14021D889
                mov     ecx, edi
                test    rbx, rbx
                jz      short loc_14021D884
                sub     rsi, r10

loc_14021D866:                          ; CODE XREF: sub_14021D7F0+92↓j
                test    r11, r11
                jz      short loc_14021D889
                movzx   eax, word ptr [r10]
                dec     r11
                mov     [rsi+r10], ax
                inc     rdi
                add     r10, 2
                sub     rbx, 1
                jnz     short loc_14021D866

loc_14021D884:                          ; CODE XREF: sub_14021D7F0+71↑j
                test    r11, r11
                jnz     short loc_14021D8AE

loc_14021D889:                          ; CODE XREF: sub_14021D7F0+55↑j
                                        ; sub_14021D7F0+6A↑j ...
                add     di, di
                mov     eax, ecx
                mov     [r14], di

loc_14021D892:                          ; CODE XREF: sub_14021D7F0+2D↑j
                                        ; sub_14021D7F0+41↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021D8AE:                          ; CODE XREF: sub_14021D7F0+97↑j
                mov     ecx, 80000005h
                jmp     short loc_14021D889
sub_14021D7F0   endp

; ---------------------------------------------------------------------------
byte_14021D8B5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA8C0↑o

; =============== S U B R O U T I N E =======================================


sub_14021D8BC   proc near               ; CODE XREF: sub_14021D7F0+26↑p
                                        ; sub_14021D7F0+4C↑p ...

; FUNCTION CHUNK AT 000000014042840E SIZE 00000018 BYTES

                movzx   r8d, word ptr [rcx]
                xor     eax, eax
                test    r8b, 1
                jnz     short loc_14021D8EF
                movzx   edx, word ptr [rcx+2]
                test    dl, 1
                jnz     short loc_14021D8EF
                cmp     r8w, dx
                ja      short loc_14021D8EF
                mov     r9d, 0FFFEh
                cmp     dx, r9w
                ja      short loc_14021D8EF
                cmp     [rcx+8], rax
                jz      loc_14042840E

locret_14021D8ED:                       ; CODE XREF: sub_14021D8BC+20AB5F↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021D8EF:                          ; CODE XREF: sub_14021D8BC+A↑j
                                        ; sub_14021D8BC+13↑j ...
                mov     eax, 0C000000Dh
                retn
sub_14021D8BC   endp

; ---------------------------------------------------------------------------
                align 2
byte_14021D8F6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA8CC↑o

; =============== S U B R O U T I N E =======================================


sub_14021D8FC   proc near               ; CODE XREF: sub_14064D600+263↓p
                                        ; DATA XREF: .pdata:00000001400CA8D8↑o
                mov     rax, [rcx+128h]
                mov     rcx, rax
                and     ecx, 1
                jnz     short loc_14021D914

loc_14021D90B:                          ; CODE XREF: sub_14021D8FC+1C↓j
                test    rdx, rdx
                jz      short locret_14021D912
                mov     [rdx], cl

locret_14021D912:                       ; CODE XREF: sub_14021D8FC+12↑j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021D914:                          ; CODE XREF: sub_14021D8FC+D↑j
                and     rax, 0FFFFFFFFFFFFFFFEh
                jmp     short loc_14021D90B
sub_14021D8FC   endp

; ---------------------------------------------------------------------------
algn_14021D91A:                         ; DATA XREF: .pdata:00000001400CA8D8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021D920   proc near               ; CODE XREF: FsRtlIsNameInExpression+27↑p
                                        ; FsRtlIsNameInUnUpcasedExpression+35↑p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140418682 SIZE 0000002D BYTES
; FUNCTION CHUNK AT 0000000140428426 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_0], rcx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rdx
                mov     rdi, rcx
                movzx   eax, word ptr [rdx]
                mov     [rcx+2], ax
                mov     edx, eax
                mov     ecx, 200h
                mov     r8d, 67727453h
                call    ExAllocatePoolWithTag
                mov     [rdi+8], rax
                xor     r10d, r10d
                test    rax, rax
                jz      loc_140428426
                movzx   r11d, word ptr [rbx]
                shr     r11d, 1

loc_14021D965:                          ; CODE XREF: sub_14021D920+6C↓j
                                        ; DATA XREF: .rdata:0000000140050B60↑o
;   __try { // __finally(loc_140418682)
                mov     [rsp+38h+var_18], r10d
                cmp     r10d, r11d
                jnb     short loc_14021D98E
                mov     r9d, r10d
                mov     rax, [rbx+8]
                movzx   ecx, word ptr [rax+r9*2]
                call    sub_14021DA60
                mov     rcx, [rdi+8]
                mov     [rcx+r9*2], ax
                inc     r10d
                jmp     short loc_14021D965
;   } // starts at 14021D965
; ---------------------------------------------------------------------------

loc_14021D98E:                          ; CODE XREF: sub_14021D920+4D↑j
                                        ; DATA XREF: .rdata:0000000140050B60↑o
                movzx   eax, word ptr [rbx]
                mov     [rdi], ax
                xor     eax, eax

loc_14021D996:                          ; CODE XREF: sub_14021D920+20AB0B↓j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14021D920
sub_14021D920   endp

algn_14021D9A2:                         ; DATA XREF: .rdata:0000000140050B74↑o
                                        ; .pdata:00000001400CA8E4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021D9B0   proc near               ; CODE XREF: RtlUpcaseUnicodeToMultiByteN+6D↓p
                                        ; RtlUpcaseUnicodeToOemN+6C↓p
                                        ; DATA XREF: ...

var_8           = qword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 28h
                mov     r11d, [rsp+28h+arg_20]
                mov     r10d, edx
                cmp     r11d, edx

loc_14021D9BF:                          ; DATA XREF: .rdata:0000000140050D30↑o
                                        ; .rdata:0000000140050D4C↑o ...
                mov     [rsp+28h+arg_8], rsi
                mov     eax, r11d
                mov     [rsp+28h+arg_18], r14
                cmovnb  eax, edx
                mov     rsi, r9
                mov     r14, rcx
                test    r8, r8
                jz      short loc_14021D9DD
                mov     [r8], eax

loc_14021D9DD:                          ; CODE XREF: sub_14021D9B0+28↑j
                test    eax, eax
                jz      short loc_14021DA37

loc_14021D9E1:                          ; DATA XREF: .rdata:0000000140050D4C↑o
                                        ; .rdata:0000000140050D5C↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     [rsp+28h+arg_10], rdi
                mov     rdi, [rsp+28h+arg_28]
                mov     [rsp+28h+var_8], r15
                mov     r15, [rsp+28h+arg_30]
                mov     ebx, eax

loc_14021D9FC:                          ; CODE XREF: sub_14021D9B0+76↓j
                movzx   eax, word ptr [rsi]
                movzx   ecx, byte ptr [rax+rdi]
                movzx   ecx, word ptr [r15+rcx*2]
                call    sub_14021DA60
                movzx   r9d, ax
                lea     r14, [r14+1]
                lea     rsi, [rsi+2]
                movzx   eax, byte ptr [r9+rdi]
                mov     [r14-1], al
                sub     rbx, 1
                jnz     short loc_14021D9FC
                mov     r15, [rsp+28h+var_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     rbx, [rsp+28h+arg_0]

loc_14021DA37:                          ; CODE XREF: sub_14021D9B0+2F↑j
                                        ; DATA XREF: .pdata:00000001400CA908↑o ...
                mov     r14, [rsp+28h+arg_18]
                mov     rsi, [rsp+28h+arg_8]
                cmp     r11d, r10d
                ja      short loc_14021DA4E

loc_14021DA46:                          ; DATA XREF: .pdata:00000001400CA914↑o
                                        ; .pdata:00000001400CA920↑o
                xor     eax, eax

loc_14021DA48:                          ; CODE XREF: sub_14021D9B0+A3↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021DA4E:                          ; CODE XREF: sub_14021D9B0+94↑j
                mov     eax, 80000005h
                jmp     short loc_14021DA48
sub_14021D9B0   endp

; ---------------------------------------------------------------------------
algn_14021DA55:                         ; DATA XREF: .pdata:00000001400CA920↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021DA60   proc near               ; CODE XREF: sub_14021D920+5B↑p
                                        ; sub_14021D9B0+58↑p ...
                cmp     cx, 61h ; 'a'
                jb      short loc_14021DA82
                cmp     cx, 7Ah ; 'z'
                jbe     short loc_14021DA87
                mov     r8, cs:qword_140D2D020
                test    r8, r8
                jz      short loc_14021DA82
                mov     eax, 0C0h
                cmp     cx, ax
                jnb     short loc_14021DA8C

loc_14021DA82:                          ; CODE XREF: sub_14021DA60+4↑j
                                        ; sub_14021DA60+16↑j
                movzx   eax, cx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021DA87:                          ; CODE XREF: sub_14021DA60+A↑j
                lea     eax, [rcx-20h]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021DA8C:                          ; CODE XREF: sub_14021DA60+20↑j
                movzx   edx, cx
                movzx   eax, cx
                shr     rax, 8
                movzx   ecx, word ptr [r8+rax*2]
                mov     eax, edx
                shr     eax, 4
                and     eax, 0Fh
                add     ecx, eax
                mov     eax, edx
                and     eax, 0Fh
                movzx   ecx, word ptr [r8+rcx*2]
                add     ecx, eax
                movzx   eax, word ptr [r8+rcx*2]
                add     ax, dx
                retn
sub_14021DA60   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14021DABB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA92C↑o
; Exported entry 160. ExAcquireFastMutexUnsafe

; =============== S U B R O U T I N E =======================================


                public ExAcquireFastMutexUnsafe
ExAcquireFastMutexUnsafe proc near      ; CODE XREF: sub_14021A330+9D↑p
                                        ; FsRtlCheckOplockEx2+B44↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 0000000140428430 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rbp, gs:188h
                xor     edi, edi
                mov     [rsp+48h+arg_10], edi
                mov     rsi, rcx
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_14021DBE7
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+48h+arg_8], edi
                test    al, al
                jz      loc_14021DC19

loc_14021DB24:                          ; CODE XREF: ExAcquireFastMutexUnsafe+17E↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+48h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_14021DC32
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_14021DB7D
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_140428441

loc_14021DB7D:                          ; CODE XREF: ExAcquireFastMutexUnsafe+89↑j
                mov     eax, 0FFFFFFFFh

loc_14021DB82:                          ; CODE XREF: ExAcquireFastMutexUnsafe+20A97E↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_14021DB99:                          ; CODE XREF: ExAcquireFastMutexUnsafe+168↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_14021DBC5
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_14021DC05

loc_14021DBC5:                          ; CODE XREF: ExAcquireFastMutexUnsafe+E7↑j
                                        ; ExAcquireFastMutexUnsafe+13A↓j
                lock btr dword ptr [rsi], 0
                jnb     short loc_14021DC0C

loc_14021DBCC:                          ; CODE XREF: ExAcquireFastMutexUnsafe+147↓j
                test    rdi, rdi
                jz      short loc_14021DBD5
                or      byte ptr [rdi+1Ah], 1

loc_14021DBD5:                          ; CODE XREF: ExAcquireFastMutexUnsafe+FF↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     [rsi+8], rbp
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021DBE7:                          ; CODE XREF: ExAcquireFastMutexUnsafe+3B↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+48h+var_28], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14021DC05:                          ; CODE XREF: ExAcquireFastMutexUnsafe+F3↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14021DBC5
; ---------------------------------------------------------------------------

loc_14021DC0C:                          ; CODE XREF: ExAcquireFastMutexUnsafe+FA↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F5E40
                jmp     short loc_14021DBCC
; ---------------------------------------------------------------------------

loc_14021DC19:                          ; CODE XREF: ExAcquireFastMutexUnsafe+4E↑j
                cmp     [rbx+366h], dil
                jnz     short loc_14021DC3D
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_140428430

loc_14021DC32:                          ; CODE XREF: ExAcquireFastMutexUnsafe+76↑j
                                        ; ExAcquireFastMutexUnsafe+20A96C↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_14021DB99
; ---------------------------------------------------------------------------

loc_14021DC3D:                          ; CODE XREF: ExAcquireFastMutexUnsafe+150↑j
                xchg    dil, [rbx+366h]
                movzx   eax, byte ptr [rbx+318h]
                or      al, dil
                jmp     loc_14021DB24
ExAcquireFastMutexUnsafe endp

; ---------------------------------------------------------------------------
algn_14021DC53:                         ; DATA XREF: .rdata:0000000140050F28↑o
                                        ; .pdata:00000001400CA938↑o
                align 20h
; Exported entry 296. ExReleaseFastMutexUnsafe

; =============== S U B R O U T I N E =======================================


                public ExReleaseFastMutexUnsafe
ExReleaseFastMutexUnsafe proc near      ; CODE XREF: sub_14021A330+953↑p
                                        ; FsRtlCheckOplockEx2+B67↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     qword ptr [rcx+8], 0
                mov     ecx, 1
                xor     eax, eax
                lock cmpxchg [rbx], ecx
                jnz     short loc_14021DC8D

loc_14021DC7E:                          ; CODE XREF: ExReleaseFastMutexUnsafe+37↓j
                mov     rcx, rbx
                call    sub_140243660
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021DC8D:                          ; CODE XREF: ExReleaseFastMutexUnsafe+1C↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     short loc_14021DC7E
ExReleaseFastMutexUnsafe endp

; ---------------------------------------------------------------------------
algn_14021DC99:                         ; DATA XREF: .pdata:00000001400CA944↑o
                align 20h
; Exported entry 2473. SeAccessCheck

; =============== S U B R O U T I N E =======================================


                public SeAccessCheck
SeAccessCheck   proc near               ; CODE XREF: sub_14024A710+157↓p
                                        ; sub_14024A710+1B3↓p ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

                sub     rsp, 68h
                mov     rax, [rsp+68h+arg_48]
                mov     [rsp+68h+var_10], 0
                mov     [rsp+68h+var_18], rax
                mov     rax, [rsp+68h+arg_40]
                mov     [rsp+68h+var_20], rax
                movzx   eax, [rsp+68h+arg_38]
                mov     [rsp+68h+var_28], al
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_30], rax
                mov     rax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_38], rax
                mov     eax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], eax
                mov     [rsp+68h+var_48], r9d
                movzx   r9d, r8b
                mov     r8, rdx
                xor     edx, edx
                call    sub_140248760
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAccessCheck   endp

algn_14021DD0D:                         ; DATA XREF: .pdata:00000001400CA950↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021DD20   proc near               ; CODE XREF: sub_1406344C0+E↓p
                                        ; DATA XREF: .rdata:00000001400514E0↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_107         = byte ptr -107h
var_106         = byte ptr -106h
var_104         = dword ptr -104h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_78          = byte ptr -78h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140428454 SIZE 000000AA BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_48], rax
                mov     esi, r9d
                mov     [rsp+138h+var_104], r9d
                mov     rdi, r8
                mov     [rsp+138h+var_C0], r8
                mov     rbx, rcx
                mov     [rsp+138h+var_E8], rcx
                mov     [rsp+138h+var_B8], rcx
                mov     rax, [rsp+138h+arg_20]
                mov     [rsp+138h+var_100], rax
                xorps   xmm0, xmm0
                movups  [rsp+138h+var_D0], xmm0
                xorps   xmm1, xmm1
                xor     eax, eax
                movups  [rsp+138h+var_B0], xmm1
                movups  [rsp+138h+var_A0], xmm1
                movups  [rsp+138h+var_90], xmm1
                mov     [r11-80h], rax
                mov     r15d, eax
                mov     r14d, eax
                mov     [rsp+138h+var_F8], rax
                xor     r12b, r12b
                mov     [rsp+138h+var_108], r12b
                mov     [rsp+138h+var_107], al
                xor     r13b, r13b
                movups  xmmword ptr [r11-78h], xmm0
                movups  xmmword ptr [r11-68h], xmm0
                movups  xmmword ptr [r11-58h], xmm0
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_D8], rax
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_E0], rax
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                cmp     cs:dword_140C5097C, r14d
                jz      short loc_14021DE5A
                lea     rcx, unk_140D23580
                call    ExIsResourceAcquiredSharedLite
                test    eax, eax
                jnz     short loc_14021DE5A
                mov     qword ptr [rsp+138h+var_B0], rbx
                mov     qword ptr [rsp+138h+var_B0+8], rdi
                mov     dword ptr [rsp+138h+var_A0], esi
                mov     rax, [rsp+138h+var_100]
                mov     qword ptr [rsp+138h+var_A0+8], rax
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_110], rax
                mov     [rsp+138h+var_118], rbx
                lea     r9d, [r14+30h]
                lea     rdx, [rsp+138h+var_B0]
                lea     ecx, [r14+2Fh]
                call    sub_14065399C
                mov     esi, eax
                test    eax, eax
                js      loc_140428454
                mov     [rsp+138h+var_107], 1

loc_14021DE5A:                          ; CODE XREF: sub_14021DD20+D1↑j
                                        ; sub_14021DD20+E1↑j
                lea     rcx, [rsp+138h+var_78]
                call    sub_14063A890
                mov     r13b, 1
                call    sub_14064A3A0
                mov     r15, [rbx+8]
                mov     [rsp+138h+var_F0], r15
                test    r13b, r15b
                jnz     loc_140428468
                mov     eax, [rbx+30h]
                test    al, 2
                jnz     short loc_14021DE99
                mov     rcx, r15
                call    sub_140646FA0
                movzx   r12d, r13b
                mov     [rsp+138h+var_108], r13b

loc_14021DE99:                          ; CODE XREF: sub_14021DD20+166↑j
                                        ; sub_14021DD20+20A751↓j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140638C00
                mov     esi, eax
                test    eax, eax
                js      loc_14021DF9F
                cmp     cs:byte_140C0F3DD, r14b
                jz      short loc_14021DEC7
                test    dword ptr [r15+0B8h], 1000000h
                jnz     loc_140428476

loc_14021DEC7:                          ; CODE XREF: sub_14021DD20+194↑j
                mov     rcx, r15
                call    sub_1406374AC
                mov     r14, rax
                mov     [rsp+138h+var_F8], rax

loc_14021DED7:                          ; CODE XREF: sub_14021DD20+20A765↓j
                                        ; sub_14021DD20+20A775↓j
                test    r14, r14
                jz      loc_14042849A
                test    r12b, r12b
                jz      short loc_14021DEF5
                mov     rcx, r15
                call    sub_140646FD0
                xor     r12b, r12b
                mov     [rsp+138h+var_108], r12b

loc_14021DEF5:                          ; CODE XREF: sub_14021DD20+1C3↑j
                call    sub_14064A360
                lea     rcx, [rsp+138h+var_78]
                call    sub_14063A63C
                xor     r13b, r13b
                mov     [rsp+138h+var_106], r13b
                mov     edx, [rsp+138h+var_104]
                mov     rcx, [rsp+138h+var_100]
                cmp     edx, 10h
                jbe     loc_14021E02C
                lea     r9, [rdi+10h]
                mov     r10, [r14+8]
                movzx   ebx, word ptr [r14]
                add     ebx, 2
                lea     eax, [rbx+10h]
                mov     [rcx], eax
                lea     rcx, [rdx-10h]
                mov     eax, ebx
                cmp     rax, rcx
                ja      loc_1404284A4
                xor     eax, eax
                mov     esi, eax

loc_14021DF48:                          ; CODE XREF: sub_14021DD20+20A78F↓j
                add     ebx, 0FFFFFFFEh

loc_14021DF4B:                          ; DATA XREF: .rdata:00000001400514C8↑o
;   __try { // __except at loc_14021DF7F
                mov     edi, ebx
                mov     r8d, ebx
                mov     rdx, r10
                mov     rcx, r9
                call    memmove
                shr     rdi, 1
                mov     rcx, [rsp+138h+var_C0]
                lea     rax, [rcx+10h]
                xor     edx, edx
                mov     [rax+rdi*2], dx
                mov     [rcx], bx
                mov     [rcx+2], bx
                mov     [rcx+8], rax
                mov     rbx, [rsp+138h+var_E8]
                jmp     short loc_14021DF9F
;   } // starts at 14021DF4B
; ---------------------------------------------------------------------------

loc_14021DF7F:                          ; DATA XREF: .rdata:00000001400514C8↑o
;   __except(1) // owned by 14021DF4B
                mov     esi, eax
                mov     r15, [rsp+138h+var_F0]
                mov     r14, [rsp+138h+var_F8]
                movzx   r12d, [rsp+138h+var_108]
                movzx   r13d, [rsp+138h+var_106]
                mov     rbx, [rsp+138h+var_B8]

loc_14021DF9F:                          ; CODE XREF: sub_14021DD20+187↑j
                                        ; sub_14021DD20+25D↑j ...
                test    r12b, r12b
                jnz     loc_1404284BF

loc_14021DFA8:                          ; CODE XREF: sub_14021DD20+20A7A8↓j
                test    r13b, r13b
                jnz     loc_1404284CD

loc_14021DFB1:                          ; CODE XREF: sub_14021DD20+20A7B5↓j
                                        ; sub_14021DD20+20A7C9↓j
                cmp     [rsp+138h+var_107], 0
                jz      short loc_14021DFDA
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_118], rax
                lea     r9, [rsp+138h+var_B0]
                mov     r8d, esi
                mov     rdx, rbx
                mov     ecx, 30h ; '0'
                call    sub_140653740

loc_14021DFDA:                          ; CODE XREF: sub_14021DD20+296↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     qword ptr [rsp+138h+var_D0+8], 0
                jnz     loc_1404284EE
                test    r14, r14
                jz      short loc_14021E006
                mov     edx, 624E4D43h
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14021E006:                          ; CODE XREF: sub_14021DD20+2D7↑j
                                        ; sub_14021DD20+20A7D9↓j
                mov     eax, esi
                mov     rcx, [rsp+138h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021E02C:                          ; CODE XREF: sub_14021DD20+1FB↑j
                movzx   eax, word ptr [r14]
                add     eax, 12h
                mov     [rcx], eax
                mov     esi, 0C0000004h
                jmp     loc_14021DF9F
; } // starts at 14021DD20
sub_14021DD20   endp

; ---------------------------------------------------------------------------
byte_14021E03F  db 11h dup(0CCh)        ; DATA XREF: .rdata:00000001400514E0↑o
                                        ; .pdata:00000001400CA95C↑o
; Exported entry 2018. RtlClearBits

; =============== S U B R O U T I N E =======================================


