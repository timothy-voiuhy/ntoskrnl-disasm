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


