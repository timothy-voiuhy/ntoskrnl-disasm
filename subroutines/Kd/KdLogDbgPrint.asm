KdLogDbgPrint   proc near               ; CODE XREF: sub_1409BB6C8+10D↓p
                                        ; sub_1409BB848+FE↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 30h
                mov     rax, gs:20h
                xor     r12d, r12d
                cmp     cs:qword_140CF9E88, rax
                mov     r13, rcx
                mov     [rsp+58h+arg_8], r12d
                jnz     short loc_1409BB3BF
                lock inc cs:dword_140C335E0
                jmp     loc_1409BB5E2
; ---------------------------------------------------------------------------

loc_1409BB3BF:                          ; CODE XREF: KdLogDbgPrint+31↑j
                lock inc dword ptr cs:qword_140CF9E80+4
                jmp     short loc_1409BB3CA
; ---------------------------------------------------------------------------

loc_1409BB3C8:                          ; CODE XREF: KdLogDbgPrint+52↓j
                pause

loc_1409BB3CA:                          ; CODE XREF: KdLogDbgPrint+46↑j
                mov     eax, dword ptr cs:qword_140CF9E80
                test    eax, eax
                jnz     short loc_1409BB3C8
                mov     rbp, cr8
                lea     r10d, [rax+0Fh]
                mov     cr8, r10
                mov     eax, cs:dword_140CFC660
                or      r14, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1409BB424
                test    al, 1
                jz      short loc_1409BB424
                cmp     bpl, r10b
                ja      short loc_1409BB424
                mov     rax, gs:20h
                mov     rdx, r14
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1409BB424:                          ; CODE XREF: KdLogDbgPrint+6C↑j
                                        ; KdLogDbgPrint+70↑j ...
                cmp     cs:off_140C04F50, r12
                jz      loc_1409BB57F
                mov     eax, cs:dword_140C12098
                mov     ecx, 200h
                shr     eax, 3
                cmp     eax, ecx
                cmova   eax, ecx
                movzx   ecx, word ptr [r13+0]
                cmp     ecx, eax
                jbe     short loc_1409BB456
                lock inc cs:dword_140C335E4
                cmp     ecx, eax

loc_1409BB456:                          ; CODE XREF: KdLogDbgPrint+CB↑j
                cmovbe  eax, ecx
                mov     ebx, eax
                xor     eax, eax
                lock cmpxchg cs:off_140C04F58, r12

loc_1409BB466:                          ; CODE XREF: KdLogDbgPrint+116↓j
                mov     edx, cs:dword_140C12098
                lea     r9, [rbx+rax]
                mov     r8, cs:off_140C04F50
                mov     rcx, r9
                sub     rcx, rdx
                add     r8, rdx
                cmp     r9, r8
                mov     rsi, rax
                cmovb   rcx, r9
                lock cmpxchg cs:off_140C04F58, rcx
                cmp     rax, rsi
                jnz     short loc_1409BB466
                cmp     rcx, rsi
                jnb     short loc_1409BB4A4
                lock inc cs:dword_140C330C0

loc_1409BB4A4:                          ; CODE XREF: KdLogDbgPrint+11B↑j
                mov     edx, cs:dword_140C12098
                lea     rax, [rbx+rsi]
                mov     rdi, cs:off_140C04F50
                xor     r9d, r9d
                lea     rcx, [rdi+rdx]
                cmp     rax, rcx
                mov     rcx, [r13+8]
                lea     rax, [rsp+58h+arg_8]
                mov     [rsp+58h+var_30], rax
                mov     [rsp+58h+var_38], 4
                ja      short loc_1409BB4F6
                mov     r8d, ebx
                mov     rdx, rsi
                call    sub_1409BBB9C
                mov     eax, [rsp+58h+arg_8]
                cmp     eax, ebx
                jnb     loc_1409BB579
                sub     ebx, eax
                lea     rcx, [rsi+rax]
                jmp     short loc_1409BB56F
; ---------------------------------------------------------------------------

loc_1409BB4F6:                          ; CODE XREF: KdLogDbgPrint+155↑j
                sub     edi, esi
                add     edi, edx
                mov     rdx, rsi
                mov     r8d, edi
                call    sub_1409BBB9C
                cmp     [rsp+58h+arg_8], edi
                jnb     short loc_1409BB521
                mov     ecx, [rsp+58h+arg_8]
                mov     r8d, edi
                sub     r8d, [rsp+58h+arg_8]
                add     rcx, rsi
                xor     edx, edx
                call    memset

loc_1409BB521:                          ; CODE XREF: KdLogDbgPrint+189↑j
                sub     ebx, edi
                cmp     [rsp+58h+arg_8], edi
                jnz     short loc_1409BB568
                mov     rdx, cs:off_140C04F50
                lea     rax, [rsp+58h+arg_8]
                mov     [rsp+58h+var_30], rax
                xor     r9d, r9d
                mov     ecx, edi
                mov     r8d, ebx
                add     rcx, [r13+8]
                mov     [rsp+58h+var_38], 4
                call    sub_1409BBB9C
                mov     eax, [rsp+58h+arg_8]
                cmp     eax, ebx
                jnb     short loc_1409BB579
                sub     ebx, eax
                mov     ecx, eax
                add     rcx, cs:off_140C04F50
                jmp     short loc_1409BB56F
; ---------------------------------------------------------------------------

loc_1409BB568:                          ; CODE XREF: KdLogDbgPrint+1A7↑j
                mov     rcx, cs:off_140C04F50

loc_1409BB56F:                          ; CODE XREF: KdLogDbgPrint+174↑j
                                        ; KdLogDbgPrint+1E6↑j
                mov     r8d, ebx
                xor     edx, edx
                call    memset

loc_1409BB579:                          ; CODE XREF: KdLogDbgPrint+168↑j
                                        ; KdLogDbgPrint+1D9↑j
                mov     r10d, 0Fh

loc_1409BB57F:                          ; CODE XREF: KdLogDbgPrint+AB↑j
                lock add dword ptr cs:qword_140CF9E80+4, r14d
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1409BB5DA
                test    al, 1
                jz      short loc_1409BB5DA
                mov     rax, cr8
                cmp     al, r10b
                ja      short loc_1409BB5DA
                cmp     bpl, r10b
                ja      short loc_1409BB5DA
                cmp     al, 2
                jb      short loc_1409BB5DA
                mov     r9, gs:20h
                movzx   ecx, bpl
                inc     ecx
                shl     r14, cl
                mov     r8, [r9+84B8h]
                movzx   eax, r14w
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1409BB5DA
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1409BB5DA:                          ; CODE XREF: KdLogDbgPrint+20F↑j
                                        ; KdLogDbgPrint+213↑j ...
                movzx   eax, bpl
                mov     cr8, rax

loc_1409BB5E2:                          ; CODE XREF: KdLogDbgPrint+3A↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdLogDbgPrint   endp

algn_1409BB5FA:                         ; DATA XREF: .pdata:0000000140127FF8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409BB600   proc near               ; CODE XREF: sub_1409BCA20+7D↓p
                                        ; DATA XREF: .pdata:0000000140128004↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                test    r8b, r8b
                jnz     locret_1409BB6BE
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     cs:KdDebuggerNotPresent, r8b
                mov     rbp, r9
                mov     r14, rdx
                mov     r15, rcx
                jnz     short loc_1409BB6A6
                mov     rdx, [rsp+38h+arg_28]
                mov     rcx, [rsp+38h+arg_20]
                call    sub_1409B9028
                mov     rbx, gs:20h
                mov     sil, al
                lea     rdi, [rbx+100h]
                mov     rcx, rdi
                call    sub_1403FDA80
                mov     edx, [rbp+30h]
                mov     r8, rbp
                mov     rcx, [rbx+85C0h]
                call    sub_1409BBB28
                mov     r8, [rbx+85C0h]
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1409B9B48
                mov     rdx, [rbx+85C0h]
                mov     rcx, rbp
                mov     r8, rdx
                mov     edx, [rdx+30h]
                call    sub_1409BBB28
                mov     rcx, rdi
                call    sub_1403FD9B0
                mov     cl, sil
                call    sub_1409B9190

loc_1409BB6A6:                          ; CODE XREF: sub_1409BB600+31↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi

locret_1409BB6BE:                       ; CODE XREF: sub_1409BB600+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BB600   endp

byte_1409BB6C0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140128004↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=20h

sub_1409BB6C8   proc near               ; CODE XREF: sub_1409BCA20+12A↓p
                                        ; DATA XREF: .pdata:0000000140128010↑o

var_220         = byte ptr -220h
var_40          = dword ptr -40h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h
arg_20          = byte ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp-8+arg_10], r8
                push    rbp
                sub     rsp, 40h
                lea     rbp, [rsp+20h]
                mov     [rbp+20h+arg_0], rbx
                mov     [rbp+20h+arg_8], rsi
                mov     [rbp+20h+arg_18], rdi
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+20h+var_10], rax
                xorps   xmm0, xmm0
                movups  [rbp+20h+var_20], xmm0
                mov     r10d, 65h ; 'e'
                lea     r11d, [r10+37h]
                cmp     ecx, r11d
                cmovb   r10d, ecx
                mov     r8d, 3
                cmovb   r8d, edx
                xor     edi, edi
                mov     rsi, [rbp+20h+arg_38]
                mov     [rsi], dil
                cmp     r8d, 1Fh
                ja      short loc_1409BB72C
                mov     ecx, r8d
                lea     r8d, [rdi+1]
                shl     r8d, cl

loc_1409BB72C:                          ; CODE XREF: sub_1409BB6C8+58↑j
                test    cs:dword_140C11598, r8d
                jnz     short loc_1409BB751
                cmp     r10d, r11d
                jnb     short loc_1409BB751
                lfence
                lea     rcx, off_140007410
                mov     rax, [rcx+r10*8]
                test    [rax], r8d
                jz      loc_1409BB81C

loc_1409BB751:                          ; CODE XREF: sub_1409BB6C8+6B↑j
                                        ; sub_1409BB6C8+70↑j
                mov     r8d, 200h
                mov     r10d, r8d
                cmp     r9w, r8w
                cmovbe  r10w, r9w
                cmp     [rbp+20h+arg_20], dil
                jz      short loc_1409BB7C4

loc_1409BB769:                          ; DATA XREF: .rdata:00000001400B920C↑o
;   __try { // __except at loc_1409BB7BD
                test    r10w, r10w
                jz      short loc_1409BB799
                movzx   edx, r10w
                mov     rcx, [rbp+20h+arg_10]
                add     rdx, rcx
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                ja      short loc_1409BB78E
                cmp     rdx, rcx
                jnb     short loc_1409BB799

loc_1409BB78E:                          ; CODE XREF: sub_1409BB6C8+BF↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1409BB799:                          ; CODE XREF: sub_1409BB6C8+A5↑j
                                        ; sub_1409BB6C8+C4↑j
                mov     eax, [rsp+40h+var_40]
                sub     rsp, r8
                lea     r9, [rsp+240h+var_220]
                mov     eax, [r9]
                movzx   r8d, r10w
                mov     rdx, [rbp+20h+arg_10]
                mov     rcx, r9
                call    sub_1409BBCF0
                mov     [rbp+20h+arg_10], r9
                jmp     short loc_1409BB7C4
;   } // starts at 1409BB769
; ---------------------------------------------------------------------------

loc_1409BB7BD:                          ; DATA XREF: .rdata:00000001400B920C↑o
;   __except(1) // owned by 1409BB769
                mov     eax, 0C0000005h
                jmp     short loc_1409BB821
; ---------------------------------------------------------------------------

loc_1409BB7C4:                          ; CODE XREF: sub_1409BB6C8+9F↑j
                                        ; sub_1409BB6C8+F3↑j
                mov     rax, [rbp+20h+arg_10]
                mov     qword ptr [rbp+20h+var_20+8], rax
                mov     word ptr [rbp+20h+var_20], r10w
                lea     rcx, [rbp+20h+var_20]
                call    KdLogDbgPrint
                cmp     cs:KdDebuggerNotPresent, 0
                jz      short loc_1409BB7F3
                cmp     cs:byte_140C40743, 0
                jnz     short loc_1409BB7F3
                mov     edi, 0C000009Dh
                jmp     short loc_1409BB81C
; ---------------------------------------------------------------------------

loc_1409BB7F3:                          ; CODE XREF: sub_1409BB6C8+119↑j
                                        ; sub_1409BB6C8+122↑j
                mov     rdx, [rbp+20h+arg_30]
                mov     rcx, [rbp+20h+arg_28]
                call    sub_1409B9028
                mov     bl, al
                lea     rcx, [rbp+20h+var_20]
                call    sub_1409BC7A0
                neg     al
                sbb     edi, edi
                and     edi, 80000003h
                mov     cl, bl
                call    sub_1409B9190

loc_1409BB81C:                          ; CODE XREF: sub_1409BB6C8+83↑j
                                        ; sub_1409BB6C8+129↑j
                mov     byte ptr [rsi], 1
                mov     eax, edi

loc_1409BB821:                          ; CODE XREF: sub_1409BB6C8+FA↑j
                mov     rcx, [rbp+20h+var_10]
                xor     rcx, rbp
                call    __security_check_cookie
                mov     rbx, [rbp+20h+arg_0]
                mov     rsi, [rbp+20h+arg_8]
                mov     rdi, [rbp+20h+arg_18]
                lea     rsp, [rbp+20h]
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409BB6C8
sub_1409BB6C8   endp ; sp-analysis failed

byte_1409BB840  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140128010↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

sub_1409BB848   proc near               ; CODE XREF: sub_1409BCA20+E2↓p
                                        ; DATA XREF: .pdata:000000014012801C↑o

var_450         = byte ptr -450h
var_270         = dword ptr -270h
var_250         = byte ptr -250h
var_70          = dword ptr -70h
var_50          = word ptr -50h
var_4E          = word ptr -4Eh
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_20          = byte ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 50h
                lea     rbp, [rsp+20h]
                mov     [rbp+50h+arg_8], rbx
                mov     [rbp+50h+arg_10], rsi
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+50h+var_28], rax
                mov     rsi, r8
                mov     rdi, rcx
                xor     r12d, r12d
                mov     [rbp+50h+var_4C], r12d
                xorps   xmm0, xmm0
                movups  [rbp+50h+var_40], xmm0
                mov     r13d, 200h
                mov     ebx, r13d
                cmp     dx, r13w
                cmovbe  bx, dx
                mov     r14d, r13d
                cmp     r9w, r13w
                cmovbe  r14w, r9w
                cmp     [rbp+50h+arg_20], r12b
                jz      short loc_1409BB929

loc_1409BB8AE:                          ; DATA XREF: .rdata:00000001400B91C4↑o
;   __try { // __except at loc_1409BB925
                test    bx, bx
                jz      short loc_1409BB8D8
                movzx   ecx, bx
                add     rcx, rdi
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1409BB8CD
                cmp     rcx, rdi
                jnb     short loc_1409BB8D8

loc_1409BB8CD:                          ; CODE XREF: sub_1409BB848+7E↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1409BB8D8:                          ; CODE XREF: sub_1409BB848+69↑j
                                        ; sub_1409BB848+83↑j
                mov     eax, [rsp+70h+var_70]
                sub     rsp, r13
                lea     r9, [rsp+270h+var_250]
                mov     eax, [r9]
                mov     [rbp+50h+var_30], r9
                movzx   r8d, bx
                mov     rdx, rdi
                mov     rcx, r9
                call    sub_1409BBCF0
                mov     rdi, r9
                mov     [rbp+50h+arg_0], r9
                movzx   edx, r14w
                mov     r8d, 1
                mov     rcx, rsi
                call    ProbeForWrite
                mov     ecx, [rsp+270h+var_270]
                sub     rsp, r13
                lea     rcx, [rsp+470h+var_450]
                mov     eax, [rcx]
                mov     [rbp+50h+var_30], rcx
                jmp     short loc_1409BB92C
;   } // starts at 1409BB8AE
; ---------------------------------------------------------------------------

loc_1409BB925:                          ; DATA XREF: .rdata:00000001400B91C4↑o
;   __except(1) // owned by 1409BB8AE
                xor     eax, eax
                jmp     short loc_1409BB998
; ---------------------------------------------------------------------------

loc_1409BB929:                          ; CODE XREF: sub_1409BB848+64↑j
                mov     rcx, rsi

loc_1409BB92C:                          ; CODE XREF: sub_1409BB848+DB↑j
                mov     [rbp+50h+var_48], rcx
                mov     [rbp+50h+var_50], r12w
                mov     [rbp+50h+var_4E], r14w
                mov     qword ptr [rbp+50h+var_40+8], rdi
                mov     word ptr [rbp+50h+var_40], bx
                lea     rcx, [rbp+50h+var_40]
                call    KdLogDbgPrint
                mov     rdx, [rbp+50h+arg_30]
                mov     rcx, [rbp+50h+arg_28]
                call    sub_1409B9028
                mov     bl, al

loc_1409BB960:                          ; CODE XREF: sub_1409BB848+127↓j
                lea     rdx, [rbp+50h+var_50]
                lea     rcx, [rbp+50h+var_40]
                call    sub_1409BC898
                cmp     al, 1
                jz      short loc_1409BB960
                mov     cl, bl
                call    sub_1409B9190
                cmp     [rbp+50h+arg_20], 1
                jnz     short loc_1409BB994

loc_1409BB981:                          ; DATA XREF: .rdata:00000001400B91D4↑o
;   __try { // __except at loc_1409BB994
                movzx   r8d, [rbp+50h+var_50]
                mov     rdx, [rbp+50h+var_48]
                mov     rcx, rsi
                call    sub_1409BBCF0
                jmp     short $+2
;   } // starts at 1409BB981
; ---------------------------------------------------------------------------

loc_1409BB994:                          ; CODE XREF: sub_1409BB848+137↑j
                                        ; sub_1409BB848+14A↑j
                                        ; DATA XREF: ...
;   __except(1) // owned by 1409BB981
                movzx   eax, [rbp+50h+var_50]

loc_1409BB998:                          ; CODE XREF: sub_1409BB848+DF↑j
                mov     rcx, [rbp+50h+var_28]
                xor     rcx, rbp
                call    __security_check_cookie
                mov     rbx, [rbp+50h+arg_8]
                mov     rsi, [rbp+50h+arg_10]
                lea     rsp, [rbp+30h]
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409BB848
sub_1409BB848   endp ; sp-analysis failed

algn_1409BB9BA:                         ; DATA XREF: .pdata:000000014012801C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409BB9C0   proc near               ; CODE XREF: sub_1409BCA20+AC↓p
                                        ; DATA XREF: .pdata:0000000140128028↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                test    r9b, r9b
                jnz     locret_1409BBA91
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     cs:KdDebuggerNotPresent, r9b
                mov     r14b, r8b
                mov     r15, rdx
                mov     r12, rcx
                jnz     short loc_1409BBA73
                mov     rdx, [rsp+38h+arg_30]
                mov     rcx, [rsp+38h+arg_28]
                call    sub_1409B9028
                mov     rdi, gs:20h
                mov     bpl, al
                lea     rsi, [rdi+100h]
                mov     rcx, rsi
                call    sub_1403FDA80
                mov     rbx, [rsp+38h+arg_20]
                mov     rcx, [rdi+85C0h]
                mov     r8, rbx
                mov     edx, [rbx+30h]
                call    sub_1409BBB28
                mov     r9, [rdi+85C0h]
                mov     r8b, r14b
                mov     rdx, r15
                mov     rcx, r12
                call    sub_1409B9DD0
                mov     rax, [rdi+85C0h]
                mov     rcx, rbx
                mov     r8, rax
                mov     edx, [rax+30h]
                call    sub_1409BBB28
                mov     rcx, rsi
                call    sub_1403FD9B0
                mov     cl, bpl
                call    sub_1409B9190

loc_1409BBA73:                          ; CODE XREF: sub_1409BB9C0+36↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12

locret_1409BBA91:                       ; CODE XREF: sub_1409BB9C0+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BB9C0   endp

byte_1409BBA93  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140128028↑o

; =============== S U B R O U T I N E =======================================


sub_1409BBA9C   proc near               ; CODE XREF: sub_1409BC0B0+EB↓p
                                        ; sub_1409BC334+38↓p ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax-10h], 0
                mov     ebx, r9d
                mov     r9d, r8d
                mov     [rax-18h], ebx
                mov     edi, r8d
                mov     rsi, rdx
                mov     rbp, rcx
                call    sub_1409BBB9C
                test    eax, eax
                jns     short loc_1409BBB0A
                mov     ecx, ebx
                mov     cs:byte_140C40664, 1
                and     ecx, 5
                cmp     cl, 5
                jnz     short loc_1409BBB0C
                and     [rsp+38h+var_10], 0
                or      ebx, 40h
                mov     r9d, edi
                mov     [rsp+38h+var_18], ebx
                mov     r8d, edi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1409BBB9C
                test    eax, eax
                js      short loc_1409BBB0C
                mov     eax, 103h
                jmp     short loc_1409BBB0C
; ---------------------------------------------------------------------------

loc_1409BBB0A:                          ; CODE XREF: sub_1409BBA9C+32↑j
                xor     eax, eax

loc_1409BBB0C:                          ; CODE XREF: sub_1409BBA9C+43↑j
                                        ; sub_1409BBA9C+65↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBA9C   endp

algn_1409BBB22:                         ; DATA XREF: .pdata:0000000140128034↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409BBB28   proc near               ; CODE XREF: sub_14051164C+DD↑p
                                        ; sub_140511B44+8E↑p ...
                sub     rsp, 28h
                mov     r11, r8
                mov     r9d, edx
                mov     rdx, r11
                mov     r8d, 4D0h
                mov     r10, rcx
                call    sub_1409BBCF0
                mov     eax, 100040h
                mov     [r10+30h], r9d
                and     r9d, eax
                cmp     r9d, eax
                jnz     short loc_1409BBB90
                mov     eax, [r10+4E4h]
                lea     rdx, [r11+4D0h]
                mov     r8d, [r11+4E4h]
                lea     rcx, [r10+4D0h]
                cmp     eax, r8d
                cmovbe  r8d, eax
                movsxd  rax, dword ptr [r11+4E0h]
                add     rdx, rax
                movsxd  rax, dword ptr [r10+4E0h]
                add     rcx, rax
                call    sub_1409BBCF0

loc_1409BBB90:                          ; CODE XREF: sub_1409BBB28+2A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBB28   endp

byte_1409BBB96  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140128040↑o

; =============== S U B R O U T I N E =======================================


sub_1409BBB9C   proc near               ; CODE XREF: sub_14051153C+AB↑p
                                        ; sub_14051153C+EC↑p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     ebp, 8
                mov     esi, r8d
                mov     r15, rdx
                mov     r14, rcx
                cmp     r9d, ebp
                ja      short loc_1409BBBDA
                test    r9d, r9d
                mov     ebp, r9d
                mov     eax, 4
                cmovz   ebp, eax

loc_1409BBBDA:                          ; CODE XREF: sub_1409BBB9C+2E↑j
                mov     edi, esi
                mov     ebx, 1
                test    esi, esi
                jz      short loc_1409BBC35
                mov     r12d, [rsp+48h+arg_20]

loc_1409BBBEA:                          ; CODE XREF: sub_1409BBB9C+97↓j
                cmp     ebx, ebp
                jnb     short loc_1409BBC0B

loc_1409BBBEE:                          ; CODE XREF: sub_1409BBB9C+69↓j
                lea     edx, [rbx+rbx]
                cmp     edx, edi
                ja      short loc_1409BBC0B
                lea     ecx, ds:0FFFFFFFFFFFFFFFFh[rbx*2]
                test    r14, rcx
                jnz     short loc_1409BBC0B
                mov     ebx, edx
                cmp     edx, ebp
                jb      short loc_1409BBBEE
                jmp     short loc_1409BBC0B
; ---------------------------------------------------------------------------

loc_1409BBC09:                          ; CODE XREF: sub_1409BBB9C+71↓j
                shr     ebx, 1

loc_1409BBC0B:                          ; CODE XREF: sub_1409BBB9C+50↑j
                                        ; sub_1409BBB9C+57↑j ...
                cmp     ebx, edi
                ja      short loc_1409BBC09
                mov     r9d, ebx
                mov     [rsp+48h+var_28], r12d
                mov     r8d, ebx
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140546C6C
                test    eax, eax
                js      short loc_1409BBC35
                mov     eax, ebx
                add     r14, rax
                add     r15, rax
                sub     edi, ebx
                jnz     short loc_1409BBBEA

loc_1409BBC35:                          ; CODE XREF: sub_1409BBB9C+47↑j
                                        ; sub_1409BBB9C+8B↑j
                mov     rax, [rsp+48h+arg_28]
                test    rax, rax
                jz      short loc_1409BBC43
                sub     esi, edi
                mov     [rax], esi

loc_1409BBC43:                          ; CODE XREF: sub_1409BBB9C+A1↑j
                mov     rbx, [rsp+48h+arg_0]
                neg     edi
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                sbb     eax, eax
                mov     rdi, [rsp+48h+arg_18]
                and     eax, 0C0000001h
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBB9C   endp

byte_1409BBC6C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014012804C↑o

; =============== S U B R O U T I N E =======================================


sub_1409BBC74   proc near               ; CODE XREF: sub_1409B9628+9B↑p
                                        ; DATA XREF: .pdata:0000000140128058↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+4D0h]
                mov     [rcx+30h], edx
                mov     eax, edi
                sub     eax, ecx
                mov     ecx, eax
                mov     [rdi+0Ch], eax
                add     eax, 18h
                neg     ecx
                mov     [rdi+4], eax
                mov     eax, 100040h
                and     edx, eax
                mov     [rdi+8], ecx
                mov     [rdi], ecx
                cmp     edx, eax
                jnz     short loc_1409BBCDC
                xor     edx, edx
                lea     rbx, [rdi+57h]
                and     rbx, 0FFFFFFFFFFFFFFC0h
                mov     rcx, rbx
                lea     r8d, [rdx+40h]
                call    memset
                sub     ebx, edi
                mov     [rdi+10h], ebx
                mov     eax, ds:0FFFFF780000003E8h
                add     eax, 0FFFFFE00h
                mov     [rdi+14h], eax
                sub     eax, [rdi]
                add     eax, ebx
                mov     [rdi+4], eax

loc_1409BBCDC:                          ; CODE XREF: sub_1409BBC74+33↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBC74   endp

algn_1409BBCE8:                         ; DATA XREF: .pdata:0000000140128058↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BBCF0   proc near               ; CODE XREF: sub_140511458+74↑p
                                        ; sub_14051164C+9D↑p ...
                test    r8d, r8d
                jz      short locret_1409BBD06
                sub     rcx, rdx

loc_1409BBCF8:                          ; CODE XREF: sub_1409BBCF0+14↓j
                mov     al, [rdx]
                mov     [rcx+rdx], al
                inc     rdx
                add     r8d, 0FFFFFFFFh
                jnz     short loc_1409BBCF8

locret_1409BBD06:                       ; CODE XREF: sub_1409BBCF0+3↑j
                retn
sub_1409BBCF0   endp

; ---------------------------------------------------------------------------
                align 8
algn_1409BBD08:                         ; DATA XREF: .pdata:0000000140128064↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BBD10   proc near               ; CODE XREF: sub_14051164C+CE↑p
                                        ; sub_1409BAD7C+7D↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     r10d, [rcx+30h]
                mov     rbx, r8
                mov     rax, gs:20h
                mov     r11d, r10d
                and     r11d, 10001Fh
                mov     edi, edx
                mov     [r8], r11d
                mov     r9d, [rax+85C8h]
                and     r9d, r10d
                and     r9d, 100040h
                cmp     r9d, 100040h
                jnz     short loc_1409BBDBE
                mov     edx, [rcx+4D0h]
                cmp     edx, 0FFFFFFE8h
                jl      short loc_1409BBDBE
                mov     r8d, [rcx+4D4h]
                lea     eax, [rdi-30h]
                add     r8d, edx
                cmp     r8d, eax
                jg      short loc_1409BBDBE
                cmp     edx, r8d
                jg      short loc_1409BBDBE
                mov     r9d, [rcx+4D8h]
                cmp     edx, r9d
                jg      short loc_1409BBDBE
                mov     r10d, [rcx+4DCh]
                add     r10d, r9d
                cmp     r10d, r8d
                jg      short loc_1409BBDBE
                cmp     r9d, r10d
                jg      short loc_1409BBDBE
                mov     r9d, [rcx+4E0h]
                cmp     edx, r9d
                jg      short loc_1409BBDBE
                mov     ecx, [rcx+4E4h]
                add     ecx, r9d
                cmp     ecx, r8d
                jg      short loc_1409BBDBE
                cmp     r9d, ecx
                jg      short loc_1409BBDBE
                or      r11d, 100040h
                mov     [rbx], r11d

loc_1409BBDBE:                          ; CODE XREF: sub_1409BBD10+41↑j
                                        ; sub_1409BBD10+4C↑j ...
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBD10   endp

algn_1409BBDCA:                         ; DATA XREF: .pdata:0000000140128070↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BBDD0   proc near               ; CODE XREF: sub_1403CF678+E604A↑p
                                        ; DATA XREF: .pdata:000000014012807C↑o
                sub     rsp, 28h
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                xor     r9d, r9d
                test    eax, eax
                jz      short loc_1409BBE04
                lea     r8, qword_140CFDCC0

loc_1409BBDEC:                          ; CODE XREF: sub_1409BBDD0+32↓j
                mov     rcx, [r8]
                cmp     byte ptr [rcx+148h], 0
                jnz     short loc_1409BBE0C
                inc     r9d
                add     r8, 8
                cmp     r9d, eax
                jb      short loc_1409BBDEC

loc_1409BBE04:                          ; CODE XREF: sub_1409BBDD0+13↑j
                xor     eax, eax

loc_1409BBE06:                          ; CODE XREF: sub_1409BBDD0+41↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1409BBE0C:                          ; CODE XREF: sub_1409BBDD0+26↑j
                mov     eax, 0C0000022h
                jmp     short loc_1409BBE06
sub_1409BBDD0   endp

; ---------------------------------------------------------------------------
byte_1409BBE13  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014012807C↑o

; =============== S U B R O U T I N E =======================================


sub_1409BBE1C   proc near               ; CODE XREF: sub_1409BA4F4+6F6↑p
                                        ; DATA XREF: .pdata:0000000140128088↑o
                push    rbx
                sub     rsp, 20h
                cmp     dword ptr [rcx+10h], 0
                mov     rbx, rcx
                jl      short loc_1409BBE80
                mov     r9d, [rdx+44h]
                mov     r8d, r9d
                btr     r8d, 8
                bts     r9d, 8
                cmp     dword ptr [rcx+14h], 0
                mov     ecx, 0FFFFh
                cmovz   r9d, r8d
                mov     [rdx+44h], r9d
                call    KeQueryActiveProcessorCountEx
                test    eax, eax
                jz      short loc_1409BBE80
                lea     rdx, qword_140CFDCC0
                mov     r8d, eax

loc_1409BBE60:                          ; CODE XREF: sub_1409BBE1C+62↓j
                mov     rcx, [rdx]
                lea     rdx, [rdx+8]
                and     qword ptr [rcx+140h], 0
                mov     rax, [rbx+18h]
                mov     [rcx+148h], rax
                sub     r8, 1
                jnz     short loc_1409BBE60

loc_1409BBE80:                          ; CODE XREF: sub_1409BBE1C+D↑j
                                        ; sub_1409BBE1C+38↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBE1C   endp

algn_1409BBE87:                         ; DATA XREF: .pdata:0000000140128088↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BBE90   proc near               ; CODE XREF: sub_1409B9B48+7D↑p
                                        ; sub_1409B9CE0+92↑p ...
                mov     r8, gs:20h
                mov     rax, [r8+140h]
                mov     [rcx+0C0h], rax
                mov     rax, [r8+148h]
                mov     [rcx+0C8h], rax
                movzx   eax, word ptr [rdx+38h]
                mov     [rcx+0E8h], ax
                movzx   eax, word ptr [rdx+3Ah]
                mov     [rcx+0EAh], ax
                movzx   eax, word ptr [rdx+3Ch]
                mov     [rcx+0ECh], ax
                movzx   eax, word ptr [rdx+3Eh]
                mov     [rcx+0EEh], ax
                mov     eax, [rdx+44h]
                mov     [rcx+0D0h], eax
                mov     eax, 1
                mov     [rcx+0D6h], ax
                movzx   eax, word ptr [rdx+38h]
                cmp     ax, 10h
                jz      short loc_1409BBF06
                cmp     ax, 33h ; '3'
                jnz     short locret_1409BBF12

loc_1409BBF06:                          ; CODE XREF: sub_1409BBE90+6E↑j
                mov     eax, 3
                mov     [rcx+0D6h], ax

locret_1409BBF12:                       ; CODE XREF: sub_1409BBE90+74↑j
                retn
sub_1409BBE90   endp

; ---------------------------------------------------------------------------
                align 4
byte_1409BBF14  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140128094↑o

; =============== S U B R O U T I N E =======================================


sub_1409BBF1C   proc near               ; CODE XREF: KdSystemDebugControl+1B9↑p
                                        ; sub_1409B97B4+6E↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     rsi, [rsp+48h+arg_20]
                mov     ebp, r9d
                and     qword ptr [rax-18h], 0
                mov     r14, r8
                mov     edi, ecx
                mov     rbx, rdx
                mov     ecx, 0FFFFh
                and     dword ptr [rsi], 0
                call    KeQueryActiveProcessorCountEx
                cmp     edi, eax
                jnb     loc_1409BBFE0
                lea     rcx, qword_140CFDCC0
                mov     rax, [rcx+rdi*8]
                test    rax, rax
                jz      short loc_1409BBFE0
                mov     [rsp+48h+arg_20], rax
                cmp     rbx, 3
                ja      short loc_1409BBFE0
                test    ebx, ebx
                jz      short loc_1409BBFA9
                sub     ebx, 1
                jz      short loc_1409BBFA2
                sub     ebx, 1
                jz      short loc_1409BBF93
                cmp     ebx, 1
                jnz     short loc_1409BBFE0
                lea     rdx, [rax+8]
                jmp     short loc_1409BBFB9
; ---------------------------------------------------------------------------

loc_1409BBF93:                          ; CODE XREF: sub_1409BBF1C+6A↑j
                lea     rdx, [rax+100h]
                mov     r8d, 0F0h
                jmp     short loc_1409BBFBF
; ---------------------------------------------------------------------------

loc_1409BBFA2:                          ; CODE XREF: sub_1409BBF1C+65↑j
                lea     rdx, [rsp+48h+arg_20]
                jmp     short loc_1409BBFB9
; ---------------------------------------------------------------------------

loc_1409BBFA9:                          ; CODE XREF: sub_1409BBF1C+60↑j
                add     rax, 0FFFFFFFFFFFFFE80h
                lea     rdx, [rsp+48h+var_18]
                mov     [rsp+48h+var_18], rax

loc_1409BBFB9:                          ; CODE XREF: sub_1409BBF1C+75↑j
                                        ; sub_1409BBF1C+8B↑j
                mov     r8d, 8

loc_1409BBFBF:                          ; CODE XREF: sub_1409BBF1C+84↑j
                cmp     r8d, ebp
                mov     [rsp+48h+var_20], rsi
                mov     rcx, r14
                mov     [rsp+48h+var_28], 5
                cmova   r8d, ebp
                xor     r9d, r9d
                call    sub_1409BBB9C
                jmp     short loc_1409BBFE5
; ---------------------------------------------------------------------------

loc_1409BBFE0:                          ; CODE XREF: sub_1409BBF1C+3D↑j
                                        ; sub_1409BBF1C+51↑j ...
                mov     eax, 0C0000001h

loc_1409BBFE5:                          ; CODE XREF: sub_1409BBF1C+C2↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BBF1C   endp

algn_1409BC001:                         ; DATA XREF: .pdata:00000001401280A0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409BC008   proc near               ; CODE XREF: KdSystemDebugControl+120↑p
                                        ; sub_1409BB254+49↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     r14, [rsp+38h+arg_20]
                mov     esi, r9d
                mov     ebx, ecx
                mov     rbp, r8
                mov     ecx, 0FFFFh
                mov     rdi, rdx
                and     dword ptr [r14], 0
                call    KeQueryActiveProcessorCountEx
                cmp     ebx, eax
                jnb     short loc_1409BC087
                lea     rdx, qword_140CFDCC0
                mov     rdx, [rdx+rbx*8]
                test    rdx, rdx
                jz      short loc_1409BC087
                cmp     rdi, 2
                jnz     short loc_1409BC087
                mov     r8d, 0F0h
                mov     [rsp+38h+var_10], r14
                cmp     esi, r8d
                mov     [rsp+38h+var_18], 4
                mov     rcx, rbp
                cmovbe  r8d, esi
                add     rdx, 100h
                xor     r9d, r9d
                call    sub_1409BBB9C
                jmp     short loc_1409BC08C
; ---------------------------------------------------------------------------

loc_1409BC087:                          ; CODE XREF: sub_1409BC008+39↑j
                                        ; sub_1409BC008+49↑j ...
                mov     eax, 0C0000001h

loc_1409BC08C:                          ; CODE XREF: sub_1409BC008+7D↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC008   endp

algn_1409BC0A8:                         ; DATA XREF: .pdata:00000001401280AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BC0B0   proc near               ; CODE XREF: sub_140511784+30↑p
                                        ; sub_1409BA4F4+2AE↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-28h], 0
                mov     r15, rdx
                movzx   ebp, r8b
                mov     rsi, rcx
                movzx   r14d, r9b
                mov     r8d, ebp
                lea     eax, [rbp-1]
                test    ebp, eax
                jnz     loc_1409BC21E
                mov     rax, 0FFFF800000000000h
                cmp     rcx, rax
                jb      short loc_1409BC118
                cmp     rdx, 0CCh
                jnz     loc_1409BC21E
                cmp     bpl, 1
                jnz     loc_1409BC21E
                test    r9b, r9b
                jnz     loc_1409BC21E

loc_1409BC118:                          ; CODE XREF: sub_1409BC0B0+46↑j
                mov     eax, cs:dword_140C34600
                lea     r9, unk_140C330E0
                inc     eax
                xor     ebx, ebx
                mov     cs:dword_140C34600, eax
                xor     edx, edx
                mov     rcx, r9

loc_1409BC134:                          ; CODE XREF: sub_1409BC0B0+A8↓j
                mov     eax, [rcx+20h]
                test    al, 1
                jz      short loc_1409BC144
                cmp     [rcx], rsi
                jz      loc_1409BC1D3

loc_1409BC144:                          ; CODE XREF: sub_1409BC0B0+89↑j
                test    rbx, rbx
                jnz     short loc_1409BC14F
                test    eax, eax
                cmovz   rbx, rcx

loc_1409BC14F:                          ; CODE XREF: sub_1409BC0B0+97↑j
                inc     edx
                add     rcx, 28h ; '('
                cmp     edx, 20h ; ' '
                jb      short loc_1409BC134
                test    rbx, rbx
                jz      loc_1409BC21E
                mov     rcx, rbx
                mov     rax, 6666666666666667h
                sub     rcx, r9
                mov     r9d, 4
                imul    rcx
                mov     rcx, r14
                mov     rdi, rdx
                not     rcx
                sar     rdi, 4
                lea     rdx, [rsp+48h+var_28]
                mov     rax, rdi
                and     rcx, rsi
                shr     rax, 3Fh
                add     rdi, rax
                call    sub_1409BBA9C
                mov     [rbx], rsi
                mov     [rbx+24h], bpl
                mov     [rbx+25h], r14b
                mov     [rbx+10h], r15
                test    eax, eax
                jns     short loc_1409BC1E2
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     [rbx+8], rcx
                mov     dword ptr [rbx+20h], 3

loc_1409BC1CE:                          ; CODE XREF: sub_1409BC0B0+18D↓j
                lea     eax, [rdi+1]
                jmp     short loc_1409BC220
; ---------------------------------------------------------------------------

loc_1409BC1D3:                          ; CODE XREF: sub_1409BC0B0+8E↑j
                test    al, 8
                jz      short loc_1409BC21E
                and     eax, 0FFFFFFF7h
                mov     [rcx+20h], eax
                lea     eax, [rdx+1]
                jmp     short loc_1409BC220
; ---------------------------------------------------------------------------

loc_1409BC1E2:                          ; CODE XREF: sub_1409BC0B0+101↑j
                mov     rax, [rsp+48h+var_28]
                lea     rdx, [rsp+48h+var_28]
                mov     [rbx+18h], rax
                mov     rax, gs:188h
                mov     sil, cs:byte_140C40664
                mov     rcx, [rax+0B8h]
                mov     [rbx+8], rcx
                mov     rcx, rbx
                call    sub_1409BC334
                test    eax, eax
                jnz     short loc_1409BC23A
                mov     cs:byte_140C40664, sil

loc_1409BC21E:                          ; CODE XREF: sub_1409BC0B0+33↑j
                                        ; sub_1409BC0B0+4F↑j ...
                xor     eax, eax

loc_1409BC220:                          ; CODE XREF: sub_1409BC0B0+121↑j
                                        ; sub_1409BC0B0+130↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409BC23A:                          ; CODE XREF: sub_1409BC0B0+165↑j
                mov     [rbx+20h], eax
                jmp     short loc_1409BC1CE
sub_1409BC0B0   endp

; ---------------------------------------------------------------------------
byte_1409BC23F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401280B8↑o

; =============== S U B R O U T I N E =======================================


sub_1409BC248   proc near               ; CODE XREF: sub_1409B9F08+A1↑p
                                        ; sub_1409BA4F4+2FA↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lea     eax, [rcx-1]
                lea     edx, [rcx-1]
                cmp     eax, 1Fh
                ja      short loc_1409BC29C
                lea     rbx, [rdx+rdx*4]
                lea     rdi, unk_140C33100
                mov     eax, [rdi+rbx*8]
                test    eax, eax
                jz      short loc_1409BC29C
                and     al, 0Ch
                cmp     al, 4
                jnz     short loc_1409BC28B
                and     dword ptr [rdi+rbx*8], 0
                mov     ecx, cs:dword_140C34600
                inc     ecx
                mov     cs:dword_140C34600, ecx

loc_1409BC287:                          ; CODE XREF: sub_1409BC248+4C↓j
                                        ; sub_1409BC248+52↓j
                mov     al, 1
                jmp     short loc_1409BC29E
; ---------------------------------------------------------------------------

loc_1409BC28B:                          ; CODE XREF: sub_1409BC248+2B↑j
                mov     ecx, edx
                call    sub_1409BC450
                test    al, al
                jz      short loc_1409BC287
                and     dword ptr [rdi+rbx*8], 0
                jmp     short loc_1409BC287
; ---------------------------------------------------------------------------

loc_1409BC29C:                          ; CODE XREF: sub_1409BC248+13↑j
                                        ; sub_1409BC248+25↑j
                xor     al, al

loc_1409BC29E:                          ; CODE XREF: sub_1409BC248+41↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC248   endp

algn_1409BC2AA:                         ; DATA XREF: .pdata:00000001401280C4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BC2B0   proc near               ; CODE XREF: sub_14051153C+C5↑p
                                        ; DATA XREF: .pdata:00000001401280D0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     sil, sil
                lea     rbx, unk_140C330E0
                xor     edi, edi
                mov     rbp, rdx
                mov     r14, rcx
                lea     r15d, [rdi+1]

loc_1409BC2DE:                          ; CODE XREF: sub_1409BC2B0+5F↓j
                mov     eax, [rbx+20h]
                test    r15b, al
                jz      short loc_1409BC305
                mov     rax, [rbx]
                cmp     rax, r14
                jb      short loc_1409BC305
                cmp     rax, rbp
                ja      short loc_1409BC305
                lea     ecx, [rdi+1]
                call    sub_1409BC248
                test    al, al
                movzx   esi, sil
                cmovnz  esi, r15d

loc_1409BC305:                          ; CODE XREF: sub_1409BC2B0+34↑j
                                        ; sub_1409BC2B0+3C↑j ...
                add     edi, r15d
                add     rbx, 28h ; '('
                cmp     edi, 20h ; ' '
                jb      short loc_1409BC2DE
                mov     rbx, [rsp+38h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC2B0   endp

byte_1409BC32E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001401280D0↑o

; =============== S U B R O U T I N E =======================================


sub_1409BC334   proc near               ; CODE XREF: sub_1409BC0B0+15E↑p
                                        ; sub_1409BC398+84↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     r11, rdx
                mov     rdx, [rcx+10h]
                mov     r10, rcx
                mov     r8b, [rcx+24h]
                xor     ebx, ebx
                mov     rcx, r11
                call    sub_1405120C4
                movzx   ecx, byte ptr [r10+25h]
                lea     r9d, [rbx+5]
                movzx   r8d, byte ptr [r10+24h]
                not     rcx
                and     rcx, rax
                mov     rdx, r11
                call    sub_1409BBA9C
                test    eax, eax
                jns     short loc_1409BC379
                xor     eax, eax
                jmp     short loc_1409BC38B
; ---------------------------------------------------------------------------

loc_1409BC379:                          ; CODE XREF: sub_1409BC334+3F↑j
                cmp     eax, 103h
                mov     ecx, 2
                cmovz   ebx, ecx
                or      ebx, 1
                mov     eax, ebx

loc_1409BC38B:                          ; CODE XREF: sub_1409BC334+43↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC334   endp

algn_1409BC392:                         ; DATA XREF: .pdata:00000001401280DC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409BC398   proc near               ; CODE XREF: sub_1409BC598+25↓p
                                        ; DATA XREF: .pdata:00000001401280E8↑o

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                mov     edx, cs:dword_140C34600
                and     [rsp+28h+arg_8], 0
                inc     edx
                mov     ecx, ecx
                mov     cs:dword_140C34600, edx
                lea     rdx, [rcx+rcx*4]
                lea     rcx, unk_140C330E0
                lea     rbx, [rcx+rdx*8]
                mov     ecx, [rbx+20h]
                test    cl, 8
                jz      short loc_1409BC3D3
                and     ecx, 0FFFFFFF7h
                mov     [rbx+20h], ecx
                jmp     short loc_1409BC43E
; ---------------------------------------------------------------------------

loc_1409BC3D3:                          ; CODE XREF: sub_1409BC398+31↑j
                test    cl, 10h
                jnz     short loc_1409BC3E9
                lea     rdx, [rbx+18h]
                mov     rcx, rbx
                call    sub_140512068
                cmp     eax, 1
                jz      short loc_1409BC43E

loc_1409BC3E9:                          ; CODE XREF: sub_1409BC398+3E↑j
                movzx   ecx, byte ptr [rbx+25h]
                lea     rdx, [rsp+28h+arg_8]
                movzx   r8d, byte ptr [rbx+24h]
                not     rcx
                and     rcx, [rbx]
                mov     r9d, 4
                call    sub_1409BBA9C
                test    eax, eax
                jns     short loc_1409BC414
                or      dword ptr [rbx+20h], 2

loc_1409BC410:                          ; CODE XREF: sub_1409BC398+98↓j
                xor     al, al
                jmp     short loc_1409BC440
; ---------------------------------------------------------------------------

loc_1409BC414:                          ; CODE XREF: sub_1409BC398+72↑j
                lea     rdx, [rsp+28h+arg_8]
                mov     rcx, rbx
                call    sub_1409BC334
                mov     ecx, [rbx+20h]
                mov     edx, eax
                test    eax, eax
                jnz     short loc_1409BC432
                or      ecx, 2
                mov     [rbx+20h], ecx
                jmp     short loc_1409BC410
; ---------------------------------------------------------------------------

loc_1409BC432:                          ; CODE XREF: sub_1409BC398+90↑j
                mov     eax, ecx
                xor     eax, edx
                and     eax, 2
                xor     eax, ecx
                mov     [rbx+20h], eax

loc_1409BC43E:                          ; CODE XREF: sub_1409BC398+39↑j
                                        ; sub_1409BC398+4F↑j
                mov     al, 1

loc_1409BC440:                          ; CODE XREF: sub_1409BC398+7A↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC398   endp

algn_1409BC447:                         ; DATA XREF: .pdata:00000001401280E8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409BC450   proc near               ; CODE XREF: sub_1409BC248+45↑p
                                        ; sub_1409BC758+2C↓p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                mov     edx, cs:dword_140C34600
                and     [rsp+28h+arg_8], 0
                inc     edx
                mov     ecx, ecx
                mov     cs:dword_140C34600, edx
                lea     rdx, [rcx+rcx*4]
                lea     rcx, unk_140C330E0
                lea     rbx, [rcx+rdx*8]
                mov     ecx, [rbx+20h]
                test    cl, 2
                jz      short loc_1409BC490
                and     ecx, 0FFFFFFFDh
                mov     [rbx+20h], ecx

loc_1409BC489:                          ; CODE XREF: sub_1409BC450+54↓j
                mov     al, 1
                jmp     loc_1409BC511
; ---------------------------------------------------------------------------

loc_1409BC490:                          ; CODE XREF: sub_1409BC450+31↑j
                test    cl, 10h
                jnz     short loc_1409BC4A6
                lea     rdx, [rbx+18h]
                mov     rcx, rbx
                call    sub_140512068
                cmp     eax, 1
                jz      short loc_1409BC489

loc_1409BC4A6:                          ; CODE XREF: sub_1409BC450+43↑j
                movzx   ecx, byte ptr [rbx+25h]
                lea     rdx, [rsp+28h+arg_8]
                movzx   r8d, byte ptr [rbx+24h]
                not     rcx
                and     rcx, [rbx]
                mov     r9d, 4
                call    sub_1409BBA9C
                test    eax, eax
                jns     short loc_1409BC4D1

loc_1409BC4C9:                          ; CODE XREF: sub_1409BC450+99↓j
                or      dword ptr [rbx+20h], 8

loc_1409BC4CD:                          ; CODE XREF: sub_1409BC450+B5↓j
                xor     al, al
                jmp     short loc_1409BC511
; ---------------------------------------------------------------------------

loc_1409BC4D1:                          ; CODE XREF: sub_1409BC450+77↑j
                lea     rdx, [rsp+28h+arg_8]
                mov     rcx, rbx
                call    sub_140512068
                test    eax, eax
                jnz     short loc_1409BC4EB
                mov     cs:byte_140C40664, 1
                jmp     short loc_1409BC4C9
; ---------------------------------------------------------------------------

loc_1409BC4EB:                          ; CODE XREF: sub_1409BC450+90↑j
                lea     rdx, [rsp+28h+arg_8]
                mov     rcx, rbx
                call    sub_1409BC520
                mov     ecx, [rbx+20h]
                test    eax, eax
                jnz     short loc_1409BC507
                or      ecx, 8
                mov     [rbx+20h], ecx
                jmp     short loc_1409BC4CD
; ---------------------------------------------------------------------------

loc_1409BC507:                          ; CODE XREF: sub_1409BC450+AD↑j
                shr     ecx, 3
                not     cl
                and     cl, 1
                mov     al, cl

loc_1409BC511:                          ; CODE XREF: sub_1409BC450+3B↑j
                                        ; sub_1409BC450+7F↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC450   endp

algn_1409BC518:                         ; DATA XREF: .pdata:00000001401280F4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409BC520   proc near               ; CODE XREF: sub_1409BC450+A3↑p
                                        ; sub_1409BC5E0:loc_1409BC71F↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     r10, rdx
                mov     rdx, [rcx+18h]
                mov     rbx, rcx
                mov     r8b, [rcx+24h]
                mov     rcx, r10
                call    sub_1405120C4
                movzx   ecx, byte ptr [rbx+25h]
                mov     r9d, 5
                movzx   r8d, byte ptr [rbx+24h]
                not     rcx
                and     rcx, rax
                mov     rdx, r10
                call    sub_1409BBA9C
                mov     ecx, eax
                test    eax, eax
                jns     short loc_1409BC566
                xor     eax, eax
                jmp     short loc_1409BC58A
; ---------------------------------------------------------------------------

loc_1409BC566:                          ; CODE XREF: sub_1409BC520+40↑j
                mov     eax, [rbx+20h]
                test    al, 4
                jz      short loc_1409BC572
                or      eax, 5
                jmp     short loc_1409BC574
; ---------------------------------------------------------------------------

loc_1409BC572:                          ; CODE XREF: sub_1409BC520+4B↑j
                xor     eax, eax

loc_1409BC574:                          ; CODE XREF: sub_1409BC520+50↑j
                mov     [rbx+20h], eax
                cmp     ecx, 103h
                jnz     short loc_1409BC585
                or      eax, 9
                mov     [rbx+20h], eax

loc_1409BC585:                          ; CODE XREF: sub_1409BC520+5D↑j
                mov     eax, 1

loc_1409BC58A:                          ; CODE XREF: sub_1409BC520+44↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC520   endp

algn_1409BC591:                         ; DATA XREF: .pdata:0000000140128100↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409BC598   proc near               ; CODE XREF: sub_140510EDC+16D↑p
                                        ; sub_140510EDC+184↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                lea     rdi, unk_140C33100

loc_1409BC5AB:                          ; CODE XREF: sub_1409BC598+33↓j
                mov     ecx, [rdi]
                mov     eax, ecx
                and     eax, 5
                cmp     al, 5
                jnz     short loc_1409BC5C2
                and     ecx, 0FFFFFFFBh
                mov     [rdi], ecx
                mov     ecx, ebx
                call    sub_1409BC398

loc_1409BC5C2:                          ; CODE XREF: sub_1409BC598+1C↑j
                inc     ebx
                add     rdi, 28h ; '('
                cmp     ebx, 20h ; ' '
                jb      short loc_1409BC5AB
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC598   endp

algn_1409BC5D9:                         ; DATA XREF: .pdata:000000014012810C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409BC5E0   proc near               ; CODE XREF: sub_140512040+16↑p
                                        ; DATA XREF: .pdata:0000000140128118↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r15
                sub     rsp, 20h
                and     [rsp+38h+arg_8], 0
                cmp     cs:byte_140C40664, 0
                jz      loc_1409BC73C
                mov     r10d, cs:dword_140C34600
                lea     rdx, unk_140C330E8
                mov     rax, gs:188h
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     r15, 0FFFF800000000000h
                mov     rbp, [rax+0B8h]

loc_1409BC634:                          ; CODE XREF: sub_1409BC5E0+A9↓j
                mov     eax, [rdx+18h]
                test    al, 0Ah
                jz      short loc_1409BC67B
                mov     r8, [rdx-8]
                cmp     r8, r15
                jnb     short loc_1409BC649
                cmp     [rdx], rbp
                jnz     short loc_1409BC67B

loc_1409BC649:                          ; CODE XREF: sub_1409BC5E0+62↑j
                movzx   eax, byte ptr [rdx+1Dh]
                lea     r9, [rcx+1000h]
                not     rax
                and     rax, r8
                cmp     rax, rcx
                jb      short loc_1409BC664
                cmp     rax, r9
                jb      short loc_1409BC69A

loc_1409BC664:                          ; CODE XREF: sub_1409BC5E0+7D↑j
                movzx   r8d, byte ptr [rdx+1Ch]
                add     r8, rax
                cmp     r8, rax
                jb      short loc_1409BC67B
                cmp     r8, rcx
                jbe     short loc_1409BC67B
                cmp     r8, r9
                jbe     short loc_1409BC69A

loc_1409BC67B:                          ; CODE XREF: sub_1409BC5E0+59↑j
                                        ; sub_1409BC5E0+67↑j ...
                add     rdx, 28h ; '('
                lea     rax, dword_140C335E8
                cmp     rdx, rax
                jl      short loc_1409BC634
                mov     eax, cs:dword_140C34600
                cmp     r10d, eax
                jz      loc_1409BC73C

loc_1409BC69A:                          ; CODE XREF: sub_1409BC5E0+82↑j
                                        ; sub_1409BC5E0+99↑j
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1409B9028
                mov     sil, al
                mov     cs:byte_140C40664, 0
                lea     rbx, unk_140C33105

loc_1409BC6B4:                          ; CODE XREF: sub_1409BC5E0+152↓j
                mov     ecx, [rbx-5]
                test    cl, 0Ah
                jz      short loc_1409BC724
                lea     rdi, [rbx-25h]
                mov     rdx, [rdi]
                cmp     rdx, r15
                jnb     short loc_1409BC6D7
                cmp     [rbx-1Dh], rbp
                jz      short loc_1409BC6D7
                mov     cs:byte_140C40664, 1
                jmp     short loc_1409BC724
; ---------------------------------------------------------------------------

loc_1409BC6D7:                          ; CODE XREF: sub_1409BC5E0+E6↑j
                                        ; sub_1409BC5E0+EC↑j
                movzx   ecx, byte ptr [rbx]
                mov     r9d, 4
                movzx   r8d, byte ptr [rbx-1]
                not     rcx
                and     rcx, rdx
                lea     rdx, [rsp+38h+arg_8]
                call    sub_1409BBA9C
                test    eax, eax
                js      short loc_1409BC724
                mov     eax, [rbx-5]
                lea     rdx, [rsp+38h+arg_8]
                mov     rcx, rdi
                test    al, 2
                jz      short loc_1409BC71F
                mov     rax, [rsp+38h+arg_8]
                mov     [rbx-0Dh], rax
                call    sub_1409BC334
                test    eax, eax
                jz      short loc_1409BC724
                mov     [rbx-5], eax
                jmp     short loc_1409BC724
; ---------------------------------------------------------------------------

loc_1409BC71F:                          ; CODE XREF: sub_1409BC5E0+126↑j
                call    sub_1409BC520

loc_1409BC724:                          ; CODE XREF: sub_1409BC5E0+DA↑j
                                        ; sub_1409BC5E0+F5↑j ...
                add     rbx, 28h ; '('
                lea     rax, unk_140C33605
                cmp     rbx, rax
                jl      short loc_1409BC6B4
                mov     cl, sil
                call    sub_1409B9190

loc_1409BC73C:                          ; CODE XREF: sub_1409BC5E0+1F↑j
                                        ; sub_1409BC5E0+B4↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC5E0   endp

byte_1409BC750  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140128118↑o

; =============== S U B R O U T I N E =======================================


sub_1409BC758   proc near               ; CODE XREF: sub_1403CF678+E60D8↑p
                                        ; DATA XREF: .pdata:0000000140128124↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, 1

loc_1409BC763:                          ; CODE XREF: sub_1409BC758+36↓j
                lea     ecx, [rbx-1]
                lea     r8, [rcx+rcx*4]
                lea     r9, unk_140C33100
                mov     edx, [r9+r8*8]
                mov     eax, edx
                and     al, 5
                cmp     al, 1
                jnz     short loc_1409BC789
                or      edx, 4
                mov     [r9+r8*8], edx
                call    sub_1409BC450

loc_1409BC789:                          ; CODE XREF: sub_1409BC758+23↑j
                inc     ebx
                cmp     ebx, 20h ; ' '
                jbe     short loc_1409BC763
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BC758   endp

algn_1409BC797:                         ; DATA XREF: .pdata:0000000140128124↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1409BC7A0   proc near               ; CODE XREF: KdRefreshDebuggerNotPresent+E6216↑p
                                        ; sub_1409BB6C8+13E↑p
                                        ; DATA XREF: ...

var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = dword ptr -18h
var_14          = word ptr -14h
var_12          = word ptr -12h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_8           = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                movzx   r8d, word ptr [rcx]
                lea     rax, [rbp+var_40]
                mov     rcx, [rcx+8]
                lea     rbx, unk_140CF5400
                and     [rbp+var_40], 0
                xorps   xmm0, xmm0
                and     [rbp+var_C], 0
                xorps   xmm1, xmm1
                mov     [rsp+70h+var_48], rax
                mov     rdx, rbx
                xor     r9d, r9d
                mov     [rsp+70h+var_50], 4
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_28], xmm1
                call    sub_1409BBB9C
                mov     ecx, [rbp+var_40]
                mov     r8d, 10h
                mov     edx, cs:dword_140C12530
                add     rcx, r8
                cmp     rcx, rdx
                jbe     short loc_1409BC819
                lea     eax, [rdx-10h]
                mov     [rbp+var_40], eax

loc_1409BC819:                          ; CODE XREF: sub_1409BC7A0+71↑j
                movzx   eax, cs:word_140CFC528
                lea     rcx, [rbp+var_18]
                mov     [rbp+var_14], ax
                lea     r9, xmmword_140C320A0
                mov     [rbp+var_18], 3230h
                lea     rdx, [rbp+var_28]
                mov     eax, gs:1A4h
                mov     [rbp+var_12], ax
                mov     eax, [rbp+var_40]
                mov     word ptr [rbp+var_28], r8w
                lea     r8, [rbp+var_38]
                mov     qword ptr [rbp+var_28+8], rcx
                mov     ecx, 3
                mov     [rbp+var_10], eax
                mov     word ptr [rbp+var_38], ax
                mov     qword ptr [rbp+var_38+8], rbx
                call    cs:KdSendPacket
                nop     dword ptr [rax+rax+00h]
                call    sub_140511E00
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+70h+arg_8]
                add     rsp, 70h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409BC7A0
sub_1409BC7A0   endp

algn_1409BC892:                         ; DATA XREF: .pdata:0000000140128130↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1409BC898   proc near               ; CODE XREF: sub_1409BB848+120↑p
                                        ; DATA XREF: .pdata:000000014012813C↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = dword ptr -18h
var_14          = word ptr -14h
var_12          = word ptr -12h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_10], rbx
                mov     [rsp-18h+arg_18], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                movzx   r8d, word ptr [rcx]
                lea     rax, [rbp+var_40]
                mov     rcx, [rcx+8]
                lea     rdi, unk_140CF5400
                and     [rbp+var_40], 0
                mov     rbx, rdx
                xorps   xmm0, xmm0
                mov     [rsp+70h+var_48], rax
                xorps   xmm1, xmm1
                mov     dword ptr [rsp+70h+var_50], 4
                mov     rdx, rdi
                xor     r9d, r9d
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_28], xmm1
                call    sub_1409BBB9C
                mov     ecx, [rbp+var_40]
                mov     r15d, 10h
                mov     edx, cs:dword_140C12530
                add     rcx, r15
                cmp     rcx, rdx
                jbe     short loc_1409BC919
                lea     eax, [rdx-10h]
                mov     [rbp+var_40], eax

loc_1409BC919:                          ; CODE XREF: sub_1409BC898+79↑j
                movzx   eax, cs:word_140CFC528
                lea     r14, xmmword_140C320A0
                mov     [rbp+var_14], ax
                lea     r8, [rbp+var_38]
                mov     [rbp+var_18], 3231h
                lea     rdx, [rbp+var_28]
                mov     eax, gs:1A4h
                mov     r9, r14
                mov     ecx, [rbp+var_40]
                mov     [rbp+var_12], ax
                movzx   eax, word ptr [rbx+2]
                mov     [rbp+var_C], eax
                lea     rax, [rbp+var_18]
                mov     [rbp+var_10], ecx
                mov     word ptr [rbp+var_38], cx
                mov     ecx, 3
                mov     qword ptr [rbp+var_28+8], rax
                mov     word ptr [rbp+var_28], r15w
                mov     qword ptr [rbp+var_38+8], rdi
                call    cs:KdSendPacket
                nop     dword ptr [rax+rax+00h]
                mov     eax, 1000h
                mov     word ptr [rbp+var_28+2], r15w
                mov     word ptr [rbp+var_38+2], ax

loc_1409BC98A:                          ; CODE XREF: sub_1409BC898+11B↓j
                lea     r9, [rbp+var_40]
                mov     [rsp+70h+var_50], r14
                lea     r8, [rbp+var_38]
                mov     ecx, 3
                lea     rdx, [rbp+var_28]
                call    cs:KdReceivePacket
                nop     dword ptr [rax+rax+00h]
                cmp     eax, 2
                jz      short loc_1409BC9F3
                test    eax, eax
                jnz     short loc_1409BC98A
                movzx   eax, word ptr [rbx+2]
                mov     rdx, rdi
                mov     r8d, [rbp+var_40]
                cmp     r8d, eax
                mov     rcx, [rbx+8]
                cmova   r8d, eax
                lea     rax, [rbp+var_40]
                mov     [rsp+70h+var_48], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+70h+var_50], 5
                mov     [rbp+var_40], r8d
                call    sub_1409BBB9C
                movzx   eax, word ptr [rbp+var_40]
                mov     [rbx], ax
                xor     al, al
                jmp     short loc_1409BC9F5
; ---------------------------------------------------------------------------

loc_1409BC9F3:                          ; CODE XREF: sub_1409BC898+117↑j
                mov     al, 1

loc_1409BC9F5:                          ; CODE XREF: sub_1409BC898+159↑j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409BC898
sub_1409BC898   endp

algn_1409BCA18:                         ; DATA XREF: .pdata:000000014012813C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409BCA20   proc near               ; CODE XREF: sub_1403398CC:loc_1403398F4↑p
                                        ; sub_140339904+140BED↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 40h
                xor     r10d, r10d
                mov     rbx, r9
                cmp     dword ptr [r8], 80000003h
                mov     [r11+18h], r10b
                jnz     loc_1409BCB73
                mov     rax, [r8+20h]
                test    rax, rax
                jz      loc_1409BCB73
                mov     rdi, [r9+0F8h]
                cmp     rax, 5
                ja      loc_1409BCB5B
                sub     eax, 1
                jz      loc_1409BCB13
                sub     eax, 1
                jz      short loc_1409BCAD3
                sub     eax, 1
                jz      short loc_1409BCAA7
                sub     eax, 1
                jz      short loc_1409BCAA4
                cmp     eax, 1
                jnz     loc_1409BCB5B
                mov     r8b, [rsp+48h+arg_20]
                mov     [r11-20h], rdx
                mov     rdx, [r9+88h]
                mov     [r11-28h], rcx
                mov     rcx, [r9+80h]
                call    sub_1409BB600
                jmp     short loc_1409BCB0E
; ---------------------------------------------------------------------------

loc_1409BCAA4:                          ; CODE XREF: sub_1409BCA20+57↑j
                mov     r10b, 1

loc_1409BCAA7:                          ; CODE XREF: sub_1409BCA20+52↑j
                mov     r9b, [rsp+48h+arg_20]
                mov     r8b, r10b
                mov     [rsp+48h+var_18], rdx
                mov     rdx, [rbx+88h]
                mov     [rsp+48h+var_20], rcx
                mov     rcx, [rbx+80h]
                mov     [rsp+48h+var_28], rbx
                call    sub_1409BB9C0
                jmp     short loc_1409BCB0E
; ---------------------------------------------------------------------------

loc_1409BCAD3:                          ; CODE XREF: sub_1409BCA20+4D↑j
                mov     al, [rsp+48h+arg_20]
                movzx   r9d, word ptr [r9+0C0h]
                mov     r8, [rbx+0B8h]
                mov     [rsp+48h+var_18], rdx
                movzx   edx, word ptr [rbx+88h]
                mov     [rsp+48h+var_20], rcx
                mov     rcx, [rbx+80h]
                mov     byte ptr [rsp+48h+var_28], al
                call    sub_1409BB848
                movzx   eax, ax
                mov     [rbx+78h], rax

loc_1409BCB0E:                          ; CODE XREF: sub_1409BCA20+82↑j
                                        ; sub_1409BCA20+B1↑j
                mov     r10b, 1
                jmp     short loc_1409BCB5B
; ---------------------------------------------------------------------------

loc_1409BCB13:                          ; CODE XREF: sub_1409BCA20+44↑j
                movzx   r9d, word ptr [r9+88h]
                lea     rax, [rsp+48h+arg_10]
                mov     r8, [rbx+80h]
                mov     [rsp+48h+var_10], rax
                mov     al, [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], rdx
                mov     edx, [rbx+0C0h]
                mov     [rsp+48h+var_20], rcx
                mov     ecx, [rbx+0B8h]
                mov     byte ptr [rsp+48h+var_28], al
                call    sub_1409BB6C8
                mov     r10b, [rsp+48h+arg_10]
                movsxd  rcx, eax
                mov     [rbx+78h], rcx

loc_1409BCB5B:                          ; CODE XREF: sub_1409BCA20+3B↑j
                                        ; sub_1409BCA20+5C↑j ...
                mov     rax, [rbx+0F8h]
                cmp     rax, rdi
                jnz     short loc_1409BCB83
                inc     rax
                mov     [rbx+0F8h], rax
                jmp     short loc_1409BCB83
; ---------------------------------------------------------------------------

loc_1409BCB73:                          ; CODE XREF: sub_1409BCA20+1D↑j
                                        ; sub_1409BCA20+2A↑j
                mov     al, [rsp+48h+arg_28]
                mov     byte ptr [rsp+48h+var_20], al
                call    sub_140511B44
                mov     r10b, al

loc_1409BCB83:                          ; CODE XREF: sub_1409BCA20+145↑j
                                        ; sub_1409BCA20+151↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     al, r10b
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409BCA20   endp

algn_1409BCB92:                         ; DATA XREF: .pdata:0000000140128148↑o
                align 80h
                dq 80h dup(?)
PAGEKD          ends

; Section 13. (virtual address 009BD000)
; Virtual size                  : 0003211C ( 205084.)
; Section size in file          : 00032200 ( 205312.)
; Offset to raw data for section: 0090F200
; Flags 60000020: Text Executable Readable
; Alignment     : default
; ===========================================================================

; Segment type: Pure code
; Segment permissions: Read/Execute
PAGEVRFY        segment para public 'CODE' use64
                assume cs:PAGEVRFY
                ;org 1409BD000h
                assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
                dq 40000000000h, 400000002000h, 2000000200h, 3Eh
aDmavrfy0       db 'DmaVrfy0 ',0        ; DATA XREF: sub_1409CFE60+44↓o
                                        ; sub_1409CFE60+B8↓o ...
                align 10h
qword_1409BD030 dq 0FFFFFFFFFFFE7960h, 1C9C380h
                                        ; DATA XREF: sub_1409C8D50+45↓o
                                        ; sub_1409DAD4C:loc_1409DADA0↓o
qword_1409BD040 dq 140012h              ; DATA XREF: sub_1409DBBA8+BB↓o
                                        ; sub_1409DBFCC+27↓o
                dq offset aTcpipSys     ; "tcpip.sys"
qword_1409BD050 dq 1A0018h              ; DATA XREF: sub_1409CAB18+28↓o
                                        ; sub_140A71C98+1A2A1↓o
                dq offset aNtoskrnlExe_0 ; "ntoskrnl.exe"
qword_1409BD060 dq 0E000Ch              ; DATA XREF: sub_1409DBBA8+14B↓o
                                        ; sub_1409DBFCC+87↓o
                dq offset aTmSys        ; "tm.sys"
qword_1409BD070 dq 160014h              ; DATA XREF: sub_1409DBBA8+11B↓o
                                        ; sub_1409DBFCC+67↓o
                dq offset aMrxsmbSys    ; "mrxsmb.sys"
qword_1409BD080 dq 10000Eh              ; DATA XREF: sub_1409DBBA8+EB↓o
                                        ; sub_1409DBFCC+47↓o
                dq offset aTdxSys       ; "tdx.sys"
qword_1409BD090 dq 0E000Ch              ; DATA XREF: sub_1409DBBA8+1A5↓o
                                        ; sub_1409DBFCC+C7↓o
                dq offset aKsSys        ; "ks.sys"
qword_1409BD0A0 dq 160014h              ; DATA XREF: sub_1409DBBA8+178↓o
                                        ; sub_1409DBFCC+A7↓o
                dq offset aWin32kSys    ; "win32k.sys"
dword_1409BD0B0 dd 0                    ; DATA XREF: sub_1409DF5D8+DF↓o
                                        ; sub_1409E0348+27C↓o ...
                dd 0Dh
                dq 20000001Dh, 0C00000006h, 0C0000000Ch, 0
qword_1409BD0D8 dq 1E001Ch              ; DATA XREF: sub_1409E6F04+EA↓o
                dq offset aSynth3dvspSys ; "synth3dvsp.sys"
qword_1409BD0E8 dq 1E001Ch              ; DATA XREF: sub_1409E6F04+D0↓o
                dq offset aSynth3dvscSys ; "synth3dvsc.sys"
qword_1409BD0F8 dq 120010h              ; DATA XREF: sub_14037E168+1177A5↑o
                dq offset aAmdkmdag     ; "amdkmdag"
qword_1409BD108 dq 0C000Ah              ; DATA XREF: sub_14037E168+117759↑o
                dq offset aRdbss        ; "rdbss"
qword_1409BD118 dq 80006h               ; DATA XREF: sub_14037E168+117777↑o
                dq offset aMup          ; "Mup"
qword_1409BD128 dq 80006h               ; DATA XREF: sub_14037E168+11778E↑o
                dq offset aCsc          ; "CSC"
qword_1409BD138 dq 10000Eh              ; DATA XREF: sub_1409E6F04+B3↓o
                dq offset aVidSys       ; "vid.sys"
qword_1409BD148 dq 10000Eh              ; DATA XREF: sub_1409DC194+181↓o
                dq offset aDesktop_0    ; "Desktop"
qword_1409BD158 dq 1C001Ah              ; DATA XREF: sub_1409DC194+19C↓o
                dq offset aWindowstation_0 ; "WindowStation"
dword_1409BD168 dd 0                    ; DATA XREF: sub_1409E0848:loc_1409E0A2B↓r
                                        ; sub_1409E1A5C+175↓o
                dd 38h
                dq 3800000038h, 800000038h, 800000008h, 0
off_1409BD190   dq offset aIrpMnWaitWake
                                        ; DATA XREF: sub_1409E5210+28↓r
                                        ; "IRP_MN_WAIT_WAKE"
                dq offset aIrpMnPowerSequ ; "IRP_MN_POWER_SEQUENCE"
                dq offset aIrpMnSetPower ; "IRP_MN_SET_POWER"
                dq offset aIrpMnQueryPowe ; "IRP_MN_QUERY_POWER"
                dq 0
aDriverVerifier_9:                      ; DATA XREF: sub_1409E5F40+37↓o
                text "UTF-16LE", '\DRIVER\VERIFIER_DDI',0
                align 8
aDriverVerifier_10:                     ; DATA XREF: sub_1409E6F04+2E↓o
                text "UTF-16LE", '\DRIVER\VERIFIER_FILTER',0
asc_1409BD218:                          ; DATA XREF: sub_1409E1828+2F↓o
                text "UTF-16LE", 8,0
                dd 4
                dq 400000008h, 400000004h, 3 dup(800000008h)
off_1409BD248   dq offset aPowerdeviceuns_0
                                        ; DATA XREF: sub_1409E5210+70↓r
                                        ; "PowerDeviceUnspecified"
                dq offset aPowerdeviced0_0 ; "PowerDeviceD0"
                dq offset aPowerdeviced1_0 ; "PowerDeviceD1"
                dq offset aPowerdeviced2_0 ; "PowerDeviceD2"
                dq offset aPowerdeviced3_0 ; "PowerDeviceD3"
                align 20h
off_1409BD280   dq offset aPowersystemuns
                                        ; DATA XREF: sub_1409E5210+5D↓r
                                        ; "PowerSystemUnspecified"
                dq offset aPowersystemwor ; "PowerSystemWorking.S0"
                dq offset aPowersystemsle ; "PowerSystemSleeping1.S1"
                dq offset aPowersystemsle_0 ; "PowerSystemSleeping2.S2"
                dq offset aPowersystemsle_1 ; "PowerSystemSleeping3.S3"
                dq offset aPowersystemhib ; "PowerSystemHibernate.S4"
                dq offset aPowersystemshu ; "PowerSystemShutdown.S5"
                align 20h
off_1409BD2C0   dq offset aPoweractionnon
                                        ; DATA XREF: sub_1409E5210+8A↓r
                                        ; "PowerActionNone"
                dq offset aPoweractionres ; "PowerActionReserved"
                dq offset aPoweractionsle ; "PowerActionSleep"
                dq offset aPoweractionhib ; "PowerActionHibernate"
                dq offset aPoweractionshu ; "PowerActionShutdown"
                dq offset aPoweractionshu_0 ; "PowerActionShutdownReset"
                dq offset aPoweractionshu_1 ; "PowerActionShutdownOff"
                dq offset aPoweractionwar ; "PowerActionWarmEject"
                dq 2 dup(0)
off_1409BD310   dq offset aIrpMnQueryAllD
                                        ; DATA XREF: sub_1409E54F0+1D↓o
                                        ; "IRP_MN_QUERY_ALL_DATA"
                dq offset aIrpMnQuerySing ; "IRP_MN_QUERY_SINGLE_INSTANCE"
                dq offset aIrpMnChangeSin ; "IRP_MN_CHANGE_SINGLE_INSTANCE"
                dq offset aIrpMnChangeSin_0 ; "IRP_MN_CHANGE_SINGLE_ITEM"
                dq offset aIrpMnEnableEve ; "IRP_MN_ENABLE_EVENTS"
                dq offset aIrpMnDisableEv ; "IRP_MN_DISABLE_EVENTS"
                dq offset aIrpMnEnableCol ; "IRP_MN_ENABLE_COLLECTION"
                dq offset aIrpMnDisableCo ; "IRP_MN_DISABLE_COLLECTION"
                dq offset aIrpMnReginfo ; "IRP_MN_REGINFO"
                dq offset aIrpMnExecuteMe ; "IRP_MN_EXECUTE_METHOD"
                dq 2 dup(0)
aAbcdefghijklmn:                        ; DATA XREF: sub_1409C8910+FC↓o
                text "UTF-16LE", 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy'
                text "UTF-16LE", 'z0123456789',0
                align 10h
qword_1409BD3F0 dq 400000004h, 800000002h, 800000008h, 400000008h, 3 dup(400000004h)
                                        ; DATA XREF: sub_1409D0C70+36↓o
                dq 800000008h, 400000004h, 400000012h, 1200000004h, 400000014h
                dq 800000008h, 800000000h, 800000008h, 400000004h, 1400000004h
                dq 400000008h, 200000008h, 0
; [00000003 BYTES: COLLAPSED FUNCTION nullsub_10. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 4
                dd 9Ah
                dq 0C200000003h, 30000009Bh, 9C000000C2h, 0C200000003h
                dq 30000009Dh, 81000000C4h, 0C400000003h, 300000082h, 0C4h
                dq 0E600000003h, 30000001Eh, 0F5000000C4h, 0C400000003h
                dq 3000000F7h, 37000000C4h, 0C400000003h, 300000038h, 0D7000000C4h
                dq 3
off_1409BD530   dq offset aIrpMnStartDevi
                                        ; DATA XREF: sub_1409E4750+2D↓o
                                        ; "IRP_MN_START_DEVICE"
                dq offset aIrpMnQueryRemo ; "IRP_MN_QUERY_REMOVE_DEVICE"
                dq offset aIrpMnRemoveDev ; "IRP_MN_REMOVE_DEVICE - "
                dq offset aIrpMnCancelRem ; "IRP_MN_CANCEL_REMOVE_DEVICE"
                dq offset aIrpMnStopDevic ; "IRP_MN_STOP_DEVICE"
                dq offset aIrpMnQueryStop ; "IRP_MN_QUERY_STOP_DEVICE"
                dq offset aIrpMnCancelSto ; "IRP_MN_CANCEL_STOP_DEVICE"
                dq offset aIrpMnQueryDevi ; "IRP_MN_QUERY_DEVICE_RELATIONS"
                dq offset aIrpMnQueryInte ; "IRP_MN_QUERY_INTERFACE"
                dq offset aIrpMnQueryCapa ; "IRP_MN_QUERY_CAPABILITIES"
                dq offset aIrpMnQueryReso ; "IRP_MN_QUERY_RESOURCES"
                dq offset aIrpMnQueryReso_0 ; "IRP_MN_QUERY_RESOURCE_REQUIREMENTS"
                dq offset aIrpMnQueryDevi_0 ; "IRP_MN_QUERY_DEVICE_TEXT"
                dq offset aIrpMnFilterRes ; "IRP_MN_FILTER_RESOURCE_REQUIREMENTS"
                dq offset aInvalidIrpCode ; "INVALID_IRP_CODE"
                dq offset aIrpMnReadConfi ; "IRP_MN_READ_CONFIG"
                dq offset aIrpMnWriteConf ; "IRP_MN_WRITE_CONFIG"
                dq offset aIrpMnEject   ; "IRP_MN_EJECT"
                dq offset aIrpMnSetLock ; "IRP_MN_SET_LOCK"
                dq offset aIrpMnQueryId ; "IRP_MN_QUERY_ID"
                dq offset aIrpMnQueryPnpD ; "IRP_MN_QUERY_PNP_DEVICE_STATE"
                dq offset aIrpMnQueryBusI ; "IRP_MN_QUERY_BUS_INFORMATION"
                dq offset aIrpMnDeviceUsa ; "IRP_MN_DEVICE_USAGE_NOTIFICATION"
                dq offset aIrpMnSurpriseR ; "IRP_MN_SURPRISE_REMOVAL"
                dq offset aIrpMnQueryLega ; "IRP_MN_QUERY_LEGACY_BUS_INFORMATION"
                align 20h
off_1409BD600   dq offset aIrpMjCreate  ; DATA XREF: sub_1409C94B0:loc_1409C94CE↓o
                                        ; "IRP_MJ_CREATE"
                dq offset aIrpMjCreateNam ; "IRP_MJ_CREATE_NAMED_PIPE"
                dq offset aIrpMjClose   ; "IRP_MJ_CLOSE"
                dq offset aIrpMjRead    ; "IRP_MJ_READ"
                dq offset aIrpMjWrite   ; "IRP_MJ_WRITE"
                dq offset aIrpMjQueryInfo ; "IRP_MJ_QUERY_INFORMATION"
                dq offset aIrpMjSetInform ; "IRP_MJ_SET_INFORMATION"
                dq offset aIrpMjQueryEa ; "IRP_MJ_QUERY_EA"
                dq offset aIrpMjSetEa   ; "IRP_MJ_SET_EA"
                dq offset aIrpMjFlushBuff ; "IRP_MJ_FLUSH_BUFFERS"
                dq offset aIrpMjQueryVolu ; "IRP_MJ_QUERY_VOLUME_INFORMATION"
                dq offset aIrpMjSetVolume ; "IRP_MJ_SET_VOLUME_INFORMATION"
                dq offset aIrpMjDirectory ; "IRP_MJ_DIRECTORY_CONTROL"
                dq offset aIrpMjFileSyste ; "IRP_MJ_FILE_SYSTEM_CONTROL"
                dq offset aIrpMjDeviceCon ; "IRP_MJ_DEVICE_CONTROL"
                dq offset aIrpMjInternalD ; "IRP_MJ_INTERNAL_DEVICE_CONTROL"
                dq offset aIrpMjShutdown ; "IRP_MJ_SHUTDOWN"
                dq offset aIrpMjLockContr ; "IRP_MJ_LOCK_CONTROL"
                dq offset aIrpMjCleanup ; "IRP_MJ_CLEANUP"
                dq offset aIrpMjCreateMai ; "IRP_MJ_CREATE_MAILSLOT"
                dq offset aIrpMjQuerySecu ; "IRP_MJ_QUERY_SECURITY"
                dq offset aIrpMjSetSecuri ; "IRP_MJ_SET_SECURITY"
                dq offset aIrpMjPower_0 ; "IRP_MJ_POWER"
                dq offset aIrpMjSystemCon_0 ; "IRP_MJ_SYSTEM_CONTROL"
                dq offset aIrpMjDeviceCha ; "IRP_MJ_DEVICE_CHANGE"
                dq offset aIrpMjQueryQuot ; "IRP_MJ_QUERY_QUOTA"
                dq offset aIrpMjSetQuota ; "IRP_MJ_SET_QUOTA"
                dq offset aIrpMjPnp_0   ; "IRP_MJ_PNP"
                dq 2 dup(0)
qword_1409BD6F0 dq 120010h              ; DATA XREF: sub_1409C889C:loc_1409C88AB↓o
                dq offset aNdisSys      ; "ndis.sys"
                dq 0E000Ch
                dq offset aCiDll_0      ; "ci.dll"
                dq 140012h
                dq offset aPshedDll_0   ; "pshed.dll"
                dq 120010h
                dq offset aClfsSys      ; "clfs.sys"
                dq 140012h
                dq offset aKdcomDll_0   ; "kdcom.dll"
                dq 10000Eh
                dq offset aHalDll_0     ; "hal.dll"
                dq 180016h
                dq offset aBootvidDll_0 ; "bootvid.dll"
                dq 140012h
                dq offset aMsrpcSys_0   ; "msrpc.sys"
                dq 0E000Ch
                dq offset aTmSys        ; "tm.sys"
                dq 120010h
                dq offset aNtfsSys      ; "ntfs.sys"
                dq 140012h
                dq offset aTcpipSys     ; "tcpip.sys"
                dq 160014h
                dq offset aFltmgrSys    ; "fltmgr.sys"
                dq 160014h
                dq offset aWin32kSys    ; "win32k.sys"
                dq 1E001Ch
                dq offset aWin32kbaseSys ; "win32kbase.sys"
                dq 1E001Ch
                dq offset aWin32kfullSys ; "win32kfull.sys"
                dq 1C001Ah
                dq offset aWin32kminSys ; "win32kmin.sys"
                dq 1C001Ah
                dq offset aWerkernelSys ; "werkernel.sys"
                dq 10000Eh
                dq offset aCngSys_0     ; "cng.sys"
aMrxsmbSys:                             ; DATA XREF: PAGEVRFY:00000001409BD078↑o
                text "UTF-16LE", 'mrxsmb.sys',0
                align 8
aTdxSys:                                ; DATA XREF: PAGEVRFY:00000001409BD088↑o
                text "UTF-16LE", 'tdx.sys',0
aTcpipSys:                              ; DATA XREF: PAGEVRFY:00000001409BD048↑o
                                        ; PAGEVRFY:00000001409BD798↑o
                text "UTF-16LE", 'tcpip.sys',0
                align 10h
aNtoskrnlExe_0:                         ; DATA XREF: PAGEVRFY:00000001409BD058↑o
                text "UTF-16LE", 'ntoskrnl.exe',0
                align 10h
aSynth3dvscSys:                         ; DATA XREF: PAGEVRFY:00000001409BD0F0↑o
                text "UTF-16LE", 'synth3dvsc.sys',0
                align 10h
aKsSys:                                 ; DATA XREF: PAGEVRFY:00000001409BD098↑o
                text "UTF-16LE", 'ks.sys',0
                align 20h
aWin32kSys:                             ; DATA XREF: PAGEVRFY:00000001409BD0A8↑o
                                        ; PAGEVRFY:00000001409BD7B8↑o
                text "UTF-16LE", 'win32k.sys',0
                align 8
aTmSys:                                 ; DATA XREF: PAGEVRFY:00000001409BD068↑o
                                        ; PAGEVRFY:00000001409BD778↑o
                text "UTF-16LE", 'tm.sys',0
                align 8
aMup:                                   ; DATA XREF: PAGEVRFY:00000001409BD120↑o
                text "UTF-16LE", 'Mup',0
aCsc:                                   ; DATA XREF: PAGEVRFY:00000001409BD130↑o
                text "UTF-16LE", 'CSC',0
aVidSys:                                ; DATA XREF: PAGEVRFY:00000001409BD140↑o
                text "UTF-16LE", 'vid.sys',0
aSynth3dvspSys:                         ; DATA XREF: PAGEVRFY:00000001409BD0E0↑o
                text "UTF-16LE", 'synth3dvsp.sys',0
                align 8
aIrpMjCreateNam db 'IRP_MJ_CREATE_NAMED_PIPE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD608↑o
                                        ; PAGEVRFD:0000000140D42DC0↓o
                align 8
aIrpMjCreate    db 'IRP_MJ_CREATE',0    ; DATA XREF: PAGEVRFY:off_1409BD600↑o
                                        ; PAGEVRFD:off_140D42DA0↓o
                align 8
aAmdkmdag:                              ; DATA XREF: PAGEVRFY:00000001409BD100↑o
                text "UTF-16LE", 'amdkmdag',0
                align 10h
aRdbss:                                 ; DATA XREF: PAGEVRFY:00000001409BD110↑o
                text "UTF-16LE", 'rdbss',0
                align 20h
aIrpMjQueryInfo db 'IRP_MJ_QUERY_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD628↑o
                                        ; PAGEVRFD:0000000140D42E40↓o
                align 20h
aIrpMjWrite     db 'IRP_MJ_WRITE',0     ; DATA XREF: PAGEVRFY:00000001409BD620↑o
                                        ; PAGEVRFD:0000000140D42E20↓o
                align 10h
aIrpMjRead      db 'IRP_MJ_READ',0      ; DATA XREF: PAGEVRFY:00000001409BD618↑o
                                        ; PAGEVRFD:0000000140D42E00↓o
                align 20h
aIrpMjClose     db 'IRP_MJ_CLOSE',0     ; DATA XREF: PAGEVRFY:00000001409BD610↑o
                                        ; PAGEVRFD:0000000140D42DE0↓o
                align 10h
aIrpMjFlushBuff db 'IRP_MJ_FLUSH_BUFFERS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD648↑o
                                        ; PAGEVRFD:0000000140D42EC0↓o
                align 8
aIrpMjSetEa     db 'IRP_MJ_SET_EA',0    ; DATA XREF: PAGEVRFY:00000001409BD640↑o
                                        ; PAGEVRFD:0000000140D42EA0↓o
                align 8
aIrpMjQueryEa   db 'IRP_MJ_QUERY_EA',0  ; DATA XREF: PAGEVRFY:00000001409BD638↑o
                                        ; PAGEVRFD:0000000140D42E80↓o
aIrpMjSetInform db 'IRP_MJ_SET_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD630↑o
                                        ; PAGEVRFD:0000000140D42E60↓o
                align 20h
aIrpMjFileSyste db 'IRP_MJ_FILE_SYSTEM_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD668↑o
                                        ; PAGEVRFD:0000000140D42F40↓o
                align 20h
aIrpMjDirectory db 'IRP_MJ_DIRECTORY_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD660↑o
                                        ; PAGEVRFD:0000000140D42F20↓o
                align 20h
aIrpMjSetVolume db 'IRP_MJ_SET_VOLUME_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD658↑o
                                        ; PAGEVRFD:0000000140D42F00↓o
                align 20h
aIrpMjQueryVolu db 'IRP_MJ_QUERY_VOLUME_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD650↑o
                                        ; PAGEVRFD:0000000140D42EE0↓o
aIrpMjLockContr db 'IRP_MJ_LOCK_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD688↑o
                                        ; PAGEVRFD:0000000140D42FC0↓o
                align 8
aIrpMjShutdown  db 'IRP_MJ_SHUTDOWN',0  ; DATA XREF: PAGEVRFY:00000001409BD680↑o
                                        ; PAGEVRFD:0000000140D42FA0↓o
aIrpMjInternalD db 'IRP_MJ_INTERNAL_DEVICE_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD678↑o
                                        ; PAGEVRFD:0000000140D42F80↓o
                align 8
aIrpMjDeviceCon db 'IRP_MJ_DEVICE_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD670↑o
                                        ; PAGEVRFD:0000000140D42F60↓o
                align 20h
aIrpMjSetSecuri db 'IRP_MJ_SET_SECURITY',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD6A8↑o
                                        ; PAGEVRFD:0000000140D43040↓o
                align 8
aIrpMjQuerySecu db 'IRP_MJ_QUERY_SECURITY',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD6A0↑o
                                        ; PAGEVRFD:0000000140D43020↓o
                align 10h
aIrpMjCreateMai db 'IRP_MJ_CREATE_MAILSLOT',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD698↑o
                                        ; PAGEVRFD:0000000140D43000↓o
                align 8
aIrpMjCleanup   db 'IRP_MJ_CLEANUP',0   ; DATA XREF: PAGEVRFY:00000001409BD690↑o
                                        ; PAGEVRFD:0000000140D42FE0↓o
                align 8
aIrpMjQueryQuot db 'IRP_MJ_QUERY_QUOTA',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD6C8↑o
                                        ; PAGEVRFD:0000000140D430C0↓o
                align 10h
aIrpMjDeviceCha db 'IRP_MJ_DEVICE_CHANGE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD6C0↑o
                                        ; PAGEVRFD:0000000140D430A0↓o
                align 8
aIrpMjSystemCon_0 db 'IRP_MJ_SYSTEM_CONTROL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD6B8↑o
                                        ; PAGEVRFD:0000000140D43080↓o
                align 20h
aIrpMjPower_0   db 'IRP_MJ_POWER',0     ; DATA XREF: PAGEVRFY:00000001409BD6B0↑o
                                        ; PAGEVRFD:0000000140D43060↓o
                align 10h
aDesktop_0:                             ; DATA XREF: PAGEVRFY:00000001409BD150↑o
                text "UTF-16LE", 'Desktop',0
aWindowstation_0:                       ; DATA XREF: PAGEVRFY:00000001409BD160↑o
                text "UTF-16LE", 'WindowStation',0
                align 20h
aIrpMjPnp_0     db 'IRP_MJ_PNP',0       ; DATA XREF: PAGEVRFY:00000001409BD6D8↑o
                                        ; PAGEVRFD:0000000140D43100↓o
                align 10h
aIrpMjSetQuota  db 'IRP_MJ_SET_QUOTA',0 ; DATA XREF: PAGEVRFY:00000001409BD6D0↑o
                                        ; PAGEVRFD:0000000140D430E0↓o
                align 8
aIrpMnChangeSin_0 db 'IRP_MN_CHANGE_SINGLE_ITEM',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD328↑o
                align 8
aIrpMnChangeSin db 'IRP_MN_CHANGE_SINGLE_INSTANCE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD320↑o
                align 8
aIrpMnQuerySing db 'IRP_MN_QUERY_SINGLE_INSTANCE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD318↑o
                align 8
aIrpMnQueryAllD db 'IRP_MN_QUERY_ALL_DATA',0
                                        ; DATA XREF: PAGEVRFY:off_1409BD310↑o
                align 20h
aIrpMnDisableCo db 'IRP_MN_DISABLE_COLLECTION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD348↑o
                align 20h
aIrpMnEnableCol db 'IRP_MN_ENABLE_COLLECTION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD340↑o
                align 20h
aIrpMnDisableEv db 'IRP_MN_DISABLE_EVENTS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD338↑o
                align 8
aIrpMnEnableEve db 'IRP_MN_ENABLE_EVENTS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD330↑o
                align 10h
aIrpMnQueryRemo db 'IRP_MN_QUERY_REMOVE_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD538↑o
                align 10h
aIrpMnStartDevi db 'IRP_MN_START_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:off_1409BD530↑o
                align 8
aIrpMnExecuteMe db 'IRP_MN_EXECUTE_METHOD',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD358↑o
                align 20h
aIrpMnReginfo   db 'IRP_MN_REGINFO',0   ; DATA XREF: PAGEVRFY:00000001409BD350↑o
                align 10h
aIrpMnQueryStop db 'IRP_MN_QUERY_STOP_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD558↑o
                align 10h
aIrpMnStopDevic db 'IRP_MN_STOP_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD550↑o
                align 8
aIrpMnCancelRem db 'IRP_MN_CANCEL_REMOVE_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD548↑o
                align 8
aIrpMnRemoveDev db 'IRP_MN_REMOVE_DEVICE - ',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD540↑o
aIrpMnQueryCapa db 'IRP_MN_QUERY_CAPABILITIES',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD578↑o
                align 20h
aIrpMnQueryInte db 'IRP_MN_QUERY_INTERFACE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD570↑o
                align 8
aIrpMnQueryDevi db 'IRP_MN_QUERY_DEVICE_RELATIONS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD568↑o
                align 8
aIrpMnCancelSto db 'IRP_MN_CANCEL_STOP_DEVICE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD560↑o
                align 8
aIrpMnFilterRes db 'IRP_MN_FILTER_RESOURCE_REQUIREMENTS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD598↑o
                align 20h
aIrpMnQueryDevi_0 db 'IRP_MN_QUERY_DEVICE_TEXT',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD590↑o
                align 20h
aIrpMnQueryReso_0 db 'IRP_MN_QUERY_RESOURCE_REQUIREMENTS',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD588↑o
                align 8
aIrpMnQueryReso db 'IRP_MN_QUERY_RESOURCES',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD580↑o
                align 20h
aIrpMnEject     db 'IRP_MN_EJECT',0     ; DATA XREF: PAGEVRFY:00000001409BD5B8↑o
                align 10h
aIrpMnWriteConf db 'IRP_MN_WRITE_CONFIG',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5B0↑o
                align 8
aIrpMnReadConfi db 'IRP_MN_READ_CONFIG',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5A8↑o
                align 20h
aInvalidIrpCode db 'INVALID_IRP_CODE',0 ; DATA XREF: PAGEVRFY:00000001409BD5A0↑o
                align 8
aIrpMnQueryBusI db 'IRP_MN_QUERY_BUS_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5D8↑o
                align 8
aIrpMnQueryPnpD db 'IRP_MN_QUERY_PNP_DEVICE_STATE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5D0↑o
                align 8
aIrpMnQueryId   db 'IRP_MN_QUERY_ID',0  ; DATA XREF: PAGEVRFY:00000001409BD5C8↑o
aIrpMnSetLock   db 'IRP_MN_SET_LOCK',0  ; DATA XREF: PAGEVRFY:00000001409BD5C0↑o
aIrpMnWaitWake  db 'IRP_MN_WAIT_WAKE',0 ; DATA XREF: PAGEVRFY:off_1409BD190↑o
                align 10h
aIrpMnQueryLega db 'IRP_MN_QUERY_LEGACY_BUS_INFORMATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5F0↑o
                align 8
aIrpMnSurpriseR db 'IRP_MN_SURPRISE_REMOVAL',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5E8↑o
aIrpMnDeviceUsa db 'IRP_MN_DEVICE_USAGE_NOTIFICATION',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD5E0↑o
                align 8
aPowersystemuns db 'PowerSystemUnspecified',0
                                        ; DATA XREF: PAGEVRFY:off_1409BD280↑o
                align 10h
aIrpMnQueryPowe db 'IRP_MN_QUERY_POWER',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD1A8↑o
                align 8
aIrpMnSetPower  db 'IRP_MN_SET_POWER',0 ; DATA XREF: PAGEVRFY:00000001409BD1A0↑o
                align 20h
aIrpMnPowerSequ db 'IRP_MN_POWER_SEQUENCE',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD198↑o
                align 8
aPowersystemsle_1 db 'PowerSystemSleeping3.S3',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2A0↑o
aPowersystemsle_0 db 'PowerSystemSleeping2.S2',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD298↑o
aPowersystemsle db 'PowerSystemSleeping1.S1',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD290↑o
aPowersystemwor db 'PowerSystemWorking.S0',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD288↑o
                align 8
aPowerdeviced0_0 db 'PowerDeviceD0',0   ; DATA XREF: PAGEVRFY:00000001409BD250↑o
                align 8
aPowerdeviceuns_0 db 'PowerDeviceUnspecified',0
                                        ; DATA XREF: PAGEVRFY:off_1409BD248↑o
                align 20h
aPowersystemshu db 'PowerSystemShutdown.S5',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2B0↑o
                align 8
aPowersystemhib db 'PowerSystemHibernate.S4',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2A8↑o
aPoweractionnon db 'PowerActionNone',0  ; DATA XREF: PAGEVRFY:off_1409BD2C0↑o
aPowerdeviced3_0 db 'PowerDeviceD3',0   ; DATA XREF: PAGEVRFY:00000001409BD268↑o
                align 10h
aPowerdeviced2_0 db 'PowerDeviceD2',0   ; DATA XREF: PAGEVRFY:00000001409BD260↑o
                align 20h
aPowerdeviced1_0 db 'PowerDeviceD1',0   ; DATA XREF: PAGEVRFY:00000001409BD258↑o
                align 10h
aPoweractionshu db 'PowerActionShutdown',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2E0↑o
                align 8
aPoweractionhib db 'PowerActionHibernate',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2D8↑o
                align 20h
aPoweractionsle db 'PowerActionSleep',0 ; DATA XREF: PAGEVRFY:00000001409BD2D0↑o
                align 8
aPoweractionres db 'PowerActionReserved',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2C8↑o
                align 10h
aNdisSys:                               ; DATA XREF: PAGEVRFY:00000001409BD6F8↑o
                text "UTF-16LE", 'ndis.sys',0
                align 8
aPoweractionwar db 'PowerActionWarmEject',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2F8↑o
                align 20h
aPoweractionshu_1 db 'PowerActionShutdownOff',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2F0↑o
                align 8
aPoweractionshu_0 db 'PowerActionShutdownReset',0
                                        ; DATA XREF: PAGEVRFY:00000001409BD2E8↑o
                align 8
aKdcomDll_0:                            ; DATA XREF: PAGEVRFY:00000001409BD738↑o
                text "UTF-16LE", 'kdcom.dll'
                db 0
                db 0
                align 10h
aClfsSys:                               ; DATA XREF: PAGEVRFY:00000001409BD728↑o
                text "UTF-16LE", 'clfs.sys',0
                align 8
aPshedDll_0:                            ; DATA XREF: PAGEVRFY:00000001409BD718↑o
                text "UTF-16LE", 'pshed.dll',0
                align 20h
aCiDll_0:                               ; DATA XREF: PAGEVRFY:00000001409BD708↑o
                text "UTF-16LE", 'ci.dll',0
                align 10h
aNtfsSys:                               ; DATA XREF: PAGEVRFY:00000001409BD788↑o
                text "UTF-16LE", 'ntfs.sys',0
                align 8
aMsrpcSys_0:                            ; DATA XREF: PAGEVRFY:00000001409BD768↑o
                text "UTF-16LE", 'msrpc.sys',0
                align 20h
aBootvidDll_0:                          ; DATA XREF: PAGEVRFY:00000001409BD758↑o
                text "UTF-16LE", 'bootvid.dll',0
aHalDll_0:                              ; DATA XREF: PAGEVRFY:00000001409BD748↑o
                text "UTF-16LE", 'hal.dll',0
aWin32kminSys:                          ; DATA XREF: PAGEVRFY:00000001409BD7E8↑o
                text "UTF-16LE", 'win32kmin.sys',0
                align 8
aWin32kfullSys:                         ; DATA XREF: PAGEVRFY:00000001409BD7D8↑o
                text "UTF-16LE", 'win32kfull.sys',0
                align 8
aWin32kbaseSys:                         ; DATA XREF: PAGEVRFY:00000001409BD7C8↑o
                text "UTF-16LE", 'win32kbase.sys',0
                align 8
aFltmgrSys:                             ; DATA XREF: PAGEVRFY:00000001409BD7A8↑o
                text "UTF-16LE", 'fltmgr.sys',0
                align 20h
aCngSys_0:                              ; DATA XREF: PAGEVRFY:00000001409BD808↑o
                text "UTF-16LE", 'cng.sys',0
aWerkernelSys:                          ; DATA XREF: PAGEVRFY:00000001409BD7F8↑o
                text "UTF-16LE", 'werkernel.sys',0
                align 10h
qword_1409BE350 dq 2 dup(0)             ; DATA XREF: sub_1409E49C0+182↓o
xmmword_1409BE360 xmmword 4C1FC2FC34870E8246AAF7DB1E2C2980h
                                        ; DATA XREF: sub_1409C9F24+19↓r
                                        ; sub_1409CA08C+43↓o
aDriverHasAttem_1 db 'Driver has attempted to detach from a device object which is not',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D429C8↓o
                db 'attached to anything. This may occur if detach was called twice o'
                db 'n the',0Ah
                db 'same device object.',0
                align 10h
aADeviceIsDelet db 'A device is deleting itself while there is another device beneath'
                                        ; DATA XREF: PAGEVRFD:0000000140D429B8↓o
                db ' it in',0Ah
                db 'the driver stack. This may be because the caller has forgotten to'
                db ' call',0Ah
                db 'IoDetachDevice first, or the lower driver may have incorrectly de'
                db 'leted',0Ah
                db 'itself.',0
                align 10h
aCallerHasManua db 'Caller has manually copied the stack and has inadvertantly copied'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A08↓o
                db ' the',0Ah
                db 'upper layer',27h,'s completion routine. Please use',0Ah
                db 'IoCopyCurrentIrpStackLocationToNext.',0
                align 10h
aCallerIsForwar db 'Caller is forwarding an IRP that is currently queued beneath it! '
                                        ; DATA XREF: PAGEVRFD:0000000140D429F8↓o
                db 'The',0Ah
                db 'code handling IRPs returning STATUS_PENDING in this driver appear'
                db 's to',0Ah
                db 'be broken.',0
                align 8
aCallerHasPasse db 'Caller has passed in NULL as a DeviceObject.',0
                                        ; DATA XREF: PAGEVRFD:0000000140D429E8↓o
                align 20h
aADriverHasCall db 'A driver has called IoCallDriver without setting the CancelRoutin'
                                        ; DATA XREF: PAGEVRFD:0000000140D429D8↓o
                db 'e in',0Ah
                db 'the Irp to NULL.',0
                align 20h
aCallerOfIofree db 'Caller of IoFreeIrp is freeing an IRP that is still queued to a',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42A48↓o
                db 'thread!',0
aCallerOfIofree_0 db 'Caller of IoFreeIrp is freeing an IRP that is still in use!',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42A38↓o
                align 10h
aCallerIsComple db 'Caller is completing an IRP that is currently queued beneath it! '
                                        ; DATA XREF: PAGEVRFD:0000000140D42A28↓o
                db 'The',0Ah
                db 'code handling IRPs returning STATUS_PENDING in this driver appear'
                db 's to be',0Ah
                db 'broken.',0
                align 10h
aThisIrpIsAbout db 'This IRP is about to run out of stack locations. Someone may have'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A18↓o
                db 0Ah
                db 'forwarded this IRP from another stack.',0
                align 20h
aAnyWmiIrpMustH db 'Any WMI IRP must have status initialized to STATUS_NOT_SUPPORTED.'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A88↓o
                db 0
                align 10h
aAnyPowerIrpMus db 'Any Power IRP must have status initialized to STATUS_NOT_SUPPORTE'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A78↓o
                db 'D.',0
                align 20h
aAnyPnpIrpMustH db 'Any PNP IRP must have status initialized to STATUS_NOT_SUPPORTED.'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A68↓o
                db 0
                align 10h
aCallerOfIoinit db 'Caller of IoInitializeIrp has passed an IRP that was allocated wi'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A58↓o
                db 'th',0Ah
                db 'IoAllocateIrp. This is incorrect and unneccessary, and has caused'
                db ' a quota',0Ah
                db 'leak. Check the documentation for IoReuseIrp if this IRP is being'
                db 0Ah
                db 'recycled.',0
                align 10h
aCallerHasChang db 'Caller has changed the information field of an IRP it does not un'
                                        ; DATA XREF: PAGEVRFD:0000000140D42AC8↓o
                db 'derstand.',0
                align 20h
aCallerHasChang_0 db 'Caller has changed the status field of an IRP it does not underst'
                                        ; DATA XREF: PAGEVRFD:0000000140D42AB8↓o
                                        ; PAGEVRFD:0000000140D42C68↓o
                db 'and.',0
                align 8
aCallerHasTrash db 'Caller has trashed or has not properly copied IRP',27h,'s stack.',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42AA8↓o
                align 10h
aCallerHasForwa db 'Caller has forwarded an Irp while skipping a device object in the'
                                        ; DATA XREF: PAGEVRFD:0000000140D42A98↓o
                db ' stack.',0Ah
                db 'The caller is probably sending IRPs to the PDO instead of to the '
                db 'device',0Ah
                db 'returned by IoAttachDeviceToDeviceStack.',0
                align 10h
aTheDriverHasRe db 'The driver has responded to an IRP that is that is reserved for o'
                                        ; DATA XREF: PAGEVRFD:0000000140D42B08↓o
                db 'ther',0Ah
                db 'device objects elsewhere in the stack.',0
                align 20h
aTheDriverHasNo db 'The driver has not handled a required IRP. The driver must update'
                                        ; DATA XREF: PAGEVRFD:0000000140D42AF8↓o
                db ' the',0Ah
                db 'status of the IRP to indicate whether it',27h,'s been handled or '
                db 'not.',0
                align 10h
aPreviouslySetI db 'Previously set IRP_MJ_PNP status has been converted to',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42AE8↓o
                db 'STATUS_NOT_SUPPORTED. This failure status is reserved for use of '
                db 'the OS',0Ah
                db '- drivers cannot fail a PnP IRP with this value.',0
aNonSuccessfulN db 'Non-successful non-STATUS_NOT_SUPPORTED IRP status for IRP_MJ_PNP'
                                        ; DATA XREF: PAGEVRFD:0000000140D42AD8↓o
                db ' is',0Ah
                db 'being passed down stack. Failed PNP IRPs must be completed.',0
                align 10h
aThisDriverHasN db 'This driver has not filled out a dispatch routine for a required '
                                        ; DATA XREF: PAGEVRFD:0000000140D42B48↓o
                db 'IRP',0Ah
                db 'major function.',0
                align 10h
aAnIrpDispatchH db 'An IRP dispatch handler has not properly detached from the stack '
                                        ; DATA XREF: PAGEVRFD:0000000140D42B38↓o
                db 'below',0Ah
                db 'it upon receiving a remove IRP.',0
                align 20h
aPreviouslySetI_0 db 'Previously set IRP_MJ_POWER status has been converted to',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42B28↓o
                db 'STATUS_NOT_SUPPORTED. This failure status is reserved for use of '
                db 'the OS',0Ah
                db '- drivers cannot fail a Power IRP with this value.',0
                align 20h
aNonSuccessfulN_0 db 'Non-successful non-STATUS_NOT_SUPPORTED IRP status for IRP_MJ_POW'
                                        ; DATA XREF: PAGEVRFD:0000000140D42B18↓o
                db 'ER is',0Ah
                db 'being passed down stack. Failed POWER IRPs must be completed.',0
                align 10h
aAnIrpDispatchH_0 db 'An IRP dispatch handler has returned a status that is',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42B88↓o
                db 'inconsistent with the Irp',27h,'s IoStatus.Status field.',0
                align 20h
aAnIrpDispatchH_1 db 'An IRP dispatch handler for a bus filter has deleted it',27h,'s d'
                                        ; DATA XREF: PAGEVRFD:0000000140D42B78↓o
                db 'evice object,',0Ah
                db 'but the PDO is still present! Bus filters must clean up in FastIo'
                db 'Detach',0Ah
                db 'callbacks.',0
                align 20h
aAnIrpDispatchH_2 db 'An IRP dispatch handler for a PDO has deleted it',27h,'s device o'
                                        ; DATA XREF: PAGEVRFD:0000000140D42B68↓o
                db 'bject, but',0Ah
                db 'the hardware has not been reported as missing in a bus relations '
                db 'query.',0Ah,0
                align 10h
aIrpMjSystemCon_1 db 'IRP_MJ_SYSTEM_CONTROL has been completed by someone other than th'
                                        ; DATA XREF: PAGEVRFD:0000000140D42B58↓o
                db 'e',0Ah
                db 'ProviderId. This IRP should either have been completed earlier or'
                db 0Ah
                db 'should have been passed down.',0
                align 20h
aADriverSComple db 'A driver',27h,'s completion routine has not marked the IRP',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42BC8↓o
                db 'pending if the PendingReturned field was set in the IRP passed to'
                db ' it.',0Ah
                db 'This may cause the OS to freeze, especially if an error is return'
                db 'ed by the',0Ah
                db ' stack.',0
                align 10h
aIrpCompletionR db 'IRP completion routines must be in nonpagable code, and this one '
                                        ; DATA XREF: PAGEVRFD:0000000140D42BB8↓o
                db 'is not.',0
                align 20h
aAnIrpDispatchH_3 db 'An IRP dispatch handler has returned without passing down or comp'
                                        ; DATA XREF: PAGEVRFD:0000000140D42BA8↓o
                db 'leting',0Ah
                db 'this Irp or someone forgot to return STATUS_PENDING.',0
                align 20h
aAnIrpDispatchH_4 db 'An IRP dispatch handler has returned a status that is incorrect',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42B98↓o
                db '(0xFFFFFFFF). This is probably due to an uninitialized stack vari'
                db 'able.',0
                align 10h
aCallerHasCompl db 'Caller has completed successful IRP_MJ_PNP instead of passing it '
                                        ; DATA XREF: PAGEVRFD:0000000140D42C08↓o
                db 'down.',0
                align 20h
aCallerHasCompl_0 db 'Caller has completed a IRP_MJ_PNP it didn',27h,'t understand inst'
                                        ; DATA XREF: PAGEVRFD:0000000140D42BF8↓o
                db 'ead of',0Ah
                db 'passing it down.',0
                align 20h
aPdoHasForgotte db 'PDO has forgotten to fill out the device relation list with the P'
                                        ; DATA XREF: PAGEVRFD:0000000140D42BE8↓o
                db 'DO for',0Ah
                db 'the TargetDeviceRelation query.',0
aPdoHasNotRespo db 'PDO has not responded to a required IRP.',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42BD8↓o
                align 20h
aTheAddressFiel db 'The address field of the query capabilities structure in a query',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42C48↓o
                db 'capabilities IRP was not properly initialized to -1.',0
                align 20h
aTheSizeFieldOf db 'The size field of the query capabilities structure in a query',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42C38↓o
                db 'capabilities IRP was not properly initialized.',0
                align 10h
aTheVersionFiel db 'The version field of the query capabilities structure in a query',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42C28↓o
                db 'capabilities IRP was not properly initialized.',0
aCallerHasCompl_1 db 'Caller has completed untouched IRP_MJ_PNP (instead of passing the'
                                        ; DATA XREF: PAGEVRFD:0000000140D42C18↓o
                db ' irp',0Ah
                db 'down) or non-PDO has failed the irp using incorrect value of',0Ah
                db 'STATUS_NOT_SUPPORTED.',0
                align 20h
aADriverIsAttem db 'A driver is attempting to delete a device object that has already'
                                        ; DATA XREF: PAGEVRFD:0000000140D42C98↓o
                db ' been',0Ah
                db 'deleted via a prior call to IoDeleteDevice.',0
                align 20h
aADriverHasMark db 'A driver has marked an IRP pending but didn',27h,'t return STATUS'
                                        ; DATA XREF: PAGEVRFD:0000000140D42C88↓o
                db '_PENDING.',0
                align 10h
aADriverHasRetu db 'A driver has returned STATUS_PENDING but did not mark the IRP pen'
                                        ; DATA XREF: PAGEVRFD:0000000140D42C78↓o
                                        ; PAGEVRFD:0000000140D42D08↓o
                db 'ding',0Ah
                db 'via a call to IoMarkIrpPending.',0
                align 20h
aTheUiNumberFie db 'The UI Number field of the query capabilities structure in a quer'
                                        ; DATA XREF: PAGEVRFD:0000000140D42C58↓o
                db 'y',0Ah
                db 'capabilities IRP was not properly initialized to -1.',0
                align 20h
aADriverHasEnum db 'A driver has enumerated two child PDO',27h,'s that returned ident'
                                        ; DATA XREF: PAGEVRFD:0000000140D42CD8↓o
                db 'ical Device',0Ah
                db 'ID',27h,'s.',0
                align 10h
aADriverHasAdde db 'A driver has added a device object that is not a PDO to a device',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42CC8↓o
                db 'relations query.',0
                align 10h
aADriverHasDele db 'A driver has deleted it',27h,'s device object during a surprise r'
                                        ; DATA XREF: PAGEVRFD:0000000140D42CB8↓o
                db 'emove IRP.',0
                align 20h
aADriverHasDeta db 'A driver has detached it',27h,'s device object during a surprise '
                                        ; DATA XREF: PAGEVRFD:0000000140D42CA8↓o
                db 'remove IRP.',0
                align 10h
aDriverHasRetur db 'Driver has returned a suspicious status. This is probably due to '
                                        ; DATA XREF: PAGEVRFD:0000000140D42D28↓o
                db 'an',0Ah
                db 'uninitialized variable bug in the driver.',0
                align 20h
aADriverHasPass db 'A driver has passed an invalid device object to a function that r'
                                        ; DATA XREF: PAGEVRFD:0000000140D42D18↓o
                db 'equires',0Ah
                db 'a PDO.',0
aADriverHasSucc db 'A driver has succeeded IRP_MJ_PNP.IRP_MN_QUERY_DEVICE_RELATIONS(T'
                                        ; DATA XREF: PAGEVRFD:0000000140D42CF8↓o
                db 'argetRelations)',0Ah
                db 'but didn',27h,'t properly fill out the request or forward the IRP'
                db ' to the',0Ah
                db 'underlying hardware stack.',0
                align 20h
aADriverHasMist db 'A driver has mistakenly called a file I/O function at an IRQL oth'
                                        ; DATA XREF: PAGEVRFD:0000000140D42CE8↓o
                db 'er',0Ah
                db 'than PASSIVE_LEVEL.',0
                align 20h
aTheDriverIssue db 'The driver issued an I/O request with an event that was already s'
                                        ; DATA XREF: PAGEVRFD:0000000140D42D68↓o
                db 'ignalled',0Ah
                db 'and received a STATUS_PENDING response.  This can result in unwin'
                db 'ding',0Ah
                db 'before the I/O is complete.',0
                align 10h
aTheDriverIsCom db 'The driver is completing an IRP_MJ_PNP.IRP_MN_REMOVE_DEVICE',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42D58↓o
                db 'request with a failure status code.',0
aADriverHasForw db 'A driver has forwarded an IRP at IRQL >= APC_LEVEL.',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42D48↓o
                db 'The I/O Completion APC routine will not be able to run for this I'
                db 'RP.',0
                align 10h
aADriverHasForw_0 db 'A driver has forwarded an IRP at IRQL > DISPATCH_LEVEL.',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42D38↓o
                align 10h
aTheCallerProvi db 'The caller provided the IRP Status Information field with a value'
                                        ; DATA XREF: PAGEVRFD:0000000140D42D98↓o
                db ' that',0Ah
                db 'is greater than the output section of the system buffer.',0
aTheDriverIsRei db 'The driver is reinitializing an IRP that was created with',0Ah
                                        ; DATA XREF: PAGEVRFD:0000000140D42D88↓o
                db 'IoMakeAssociatedIrp,',0Ah
                db 'IoBuildAsynchronousFsdRequest,',0Ah
                db 'IoBuildSynchronousFsdRequest, or',0Ah
                db 'IoBuildDeviceIoControlRequest.',0
                align 20h
aTheDriverIsRei_0 db 'The driver is reinitializing an IRP that is still in use.',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42D78↓o
                align 20h
aExallocatepool_1 db 'ExAllocatePool',0 ; DATA XREF: PAGEVRFD:0000000140D424D0↓o
                align 10h
aExallocatecach db 'ExAllocateCacheAwareRundownProtection',0
                                        ; DATA XREF: PAGEVRFD:off_140D424A0↓o
                align 8
aExallocatepool_2 db 'ExAllocatePoolWithQuotaTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42590↓o
                align 8
aExallocatepool_3 db 'ExAllocatePoolWithQuota',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42560↓o
aExallocatepool_4 db 'ExAllocatePool3',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42530↓o
aExallocatepool_5 db 'ExAllocatePool2',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42500↓o
aExfreepoolwith_0 db 'ExFreePoolWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42650↓o
                align 8
aExfreepool_0   db 'ExFreePool',0       ; DATA XREF: PAGEVRFD:0000000140D42620↓o
                align 8
aExallocatepool_6 db 'ExAllocatePoolWithTagPriority',0
                                        ; DATA XREF: PAGEVRFD:0000000140D425F0↓o
                align 8
aExallocatepool_7 db 'ExAllocatePoolWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D425C0↓o
                align 10h
aRtlansistringt_0 db 'RtlAnsiStringToUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42710↓o
                align 10h
aIosetcompletio db 'IoSetCompletionRoutineEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D426E0↓o
                align 10h
aIoallocatemdl  db 'IoAllocateMdl',0    ; DATA XREF: PAGEVRFD:0000000140D426B0↓o
                align 20h
aIoallocateirp  db 'IoAllocateIrp',0    ; DATA XREF: PAGEVRFD:0000000140D42680↓o
                align 10h
aRtlunicodestri_3 db 'RtlUnicodeStringToOemString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D427D0↓o
                align 10h
aRtloemstringto db 'RtlOemStringToUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D427A0↓o
                align 10h
aRtlupcaseunico_0 db 'RtlUpcaseUnicodeStringToAnsiString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42770↓o
                align 8
aRtlunicodestri_4 db 'RtlUnicodeStringToAnsiString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42740↓o
                align 8
aRtlupcaseunico_1 db 'RtlUpcaseUnicodeStringToCountedOemString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42890↓o
                align 8
aRtlunicodestri_5 db 'RtlUnicodeStringToCountedOemString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42860↓o
                align 10h
aRtloemstringto_0 db 'RtlOemStringToCountedUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42830↓o
                align 8
aRtlupcaseunico_2 db 'RtlUpcaseUnicodeStringToOemString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42800↓o
                align 20h
aRtlduplicateun db 'RtlDuplicateUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42950↓o
                align 20h
aRtlcreateunico_0 db 'RtlCreateUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42920↓o
                align 8
aRtldowncaseuni db 'RtlDowncaseUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D428F0↓o
                align 8
aRtlupcaseunico_3 db 'RtlUpcaseUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D428C0↓o
                align 10h
aExdeletenpaged db 'ExDeleteNPagedLookasideList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D421E0↓o
                align 10h
aExdeletepagedl db 'ExDeletePagedLookasideList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D421B0↓o
                align 10h
aExinitializenp db 'ExInitializeNPagedLookasideList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42180↓o
aExinitializepa db 'ExInitializePagedLookasideList',0
                                        ; DATA XREF: PAGEVRFD:off_140D42150↓o
                align 10h
aExinitializere db 'ExInitializeResourceLite',0
                                        ; DATA XREF: PAGEVRFD:off_140D43AA0↓o
                align 10h
aHalallocatecra db 'HalAllocateCrashDumpRegisters',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42270↓o
                align 10h
aExdeletelookas db 'ExDeleteLookasideListEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42240↓o
aExinitializelo db 'ExInitializeLookasideListEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D42210↓o
                align 8
aExftryacquirep db 'ExfTryAcquirePushLockShared',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43B60↓o
                align 8
aExfacquirepush db 'ExfAcquirePushLockShared',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43B30↓o
                align 8
aExfacquirepush_0 db 'ExfAcquirePushLockExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43B00↓o
                align 8
aExdeleteresour db 'ExDeleteResourceLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43AD0↓o
                align 20h
aMmbuildmdlforn db 'MmBuildMdlForNonPagedPool',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43C20↓o
                align 20h
aExfreleasepush db 'ExfReleasePushLockShared',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43BF0↓o
                align 20h
aExftrytowakepu db 'ExfTryToWakePushLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43BC0↓o
                align 8
aExfreleasepush_0 db 'ExfReleasePushLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43B90↓o
                align 10h
aMmmapiospaceex db 'MmMapIoSpaceEx',0   ; DATA XREF: PAGEVRFD:0000000140D43CE0↓o
                align 20h
aMmmapiospace_0 db 'MmMapIoSpace',0     ; DATA XREF: PAGEVRFD:0000000140D43CB0↓o
                align 10h
aMmprobeandlock db 'MmProbeAndLockProcessPages',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43C80↓o
                align 10h
aMmprobeandlock_0 db 'MmProbeAndLockPages',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43C50↓o
                align 8
aNtmapviewofsec db 'NtMapViewOfSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43DA0↓o
                align 20h
aMmmapviewofsec db 'MmMapViewOfSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43D70↓o
                align 8
aMmmaplockedpag db 'MmMapLockedPagesSpecifyCache',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43D40↓o
                align 8
aMmmaplockedpag_0 db 'MmMapLockedPages',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43D10↓o
                align 10h
aMmallocatecont db 'MmAllocateContiguousMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43E60↓o
                align 10h
aMmunmapiospace db 'MmUnmapIoSpace',0   ; DATA XREF: PAGEVRFD:0000000140D43E30↓o
                align 20h
aMmunmaplockedp db 'MmUnmapLockedPages',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43E00↓o
                align 8
aMmunlockpages  db 'MmUnlockPages',0    ; DATA XREF: PAGEVRFD:0000000140D43DD0↓o
                align 8
aMmallocatenonc db 'MmAllocateNonCachedMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43F20↓o
                align 8
aMmallocatecont_0 db 'MmAllocateContiguousNodeMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43EF0↓o
                align 8
aMmallocatecont_1 db 'MmAllocateContiguousMemorySpecifyCacheNode',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43EC0↓o
                align 8
aMmallocatecont_2 db 'MmAllocateContiguousMemorySpecifyCache',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43E90↓o
                align 20h
aMmallocatepage db 'MmAllocatePagesForMdl',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43FE0↓o
                align 8
aMmfreenoncache db 'MmFreeNonCachedMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43FB0↓o
                align 10h
aMmfreecontiguo db 'MmFreeContiguousMemorySpecifyCache',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43F80↓o
                align 8
aMmfreecontiguo_0 db 'MmFreeContiguousMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43F50↓o
                align 10h
aMmcreatemdl    db 'MmCreateMdl',0      ; DATA XREF: PAGEVRFD:0000000140D440A0↓o
                align 20h
aMmfreepagesfro db 'MmFreePagesFromMdl',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44070↓o
                align 8
aMmallocatenode db 'MmAllocateNodePagesForMdlEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44040↓o
                align 8
aMmallocatepage_0 db 'MmAllocatePagesForMdlEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44010↓o
aMmgetsystemrou db 'MmGetSystemRoutineAddress',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44160↓o
                align 10h
aNtcreatesectio db 'NtCreateSection',0  ; DATA XREF: PAGEVRFD:0000000140D44130↓o
aMmcreatesectio db 'MmCreateSection',0  ; DATA XREF: PAGEVRFD:0000000140D44100↓o
aMmallocatemapp db 'MmAllocateMappingAddress',0
                                        ; DATA XREF: PAGEVRFD:0000000140D440D0↓o
                align 10h
aKerestoreexten db 'KeRestoreExtendedProcessorState',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44220↓o
aKesaveextended db 'KeSaveExtendedProcessorState',0
                                        ; DATA XREF: PAGEVRFD:0000000140D441F0↓o
                align 10h
aKesetevent     db 'KeSetEvent',0       ; DATA XREF: PAGEVRFD:0000000140D441C0↓o
                align 20h
aMmprotectmdlsy db 'MmProtectMdlSystemAddress',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44190↓o
                align 20h
aKesynchronizee db 'KeSynchronizeExecution',0
                                        ; DATA XREF: PAGEVRFD:0000000140D442E0↓o
                align 8
aKelowerirql    db 'KeLowerIrql',0      ; DATA XREF: PAGEVRFD:0000000140D442B0↓o
                align 8
aKeraiseirqltod db 'KeRaiseIrqlToDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44280↓o
                align 20h
aKfraiseirql    db 'KfRaiseIrql',0      ; DATA XREF: PAGEVRFD:0000000140D44250↓o
                align 10h
aKeentercritica db 'KeEnterCriticalRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D443A0↓o
                align 8
aKedelayexecuti db 'KeDelayExecutionThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44370↓o
                align 20h
aKeinitializeti db 'KeInitializeTimer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44340↓o
                align 8
aKeinitializeti_0 db 'KeInitializeTimerEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44310↓o
                align 10h
aNtcreatefile   db 'NtCreateFile',0     ; DATA XREF: PAGEVRFD:0000000140D44460↓o
                align 20h
aKeremovequeued db 'KeRemoveQueueDpc',0 ; DATA XREF: PAGEVRFD:0000000140D44430↓o
                align 8
aKeinsertqueued db 'KeInsertQueueDpc',0 ; DATA XREF: PAGEVRFD:0000000140D44400↓o
                align 10h
aKeleavecritica db 'KeLeaveCriticalRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D443D0↓o
                align 8
aObreferenceobj db 'ObReferenceObjectByHandle',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44520↓o
                align 8
aObfreferenceob db 'ObfReferenceObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D444F0↓o
                align 20h
aNtreadfile     db 'NtReadFile',0       ; DATA XREF: PAGEVRFD:0000000140D444C0↓o
                align 10h
aNtwritefile    db 'NtWriteFile',0      ; DATA XREF: PAGEVRFD:0000000140D44490↓o
                align 20h
aIofcompletereq db 'IofCompleteRequest',0
                                        ; DATA XREF: PAGEVRFD:0000000140D445E0↓o
                align 8
aIofreemdl      db 'IoFreeMdl',0        ; DATA XREF: PAGEVRFD:0000000140D445B0↓o
                align 8
aIofreeirp      db 'IoFreeIrp',0        ; DATA XREF: PAGEVRFD:0000000140D44580↓o
                align 8
aObreferenceobj_0 db 'ObReferenceObjectByPointer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44550↓o
                align 8
aIoinitializeti db 'IoInitializeTimer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D446A0↓o
                align 10h
aIobuildsynchro db 'IoBuildSynchronousFsdRequest',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44670↓o
                align 10h
aIobuildasynchr db 'IoBuildAsynchronousFsdRequest',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44640↓o
                align 10h
aIobuilddevicei db 'IoBuildDeviceIoControlRequest',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44610↓o
                align 10h
aIoreleaseremov db 'IoReleaseRemoveLockEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44760↓o
                align 8
aIoacquireremov db 'IoAcquireRemoveLockEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44730↓o
                align 20h
aIoinitializere db 'IoInitializeRemoveLockEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44700↓o
                align 20h
aIogetdmaadapte db 'IoGetDmaAdapter',0  ; DATA XREF: PAGEVRFD:0000000140D446D0↓o
aIoallocatework db 'IoAllocateWorkItem',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44820↓o
                align 8
aIoallocateerro db 'IoAllocateErrorLogEntry',0
                                        ; DATA XREF: PAGEVRFD:0000000140D447F0↓o
aIoallocatedriv db 'IoAllocateDriverObjectExtension',0
                                        ; DATA XREF: PAGEVRFD:0000000140D447C0↓o
aIoreleaseremov_0 db 'IoReleaseRemoveLockAndWaitEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44790↓o
                align 20h
aIowriteerrorlo db 'IoWriteErrorLogEntry',0
                                        ; DATA XREF: PAGEVRFD:0000000140D448E0↓o
                align 8
aIowmiwriteeven db 'IoWMIWriteEvent',0  ; DATA XREF: PAGEVRFD:0000000140D448B0↓o
aIowmiregistrat db 'IoWMIRegistrationControl',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44880↓o
                align 8
aIoinitializewo db 'IoInitializeWorkItem',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44850↓o
                align 20h
aIocreatedevice_0 db 'IoCreateDevice',0 ; DATA XREF: PAGEVRFD:0000000140D449A0↓o
                align 10h
aEtwunregister  db 'EtwUnregister',0    ; DATA XREF: PAGEVRFD:0000000140D44970↓o
                align 20h
aEtwregistercla db 'EtwRegisterClassicProvider',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44940↓o
                align 20h
aEtwregister    db 'EtwRegister',0      ; DATA XREF: PAGEVRFD:0000000140D44910↓o
                align 10h
aKetrytoacquire db 'KeTryToAcquireQueuedSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44A60↓o
                align 10h
aKeinitializese db 'KeInitializeSemaphore',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44A30↓o
                align 8
aKeinitializeev db 'KeInitializeEvent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44A00↓o
                align 20h
aIovolumedevice db 'IoVolumeDeviceToDosName',0
                                        ; DATA XREF: PAGEVRFD:0000000140D449D0↓o
aZwaddbootentry db 'ZwAddBootEntry',0   ; DATA XREF: PAGEVRFD:0000000140D44B20↓o
                align 8
aZwaccesschecka db 'ZwAccessCheckAndAuditAlarm',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44AF0↓o
                align 8
aKetrytoacquire_0 db 'KeTryToAcquireQueuedSpinLockRaiseToSynch',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44AC0↓o
                align 8
aKeacquirequeue db 'KeAcquireQueuedSpinLockRaiseToSynch',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44A90↓o
                align 20h
aZwcanceliofile db 'ZwCancelIoFile',0   ; DATA XREF: PAGEVRFD:0000000140D44BE0↓o
                align 10h
aZwallocatevirt db 'ZwAllocateVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44BB0↓o
aZwadjustprivil db 'ZwAdjustPrivilegesToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44B80↓o
aZwadddriverent db 'ZwAddDriverEntry',0 ; DATA XREF: PAGEVRFD:0000000140D44B50↓o
                align 8
aZwcreatedirect db 'ZwCreateDirectoryObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44CA0↓o
aZwconnectport  db 'ZwConnectPort',0    ; DATA XREF: PAGEVRFD:0000000140D44C70↓o
                align 20h
aZwcloseobjecta db 'ZwCloseObjectAuditAlarm',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44C40↓o
aZwcanceltimer  db 'ZwCancelTimer',0    ; DATA XREF: PAGEVRFD:0000000140D44C10↓o
                align 8
aZwcreatekey    db 'ZwCreateKey',0      ; DATA XREF: PAGEVRFD:0000000140D44D60↓o
                align 8
aZwcreatejobobj db 'ZwCreateJobObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44D30↓o
                align 10h
aZwcreatefile   db 'ZwCreateFile',0     ; DATA XREF: PAGEVRFD:0000000140D44D00↓o
                align 20h
aZwcreateevent  db 'ZwCreateEvent',0    ; DATA XREF: PAGEVRFD:0000000140D44CD0↓o
                align 10h
aZwdeletebooten db 'ZwDeleteBootEntry',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44E20↓o
                align 8
aZwcreatetimer  db 'ZwCreateTimer',0    ; DATA XREF: PAGEVRFD:0000000140D44DF0↓o
                align 8
aZwcreatesymbol db 'ZwCreateSymbolicLinkObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44DC0↓o
                align 8
aZwcreatesectio_0 db 'ZwCreateSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44D90↓o
aZwdisplaystrin db 'ZwDisplayString',0  ; DATA XREF: PAGEVRFD:0000000140D44EE0↓o
aZwdeviceiocont db 'ZwDeviceIoControlFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44EB0↓o
                align 10h
aZwdeletevaluek db 'ZwDeleteValueKey',0 ; DATA XREF: PAGEVRFD:0000000140D44E80↓o
                align 8
aZwdeletefile   db 'ZwDeleteFile',0     ; DATA XREF: PAGEVRFD:0000000140D44E50↓o
                align 8
aZwenumeratedri db 'ZwEnumerateDriverEntries',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44FA0↓o
                align 8
aZwenumerateboo db 'ZwEnumerateBootEntries',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44F70↓o
                align 10h
aZwduplicatetok db 'ZwDuplicateToken',0 ; DATA XREF: PAGEVRFD:0000000140D44F40↓o
                align 8
aZwduplicateobj db 'ZwDuplicateObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D44F10↓o
                align 20h
aZwflushvirtual db 'ZwFlushVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45060↓o
                align 8
aZwflushinstruc db 'ZwFlushInstructionCache',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45030↓o
aZwenumerateval db 'ZwEnumerateValueKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45000↓o
                align 8
aZwenumeratekey db 'ZwEnumerateKey',0   ; DATA XREF: PAGEVRFD:0000000140D44FD0↓o
                align 8
aZwloadkey      db 'ZwLoadKey',0        ; DATA XREF: PAGEVRFD:0000000140D45120↓o
                align 8
aZwloaddriver   db 'ZwLoadDriver',0     ; DATA XREF: PAGEVRFD:0000000140D450F0↓o
                align 8
aZwfscontrolfil db 'ZwFsControlFile',0  ; DATA XREF: PAGEVRFD:0000000140D450C0↓o
aZwfreevirtualm db 'ZwFreeVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45090↓o
                align 20h
aZwnotifychange db 'ZwNotifyChangeKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D451E0↓o
                align 8
aZwmodifydriver db 'ZwModifyDriverEntry',0
                                        ; DATA XREF: PAGEVRFD:0000000140D451B0↓o
                align 10h
aZwmodifybooten db 'ZwModifyBootEntry',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45180↓o
                align 8
aZwmapviewofsec_1 db 'ZwMapViewOfSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45150↓o
                align 20h
aZwopenjobobjec db 'ZwOpenJobObject',0  ; DATA XREF: PAGEVRFD:0000000140D452A0↓o
aZwopenfile     db 'ZwOpenFile',0       ; DATA XREF: PAGEVRFD:0000000140D45270↓o
                align 20h
aZwopenevent    db 'ZwOpenEvent',0      ; DATA XREF: PAGEVRFD:0000000140D45240↓o
                align 10h
aZwopendirector db 'ZwOpenDirectoryObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45210↓o
                align 8
aZwopenprocesst db 'ZwOpenProcessTokenEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45360↓o
                align 20h
aZwopenprocesst_0 db 'ZwOpenProcessToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45330↓o
                align 8
aZwopenprocess  db 'ZwOpenProcess',0    ; DATA XREF: PAGEVRFD:0000000140D45300↓o
                align 8
aZwopenkey      db 'ZwOpenKey',0        ; DATA XREF: PAGEVRFD:0000000140D452D0↓o
                align 8
aZwopenthreadto db 'ZwOpenThreadToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45420↓o
                align 10h
aZwopenthread   db 'ZwOpenThread',0     ; DATA XREF: PAGEVRFD:0000000140D453F0↓o
                align 20h
aZwopensymbolic db 'ZwOpenSymbolicLinkObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D453C0↓o
                align 20h
aZwopensection  db 'ZwOpenSection',0    ; DATA XREF: PAGEVRFD:0000000140D45390↓o
                align 10h
aZwprotectvirtu db 'ZwProtectVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D454E0↓o
                align 8
aZwpowerinforma db 'ZwPowerInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D454B0↓o
                align 20h
aZwopentimer    db 'ZwOpenTimer',0      ; DATA XREF: PAGEVRFD:0000000140D45480↓o
                align 10h
aZwopenthreadto_0 db 'ZwOpenThreadTokenEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45450↓o
                align 8
aZwquerydefault db 'ZwQueryDefaultLocale',0
                                        ; DATA XREF: PAGEVRFD:0000000140D455A0↓o
                align 20h
aZwquerybootopt db 'ZwQueryBootOptions',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45570↓o
                align 8
aZwquerybootent db 'ZwQueryBootEntryOrder',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45540↓o
                align 10h
aZwpulseevent   db 'ZwPulseEvent',0     ; DATA XREF: PAGEVRFD:0000000140D45510↓o
                align 20h
aZwquerydirecto db 'ZwQueryDirectoryFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45660↓o
                align 8
aZwqueryinstall db 'ZwQueryInstallUILanguage',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45630↓o
                align 8
aZwquerydrivere db 'ZwQueryDriverEntryOrder',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45600↓o
aZwquerydefault_0 db 'ZwQueryDefaultUILanguage',0
                                        ; DATA XREF: PAGEVRFD:0000000140D455D0↓o
                align 10h
aZwqueryinforma db 'ZwQueryInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45720↓o
                align 8
aZwqueryfullatt db 'ZwQueryFullAttributesFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D456F0↓o
                align 8
aZwqueryeafile  db 'ZwQueryEaFile',0    ; DATA XREF: PAGEVRFD:0000000140D456C0↓o
                align 8
aZwquerydirecto_0 db 'ZwQueryDirectoryObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45690↓o
                align 10h
aZwqueryinforma_0 db 'ZwQueryInformationToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D457E0↓o
aZwqueryinforma_1 db 'ZwQueryInformationThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D457B0↓o
                align 8
aZwqueryinforma_2 db 'ZwQueryInformationProcess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45780↓o
                align 8
aZwqueryinforma_3 db 'ZwQueryInformationJobObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45750↓o
                align 8
aZwquerysecurit db 'ZwQuerySecurityObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D458A0↓o
                align 20h
aZwquerysection db 'ZwQuerySection',0   ; DATA XREF: PAGEVRFD:0000000140D45870↓o
                align 10h
aZwqueryobject  db 'ZwQueryObject',0    ; DATA XREF: PAGEVRFD:0000000140D45840↓o
                align 20h
aZwquerykey     db 'ZwQueryKey',0       ; DATA XREF: PAGEVRFD:0000000140D45810↓o
                align 10h
aZwqueryvolumei db 'ZwQueryVolumeInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45960↓o
                align 10h
aZwqueryvalueke_0 db 'ZwQueryValueKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45930↓o
aZwquerysystemi_0 db 'ZwQuerySystemInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45900↓o
                align 20h
aZwquerysymboli db 'ZwQuerySymbolicLinkObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D458D0↓o
                align 20h
aZwresetevent   db 'ZwResetEvent',0     ; DATA XREF: PAGEVRFD:0000000140D45A20↓o
                align 10h
aZwrequestwaitr db 'ZwRequestWaitReplyPort',0
                                        ; DATA XREF: PAGEVRFD:0000000140D459F0↓o
                align 8
aZwreplacekey   db 'ZwReplaceKey',0     ; DATA XREF: PAGEVRFD:0000000140D459C0↓o
                align 8
aZwreadfile     db 'ZwReadFile',0       ; DATA XREF: PAGEVRFD:0000000140D45990↓o
                align 8
aZwsetdriverent db 'ZwSetDriverEntryOrder',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45AE0↓o
                align 20h
aZwsetbootoptio db 'ZwSetBootOptions',0 ; DATA XREF: PAGEVRFD:0000000140D45AB0↓o
                align 8
aZwsetbootentry db 'ZwSetBootEntryOrder',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45A80↓o
                align 10h
aZwrestorekey   db 'ZwRestoreKey',0     ; DATA XREF: PAGEVRFD:0000000140D45A50↓o
                align 20h
aZwsetinformati db 'ZwSetInformationJobObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45BA0↓o
                align 20h
aZwsetinformati_0 db 'ZwSetInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45B70↓o
                align 8
aZwsetevent     db 'ZwSetEvent',0       ; DATA XREF: PAGEVRFD:0000000140D45B40↓o
                align 8
aZwseteafile    db 'ZwSetEaFile',0      ; DATA XREF: PAGEVRFD:0000000140D45B10↓o
                align 8
aZwsetsecurityo db 'ZwSetSecurityObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45C60↓o
                align 10h
aZwsetinformati_1 db 'ZwSetInformationThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45C30↓o
                align 8
aZwsetinformati_2 db 'ZwSetInformationProcess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45C00↓o
aZwsetinformati_3 db 'ZwSetInformationObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45BD0↓o
                align 8
aZwsetvaluekey  db 'ZwSetValueKey',0    ; DATA XREF: PAGEVRFD:0000000140D45D20↓o
                align 8
aZwsettimer     db 'ZwSetTimer',0       ; DATA XREF: PAGEVRFD:0000000140D45CF0↓o
                align 8
aZwsetsystemtim db 'ZwSetSystemTime',0  ; DATA XREF: PAGEVRFD:0000000140D45CC0↓o
aZwsetsysteminf db 'ZwSetSystemInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45C90↓o
                align 20h
aZwunloadkey    db 'ZwUnloadKey',0      ; DATA XREF: PAGEVRFD:0000000140D45DE0↓o
                align 10h
aZwunloaddriver db 'ZwUnloadDriver',0   ; DATA XREF: PAGEVRFD:0000000140D45DB0↓o
                align 20h
aZwtranslatefil db 'ZwTranslateFilePath',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45D80↓o
                align 8
aZwsetvolumeinf db 'ZwSetVolumeInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45D50↓o
                align 8
aZwalpccreatepo db 'ZwAlpcCreatePort',0 ; DATA XREF: PAGEVRFD:0000000140D45EA0↓o
                align 10h
aZwwritefile    db 'ZwWriteFile',0      ; DATA XREF: PAGEVRFD:0000000140D45E70↓o
                align 20h
aZwwaitforsingl db 'ZwWaitForSingleObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45E40↓o
                align 8
aZwwaitformulti db 'ZwWaitForMultipleObjects',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45E10↓o
                align 8
aZwalpccreatese db 'ZwAlpcCreateSecurityContext',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45F60↓o
                align 8
aZwalpcsendwait db 'ZwAlpcSendWaitReceivePort',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45F30↓o
                align 8
aZwalpcacceptco db 'ZwAlpcAcceptConnectPort',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45F00↓o
aZwalpcconnectp db 'ZwAlpcConnectPort',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45ED0↓o
                align 8
aZwalpcsetinfor db 'ZwAlpcSetInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46020↓o
                align 20h
aZwalpccreatere db 'ZwAlpcCreateResourceReserve',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45FF0↓o
                align 20h
aZwalpccreatese_0 db 'ZwAlpcCreateSectionView',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45FC0↓o
aZwalpccreatepo_0 db 'ZwAlpcCreatePortSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D45F90↓o
aZwopentransact db 'ZwOpenTransactionManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D460E0↓o
                align 10h
aZwcreatetransa db 'ZwCreateTransactionManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D460B0↓o
                align 10h
aZwremoveiocomp db 'ZwRemoveIoCompletionEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46080↓o
                align 8
aZwalpcqueryinf db 'ZwAlpcQueryInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46050↓o
                align 20h
aZwqueryinforma_4 db 'ZwQueryInformationTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D461A0↓o
                align 20h
aZwopentransact_0 db 'ZwOpenTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46170↓o
                align 8
aZwcreatetransa_0 db 'ZwCreateTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46140↓o
                align 10h
aZwqueryinforma_5 db 'ZwQueryInformationTransactionManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46110↓o
                align 8
aZwcommitenlist db 'ZwCommitEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46260↓o
                align 10h
aZwprepareenlis db 'ZwPrepareEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46230↓o
                align 8
aZwpreprepareen db 'ZwPrePrepareEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46200↓o
                align 20h
aZwsetinformati_4 db 'ZwSetInformationTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D461D0↓o
                align 20h
aZwopenenlistme db 'ZwOpenEnlistment',0 ; DATA XREF: PAGEVRFD:0000000140D46320↓o
                align 8
aZwcreateenlist db 'ZwCreateEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D462F0↓o
                align 10h
aZwpreparecompl db 'ZwPrepareComplete',0
                                        ; DATA XREF: PAGEVRFD:0000000140D462C0↓o
                align 8
aZwrollbackenli db 'ZwRollbackEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46290↓o
                align 20h
aKewaitforsingl db 'KeWaitForSingleObject',0
                                        ; DATA XREF: PAGEVRFD:off_140D431E0↓o
                align 8
aZwquerylicense db 'ZwQueryLicenseValue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D463B0↓o
                align 10h
aZwsetinformati_5 db 'ZwSetInformationEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46380↓o
                align 10h
aZwqueryinforma_6 db 'ZwQueryInformationEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46350↓o
                align 10h
aKereleasemutex db 'KeReleaseMutex',0   ; DATA XREF: PAGEVRFD:0000000140D432C0↓o
                align 20h
aKeinitializemu db 'KeInitializeMutant',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43288↓o
                align 8
aKeinitializemu_0 db 'KeInitializeMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43250↓o
                align 10h
aKewaitformulti db 'KeWaitForMultipleObjects',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43218↓o
                align 10h
aExacquirefastm db 'ExAcquireFastMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D433A0↓o
                align 8
aExreleasefastm db 'ExReleaseFastMutexUnsafe',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43368↓o
                align 8
aExacquirefastm_0 db 'ExAcquireFastMutexUnsafe',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43330↓o
                align 8
aKereleasemutan db 'KeReleaseMutant',0  ; DATA XREF: PAGEVRFD:0000000140D432F8↓o
aKeacquirespinl db 'KeAcquireSpinLockAtDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43480↓o
                align 8
aKereleasespinl db 'KeReleaseSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43448↓o
                align 10h
aExreleasefastm_0 db 'ExReleaseFastMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43410↓o
                align 8
aExtrytoacquire db 'ExTryToAcquireFastMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D433D8↓o
aKeacquireinsta db 'KeAcquireInStackQueuedSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43560↓o
                align 20h
aKetrytoacquire_1 db 'KeTryToAcquireSpinLockAtDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43528↓o
                align 8
aKeacquirespinl_0 db 'KeAcquireSpinLockRaiseToDpc',0
                                        ; DATA XREF: PAGEVRFD:0000000140D434F0↓o
                align 8
aKereleasespinl_0 db 'KeReleaseSpinLockFromDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D434B8↓o
                align 8
aKereleaseinsta db 'KeReleaseInStackQueuedSpinLockFromDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43640↓o
                align 8
aKereleaseinsta_0 db 'KeReleaseInStackQueuedSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43608↓o
                align 8
aKeacquireinsta_0 db 'KeAcquireInStackQueuedSpinLockForDpc',0
                                        ; DATA XREF: PAGEVRFD:0000000140D435D0↓o
                align 20h
aKeacquireinsta_1 db 'KeAcquireInStackQueuedSpinLockAtDpcLevel',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43598↓o
                align 10h
aExentercritica db 'ExEnterCriticalRegionAndAcquireResourceExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43720↓o
                align 8
aExacquireresou db 'ExAcquireResourceExclusiveLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D436E8↓o
                align 8
aKeacquireinsta_2 db 'KeAcquireInStackQueuedSpinLockRaiseToSynch',0
                                        ; DATA XREF: PAGEVRFD:0000000140D436B0↓o
                align 8
aKereleaseinsta_1 db 'KeReleaseInStackQueuedSpinLockForDpc',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43678↓o
                align 20h
aExenterpriorit db 'ExEnterPriorityRegionAndAcquireResourceShared',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43800↓o
                align 10h
aExentercritica_0 db 'ExEnterCriticalRegionAndAcquireResourceShared',0
                                        ; DATA XREF: PAGEVRFD:0000000140D437C8↓o
                align 20h
aExacquireresou_0 db 'ExAcquireResourceSharedLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43790↓o
                align 20h
aExenterpriorit_0 db 'ExEnterPriorityRegionAndAcquireResourceExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43758↓o
                align 8
aExreleaseresou db 'ExReleaseResourceAndLeaveCriticalRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D438E0↓o
aExreleaseresou_0 db 'ExReleaseResourceLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D438A8↓o
                align 8
aExacquireshare db 'ExAcquireSharedWaitForExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43870↓o
aExacquireshare_0 db 'ExAcquireSharedStarveExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43838↓o
                align 8
aIodisconnectin db 'IoDisconnectInterrupt',0
                                        ; DATA XREF: PAGEVRFD:0000000140D439C0↓o
                align 10h
aIoconnectinter db 'IoConnectInterrupt',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43988↓o
                align 8
aExreleaseresou_1 db 'ExReleaseResourceForThreadLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43950↓o
                align 8
aExreleaseresou_2 db 'ExReleaseResourceAndLeavePriorityRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43918↓o
aCccopywriteex  db 'CcCopyWriteEx',0    ; DATA XREF: PAGEVRFD:0000000140D46440↓o
                align 20h
aCccopywrite    db 'CcCopyWrite',0      ; DATA XREF: PAGEVRFD:off_140D46410↓o
                align 10h
aIodisconnectin_0 db 'IoDisconnectInterruptEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D43A30↓o
aIoconnectinter_0 db 'IoConnectInterruptEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D439F8↓o
                align 20h
aCmregistercall db 'CmRegisterCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46500↓o
                align 8
aCcwaitforcurre db 'CcWaitForCurrentLazyWriterActivity',0
                                        ; DATA XREF: PAGEVRFD:0000000140D464D0↓o
                align 20h
aCcfastcopywrit db 'CcFastCopyWrite',0  ; DATA XREF: PAGEVRFD:0000000140D464A0↓o
aCcdeferwrite   db 'CcDeferWrite',0     ; DATA XREF: PAGEVRFD:0000000140D46470↓o
                align 20h
aExacquirerundo db 'ExAcquireRundownProtection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D465C0↓o
                align 20h
aDbgbreakpointw db 'DbgBreakPointWithStatus',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46590↓o
aCmregistercall_0 db 'CmRegisterCallbackEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46560↓o
                align 10h
aCmunregisterca db 'CmUnRegisterCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46530↓o
                align 8
aExconvertexclu db 'ExConvertExclusiveToSharedLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46680↓o
                align 8
aExacquirerundo_0 db 'ExAcquireRundownProtectionEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46650↓o
                align 8
aExacquirerundo_1 db 'ExAcquireRundownProtectionCacheAwareEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46620↓o
                align 10h
aExacquirerundo_2 db 'ExAcquireRundownProtectionCacheAware',0
                                        ; DATA XREF: PAGEVRFD:0000000140D465F0↓o
                align 8
aExgetsharedwai db 'ExGetSharedWaiterCount',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46740↓o
                align 10h
aExgetexclusive db 'ExGetExclusiveWaiterCount',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46710↓o
                align 10h
aExentercritica_1 db 'ExEnterCriticalRegionAndAcquireSharedWaitForExclusive',0
                                        ; DATA XREF: PAGEVRFD:0000000140D466E0↓o
                align 8
aExcreatecallba db 'ExCreateCallback',0 ; DATA XREF: PAGEVRFD:0000000140D466B0↓o
                align 20h
aExinterlockedp db 'ExInterlockedPopEntryList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46800↓o
                align 20h
aExinterlockedi db 'ExInterlockedInsertTailList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D467D0↓o
                align 20h
aExinterlockedi_0 db 'ExInterlockedInsertHeadList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D467A0↓o
                align 20h
aExinterlockeda db 'ExInterlockedAddLargeInteger',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46770↓o
                align 20h
aExisresourceac db 'ExIsResourceAcquiredExclusiveLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D468C0↓o
                align 8
aExisprocessorf db 'ExIsProcessorFeaturePresent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46890↓o
                align 8
aExinterlockedr db 'ExInterlockedRemoveHeadList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46860↓o
                align 8
aExinterlockedp_0 db 'ExInterlockedPushEntryList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46830↓o
                align 8
aExpinterlocked db 'ExpInterlockedPushEntrySList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46980↓o
                align 8
aExpinterlocked_0 db 'ExpInterlockedPopEntrySList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46950↓o
                align 8
aExpinterlocked_1 db 'ExpInterlockedFlushSList',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46920↓o
                align 8
aExisresourceac_0 db 'ExIsResourceAcquiredSharedLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D468F0↓o
                align 8
aExregistercall db 'ExRegisterCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46A40↓o
                align 20h
aExraisestatus  db 'ExRaiseStatus',0    ; DATA XREF: PAGEVRFD:0000000140D46A10↓o
                align 10h
aExraisedatatyp db 'ExRaiseDatatypeMisalignment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D469E0↓o
                align 10h
aExraiseaccessv db 'ExRaiseAccessViolation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D469B0↓o
                align 8
aExreleaserundo db 'ExReleaseRundownProtectionEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46B00↓o
                align 8
aExreleaserundo_0 db 'ExReleaseRundownProtectionCacheAware',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46AD0↓o
                align 10h
aExreleaserundo_1 db 'ExReleaseRundownProtection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46AA0↓o
                align 10h
aExreinitialize db 'ExReinitializeResourceLite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46A70↓o
                align 10h
aExunregisterca db 'ExUnregisterCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46BC0↓o
                align 8
aExsettimerreso db 'ExSetTimerResolution',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46B90↓o
                align 20h
aExsetresourceo db 'ExSetResourceOwnerPointerEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46B60↓o
                align 20h
aExsetresourceo_0 db 'ExSetResourceOwnerPointer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46B30↓o
                align 20h
aFsrtlallocatef db 'FsRtlAllocateFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46C80↓o
                align 8
aExwaitforrundo db 'ExWaitForRundownProtectionReleaseCacheAware',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46C50↓o
                align 8
aExwaitforrundo_0 db 'ExWaitForRundownProtectionRelease',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46C20↓o
                align 10h
aExuuidcreate   db 'ExUuidCreate',0     ; DATA XREF: PAGEVRFD:0000000140D46BF0↓o
                align 20h
aFsrtlcancellab db 'FsRtlCancellableWaitForSingleObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46D40↓o
                align 8
aFsrtlcancellab_0 db 'FsRtlCancellableWaitForMultipleObjects',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46D10↓o
                align 10h
aFsrtlbalancere db 'FsRtlBalanceReads',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46CE0↓o
                align 8
aFsrtlarenamese db 'FsRtlAreNamesEqual',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46CB0↓o
                align 20h
aFsrtlderegiste db 'FsRtlDeregisterUncProvider',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46E00↓o
                align 20h
aFsrtlcopywrite db 'FsRtlCopyWrite',0   ; DATA XREF: PAGEVRFD:0000000140D46DD0↓o
                align 10h
aFsrtlchecklock db 'FsRtlCheckLockForWriteAccess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46DA0↓o
                align 10h
aFsrtlchecklock_0 db 'FsRtlCheckLockForReadAccess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46D70↓o
                align 10h
aFsrtlfastcheck db 'FsRtlFastCheckLockForWrite',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46EC0↓o
                align 10h
aFsrtlfastcheck_0 db 'FsRtlFastCheckLockForRead',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46E90↓o
                align 10h
aFsrtldoesnamec db 'FsRtlDoesNameContainWildCards',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46E60↓o
                align 10h
aFsrtldissectna db 'FsRtlDissectName',0 ; DATA XREF: PAGEVRFD:0000000140D46E30↓o
                align 8
aFsrtlfreefilel db 'FsRtlFreeFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46F80↓o
                align 20h
aFsrtlfastunloc db 'FsRtlFastUnlockSingle',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46F50↓o
                align 8
aFsrtlfastunloc_0 db 'FsRtlFastUnlockAllByKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46F20↓o
aFsrtlfastunloc_1 db 'FsRtlFastUnlockAll',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46EF0↓o
                align 8
aFsrtlincrement db 'FsRtlIncrementCcFastReadWait',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47040↓o
                align 8
aFsrtlincrement_0 db 'FsRtlIncrementCcFastReadNoWait',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47010↓o
                align 8
aFsrtlgetnextfi db 'FsRtlGetNextFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D46FE0↓o
                align 20h
aFsrtlgetfilesi db 'FsRtlGetFileSize',0 ; DATA XREF: PAGEVRFD:0000000140D46FB0↓o
                align 8
aFsrtlmdlwritec db 'FsRtlMdlWriteCompleteDev',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47100↓o
                align 8
aFsrtlmdlreadco db 'FsRtlMdlReadCompleteDev',0
                                        ; DATA XREF: PAGEVRFD:0000000140D470D0↓o
aFsrtlisnameine db 'FsRtlIsNameInExpression',0
                                        ; DATA XREF: PAGEVRFD:0000000140D470A0↓o
aFsrtlinitializ db 'FsRtlInitializeFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47070↓o
aFsrtlnotifyful db 'FsRtlNotifyFullReportChange',0
                                        ; DATA XREF: PAGEVRFD:0000000140D471C0↓o
                align 20h
aFsrtlnotifyful_0 db 'FsRtlNotifyFullChangeDirectory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47190↓o
                align 20h
aFsrtlnotifyfil db 'FsRtlNotifyFilterReportChange',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47160↓o
                align 20h
aFsrtlnotifyfil_0 db 'FsRtlNotifyFilterChangeDirectory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47130↓o
                align 8
aFsrtlregisteru db 'FsRtlRegisterUncProviderEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47280↓o
                align 8
aFsrtlregisteru_0 db 'FsRtlRegisterUncProvider',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47250↓o
                align 8
aFsrtlprocessfi db 'FsRtlProcessFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47220↓o
                align 20h
aFsrtlprivatelo db 'FsRtlPrivateLock',0 ; DATA XREF: PAGEVRFD:0000000140D471F0↓o
                align 8
aHalexaminembr  db 'HalExamineMBR',0    ; DATA XREF: PAGEVRFD:0000000140D47340↓o
                align 8
aFsrtlvalidater db 'FsRtlValidateReparsePointBuffer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47310↓o
aFsrtluninitial db 'FsRtlUninitializeFileLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D472E0↓o
                align 8
aFsrtlremovedot db 'FsRtlRemoveDotsFromPath',0
                                        ; DATA XREF: PAGEVRFD:0000000140D472B0↓o
aIoattachdevice db 'IoAttachDevice',0   ; DATA XREF: PAGEVRFD:0000000140D47400↓o
                align 10h
aIoallocatecont db 'IoAllocateController',0
                                        ; DATA XREF: PAGEVRFD:0000000140D473D0↓o
                align 8
aIoacquirevpbsp db 'IoAcquireVpbSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D473A0↓o
                align 20h
aIoacquirecance db 'IoAcquireCancelSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47370↓o
aIocheckshareac db 'IoCheckShareAccess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D474C0↓o
                align 10h
aIocancelirp    db 'IoCancelIrp',0      ; DATA XREF: PAGEVRFD:0000000140D47490↓o
                align 20h
aIoattachdevice_0 db 'IoAttachDeviceToDeviceStackSafe',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47460↓o
aIoattachdevice_1 db 'IoAttachDeviceToDeviceStack',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47430↓o
                align 20h
aIocreatefilesp db 'IoCreateFileSpecifyDeviceObjectHint',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47580↓o
                align 8
aIocreatefileex db 'IoCreateFileEx',0   ; DATA XREF: PAGEVRFD:0000000140D47550↓o
                align 8
aIocreatefile   db 'IoCreateFile',0     ; DATA XREF: PAGEVRFD:0000000140D47520↓o
                align 8
aIocreatecontro db 'IoCreateController',0
                                        ; DATA XREF: PAGEVRFD:0000000140D474F0↓o
                align 20h
aIocreateunprot db 'IoCreateUnprotectedSymbolicLink',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47640↓o
aIocreatesynchr db 'IoCreateSynchronizationEvent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47610↓o
                align 20h
aIocreatesymbol db 'IoCreateSymbolicLink',0
                                        ; DATA XREF: PAGEVRFD:0000000140D475E0↓o
                align 8
aIocreatenotifi db 'IoCreateNotificationEvent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D475B0↓o
                align 8
aIodetachdevice db 'IoDetachDevice',0   ; DATA XREF: PAGEVRFD:0000000140D47700↓o
                align 8
aIodeletesymbol db 'IoDeleteSymbolicLink',0
                                        ; DATA XREF: PAGEVRFD:0000000140D476D0↓o
                align 20h
aIodeletedevice db 'IoDeleteDevice',0   ; DATA XREF: PAGEVRFD:0000000140D476A0↓o
                align 10h
aIodeletecontro db 'IoDeleteController',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47670↓o
                align 8
aIogetdevicedir db 'IoGetDeviceDirectory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D477C0↓o
                align 20h
aIogetconfigura db 'IoGetConfigurationInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47790↓o
                align 20h
aIogetattachedd db 'IoGetAttachedDeviceReference',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47760↓o
                align 20h
aIofreecontroll db 'IoFreeController',0 ; DATA XREF: PAGEVRFD:0000000140D47730↓o
                align 8
aIogetdevicenum db 'IoGetDeviceNumaNode',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47880↓o
                align 10h
aIogetdeviceint db 'IoGetDeviceInterfaces',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47850↓o
                align 8
aIogetdeviceint_0 db 'IoGetDeviceInterfaceAlias',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47820↓o
                align 8
aIogetdriverdir db 'IoGetDriverDirectory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D477F0↓o
                align 20h
aIogetdevicetov db 'IoGetDeviceToVerify',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47940↓o
                align 8
aIogetdevicepro db 'IoGetDevicePropertyData',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47910↓o
aIogetdevicepro_0 db 'IoGetDeviceProperty',0
                                        ; DATA XREF: PAGEVRFD:0000000140D478E0↓o
                align 8
aIogetdeviceobj db 'IoGetDeviceObjectPointer',0
                                        ; DATA XREF: PAGEVRFD:0000000140D478B0↓o
                align 8
aIoinitializeir db 'IoInitializeIrp',0  ; DATA XREF: PAGEVRFD:0000000140D47A00↓o
aIogetinitialst db 'IoGetInitialStack',0
                                        ; DATA XREF: PAGEVRFD:0000000140D479D0↓o
                align 10h
aIogetfileobjec db 'IoGetFileObjectGenericMapping',0
                                        ; DATA XREF: PAGEVRFD:0000000140D479A0↓o
                align 10h
aIosetdevicetov db 'IoSetDeviceToVerify',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47970↓o
                align 8
aIoopendevicere db 'IoOpenDeviceRegistryKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47AC0↓o
aIoopendevicein db 'IoOpenDeviceInterfaceRegistryKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47A90↓o
                align 8
aIoiswdmversion db 'IoIsWdmVersionAvailable',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47A60↓o
aIoinvalidatede db 'IoInvalidateDeviceRelations',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47A30↓o
                align 20h
aIoreadpartitio db 'IoReadPartitionTableEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47B80↓o
                align 8
aIoreadpartitio_0 db 'IoReadPartitionTable',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47B50↓o
                align 10h
aIoraiseinforma db 'IoRaiseInformationalHardError',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47B20↓o
                align 10h
aIoraiseharderr db 'IoRaiseHardError',0 ; DATA XREF: PAGEVRFD:0000000140D47AF0↓o
                align 8
aIoregisterlast db 'IoRegisterLastChanceShutdownNotification',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47C40↓o
                align 8
aIoregisterdriv db 'IoRegisterDriverReinitialization',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47C10↓o
                align 20h
aIoregisterdevi db 'IoRegisterDeviceInterface',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47BE0↓o
                align 20h
aIoregisterboot db 'IoRegisterBootDriverReinitialization',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47BB0↓o
                align 8
aIoreleasevpbsp db 'IoReleaseVpbSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47D00↓o
                align 20h
aIoreleasecance db 'IoReleaseCancelSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47CD0↓o
aIoregistershut db 'IoRegisterShutdownNotification',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47CA0↓o
                align 8
aIoregisterplug db 'IoRegisterPlugPlayNotification',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47C70↓o
                align 8
aIoreporttarget db 'IoReportTargetDeviceChange',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47DC0↓o
                align 8
aIoreportdetect db 'IoReportDetectedDevice',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47D90↓o
                align 10h
aIoreplaceparti db 'IoReplacePartitionUnit',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47D60↓o
                align 8
aIoremovesharea db 'IoRemoveShareAccess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47D30↓o
                align 20h
aIosetdevicepro db 'IoSetDevicePropertyData',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47E80↓o
aIosetdeviceint db 'IoSetDeviceInterfaceState',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47E50↓o
                align 8
aIoreuseirp     db 'IoReuseIrp',0       ; DATA XREF: PAGEVRFD:0000000140D47E20↓o
                align 8
aIoreporttarget_0 db 'IoReportTargetDeviceChangeAsynchronous',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47DF0↓o
                align 10h
aIosetstartioat db 'IoSetStartIoAttributes',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47F40↓o
                align 8
aIosetshareacce db 'IoSetShareAccess',0 ; DATA XREF: PAGEVRFD:0000000140D47F10↓o
                align 20h
aIosetpartition db 'IoSetPartitionInformationEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47EE0↓o
                align 20h
aIosetpartition_0 db 'IoSetPartitionInformation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47EB0↓o
                align 20h
aIounregistersh db 'IoUnregisterShutdownNotification',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48000↓o
                align 8
aIounregisterpl db 'IoUnregisterPlugPlayNotificationEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47FD0↓o
                align 10h
aIounregisterpl_0 db 'IoUnregisterPlugPlayNotification',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47FA0↓o
                align 8
aIostartnextpac db 'IoStartNextPacket',0
                                        ; DATA XREF: PAGEVRFD:0000000140D47F70↓o
                align 10h
aIowritepartiti db 'IoWritePartitionTableEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D480C0↓o
aIowritepartiti_0 db 'IoWritePartitionTable',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48090↓o
                align 20h
aIowmiallocatei db 'IoWMIAllocateInstanceIds',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48060↓o
                align 20h
aIoupdatesharea db 'IoUpdateShareAccess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48030↓o
                align 8
aKeacquirequeue_0 db 'KeAcquireQueuedSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48180↓o
aKeacquireinter db 'KeAcquireInterruptSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48150↓o
                align 10h
aKeacquireguard db 'KeAcquireGuardedMutexUnsafe',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48120↓o
                align 10h
aKeacquireguard_0 db 'KeAcquireGuardedMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D480F0↓o
                align 8
aKecanceltimer  db 'KeCancelTimer',0    ; DATA XREF: PAGEVRFD:0000000140D48240↓o
                align 8
aKeareapcsdisab db 'KeAreApcsDisabled',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48210↓o
                align 10h
aKeareallapcsdi db 'KeAreAllApcsDisabled',0
                                        ; DATA XREF: PAGEVRFD:0000000140D481E0↓o
                align 8
aKeacquirespinl_1 db 'KeAcquireSpinLockForDpc',0
                                        ; DATA XREF: PAGEVRFD:0000000140D481B0↓o
aKeflushqueuedd db 'KeFlushQueuedDpcs',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48300↓o
                align 8
aKeenterguarded db 'KeEnterGuardedRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D482D0↓o
                align 10h
aKederegisternm db 'KeDeregisterNmiCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D482A0↓o
aKeclearevent   db 'KeClearEvent',0     ; DATA XREF: PAGEVRFD:0000000140D48270↓o
                align 8
aKeinsertdevice db 'KeInsertDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D483C0↓o
                align 10h
aKeinsertbykeyd db 'KeInsertByKeyDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48390↓o
                align 10h
aKeinitializegu db 'KeInitializeGuardedMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48360↓o
                align 10h
aKeinitializede db 'KeInitializeDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48330↓o
aKepulseevent   db 'KePulseEvent',0     ; DATA XREF: PAGEVRFD:0000000140D48480↓o
                align 8
aKeleaveguarded db 'KeLeaveGuardedRegion',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48450↓o
                align 10h
aKeinsertqueue  db 'KeInsertQueue',0    ; DATA XREF: PAGEVRFD:0000000140D48420↓o
                align 20h
aKeinsertheadqu db 'KeInsertHeadQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D483F0↓o
                align 8
aKereadstatemut db 'KeReadStateMutex',0 ; DATA XREF: PAGEVRFD:0000000140D48540↓o
                align 10h
aKereadstateeve db 'KeReadStateEvent',0 ; DATA XREF: PAGEVRFD:0000000140D48510↓o
                align 8
aKequeryruntime db 'KeQueryRuntimeThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D484E0↓o
                align 20h
aKequerypriorit db 'KeQueryPriorityThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D484B0↓o
                align 8
aKereleaseguard db 'KeReleaseGuardedMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48600↓o
                align 10h
aKeregisternmic db 'KeRegisterNmiCallback',0
                                        ; DATA XREF: PAGEVRFD:0000000140D485D0↓o
                align 8
aKereadstatetim db 'KeReadStateTimer',0 ; DATA XREF: PAGEVRFD:0000000140D485A0↓o
                align 20h
aKereadstatesem db 'KeReadStateSemaphore',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48570↓o
                align 8
aKereleasesemap db 'KeReleaseSemaphore',0
                                        ; DATA XREF: PAGEVRFD:0000000140D486C0↓o
                align 10h
aKereleasequeue db 'KeReleaseQueuedSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48690↓o
aKereleaseinter db 'KeReleaseInterruptSpinLock',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48660↓o
                align 8
aKereleaseguard_0 db 'KeReleaseGuardedMutexUnsafe',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48630↓o
                align 8
aKeremoveentryd db 'KeRemoveEntryDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48780↓o
                align 8
aKeremovedevice db 'KeRemoveDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48750↓o
                align 20h
aKeremovebykeyd db 'KeRemoveByKeyDeviceQueue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48720↓o
                align 20h
aKereleasespinl_1 db 'KeReleaseSpinLockForDpc',0
                                        ; DATA XREF: PAGEVRFD:0000000140D486F0↓o
aKesettimer     db 'KeSetTimer',0       ; DATA XREF: PAGEVRFD:0000000140D48840↓o
                align 8
aKesetsystemgro db 'KeSetSystemGroupAffinityThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48810↓o
                align 8
aKeresetevent   db 'KeResetEvent',0     ; DATA XREF: PAGEVRFD:0000000140D487E0↓o
                align 8
aKeremovequeue  db 'KeRemoveQueue',0    ; DATA XREF: PAGEVRFD:0000000140D487B0↓o
                align 8
aMmaddphysicalm db 'MmAddPhysicalMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48900↓o
                align 20h
aKetrytoacquire_2 db 'KeTryToAcquireGuardedMutex',0
                                        ; DATA XREF: PAGEVRFD:0000000140D488D0↓o
                align 20h
aKetestspinlock db 'KeTestSpinLock',0   ; DATA XREF: PAGEVRFD:0000000140D488A0↓o
                align 10h
aKesettimerex   db 'KeSetTimerEx',0     ; DATA XREF: PAGEVRFD:0000000140D48870↓o
                align 20h
aMmlockpagabled db 'MmLockPagableDataSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D489C0↓o
                align 20h
aMmgetphysicalm db 'MmGetPhysicalMemoryRanges',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48990↓o
                align 20h
aMmdoesfilehave db 'MmDoesFileHaveUserWritableReferences',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48960↓o
                align 8
aMmcreatemirror db 'MmCreateMirror',0   ; DATA XREF: PAGEVRFD:0000000140D48930↓o
                align 8
aMmprefetchpage db 'MmPrefetchPages',0  ; DATA XREF: PAGEVRFD:0000000140D48A80↓o
aMmpageentiredr db 'MmPageEntireDriver',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48A50↓o
                align 20h
aMmmaplockedpag_1 db 'MmMapLockedPagesWithReservedMapping',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48A20↓o
                align 8
aMmlockpagables db 'MmLockPagableSectionByHandle',0
                                        ; DATA XREF: PAGEVRFD:0000000140D489F0↓o
                align 8
aMmunlockpagabl db 'MmUnlockPagableImageSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48B40↓o
                align 8
aMmsecurevirtua_1 db 'MmSecureVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48B10↓o
                align 20h
aMmresetdriverp db 'MmResetDriverPaging',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48AE0↓o
                align 8
aMmremovephysic db 'MmRemovePhysicalMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48AB0↓o
                align 10h
aNtunlockfile   db 'NtUnlockFile',0     ; DATA XREF: PAGEVRFD:0000000140D48C00↓o
                align 20h
aNtsetinformati db 'NtSetInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48BD0↓o
                align 8
aNtlockfile     db 'NtLockFile',0       ; DATA XREF: PAGEVRFD:0000000140D48BA0↓o
                align 8
aMmunsecurevirt db 'MmUnsecureVirtualMemory',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48B70↓o
aObgetobjectsec db 'ObGetObjectSecurity',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48CC0↓o
                align 8
aObfreferenceob_0 db 'ObfReferenceObjectWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48C90↓o
                align 8
aObfdereference db 'ObfDereferenceObjectWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48C60↓o
                align 8
aObfdereference_0 db 'ObfDereferenceObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48C30↓o
                align 10h
aPocalldriver   db 'PoCallDriver',0     ; DATA XREF: PAGEVRFD:0000000140D48D80↓o
                align 20h
aObreleaseobjec db 'ObReleaseObjectSecurity',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48D50↓o
aObreferenceobj_1 db 'ObReferenceObjectByPointerWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48D20↓o
                align 20h
aObreferenceobj_2 db 'ObReferenceObjectByHandleWithTag',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48CF0↓o
                align 8
aPofxcompleteid db 'PoFxCompleteIdleState',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48E40↓o
                align 20h
aPofxcompleteid_0 db 'PoFxCompleteIdleCondition',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48E10↓o
                align 20h
aPofxcompletede db 'PoFxCompleteDevicePowerNotRequired',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48DE0↓o
                align 8
aPofxactivateco db 'PoFxActivateComponent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48DB0↓o
                align 20h
aPofxregisterde db 'PoFxRegisterDevice',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48F00↓o
                align 8
aPofxpowercontr db 'PoFxPowerControl',0 ; DATA XREF: PAGEVRFD:0000000140D48ED0↓o
                align 10h
aPofxnotifysurp db 'PoFxNotifySurprisePowerOn',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48EA0↓o
                align 10h
aPofxidlecompon db 'PoFxIdleComponent',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48E70↓o
                align 8
aPofxsetcompone db 'PoFxSetComponentWake',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48FC0↓o
                align 20h
aPofxsetcompone_0 db 'PoFxSetComponentResidency',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48F90↓o
                align 20h
aPofxsetcompone_1 db 'PoFxSetComponentLatency',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48F60↓o
aPofxreportdevi db 'PoFxReportDevicePoweredOn',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48F30↓o
                align 8
aPorequestpower_0 db 'PoRequestPowerIrp',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49080↓o
                align 10h
aPofxunregister db 'PoFxUnregisterDevice',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49050↓o
                align 8
aPofxstartdevic db 'PoFxStartDevicePowerManagement',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49020↓o
                align 8
aPofxsetdevicei db 'PoFxSetDeviceIdleTimeout',0
                                        ; DATA XREF: PAGEVRFD:0000000140D48FF0↓o
                align 8
aPscreatesystem db 'PsCreateSystemThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49140↓o
                align 20h
aPsassignimpers db 'PsAssignImpersonationToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49110↓o
                align 20h
aProbeforwrite  db 'ProbeForWrite',0    ; DATA XREF: PAGEVRFD:0000000140D490E0↓o
                align 10h
aProbeforread   db 'ProbeForRead',0     ; DATA XREF: PAGEVRFD:0000000140D490B0↓o
                align 20h
aPsgetversion_0 db 'PsGetVersion',0     ; DATA XREF: PAGEVRFD:0000000140D49200↓o
                align 10h
aPsdisableimper db 'PsDisableImpersonation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D491D0↓o
                align 8
aPsdereferencep db 'PsDereferencePrimaryToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D491A0↓o
                align 8
aPsdereferencei db 'PsDereferenceImpersonationToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49170↓o
aPsremoveloadim db 'PsRemoveLoadImageNotifyRoutine',0
                                        ; DATA XREF: PAGEVRFD:0000000140D492C0↓o
                align 8
aPsreferencepri db 'PsReferencePrimaryToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49290↓o
aPsreferenceimp db 'PsReferenceImpersonationToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49260↓o
                align 20h
aPsimpersonatec db 'PsImpersonateClient',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49230↓o
                align 8
aPssetcreatepro db 'PsSetCreateProcessNotifyRoutineEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49380↓o
                align 20h
aPssetcreatepro_0 db 'PsSetCreateProcessNotifyRoutine',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49350↓o
aPsreverttoself db 'PsRevertToSelf',0   ; DATA XREF: PAGEVRFD:0000000140D49320↓o
                align 10h
aPsrestoreimper db 'PsRestoreImpersonation',0
                                        ; DATA XREF: PAGEVRFD:0000000140D492F0↓o
                align 8
aRtlcompareunic db 'RtlCompareUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49440↓o
aPsterminatesys db 'PsTerminateSystemThread',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49410↓o
aPssetloadimage db 'PsSetLoadImageNotifyRoutine',0
                                        ; DATA XREF: PAGEVRFD:0000000140D493E0↓o
                align 8
aPssetcreatethr db 'PsSetCreateThreadNotifyRoutine',0
                                        ; DATA XREF: PAGEVRFD:0000000140D493B0↓o
                align 8
aRtlcreatesyste db 'RtlCreateSystemVolumeInformationFolder',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49500↓o
                align 20h
aRtlcreateregis db 'RtlCreateRegistryKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D494D0↓o
                align 8
aRtlwriteregist db 'RtlWriteRegistryValue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D494A0↓o
                align 10h
aRtldeleteregis db 'RtlDeleteRegistryValue',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49470↓o
                align 8
aRtlgeneratecla db 'RtlGenerateClass5Guid',0
                                        ; DATA XREF: PAGEVRFD:0000000140D495C0↓o
                align 20h
aRtlfreeunicode db 'RtlFreeUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49590↓o
                align 8
aRtlequalunicod db 'RtlEqualUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49560↓o
                align 10h
aRtldowncaseuni_0 db 'RtlDowncaseUnicodeChar',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49530↓o
                align 8
aRtlunicodetout db 'RtlUnicodeToUTF8N',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49680↓o
                align 20h
aRtlstringfromg db 'RtlStringFromGUID',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49650↓o
                align 8
aRtlhashunicode db 'RtlHashUnicodeString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49620↓o
                align 10h
aRtlguidfromstr db 'RtlGUIDFromString',0
                                        ; DATA XREF: PAGEVRFD:0000000140D495F0↓o
                align 8
aRtlxunicodestr db 'RtlxUnicodeStringToAnsiSize',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49740↓o
                align 8
aRtlxansistring db 'RtlxAnsiStringToUnicodeSize',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49710↓o
                align 8
aRtlutf8tounico db 'RtlUTF8ToUnicodeN',0
                                        ; DATA XREF: PAGEVRFD:0000000140D496E0↓o
                align 20h
aRtlupcaseunico_4 db 'RtlUpcaseUnicodeChar',0
                                        ; DATA XREF: PAGEVRFD:0000000140D496B0↓o
                align 8
aSedeassignsecu db 'SeDeassignSecurity',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49800↓o
                align 10h
aSeassignsecuri db 'SeAssignSecurityEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D497D0↓o
                align 8
aSeassignsecuri_0 db 'SeAssignSecurity',0
                                        ; DATA XREF: PAGEVRFD:0000000140D497A0↓o
                align 20h
aSeaccesscheck  db 'SeAccessCheck',0    ; DATA XREF: PAGEVRFD:0000000140D49770↓o
                align 10h
aSeunlocksubjec db 'SeUnlockSubjectContext',0
                                        ; DATA XREF: PAGEVRFD:0000000140D498C0↓o
                align 8
aSesingleprivil db 'SeSinglePrivilegeCheck',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49890↓o
                align 20h
aSereleasesubje db 'SeReleaseSubjectContext',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49860↓o
aSelocksubjectc db 'SeLockSubjectContext',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49830↓o
                align 10h
aZwcommitcomple db 'ZwCommitComplete',0 ; DATA XREF: PAGEVRFD:0000000140D49980↓o
                align 8
aZwclose        db 'ZwClose',0          ; DATA XREF: PAGEVRFD:0000000140D49950↓o
aZwallocateloca db 'ZwAllocateLocallyUniqueId',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49920↓o
                align 10h
aSevalidsecurit db 'SeValidSecurityDescriptor',0
                                        ; DATA XREF: PAGEVRFD:0000000140D498F0↓o
                align 10h
aZwdeletekey    db 'ZwDeleteKey',0      ; DATA XREF: PAGEVRFD:0000000140D49A40↓o
                align 20h
aZwcreateresour db 'ZwCreateResourceManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49A10↓o
aZwcreatekeytra db 'ZwCreateKeyTransacted',0
                                        ; DATA XREF: PAGEVRFD:0000000140D499E0↓o
                align 10h
aZwcommittransa db 'ZwCommitTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D499B0↓o
                align 8
aZwflushkey     db 'ZwFlushKey',0       ; DATA XREF: PAGEVRFD:0000000140D49B00↓o
                align 8
aZwflushbuffers db 'ZwFlushBuffersFileEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49AD0↓o
                align 10h
aZwflushbuffers_0 db 'ZwFlushBuffersFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49AA0↓o
                align 8
aZwenumeratetra db 'ZwEnumerateTransactionObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49A70↓o
                align 8
aZwopenkeyex    db 'ZwOpenKeyEx',0      ; DATA XREF: PAGEVRFD:0000000140D49BC0↓o
                align 8
aZwmaketemporar db 'ZwMakeTemporaryObject',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49B90↓o
                align 10h
aZwlockfile     db 'ZwLockFile',0       ; DATA XREF: PAGEVRFD:0000000140D49B60↓o
                align 20h
aZwgetnotificat db 'ZwGetNotificationResourceManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49B30↓o
                align 8
aZwpreprepareco db 'ZwPrePrepareComplete',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49C80↓o
                align 20h
aZwopenresource db 'ZwOpenResourceManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49C50↓o
                align 8
aZwopenkeytrans db 'ZwOpenKeyTransactedEx',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49C20↓o
                align 10h
aZwopenkeytrans_0 db 'ZwOpenKeyTransacted',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49BF0↓o
                align 8
aZwrecoverenlis db 'ZwRecoverEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49D40↓o
                align 20h
aZwreadonlyenli db 'ZwReadOnlyEnlistment',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49D10↓o
                align 8
aZwqueryquotain db 'ZwQueryQuotaInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49CE0↓o
                align 8
aZwqueryinforma_7 db 'ZwQueryInformationResourceManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49CB0↓o
                align 20h
aZwrollbackcomp db 'ZwRollbackComplete',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49E00↓o
                align 8
aZwsetinformati_6 db 'ZwSetInformationKey',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49DD0↓o
                align 10h
aZwrenamekey    db 'ZwRenameKey',0      ; DATA XREF: PAGEVRFD:0000000140D49DA0↓o
                align 20h
aZwrecovertrans db 'ZwRecoverTransactionManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49D70↓o
                align 20h
aZwsetquotainfo db 'ZwSetQuotaInformationFile',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49EC0↓o
                align 20h
aZwsetinformati_7 db 'ZwSetInformationToken',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49E90↓o
                align 8
aZwsetinformati_8 db 'ZwSetInformationResourceManager',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49E60↓o
aZwrollbacktran db 'ZwRollbackTransaction',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49E30↓o
                align 10h
aZwunmapviewofs db 'ZwUnmapViewOfSection',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49F80↓o
                align 8
aZwunlockfile   db 'ZwUnlockFile',0     ; DATA XREF: PAGEVRFD:0000000140D49F50↓o
                align 8
aZwterminatepro db 'ZwTerminateProcess',0
                                        ; DATA XREF: PAGEVRFD:0000000140D49F20↓o
                align 10h
aZwsettimerex   db 'ZwSetTimerEx',0     ; DATA XREF: PAGEVRFD:0000000140D49EF0↓o
                align 20h
aDriverunload   db 'DriverUnload',0     ; DATA XREF: PAGEVRFD:0000000140D43180↓o
                align 10h
aDriverstartio  db 'DriverStartIo',0    ; DATA XREF: PAGEVRFD:0000000140D43160↓o
                align 20h
aAdddevice      db 'AddDevice',0        ; DATA XREF: PAGEVRFD:0000000140D43140↓o
                align 10h
aDriverentry    db 'DriverEntry',0      ; DATA XREF: PAGEVRFD:0000000140D43120↓o
                align 20h
aDrivercancel   db 'DriverCancel',0     ; DATA XREF: PAGEVRFD:0000000140D431A0↓o
                align 10h
                db 4 dup(0)

; =============== S U B R O U T I N E =======================================


sub_1409C3F74   proc near               ; CODE XREF: sub_1407ABF60+15E↑p
                                        ; sub_140A606A0:loc_140A60782↓p
                                        ; DATA XREF: ...
                mov     eax, cs:dword_140C1CEC8
                retn
sub_1409C3F74   endp

; ---------------------------------------------------------------------------
                align 4
byte_1409C3F7C  db 14h dup(0CCh)        ; DATA XREF: .pdata:0000000140128154↑o

; =============== S U B R O U T I N E =======================================


sub_1409C3F90   proc near               ; DATA XREF: .pdata:0000000140128160↑o
                                        ; PAGEVRFD:0000000140D42348↓o
                mov     rax, [rcx+30h]
                mov     rax, [rax+40h]
                mov     rax, [rax+18h]
                retn
sub_1409C3F90   endp

; ---------------------------------------------------------------------------
                align 2
byte_1409C3F9E  db 12h dup(0CCh)        ; DATA XREF: .pdata:0000000140128160↑o

; =============== S U B R O U T I N E =======================================


sub_1409C3FB0   proc near               ; DATA XREF: .pdata:000000014012816C↑o
                                        ; PAGEVRFD:0000000140D42330↓o
                mov     rax, [rcx+30h]
                mov     rax, [rax+40h]
                mov     rax, [rax]
                retn
sub_1409C3FB0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1409C3FBD  db 13h dup(0CCh)        ; DATA XREF: .pdata:000000014012816C↑o

; =============== S U B R O U T I N E =======================================


sub_1409C3FD0   proc near               ; DATA XREF: .pdata:0000000140128178↑o
                                        ; PAGEVRFD:0000000140D42340↓o
                mov     rax, [rcx+30h]
                mov     rax, [rax+40h]
                mov     rax, [rax+10h]
                retn
sub_1409C3FD0   endp

; ---------------------------------------------------------------------------
                align 2
byte_1409C3FDE  db 12h dup(0CCh)        ; DATA XREF: .pdata:0000000140128178↑o

; =============== S U B R O U T I N E =======================================


sub_1409C3FF0   proc near               ; DATA XREF: .pdata:0000000140128184↑o
                                        ; PAGEVRFD:0000000140D42350↓o
                mov     rax, [rdx+0B8h]
                mov     rcx, [rcx+8]
                movzx   r8d, byte ptr [rax]
                mov     rdx, [rcx+30h]
                mov     rax, [rdx+40h]
                mov     rax, [rax+r8*8+20h]
                retn
sub_1409C3FF0   endp

; ---------------------------------------------------------------------------
                align 2
algn_1409C400E:                         ; DATA XREF: .pdata:0000000140128184↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409C4020   proc near               ; DATA XREF: .pdata:0000000140128190↑o
                                        ; PAGEVRFD:0000000140D42338↓o
                mov     rax, [rcx+8]
                mov     rcx, [rax+30h]
                mov     rax, [rcx+40h]
                mov     rax, [rax+8]
                retn
sub_1409C4020   endp

; ---------------------------------------------------------------------------
                align 2
algn_1409C4032:                         ; DATA XREF: .pdata:0000000140128190↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409C4040   proc near               ; DATA XREF: .pdata:000000014012819C↑o
                                        ; PAGEVRFD:0000000140D42300↓o
                mov     eax, 0FE0h
                retn
sub_1409C4040   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1409C4047:                         ; DATA XREF: .pdata:000000014012819C↑o
                align 10h
; [00000003 BYTES: COLLAPSED FUNCTION nullsub_11. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 4
algn_1409C4054:                         ; DATA XREF: .pdata:00000001401281A8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409C4060   proc near               ; DATA XREF: .pdata:00000001401281B4↑o
                                        ; sub_1409C8E80+124↓o ...
                mov     [rcx+70h], rdx
                retn
sub_1409C4060   endp

; ---------------------------------------------------------------------------
                align 2
algn_1409C4066:                         ; DATA XREF: .pdata:00000001401281B4↑o
                align 10h
qword_1409C4070 dq 32AC25048A65h        ; DATA XREF: .pdata:00000001401281C0↑o
                                        ; .data:0000000140C05328↓o
; ---------------------------------------------------------------------------
                and     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
byte_1409C407D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001401281C0↑o
; [00000006 BYTES: COLLAPSED FUNCTION ClfsMgmtNullAdvanceTailNotification(_FILE_OBJECT *,_CLS_LSN *,void *). PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1409C4097:                         ; DATA XREF: .pdata:00000001401281CC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409C40A0   proc near               ; CODE XREF: sub_140758EA8+11↑p
                                        ; sub_1409CA630+13B↓p ...

var_18          = dword ptr -18h

; FUNCTION CHUNK AT 00000001409C6494 SIZE 0000001C BYTES

                push    rbx
                sub     rsp, 30h
                mov     r10, rcx
                movzx   r11d, r8b
                mov     rcx, [rcx+70h]
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_1409C40F3
                call    sub_140267410
                mov     rcx, [rax]
                mov     r8b, [rcx+0Fh]
                shr     r8b, 4

loc_1409C40C9:                          ; CODE XREF: sub_1409C40A0+56↓j
                cmp     cs:qword_140C1D180, 0
                jnz     loc_1409C6494
                test    r9b, r9b
                jnz     short loc_1409C40EC
                mov     edx, [r10+40h]
                xor     r9d, r9d
                mov     rcx, [r10+30h]
                call    sub_14037198C

loc_1409C40EC:                          ; CODE XREF: sub_1409C40A0+3A↑j
                                        ; sub_1409C40A0+240B↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409C40F3:                          ; CODE XREF: sub_1409C40A0+17↑j
                mov     r8b, 0Ch
                jmp     short loc_1409C40C9
sub_1409C40A0   endp

; ---------------------------------------------------------------------------
algn_1409C40F8:                         ; DATA XREF: .rdata:0000000140090F90↑o
                                        ; .pdata:00000001401281D8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409C4100   proc near               ; CODE XREF: sub_14037198C+84↑p
                                        ; DATA XREF: .rdata:0000000140091020↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409C64B0 SIZE 0000002B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                lea     rdi, [rcx+18h]
                mov     rbx, rcx
                mov     rcx, [rcx]
                lea     r9, dword_140D4A3B0
                mov     esi, 30h ; '0'
                mov     [rsp+38h+var_18], rdi
                mov     r8d, esi
                lea     rdx, off_140D43AA0 ; "ExInitializeResourceLite"
                call    sub_1409C41D8
                test    eax, eax
                jz      loc_1409C64B0
                mov     rcx, [rbx]
                lea     rax, [rbx+20h]
                lea     r9, dword_140D4A3A0
                mov     [rsp+38h+var_18], rax
                mov     r8d, esi
                lea     rdx, off_140D424A0 ; "ExAllocateCacheAwareRundownProtection"
                call    sub_1409C41D8
                test    eax, eax
                jz      loc_1409C64B0
                mov     rcx, [rbx]
                lea     rax, [rbx+28h]
                lea     r9, dword_140D4A3C0
                mov     [rsp+38h+var_18], rax
                lea     r8d, [rsi+8]
                lea     rdx, off_140D431E0 ; "KeWaitForSingleObject"
                call    sub_1409C41D8
                test    eax, eax
                jz      loc_1409C64B0
                mov     rcx, [rbx]
                lea     rax, [rbx+30h]
                lea     r9, dword_140D4A3D0
                mov     [rsp+38h+var_18], rax
                mov     r8d, esi
                lea     rdx, off_140D46410 ; "CcCopyWrite"
                call    sub_1409C41D8
                test    eax, eax
                jz      loc_1409C64B0

loc_1409C41C0:                          ; CODE XREF: sub_1409C4100+23D6↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C4100   endp

algn_1409C41D1:                         ; DATA XREF: .rdata:0000000140091020↑o
                                        ; .pdata:00000001401281E4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409C41D8   proc near               ; CODE XREF: sub_1409C4100+34↑p
                                        ; sub_1409C4100+5E↑p ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r13, rcx
                mov     r14, r9
                mov     rcx, r9
                mov     r15, r8
                mov     r12, rdx
                mov     ebx, 1
                call    RtlNumberOfClearBits
                mov     ebp, eax
                test    eax, eax
                jz      short loc_1409C4292
                mov     esi, ebp
                mov     r8d, 54496656h
                shl     rsi, 5
                mov     ecx, 200h
                mov     rdx, rsi
                call    ExAllocatePoolWithTag
                mov     rdi, [rsp+58h+arg_20]
                mov     [rdi], rax
                test    rax, rax
                jz      short loc_1409C42A0
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rax, [rdi]
                mov     r9, r14
                mov     [rsp+58h+var_30], rax
                mov     r8, r15
                mov     rdx, r12
                mov     [rsp+58h+var_38], ebp
                mov     rcx, r13
                call    sub_1409C42AC
                test    eax, eax
                jnz     short loc_1409C4272
                mov     rcx, rdi
                call    sub_1409C4458

loc_1409C4272:                          ; CODE XREF: sub_1409C41D8+90↑j
                                        ; sub_1409C41D8+C6↓j ...
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409C4292:                          ; CODE XREF: sub_1409C41D8+39↑j
                mov     rax, [rsp+58h+arg_20]
                and     qword ptr [rax], 0
                jmp     short loc_1409C4272
; ---------------------------------------------------------------------------

loc_1409C42A0:                          ; CODE XREF: sub_1409C41D8+62↑j
                xor     ebx, ebx
                jmp     short loc_1409C4272
sub_1409C41D8   endp

; ---------------------------------------------------------------------------
byte_1409C42A4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401281F0↑o

; =============== S U B R O U T I N E =======================================


sub_1409C42AC   proc near               ; CODE XREF: sub_1409C41D8+89↑p
                                        ; DATA XREF: .pdata:00000001401281FC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebx, ebx
                xor     edi, edi
                xor     esi, esi
                mov     [rsp+48h+arg_10], ebx
                mov     r14, r9
                mov     r15, r8
                mov     r12, rdx
                mov     r13, rcx
                cmp     [rsp+48h+arg_20], ebx
                jbe     short loc_1409C4332
                xor     eax, eax

loc_1409C42E1:                          ; CODE XREF: sub_1409C42AC+84↓j
                cmp     eax, [r14]
                jnb     short loc_1409C4332
                lea     r8, [rsp+48h+arg_10]
                mov     edx, ebx
                mov     rcx, r14
                call    RtlFindNextForwardRunClear
                test    eax, eax
                jz      short loc_1409C4332
                mov     ebx, [rsp+48h+arg_10]
                mov     rcx, r13
                mov     edx, ebx
                mov     r9d, esi
                imul    rdx, r15
                shl     r9, 5
                add     r9, [rsp+48h+arg_28]
                add     rdx, r12
                call    sub_1409C435C
                test    edi, edi
                jnz     short loc_1409C434D
                test    eax, eax
                jnz     short loc_1409C434D

loc_1409C4322:                          ; CODE XREF: sub_1409C42AC+A6↓j
                inc     ebx
                inc     esi
                mov     eax, ebx
                mov     [rsp+48h+arg_10], ebx
                cmp     esi, [rsp+48h+arg_20]
                jb      short loc_1409C42E1

loc_1409C4332:                          ; CODE XREF: sub_1409C42AC+31↑j
                                        ; sub_1409C42AC+38↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409C434D:                          ; CODE XREF: sub_1409C42AC+70↑j
                                        ; sub_1409C42AC+74↑j
                mov     edi, 1
                jmp     short loc_1409C4322
sub_1409C42AC   endp

; ---------------------------------------------------------------------------
byte_1409C4354  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401281FC↑o

; =============== S U B R O U T I N E =======================================


sub_1409C435C   proc near               ; CODE XREF: sub_1409C42AC+69↑p
                                        ; DATA XREF: .rdata:0000000140091088↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409C64DC SIZE 0000008B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, r9
                mov     r15, rdx
                mov     [r9], rbx
                mov     [r9+8], rbx
                mov     r12, rcx
                lea     r9, [rsp+48h+arg_10]
                lea     r8d, [rbx+1]
                mov     dl, r8b
                call    RtlImageDirectoryEntryToData
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1409C43DB
                cmp     [rax+0Ch], ebx
                jz      short loc_1409C43DB

loc_1409C43A2:                          ; CODE XREF: sub_1409C435C+7D↓j
                cmp     [rsi], ebx
                jz      short loc_1409C43DB
                mov     ebp, [rsi+0Ch]
                lea     rdx, aNtoskrnlExe ; "ntoskrnl.exe"
                add     rbp, r12
                mov     rcx, rbp
                call    _stricmp
                test    eax, eax
                jz      short loc_1409C43F5
                lea     rdx, aHalDll    ; "hal.dll"
                mov     rcx, rbp
                call    _stricmp
                test    eax, eax
                jz      short loc_1409C43F5

loc_1409C43D2:                          ; CODE XREF: sub_1409C435C+AB↓j
                add     rsi, 14h
                cmp     [rsi+0Ch], ebx
                jnz     short loc_1409C43A2

loc_1409C43DB:                          ; CODE XREF: sub_1409C435C+3F↑j
                                        ; sub_1409C435C+44↑j ...
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409C43F5:                          ; CODE XREF: sub_1409C435C+61↑j
                                        ; sub_1409C435C+74↑j
                mov     r14d, [rsi]
                mov     ebp, [rsi+10h]
                add     r14, r12
                add     rbp, r12

loc_1409C4401:                          ; CODE XREF: sub_1409C435C+CB↓j
                mov     rax, [r14]
                test    rax, rax
                jz      short loc_1409C43D2
                js      short loc_1409C441F
                mov     rdx, [r15]
                lea     rcx, [r12+2]
                add     rcx, rax
                call    _stricmp
                test    eax, eax
                jz      short loc_1409C4429

loc_1409C441F:                          ; CODE XREF: sub_1409C435C+AD↑j
                add     r14, 8
                add     rbp, 8
                jmp     short loc_1409C4401
; ---------------------------------------------------------------------------

loc_1409C4429:                          ; CODE XREF: sub_1409C435C+C1↑j
                mov     [rdi], rbp
                mov     rax, [r15+8]
                mov     [rdi+8], rax
                mov     esi, dword ptr cs:qword_140CF4D00+4
                test    sil, 8
                jnz     loc_1409C64DC

loc_1409C4444:                          ; CODE XREF: sub_1409C435C+2193↓j
                                        ; sub_1409C435C+219D↓j ...
                or      dword ptr [rdi+18h], 1

loc_1409C4448:                          ; CODE XREF: sub_1409C435C+21B3↓j
                                        ; sub_1409C435C+21C0↓j ...
                mov     ebx, 1
                jmp     short loc_1409C43DB
sub_1409C435C   endp

; ---------------------------------------------------------------------------
byte_1409C444F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140091088↑o
                                        ; .pdata:0000000140128208↑o

; =============== S U B R O U T I N E =======================================


sub_1409C4458   proc near               ; CODE XREF: sub_1409C41D8+95↑p
                                        ; sub_1409C4484+13↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_1409C4477
                mov     edx, 54496656h
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0

loc_1409C4477:                          ; CODE XREF: sub_1409C4458+F↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C4458   endp

byte_1409C447E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140128214↑o

; =============== S U B R O U T I N E =======================================


sub_1409C4484   proc near               ; CODE XREF: sub_1403727EC+E1↑p
                                        ; DATA XREF: .pdata:0000000140128220↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                add     rcx, 18h
                mov     eax, [rcx]
                test    al, 1
                jnz     short loc_1409C44B7
                call    sub_1409C4458
                lea     rcx, [rbx+20h]
                call    sub_1409C4458
                lea     rcx, [rbx+28h]
                call    sub_1409C4458
                lea     rcx, [rbx+30h]
                call    sub_1409C4458

loc_1409C44B7:                          ; CODE XREF: sub_1409C4484+11↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C4484   endp

byte_1409C44BE  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140128220↑o

; =============== S U B R O U T I N E =======================================


sub_1409C44C4   proc near               ; CODE XREF: sub_1406F5218+2E6↑p
                                        ; sub_1406F5218+5D5↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409C6568 SIZE 000000A7 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rcx
                call    sub_140364580
                test    eax, eax
                jnz     loc_1409C6568

loc_1409C44ED:                          ; CODE XREF: sub_1409C44C4+20C0↓j
                cmp     cs:dword_140C1CEC8, 0
                jnz     loc_1409C6589

loc_1409C44FA:                          ; CODE XREF: sub_1409C44C4+2131↓j
                mov     rcx, rsi
                call    sub_1403727EC
                test    dword ptr [rsi+68h], 2000000h
                jnz     loc_1409C6601

loc_1409C450F:                          ; CODE XREF: sub_1409C44C4+2146↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C44C4   endp

byte_1409C452B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140091618↑o
                                        ; .pdata:000000014012822C↑o

; =============== S U B R O U T I N E =======================================


sub_1409C4534   proc near               ; CODE XREF: sub_140758D98+59↑p
                                        ; DATA XREF: .pdata:0000000140128238↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1409C45C8
                mov     rcx, rbx
                call    sub_1409C4584
                xor     edi, edi
                lea     rcx, unk_140C1CC80
                xor     edx, edx
                mov     cs:qword_140C1CC70, rdi
                mov     rbx, rax
                call    KeReleaseMutex
                test    rbx, rbx
                mov     rbx, [rsp+28h+arg_0]
                setnz   dil
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C4534   endp

byte_1409C457D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140128238↑o

; =============== S U B R O U T I N E =======================================


sub_1409C4584   proc near               ; CODE XREF: sub_1409C4534+15↑p
                                        ; sub_1409CA630+3E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409C6610 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, cs:qword_140C1D190
                lea     rsi, qword_140C1D190
                mov     rdi, rcx

loc_1409C45A4:                          ; CODE XREF: sub_1409C4584+20A2↓j
                cmp     rbx, rsi
                jnz     loc_1409C6610
                xor     eax, eax

loc_1409C45AF:                          ; CODE XREF: sub_1409C4584+20AA↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C4584   endp

byte_1409C45C0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009B9FC↑o
                                        ; .pdata:0000000140128244↑o

; =============== S U B R O U T I N E =======================================


sub_1409C45C8   proc near               ; CODE XREF: sub_1405A0958+9↑p
                                        ; sub_1409C4534+D↑p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                lea     rcx, unk_140C1CC80
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+12h]
                call    KeWaitForSingleObject
                mov     rax, gs:188h
                mov     cs:qword_140C1CC70, rax
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409C45C8   endp

byte_1409C45FE  db 12h dup(0CCh)        ; DATA XREF: .pdata:0000000140128250↑o
; Exported entry 1456. MmIsVerifierEnabled

; =============== S U B R O U T I N E =======================================


