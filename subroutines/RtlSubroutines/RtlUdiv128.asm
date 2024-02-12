RtlUdiv128      proc near               ; CODE XREF: sub_1403B0F44+62↑p
                                        ; DATA XREF: .pdata:00000001400DE444↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     r11, r9
                mov     rbx, rdx
                mov     r10, rcx
                mov     edi, 40h ; '@'

loc_1403B0FE8:                          ; CODE XREF: RtlUdiv128+56↓j
                lea     rax, [r10+r10]
                mov     r9, rbx
                shr     r9, 3Fh
                lea     rcx, [rbx+rbx]
                or      r9, rax
                mov     rdx, r10
                sar     rdx, 3Fh
                mov     r10, r9
                sub     r10, r8
                mov     rax, r9
                or      rax, rdx
                mov     rbx, rcx
                cmp     rax, r8
                cmovb   r10, r9
                or      rbx, 1
                cmp     rax, r8
                cmovb   rbx, rcx
                sub     rdi, 1
                jnz     short loc_1403B0FE8
                test    r11, r11
                jnz     short loc_1403B103C

loc_1403B102D:                          ; CODE XREF: RtlUdiv128+6F↓j
                mov     rdi, [rsp+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403B103C:                          ; CODE XREF: RtlUdiv128+5B↑j
                mov     [r11], r10
                jmp     short loc_1403B102D
RtlUdiv128      endp

; ---------------------------------------------------------------------------
algn_1403B1041:                         ; DATA XREF: .pdata:00000001400DE444↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B1048   proc near               ; CODE XREF: sub_1403B150C+67↓p
                                        ; DATA XREF: .rdata:00000001400A0098↑o ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A9632 SIZE 000000C0 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12d, [rcx+0E0h]
                lea     r14, qword_140C4BFE0
                mov     rbx, cs:qword_140C4BFE0
                and     r12d, 2
                xor     dl, dl
                mov     rdi, rcx
                cmp     rbx, r14
                jz      loc_1403B131F

loc_1403B108C:                          ; CODE XREF: sub_1403B1048+61↓j
                mov     rcx, rbx
                mov     rbx, [rbx]
                cmp     qword ptr [rcx+0C0h], 0
                jz      short loc_1403B10C6
                mov     eax, [rcx+0B8h]
                test    al, 8
                jnz     short loc_1403B10C6

loc_1403B10A6:                          ; CODE XREF: sub_1403B1048+86↓j
                                        ; sub_1403B1048+8F↓j
                cmp     rbx, r14
                jnz     short loc_1403B108C
                test    dl, dl
                jz      loc_1403B131F
                mov     ecx, 5DCh
                call    KeStallExecutionProcessor
                mov     rsi, cs:qword_140C4BFE0
                jmp     short loc_1403B1104
; ---------------------------------------------------------------------------

loc_1403B10C6:                          ; CODE XREF: sub_1403B1048+52↑j
                                        ; sub_1403B1048+5C↑j
                mov     eax, [rcx+0E0h]
                test    al, 2
                jz      short loc_1403B10A6
                call    sub_1403B17A4
                mov     dl, 1
                jmp     short loc_1403B10A6
; ---------------------------------------------------------------------------

loc_1403B10D9:                          ; CODE XREF: sub_1403B1048+CF↓j
                                        ; sub_1403B1048+DB↓j
                mov     eax, [rbx+0E0h]
                test    al, 2
                jz      short loc_1403B1104
                mov     eax, [rbx+0B8h]
                test    al, 2
                jz      short loc_1403B1104
                mov     rcx, rbx
                test    r12d, r12d
                jz      loc_1404A9632
                mov     rdx, rdi
                call    sub_1403B142C
                mov     [rbx+30h], eax

loc_1403B1104:                          ; CODE XREF: sub_1403B1048+7C↑j
                                        ; sub_1403B1048+99↑j ...
                cmp     rsi, r14
                jz      short loc_1403B1125
                mov     rbx, rsi
                mov     rsi, [rsi]
                cmp     qword ptr [rbx+0C0h], 0
                jz      short loc_1403B10D9
                mov     eax, [rbx+0B8h]
                test    al, 8
                jz      short loc_1403B1104
                jmp     short loc_1403B10D9
; ---------------------------------------------------------------------------

loc_1403B1125:                          ; CODE XREF: sub_1403B1048+BF↑j
                call    sub_1403F9500
                mov     eax, [rdi+0E0h]
                test    al, 2
                jz      loc_1404A964C

loc_1403B1138:                          ; CODE XREF: sub_1403B1048+F861E↓j
                mov     rbx, cs:qword_140C4BFE0
                jmp     short loc_1403B117C
; ---------------------------------------------------------------------------

loc_1403B1141:                          ; CODE XREF: sub_1403B1048+14A↓j
                                        ; sub_1403B1048+156↓j
                mov     eax, [r10+0E0h]
                test    al, 2
                jz      short loc_1403B117C
                mov     eax, [r10+0B8h]
                test    al, 2
                jz      short loc_1403B117C
                test    r12d, r12d
                jz      loc_1404A966B
                mov     ecx, [r10+30h]
                lea     rax, [r10+18h]
                lea     r9, [rsi+10h]
                mov     [rsp+48h+var_28], rax
                mov     r8, rdi
                mov     rdx, r10
                call    sub_1403B1348

loc_1403B117C:                          ; CODE XREF: sub_1403B1048+F7↑j
                                        ; sub_1403B1048+102↑j ...
                cmp     rbx, r14
                jz      short loc_1403B11A0
                mov     rsi, rbx
                mov     r10, rbx
                mov     rbx, [rbx]
                cmp     qword ptr [rsi+0C0h], 0
                jz      short loc_1403B1141
                mov     eax, [rsi+0B8h]
                test    al, 8
                jz      short loc_1403B117C
                jmp     short loc_1403B1141
; ---------------------------------------------------------------------------

loc_1403B11A0:                          ; CODE XREF: sub_1403B1048+137↑j
                call    sub_1403F9500
                mov     eax, [rdi+0E0h]
                mov     rcx, rdi
                test    al, 2
                jz      loc_1404A9688
                mov     r15d, 1312D0h
                xor     r8d, r8d
                mov     edx, r15d
                call    sub_1403B1A48

loc_1403B11C7:                          ; CODE XREF: sub_1403B1048+F865C↓j
                call    sub_1403F9500
                mov     rbx, cs:qword_140C4BFE0
                jmp     short loc_1403B1210
; ---------------------------------------------------------------------------

loc_1403B11D5:                          ; CODE XREF: sub_1403B1048+1DE↓j
                                        ; sub_1403B1048+1EA↓j
                mov     eax, [r10+0E0h]
                test    al, 2
                jz      short loc_1403B1210
                mov     eax, [r10+0B8h]
                test    al, 2
                jz      short loc_1403B1210
                test    r12d, r12d
                jz      loc_1404A96A9
                mov     ecx, [r10+30h]
                lea     rax, [r10+28h]
                lea     r9, [rsi+20h]
                mov     [rsp+48h+var_28], rax
                mov     r8, rdi
                mov     rdx, r10
                call    sub_1403B1348

loc_1403B1210:                          ; CODE XREF: sub_1403B1048+18B↑j
                                        ; sub_1403B1048+196↑j ...
                cmp     rbx, r14
                jz      short loc_1403B1234
                mov     rsi, rbx
                mov     r10, rbx
                mov     rbx, [rbx]
                cmp     qword ptr [rsi+0C0h], 0
                jz      short loc_1403B11D5
                mov     eax, [rsi+0B8h]
                test    al, 8
                jz      short loc_1403B1210
                jmp     short loc_1403B11D5
; ---------------------------------------------------------------------------

loc_1403B1234:                          ; CODE XREF: sub_1403B1048+1CB↑j
                mov     rsi, cs:qword_140C4BFE0
                jmp     short loc_1403B1244
; ---------------------------------------------------------------------------

loc_1403B123D:                          ; CODE XREF: sub_1403B1048+29F↓j
                                        ; sub_1403B1048+2A9↓j ...
                lea     r14, qword_140C4BFE0

loc_1403B1244:                          ; CODE XREF: sub_1403B1048+1F3↑j
                                        ; sub_1403B1048+21D↓j ...
                cmp     rsi, r14
                jz      loc_1403B131F
                mov     rbx, rsi
                mov     rsi, [rsi]
                cmp     qword ptr [rbx+0C0h], 0
                jz      short loc_1403B1267
                mov     eax, [rbx+0B8h]
                test    al, 8
                jz      short loc_1403B1244

loc_1403B1267:                          ; CODE XREF: sub_1403B1048+213↑j
                mov     eax, [rbx+0E0h]
                test    al, 2
                jz      short loc_1403B1244
                mov     ebp, [rbx+0B8h]
                test    bpl, 2
                jz      short loc_1403B1244
                mov     rcx, [rbx+20h]
                mov     rax, [rbx+10h]
                mov     r14, rcx
                mov     rdx, [rbx+28h]
                sub     r14, rax
                mov     r8, [rbx+18h]
                mov     r9, rdx
                sub     r9, r8
                cmp     rcx, rax
                jb      loc_1404A96C6

loc_1403B12A2:                          ; CODE XREF: sub_1403B1048+F868F↓j
                cmp     rdx, r8
                jb      loc_1404A96DC

loc_1403B12AB:                          ; CODE XREF: sub_1403B1048+F86A5↓j
                test    r12d, r12d
                jz      short loc_1403B12C8
                mov     rdx, [rdi+0C0h]
                mov     r8d, 989680h
                mov     rcx, r9
                call    sub_1403962D0
                mov     r15, rax

loc_1403B12C8:                          ; CODE XREF: sub_1403B1048+266↑j
                imul    rax, r14, 989680h
                xor     edx, edx
                and     ebp, 0FFFFFFF7h
                div     r15
                mov     [rbx+0B8h], ebp
                mov     [rbx+0C0h], rax
                cmp     rbx, rdi
                jz      loc_1403B123D
                test    bpl, 4
                jnz     loc_1403B123D
                mov     rdx, [rbx+88h]
                test    rdx, rdx
                jz      loc_1403B123D
                mov     rcx, rbx
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, rdx
                call    sub_1404079D0
                jmp     loc_1403B123D
; ---------------------------------------------------------------------------

loc_1403B131F:                          ; CODE XREF: sub_1403B1048+3E↑j
                                        ; sub_1403B1048+65↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B1048   endp

byte_1403B133F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0098↑o
                                        ; .pdata:00000001400DE450↑o

; =============== S U B R O U T I N E =======================================


sub_1403B1348   proc near               ; CODE XREF: sub_1403B1048+12F↑p
                                        ; sub_1403B1048+1C3↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404A96F2 SIZE 00000027 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12, [rsp+38h+arg_20]
                mov     r14, r9
                mov     rdi, r8
                mov     r15d, ecx
                mov     rsi, rdx

loc_1403B1376:                          ; CODE XREF: sub_1403B1348+B7↓j
                call    sub_1403F9500
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     rbp, rax
                call    sub_1403F9500
                cmp     rsi, cs:qword_140C4BE90
                jnz     short loc_1403B13A2
                cmp     cs:byte_140C4BFF8, 0
                jnz     loc_1404A96F2

loc_1403B13A2:                          ; CODE XREF: sub_1403B1348+4B↑j
                mov     rcx, rsi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rsi+70h]
                call    sub_1404079D0

loc_1403B13B6:                          ; CODE XREF: sub_1403B1348+F83B2↓j
                mov     [r14], rax
                call    sub_1403F9500
                cmp     rdi, cs:qword_140C4BE90
                jz      loc_1404A96FF

loc_1403B13CB:                          ; CODE XREF: sub_1403B1348+F83BE↓j
                mov     rcx, rdi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdi+70h]
                call    sub_1404079D0

loc_1403B13DF:                          ; CODE XREF: sub_1403B1348+F83CC↓j
                mov     [r12], rax
                call    sub_1403F9500
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     rbx, rax
                call    sub_1403F9500
                sub     rbx, rbp
                cmp     rbx, r15
                ja      loc_1403B1376
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B1348   endp

byte_1403B1425  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A00C8↑o
                                        ; .pdata:00000001400DE45C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B142C   proc near               ; CODE XREF: sub_1403B1048+B4↑p
                                        ; sub_1404C37E0+F1↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A971A SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rsi, rcx
                or      ebp, 0FFFFFFFFh
                mov     r14d, 19h

loc_1403B1453:                          ; CODE XREF: sub_1403B142C+B4↓j
                call    sub_1403F9500
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     r15, rax
                call    sub_1403F9500
                cmp     rsi, cs:qword_140C4BE90
                jnz     short loc_1403B147F
                cmp     cs:byte_140C4BFF8, 0
                jnz     loc_1404A971A

loc_1403B147F:                          ; CODE XREF: sub_1403B142C+44↑j
                mov     rcx, rsi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rsi+70h]
                call    sub_1404079D0

loc_1403B1493:                          ; CODE XREF: sub_1403B142C+F82F6↓j
                call    sub_1403F9500
                cmp     rdi, cs:qword_140C4BE90
                jz      loc_1404A9727

loc_1403B14A5:                          ; CODE XREF: sub_1403B142C+F8302↓j
                mov     rcx, rdi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdi+70h]
                call    sub_1404079D0

loc_1403B14B9:                          ; CODE XREF: sub_1403B142C+F8310↓j
                call    sub_1403F9500
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     rbx, rax
                call    sub_1403F9500
                sub     rbx, r15
                mov     ecx, ebp
                cmp     rbx, rcx
                cmovnb  ebx, ebp
                mov     ebp, ebx
                sub     r14, 1
                jnz     loc_1403B1453
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                shl     eax, 2
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B142C   endp

byte_1403B1505  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A00F4↑o
                                        ; .pdata:00000001400DE468↑o

; =============== S U B R O U T I N E =======================================


sub_1403B150C   proc near               ; CODE XREF: sub_1403B0DA8:loc_1403B0E64↑p
                                        ; DATA XREF: .rdata:00000001400A0120↑o ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A9742 SIZE 0000037F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r13
                push    r15
                sub     rsp, 30h
                xor     ebx, ebx
                cmp     cs:byte_140C4BFF8, bl
                lea     r13d, [rbx+2]
                jnz     short loc_1403B1587
                lea     r15, qword_140C4BFE0

loc_1403B1539:                          ; CODE XREF: sub_1403B150C+79↓j
                xor     r9d, r9d
                mov     [rsp+48h+var_28], ebx
                mov     r8d, 6000h
                mov     edx, r13d
                mov     rbp, rbx
                mov     rsi, rbx
                lea     ecx, [r9+1]
                call    sub_14039E0C8
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404A9742

loc_1403B1564:                          ; CODE XREF: sub_1403B150C+F8255↓j
                                        ; sub_1403B150C+F8279↓j ...
                mov     rcx, rdi
                call    sub_1403B17A4
                test    eax, eax
                js      short loc_1403B157F
                mov     rcx, rdi
                call    sub_1403B1048
                mov     cs:byte_140C4BFF8, 1

loc_1403B157F:                          ; CODE XREF: sub_1403B150C+62↑j
                cmp     cs:byte_140C4BFF8, bl
                jz      short loc_1403B1539

loc_1403B1587:                          ; CODE XREF: sub_1403B150C+24↑j
                mov     esi, 4

loc_1403B158C:                          ; CODE XREF: sub_1403B150C+A4↓j
                cmp     cs:qword_140C4BFB0, rbx
                jnz     short loc_1403B15BF
                call    sub_1403B1B94
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404A982E
                mov     rcx, rax
                call    sub_1403B17A4
                test    eax, eax
                js      short loc_1403B158C
                or      [rdi+0B8h], esi
                mov     cs:qword_140C4BFB0, rdi

loc_1403B15BF:                          ; CODE XREF: sub_1403B150C+87↑j
                                        ; sub_1403B150C+E9↓j
                mov     rcx, cs:qword_140C4BE90
                test    rcx, rcx
                jz      short loc_1403B15DA
                mov     eax, [rcx+0B8h]
                test    sil, al
                jnz     loc_1404A983D

loc_1403B15DA:                          ; CODE XREF: sub_1403B150C+BD↑j
                                        ; sub_1403B150C+F833E↓j
                call    sub_1403B18DC
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404A9AAD
                mov     rcx, rax
                call    sub_1403B17A4
                test    eax, eax
                js      short loc_1403B15BF
                mov     rcx, rdi
                mov     cs:qword_140C4BE90, rdi
                call    sub_1403A5D5C
                or      [rdi+0B8h], esi

loc_1403B160C:                          ; CODE XREF: sub_1403B150C+F8338↓j
                mov     rcx, cs:qword_140C4BFC0
                test    dword ptr [rcx+0E0h], 2000h
                jnz     loc_1404A984F
                cmp     rcx, cs:qword_140C4BFB0
                jz      loc_1404A984F
                or      [rcx+0B8h], esi

loc_1403B1636:                          ; CODE XREF: sub_1403B150C+F8351↓j
                mov     rax, cs:qword_140C4BEF8
                cmp     rcx, rax
                jnz     loc_1404A9862

loc_1403B1646:                          ; CODE XREF: sub_1403B150C+F835C↓j
                cmp     cs:qword_140C4BFF0, rbx
                jnz     short loc_1403B1676
                xor     r9d, r9d
                mov     [rsp+48h+var_28], ebx
                mov     edx, 100002h
                mov     r8d, 6000h
                lea     ecx, [r9+0Fh]
                call    sub_14039E0C8
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1404A986D

loc_1403B1676:                          ; CODE XREF: sub_1403B150C+141↑j
                                        ; sub_1403B150C+F836C↓j ...
                mov     ebp, 8000h

loc_1403B167B:                          ; CODE XREF: sub_1403B150C+F839E↓j
                cmp     cs:qword_140C4BFC8, rbx
                jnz     short loc_1403B16A6
                mov     rax, cs:qword_140C4BFB0
                test    [rax+0E0h], ebp
                jnz     short loc_1403B16A6
                xor     ecx, ecx
                call    sub_1403B183C
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1404A98A0

loc_1403B16A6:                          ; CODE XREF: sub_1403B150C+176↑j
                                        ; sub_1403B150C+185↑j ...
                mov     rcx, cs:qword_140C4BFB0
                mov     edi, 20h ; ' '
                mov     r15d, 0F00h
                mov     eax, [rcx+0E0h]
                test    al, 1
                jz      loc_1404A98C2

loc_1403B16C6:                          ; CODE XREF: sub_1403B150C+F8404↓j
                mov     r8, cs:qword_140C4BFC8
                test    r8, r8
                jnz     loc_1404A995D

loc_1403B16D6:                          ; CODE XREF: sub_1403B150C+F845A↓j
                                        ; sub_1403B150C+F8468↓j ...
                cmp     cs:qword_140C4C000, rbx
                jnz     short loc_1403B1705
                mov     rax, cs:qword_140C4BE90
                test    [rax+0E0h], ebp
                jnz     loc_1404A99C8

loc_1403B16F2:                          ; CODE XREF: sub_1403B150C+F84CF↓j
                mov     cl, 1
                call    sub_1403B183C
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1404A99E0

loc_1403B1705:                          ; CODE XREF: sub_1403B150C+1D1↑j
                                        ; sub_1403B150C+F84C9↓j ...
                cmp     cs:qword_140C4BE80, rbx
                jnz     short loc_1403B1722
                lea     rax, off_140005530
                cmp     cs:off_140C00A40, rax
                jz      loc_1404A9A02

loc_1403B1722:                          ; CODE XREF: sub_1403B150C+200↑j
                                        ; sub_1403B150C+F855C↓j ...
                mov     rax, cs:qword_140C4BE90
                mov     ecx, [rax+0E0h]
                test    cl, 1
                jz      short loc_1403B1767

loc_1403B1734:                          ; CODE XREF: sub_1403B150C+24C↓j
                cmp     cs:qword_140C4BF80, rbx
                jnz     short loc_1403B1767
                call    sub_1403B18DC
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404A9A7C
                mov     rcx, rax
                call    sub_1403B17A4
                test    eax, eax
                js      short loc_1403B1734
                or      [rdi+0B8h], esi
                mov     cs:qword_140C4BF80, rdi

loc_1403B1767:                          ; CODE XREF: sub_1403B150C+226↑j
                                        ; sub_1403B150C+22F↑j ...
                cmp     cs:byte_140C4A4A0, bl
                jnz     short loc_1403B1780
                call    sub_1403B1C7C
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1404A9A8B

loc_1403B1780:                          ; CODE XREF: sub_1403B150C+261↑j
                                        ; sub_1403B150C+F8589↓j ...
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B150C   endp

byte_1403B179C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0120↑o
                                        ; .pdata:00000001400DE474↑o

; =============== S U B R O U T I N E =======================================


sub_1403B17A4   proc near               ; CODE XREF: sub_1403B0CB8+84↑p
                                        ; sub_1403B1048+88↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404A9AC2 SIZE 00000034 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+0B8h]
                mov     rbx, rcx
                test    al, 2
                jnz     short loc_1403B182A
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rbx+68h]
                call    sub_1404079D0
                mov     edi, eax
                test    eax, eax
                js      loc_1404A9AC2
                mov     eax, [rbx+0E0h]
                test    al, 2
                jz      short loc_1403B1805
                mov     rcx, rbx
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rbx+70h]
                call    sub_1404079D0
                xchg    rax, [rbx+0C8h]
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1403A5C54

loc_1403B1805:                          ; CODE XREF: sub_1403B17A4+3A↑j
                cmp     dword ptr [rbx+0E4h], 3
                jz      short loc_1403B182E

loc_1403B180E:                          ; CODE XREF: sub_1403B17A4+88↓j
                                        ; sub_1403B17A4+8F↓j ...
                mov     eax, edi
                sar     eax, 1Fh
                add     eax, 2
                or      [rbx+0B8h], eax
                mov     eax, edi
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B182A:                          ; CODE XREF: sub_1403B17A4+15↑j
                xor     edi, edi
                jmp     short loc_1403B180E
; ---------------------------------------------------------------------------

loc_1403B182E:                          ; CODE XREF: sub_1403B17A4+68↑j
                call    sub_1403B19CC
                jmp     short loc_1403B180E
sub_1403B17A4   endp

; ---------------------------------------------------------------------------
byte_1403B1835  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0140↑o
                                        ; .pdata:00000001400DE480↑o

; =============== S U B R O U T I N E =======================================


sub_1403B183C   proc near               ; CODE XREF: sub_1403B150C+189↑p
                                        ; sub_1403B150C+1E8↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                mov     r8d, 6000h
                test    cl, cl
                jz      short loc_1403B1886
                xor     r9d, r9d
                mov     edx, 8002h
                xor     ecx, ecx
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B1880
                mov     [rsp+38h+var_18], 1
                xor     r9d, r9d
                mov     edx, 8002h
                mov     r8d, 6F00h

loc_1403B1879:                          ; CODE XREF: sub_1403B183C+97↓j
                xor     ecx, ecx
                call    sub_14039E0C8

loc_1403B1880:                          ; CODE XREF: sub_1403B183C+25↑j
                                        ; sub_1403B183C+5F↓j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B1886:                          ; CODE XREF: sub_1403B183C+11↑j
                mov     edx, 8020h
                xor     ecx, ecx
                mov     r9d, 0F00h
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B1880
                and     [rsp+38h+var_18], eax
                mov     edx, 8040h
                xor     ecx, ecx
                mov     r9d, 0F00h
                mov     r8d, 6000h
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B1880
                and     [rsp+38h+var_18], eax
                mov     edx, 8010h
                mov     r9d, 0F00h
                mov     r8d, 6000h
                jmp     short loc_1403B1879
sub_1403B183C   endp

; ---------------------------------------------------------------------------
byte_1403B18D5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE48C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B18DC   proc near               ; CODE XREF: sub_1403B150C:loc_1403B15DA↑p
                                        ; sub_1403B150C+231↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A9AF6 SIZE 00000098 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     ebp, 6000h
                cmp     cs:byte_140C4BF10, dil
                mov     esi, 2
                jnz     short loc_1403B1978
                call    sub_1403A1FC8
                test    al, al
                jnz     short loc_1403B1951
                cmp     cs:byte_140C4BE64, 1
                lea     edx, [rsi+1]
                mov     ebx, 2000h
                mov     [rsp+38h+var_18], edi
                cmova   ebx, ebp
                lea     ecx, [rsi+3]
                mov     r8d, ebx
                xor     r9d, r9d
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B19AF
                xor     r9d, r9d
                mov     [rsp+38h+var_18], edi
                mov     r8d, ebx
                lea     edx, [rsi+1]
                lea     ecx, [rsi+8]
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B19AF

loc_1403B1951:                          ; CODE XREF: sub_1403B18DC+30↑j
                cmp     cs:byte_140C4A458, dil
                jnz     loc_1404A9AF6

loc_1403B195E:                          ; CODE XREF: sub_1403B18DC+F8221↓j
                                        ; sub_1403B18DC+F8245↓j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], edi
                xor     r8d, r8d
                mov     edx, esi
                lea     ecx, [r9+8]
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B19AF

loc_1403B1978:                          ; CODE XREF: sub_1403B18DC+27↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], edi
                mov     r8d, ebp
                mov     edx, esi
                lea     ecx, [r9+0Bh]
                call    sub_14039E0C8
                test    rax, rax
                jnz     short loc_1403B19AF
                xor     r9d, r9d
                mov     [rsp+38h+var_18], edi
                mov     r8d, ebp
                lea     ecx, [rax+3]
                mov     edx, esi
                call    sub_14039E0C8
                test    rax, rax
                jz      loc_1404A9B26

loc_1403B19AF:                          ; CODE XREF: sub_1403B18DC+59↑j
                                        ; sub_1403B18DC+73↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B18DC   endp

byte_1403B19C5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0174↑o
                                        ; .pdata:00000001400DE498↑o

; =============== S U B R O U T I N E =======================================


sub_1403B19CC   proc near               ; CODE XREF: sub_1403B17A4:loc_1403B182E↑p
                                        ; DATA XREF: .rdata:00000001400A0190↑o ...

var_18          = dword ptr -18h

; FUNCTION CHUNK AT 00000001404A9B8E SIZE 0000000F BYTES

                sub     rsp, 38h
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 1
                xor     r8d, r8d
                mov     edx, 100h
                lea     ecx, [r9+3]
                call    sub_14039E0C8
                test    rax, rax
                jz      short loc_1403B1A39
                xor     edx, edx
                mov     [rsp+38h+var_18], 1
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [rdx+4]
                call    sub_14039E0C8
                test    rax, rax
                jnz     loc_1404A9B8E

loc_1403B1A12:                          ; CODE XREF: sub_1403B19CC+F81CC↓j
                xor     edx, edx
                mov     [rsp+38h+var_18], 1
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [rdx+2]
                call    sub_14039E0C8
                test    rax, rax
                jz      short loc_1403B1A39
                and     dword ptr [rax+0E0h], 0FFFFF0FFh

loc_1403B1A39:                          ; CODE XREF: sub_1403B19CC+23↑j
                                        ; sub_1403B19CC+61↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B19CC   endp

byte_1403B1A3F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0190↑o
                                        ; .pdata:00000001400DE4A4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B1A48   proc near               ; CODE XREF: sub_1403B1048+17A↑p
                                        ; DATA XREF: .rdata:00000001400A01C8↑o ...

var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A9B9E SIZE 000000CA BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_40], rax
                mov     eax, [rcx+0E0h]
                xor     bpl, bpl
                mov     esi, 1
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     r13b, r8b
                mov     r14, rdx
                mov     rbx, rcx
                movups  [rsp+88h+var_68], xmm0
                movups  [rsp+88h+var_50], xmm1
                test    sil, al
                jnz     loc_1404A9B9E

loc_1403B1AA1:                          ; CODE XREF: sub_1403B1A48+F8163↓j
                                        ; sub_1403B1A48+F816F↓j ...
                mov     rcx, rbx
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rbx+70h]
                call    sub_1404079D0
                mov     rdi, rax
                mov     [rsp+88h+var_58], rax
                call    sub_1403F9500
                mov     ecx, [rbx+0DCh]
                mov     r12, rsi
                shl     r12, cl
                mov     rax, 0D6BF94D5E57A42BDh
                mov     rcx, [rbx+0C0h]
                mov     r15, rdi
                imul    rcx, r14
                xor     esi, esi
                xor     edi, edi
                add     rcx, 98967Fh
                mul     rcx
                mov     r14, rdx
                shr     r14, 17h
                add     r14, 1
                jz      short loc_1403B1B53

loc_1403B1B01:                          ; CODE XREF: sub_1403B1A48+109↓j
                test    r13b, r13b
                jnz     loc_1404A9C2E
                xor     ecx, ecx

loc_1403B1B0C:                          ; CODE XREF: sub_1403B1A48+DD↓j
                pause
                mov     eax, cs:dword_140C4A5D0
                imul    eax, ecx
                inc     ecx
                mov     cs:dword_140C4A5D0, eax
                cmp     ecx, 0C8h
                jb      short loc_1403B1B0C

loc_1403B1B27:                          ; CODE XREF: sub_1403B1A48+F8204↓j
                                        ; sub_1403B1A48+F820B↓j
                mov     rcx, rbx
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rbx+70h]
                call    sub_1404079D0
                cmp     rax, r15
                jb      short loc_1403B1B86

loc_1403B1B40:                          ; CODE XREF: sub_1403B1A48+141↓j
                mov     rcx, rsi
                mov     r15, rax
                sub     rcx, [rsp+88h+var_58]
                add     rcx, rax
                cmp     rcx, r14
                jb      short loc_1403B1B01

loc_1403B1B53:                          ; CODE XREF: sub_1403B1A48+B7↑j
                test    bpl, bpl
                jnz     loc_1404A9C58

loc_1403B1B5C:                          ; CODE XREF: sub_1403B1A48+F821B↓j
                mov     rcx, [rsp+88h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_38]
                mov     rbx, [r11+48h]
                mov     rbp, [r11+50h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B1B86:                          ; CODE XREF: sub_1403B1A48+F6↑j
                add     rsi, r12
                jmp     short loc_1403B1B40
; } // starts at 1403B1A48
sub_1403B1A48   endp

; ---------------------------------------------------------------------------
byte_1403B1B8B  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A01C8↑o
                                        ; .pdata:00000001400DE4B0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B1B94   proc near               ; CODE XREF: sub_1403B150C+89↑p
                                        ; DATA XREF: .rdata:00000001400A01F0↑o ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A9C68 SIZE 000001AD BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     bl, cs:byte_140C4BFB8
                xor     edi, edi
                mov     esi, 0F00h
                mov     ebp, 6000h
                test    bl, bl
                jnz     short loc_1403B1BDA
                mov     r9d, esi
                mov     [rax-18h], edi
                mov     r8d, ebp
                lea     edx, [rdi+60h]
                lea     ecx, [rdi+8]
                call    sub_14039E0C8
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1403B1C44

loc_1403B1BDA:                          ; CODE XREF: sub_1403B1B94+28↑j
                mov     r9d, 50h ; 'P'
                mov     [rsp+38h+var_18], edi
                xor     r8d, r8d
                mov     edx, 220h
                lea     ecx, [r9-45h]
                call    sub_14039E0C8
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1403B1C44
                test    bl, bl
                jnz     loc_1404A9C68
                cmp     cs:byte_140C4A459, dil
                jnz     loc_1404A9C68
                lea     rax, off_140005530
                cmp     cs:off_140C00A40, rax
                jz      loc_1404A9C68
                mov     r9d, esi
                mov     [rsp+38h+var_18], edi
                mov     r8d, ebp
                lea     edx, [rcx+21h]
                call    sub_14039E0C8
                mov     rcx, rax
                test    rax, rax
                jz      loc_1404A9C68

loc_1403B1C44:                          ; CODE XREF: sub_1403B1B94+44↑j
                                        ; sub_1403B1B94+67↑j ...
                mov     eax, [rcx+0E0h]
                test    al, 50h
                jz      short loc_1403B1C71
                and     al, 20h
                neg     al
                sbb     rax, rax
                and     rcx, rax

loc_1403B1C58:                          ; CODE XREF: sub_1403B1B94+E0↓j
                                        ; sub_1403B1B94+F8276↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rcx
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B1C71:                          ; CODE XREF: sub_1403B1B94+B8↑j
                mov     rcx, rdi
                jmp     short loc_1403B1C58
sub_1403B1B94   endp

; ---------------------------------------------------------------------------
byte_1403B1C76  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A01F0↑o
                                        ; .pdata:00000001400DE4BC↑o

; =============== S U B R O U T I N E =======================================


sub_1403B1C7C   proc near               ; CODE XREF: sub_1403B150C+263↑p
                                        ; DATA XREF: .rdata:00000001400A0210↑o ...

var_18          = dword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A9E16 SIZE 00000061 BYTES

                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_8], 0
                mov     edi, 0Bh

loc_1403B1C91:                          ; CODE XREF: sub_1403B1C7C+41↓j
                                        ; sub_1403B1C7C+F81A2↓j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 4
                xor     r8d, r8d
                mov     edx, 28020h
                mov     ecx, edi
                call    sub_14039E0C8
                mov     rbx, rax
                test    rax, rax
                jnz     loc_1404A9E16
                test    edi, edi
                jz      short loc_1403B1CBF
                xor     edi, edi
                jmp     short loc_1403B1C91
; ---------------------------------------------------------------------------

loc_1403B1CBF:                          ; CODE XREF: sub_1403B1C7C+3D↑j
                                        ; sub_1403B1C7C+F81D3↓j ...
                mov     rcx, cs:qword_140C4BFE0
                lea     rdx, qword_140C4BFE0
                jmp     short loc_1403B1CDD
; ---------------------------------------------------------------------------

loc_1403B1CCF:                          ; CODE XREF: sub_1403B1C7C+64↓j
                lea     rax, [rcx]
                mov     rcx, [rcx]
                btr     dword ptr [rax+0B8h], 8

loc_1403B1CDD:                          ; CODE XREF: sub_1403B1C7C+51↑j
                cmp     rcx, rdx
                jnz     short loc_1403B1CCF
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B1C7C   endp

algn_1403B1CF1:                         ; DATA XREF: .rdata:00000001400A0210↑o
                                        ; .pdata:00000001400DE4C8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B1CF8   proc near               ; CODE XREF: sub_1403B0CB8+32↑p
                                        ; sub_1403B0DA8+5D↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                call    sub_1403B1D2C
                test    eax, eax
                js      short loc_1403B1D1C
                cmp     ebx, 1
                jnz     short loc_1403B1D1C
                call    sub_1403B3C9C
                test    eax, eax
                js      short loc_1403B1D1C
                call    sub_1403B3820

loc_1403B1D1C:                          ; CODE XREF: sub_1403B1CF8+F↑j
                                        ; sub_1403B1CF8+14↑j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B1CF8   endp

byte_1403B1D23  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE4D4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B1D2C   proc near               ; CODE XREF: sub_1403B1CF8+8↑p
                                        ; DATA XREF: .rdata:00000001400A0230↑o ...

var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_10          = dword ptr -10h
var_8           = dword ptr -8
arg_0           = byte ptr  10h

; FUNCTION CHUNK AT 00000001404A9E78 SIZE 00000088 BYTES

                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0B0h
                test    ecx, ecx
                jnz     short loc_1403B1D4D
                call    sub_1403B2200

loc_1403B1D43:                          ; CODE XREF: sub_1403B1D2C+31↓j
                                        ; sub_1403B1D2C+3A↓j ...
                add     rsp, 0B0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B1D4D:                          ; CODE XREF: sub_1403B1D2C+10↑j
                cmp     ecx, 1
                jnz     loc_1404A9EF9
                call    sub_1403B1DBC
                test    eax, eax
                js      short loc_1403B1D43
                call    sub_1403B1F48
                test    eax, eax
                js      short loc_1403B1D43
                call    sub_1403B2BAC
                test    eax, eax
                js      short loc_1403B1D43
                call    sub_1403B208C
                test    eax, eax
                js      short loc_1403B1D43
                call    sub_1403B1EBC
                test    eax, eax
                js      short loc_1403B1D43
                lea     r8, [rbp+57h+arg_0]
                mov     [rbp+57h+arg_0], 1
                mov     ecx, 2
                call    sub_1403A1E8C
                test    eax, eax
                js      short loc_1403B1DA3
                cmp     [rbp+57h+arg_0], 0
                jnz     loc_1404A9E78

loc_1403B1DA3:                          ; CODE XREF: sub_1403B1D2C+6B↑j
                                        ; sub_1403B1D2C+F81C8↓j
                call    sub_1403B3B4C
                test    eax, eax
                js      short loc_1403B1D43
                call    sub_1403B3AF0
                jmp     short loc_1403B1D43
sub_1403B1D2C   endp

; ---------------------------------------------------------------------------
byte_1403B1DB3  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0230↑o
                                        ; .pdata:00000001400DE4E0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B1DBC   proc near               ; CODE XREF: sub_1403B1D2C+2A↑p
                                        ; DATA XREF: .pdata:00000001400DE4EC↑o

var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_4C          = dword ptr -4Ch
var_38          = dword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     ecx, 50434146h
                call    sub_1403B38B4
                mov     rbx, rax
                test    rax, rax
                jz      loc_1403B1E8D
                cmp     byte ptr [rax+8], 5
                jb      short loc_1403B1E05
                test    dword ptr [rax+70h], 100000h
                jnz     loc_1403B1E8D

loc_1403B1E05:                          ; CODE XREF: sub_1403B1DBC+3A↑j
                xor     edx, edx
                lea     rcx, [rbp+57h+var_C0]
                mov     r8d, 90h
                call    memset
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_C0], 1
                lea     r8, [rbp+57h+var_C0]
                mov     [rbp+57h+var_BC], 90h
                lea     rdx, [rbp+57h+var_30]
                mov     rcx, rbx
                movups  [rbp+57h+var_30], xmm0
                movups  [rbp+57h+var_20], xmm0
                call    sub_1403B3A88
                test    eax, eax
                jnz     short loc_1403B1E8D
                test    dword ptr [rbx+70h], 100h
                lea     ecx, [rax+20h]
                mov     [rbp+57h+var_5C], 18h
                jnz     short loc_1403B1EAD

loc_1403B1E56:                          ; CODE XREF: sub_1403B1DBC+F8↓j
                lea     rax, [rbp+57h+var_30]
                mov     [rbp+57h+var_60], ecx
                mov     [rbp+57h+var_68], rax
                lea     rcx, [rbp+57h+var_C0]
                lea     rax, sub_1403CFF90
                mov     [rbp+57h+var_58], 369E99h
                xor     edx, edx
                mov     [rbp+57h+var_B8], rax
                mov     [rbp+57h+var_4C], 2
                mov     [rbp+57h+var_38], 1
                call    sub_1403B3370

loc_1403B1E8D:                          ; CODE XREF: sub_1403B1DBC+30↑j
                                        ; sub_1403B1DBC+43↑j ...
                xor     eax, eax
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E0h+arg_0]
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B1EAD:                          ; CODE XREF: sub_1403B1DBC+98↑j
                mov     byte ptr [rbp+57h+var_30], 1
                mov     [rbp+57h+var_5C], ecx
                jmp     short loc_1403B1E56
; } // starts at 1403B1DBC
sub_1403B1DBC   endp

; ---------------------------------------------------------------------------
byte_1403B1EB6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE4EC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B1EBC   proc near               ; CODE XREF: sub_1403B1D2C+4E↑p
                                        ; DATA XREF: .rdata:00000001400A0280↑o ...

var_C0          = xmmword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 00000001404A9F00 SIZE 00000162 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     edx, edx
                lea     rcx, [rbp+57h+var_A0]
                mov     r8d, 90h
                call    memset
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     ecx, 524D544Dh
                mov     [rbp+57h+var_B0], rax
                movups  [rbp+57h+var_C0], xmm0
                call    sub_1403B38B4
                mov     rbx, rax
                test    rax, rax
                jnz     loc_1404A9F00

loc_1403B1F19:                          ; CODE XREF: sub_1403B1EBC+F804A↓j
                                        ; sub_1403B1EBC+F806C↓j ...
                xor     eax, eax
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E0h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B1EBC
sub_1403B1EBC   endp

algn_1403B1F41:                         ; DATA XREF: .rdata:00000001400A0280↑o
                                        ; .pdata:00000001400DE4F8↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B1F48   proc near               ; CODE XREF: sub_1403B1D2C+33↑p
                                        ; DATA XREF: .pdata:00000001400DE504↑o

var_C0          = qword ptr -0C0h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     ecx, 50434146h
                call    sub_1403B38B4
                test    rax, rax
                jz      loc_1403B206D
                cmp     byte ptr [rax+8], 5
                jb      short loc_1403B1F88
                mov     al, [rax+6Dh]
                test    al, 20h
                jnz     loc_1403B206D

loc_1403B1F88:                          ; CODE XREF: sub_1403B1F48+33↑j
                xor     edx, edx
                lea     rax, qword_140CF42E0
                mov     [rsp+0E0h+var_C0], rax
                lea     r9d, [rdx+10h]
                lea     r8d, [rdx+1]
                call    sub_1403A208C
                test    eax, eax
                js      loc_1403B206D
                xor     edx, edx
                lea     rax, unk_140CF42D0
                mov     [rsp+0E0h+var_C0], rax
                lea     r9d, [rdx+10h]
                lea     r8d, [rdx+7]
                call    sub_1403A208C
                test    eax, eax
                js      loc_1403B206D
                xorps   xmm0, xmm0
                lea     rcx, [rbp+57h+var_B0]
                xor     edx, edx
                mov     r8d, 90h
                movups  [rbp+57h+var_20], xmm0
                call    memset
                and     [rbp+57h+var_30], 0
                lea     rax, [rbp+57h+var_20]
                mov     [rbp+57h+var_58], rax
                lea     rcx, [rbp+57h+var_B0]
                lea     rax, sub_1404D5E00
                mov     [rbp+57h+var_B0], 1
                mov     [rbp+57h+var_A8], rax
                xor     edx, edx
                lea     rax, sub_1404D5C00
                mov     [rbp+57h+var_AC], 90h
                mov     [rbp+57h+var_98], rax
                lea     rax, sub_1404D5C70
                mov     [rbp+57h+var_90], rax
                lea     rax, sub_1404D5D70
                mov     [rbp+57h+var_60], rax
                lea     rax, sub_1404D5E40
                mov     [rbp+57h+var_88], rax
                mov     [rbp+57h+var_4C], 40h ; '@'
                mov     [rbp+57h+var_48], 800h
                mov     [rbp+57h+var_50], 10h
                mov     [rbp+57h+var_3C], 200130h
                mov     [rbp+57h+var_28], 2
                mov     [rbp+57h+var_38], 8
                call    sub_1403B3370

loc_1403B206D:                          ; CODE XREF: sub_1403B1F48+29↑j
                                        ; sub_1403B1F48+3A↑j ...
                xor     eax, eax
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B1F48
sub_1403B1F48   endp

byte_1403B2085  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE504↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B208C   proc near               ; CODE XREF: sub_1403B1D2C+45↑p
                                        ; DATA XREF: .rdata:00000001400A02C0↑o ...

var_B0          = qword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_1C          = dword ptr -1Ch
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = dword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AA062 SIZE 0000005E BYTES

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0D0h
                xorps   xmm0, xmm0
                mov     ecx, 43495041h
                movups  [rbp+57h+var_A0], xmm0
                call    sub_1403B38B4
                test    rax, rax
                jz      loc_1403B21E1
                xor     edi, edi
                lea     rax, [rbp+57h+var_A0]
                xor     edx, edx
                mov     [rsp+0D0h+var_B0], rax
                lea     r9d, [rdi+10h]
                lea     r8d, [rdi+6]
                call    sub_1403A208C
                test    eax, eax
                jns     loc_1404AA062

loc_1403B20DF:                          ; CODE XREF: sub_1403B208C+F7FE2↓j
                mov     ebx, 90h
                lea     rcx, [rbp+57h+var_90]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                and     [rbp+57h+arg_0], 0
                lea     rax, [rbp+57h+arg_0]
                mov     [rbp+57h+var_8C], ebx
                mov     ebx, 20h ; ' '
                mov     [rbp+57h+var_2C], ebx
                mov     [rbp+57h+var_38], rax
                mov     [rbp+57h+var_90], 1
                mov     [rbp+57h+var_8], 7
                mov     [rbp+57h+var_30], 8
                mov     [rbp+57h+var_1C], 863h
                call    sub_1403B38E4
                test    al, al
                jz      loc_1404AA073
                lea     eax, [rbx-16h]

loc_1403B2136:                          ; CODE XREF: sub_1403B208C+F7FF3↓j
                mov     dword ptr [rbp+57h+arg_0+4], eax
                test    eax, eax
                jz      loc_1404AA0B6
                sub     eax, 1
                jz      loc_1404AA0AC
                sub     eax, 1
                jz      loc_1404AA0A2
                sub     eax, 1
                jz      loc_1404AA098
                sub     eax, 5
                jz      short loc_1403B2176
                sub     eax, 1
                jz      loc_1404AA08E
                cmp     eax, 1
                jnz     loc_1404AA084
                lea     ebx, [rax+7Fh]

loc_1403B2176:                          ; CODE XREF: sub_1403B208C+D3↑j
                                        ; sub_1403B208C+F7FFD↓j ...
                xor     edx, edx
                mov     [rbp+57h+var_C], 1
                mov     rax, rdi
                mov     [rbp+57h+var_10], 1
                div     rbx
                xor     edx, edx
                mov     byte ptr [rbp+57h+arg_0], 0FFh
                mov     [rbp+57h+var_28], rax
                lea     rcx, [rbp+57h+var_90]
                lea     rax, sub_14035BB60
                mov     [rbp+57h+var_88], rax
                lea     rax, sub_1403CB6F0
                mov     [rbp+57h+var_80], rax
                lea     rax, __misaligned_access
                mov     [rbp+57h+var_78], rax
                lea     rax, sub_140348000
                mov     [rbp+57h+var_70], rax
                lea     rax, sub_140365510
                mov     [rbp+57h+var_48], rax
                lea     rax, sub_14035BB30
                mov     [rbp+57h+var_68], rax
                call    sub_1403B3370

loc_1403B21E1:                          ; CODE XREF: sub_1403B208C+2B↑j
                lea     r11, [rsp+0D0h+var_s0]
                xor     eax, eax
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B208C   endp

algn_1403B21F9:                         ; DATA XREF: .rdata:00000001400A02C0↑o
                                        ; .pdata:00000001400DE510↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B2200   proc near               ; CODE XREF: sub_1403B1D2C+12↑p
                                        ; DATA XREF: .rdata:00000001400A02E4↑o ...

var_C0          = qword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_1C          = dword ptr -1Ch
var_8           = dword ptr -8
arg_0           = byte ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AA0C0 SIZE 0000002E BYTES

                mov     [rsp-8+arg_10], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                and     [rbp+57h+arg_8], 0
                lea     rcx, [rbp+57h+var_90]
                xorps   xmm0, xmm0
                mov     [rbp+57h+arg_0], 0
                xorps   xmm1, xmm1
                mov     ebx, 90h
                mov     r8d, ebx
                xor     edx, edx
                movups  [rbp+57h+var_B0], xmm0
                movups  [rbp+57h+var_A0], xmm1
                call    memset
                and     [rbp+57h+var_28], 0
                lea     rax, [rbp+57h+arg_8]
                mov     [rbp+57h+var_38], rax
                xor     edx, edx
                lea     rax, [rbp+57h+var_B0]
                mov     [rbp+57h+var_8C], ebx
                mov     ebx, 7
                mov     [rbp+57h+var_90], 1
                mov     [rbp+57h+var_2C], 40h ; '@'
                mov     [rbp+57h+var_8], 5
                mov     [rbp+57h+var_30], 4
                lea     r9d, [rbx+9]
                mov     [rsp+0E0h+var_C0], rax
                lea     r8d, [rbx-1]
                call    sub_1403A208C
                test    eax, eax
                jns     loc_1404AA0C0

loc_1403B228C:                          ; CODE XREF: sub_1403B2200+F7ED6↓j
                lea     r8, [rbp+57h+arg_0]
                lea     rdx, byte_140C48C31
                lea     rcx, byte_140C48C38
                call    sub_1403A19A0
                test    eax, eax
                js      loc_1404AA0DB
                cmp     cs:byte_140C48C38, 0
                mov     eax, 2007h
                cmovz   ebx, eax
                cmp     cs:byte_140C48C31, 0
                mov     [rbp+57h+var_1C], ebx
                jz      loc_1404AA0E2

loc_1403B22CA:                          ; CODE XREF: sub_1403B2200+F7EE9↓j
                cmp     [rbp+57h+arg_0], 0
                lea     rax, sub_1403A1850
                mov     [rbp+57h+var_88], rax
                jz      short loc_1403B231E
                bts     ebx, 18h
                lea     rax, sub_140365520
                mov     [rbp+57h+var_1C], ebx

loc_1403B22E9:                          ; CODE XREF: sub_1403B2200+125↓j
                lea     rdx, aVenVvvvDevDddd ; "VEN_vvvv&DEV_dddd&SUBVEN_ssss&SUBDEV_yy"...
                mov     [rbp+57h+var_80], rax
                lea     rcx, [rbp+57h+var_A0]
                call    RtlInitUnicodeString
                lea     rdx, [rbp+57h+var_A0]
                lea     rcx, [rbp+57h+var_90]
                call    sub_1403B3370
                mov     rbx, [rsp+0E0h+arg_10]
                xor     eax, eax
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B231E:                          ; CODE XREF: sub_1403B2200+D9↑j
                lea     rax, qword_1404D6210
                jmp     short loc_1403B22E9
sub_1403B2200   endp

; ---------------------------------------------------------------------------
algn_1403B2327:                         ; DATA XREF: .rdata:00000001400A02E4↑o
                                        ; .pdata:00000001400DE51C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B2330   proc near               ; CODE XREF: sub_140A46D3C+14D↓p
                                        ; DATA XREF: .rdata:00000001400A0308↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AA0EE SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     cs:qword_140C496F0, 0
                mov     ecx, 43495041h
                call    sub_1403B38B4
                mov     rbx, rax
                test    rax, rax
                jz      loc_1404AA0EE
                call    sub_1403A1D44
                test    eax, eax
                js      short loc_1403B23C9
                mov     ecx, [rbx+24h]
                mov     edx, 400h
                mov     cs:qword_140C496F0, rcx
                call    sub_1403B37A0
                test    eax, eax
                js      short loc_1403B23C9
                mov     esi, [rbx+4]
                lea     rdi, [rbx+2Ch]
                add     rsi, rbx
                jmp     short loc_1403B239F
; ---------------------------------------------------------------------------

loc_1403B238A:                          ; CODE XREF: sub_1403B2330+95↓j
                cmp     cl, 0Ch
                jnz     short loc_1403B239F
                movzx   edx, byte ptr [rax+2]
                mov     ecx, [rax+4]
                mov     r8d, [rax+8]
                call    sub_1403B23E0

loc_1403B239F:                          ; CODE XREF: sub_1403B2330+58↑j
                                        ; sub_1403B2330+5D↑j ...
                lea     rax, [rdi+2]
                cmp     rax, rsi
                ja      short loc_1403B23C7
                movzx   ecx, byte ptr [rdi+1]
                cmp     cl, 2
                jb      short loc_1403B23C7
                lea     rdx, [rdi+rcx]
                cmp     rdx, rsi
                ja      short loc_1403B23C7
                mov     rax, rdi
                mov     rdi, rdx
                cmp     byte ptr [rax], 1
                jnz     short loc_1403B239F
                jmp     short loc_1403B238A
; ---------------------------------------------------------------------------

loc_1403B23C7:                          ; CODE XREF: sub_1403B2330+76↑j
                                        ; sub_1403B2330+7F↑j ...
                xor     eax, eax

loc_1403B23C9:                          ; CODE XREF: sub_1403B2330+34↑j
                                        ; sub_1403B2330+4C↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B2330   endp

algn_1403B23DA:                         ; DATA XREF: .rdata:00000001400A0308↑o
                                        ; .pdata:00000001400DE528↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_1403B23E0   proc near               ; CODE XREF: sub_1403B2330+6A↑p
                                        ; DATA XREF: .rdata:00000001400A0330↑o ...

var_140         = dword ptr -140h
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_108         = qword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
arg_0           = byte ptr  10h
arg_8           = byte ptr  18h
arg_10          = byte ptr  20h
arg_18          = byte ptr  28h

; FUNCTION CHUNK AT 00000001404AA0F8 SIZE 00000090 BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-40h]
                sub     rsp, 140h
                mov     r14d, r8d
                mov     [rbp+60h+arg_10], 0
                mov     edi, edx
                mov     [rbp+60h+arg_0], 0
                mov     rsi, rcx
                mov     [rbp+60h+arg_18], 0
                mov     ebx, 0E8h
                mov     [rbp+60h+arg_8], 0
                mov     r8d, ebx
                lea     rcx, [rsp+160h+var_140]
                xor     edx, edx
                call    memset
                cmp     cs:byte_140CF4A51, 0
                lea     rax, [rbp+60h+var_50]
                xorps   xmm0, xmm0
                mov     [rsp+160h+var_13C], ebx
                mov     ebx, [rbp+60h+var_6C]
                movups  [rbp+60h+var_50], xmm0
                mov     [rbp+60h+var_80], rax
                movups  [rbp+60h+var_40], xmm0
                mov     [rsp+160h+var_140], 1
                movups  [rbp+60h+var_30], xmm0
                mov     [rbp+60h+var_78], 30h ; '0'
                mov     [rbp+60h+var_74], 2
                mov     [rbp+60h+var_70], edi
                jnz     loc_1404AA0F8
                lea     rax, sub_1403A7130
                mov     [rbp+60h+var_64], 4
                mov     [rsp+160h+var_108], rax
                or      ebx, 4
                mov     [rbp+60h+var_60], 0Fh

loc_1403B2486:                          ; CODE XREF: sub_1403B23E0+F7D5B↓j
                                        ; sub_1403B23E0+F7D6F↓j ...
                lea     rax, sub_1403A1AD0
                mov     [rbp+60h+var_5C], 60h ; '`'
                mov     [rsp+160h+var_138], rax
                or      ebx, 0FBh
                lea     rax, qword_1404DCF90
                mov     [rbp+60h+var_6C], ebx
                mov     [rbp+60h+var_B0], rax
                mov     edx, 400h
                lea     rax, sub_1403A5780
                mov     [rbp+60h+var_68], 0Fh
                mov     [rsp+160h+var_130], rax
                mov     rcx, rsi
                lea     rax, sub_1403A1CF0
                mov     qword ptr [rbp+60h+var_50], rsi
                mov     [rsp+160h+var_128], rax
                lea     rax, sub_1403A7B90
                mov     [rsp+160h+var_120], rax
                lea     rax, sub_1403A7B60
                mov     [rsp+160h+var_118], rax
                lea     rax, sub_1404DCFE0
                mov     [rsp+160h+var_F8], rax
                mov     rax, cs:qword_140C508D0
                mov     [rsp+160h+var_F0], rax
                lea     rax, sub_14037D580
                mov     [rsp+160h+var_E8], rax
                lea     rax, sub_14031F140
                mov     [rbp+60h+var_E0], rax
                lea     rax, sub_1403A6870
                mov     [rbp+60h+var_D8], rax
                lea     rax, sub_140380C00
                mov     [rbp+60h+var_D0], rax
                lea     rax, sub_1404E5590
                mov     [rbp+60h+var_C0], rax
                lea     rax, sub_1404E54B0
                mov     [rbp+60h+var_B8], rax
                lea     rax, sub_14033FAE0
                mov     [rbp+60h+var_A0], rax
                mov     dword ptr [rbp+60h+var_50+8], edi
                mov     dword ptr [rbp+60h+var_40+0Ch], r14d
                call    sub_1403B37A0
                test    eax, eax
                js      short loc_1403B2570
                lea     rcx, [rsp+160h+var_140]
                call    sub_1403B2FB4

loc_1403B2570:                          ; CODE XREF: sub_1403B23E0+184↑j
                add     rsp, 140h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B23E0   endp

byte_1403B257F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0330↑o
                                        ; .pdata:00000001400DE534↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B2588   proc near               ; CODE XREF: sub_1403A5780+137↑p
                                        ; DATA XREF: .pdata:00000001400DE540↑o

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = xmmword ptr -14h
var_4           = dword ptr -4
arg_0           = qword ptr  10h

                mov     [rsp-8+arg_0], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+var_20], 0
                or      eax, 0FFFFFFFFh
                and     [rbp+var_4], 0
                mov     rbx, rcx
                mov     [rbp+var_1C], eax
                xorps   xmm0, xmm0
                mov     [rbp+var_18], eax
                mov     eax, [rcx+8]
                lea     rcx, [rbp+var_30]
                movdqu  [rbp+var_14], xmm0
                mov     [rbp+var_24], 6
                mov     [rbp+var_2C], 1
                mov     [rbp+var_28], 7
                mov     [rbp+var_30], eax
                call    sub_1403B2950
                test    eax, eax
                js      short loc_1403B2600
                movzx   eax, byte ptr [rbx+19h]
                lea     rcx, [rbp+var_30]
                and     [rbp+var_2C], 0
                mov     [rbp+var_28], eax
                mov     eax, [rbx+1Ch]
                mov     [rbp+var_18], eax
                mov     eax, [rbx+8]
                mov     [rbp+var_30], eax
                mov     [rbp+var_24], 2
                call    sub_1403B2950

loc_1403B2600:                          ; CODE XREF: sub_1403B2588+4F↑j
                mov     rbx, [rsp+50h+arg_0]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B2588   endp

byte_1403B260C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE540↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B2614   proc near               ; CODE XREF: sub_1403A1AD0+1FC↑p
                                        ; DATA XREF: .rdata:00000001400A0364↑o ...

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = xmmword ptr -14h
var_4           = dword ptr -4
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AA188 SIZE 00000035 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     eax, [rcx+8]
                xor     edi, edi
                or      [rbp+var_18], 0FFFFFFFFh
                mov     rbx, rcx
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rdi
                lea     rcx, [rbp+var_30]
                mov     [rbp+var_4], edi
                movdqu  [rbp+var_14], xmm0
                mov     [rbp+var_28], edi
                mov     [rbp+var_24], 3
                mov     [rbp+var_2C], 0FFFFFFFAh
                mov     [rbp+var_30], eax
                call    sub_1403B2950
                test    eax, eax
                js      short loc_1403B26C9
                cmp     [rbx+20h], edi
                jz      short loc_1403B2693
                mov     eax, [rbx+8]
                lea     rcx, [rbp+var_30]
                or      [rbp+var_18], 0FFFFFFFFh
                mov     [rbp+var_30], eax
                mov     [rbp+var_24], 3
                mov     [rbp+var_2C], 0FFFFFFF9h
                mov     [rbp+var_28], 0FFFFFFFAh
                call    sub_1403B2950
                test    eax, eax
                js      short loc_1403B26C9

loc_1403B2693:                          ; CODE XREF: sub_1403B2614+51↑j
                cmp     [rbx+24h], edi
                jnz     loc_1404AA188

loc_1403B269C:                          ; CODE XREF: sub_1403B2614+F7BA4↓j
                mov     eax, [rbx+8]
                lea     rcx, [rbp+var_30]
                or      [rbp+var_18], 0FFFFFFFFh
                mov     [rbp+var_30], eax
                mov     [rbp+var_24], 5
                mov     [rbp+var_2C], 0FFFFFFF6h
                mov     [rbp+var_28], 0FFFFFFF7h
                call    sub_1403B2950
                test    eax, eax
                cmovns  eax, edi

loc_1403B26C9:                          ; CODE XREF: sub_1403B2614+4C↑j
                                        ; sub_1403B2614+7D↑j ...
                mov     rbx, [rsp+50h+arg_0]
                mov     rdi, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B2614   endp

algn_1403B26DA:                         ; DATA XREF: .rdata:00000001400A0364↑o
                                        ; .pdata:00000001400DE54C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

sub_1403B26E0   proc near               ; CODE XREF: sub_140A46D3C+158↓p
                                        ; DATA XREF: .pdata:00000001400DE558↑o

var_130         = dword ptr -130h
var_12C         = qword ptr -12Ch
var_124         = dword ptr -124h
var_11C         = xmmword ptr -11Ch
var_104         = dword ptr -104h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = qword ptr -24h
var_10          = byte ptr -10h
arg_0           = dword ptr  10h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r13
                push    r14
                lea     rbp, [rax-58h]
                sub     rsp, 140h
                mov     ecx, 43495041h
                call    sub_1403B38B4
                xor     ebx, ebx
                mov     edi, 1
                test    rax, rax
                jz      short loc_1403B2721
                mov     al, [rax+28h]
                test    dil, al
                jz      loc_1403B2943

loc_1403B2721:                          ; CODE XREF: sub_1403B26E0+33↑j
                mov     esi, 0E8h
                lea     rcx, [rsp+150h+var_100]
                mov     r8d, esi
                xor     edx, edx
                call    memset
                lea     rax, [rbp+50h+arg_0]
                mov     dword ptr [rsp+150h+var_100], edi
                mov     [rbp+50h+var_40], rax
                lea     r13, sub_1403A75D0
                lea     rax, sub_1404DD110
                mov     dword ptr [rsp+150h+var_100+4], esi
                mov     [rbp+50h+var_B8], rax
                lea     rcx, [rsp+150h+var_100]
                lea     rax, sub_1404DD010
                mov     [rbp+50h+var_38], 4
                mov     [rbp+50h+var_A8], rax
                mov     r14d, 0B000h
                lea     rax, SkIsSecureKernel
                mov     [rbp+50h+var_34], edi
                mov     [rbp+50h+var_A0], rax
                mov     [rbp+50h+var_30], r14
                mov     [rbp+50h+var_24], rbx
                mov     [rsp+150h+var_F8], rbx
                mov     [rsp+150h+var_F0], r13
                mov     [rbp+50h+var_C8], rbx
                mov     [rsp+150h+var_E8], rbx
                mov     [rsp+150h+var_E0], rbx
                mov     [rsp+150h+var_D8], rbx
                mov     [rbp+50h+var_98], rbx
                mov     [rbp+50h+var_28], ebx
                mov     [rbp+50h+arg_0], r14d
                call    sub_1403B2FB4
                test    eax, eax
                js      loc_1403B2925
                mov     r8d, esi
                lea     rcx, [rsp+150h+var_100]
                xor     edx, edx
                call    memset
                lea     rax, [rbp+50h+arg_0]
                mov     dword ptr [rsp+150h+var_100], edi
                mov     [rbp+50h+var_40], rax
                lea     rcx, [rsp+150h+var_100]
                lea     rax, sub_1404DD110
                mov     dword ptr [rsp+150h+var_100+4], esi
                mov     [rbp+50h+var_B8], rax
                lea     rax, sub_1404DD010
                mov     [rbp+50h+var_A8], rax
                lea     rax, SkIsSecureKernel
                mov     [rbp+50h+var_A0], rax
                mov     [rbp+50h+var_38], 4
                mov     [rbp+50h+var_34], edi
                mov     [rbp+50h+var_30], 0B001h
                mov     [rbp+50h+var_24], rbx
                mov     [rsp+150h+var_F8], rbx
                mov     [rsp+150h+var_F0], r13
                mov     [rbp+50h+var_C8], rbx
                mov     [rsp+150h+var_E8], rbx
                mov     [rsp+150h+var_E0], rbx
                mov     [rsp+150h+var_D8], rbx
                mov     [rbp+50h+var_98], rbx
                mov     [rbp+50h+var_28], ebx
                mov     [rbp+50h+arg_0], 0B001h
                call    sub_1403B2FB4
                test    eax, eax
                js      loc_1403B2925
                mov     dword ptr [rsp+150h+var_12C], edi
                lea     rcx, [rsp+150h+var_130]
                xorps   xmm0, xmm0
                mov     qword ptr [rsp+150h+var_124], 6
                or      esi, 0FFFFFFFFh
                mov     [rsp+150h+var_104], ebx
                mov     edi, 2
                mov     dword ptr [rsp+150h+var_11C], esi
                mov     dword ptr [rsp+150h+var_12C+4], edi
                movdqu  [rsp+150h+var_11C+8], xmm0
                mov     dword ptr [rsp+150h+var_11C+4], esi
                mov     [rsp+150h+var_130], r14d
                call    sub_1403B2950
                test    eax, eax
                js      loc_1403B2925
                lea     rcx, [rsp+150h+var_130]
                mov     [rsp+150h+var_124], edi
                mov     dword ptr [rsp+150h+var_12C], ebx
                mov     dword ptr [rsp+150h+var_12C+4], 8
                mov     dword ptr [rsp+150h+var_11C+4], esi
                mov     [rsp+150h+var_130], r14d
                call    sub_1403B2950
                test    eax, eax
                js      short loc_1403B2925
                xorps   xmm0, xmm0
                mov     qword ptr [rsp+150h+var_124], 6
                lea     rcx, [rsp+150h+var_130]
                mov     [rsp+150h+var_104], ebx
                movdqu  [rsp+150h+var_11C+8], xmm0
                mov     dword ptr [rsp+150h+var_11C], r14d
                mov     dword ptr [rsp+150h+var_12C], edi
                mov     dword ptr [rsp+150h+var_12C+4], 3
                mov     dword ptr [rsp+150h+var_11C+4], esi
                mov     [rsp+150h+var_130], 0B001h
                call    sub_1403B2950
                test    eax, eax
                js      short loc_1403B2925
                lea     rcx, [rsp+150h+var_130]
                mov     [rsp+150h+var_124], edi
                mov     dword ptr [rsp+150h+var_12C], ebx
                mov     dword ptr [rsp+150h+var_12C+4], 8
                mov     dword ptr [rsp+150h+var_11C+4], esi
                mov     [rsp+150h+var_130], 0B001h
                call    sub_1403B2950

loc_1403B2925:                          ; CODE XREF: sub_1403B26E0+D9↑j
                                        ; sub_1403B26E0+16C↑j ...
                lea     r11, [rsp+150h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B2943:                          ; CODE XREF: sub_1403B26E0+3B↑j
                mov     eax, ebx
                jmp     short loc_1403B2925
sub_1403B26E0   endp

; ---------------------------------------------------------------------------
algn_1403B2947:                         ; DATA XREF: .pdata:00000001400DE558↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B2950   proc near               ; CODE XREF: sub_1403B2588+48↑p
                                        ; sub_1403B2588+73↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AA1BE SIZE 0000009E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     edi, edi
                mov     r14, rcx
                cmp     cs:byte_140C0F3C8, dil
                jz      loc_1404AA252
                mov     eax, gs:1A4h
                test    eax, eax
                jnz     loc_1404AA252
                mov     ebx, [rcx+4]
                mov     r15d, [rcx+8]
                cmp     ebx, r15d
                jge     loc_1404AA248
                mov     r12d, [rcx+0Ch]
                test    r12d, r12d
                jz      loc_1404AA248
                mov     r13d, [rcx]
                mov     ecx, r13d
                call    sub_140378DD0
                mov     rsi, rax
                test    rax, rax
                jz      loc_1404AA1BE
                cmp     r12d, 6
                jz      short loc_1403B29E1
                mov     ecx, [rax+110h]
                mov     eax, [rax+114h]
                cmp     ecx, eax
                jz      short loc_1403B29E1
                cmp     r15d, ecx
                jg      loc_1403B2B26

loc_1403B29E1:                          ; CODE XREF: sub_1403B2950+76↑j
                                        ; sub_1403B2950+86↑j ...
                mov     ebp, [r14+18h]
                cmp     ebp, 0FFFFFFFFh
                jnz     loc_1403B2B33

loc_1403B29EE:                          ; CODE XREF: sub_1403B2950+1F4↓j
                sub     r15d, ebx
                cmp     dword ptr [rsi+0D8h], 2
                jnz     short loc_1403B2A03
                cmp     ebp, 0FFFFFFFFh
                jnz     loc_1403B2B4F

loc_1403B2A03:                          ; CODE XREF: sub_1403B2950+A8↑j
                                        ; sub_1403B2950+20B↓j ...
                cmp     r12d, 7
                jz      loc_1404AA1F9
                mov     ebp, edi

loc_1403B2A0F:                          ; CODE XREF: sub_1403B2950+F78B6↓j
                lea     eax, ds:0Bh[r15*8]
                mov     edx, 1
                add     eax, r15d
                lea     r12d, ds:0[rax*8]
                add     r12d, ebp
                mov     ecx, r12d
                call    sub_1403BB238
                mov     rbx, rax
                test    rax, rax
                jz      loc_1404AA20B
                mov     r8d, r12d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                test    ebp, ebp
                jnz     loc_1404AA215

loc_1403B2A53:                          ; CODE XREF: sub_1403B2950+F78D1↓j
                mov     r8d, [r14+4]
                mov     r10d, [r14+0Ch]
                mov     eax, [r14+18h]
                mov     [rbx+14h], r8d
                mov     [rbx+1Ch], eax
                lea     r9d, [r8+r15]
                mov     [rbx+18h], r9d
                mov     [rbx+20h], r10d
                cmp     r10d, 7
                jz      loc_1404AA226

loc_1403B2A7C:                          ; CODE XREF: sub_1403B2950+F78EC↓j
                mov     eax, r15d
                imul    rcx, rax, 38h ; '8'
                mov     edx, ebp
                add     rdx, 58h ; 'X'
                add     rdx, rbx
                add     rcx, rdx
                mov     [rbx+28h], rdx
                mov     [rbx+30h], rcx
                cmp     r10d, 6
                jz      short loc_1403B2B08
                mov     eax, [rsi+0E8h]
                mov     [rbx+10h], eax
                mov     ecx, [rsi+110h]
                mov     eax, [rsi+114h]
                cmp     ecx, eax
                jnz     short loc_1403B2B18
                mov     [rsi+110h], r8d
                mov     eax, [rbx+18h]
                mov     [rsi+114h], eax

loc_1403B2AC6:                          ; CODE XREF: sub_1403B2950+1D4↓j
                                        ; sub_1403B2950+23C↓j ...
                add     rsi, 0F0h

loc_1403B2ACD:                          ; CODE XREF: sub_1403B2950+1C6↓j
                mov     rax, [rsi+8]
                cmp     [rax], rsi
                jnz     loc_1404AA241
                mov     [rbx], rsi
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     [rsi+8], rbx

loc_1403B2AE8:                          ; CODE XREF: sub_1403B2950+F7873↓j
                                        ; sub_1403B2950+F78A4↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403B2B08:                          ; CODE XREF: sub_1403B2950+14B↑j
                mov     eax, [r14+14h]
                add     rsi, 100h
                mov     [rbx+10h], eax
                jmp     short loc_1403B2ACD
; ---------------------------------------------------------------------------

loc_1403B2B18:                          ; CODE XREF: sub_1403B2950+164↑j
                cmp     r8d, ecx
                jge     short loc_1403B2B89
                mov     [rsi+110h], r8d
                jmp     short loc_1403B2AC6
; ---------------------------------------------------------------------------

loc_1403B2B26:                          ; CODE XREF: sub_1403B2950+8B↑j
                cmp     ebx, eax
                jge     loc_1403B29E1
                jmp     loc_1404AA1C8
; ---------------------------------------------------------------------------

loc_1403B2B33:                          ; CODE XREF: sub_1403B2950+98↑j
                mov     edx, ebp
                mov     ecx, ebp
                sub     edx, ebx
                add     edx, r15d
                call    sub_140379078
                test    rax, rax
                jz      loc_1403B29EE
                jmp     loc_1404AA1EF
; ---------------------------------------------------------------------------

loc_1403B2B4F:                          ; CODE XREF: sub_1403B2950+AD↑j
                mov     r8d, cs:dword_140C4972C
                mov     eax, edi
                test    r8d, r8d
                jz      loc_1403B2A03

loc_1403B2B61:                          ; CODE XREF: sub_1403B2950+237↓j
                mov     rdx, cs:qword_140C49720
                mov     ecx, eax
                add     rcx, rcx
                cmp     [rdx+rcx*8], r13d
                jnz     short loc_1403B2B7C
                mov     edx, [rdx+rcx*8+0Ch]
                cmp     r15d, edx
                ja      short loc_1403B2B9E

loc_1403B2B7C:                          ; CODE XREF: sub_1403B2950+221↑j
                inc     eax
                cmp     eax, r8d
                jnb     loc_1403B2A03
                jmp     short loc_1403B2B61
; ---------------------------------------------------------------------------

loc_1403B2B89:                          ; CODE XREF: sub_1403B2950+1CB↑j
                cmp     r9d, eax
                jle     loc_1403B2AC6
                mov     [rsi+114h], r9d
                jmp     loc_1403B2AC6
; ---------------------------------------------------------------------------

loc_1403B2B9E:                          ; CODE XREF: sub_1403B2950+22A↑j
                mov     r15d, edx
                jmp     loc_1403B2A03
sub_1403B2950   endp

; ---------------------------------------------------------------------------
byte_1403B2BA6  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A03B4↑o
                                        ; .pdata:00000001400DE564↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=30h

sub_1403B2BAC   proc near               ; CODE XREF: sub_1403B1D2C+3C↑p
                                        ; DATA XREF: .rdata:00000001400A03F0↑o ...

var_130         = dword ptr -130h
var_110         = dword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001404AA25C SIZE 0000006C BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-38h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+30h+var_30], rax
                xorps   xmm0, xmm0
                xor     edi, edi
                xor     eax, eax
                mov     byte ptr [rsp+130h+var_110], dil
                mov     ecx, 54455048h
                mov     byte ptr [rsp+130h+var_110+1], dil
                movups  [rbp+30h+var_58], xmm0
                mov     [rbp+30h+var_38], rax
                movups  [rbp+30h+var_48], xmm0
                call    sub_1403B38B4
                mov     r15, rax
                test    rax, rax
                jz      loc_1403B2F0A
                cmp     [rax+28h], dil
                jnz     loc_1403B2F0A
                lea     ebx, [rdi+1]
                mov     ecx, ebx
                lea     r8, [rsp+130h+var_110+1]
                call    sub_1403A1E8C
                test    eax, eax
                js      loc_1403B2F0A
                mov     rcx, [r15+2Ch]
                mov     rax, rcx
                mov     cs:qword_140C48C48, rcx
                shr     rax, 20h
                test    eax, eax
                jnz     loc_1404AA25C

loc_1403B2C4B:                          ; CODE XREF: sub_1403B2BAC+F76BB↓j
                mov     esi, 400h
                xor     r8d, r8d
                mov     edx, esi
                call    sub_1403B3A40
                mov     [rbp+30h+var_68], rax
                mov     r14, rax
                test    rax, rax
                jz      loc_1403B2F0A
                mov     rcx, cs:qword_140C48C48
                mov     edx, esi
                call    sub_1403B37A0
                test    eax, eax
                js      loc_1403B2EFD
                mov     esi, [r14]
                mov     r8d, esi
                shr     r8d, 10h
                test    r8d, r8d
                jz      loc_1403B2EFD
                cmp     r8d, 0FFFFh
                jz      loc_1403B2EFD
                bt      esi, 0Fh
                jnb     short loc_1403B2CAC
                mov     cs:byte_140C508F8, bl

loc_1403B2CAC:                          ; CODE XREF: sub_1403B2BAC+F8↑j
                mov     eax, [r14+4]
                mov     rdx, 38D7EA4C68000h
                mov     ecx, eax
                shr     rax, 1
                add     rax, rdx
                xor     edx, edx
                div     rcx
                mov     [rbp+30h+var_60], rax
                cmp     r8d, 10DEh
                jz      loc_1404AA26C
                shr     esi, 8
                mov     r12d, ebx
                and     esi, 1Fh
                mov     r13d, edi
                add     esi, ebx
                jz      loc_1403B2E55
                mov     ebx, eax
                lea     rax, [r14+100h]
                mov     r14, rax
                mov     [rbp+30h+var_70], rbx

loc_1403B2CFC:                          ; CODE XREF: sub_1403B2BAC+29A↓j
                xor     edx, edx
                lea     rcx, [rsp+130h+var_100]
                mov     r8d, 90h
                call    memset
                mov     r11d, 1
                mov     dword ptr [rbp+30h+var_48+4], edi
                lea     rax, [rbp+30h+var_58]
                mov     [rbp+30h+var_38], rdi
                mov     [rbp+30h+var_A8], rax
                lea     r10d, [r13+1]
                lea     rax, sub_1403B39C0
                mov     dword ptr [rsp+130h+var_100], r11d
                mov     [rsp+130h+var_F8], rax
                xorps   xmm0, xmm0
                lea     rax, sub_1404D5FE0
                mov     dword ptr [rsp+130h+var_100+4], 90h
                mov     [rsp+130h+var_E8], rax
                lea     rax, sub_1404D6020
                mov     [rsp+130h+var_E0], rax
                lea     rax, sub_1403654E0
                mov     [rsp+130h+var_D8], rax
                movdqu  [rbp+30h+var_58+4], xmm0
                movzx   eax, byte ptr [r15+34h]
                shl     eax, 10h
                or      eax, r10d
                mov     [rbp+30h+var_9C], 1Fh
                mov     [rbp+30h+var_74], eax
                mov     rax, cs:qword_140C48C48
                mov     qword ptr [rbp+30h+var_48+8], rax
                mov     [rbp+30h+var_98], rbx
                mov     [rbp+30h+var_A0], 28h ; '('
                mov     [rbp+30h+var_7C], r11d
                mov     [rbp+30h+var_80], r11d
                mov     [rbp+30h+var_78], 3
                mov     [rbp+30h+var_90], r11d
                mov     [rsp+130h+var_108], r10d
                mov     dword ptr [rbp+30h+var_58], r13d
                mov     [rbp+30h+var_8C], 30h ; '0'
                mov     ebx, [r14]
                and     ebx, 0FFFFBFFBh
                mov     [r14], ebx
                lock or [rsp+130h+var_130], edi
                test    bl, 10h
                jnz     loc_1403B2F67
                mov     edi, [rbp+30h+var_8C]

loc_1403B2DD6:                          ; CODE XREF: sub_1403B2BAC+3C7↓j
                test    bl, 20h
                jnz     loc_1403B2F78

loc_1403B2DDF:                          ; CODE XREF: sub_1403B2BAC+3EA↓j
                xor     ecx, ecx
                mov     dword ptr [rbp+30h+var_38], ebx
                cmp     cs:byte_140C508F8, cl
                jz      loc_1404AA278
                lea     r8, [rsp+130h+var_110]
                mov     ecx, 2
                call    sub_1403A1E8C
                movzx   ecx, byte ptr [rsp+130h+var_110]
                xor     edx, edx
                test    eax, eax
                cmovs   ecx, edx
                mov     byte ptr [rsp+130h+var_110], cl
                test    r13d, r13d
                jz      loc_1403B2F4B
                cmp     r13d, 1
                jz      loc_1403B2F9B
                bt      ebx, 0Fh
                jnb     short loc_1403B2E34

loc_1403B2E28:                          ; CODE XREF: sub_1403B2BAC+3B6↓j
                                        ; sub_1403B2BAC+F76F9↓j
                test    edi, 0F00h
                jnz     loc_1403B2F3A

loc_1403B2E34:                          ; CODE XREF: sub_1403B2BAC+27A↑j
                                        ; sub_1403B2BAC+39A↓j ...
                xor     edi, edi

loc_1403B2E36:                          ; CODE XREF: sub_1403B2BAC+3E1↓j
                mov     r13d, [rsp+130h+var_108]
                add     r14, 20h ; ' '
                mov     rbx, [rbp+30h+var_70]
                cmp     r13d, esi
                jb      loc_1403B2CFC
                mov     r14, [rbp+30h+var_68]
                mov     ebx, 1

loc_1403B2E55:                          ; CODE XREF: sub_1403B2BAC+13A↑j
                                        ; sub_1403B2BAC+F76C7↓j
                xor     edx, edx
                lea     rcx, [rsp+130h+var_100]
                mov     r8d, 90h
                call    memset
                xor     eax, eax
                mov     dword ptr [rsp+130h+var_100], ebx
                mov     [rbp+30h+var_38], rax
                lea     rcx, [rsp+130h+var_100]
                mov     eax, dword ptr [rbp+30h+var_60]
                xorps   xmm0, xmm0
                mov     [rbp+30h+var_98], rax
                xor     edx, edx
                movups  [rbp+30h+var_58], xmm0
                or      dword ptr [rbp+30h+var_58], 0FFFFFFFFh
                lea     rax, [rbp+30h+var_58]
                mov     [rbp+30h+var_A8], rax
                lea     rax, sub_1403B39C0
                mov     [rsp+130h+var_F8], rax
                lea     rax, sub_1403654C0
                mov     [rsp+130h+var_F0], rax
                lea     rax, sub_1404D5FE0
                mov     [rsp+130h+var_E8], rax
                lea     rax, sub_1404D6020
                mov     [rsp+130h+var_E0], rax
                movups  [rbp+30h+var_48], xmm0
                movzx   eax, byte ptr [r15+34h]
                shl     eax, 10h
                mov     [rbp+30h+var_74], eax
                mov     dword ptr [rsp+130h+var_100+4], 90h
                mov     [rbp+30h+var_9C], 20h ; ' '
                mov     [rbp+30h+var_A0], 28h ; '('
                mov     [rbp+30h+var_78], 3
                mov     [rbp+30h+var_90], ebx
                mov     [rbp+30h+var_8C], 2
                call    sub_1403B3370

loc_1403B2EFD:                          ; CODE XREF: sub_1403B2BAC+CE↑j
                                        ; sub_1403B2BAC+E1↑j ...
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, r14
                call    sub_1403BB810

loc_1403B2F0A:                          ; CODE XREF: sub_1403B2BAC+5E↑j
                                        ; sub_1403B2BAC+68↑j ...
                xor     eax, eax
                mov     rcx, [rbp+30h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+130h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B2F3A:                          ; CODE XREF: sub_1403B2BAC+282↑j
                xor     edx, edx
                lea     rcx, [rsp+130h+var_100]
                call    sub_1403B3370
                jmp     loc_1403B2E34
; ---------------------------------------------------------------------------

loc_1403B2F4B:                          ; CODE XREF: sub_1403B2BAC+266↑j
                bts     edi, 8
                neg     cl
                sbb     eax, eax
                not     eax
                and     eax, 2
                mov     [rbp+30h+var_88], eax
                or      r12d, 4

loc_1403B2F5F:                          ; CODE XREF: sub_1403B2BAC+400↓j
                                        ; sub_1403B2BAC+F7717↓j
                mov     [rbp+30h+var_8C], edi
                jmp     loc_1403B2E28
; ---------------------------------------------------------------------------

loc_1403B2F67:                          ; CODE XREF: sub_1403B2BAC+221↑j
                mov     edi, 70h ; 'p'
                mov     byte ptr [rbp+30h+var_58+0Ch], r11b
                mov     [rbp+30h+var_8C], edi
                jmp     loc_1403B2DD6
; ---------------------------------------------------------------------------

loc_1403B2F78:                          ; CODE XREF: sub_1403B2BAC+22D↑j
                mov     eax, 100h
                or      ebx, eax
                mov     [r14], ebx
                xor     edi, edi
                lock or [rsp+130h+var_130], edi
                mov     ebx, [r14]
                test    eax, ebx
                jz      loc_1403B2E36
                mov     edi, [rbp+30h+var_8C]
                jmp     loc_1403B2DDF
; ---------------------------------------------------------------------------

loc_1403B2F9B:                          ; CODE XREF: sub_1403B2BAC+270↑j
                mov     eax, 100h
                mov     [rbp+30h+var_88], 8
                or      edi, eax
                or      r12d, eax
                jmp     short loc_1403B2F5F
; } // starts at 1403B2BAC
sub_1403B2BAC   endp

; ---------------------------------------------------------------------------
byte_1403B2FAE  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A03F0↑o
                                        ; .pdata:00000001400DE570↑o

; =============== S U B R O U T I N E =======================================


sub_1403B2FB4   proc near               ; CODE XREF: sub_1403B23E0+18B↑p
                                        ; sub_1403B26E0+D2↑p ...

var_D8          = xmmword ptr -0D8h
var_C8          = byte ptr -0C8h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AA2C8 SIZE 00000067 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_28], rax
                xor     ebx, ebx
                xorps   xmm0, xmm0
                cmp     cs:byte_140C0F3C8, bl
                mov     rdi, rcx
                movups  [rsp+0F8h+var_D8], xmm0
                jz      loc_1404AA2C8
                test    rcx, rcx
                jz      loc_1403B32E1
                cmp     dword ptr [rcx], 1
                jnz     loc_1403B32E1
                cmp     dword ptr [rcx+4], 0E8h
                jnz     loc_1403B32E1
                mov     r9d, [rcx+0D4h]
                test    r9d, 0FFFFF800h
                jnz     loc_1403B32E1
                mov     eax, [rcx+0CCh]
                test    eax, eax
                jz      loc_1403B32E1
                dec     eax
                cmp     eax, 1
                ja      loc_1404AA2D2
                mov     ecx, [rcx+0D0h]
                cmp     ecx, 0FFFFFFFFh
                jz      loc_1403B32E1
                call    sub_140378DD0
                test    rax, rax
                jnz     loc_1404AA2DC
                cmp     [rdi+58h], rbx
                jz      loc_1403B32E1
                cmp     [rdi+60h], rbx
                jz      loc_1403B32E1
                cmp     [rdi+40h], rbx
                jnz     loc_1403B32E1
                test    r9b, 1
                jnz     loc_1403B32D7

loc_1403B3085:                          ; CODE XREF: sub_1403B2FB4+327↓j
                cmp     [rdi+10h], rbx
                jz      loc_1403B32E1
                test    r9b, 2
                jnz     loc_1403B32E8

loc_1403B3099:                          ; CODE XREF: sub_1403B2FB4+340↓j
                cmp     [rdi+0E4h], ebx
                jnz     loc_1403B32FC

loc_1403B30A5:                          ; CODE XREF: sub_1403B2FB4+358↓j
                bt      r9d, 0Ah
                jb      loc_1404AA2E6

loc_1403B30B0:                          ; CODE XREF: sub_1403B2FB4+F733F↓j
                lea     r8, [rsp+0F8h+var_C8]
                mov     rcx, rdi
                call    sub_1403B331C
                lea     rdx, [rsp+0F8h+var_C8]
                lea     rcx, [rsp+0F8h+var_D8]
                call    RtlInitUnicodeString
                mov     r11d, 100h
                test    [rdi+0D4h], r11d
                jnz     loc_1404AA2F8

loc_1403B30DF:                          ; CODE XREF: sub_1403B2FB4+F734B↓j
                                        ; sub_1403B2FB4+F7358↓j ...
                mov     ecx, [rdi+0C8h]
                mov     edx, 0FFFFFFF8h
                movzx   ebp, word ptr [rsp+0F8h+var_D8]
                add     ecx, 167h
                and     ecx, edx
                lea     r14d, [rbp+9]
                add     r14d, ecx
                and     r14d, edx
                mov     edx, 1
                mov     ecx, r14d
                call    sub_1403BB238
                mov     rsi, rax
                test    rax, rax
                jz      loc_1404AA31E
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     rcx, [rsi+167h]
                mov     edx, 80h
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [rsi+10h], rcx
                mov     eax, [rdi+0C8h]
                add     rax, 7
                add     rcx, rax
                lea     rax, [rsi+0F0h]
                mov     [rax+8], rax
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [rax], rax
                lea     rax, [rsi+100h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rsi+150h], rcx
                lea     rcx, [rsi+20h]
                mov     eax, [rdi+0C8h]
                mov     [rsi+18h], eax
                lea     rax, [rdi+8]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [rcx+60h], xmm0
                add     rcx, rdx
                movups  xmm0, xmmword ptr [rax+70h]
                add     rax, rdx
                movups  xmmword ptr [rcx-10h], xmm0
                movups  xmm1, xmmword ptr [rax]
                movups  xmmword ptr [rcx], xmm1
                movups  xmm0, xmmword ptr [rax+10h]
                movups  xmmword ptr [rcx+10h], xmm0
                movups  xmm1, xmmword ptr [rax+20h]
                movups  xmmword ptr [rcx+20h], xmm1
                mov     rax, [rax+30h]
                mov     [rcx+30h], rax
                mov     eax, [rdi+0D4h]
                mov     [rsi+0DCh], eax
                mov     eax, [rdi+0CCh]
                mov     [rsi+0D8h], eax
                mov     eax, [rdi+0D8h]
                mov     [rsi+0E4h], eax
                mov     eax, [rdi+0D0h]
                mov     [rsi+0E8h], eax
                mov     eax, [rdi+0DCh]
                mov     [rsi+118h], eax
                mov     eax, [rdi+0E0h]
                mov     [rsi+11Ch], eax
                mov     [rsi+110h], rbx
                mov     eax, [rdi+0E4h]
                mov     [rsi+120h], eax
                mov     eax, [rdi+0C8h]
                test    eax, eax
                jz      short loc_1403B325F
                mov     rdx, [rdi+0C0h]
                test    rdx, rdx
                jz      short loc_1403B325F
                mov     rcx, [rsi+10h]
                mov     r8d, eax
                call    memmove

loc_1403B325F:                          ; CODE XREF: sub_1403B2FB4+291↑j
                                        ; sub_1403B2FB4+29D↑j
                lea     rcx, [rsi+148h]
                add     bp, 2
                lea     rdx, [rsp+0F8h+var_D8]
                mov     [rcx], bx
                mov     [rsi+14Ah], bp
                call    RtlCopyUnicodeString
                mov     rax, cs:qword_140C4B998
                lea     rcx, qword_140C4B990
                cmp     [rax], rcx
                jnz     loc_1404AA328
                inc     cs:dword_140C4C6C0
                mov     [rsi], rcx
                mov     [rsi+8], rax
                mov     [rax], rsi
                mov     cs:qword_140C4B998, rsi

loc_1403B32AC:                          ; CODE XREF: sub_1403B2FB4+332↓j
                                        ; sub_1403B2FB4+F7319↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+0F8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F8h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B32D7:                          ; CODE XREF: sub_1403B2FB4+CB↑j
                cmp     [rdi+8], rbx
                jnz     loc_1403B3085

loc_1403B32E1:                          ; CODE XREF: sub_1403B2FB4+43↑j
                                        ; sub_1403B2FB4+4C↑j ...
                mov     ebx, 0C000000Dh
                jmp     short loc_1403B32AC
; ---------------------------------------------------------------------------

loc_1403B32E8:                          ; CODE XREF: sub_1403B2FB4+DF↑j
                cmp     [rdi+18h], rbx
                jz      short loc_1403B32E1
                cmp     [rdi+0D8h], ebx
                jnz     loc_1403B3099
                jmp     short loc_1403B32E1
; ---------------------------------------------------------------------------

loc_1403B32FC:                          ; CODE XREF: sub_1403B2FB4+EB↑j
                cmp     [rdi+80h], rbx
                jz      short loc_1403B32E1
                cmp     [rdi+88h], rbx
                jnz     loc_1403B30A5
                jmp     short loc_1403B32E1
; } // starts at 1403B2FB4
sub_1403B2FB4   endp

; ---------------------------------------------------------------------------
byte_1403B3314  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0424↑o
                                        ; .pdata:00000001400DE57C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B331C   proc near               ; CODE XREF: sub_1403B2FB4+104↑p
                                        ; DATA XREF: .pdata:00000001400DE588↑o

var_38          = word ptr -38h
var_30          = word ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 58h
                movzx   r9d, word ptr [rcx+0CCh]
                mov     rax, r8
                mov     [rsp+58h+var_18], rax
                xor     edx, edx
                mov     eax, [rcx+0D0h]
                mov     r8d, 4000h
                mov     [rsp+58h+var_20], 4Bh ; 'K'
                mov     ecx, 5446534Dh
                mov     [rsp+58h+var_28], eax
                lea     r10d, [rdx+1]
                mov     [rsp+58h+var_30], dx
                mov     [rsp+58h+var_38], r10w
                call    sub_1403B36D8
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B331C   endp

algn_1403B3369:                         ; DATA XREF: .pdata:00000001400DE588↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B3370   proc near               ; CODE XREF: sub_1403B1DBC+CC↑p
                                        ; sub_1403B1F48+120↑p ...

var_F8          = xmmword ptr -0F8h
var_E8          = byte ptr -0E8h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AA330 SIZE 00000083 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_48], rax
                xor     ebx, ebx
                xorps   xmm0, xmm0
                cmp     cs:byte_140C0F3A0, bl
                mov     r15, rdx
                mov     rdi, rcx
                movups  [rsp+118h+var_F8], xmm0
                jz      loc_1404AA330
                lea     esi, [rbx+1]
                cmp     [rcx], esi
                jnz     loc_1403B366D
                cmp     dword ptr [rcx+4], 90h
                jnz     loc_1403B366D
                mov     ecx, [rcx+74h]
                test    ecx, 0FE000000h
                jnz     loc_1403B366D
                bt      ecx, 16h
                jb      loc_1403B366D
                cmp     [rdi+88h], ebx
                jz      loc_1403B366D
                bt      ecx, 0Ah
                jb      loc_1404AA33A

loc_1403B33FC:                          ; CODE XREF: sub_1403B3370+F6FD4↓j
                bt      ecx, 0Ch
                jb      loc_1403B365C
                test    cl, cl
                js      loc_1403B365C
                mov     edx, 800h
                test    edx, ecx
                jnz     loc_1403B3663

loc_1403B341B:                          ; CODE XREF: sub_1403B3370+2F7↓j
                mov     eax, ecx
                and     eax, 801h
                cmp     eax, edx
                jz      loc_1403B365C
                test    ecx, 0F00h
                jz      short loc_1403B343C
                cmp     [rdi+28h], rbx
                jz      loc_1403B366D

loc_1403B343C:                          ; CODE XREF: sub_1403B3370+C0↑j
                test    cl, 2
                jz      short loc_1403B344B
                cmp     [rdi+10h], rbx
                jz      loc_1403B366D

loc_1403B344B:                          ; CODE XREF: sub_1403B3370+CF↑j
                mov     ebp, 10000h
                test    ebp, ecx
                jnz     loc_1404AA349

loc_1403B3458:                          ; CODE XREF: sub_1403B3370+F6FE2↓j
                test    r15, r15
                jnz     short loc_1403B3485
                lea     r8, [rsp+118h+var_E8]
                mov     rcx, rdi
                lea     edx, [r15+4Bh]
                call    sub_1403B3684
                lea     rdx, [rsp+118h+var_E8]
                lea     rcx, [rsp+118h+var_F8]
                lea     r15, [rsp+118h+var_F8]
                call    RtlInitUnicodeString
                mov     ecx, [rdi+74h]

loc_1403B3485:                          ; CODE XREF: sub_1403B3370+EB↑j
                mov     r14d, 0FFFFFFF8h
                test    ebp, ecx
                jnz     loc_1404AA357
                mov     ebp, [rdi+60h]
                mov     r12d, esi

loc_1403B3499:                          ; CODE XREF: sub_1403B3370+F6FF8↓j
                mov     r13d, ebp
                mov     edx, esi
                imul    r13d, r12d
                lea     ecx, [r13+15Fh]
                and     ecx, r14d
                movzx   r14d, word ptr [r15]
                add     ecx, 9
                add     r14d, ecx
                and     r14d, 0FFFFFFF8h
                mov     ecx, r14d
                call    sub_1403BB238
                mov     rsi, rax
                test    rax, rax
                jz      loc_1404AA36D
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     eax, r13d
                lea     r14, [rsi+12Fh]
                and     r14, 0FFFFFFFFFFFFFFF8h
                mov     [rsi+120h], r14
                lea     rcx, [r14+37h]
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [rsi+48h], rcx
                add     rcx, 7
                add     rcx, rax
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [r14+20h], rcx
                mov     rax, [rdi+68h]
                mov     [rsi+0C0h], rax
                movups  xmm0, xmmword ptr [rdi+8]
                movups  xmmword ptr [rsi+68h], xmm0
                movups  xmm1, xmmword ptr [rdi+18h]
                movups  xmmword ptr [rsi+78h], xmm1
                movups  xmm0, xmmword ptr [rdi+28h]
                movups  xmmword ptr [rsi+88h], xmm0
                movups  xmm1, xmmword ptr [rdi+38h]
                movups  xmmword ptr [rsi+98h], xmm1
                movups  xmm0, xmmword ptr [rdi+48h]
                mov     [rsi+50h], ebp
                movups  xmmword ptr [rsi+0A8h], xmm0
                mov     eax, [rdi+64h]
                mov     [rsi+0DCh], eax
                mov     eax, [rdi+74h]
                mov     [rsi+0E0h], eax
                mov     eax, [rdi+78h]
                mov     [rsi+54h], eax
                mov     eax, [rdi+7Ch]
                mov     [rsi+58h], eax
                mov     eax, [rdi+84h]
                mov     [rsi+60h], eax
                mov     eax, [rdi+80h]
                mov     [rsi+5Ch], eax
                mov     eax, [rdi+88h]
                mov     [rsi+0E4h], eax
                mov     eax, [rdi+70h]
                mov     [rsi+0D8h], eax
                cmp     [rdi+60h], ebx
                jz      short loc_1403B35BF
                cmp     [rdi+58h], rbx
                jz      short loc_1403B35BF
                mov     ebp, ebx
                test    r12d, r12d
                jz      short loc_1403B35BF

loc_1403B35A1:                          ; CODE XREF: sub_1403B3370+24D↓j
                mov     ecx, [rsi+50h]
                mov     r8d, [rdi+60h]
                mov     rdx, [rdi+58h]
                imul    ecx, ebp
                add     rcx, [rsi+48h]
                call    memmove
                inc     ebp
                cmp     ebp, r12d
                jb      short loc_1403B35A1

loc_1403B35BF:                          ; CODE XREF: sub_1403B3370+222↑j
                                        ; sub_1403B3370+228↑j ...
                mov     eax, [rdi+8Ch]
                lea     rcx, [r14+18h]
                mov     [rsi+11Ch], eax
                mov     rdx, r15
                mov     [rcx], bx
                movzx   eax, word ptr [r15]
                add     ax, 2
                mov     [r14+1Ah], ax
                call    RtlCopyUnicodeString
                test    dword ptr [rdi+74h], 400h
                jnz     loc_1404AA377

loc_1403B35F4:                          ; CODE XREF: sub_1403B3370+F7022↓j
                                        ; sub_1403B3370+F7037↓j
                mov     rax, cs:qword_140C4BFE8
                lea     rdx, qword_140C4BFE0
                cmp     [rax], rdx
                jnz     loc_1404AA3AC
                inc     cs:dword_140C4BFFC
                mov     [rsi], rdx
                mov     [rsi+8], rax
                mov     [rax], rsi
                mov     cs:qword_140C4BFE8, rsi
                test    dword ptr [rsi+0E0h], 100000h
                jnz     short loc_1403B3674

loc_1403B362E:                          ; CODE XREF: sub_1403B3370+2F1↓j
                                        ; sub_1403B3370+302↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+118h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+118h+arg_10]
                add     rsp, 0E0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403B365C:                          ; CODE XREF: sub_1403B3370+90↑j
                                        ; sub_1403B3370+98↑j ...
                mov     ebx, 0C00000BBh
                jmp     short loc_1403B362E
; ---------------------------------------------------------------------------

loc_1403B3663:                          ; CODE XREF: sub_1403B3370+A5↑j
                cmp     [rdi+48h], rbx
                jnz     loc_1403B341B

loc_1403B366D:                          ; CODE XREF: sub_1403B3370+4A↑j
                                        ; sub_1403B3370+57↑j ...
                mov     ebx, 0C000000Dh
                jmp     short loc_1403B362E
; ---------------------------------------------------------------------------

loc_1403B3674:                          ; CODE XREF: sub_1403B3370+2BC↑j
                mov     cs:byte_140C4BFA8, 1
                jmp     short loc_1403B362E
; } // starts at 1403B3370
sub_1403B3370   endp

; ---------------------------------------------------------------------------
byte_1403B367D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A045C↑o
                                        ; .pdata:00000001400DE594↑o

; =============== S U B R O U T I N E =======================================


sub_1403B3684   proc near               ; CODE XREF: sub_1403B0DA8+B7↑p
                                        ; sub_1403B3370+F9↑p
                                        ; DATA XREF: ...

var_38          = word ptr -38h
var_30          = word ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 58h
                movzx   r9d, word ptr [rcx+88h]
                mov     rax, r8
                mov     [rsp+58h+var_18], rax
                xor     r10d, r10d
                mov     eax, [rcx+8Ch]
                mov     r8d, 4100h
                mov     [rsp+58h+var_20], edx
                mov     ecx, 5446534Dh
                mov     [rsp+58h+var_28], eax
                xor     edx, edx
                lea     r11d, [r10+1]
                mov     [rsp+58h+var_30], r10w
                mov     [rsp+58h+var_38], r11w
                call    sub_1403B36D8
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3684   endp

algn_1403B36D1:                         ; DATA XREF: .pdata:00000001400DE5A0↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B36D8   proc near               ; CODE XREF: sub_1403B331C+42↑p
                                        ; sub_1403B3684+42↑p ...

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = xmmword ptr -20h
var_10          = dword ptr -10h
var_C           = word ptr -0Ch
var_8           = qword ptr -8
arg_20          = word ptr  50h
arg_28          = word ptr  58h
arg_30          = dword ptr  60h
arg_38          = dword ptr  68h
arg_40          = qword ptr  70h

; FUNCTION CHUNK AT 00000001404AA3B4 SIZE 00000058 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rbx, [rbp+arg_40]
                mov     eax, edx
                mov     [rbp+var_28], edx
                xorps   xmm0, xmm0
                xor     edx, edx
                movzx   edi, r9w
                mov     [rbp+var_10], edx
                mov     [rbp+var_C], dx
                movzx   edx, [rbp+arg_28]
                movzx   esi, r8w
                mov     [rbp+var_30], ecx
                movups  [rbp+var_20], xmm0
                test    dx, dx
                jnz     loc_1404AA3B4

loc_1403B3728:                          ; CODE XREF: sub_1403B36D8+F6CFA↓j
                test    ecx, ecx
                jz      short loc_1403B3789
                movzx   r8d, [rbp+arg_20]
                lea     r9, [rbp+var_30]
                mov     edx, [rbp+arg_38]
                test    eax, eax
                mov     eax, [rbp+arg_30]
                mov     rcx, rbx
                jnz     loc_1404AA3D7
                mov     dword ptr [rsp+80h+var_40], eax
                lea     rax, [rbp+var_20]
                mov     [rsp+80h+var_48], rax
                mov     [rsp+80h+var_50], r8d
                lea     r8, aVen4hsDev04xSu ; "VEN_%.4hs&DEV_%04x&SUBDEV_%04x&REV_%04x"...
                mov     dword ptr [rsp+80h+var_58], edi
                mov     [rsp+80h+var_60], esi
                call    swprintf_s

loc_1403B376C:                          ; CODE XREF: sub_1403B36D8+F6D2F↓j
                xor     eax, eax

loc_1403B376E:                          ; CODE XREF: sub_1403B36D8+B6↓j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 80h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B3789:                          ; CODE XREF: sub_1403B36D8+52↑j
                mov     eax, 0C0000001h
                jmp     short loc_1403B376E
; } // starts at 1403B36D8
sub_1403B36D8   endp

; ---------------------------------------------------------------------------
algn_1403B3790:                         ; DATA XREF: .rdata:00000001400A0488↑o
                                        ; .pdata:00000001400DE5AC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B37A0   proc near               ; CODE XREF: sub_1403B2330+45↑p
                                        ; sub_1403B23E0+17D↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C0F3A0, 0
                mov     rbx, rcx
                mov     edi, edx
                jz      short loc_1403B3809
                mov     edx, 1
                lea     ecx, [rdx+2Ch]
                call    sub_1403BB238
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1403B3810
                and     qword ptr [rax+1Dh], 0
                and     qword ptr [rax+25h], 0
                mov     dword ptr [rax+8], 3
                mov     byte ptr [rax+0Ch], 21h ; '!'
                mov     [rax+0Dh], rbx
                mov     [rax+15h], rdi
                mov     rax, cs:qword_140D58698
                mov     [rcx], rax
                xor     eax, eax
                mov     cs:qword_140D58698, rcx

loc_1403B37FD:                          ; CODE XREF: sub_1403B37A0+6E↓j
                                        ; sub_1403B37A0+75↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B3809:                          ; CODE XREF: sub_1403B37A0+16↑j
                mov     eax, 0C0000189h
                jmp     short loc_1403B37FD
; ---------------------------------------------------------------------------

loc_1403B3810:                          ; CODE XREF: sub_1403B37A0+2B↑j
                mov     eax, 0C0000017h
                jmp     short loc_1403B37FD
sub_1403B37A0   endp

; ---------------------------------------------------------------------------
algn_1403B3817:                         ; DATA XREF: .pdata:00000001400DE5B8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

sub_1403B3820   proc near               ; CODE XREF: sub_1403B1CF8+1F↑p
                                        ; DATA XREF: .rdata:00000001400A04B0↑o ...

var_130         = qword ptr -130h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = qword ptr -118h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_AC          = dword ptr -0ACh
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
arg_0           = byte ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AA40C SIZE 00000174 BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                and     [rbp+50h+arg_10], 0
                lea     rcx, [rsp+150h+var_120]
                and     [rbp+50h+arg_8], 0
                mov     ebx, 90h
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                xor     edx, edx
                lea     r8d, [rbx-20h]
                lea     rcx, [rbp+50h+var_90]
                call    memset
                mov     ecx, 54414457h
                mov     [rsp+150h+var_120], 1
                mov     [rsp+150h+var_11C], ebx
                mov     [rbp+50h+arg_0], 0
                call    sub_1403B38B4
                mov     ecx, 54524457h
                mov     rsi, rax
                call    sub_1403B38B4
                mov     rbx, rax
                test    rsi, rsi
                jnz     loc_1404AA40C
                test    rax, rax
                jnz     loc_1404AA422

loc_1403B389A:                          ; CODE XREF: sub_1403B3820+F6C29↓j
                                        ; sub_1403B3820+F6D42↓j ...
                xor     eax, eax
                add     rsp, 130h
                pop     r15
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3820   endp

byte_1403B38AB  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A04B0↑o
                                        ; .pdata:00000001400DE5C4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B38B4   proc near               ; CODE XREF: sub_1403B0C28+4C↑p
                                        ; sub_1403B1DBC+25↑p ...
                sub     rsp, 28h
                mov     edx, ecx
                mov     rcx, cs:qword_140C4BF18
                test    rcx, rcx
                jz      short loc_1403B38D7
                xor     r9d, r9d
                xor     r8d, r8d
                call    sub_1402E6A20

loc_1403B38D1:                          ; CODE XREF: sub_1403B38B4+25↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B38D7:                          ; CODE XREF: sub_1403B38B4+10↑j
                xor     eax, eax
                jmp     short loc_1403B38D1
sub_1403B38B4   endp

; ---------------------------------------------------------------------------
byte_1403B38DB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE5D0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B38E4   proc near               ; CODE XREF: sub_1403B208C+9A↑p
                                        ; DATA XREF: .rdata:00000001400A04CC↑o ...

var_10          = qword ptr -10h
arg_0           = byte ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 00000001404AA580 SIZE 00000021 BYTES

                push    rbp
                mov     rbp, rsp
                sub     rsp, 30h
                and     [rbp+arg_8], 0
                lea     rax, qword_140CF42F0
                and     [rbp+arg_10], 0
                xor     edx, edx
                mov     [rbp+arg_0], 0
                mov     [rsp+30h+var_10], rax
                lea     r9d, [rdx+10h]
                lea     r8d, [rdx+2]
                call    sub_1403A208C
                test    eax, eax
                js      loc_1403B39A7
                mov     rax, cs:qword_140CF42F0
                lea     r9, [rbp+arg_0]
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1404079D0
                neg     al
                sbb     cl, cl
                and     cl, [rbp+arg_0]
                mov     [rbp+arg_0], cl
                cmp     cl, 2
                jnz     loc_1404AA580

loc_1403B3946:                          ; CODE XREF: sub_1403B38E4+F6CB8↓j
                mov     rax, cs:qword_140CF42F8
                lea     rcx, [rbp+arg_8]
                and     [rbp+arg_18], 0
                lea     r9, [rbp+arg_8]
                mov     [rsp+30h+var_10], rcx
                lea     r8, [rbp+arg_8]
                xor     ecx, ecx
                lea     rdx, [rbp+arg_10]
                call    sub_1404079D0
                mov     ecx, 6
                cmp     [rbp+arg_10], ecx
                jb      short loc_1403B3998
                mov     rax, cs:qword_140CF42F8
                lea     rdx, [rbp+arg_8]
                mov     [rsp+30h+var_10], rdx
                lea     r9, [rbp+arg_8]
                lea     rdx, [rbp+arg_18]
                lea     r8, [rbp+arg_8]
                call    sub_1404079D0

loc_1403B3998:                          ; CODE XREF: sub_1403B38E4+91↑j
                test    byte ptr [rbp+arg_18], 4
                jz      short loc_1403B39A7
                mov     al, 1

loc_1403B39A0:                          ; CODE XREF: sub_1403B38E4+C5↓j
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B39A7:                          ; CODE XREF: sub_1403B38E4+32↑j
                                        ; sub_1403B38E4+B8↑j ...
                xor     al, al
                jmp     short loc_1403B39A0
sub_1403B38E4   endp

; ---------------------------------------------------------------------------
algn_1403B39AB:                         ; DATA XREF: .rdata:00000001400A04CC↑o
                                        ; .pdata:00000001400DE5DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B39C0   proc near               ; DATA XREF: .pdata:00000001400DE5E8↑o
                                        ; sub_1403B2BAC+17B↑o ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdx, cs:qword_140C48C40
                xor     ebx, ebx
                mov     rdi, rcx
                test    rdx, rdx
                jnz     short loc_1403B39FE
                mov     rcx, cs:qword_140C48C48
                xor     r8d, r8d
                mov     edx, 400h
                call    sub_1403B3A40
                mov     cs:qword_140C48C40, rax
                mov     rdx, rax
                test    rax, rax
                jz      short loc_1403B3A2E

loc_1403B39FE:                          ; CODE XREF: sub_1403B39C0+19↑j
                mov     eax, [rdx+10h]
                or      eax, 1
                cmp     cs:byte_140C508F8, bl
                jz      short loc_1403B3A35
                or      eax, 2

loc_1403B3A0F:                          ; CODE XREF: sub_1403B39C0+78↓j
                mov     [rdx+10h], eax
                lock or [rsp+28h+var_28], ebx
                mov     [rdx+10h], eax
                lock or [rsp+28h+var_28], ebx
                mov     [rdi+8], ebx

loc_1403B3A20:                          ; CODE XREF: sub_1403B39C0+73↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B3A2E:                          ; CODE XREF: sub_1403B39C0+3C↑j
                mov     ebx, 0C0000001h
                jmp     short loc_1403B3A20
; ---------------------------------------------------------------------------

loc_1403B3A35:                          ; CODE XREF: sub_1403B39C0+4A↑j
                and     eax, 0FFFFFFFDh
                jmp     short loc_1403B3A0F
sub_1403B39C0   endp

; ---------------------------------------------------------------------------
algn_1403B3A3A:                         ; DATA XREF: .pdata:00000001400DE5E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B3A40   proc near               ; CODE XREF: sub_1403A1AD0+1B3↑p
                                        ; sub_1403A5780+48↑p ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                cmp     r8d, 1
                ja      short loc_1403B3A76
                lea     rax, [rdx+0FFFh]
                mov     [rsp+38h+var_18], 4
                shr     rax, 0Ch
                xor     r9d, r9d
                mov     edx, eax
                cmp     r8d, 1
                jz      short loc_1403B3A7A
                xor     r8d, r8d

loc_1403B3A6B:                          ; CODE XREF: sub_1403B3A40+40↓j
                call    sub_1403BB8B8

loc_1403B3A70:                          ; CODE XREF: sub_1403B3A40+38↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B3A76:                          ; CODE XREF: sub_1403B3A40+8↑j
                xor     eax, eax
                jmp     short loc_1403B3A70
; ---------------------------------------------------------------------------

loc_1403B3A7A:                          ; CODE XREF: sub_1403B3A40+26↑j
                mov     r8d, 1
                jmp     short loc_1403B3A6B
sub_1403B3A40   endp

; ---------------------------------------------------------------------------
algn_1403B3A82:                         ; DATA XREF: .pdata:00000001400DE5F4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B3A88   proc near               ; CODE XREF: sub_1403B1DBC+7E↑p
                                        ; DATA XREF: .pdata:00000001400DE600↑o

; FUNCTION CHUNK AT 00000001404AA5A2 SIZE 00000067 BYTES

                xor     r11d, r11d
                mov     r10, r8
                cmp     byte ptr [rcx+8], 5
                mov     r9d, 0C00000BBh
                jb      loc_1404AA5E1
                cmp     [rcx+5Bh], r11b
                jz      loc_1404AA5E1
                movzx   r8d, byte ptr [rcx+0D0h]
                test    r8d, r8d
                jz      loc_1404AA5A2
                cmp     r8d, 1
                jnz     short loc_1403B3AE2
                mov     [rdx+1], r11b
                mov     eax, [rcx+0D4h]
                lea     rcx, sub_140365440
                mov     [rdx+8], rax
                neg     rax
                mov     [r10+10h], rcx
                sbb     eax, eax
                not     eax
                and     r9d, eax

loc_1403B3AE2:                          ; CODE XREF: sub_1403B3A88+35↑j
                                        ; sub_1403B3A88+F6B54↓j ...
                mov     eax, r9d
                retn
sub_1403B3A88   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403B3AE7:                         ; DATA XREF: .pdata:00000001400DE600↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B3AF0   proc near               ; CODE XREF: sub_1403B1D2C+80↑p
                                        ; DATA XREF: .rdata:00000001400A04F8↑o ...

var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_3C          = dword ptr -3Ch
var_28          = dword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AA60A SIZE 000000BD BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                cmp     cs:byte_140C4A469, 0
                jnz     short loc_1403B3B26
                call    sub_1403A1F88
                test    al, al
                jnz     loc_1404AA60A

loc_1403B3B26:                          ; CODE XREF: sub_1403B3AF0+27↑j
                                        ; sub_1403B3AF0+F6B22↓j ...
                xor     eax, eax
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_0]
                add     rsp, 0D0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B3AF0
sub_1403B3AF0   endp

byte_1403B3B46  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A04F8↑o
                                        ; .pdata:00000001400DE60C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B3B4C   proc near               ; CODE XREF: sub_1403B1D2C:loc_1403B1DA3↑p
                                        ; DATA XREF: .rdata:00000001400A0520↑o ...

var_C0          = xmmword ptr -0C0h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_3C          = dword ptr -3Ch
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h

; FUNCTION CHUNK AT 00000001404AA6C8 SIZE 00000087 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     eax, eax
                lea     rdx, [rbp+57h+var_18]
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_20], rax
                lea     rcx, [rbp+57h+var_20]
                mov     [rbp+57h+var_18], eax
                movups  [rbp+57h+var_C0], xmm0
                call    sub_1403B3BAC
                test    al, al
                jnz     loc_1404AA6C8

loc_1403B3B8D:                          ; CODE XREF: sub_1403B3B4C+F6BFE↓j
                xor     eax, eax
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B3B4C
sub_1403B3B4C   endp

byte_1403B3BA5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0520↑o
                                        ; .pdata:00000001400DE618↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B3BAC   proc near               ; CODE XREF: sub_1403B3B4C+34↑p
                                        ; sub_1404D5EA0+41↓p
                                        ; DATA XREF: ...

var_40          = qword ptr -40h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = byte ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 00000001404AA750 SIZE 000000D0 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_20], 0
                lea     rax, [rbp+var_18]
                and     [rbp+var_30], 0
                mov     rsi, rdx
                and     [rbp+var_28], 0
                xor     edx, edx
                and     [rbp+var_24], 0
                xorps   xmm0, xmm0
                and     [rbp+var_2C], 0
                mov     rbx, rcx
                and     [rbp+var_1C], 0
                and     [rbp+arg_18], 0
                lea     r9d, [rdx+10h]
                lea     r8d, [rdx+2]
                mov     [rbp+arg_10], 0
                movups  [rbp+var_18], xmm0
                mov     [rsp+60h+var_40], rax
                call    sub_1403A208C
                test    eax, eax
                js      short loc_1403B3C83
                mov     rax, qword ptr [rbp+var_18]
                lea     r9, [rbp+arg_10]
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1404079D0
                test    al, al
                jz      short loc_1403B3C83
                lea     rax, [rbp+arg_18]
                xor     ecx, ecx
                mov     [rsp+60h+var_40], rax
                lea     r9, [rbp+arg_18]
                mov     rax, qword ptr [rbp+var_18+8]
                lea     r8, [rbp+arg_18]
                lea     rdx, [rbp+var_28]
                call    sub_1404079D0
                lea     rax, [rbp+arg_18]
                mov     ecx, 80000000h
                mov     [rsp+60h+var_40], rax
                lea     r9, [rbp+arg_18]
                mov     rax, qword ptr [rbp+var_18+8]
                lea     r8, [rbp+arg_18]
                lea     rdx, [rbp+var_24]
                call    sub_1404079D0
                cmp     [rbp+arg_10], 2
                jnz     short loc_1403B3C83
                call    sub_1403A1FC8
                test    al, al
                jnz     loc_1404AA750

loc_1403B3C75:                          ; CODE XREF: sub_1403B3BAC+F6BBE↓j
                mov     ecx, 15h
                cmp     [rbp+var_28], ecx
                jnb     loc_1404AA76F

loc_1403B3C83:                          ; CODE XREF: sub_1403B3BAC+59↑j
                                        ; sub_1403B3BAC+71↑j ...
                xor     al, al

loc_1403B3C85:                          ; CODE XREF: sub_1403B3BAC+F6C6F↓j
                mov     rbx, [rsp+60h+arg_0]
                mov     rsi, [rsp+60h+arg_8]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3BAC   endp

byte_1403B3C96  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0544↑o
                                        ; .pdata:00000001400DE624↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B3C9C   proc near               ; CODE XREF: sub_1403B1CF8+16↑p
                                        ; DATA XREF: .rdata:00000001400A0568↑o ...

var_A0          = qword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_1C          = dword ptr -1Ch
var_8           = dword ptr -8
arg_0           = byte ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AA820 SIZE 000000F7 BYTES

                mov     [rsp-8+arg_8], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0C0h
                mov     r9d, 8
                mov     [rbp+57h+arg_0], 0
                lea     rax, qword_140CF42C0
                lea     rdx, sub_1404D4C90
                mov     [rsp+0C0h+var_A0], rax
                lea     r8d, [r9-5]
                call    sub_1403A208C
                mov     edi, 90h
                test    eax, eax
                jns     loc_1404AA820

loc_1403B3CE1:                          ; CODE XREF: sub_1403B3C9C+F6BDB↓j
                lea     r8, [rbp+57h+arg_0]
                mov     ecx, 3
                call    sub_1403A1E8C
                test    eax, eax
                js      short loc_1403B3CFD
                cmp     [rbp+57h+arg_0], 0
                jnz     loc_1404AA87C

loc_1403B3CFD:                          ; CODE XREF: sub_1403B3C9C+55↑j
                                        ; sub_1403B3C9C+F6C76↓j
                mov     rdi, [rsp+0C0h+arg_8]
                xor     eax, eax
                add     rsp, 0C0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3C9C   endp

algn_1403B3D11:                         ; DATA XREF: .rdata:00000001400A0568↑o
                                        ; .pdata:00000001400DE630↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B3D18   proc near               ; CODE XREF: sub_1409A06B0+13A↓p
                                        ; DATA XREF: .rdata:00000001400A05B4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AA918 SIZE 00000025 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, cs:qword_140C49C90
                lea     rsi, qword_140C49C90
                mov     rdi, rcx
                xor     eax, eax

loc_1403B3D3A:                          ; CODE XREF: sub_1403B3D18+F6C20↓j
                cmp     rbx, rsi
                jnz     loc_1404AA918

loc_1403B3D43:                          ; CODE XREF: sub_1403B3D18+F6C17↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3D18   endp

byte_1403B3D54  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A05B4↑o
                                        ; .pdata:00000001400DE63C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B3D5C   proc near               ; CODE XREF: sub_1409A06B0+105↓p
                                        ; DATA XREF: .rdata:00000001400A05D4↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AA93E SIZE 00000022 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C49C6C, 0
                jnz     short loc_1403B3D86
                mov     rbx, cs:qword_140C49C90
                lea     rdi, qword_140C49C90

loc_1403B3D7D:                          ; CODE XREF: sub_1403B3D5C+F6BFF↓j
                cmp     rbx, rdi
                jnz     loc_1404AA93E

loc_1403B3D86:                          ; CODE XREF: sub_1403B3D5C+11↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B3D5C   endp

algn_1403B3D92:                         ; DATA XREF: .rdata:00000001400A05D4↑o
                                        ; .pdata:00000001400DE648↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B3D98   proc near               ; CODE XREF: sub_1409A06B0+AF↓p
                                        ; DATA XREF: .rdata:00000001400A05F4↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AA960 SIZE 0000003D BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_0], 0
                cmp     cs:byte_140C49C6C, 0
                jnz     short loc_1403B3DEC
                lea     r8, qword_140C49CD8
                mov     dl, 1
                xor     ecx, ecx
                call    sub_1403B3DF8
                mov     ecx, eax
                test    eax, eax
                js      short loc_1403B3DE0
                mov     rbx, cs:qword_140C49C90
                lea     rdi, qword_140C49C90

loc_1403B3DD5:                          ; CODE XREF: sub_1403B3D98+F6C00↓j
                cmp     rbx, rdi
                jnz     loc_1404AA960
                mov     eax, ecx

loc_1403B3DE0:                          ; CODE XREF: sub_1403B3D98+2D↑j
                                        ; sub_1403B3D98+56↓j ...
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403B3DEC:                          ; CODE XREF: sub_1403B3D98+17↑j
                xor     eax, eax
                jmp     short loc_1403B3DE0
sub_1403B3D98   endp

; ---------------------------------------------------------------------------
byte_1403B3DF0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A05F4↑o
                                        ; .pdata:00000001400DE654↑o

; =============== S U B R O U T I N E =======================================


sub_1403B3DF8   proc near               ; CODE XREF: sub_1403B3D98+24↑p
                                        ; sub_1403C7168+EA660↓p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AA99E SIZE 000000B1 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                and     dword ptr [rax+20h], 0
                mov     sil, dl
                xor     edi, edi
                mov     r14, r8
                mov     ebp, ecx
                lea     edx, [rdi+30h]
                call    sub_14037CD18
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1403B3E8A
                cmp     cs:byte_140C49C6C, dil
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                movups  xmmword ptr [rax+10h], xmm0
                movups  xmmword ptr [rax+20h], xmm0
                mov     [rax+2Ch], sil
                jnz     loc_1404AA99E
                test    sil, sil
                jz      loc_1404AA9F5
                cmp     ebp, 1
                ja      loc_1404AA9FC

loc_1403B3E5A:                          ; CODE XREF: sub_1403B3DF8+F6C43↓j
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                and     qword ptr [rbx+10h], 0

loc_1403B3E66:                          ; CODE XREF: sub_1403B3DF8+F6BEF↓j
                mov     [rbx+24h], ebp
                mov     [r14], rbx
                test    edi, edi
                js      loc_1404AAA41

loc_1403B3E74:                          ; CODE XREF: sub_1403B3DF8+97↓j
                                        ; sub_1403B3DF8+F6C52↓j
                mov     rbx, [rsp+68h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+68h+arg_8]
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B3E8A:                          ; CODE XREF: sub_1403B3DF8+2F↑j
                mov     edi, 0C000009Ah
                jmp     short loc_1403B3E74
sub_1403B3DF8   endp

; ---------------------------------------------------------------------------
algn_1403B3E91:                         ; DATA XREF: .rdata:00000001400A061C↑o
                                        ; .pdata:00000001400DE660↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B3E98   proc near               ; CODE XREF: sub_1409A06B0:loc_1409A0750↓p
                                        ; DATA XREF: .pdata:00000001400DE66C↑o
                sub     rsp, 28h
                and     cs:qword_140C48BA0, 0
                lea     rax, qword_140C48BB0
                cmp     cs:byte_140C49C6C, 0
                mov     cs:qword_140C48BB8, rax
                mov     cs:qword_140C48BB0, rax
                jnz     short loc_1403B3ECA

loc_1403B3EC2:                          ; CODE XREF: sub_1403B3E98+37↓j
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B3ECA:                          ; CODE XREF: sub_1403B3E98+28↑j
                call    sub_140A8F964
                jmp     short loc_1403B3EC2
sub_1403B3E98   endp

; ---------------------------------------------------------------------------
algn_1403B3ED1:                         ; DATA XREF: .pdata:00000001400DE66C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B3ED8   proc near               ; CODE XREF: sub_1409A06B0+8C↓p
                                        ; DATA XREF: .pdata:00000001400DE678↑o

var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     rbx, cs:qword_140C4A460
                lea     rdx, qword_14000AF78
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jz      loc_1403B3FE8
                and     [rsp+90h+var_58], 0
                lea     rdx, qword_14000AF78
                and     [rsp+90h+var_60], 0
                xor     r9d, r9d
                and     [rsp+90h+var_68], 0
                xor     r8d, r8d
                and     [rsp+90h+var_70], 0
                mov     rcx, rbx
                call    EtwWriteEx
                mov     rbx, cs:qword_140C4A460
                lea     rdx, qword_14000F6D8
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jz      loc_1403B3FE8
                cmp     cs:byte_140C4A468, 0
                jz      short loc_1403B3FE8
                mov     r8, cs:qword_140C4C338
                test    r8, r8
                jz      short loc_1403B3FE8
                and     [rbp+57h+var_44], 0
                lea     rax, [r8+8]
                and     [rbp+57h+var_34], 0
                lea     rdx, qword_14000F6D8
                and     [rbp+57h+var_24], 0
                mov     r9d, 8
                and     [rbp+57h+var_14], 0
                mov     [rbp+57h+var_40], rax
                lea     rax, [r8+10h]
                mov     [rbp+57h+var_30], rax
                lea     rax, [r8+18h]
                lea     ecx, [r9-4]
                mov     [rbp+57h+var_20], rax
                lea     rax, [rbp+57h+var_50]
                mov     [rbp+57h+var_50], r8
                mov     [rsp+90h+var_58], rax
                xor     r8d, r8d
                mov     [rsp+90h+var_60], ecx
                and     [rsp+90h+var_68], 0
                and     [rsp+90h+var_70], 0
                mov     [rbp+57h+var_48], r9d
                mov     [rbp+57h+var_38], r9d
                mov     [rbp+57h+var_28], ecx
                mov     rcx, rbx
                mov     [rbp+57h+var_18], r9d
                xor     r9d, r9d
                call    EtwWriteEx

loc_1403B3FE8:                          ; CODE XREF: sub_1403B3ED8+38↑j
                                        ; sub_1403B3ED8+82↑j ...
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+90h+arg_0]
                add     rsp, 90h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B3ED8
sub_1403B3ED8   endp

algn_1403B4006:                         ; DATA XREF: .pdata:00000001400DE678↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1403B4010   proc near               ; DATA XREF: .pdata:00000001400DE684↑o
                                        ; sub_14026DEF0+163↑o ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rcx, gs:188h
                mov     edx, 17h
                call    KeSetPriorityThread
                xor     ebx, ebx
                nop     dword ptr [rax+rax+00h]

loc_1403B4030:                          ; CODE XREF: sub_1403B4010+78↓j
                                        ; sub_1403B4010+7F↓j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rbx
                xor     r8d, r8d
                lea     rcx, dword_140C31E40
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, 1
                lock cmpxchg cs:dword_140CF4410, ebx
                jz      short loc_1403B4098

loc_1403B4058:                          ; CODE XREF: sub_1403B4010+8D↓j
                mov     rcx, rbx
                xchg    rcx, cs:qword_140C31E88
                test    rcx, rcx
                jz      short loc_1403B406C
                call    sub_1402C6C90

loc_1403B406C:                          ; CODE XREF: sub_1403B4010+55↑j
                mov     rcx, rbx
                xchg    rcx, cs:qword_140C31E28
                test    rcx, rcx
                jnz     short loc_1403B4091

loc_1403B407B:                          ; CODE XREF: sub_1403B4010+86↓j
                mov     rcx, rbx
                xchg    rcx, cs:qword_140C31E80
                test    rcx, rcx
                jz      short loc_1403B4030
                call    sub_1403027BC
                jmp     short loc_1403B4030
; ---------------------------------------------------------------------------

loc_1403B4091:                          ; CODE XREF: sub_1403B4010+69↑j
                call    sub_14033A7A0
                jmp     short loc_1403B407B
; ---------------------------------------------------------------------------

loc_1403B4098:                          ; CODE XREF: sub_1403B4010+46↑j
                call    sub_140302840
                jmp     short loc_1403B4058
sub_1403B4010   endp

; ---------------------------------------------------------------------------
byte_1403B409F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE684↑o

; =============== S U B R O U T I N E =======================================


sub_1403B40A8   proc near               ; CODE XREF: NaptrDnsRecordConvert_2+170↓p
                                        ; DATA XREF: .pdata:00000001400DE690↑o

var_18          = word ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 30h
                and     dword ptr [r8], 0
                mov     r14, r8
                xorps   xmm0, xmm0
                xor     r8d, r8d
                movups  xmmword ptr [rax-18h], xmm0
                mov     rdi, rdx
                mov     rsi, rcx
                xor     bl, bl
                call    RtlPrefixString
                test    al, al
                jz      short loc_1403B4128
                movzx   edx, word ptr [rsi]
                lea     rcx, [rsp+38h+var_18]
                add     rdx, [rdi+8]
                mov     bl, 1
                call    RtlInitString
                mov     edi, 0Ah
                cmp     [rsp+38h+var_18], di
                jbe     short loc_1403B4128
                xor     r8d, r8d
                lea     rdx, [rsp+38h+var_18]
                lea     rcx, asc_1400056E0 ; "\n\v"
                call    RtlPrefixString
                test    al, al
                jz      short loc_1403B4128
                mov     rcx, [rsp+38h+var_10]
                mov     r8, r14
                add     rcx, rdi
                mov     edx, edi
                call    RtlCharToInteger

loc_1403B4128:                          ; CODE XREF: sub_1403B40A8+35↑j
                                        ; sub_1403B40A8+54↑j ...
                mov     rsi, [rsp+38h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_0]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B40A8   endp

algn_1403B4141:                         ; DATA XREF: .pdata:00000001400DE690↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B4148   proc near               ; CODE XREF: sub_1404EF060+5B↓p
                                        ; EmpProviderRegister+21C↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AAA50 SIZE 0000002D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rdx
                lea     r15, qword_140C47830
                mov     rbx, rcx
                xor     edx, edx
                mov     rcx, r15
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:qword_140C477C8
                mov     r14d, 1

loc_1403B417F:                          ; CODE XREF: sub_1403B4148+4C↓j
                test    rax, rax
                jz      short loc_1403B4196
                lea     rdx, [rax-8]
                cmp     [rdx], rbx
                jz      loc_1403B4365
                mov     rax, [rax]
                jmp     short loc_1403B417F
; ---------------------------------------------------------------------------

loc_1403B4196:                          ; CODE XREF: sub_1403B4148+3A↑j
                                        ; sub_1403B4148+220↓j
                mov     edx, 18h
                mov     r8d, 75714D45h
                mov     ecx, r14d
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_1403B41D7
                mov     [rax], rbx
                lea     rcx, [rax+8]
                mov     [rax+10h], rdi
                mov     rax, cs:qword_140C477C8
                mov     [rcx], rax
                cmp     cs:dword_140C477B8, 0
                mov     cs:qword_140C477C8, rcx
                jz      loc_1403B438B

loc_1403B41D7:                          ; CODE XREF: sub_1403B4148+64↑j
                                        ; sub_1403B4148+22B↓j ...
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rdi
                lock xadd cs:qword_140C47830, rax
                and     al, 6
                cmp     al, 2
                jz      loc_1403B43A8

loc_1403B41F1:                          ; CODE XREF: sub_1403B4148+268↓j
                and     [rsp+48h+arg_18], 0
                mov     rcx, r15
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, r14d
                jz      loc_1403B4378
                or      edx, 0FFFFFFFFh

loc_1403B4213:                          ; CODE XREF: sub_1403B4148+23E↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r14b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, r15
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     sil, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_1403B424E:                          ; CODE XREF: sub_1403B4148+131↓j
                                        ; sub_1403B4148+139↓j ...
                bsr     ecx, r8d
                mov     [rsp+48h+arg_10], ecx
                jz      loc_1403B43C2
                lea     rdi, [rcx+rcx*2]
                mov     eax, r14d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r14b
                jz      short loc_1403B424E
                mov     eax, [rdi+20h]
                test    r14b, al
                jnz     short loc_1403B424E
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1403B424E
                cmp     [rdi+28h], edx
                jnz     short loc_1403B424E
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1403B424E
                test    rdi, rdi
                jz      loc_1403B43C2
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1403B43B5

loc_1403B42C2:                          ; CODE XREF: sub_1403B4148+275↓j
                mov     ecx, [rdi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rsp+48h+arg_18], eax
                mov     [rdi+58h], ecx
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     sil, r14b
                jnz     loc_1404AAA50
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1403B4320:                          ; CODE XREF: sub_1403B4148+281↓j
                                        ; sub_1403B4148+F6916↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_18]
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r14w
                jnz     short loc_1403B4350
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     loc_1403B43D4

loc_1403B4350:                          ; CODE XREF: sub_1403B4148+1F6↑j
                                        ; sub_1403B4148+291↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4365:                          ; CODE XREF: sub_1403B4148+43↑j
                test    rdx, rdx
                jz      loc_1403B4196
                and     qword ptr [rdx+10h], 0
                jmp     loc_1403B41D7
; ---------------------------------------------------------------------------

loc_1403B4378:                          ; CODE XREF: sub_1403B4148+C2↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                jmp     loc_1403B4213
; ---------------------------------------------------------------------------

loc_1403B438B:                          ; CODE XREF: sub_1403B4148+89↑j
                mov     eax, r14d
                lea     rcx, qword_140C477E0
                xchg    eax, cs:dword_140C477B8
                mov     edx, r14d
                call    ExQueueWorkItem
                jmp     loc_1403B41D7
; ---------------------------------------------------------------------------

loc_1403B43A8:                          ; CODE XREF: sub_1403B4148+A3↑j
                mov     rcx, r15
                call    ExfTryToWakePushLock
                jmp     loc_1403B41F1
; ---------------------------------------------------------------------------

loc_1403B43B5:                          ; CODE XREF: sub_1403B4148+174↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_1403B42C2
; ---------------------------------------------------------------------------

loc_1403B43C2:                          ; CODE XREF: sub_1403B4148+10E↑j
                                        ; sub_1403B4148+15C↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1403B4320
                jmp     loc_1404AAA63
; ---------------------------------------------------------------------------

loc_1403B43D4:                          ; CODE XREF: sub_1403B4148+202↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_1403B4350
sub_1403B4148   endp

; ---------------------------------------------------------------------------
byte_1403B43DE  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A079C↑o
                                        ; .pdata:00000001400DE69C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B43E4   proc near               ; CODE XREF: sub_140A48E5C+114↓p
                                        ; DATA XREF: .pdata:00000001400DE6A8↑o
                xor     r10d, r10d
                lea     rax, [rdx-1]
                cmp     rax, 7FFFFFFEh
                mov     r11d, 0C000000Dh
                cmova   r10d, r11d
                test    r10d, r10d
                js      short loc_1403B444E
                cmp     r9, 7FFFFFFEh
                ja      short loc_1403B4453
                test    rdx, rdx
                jz      short loc_1403B4430
                sub     r9, rdx
                sub     r8, rcx

loc_1403B4414:                          ; CODE XREF: sub_1403B43E4+4A↓j
                lea     rax, [r9+rdx]
                test    rax, rax
                jz      short loc_1403B4430
                mov     al, [r8+rcx]
                test    al, al
                jz      short loc_1403B4430
                mov     [rcx], al
                inc     rcx
                sub     rdx, 1
                jnz     short loc_1403B4414

loc_1403B4430:                          ; CODE XREF: sub_1403B43E4+28↑j
                                        ; sub_1403B43E4+37↑j ...
                test    rdx, rdx
                lea     rax, [rcx-1]
                cmovnz  rax, rcx
                neg     rdx
                sbb     r10d, r10d
                not     r10d
                and     r10d, 80000005h
                mov     byte ptr [rax], 0

loc_1403B444E:                          ; CODE XREF: sub_1403B43E4+1A↑j
                                        ; sub_1403B43E4+75↓j
                mov     eax, r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4453:                          ; CODE XREF: sub_1403B43E4+23↑j
                mov     r10d, r11d
                mov     byte ptr [rcx], 0
                jmp     short loc_1403B444E
sub_1403B43E4   endp

; ---------------------------------------------------------------------------
byte_1403B445B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE6A8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B4464   proc near               ; CODE XREF: EmpProviderRegister+1B9↓p
                                        ; sub_140A47E34+DA↓p ...
                mov     rdx, cs:qword_140C47800

loc_1403B446B:                          ; CODE XREF: sub_1403B4464+2B↓j
                xor     r8d, r8d
                test    rdx, rdx
                jz      short loc_1403B4491
                lea     r8, [rdx-28h]
                mov     r9, [r8]
                sub     r9, [rcx]
                jnz     short loc_1403B4487
                mov     r9, [r8+8]
                sub     r9, [rcx+8]

loc_1403B4487:                          ; CODE XREF: sub_1403B4464+19↑j
                test    r9, r9
                jz      short loc_1403B4491
                mov     rdx, [rdx]
                jmp     short loc_1403B446B
; ---------------------------------------------------------------------------

loc_1403B4491:                          ; CODE XREF: sub_1403B4464+D↑j
                                        ; sub_1403B4464+26↑j
                mov     rax, r8
                retn
sub_1403B4464   endp

; ---------------------------------------------------------------------------
                align 2
byte_1403B4496  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE6B4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B449C   proc near               ; CODE XREF: EmpProviderRegister+122↓p
                                        ; EmProviderRegisterEntry+5C↓p ...
                mov     rdx, cs:qword_140C47808

loc_1403B44A3:                          ; CODE XREF: sub_1403B449C+2B↓j
                xor     r8d, r8d
                test    rdx, rdx
                jz      short loc_1403B44C9
                lea     r8, [rdx-18h]
                mov     r9, [r8]
                sub     r9, [rcx]
                jnz     short loc_1403B44BF
                mov     r9, [r8+8]
                sub     r9, [rcx+8]

loc_1403B44BF:                          ; CODE XREF: sub_1403B449C+19↑j
                test    r9, r9
                jz      short loc_1403B44C9
                mov     rdx, [rdx]
                jmp     short loc_1403B44A3
; ---------------------------------------------------------------------------

loc_1403B44C9:                          ; CODE XREF: sub_1403B449C+D↑j
                                        ; sub_1403B449C+26↑j
                mov     rax, r8
                retn
sub_1403B449C   endp

; ---------------------------------------------------------------------------
                align 2
byte_1403B44CE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE6C0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B44D4   proc near               ; CODE XREF: NaptrDnsRecordConvert_2+1B2↓p
                                        ; NaptrDnsRecordConvert_2+3852B↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001404AAA7E SIZE 00000011 BYTES

                mov     r10d, [rcx]
                xor     r8d, r8d
                mov     r9, rdx
                test    r10d, r10d
                jz      short loc_1403B4510

loc_1403B44E2:                          ; CODE XREF: sub_1403B44D4+F65B0↓j
                mov     eax, r8d
                imul    r11, rax, 1Ch
                mov     rdx, [r11+rcx+4]
                sub     rdx, [r9]
                jnz     short loc_1403B4507
                mov     rdx, [r11+rcx+0Ch]
                sub     rdx, [r9+8]
                jnz     short loc_1403B4507
                mov     rdx, [r11+rcx+14h]
                sub     rdx, [r9+10h]

loc_1403B4507:                          ; CODE XREF: sub_1403B44D4+1D↑j
                                        ; sub_1403B44D4+28↑j
                test    rdx, rdx
                jnz     loc_1404AAA7E

loc_1403B4510:                          ; CODE XREF: sub_1403B44D4+C↑j
                                        ; sub_1403B44D4+F65B6↓j
                mov     eax, r8d
                imul    rdx, rax, 1Ch
                mov     eax, [r9+18h]
                or      [rdx+rcx+1Ch], eax
                mov     eax, [rcx]
                cmp     r8d, eax
                jnz     short locret_1403B4547
                inc     eax
                mov     [rcx], eax
                movups  xmm0, xmmword ptr [r9]
                movups  xmmword ptr [rdx+rcx+4], xmm0
                movsd   xmm1, qword ptr [r9+10h]
                movsd   qword ptr [rdx+rcx+14h], xmm1
                mov     eax, [r9+18h]
                mov     [rdx+rcx+1Ch], eax

locret_1403B4547:                       ; CODE XREF: sub_1403B44D4+50↑j
                retn
sub_1403B44D4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403B4549:                         ; DATA XREF: .pdata:00000001400DE6CC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B4550   proc near               ; CODE XREF: sub_14079D018:loc_14079D257↓p
                                        ; DATA XREF: .pdata:00000001400DE6D8↑o
                sub     rsp, 28h
                call    sub_14079D290
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4550   endp

byte_1403B455F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE6D8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B4568   proc near               ; CODE XREF: sub_140A400D0+A4B↓p
                                        ; DATA XREF: .pdata:00000001400DE6E4↑o

var_38          = dword ptr -38h
var_34          = dword ptr -34h

                mov     r11, rsp
                push    rbx
                sub     rsp, 50h
                mov     [rsp+58h+var_34], 3
                lea     rax, off_140005780
                mov     qword ptr [r11-30h], 200h
                lea     r8, [r11-38h]
                mov     [rsp+58h+var_38], 0B0006h
                lea     rcx, qword_140C45878
                xor     ebx, ebx
                mov     [r11-28h], rax
                mov     [r11-20h], rbx
                mov     [r11-18h], rbx
                call    sub_14079D6C0
                test    eax, eax
                js      short loc_1403B45B8

loc_1403B45B1:                          ; CODE XREF: sub_1403B4568+57↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403B45B8:                          ; CODE XREF: sub_1403B4568+47↑j
                mov     cs:qword_140C45878, rbx
                jmp     short loc_1403B45B1
sub_1403B4568   endp

; ---------------------------------------------------------------------------
algn_1403B45C1:                         ; DATA XREF: .pdata:00000001400DE6E4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B45C8   proc near               ; CODE XREF: sub_14079D018+227↓p
                                        ; DATA XREF: .rdata:00000001400A0BDC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AAA90 SIZE 000001F9 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r15
                sub     rsp, 30h
                mov     rcx, cs:qword_140D2E948
                xor     ebx, ebx
                test    rcx, rcx
                jnz     loc_1404AAA90

loc_1403B45F2:                          ; CODE XREF: sub_1403B45C8+F64D6↓j
                cmp     cs:dword_140D2D12C, ebx
                jnz     loc_1404AAAA3

loc_1403B45FE:                          ; CODE XREF: sub_1403B45C8+F6679↓j
                                        ; sub_1403B45C8+F66A4↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B45C8   endp

algn_1403B4618:                         ; DATA XREF: .rdata:00000001400A0BDC↑o
                                        ; .pdata:00000001400DE6F0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B4620   proc near               ; CODE XREF: sub_140A4E244+10↓p
                                        ; DATA XREF: .rdata:00000001400A0DE0↑o ...

var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404AAC8A SIZE 00000022 BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 58h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                xorps   xmm0, xmm0
                lea     rdx, [rsp+58h+var_38]
                xor     r9d, r9d
                mov     ecx, 0C0h
                movups  [rsp+58h+var_38], xmm0
                movups  [rsp+58h+var_28], xmm0
                lea     r8d, [r9+20h]
                call    ZwQuerySystemInformation
                test    eax, eax
                js      short loc_1403B4682
                test    byte ptr [rsp+58h+var_38+8], 1
                jnz     short loc_1403B4695

loc_1403B4661:                          ; CODE XREF: sub_1403B4620+7C↓j
                test    byte ptr [rsp+58h+var_38], 4
                jnz     loc_1404AAC8A
                test    byte ptr [rsp+58h+var_38], 2
                jnz     loc_1404AAC96

loc_1403B4677:                          ; CODE XREF: sub_1403B4620+F6687↓j
                mov     eax, dword ptr [rsp+58h+var_38+4]
                mov     cs:qword_140C0F478, rax

loc_1403B4682:                          ; CODE XREF: sub_1403B4620+38↑j
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4695:                          ; CODE XREF: sub_1403B4620+3F↑j
                mov     cs:byte_140C12BAC, 0
                jmp     short loc_1403B4661
; } // starts at 1403B4620
sub_1403B4620   endp

; ---------------------------------------------------------------------------
byte_1403B469E  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0DE0↑o
                                        ; .pdata:00000001400DE6FC↑o

; =============== S U B R O U T I N E =======================================


sub_1403B46A4   proc near               ; CODE XREF: sub_1407B3350+2E↓p
                                        ; sub_140A4E244+71↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403B46BD
                mov     rax, [rax+70h]
                test    rax, rax
                jnz     short loc_1403B46C3

loc_1403B46BD:                          ; CODE XREF: sub_1403B46A4+E↑j
                                        ; sub_1403B46A4+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B46C3:                          ; CODE XREF: sub_1403B46A4+17↑j
                call    sub_1404079D0
                jmp     short loc_1403B46BD
sub_1403B46A4   endp

; ---------------------------------------------------------------------------
algn_1403B46CA:                         ; DATA XREF: .pdata:00000001400DE708↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B46D0   proc near               ; CODE XREF: sub_140599710+7D↓p
                                        ; sub_140A4D668+3E↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                xor     ebp, ebp
                xor     edx, edx
                mov     [rsp+28h+arg_0], rbp
                mov     r8d, 750h
                mov     rdi, rcx
                call    memset
                movups  xmm0, xmmword ptr [rbx]
                mov     rcx, rdi
                movdqu  xmmword ptr [rdi+730h], xmm0
                call    sub_14079DD30
                xorps   xmm0, xmm0
                mov     [rdi+1B8h], rbp
                lea     rbx, [rdi+590h]
                xor     edx, edx
                mov     rcx, rbx
                lea     r8d, [rbp+70h]
                movups  xmmword ptr [rdi+1C0h], xmm0
                call    memset
                lea     rax, [rbx+10h]
                mov     word ptr [rbx+8], 1
                mov     byte ptr [rbx+0Ah], 6
                lea     r8d, [rbp+70h]
                mov     [rbx+0Ch], ebp
                xor     edx, edx
                lea     rbx, [rdi+600h]
                mov     [rax+8], rax
                mov     rcx, rbx
                mov     [rax], rax
                call    memset
                lea     rax, [rbx+10h]
                mov     word ptr [rbx+8], 1
                mov     byte ptr [rbx+0Ah], 6
                xor     edx, edx
                mov     [rbx+0Ch], ebp
                mov     r8d, 308h
                lea     rbx, [rdi+1D0h]
                mov     [rax+8], rax
                mov     rcx, rbx
                mov     [rax], rax
                call    memset
                mov     rax, rbx
                lea     ecx, [rbp+20h]

loc_1403B4794:                          ; CODE XREF: sub_1403B46D0+D3↓j
                mov     [rax+8], rax
                mov     [rax], rbp
                add     rax, 18h
                sub     rcx, 1
                jnz     short loc_1403B4794
                lea     rcx, [rdi+4E0h]
                mov     [rbx+300h], rbp
                call    InitializeSListHead
                lea     rbx, [rdi+4F0h]
                xor     edx, edx
                mov     rcx, rbx
                mov     r8d, 88h
                call    memset
                lea     rax, [rbx+8]
                mov     [rax+8], rax
                lea     rcx, [rbx+78h]
                mov     [rax], rbp
                lea     rax, [rbx+48h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+38h]
                mov     word ptr [rbx+18h], 1
                mov     byte ptr [rbx+1Ah], 6
                mov     [rbx+1Ch], ebp
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rbx+30h], bp
                mov     byte ptr [rbx+32h], 6
                mov     [rbx+34h], ebp
                call    KeInitializeSpinLock
                lea     rax, [rbx+60h]
                mov     [rax+8], rax
                lea     rcx, [rdi+580h]
                mov     [rax], rbp
                mov     dword ptr [rbx+80h], 7
                call    InitializeSListHead
                lea     rcx, [rsp+28h+arg_0]
                call    KeQueryPerformanceCounter
                imul    rcx, [rsp+28h+arg_0], 2710h
                mov     rax, 431BDE82D7B634DBh
                mov     r9d, 8
                imul    rcx
                lea     rcx, [rdi+680h]
                mov     r8, rdi
                sar     rdx, 12h
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     [rdi+748h], edx
                lea     rdx, sub_1405995C0
                mov     [rcx+2], bp
                call    sub_1402B780C
                mov     rbx, [rsp+28h+arg_8]
                lea     rax, sub_1405995F0
                mov     [rdi+720h], rbp
                mov     [rdi+708h], rbp
                mov     rbp, [rsp+28h+arg_10]
                mov     [rdi+718h], rax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B46D0   endp

byte_1403B48BE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE714↑o

; =============== S U B R O U T I N E =======================================


sub_1403B48C4   proc near               ; CODE XREF: sub_140A4D90C+18A↓p
                                        ; DATA XREF: .rdata:00000001400A0EAC↑o ...

arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AACAC SIZE 00000019 BYTES

                mov     [rsp+arg_18], rbx
                push    rdi
                sub     rsp, 20h
                xor     r10d, r10d
                mov     r8, rcx
                mov     ecx, 1388h
                mov     [rsp+28h+arg_10], r10
                cmp     edx, ecx
                mov     [rsp+28h+arg_0], r10b
                mov     r9d, 2625Ah
                mov     eax, edx
                cmovbe  eax, ecx
                mov     ecx, cs:dword_140CFB0A8
                cmp     r8, r9
                mov     cs:dword_140CFC4C0, eax
                cmovb   r9d, r8d
                mov     cs:dword_140CFC418, r9d
                cmp     edx, ecx
                ja      loc_1404AACAC

loc_1403B4912:                          ; CODE XREF: sub_1403B48C4+F63F0↓j
                mov     rax, cs:qword_140CFB0E0
                cmp     r8, rax
                jnb     short loc_1403B4928
                mov     rax, r8
                mov     cs:qword_140CFB0E0, rax

loc_1403B4928:                          ; CODE XREF: sub_1403B48C4+58↑j
                mov     edx, ecx
                cmp     rax, rdx
                jb      loc_1404AACB9

loc_1403B4933:                          ; CODE XREF: sub_1403B48C4+F63FC↓j
                lea     r8, [rsp+28h+arg_8]
                mov     cs:dword_140C4C728, r9d
                mov     edx, r9d
                mov     [rsp+28h+arg_8], r10b
                mov     ecx, 1
                call    sub_140397FE8
                mov     cl, [rsp+28h+arg_8]
                neg     cl
                mov     cs:qword_140CFCAD0, rax
                mov     cs:byte_140CFC5BA, cl
                lea     rcx, [rsp+28h+arg_10]
                call    KeQueryPerformanceCounter
                mov     rbx, [rsp+28h+arg_10]
                lea     rdx, [rsp+28h+arg_0]
                mov     ecx, ebx
                mov     cs:qword_140CFC998, rbx
                mov     rdi, rax
                call    sub_140397FAC
                mov     rcx, rax
                xor     edx, edx
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_18]
                mov     ds:0FFFFF78000000300h, rax
                mov     rax, rcx
                mov     ds:0FFFFF78000000360h, rax
                mov     al, [rsp+28h+arg_0]
                mov     ds:0FFFFF78000000369h, al
                mov     rax, ds:0FFFFF78000000360h
                mov     ds:0FFFFF78000000358h, rax
                mov     al, ds:0FFFFF78000000369h
                mov     ds:0FFFFF78000000368h, al
                mov     rax, rdi
                mov     ds:0FFFFF78000000348h, rax
                mov     ds:0FFFFF78000000350h, rax
                mov     eax, 989680h
                div     cs:dword_140CFC418
                mov     cs:dword_140CFB238, eax
                mov     cs:dword_140C31F88, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B48C4   endp

byte_1403B4A15  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A0EAC↑o
                                        ; .pdata:00000001400DE720↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

sub_1403B4A1C   proc near               ; CODE XREF: sub_140A4E244+D3↓p
                                        ; DATA XREF: .pdata:00000001400DE72C↑o

var_130         = dword ptr -130h
var_128         = qword ptr -128h
var_120         = byte ptr -120h
var_11F         = byte ptr -11Fh
var_11C         = dword ptr -11Ch
var_118         = dword ptr -118h
var_114         = dword ptr -114h
var_110         = dword ptr -110h
var_10C         = dword ptr -10Ch
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F0          = byte ptr -0F0h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = byte ptr -80h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-50h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+50h+var_10], rax
                call    sub_1402B95B0
                cmp     cs:dword_140C02C60, 5
                mov     r10, [rax+428h]
                jbe     loc_1403B4BAF
                mov     eax, [r10+3E8h]
                lea     rdx, [r10+0ACh]
                and     [rbp+50h+var_C4], 0
                lea     rcx, [rbp+50h+var_80]
                and     [rbp+50h+var_B4], 0
                mov     ebx, 4
                and     [rbp+50h+var_A4], 0
                and     [rbp+50h+var_94], 0
                and     [rbp+50h+var_84], 0
                mov     [rsp+150h+var_11C], eax
                lea     r11d, [rbx-3]
                lea     rax, [rsp+150h+var_11C]
                mov     [rbp+50h+var_C8], ebx
                mov     [rbp+50h+var_D0], rax
                mov     eax, [r10+1B4h]
                mov     [rsp+150h+var_118], eax
                lea     rax, [rsp+150h+var_118]
                mov     [rbp+50h+var_C0], rax
                mov     eax, [r10+1B0h]
                mov     [rsp+150h+var_114], eax
                lea     rax, [rsp+150h+var_114]
                mov     [rbp+50h+var_B0], rax
                mov     al, byte ptr cs:dword_140CF4D0C
                mov     [rsp+150h+var_120], al
                lea     rax, [rsp+150h+var_120]
                mov     [rbp+50h+var_A0], rax
                mov     rax, [r10+3E0h]
                mov     [rsp+150h+var_100], rax
                lea     rax, [rsp+150h+var_100]
                mov     [rbp+50h+var_90], rax
                mov     [rbp+50h+var_B8], ebx
                mov     [rbp+50h+var_A8], ebx
                mov     [rbp+50h+var_98], r11d
                mov     [rbp+50h+var_88], 8
                call    sub_140209F78
                mov     cl, [r10+1ACh]
                lea     rax, [rsp+150h+var_11F]
                and     [rbp+50h+var_64], 0
                lea     rdx, word_14002D266
                and     [rbp+50h+var_54], 0
                xor     r9d, r9d
                and     [rbp+50h+var_44], 0
                xor     r8d, r8d
                and     [rbp+50h+var_34], 0
                and     [rbp+50h+var_24], 0
                and     [rbp+50h+var_14], 0
                mov     [rbp+50h+var_70], rax
                mov     eax, [r10]
                mov     [rsp+150h+var_110], eax
                lea     rax, [rsp+150h+var_110]
                mov     [rbp+50h+var_60], rax
                mov     eax, [r10+54h]
                mov     [rsp+150h+var_10C], eax
                lea     rax, [rsp+150h+var_10C]
                mov     [rbp+50h+var_50], rax
                mov     eax, [r10+0A8h]
                mov     [rsp+150h+var_108], eax
                lea     rax, [rsp+150h+var_108]
                mov     [rbp+50h+var_40], rax
                lea     rax, [r10+44h]
                mov     [rbp+50h+var_30], rax
                lea     rax, [r10+98h]
                mov     [rsp+150h+var_11F], cl
                lea     ecx, [rbx+0Ch]
                mov     [rbp+50h+var_20], rax
                lea     rax, [rsp+150h+var_F0]
                mov     [rbp+50h+var_28], ecx
                mov     [rbp+50h+var_18], ecx
                lea     rcx, dword_140C02C60
                mov     [rsp+150h+var_128], rax
                mov     [rsp+150h+var_130], 0Eh
                mov     [rbp+50h+var_68], r11d
                mov     [rbp+50h+var_58], ebx
                mov     [rbp+50h+var_48], ebx
                mov     [rbp+50h+var_38], ebx
                call    sub_140209DB8

loc_1403B4BAF:                          ; CODE XREF: sub_1403B4A1C+33↑j
                mov     rcx, [rbp+50h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+150h+arg_0]
                add     rsp, 150h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B4A1C
sub_1403B4A1C   endp

byte_1403B4BCD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE72C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B4BD4   proc near               ; CODE XREF: sub_14079E120+2A↓p
                                        ; DATA XREF: .pdata:00000001400DE738↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebx, ebx
                lea     r15, unk_140C13980
                mov     cs:word_140C13CE0, bx
                lea     r14, off_1400082B0 ; "SeCreateTokenPrivilege"
                mov     edi, ebx
                mov     rsi, r15

loc_1403B4C03:                          ; CODE XREF: sub_1403B4BD4+70↓j
                mov     rdx, [r14]
                lea     eax, [rdi+2]
                cdqe
                mov     dword ptr [rsp+38h+arg_0], eax
                shr     rax, 20h
                mov     dword ptr [rsp+38h+arg_0+4], eax
                mov     rax, [rsp+38h+arg_0]
                mov     [rsi+10h], rax
                mov     eax, edi
                lea     rcx, [rax+rax*2]
                lea     rcx, [r15+rcx*8]
                call    RtlInitUnicodeString
                movzx   eax, word ptr [rsi]
                cmp     bx, ax
                jb      short loc_1403B4C5D

loc_1403B4C37:                          ; CODE XREF: sub_1403B4BD4+93↓j
                inc     edi
                add     r14, 8
                add     rsi, 18h
                cmp     edi, 23h ; '#'
                jb      short loc_1403B4C03
                mov     rbx, [rsp+38h+arg_8]
                xor     eax, eax
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4C5D:                          ; CODE XREF: sub_1403B4BD4+61↑j
                movzx   ebx, ax
                mov     cs:word_140C13CE0, ax
                jmp     short loc_1403B4C37
sub_1403B4BD4   endp

; ---------------------------------------------------------------------------
algn_1403B4C69:                         ; DATA XREF: .pdata:00000001400DE738↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B4C70   proc near               ; CODE XREF: sub_14079E658+4E↓p
                                        ; DATA XREF: .pdata:00000001400DE744↑o
                mov     rdx, rcx
                mov     r8d, 1Fh
                lea     rcx, aDosdevicesA ; "\\DosDevices\\A:"
                sub     rcx, rdx
                xor     r9d, r9d

loc_1403B4C86:                          ; CODE XREF: sub_1403B4C70+36↓j
                lea     rax, [r8+7FFFFFDFh]
                test    rax, rax
                jz      short loc_1403B4CA8
                movzx   eax, word ptr [rcx+rdx]
                test    ax, ax
                jz      short loc_1403B4CA8
                mov     [rdx], ax
                add     rdx, 2
                sub     r8, 1
                jnz     short loc_1403B4C86

loc_1403B4CA8:                          ; CODE XREF: sub_1403B4C70+20↑j
                                        ; sub_1403B4C70+29↑j
                mov     rax, r8
                lea     rcx, [rdx-2]
                neg     rax
                sbb     eax, eax
                not     eax
                and     eax, 8007007Ah
                test    r8, r8
                cmovnz  rcx, rdx
                mov     [rcx], r9w
                retn
sub_1403B4C70   endp

; ---------------------------------------------------------------------------
                align 8
algn_1403B4CC8:                         ; DATA XREF: .pdata:00000001400DE744↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B4CD0   proc near               ; CODE XREF: sub_1404B5FE0+47↓p
                                        ; sub_140A3CC14+2C4↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AACC6 SIZE 000001F2 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                xor     ebx, ebx
                mov     dil, cl
                cmp     cs:byte_140CF4D70, bl
                jnz     loc_1404AACC6

loc_1403B4CF0:                          ; CODE XREF: sub_1403B4CD0+F6007↓j
                mov     cs:byte_140C0F3DE, bl
                test    dil, dil
                jnz     loc_1404AACDC
                call    InbvIsBootDriverInstalled
                test    al, al
                jnz     loc_1404AADC2
                call    sub_1403B4D28

loc_1403B4D11:                          ; CODE XREF: sub_1403B4CD0+F61C2↓j
                                        ; sub_1403B4CD0+F61E3↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4CD0   endp

algn_1403B4D22:                         ; DATA XREF: .rdata:00000001400A0FC0↑o
                                        ; .pdata:00000001400DE750↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B4D28   proc near               ; CODE XREF: sub_1403B4CD0+3C↑p
                                        ; sub_1404FF300+45↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403B4D49
                mov     rax, [rax+0A8h]
                test    rax, rax
                jz      short loc_1403B4D49
                call    sub_1404079D0

loc_1403B4D49:                          ; CODE XREF: sub_1403B4D28+E↑j
                                        ; sub_1403B4D28+1A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4D28   endp

algn_1403B4D4F:                         ; DATA XREF: .pdata:00000001400DE75C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B4D60   proc near               ; DATA XREF: .rdata:00000001400A1010↑o
                                        ; .pdata:00000001400DE768↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AAEB8 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, 1
                lea     rsi, unk_140C47080
                lea     rdi, qword_140C470A0

loc_1403B4D82:                          ; CODE XREF: sub_1403B4D60+55↓j
                cmp     qword ptr [rdi], 0
                jz      short loc_1403B4DA6
                call    InbvIsBootDriverInstalled
                test    al, al
                jnz     loc_1404AAEB8

loc_1403B4D95:                          ; CODE XREF: sub_1403B4D60+F616C↓j
                mov     rcx, [rdi]
                xor     edx, edx
                call    ExFreePoolWithTag
                and     qword ptr [rdi], 0
                and     dword ptr [rsi], 0

loc_1403B4DA6:                          ; CODE XREF: sub_1403B4D60+26↑j
                                        ; sub_1403B4D60+F615C↓j ...
                inc     rbx
                add     rdi, 8
                add     rsi, 4
                cmp     rbx, 7
                jb      short loc_1403B4D82
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4D60   endp

algn_1403B4DC8:                         ; DATA XREF: .rdata:00000001400A1010↑o
                                        ; .pdata:00000001400DE768↑o
                align 10h
; Exported entry 711. InbvIsBootDriverInstalled

; =============== S U B R O U T I N E =======================================


                public InbvIsBootDriverInstalled
InbvIsBootDriverInstalled proc near     ; CODE XREF: sub_1403B4CD0+2F↑p
                                        ; sub_1403B4D60+28↑p ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403B4DE9
                mov     rax, [rax+38h]
                test    rax, rax
                jnz     short loc_1403B4DF1

loc_1403B4DE9:                          ; CODE XREF: InbvIsBootDriverInstalled+E↑j
                xor     al, al

loc_1403B4DEB:                          ; CODE XREF: InbvIsBootDriverInstalled+26↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4DF1:                          ; CODE XREF: InbvIsBootDriverInstalled+17↑j
                call    sub_1404079D0
                jmp     short loc_1403B4DEB
InbvIsBootDriverInstalled endp

; ---------------------------------------------------------------------------
algn_1403B4DF8:                         ; DATA XREF: .pdata:00000001400DE774↑o
                align 20h
; Exported entry 613. HalEnumerateProcessors

; =============== S U B R O U T I N E =======================================


                public HalEnumerateProcessors
HalEnumerateProcessors proc near        ; CODE XREF: sub_1404F3604+100↓p
                                        ; sub_140A4F854+F0↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AAED2 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdx, gs:20h
                mov     edi, 1
                mov     rax, gs:20h
                mov     r11d, ecx
                mov     rcx, cs:qword_140C4BD28
                mov     ebx, edi
                mov     r10d, cs:dword_140C50780
                mov     r8d, [rax+98h]
                imul    r8d, [rdx+9Ch]
                mov     edx, edi
                mov     r9d, [rcx+8]
                sub     r8d, edi
                not     r8d
                and     r9d, r8d
                cmp     r10d, edi
                jbe     short loc_1403B4E74
                add     rcx, 48h ; 'H'

loc_1403B4E5B:                          ; CODE XREF: HalEnumerateProcessors+72↓j
                mov     eax, [rcx]
                and     eax, r8d
                cmp     r9d, eax
                jnz     loc_1404AAED2

loc_1403B4E69:                          ; CODE XREF: HalEnumerateProcessors+F60E0↓j
                add     ebx, edi
                add     rcx, 40h ; '@'
                cmp     ebx, r10d
                jb      short loc_1403B4E5B

loc_1403B4E74:                          ; CODE XREF: HalEnumerateProcessors+55↑j
                                        ; HalEnumerateProcessors+F60DA↓j
                mov     eax, cs:dword_140CF4D7C
                test    eax, eax
                jnz     short loc_1403B4EA3

loc_1403B4E7E:                          ; CODE XREF: HalEnumerateProcessors+A8↓j
                call    sub_14037B664
                sub     eax, edi
                cmp     eax, 3
                cmova   ebx, edi
                call    sub_1403A2364
                cmp     ebx, eax
                cmovnb  ebx, eax
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4EA3:                          ; CODE XREF: HalEnumerateProcessors+7C↑j
                cmp     eax, ebx
                cmovb   ebx, eax
                jmp     short loc_1403B4E7E
HalEnumerateProcessors endp

; ---------------------------------------------------------------------------
algn_1403B4EAA:                         ; DATA XREF: .rdata:00000001400A1124↑o
                                        ; .pdata:00000001400DE780↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0C70h

sub_1403B4EB0   proc near               ; CODE XREF: sub_140A4F854+2BB↓p
                                        ; DATA XREF: .rdata:00000001400A1158↑o ...

var_D48         = xmmword ptr -0D48h
var_D38         = xmmword ptr -0D38h
var_D28         = byte ptr -0D28h
var_D20         = qword ptr -0D20h
var_D18         = qword ptr -0D18h
var_D08         = qword ptr -0D08h
var_CF8         = qword ptr -0CF8h
var_CE8         = qword ptr -0CE8h
var_CE0         = dword ptr -0CE0h
var_20          = byte ptr -20h
arg_0           = dword ptr  10h

; FUNCTION CHUNK AT 00000001404AAEE6 SIZE 0000032C BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     [rax+8], ecx
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-0C78h]
                sub     rsp, 0D50h
                mov     r12d, cs:dword_140CFB020
                lea     rcx, [rsp+0D70h+var_D20]
                mov     ebx, 40h ; '@'
                xor     edx, edx
                mov     r8d, ebx
                call    memset
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jnz     loc_1404AAEE6
                xor     eax, eax

loc_1403B4F04:                          ; CODE XREF: sub_1403B4EB0+F635D↓j
                lea     r11, [rsp+0D70h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4EB0   endp

byte_1403B4F26  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1158↑o
                                        ; .pdata:00000001400DE78C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B4F2C   proc near               ; CODE XREF: sub_14099D840+350↓p
                                        ; sub_140A4E488:loc_140A4E7C9↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                xor     eax, eax
                xor     ecx, ecx
                cpuid
                cmp     eax, 7
                jb      short loc_1403B4F60
                xor     ecx, ecx
                mov     eax, 7
                cpuid
                bt      ebx, 0Bh
                jb      short loc_1403B4F76
                test    bl, 10h
                jnz     short loc_1403B4F76

loc_1403B4F60:                          ; CODE XREF: sub_1403B4F2C+1E↑j
                xor     eax, eax

loc_1403B4F62:                          ; CODE XREF: sub_1403B4F2C+4F↓j
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B4F76:                          ; CODE XREF: sub_1403B4F2C+2D↑j
                                        ; sub_1403B4F2C+32↑j
                mov     eax, 1
                jmp     short loc_1403B4F62
; } // starts at 1403B4F2C
sub_1403B4F2C   endp

; ---------------------------------------------------------------------------
byte_1403B4F7D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DE798↑o
; Exported entry 1195. KeInitializeThreadedDpc

; =============== S U B R O U T I N E =======================================


                public KeInitializeThreadedDpc
KeInitializeThreadedDpc proc near       ; CODE XREF: sub_1409A0900+73↓p
                                        ; DATA XREF: .pdata:00000001400DE7A4↑o
                xor     eax, eax
                mov     dword ptr [rcx], 11Ah
                mov     [rcx+38h], rax
                mov     [rcx+10h], rax
                mov     [rcx+18h], rdx
                mov     [rcx+20h], r8
                retn
KeInitializeThreadedDpc endp

; ---------------------------------------------------------------------------
                align 2
algn_1403B4FAA:                         ; DATA XREF: .pdata:00000001400DE7A4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B4FB0   proc near               ; CODE XREF: sub_140512540+4B↓p
                                        ; sub_140A4E488+6A↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001404AB212 SIZE 00000019 BYTES

                sub     rsp, 58h
                call    sub_1403B5034
                test    eax, eax
                js      short loc_1403B5027
                mov     rcx, cs:qword_140C32078
                lea     rax, sub_140512540
                and     cs:qword_140C32058, 0
                lea     r8, qword_140C32040
                and     cs:qword_140C32040, 0
                mov     r9d, 1
                mov     [rsp+58h+var_10], 1
                xor     edx, edx
                and     [rsp+58h+var_18], 0
                and     [rsp+58h+var_20], 0
                mov     cs:qword_140C32050, rax
                lea     rax, unk_140C32030
                mov     [rsp+58h+var_28], 0
                mov     [rsp+58h+var_30], 4
                mov     [rsp+58h+var_38], rax
                call    ZwNotifyChangeKey
                test    eax, eax
                js      loc_1404AB212

loc_1403B5027:                          ; CODE XREF: sub_1403B4FB0+B↑j
                                        ; sub_1403B4FB0+F6276↓j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B4FB0   endp

byte_1403B502D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1230↑o
                                        ; .pdata:00000001400DE7B0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5034   proc near               ; CODE XREF: sub_1403B4FB0+4↑p
                                        ; sub_140512540+9↓p ...

var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h

                sub     rsp, 58h
                xor     eax, eax
                cmp     cs:qword_140C32078, rax
                mov     [rsp+58h+var_34], eax
                mov     [rsp+58h+var_1C], eax
                jnz     short loc_1403B508B
                mov     [rsp+58h+var_30], rax
                lea     r8, [rsp+58h+var_38]
                lea     rax, qword_140005870
                mov     [rsp+58h+var_38], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_28], rax
                mov     edx, 11h
                mov     [rsp+58h+var_20], 240h
                lea     rcx, qword_140C32078
                movdqu  [rsp+58h+var_18], xmm0
                call    ZwOpenKey

loc_1403B508B:                          ; CODE XREF: sub_1403B5034+15↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5034   endp

algn_1403B5091:                         ; DATA XREF: .pdata:00000001400DE7BC↑o
                align 20h
; Exported entry 1276. KeReleaseGuardedMutexUnsafe

; =============== S U B R O U T I N E =======================================


                public KeReleaseGuardedMutexUnsafe
KeReleaseGuardedMutexUnsafe proc near   ; DATA XREF: .pdata:00000001400DE7C8↑o
                sub     rsp, 28h
                call    ExReleaseFastMutexUnsafe
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseGuardedMutexUnsafe endp

byte_1403B50AF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE7C8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B50B8   proc near               ; CODE XREF: sub_14079F4FC:loc_14079F5C0↓p
                                        ; sub_140A4EABC+25D↓p ...

var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_78          = qword ptr -78h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AB22C SIZE 000000FA BYTES

                mov     rax, rsp
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 88h
                xorps   xmm0, xmm0
                mov     r15, rcx
                mov     rbp, rcx
                shr     r15, 9
                mov     rcx, 7FFFFFFFF8h
                mov     rdi, rdx
                and     r15, rcx
                mov     rdx, 0FFFFF68000000000h
                movups  xmmword ptr [rax-80h], xmm0
                movups  xmmword ptr [rax-70h], xmm0
                movups  xmmword ptr [rax-60h], xmm0
                mov     rax, rdx
                add     r15, rax
                lea     r12, ds:0FFFFFFFFFFFFFFF8h[rdi*8]
                add     r12, rbp
                mov     [rsp+0C8h+var_88], r15
                shr     r12, 9
                mov     rsi, r15
                and     r12, rcx
                mov     rax, rdx
                add     r12, rax
                mov     ecx, 1
                mov     [rsp+0C8h+var_90], r12
                call    sub_1402A46FC
                mov     rcx, rax
                mov     [rsp+0C8h+var_98], rax
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                mov     r14b, al
                mov     r13, 3FFFFFFFFFFFFFFFh
                cmp     r15, r12
                ja      loc_1403B520D
                mov     rcx, r15
                mov     rbp, 0FFFFFA8000000000h
                mov     r15, 0FFFFFFFFFh
                mov     rdi, 7FFFFFFFFFFFFFFFh

loc_1403B5195:                          ; CODE XREF: sub_1403B50B8+13E↓j
                mov     rbx, [rsi]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1403B53F3

loc_1403B51A5:                          ; CODE XREF: sub_1403B50B8+345↓j
                                        ; sub_1403B50B8+362↓j ...
                shr     rbx, 0Ch
                and     rbx, r15
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, rbp
                add     rbx, rax
                and     [rsp+0C8h+arg_10], 0

loc_1403B51C2:                          ; CODE XREF: sub_1403B50B8+F61CC↓j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_1404AB26E
                mov     rdx, [rbx+18h]
                mov     rcx, rdx
                lea     rax, [rdx+1]
                xor     rcx, rax
                and     rcx, r13
                xor     rcx, rdx
                mov     [rbx+18h], rcx
                lock and [rbx+18h], rdi
                add     rsi, 8
                mov     rcx, rsi
                cmp     rsi, r12
                jbe     short loc_1403B5195
                mov     rdi, [rsp+0C8h+arg_8]
                mov     r15, [rsp+0C8h+var_88]
                mov     rbp, [rsp+0C8h+arg_0]

loc_1403B520D:                          ; CODE XREF: sub_1403B50B8+B6↑j
                mov     dl, r14b
                mov     r14, [rsp+0C8h+var_98]
                mov     rcx, r14
                call    sub_140234180
                lea     rax, [rsp+0C8h+var_80]
                mov     r9, rdi
                mov     [rsp+0C8h+var_A0], rax
                mov     r8, rbp
                xor     edx, edx
                mov     [rsp+0C8h+var_A8], 1
                mov     rcx, r14
                call    sub_1402DBE20
                mov     r13, gs:188h
                mov     [rsp+0C8h+arg_0], r13
                dec     word ptr [r13+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                mov     rcx, r14
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                mov     r12b, al
                cmp     r15, [rsp+0C8h+var_90]
                ja      loc_1403B5343
                mov     rdi, [rsp+0C8h+var_90]
                mov     rcx, r15
                mov     r13, 3FFFFFFFFFFFFFFFh

loc_1403B529D:                          ; CODE XREF: sub_1403B50B8+275↓j
                mov     rbx, [r15]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1403B5457

loc_1403B52AD:                          ; CODE XREF: sub_1403B50B8+3A9↓j
                                        ; sub_1403B50B8+3C6↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                and     [rsp+0C8h+arg_18], 0

loc_1403B52DE:                          ; CODE XREF: sub_1403B50B8+F6229↓j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_1404AB2CB
                mov     rdx, [rbx+18h]
                mov     rcx, rdx
                lea     rax, [rdx-1]
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     rcx, r13
                xor     rcx, rdx
                mov     [rbx+18h], rcx
                lock and [rbx+18h], rax
                mov     rax, [rbx+18h]
                and     rax, r13
                cmp     rax, 1
                jz      loc_1403B54BB

loc_1403B5323:                          ; CODE XREF: sub_1403B50B8+4FB↓j
                                        ; sub_1403B50B8+53B↓j ...
                add     r15, 8
                mov     rcx, r15
                cmp     r15, rdi
                jbe     loc_1403B529D
                mov     rdi, [rsp+0C8h+arg_8]
                mov     r13, [rsp+0C8h+arg_0]

loc_1403B5343:                          ; CODE XREF: sub_1403B50B8+1CD↑j
                mov     dl, r12b
                mov     rcx, r14
                call    sub_140234180
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, r13
                call    sub_14021E1F0
                mov     r9, gs:20h
                or      r10d, 0FFFFFFFFh
                mov     r8, rdi
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, r10d
                jz      loc_1403B560B
                lea     rcx, [rdi+rdx]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      loc_1403B5602

loc_1403B5395:                          ; CODE XREF: sub_1403B50B8+F6263↓j
                cmp     rdi, 80000h
                jnb     loc_1403B5602
                lea     ecx, [rdi+rdx]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jnz     loc_1404AB30B

loc_1403B53B9:                          ; CODE XREF: sub_1403B50B8+556↓j
                                        ; sub_1403B50B8+565↓j
                sub     rdi, [rsp+0C8h+var_78]
                lea     rcx, unk_140C50C00
                mov     rdx, rdi
                call    sub_14026B700
                mov     rax, cs:qword_140C4EE30
                sub     rax, rdi
                mov     cs:qword_140C4EE30, rax
                add     rsp, 88h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B53F3:                          ; CODE XREF: sub_1403B50B8+E7↑j
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_1403B51A5
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      loc_1403B51A5
                test    bl, 1
                jz      loc_1403B51A5
                test    bl, 20h
                jnz     loc_1404AB22C

loc_1403B5432:                          ; CODE XREF: sub_1403B50B8+F617D↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_1403B51A5
                jmp     loc_1404AB23A
; ---------------------------------------------------------------------------

loc_1403B5457:                          ; CODE XREF: sub_1403B50B8+1EF↑j
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_1403B52AD
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      loc_1403B52AD
                test    bl, 1
                jz      loc_1403B52AD
                test    bl, 20h
                jnz     loc_1404AB289

loc_1403B5496:                          ; CODE XREF: sub_1403B50B8+F61DA↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_1403B52AD
                jmp     loc_1404AB297
; ---------------------------------------------------------------------------

loc_1403B54BB:                          ; CODE XREF: sub_1403B50B8+265↑j
                mov     rax, 0FFFFF68000000000h
                mov     r14, rax
                shl     r14, 19h
                mov     rbx, r15
                shl     rbx, 19h
                sub     rbx, r14
                sar     rbx, 10h
                mov     rsi, rbx
                lea     rbp, [rbx+1000h]
                cmp     rbx, rbp
                jnb     short loc_1403B5510

loc_1403B54E9:                          ; CODE XREF: sub_1403B50B8+456↓j
                mov     rcx, rsi
                call    sub_1402805F0
                test    rax, 0C01h
                jnz     short loc_1403B5510
                mov     ecx, 3E0h
                test    rcx, rax
                jnz     loc_1404AB2E6

loc_1403B5507:                          ; CODE XREF: sub_1403B50B8+F623D↓j
                add     rsi, 8
                cmp     rsi, rbp
                jb      short loc_1403B54E9

loc_1403B5510:                          ; CODE XREF: sub_1403B50B8+42F↑j
                                        ; sub_1403B50B8+43F↑j ...
                cmp     rsi, rbp
                jnz     loc_1404AB301
                mov     r9d, cs:dword_140C4CB30
                mov     ebp, 3FFFFFF8h
                mov     rdx, qword ptr cs:PsLoadedModuleList
                add     r9, 0FFFh
                shl     rbx, 19h
                sub     rbx, r14
                mov     r10, 0FFFFF6FB40000000h
                sar     rbx, 10h
                and     r9, 0FFFFFFFFFFFFF000h

loc_1403B554F:                          ; CODE XREF: sub_1403B50B8+4F1↓j
                mov     ecx, [rdx+40h]
                mov     r8, [rdx+30h]
                dec     ecx
                add     rcx, r9
                add     rcx, r8
                cmp     r8, cs:qword_140CFC470
                jz      short loc_1403B557D
                cmp     r8, cs:qword_140CFC500
                jz      short loc_1403B557D
                mov     eax, cs:dword_140C4CACC
                shl     rax, 0Ch
                add     rcx, rax

loc_1403B557D:                          ; CODE XREF: sub_1403B50B8+4AD↑j
                                        ; sub_1403B50B8+4B6↑j
                shr     r8, 12h
                and     r8, rbp
                mov     rax, r10
                shr     rcx, 12h
                add     r8, rax
                and     rcx, rbp
                mov     rax, r10
                add     rcx, rax
                cmp     r15, r8
                jnb     short loc_1403B55F8

loc_1403B559C:                          ; CODE XREF: sub_1403B50B8+543↓j
                mov     rdx, [rdx]
                lea     rax, PsLoadedModuleList
                cmp     rdx, rax
                jnz     short loc_1403B554F

loc_1403B55AB:                          ; CODE XREF: sub_1403B50B8+F6244↓j
                mov     r14, [rsp+0C8h+var_98]
                test    rdx, rdx
                jz      loc_1403B5323
                mov     dl, r12b
                mov     rcx, r14
                call    sub_140234180
                mov     r8d, 0Ch
                lea     rdx, [rbx+200000h]
                mov     rcx, rbx
                call    sub_1402A4CDC
                mov     rcx, r14
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                mov     r12b, al
                jmp     loc_1403B5323
; ---------------------------------------------------------------------------

loc_1403B55F8:                          ; CODE XREF: sub_1403B50B8+4E2↑j
                cmp     r15, rcx
                ja      short loc_1403B559C
                jmp     loc_1404AB2FA
; ---------------------------------------------------------------------------

loc_1403B5602:                          ; CODE XREF: sub_1403B50B8+2D7↑j
                                        ; sub_1403B50B8+2E4↑j ...
                mov     ecx, 0C0h
                cmp     edx, ecx
                jg      short loc_1403B5622

loc_1403B560B:                          ; CODE XREF: sub_1403B50B8+2C4↑j
                                        ; sub_1403B50B8+56D↓j ...
                test    r8, r8
                jz      loc_1403B53B9
                lock xadd cs:qword_140C52800, r8
                jmp     loc_1403B53B9
; ---------------------------------------------------------------------------

loc_1403B5622:                          ; CODE XREF: sub_1403B50B8+551↑j
                cmp     edx, r10d
                jz      short loc_1403B560B
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_1403B560B
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                add     r8, rdi
                jmp     short loc_1403B560B
sub_1403B50B8   endp

; ---------------------------------------------------------------------------
algn_1403B5642:                         ; DATA XREF: .rdata:00000001400A12F0↑o
                                        ; .pdata:00000001400DE7D4↑o
                align 10h
; Exported entry 1092. KeAcquireGuardedMutexUnsafe

; =============== S U B R O U T I N E =======================================


                public KeAcquireGuardedMutexUnsafe
KeAcquireGuardedMutexUnsafe proc near   ; DATA XREF: .pdata:00000001400DE7E0↑o
                sub     rsp, 28h
                call    ExAcquireFastMutexUnsafe
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireGuardedMutexUnsafe endp

byte_1403B565F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE7E0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5668   proc near               ; CODE XREF: sub_1409AF718+42↓p
                                        ; sub_140A4E488+2E1↓p
                                        ; DATA XREF: ...
                cmp     cs:byte_140C0F428, 0
                jz      short locret_1403B56B9
                mov     r9, cs:qword_140CFC808
                lea     rdx, unk_140C00B20
                mov     cs:byte_140C50BC0, 1
                mov     r8d, 70h ; 'p'

loc_1403B568C:                          ; CODE XREF: sub_1403B5668+4F↓j
                mov     rax, [rdx]
                lea     rcx, byte_140C50BC0
                xor     rax, cs:qword_140CFCA10
                bswap   rax
                xor     rax, rcx
                mov     ecx, r9d
                ror     rax, cl
                xor     rax, r9
                mov     [rdx], rax
                lea     rdx, [rdx+8]
                add     r8d, 0FFFFFFFFh
                jnz     short loc_1403B568C

locret_1403B56B9:                       ; CODE XREF: sub_1403B5668+7↑j
                retn
sub_1403B5668   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403B56BB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400DE7EC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1403B56D0   proc near               ; DATA XREF: .pdata:00000001400DE7F8↑o
                                        ; RtlWalkFrameChain+91↑o ...

var_138         = dword ptr -138h
var_134         = byte ptr -134h
var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+158h+var_28], rax
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+158h+var_134]
                mov     r8d, 10Ch
                call    memset
                mov     rsi, gs:188h
                mov     edx, 1Fh
                mov     rcx, rsi
                call    KeSetPriorityThread
                lock bts dword ptr [rsi+78h], 8
                mov     ecx, [rdi+24h]
                xor     edx, edx
                call    sub_1403B5934
                mov     byte ptr [rdi+3128h], 1
                lea     rbx, [rdi+312Eh]

loc_1403B5740:                          ; CODE XREF: sub_1403B56D0+E9↓j
                and     [rsp+158h+var_138], 0
                lea     rcx, [rdi+7B80h]
                mov     edx, 5
                call    sub_1403245A8
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]

loc_1403B5766:                          ; CODE XREF: sub_1403B56D0+D9↓j
                mov     eax, 1
                xchg    ax, [rbx]
                cmp     cs:dword_140CFC554, 0
                jnz     short loc_1403B57BB

loc_1403B5777:                          ; CODE XREF: sub_1403B56D0+EE↓j
                cli
                mov     r9d, 1
                lea     r8, [rsp+158h+var_138]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402C1360
                sti
                cmp     cs:dword_140CFC554, 0
                jnz     short loc_1403B57C0

loc_1403B5798:                          ; CODE XREF: sub_1403B56D0+F3↓j
                lea     rdx, [rdi+30E8h]
                mov     rcx, rbx
                call    sub_14035D908
                test    al, al
                jz      short loc_1403B5766
                mov     rcx, gs:188h
                call    sub_140245770
                jmp     short loc_1403B5740
; ---------------------------------------------------------------------------

loc_1403B57BB:                          ; CODE XREF: sub_1403B56D0+A5↑j
                clac
                jmp     short loc_1403B5777
; ---------------------------------------------------------------------------

loc_1403B57C0:                          ; CODE XREF: sub_1403B56D0+C6↑j
                stac
                jmp     short loc_1403B5798
; } // starts at 1403B56D0
sub_1403B56D0   endp

; ---------------------------------------------------------------------------
byte_1403B57C5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE7F8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B57CC   proc near               ; CODE XREF: sub_140A4E488:loc_140A4E6E6↓p
                                        ; DATA XREF: .rdata:00000001400A1390↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AB326 SIZE 00000069 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbp
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                mov     rax, cs:qword_140CFC630
                xorps   xmm0, xmm0
                mov     r14d, 1
                movups  [rsp+48h+var_28], xmm0
                test    al, 3
                jnz     loc_1404AB326
                and     cs:dword_140CFC588, 0

loc_1403B5814:                          ; CODE XREF: sub_1403B57CC+F5B88↓j
                mov     eax, cs:dword_140CFC404
                xor     ebp, ebp
                xor     sil, sil
                xor     edi, edi
                test    eax, eax
                jz      short loc_1403B587C

loc_1403B5825:                          ; CODE XREF: sub_1403B57CC+AE↓j
                mov     ecx, edi
                test    ebp, ebp
                jz      loc_1403B5919
                xor     edx, edx
                call    sub_1403B5934

loc_1403B5836:                          ; CODE XREF: sub_1403B57CC+15A↓j
                mov     eax, cs:dword_140CFC404
                sub     eax, r14d
                movzx   esi, sil
                cmp     edi, eax
                cmovz   esi, r14d
                test    byte ptr cs:qword_140CFC630, 3
                jnz     loc_1404AB359

loc_1403B5856:                          ; CODE XREF: sub_1403B57CC+F5B97↓j
                mov     cl, sil
                call    sub_140A4F1B0
                test    cs:qword_140CFC458, 400000h
                jnz     loc_1404AB36E

loc_1403B586F:                          ; CODE XREF: sub_1403B57CC+F5BBE↓j
                mov     eax, cs:dword_140CFC404
                add     edi, r14d
                cmp     edi, eax
                jb      short loc_1403B5825

loc_1403B587C:                          ; CODE XREF: sub_1403B57CC+57↑j
                mov     rax, gs:20h
                cmp     byte ptr [rax+8Dh], 2
                jnz     short loc_1403B58A3
                mov     ecx, 1A0h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     cs:qword_140CFCB00, rax

loc_1403B58A3:                          ; CODE XREF: sub_1403B57CC+C0↑j
                test    ebp, ebp
                jz      short loc_1403B58B1
                lea     rcx, [rsp+48h+var_28]
                call    KeRevertToUserGroupAffinityThread

loc_1403B58B1:                          ; CODE XREF: sub_1403B57CC+D9↑j
                and     cs:qword_140C2AEC8, 0
                lea     rcx, qword_140C2AEE0
                and     cs:dword_140C2AED0, 0
                mov     al, r14b
                and     cs:dword_140C2AEDC, 0
                mov     cs:qword_140C2AEE8, rcx
                mov     cs:qword_140C2AEE0, rcx
                mov     cs:dword_140C2AEC0, r14d
                mov     cs:word_140C2AED8, r14w
                mov     cs:byte_140C2AEDA, 6

loc_1403B58F5:                          ; CODE XREF: sub_1403B57CC+F5B9D↓j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbp, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B5919:                          ; CODE XREF: sub_1403B57CC+5D↑j
                lea     rdx, [rsp+48h+var_28]
                call    sub_1403B5934
                mov     ebp, r14d
                jmp     loc_1403B5836
; } // starts at 1403B57CC
sub_1403B57CC   endp

; ---------------------------------------------------------------------------
byte_1403B592B  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1390↑o
                                        ; .pdata:00000001400DE804↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5934   proc near               ; CODE XREF: sub_1403B56D0+5D↑p
                                        ; sub_1403B57CC+65↑p ...

var_18          = xmmword ptr -18h

                sub     rsp, 38h
                mov     eax, ecx
                xorps   xmm0, xmm0
                movups  [rsp+38h+var_18], xmm0
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                mov     eax, ecx
                shr     eax, 6
                and     ecx, 3Fh
                mov     word ptr [rsp+38h+var_18+8], ax
                mov     eax, 1
                shl     rax, cl
                lea     rcx, [rsp+38h+var_18]
                mov     qword ptr [rsp+38h+var_18], rax
                call    KeSetSystemGroupAffinityThread
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5934   endp

byte_1403B5976  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE810↑o

; =============== S U B R O U T I N E =======================================


sub_1403B597C   proc near               ; CODE XREF: sub_14099EB00+743↓p
                                        ; DATA XREF: .pdata:00000001400DE81C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     al, byte ptr cs:dword_140CFB020
                lea     rdi, unk_140D25440
                or      cs:byte_140D254F5, 2
                mov     rbx, rcx
                or      cs:qword_140D254E0, 1
                mov     rcx, rdi
                mov     cs:byte_140D254F4, al
                mov     cs:qword_140D23380, rdi
                call    sub_1403B5E1C
                mov     [rbx+0C0h], rdi
                xor     edx, edx
                or      cs:qword_140D25490, 1
                mov     rcx, rbx
                mov     byte ptr [rbx+23h], 1
                call    sub_1403B5A18
                mov     eax, 1
                lea     rdx, unk_140D23388
                lea     rcx, unk_140D2FFC0

loc_1403B59EA:                          ; CODE XREF: sub_1403B597C+88↓j
                mov     [rdx], rcx
                lea     rdx, [rdx+8]
                mov     [rcx+92h], ax
                inc     eax
                add     rcx, 180h
                cmp     eax, 40h ; '@'
                jb      short loc_1403B59EA
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B597C   endp

algn_1403B5A12:                         ; DATA XREF: .pdata:00000001400DE81C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B5A18   proc near               ; CODE XREF: sub_1403B597C+56↑p
                                        ; sub_14079FA20+20A↓p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AB390 SIZE 00000033 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rbp, [rcx+0C0h]
                lea     rax, qword_140CFDA80
                mov     r14d, edx
                mov     rbx, rcx
                movzx   r8d, word ptr [rbp+90h]
                shl     r8, 4
                add     r8, rax
                mov     rdi, [r8]
                inc     rdi
                bsr     rsi, rdi
                mov     [rcx+0C8h], rdi
                mov     al, [rbp+90h]
                mov     [rcx+0D1h], sil
                mov     [rcx+0D0h], al
                or      [r8], rdi
                cmp     cs:byte_140CFC47E, 0
                jnz     loc_1404AB390
                cmp     byte ptr [rcx+0D0h], 0
                jnz     loc_1404AB3AC
                mov     [rcx+4], sil

loc_1403B5A92:                          ; CODE XREF: sub_1403B5A18+F5985↓j
                                        ; sub_1403B5A18+F598F↓j ...
                movzx   eax, byte ptr [rbx+0D0h]
                lea     rdx, cs:140000000h
                mov     ecx, [rbx+24h]
                shl     eax, 6
                add     eax, esi
                mov     ds:rva dword_140D010D0[rdx+rcx*4], eax
                mov     ds:rva dword_140D024D0[rdx+rax*4], ecx
                lea     rax, [rbp+0C0h]
                mov     ecx, 5

loc_1403B5AC2:                          ; CODE XREF: sub_1403B5A18+C2↓j
                test    r14d, r14d
                jnz     short loc_1403B5ACE
                or      [rax-8], rdi
                or      [rax], rdi

loc_1403B5ACE:                          ; CODE XREF: sub_1403B5A18+AD↑j
                or      [rax+8], rdi
                add     rax, 18h
                sub     rcx, 1
                jnz     short loc_1403B5AC2
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5A18   endp

byte_1403B5AF0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A15E0↑o
                                        ; .pdata:00000001400DE828↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5AF8   proc near               ; CODE XREF: sub_1409A0F8C+63↓p
                                        ; DATA XREF: .pdata:00000001400DE834↑o
                lea     r9, [rdx+1024h]
                mov     r10d, 7
                lea     r8, [rdx+43D0h]

loc_1403B5B0C:                          ; CODE XREF: sub_1403B5AF8+43↓j
                mov     rdx, [r9]
                test    rdx, rdx
                jz      short loc_1403B5B2C
                add     rdx, 0FFFFFFFFFFFFFFE0h
                lea     rax, [rcx-180h]
                mov     [r8], rax
                mov     [r8+8], rdx
                mov     [rdx], r8
                mov     [r9], r8

loc_1403B5B2C:                          ; CODE XREF: sub_1403B5AF8+1A↑j
                add     r8, 200h
                add     r9, 8
                sub     r10, 1
                jnz     short loc_1403B5B0C
                retn
sub_1403B5AF8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403B5B3F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE834↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5B48   proc near               ; CODE XREF: sub_1409A0F8C:loc_1409A0FBD↓p
                                        ; DATA XREF: .pdata:00000001400DE840↑o
                mov     eax, cs:dword_140C2B204
                shr     eax, 4
                and     al, 1
                retn
sub_1403B5B48   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403B5B55  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE840↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5B5C   proc near               ; CODE XREF: sub_1409A0F8C+C↓p
                                        ; DATA XREF: .pdata:00000001400DE84C↑o
                mov     eax, cs:dword_140C2B200
                shr     eax, 1
                and     al, 1
                retn
sub_1403B5B5C   endp

; ---------------------------------------------------------------------------
                align 8
algn_1403B5B68:                         ; DATA XREF: .pdata:00000001400DE84C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B5B70   proc near               ; CODE XREF: sub_14079FD4C+9B↓p
                                        ; DATA XREF: .pdata:00000001400DE858↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                xor     r8d, r8d
                mov     r11, 0FFFFF68000000000h
                mov     r9d, r8d
                mov     r10, rcx
                mov     rbx, 7FFFFFFFF8h

loc_1403B5B92:                          ; CODE XREF: sub_1403B5B70+59↓j
                shr     r10, 9
                and     r10, rbx
                mov     rax, r11
                shr     rdx, 9
                add     r10, rax
                and     rdx, rbx
                mov     rax, r11
                add     rdx, rax
                cmp     r9d, 1
                jl      short loc_1403B5BC2
                mov     rcx, rdx
                inc     r8
                sub     rcx, r10
                sar     rcx, 3
                add     r8, rcx

loc_1403B5BC2:                          ; CODE XREF: sub_1403B5B70+40↑j
                inc     r9d
                cmp     r9d, 3
                jle     short loc_1403B5B92
                mov     rbx, [rsp+arg_0]
                mov     rax, r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5B70   endp

byte_1403B5BD5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE858↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5BDC   proc near               ; CODE XREF: sub_1408BBF18+EF↓p
                                        ; sub_140A4F854+2F4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AB3C4 SIZE 000000B6 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, cs:dword_140CFC404
                lea     r14, cs:140000000h
                mov     esi, ecx
                mov     rbx, r8
                mov     r15, rdx
                cmp     ecx, eax
                jb      loc_1404AB3C4
                mov     rax, cs:qword_140C313E8
                xor     r12d, r12d
                movzx   ebp, word ptr [r8]
                mov     edi, 0C0000225h
                test    rax, rax
                jz      loc_1404AB418
                mov     ecx, esi
                call    sub_1404079D0
                mov     r10d, eax
                test    eax, eax
                jnz     loc_1404AB3E8
                mov     eax, 0FFFFh
                cmp     [rbx], ax
                jnz     short loc_1403B5C5E
                mov     rcx, rbx
                call    sub_1403B5CBC
                mov     r10d, eax

loc_1403B5C59:                          ; CODE XREF: sub_1403B5BDC+F580E↓j
                                        ; sub_1403B5BDC+F584B↓j
                test    r10d, r10d
                jnz     short loc_1403B5C93

loc_1403B5C5E:                          ; CODE XREF: sub_1403B5BDC+70↑j
                movzx   eax, word ptr [rbx]
                mov     bl, 2
                mov     rcx, ds:rva qword_140D23380[r14+rax*8]
                test    [rcx+0B5h], bl
                mov     ecx, [r15]
                cmovz   r10d, edi
                or      r11d, 0FFFFFFFFh
                cmp     ecx, r11d
                jz      loc_1404AB42C

loc_1403B5C85:                          ; CODE XREF: sub_1403B5BDC+F585E↓j
                                        ; sub_1403B5BDC+F5871↓j ...
                mov     eax, cs:dword_140CFC40C
                test    bl, al
                jnz     loc_1404AB45E

loc_1403B5C93:                          ; CODE XREF: sub_1403B5BDC+80↑j
                                        ; sub_1403B5BDC+F581C↓j ...
                mov     eax, r10d

loc_1403B5C96:                          ; CODE XREF: sub_1403B5BDC+F5807↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5BDC   endp

byte_1403B5CB6  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A16D4↑o
                                        ; .pdata:00000001400DE864↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5CBC   proc near               ; CODE XREF: sub_1403B5BDC+75↑p
                                        ; DATA XREF: .rdata:00000001400A16F0↑o ...

; FUNCTION CHUNK AT 00000001404AB47A SIZE 00000013 BYTES

                push    rbx
                sub     rsp, 20h
                movzx   r10d, cs:word_140CFB000
                xor     ebx, ebx
                mov     r11, rcx
                movzx   r9d, bx
                cmp     bx, r10w
                jnb     short loc_1403B5D0F

loc_1403B5CD9:                          ; CODE XREF: sub_1403B5CBC+F57C6↓j
                movzx   eax, r9w
                lea     rcx, qword_140D23380
                mov     rcx, [rcx+rax*8]
                test    byte ptr [rcx+0B5h], 2
                jz      loc_1404AB47A
                call    sub_1403B5D1C
                test    al, al
                jnz     loc_1404AB47A
                mov     [r11], r9w
                xor     eax, eax

loc_1403B5D08:                          ; CODE XREF: sub_1403B5CBC+58↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B5D0F:                          ; CODE XREF: sub_1403B5CBC+1B↑j
                                        ; sub_1403B5CBC+F57CC↓j
                mov     eax, 0C0000225h
                jmp     short loc_1403B5D08
sub_1403B5CBC   endp

; ---------------------------------------------------------------------------
byte_1403B5D16  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A16F0↑o
                                        ; .pdata:00000001400DE870↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5D1C   proc near               ; CODE XREF: sub_1403B5CBC+39↑p
                                        ; sub_1403B5BDC+F582A↓p
                                        ; DATA XREF: ...
                mov     rdx, [rcx+88h]
                mov     r8, rcx
                mov     rax, rdx
                mov     rcx, 5555555555555555h
                shr     rax, 1
                and     rax, rcx
                mov     rcx, 3333333333333333h
                sub     rdx, rax
                mov     rax, rdx
                and     rdx, rcx
                shr     rax, 2
                and     rax, rcx
                add     rax, rdx
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                mov     rax, 0F0F0F0F0F0F0F0Fh
                and     rcx, rax
                mov     rax, 101010101010101h
                imul    rcx, rax
                shr     rcx, 38h
                cmp     cl, [r8+0B4h]
                setz    al
                retn
sub_1403B5D1C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403B5D8B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE87C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5D94   proc near               ; CODE XREF: sub_1407A0008+1F5↓p
                                        ; DATA XREF: .rdata:00000001400A1710↑o ...

var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AB48E SIZE 00000067 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 50h
                and     [rsp+58h+var_34], 0
                lea     rdi, unk_140C4E0FC
                mov     rbx, rcx
                lea     rdx, [r11-28h]
                xor     eax, eax
                shr     ebx, 3
                xorps   xmm0, xmm0
                lea     rcx, qword_140C4ECC0
                movups  [rsp+58h+var_28], xmm0
                mov     [r11-18h], rax
                and     ebx, 1FFh
                mov     eax, 100h
                mov     [rsp+58h+var_38], eax
                sub     ebx, eax
                mov     [r11-30h], rdi
                call    KeAcquireInStackQueuedSpinLock
                bts     [rdi], ebx
                lea     rcx, [rsp+58h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_1404AB48E

loc_1403B5E05:                          ; CODE XREF: sub_1403B5D94+F56FC↓j
                                        ; sub_1403B5D94+F5708↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5D94   endp

byte_1403B5E15  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1710↑o
                                        ; .pdata:00000001400DE888↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5E1C   proc near               ; CODE XREF: sub_1403B597C+39↑p
                                        ; sub_14079FA20+B56F9↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AB4F6 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                movzx   ebx, word ptr [rcx+90h]
                xor     edx, edx
                movzx   ecx, cs:word_140CFB000
                movzx   eax, cs:word_140C50BD4
                lea     edi, [rdx+1]
                cmp     dx, cx
                jnb     short loc_1403B5EA6
                lea     rdx, qword_140D23380
                mov     r10d, ecx
                mov     r8, rdx
                mov     r11d, ecx

loc_1403B5E55:                          ; CODE XREF: sub_1403B5E1C+6B↓j
                mov     rcx, [r8]
                mov     r9b, [rcx+0B5h]
                test    r9b, 2
                jz      short loc_1403B5E80
                cmp     [rcx+90h], bx
                jnz     short loc_1403B5E80
                or      r9b, 4
                mov     [rcx+90h], ax
                mov     [rcx+0B5h], r9b

loc_1403B5E80:                          ; CODE XREF: sub_1403B5E1C+47↑j
                                        ; sub_1403B5E1C+50↑j
                add     r8, 8
                sub     r11, rdi
                jnz     short loc_1403B5E55

loc_1403B5E89:                          ; CODE XREF: sub_1403B5E1C+88↓j
                mov     rcx, [rdx]
                mov     r8b, [rcx+0B5h]
                test    r8b, 4
                jz      loc_1404AB4F6

loc_1403B5E9D:                          ; CODE XREF: sub_1403B5E1C+F56DE↓j
                                        ; sub_1403B5E1C+F56EB↓j ...
                add     rdx, 8
                sub     r10, rdi
                jnz     short loc_1403B5E89

loc_1403B5EA6:                          ; CODE XREF: sub_1403B5E1C+27↑j
                mov     rbx, [rsp+arg_0]
                add     ax, di
                mov     rdi, [rsp+arg_8]
                mov     cs:word_140C50BD4, ax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B5E1C   endp

byte_1403B5EBC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1768↑o
                                        ; .pdata:00000001400DE894↑o

; =============== S U B R O U T I N E =======================================


sub_1403B5EC4   proc near               ; CODE XREF: sub_140A4F6FC+DF↓p
                                        ; sub_140A504B0+170↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r14
                sub     rsp, 20h
                lea     rax, qword_140C4E038
                mov     rdi, r8
                mov     rbx, rcx
                cmp     rcx, rax
                jz      loc_1403B5FEB

loc_1403B5EF3:                          ; CODE XREF: sub_1403B5EC4+12E↓j
                and     qword ptr [rcx+40h], 0
                mov     [rcx+20h], rdx
                mov     ecx, 1
                shr     rdi, 15h
                call    sub_1402D2900
                and     eax, 7FFFh
                lea     r14, qword_140C4DF18
                mov     [rbx+18h], rax
                mov     ebp, 0FFFh
                cmp     rbx, r14
                jz      loc_1403B5FF7

loc_1403B5F28:                          ; CODE XREF: sub_1403B5EC4+13A↓j
                test    dil, 3Fh
                mov     [rbx+10h], rdi
                mov     ecx, 0
                mov     r12, 0FFFFF68000000000h
                setnz   cl
                mov     rax, rdi
                shr     rax, 6
                mov     r9d, 1
                add     rcx, rax
                mov     eax, 0
                shl     rcx, 3
                test    rbp, rcx
                setnz   al
                shr     rcx, 0Ch
                add     rax, rcx
                cmp     rbx, r14
                jz      loc_1403B6003

loc_1403B5F71:                          ; CODE XREF: sub_1403B5EC4+146↓j
                mov     edx, eax
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     rdx, rax
                test    rax, rax
                jz      loc_1403B6035
                mov     r9d, 3

loc_1403B5F91:                          ; CODE XREF: sub_1403B5EC4+163↓j
                shl     rdx, 19h
                mov     rax, r12
                shl     rax, 19h
                mov     r8, rdi
                sub     rdx, rax
                mov     rcx, rbx
                sar     rdx, 10h
                call    sub_14078566C
                and     qword ptr [rbx], 0
                mov     ecx, 1
                call    sub_1402D2900
                and     eax, 7FFFh
                mov     [rbx+18h], rax
                cmp     rbx, r14
                jz      short loc_1403B602C

loc_1403B5FCA:                          ; CODE XREF: sub_1403B5EC4+16F↓j
                mov     eax, 1

loc_1403B5FCF:                          ; CODE XREF: sub_1403B5EC4:loc_1403B6035↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     r12, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B5FEB:                          ; CODE XREF: sub_1403B5EC4+29↑j
                mov     cs:qword_140C4DEC8, rdi
                jmp     loc_1403B5EF3
; ---------------------------------------------------------------------------

loc_1403B5FF7:                          ; CODE XREF: sub_1403B5EC4+5E↑j
                and     rax, rbp
                mov     [rbx+18h], rax
                jmp     loc_1403B5F28
; ---------------------------------------------------------------------------

loc_1403B6003:                          ; CODE XREF: sub_1403B5EC4+A7↑j
                mov     rdx, [rbx+8]
                test    rdx, rdx
                jz      loc_1403B5F71
                shr     rdx, 9
                mov     rax, 7FFFFFFFF8h
                and     rdx, rax
                mov     rax, r12
                add     rdx, rax
                jmp     loc_1403B5F91
; ---------------------------------------------------------------------------

loc_1403B602C:                          ; CODE XREF: sub_1403B5EC4+104↑j
                and     rax, rbp
                mov     [rbx+18h], rax
                jmp     short loc_1403B5FCA
; ---------------------------------------------------------------------------

loc_1403B6035:                          ; CODE XREF: sub_1403B5EC4+C1↑j
                jmp     short loc_1403B5FCF
sub_1403B5EC4   endp

; ---------------------------------------------------------------------------
algn_1403B6037:                         ; DATA XREF: .pdata:00000001400DE8A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B6040   proc near               ; CODE XREF: sub_14052EC08:loc_14052ECD5↓p
                                        ; sub_140A50688:loc_140A508CD↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404AB51A SIZE 00000067 BYTES

                push    rbx
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     eax, eax
                lea     rcx, unk_140C51F40
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, cs:qword_140C4EDB0
                cmp     rcx, cs:qword_140C52710
                cmova   rcx, cs:qword_140C52710
                mov     cs:qword_140C4C740, rcx
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404AB51A

loc_1403B60A0:                          ; CODE XREF: sub_1403B6040+F54DC↓j
                                        ; sub_1403B6040+F54E8↓j ...
                mov     cr8, rbx
                call    sub_1403B60B8
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6040   endp

byte_1403B60B0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1810↑o
                                        ; .pdata:00000001400DE8AC↑o

; =============== S U B R O U T I N E =======================================


sub_1403B60B8   proc near               ; CODE XREF: sub_1403B6040+64↑p
                                        ; sub_1407A0374+C3↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AB582 SIZE 00000096 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     eax, eax
                lea     rcx, unk_140C51F40
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, cs:qword_140C50D10
                test    rcx, rcx
                jz      short loc_1403B613E
                mov     rdi, cs:qword_140C4C740
                mov     rbx, cs:qword_140C4C748
                lea     rax, [rdi-1400h]
                cmp     rbx, rax
                jnb     loc_1404AB582
                cmp     dword ptr [rcx+4], 0
                jnz     short loc_1403B611C
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1403B611C:                          ; CODE XREF: sub_1403B60B8+58↑j
                                        ; sub_1403B60B8+F54CE↓j ...
                mov     rcx, cs:qword_140C50D08
                lea     rax, [rdi-800h]
                cmp     rbx, rax
                jnb     loc_1404AB597
                cmp     dword ptr [rcx+4], 0
                jz      short loc_1403B613E
                call    KeResetEvent

loc_1403B613E:                          ; CODE XREF: sub_1403B60B8+34↑j
                                        ; sub_1403B60B8+7F↑j ...
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                mov     bl, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404AB5B1

loc_1403B615A:                          ; CODE XREF: sub_1403B60B8+F54FB↓j
                                        ; sub_1403B60B8+F5507↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B60B8   endp

byte_1403B616D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1830↑o
                                        ; .pdata:00000001400DE8B8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6174   proc near               ; CODE XREF: sub_1403BD1D0+F03E6↓p
                                        ; sub_140A50688+240↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                test    rdx, rdx
                jz      locret_1403B637B
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r8, rcx
                xor     r13d, r13d
                mov     ecx, 80h
                call    sub_14027C6C0
                lea     rsi, [r8+r8*2]
                mov     rdi, rax
                shl     rsi, 4
                mov     rax, 0FFFFFA8000000000h
                add     rsi, rax
                lea     r15, [rdx+rdx*2]
                shl     r15, 4
                mov     ebp, r13d
                add     r15, rsi
                or      ebx, 0FFFFFFFFh

loc_1403B61D2:                          ; CODE XREF: sub_1403B6174+1DB↓j
                mov     rcx, 0FFFFFA8000000023h
                mov     r12, rsi
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     r12, rcx
                add     r12, 23h ; '#'
                imul    r12
                mov     r14, rdx
                sar     r14, 3
                mov     rax, r14
                shr     rax, 3Fh
                add     r14, rax
                mov     rcx, r14
                call    sub_14027DEC0
                mov     eax, [rax+8]
                cmp     ebx, eax
                jz      short loc_1403B6230
                test    rbp, rbp
                jz      short loc_1403B6225
                xor     edx, edx
                mov     rcx, rbp
                call    sub_14032C7B4
                mov     rbp, r13

loc_1403B6225:                          ; CODE XREF: sub_1403B6174+A2↑j
                mov     rcx, r14
                call    sub_14027DEC0
                mov     ebx, [rax+8]

loc_1403B6230:                          ; CODE XREF: sub_1403B6174+9D↑j
                mov     rcx, rsi
                call    sub_1402DAA00
                mov     cl, [rsi+22h]
                and     cl, 0C7h
                movzx   r14d, al
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     [rsi+28h], rax
                mov     [rsi+22h], cl
                mov     cl, [rsi+23h]
                and     cl, 0DFh
                mov     [rsi+23h], cl
                mov     rax, 0FFFFFA8000000020h
                mov     [r12+rax], r13w
                mov     rax, 0C000000000000000h
                and     [rsi+18h], rax
                mov     rax, 0FFFFFA8000000010h
                mov     [r12+rax], rdi
                mov     rax, 8FFFFFFFFFFFFFFFh
                and     [rsi+28h], rax
                mov     al, cl
                mov     cl, [rsi+22h]
                or      al, 10h
                mov     [rsi+23h], al
                mov     rax, 0FFFFFFF000000000h
                and     [rsi+28h], rax
                mov     al, cl
                and     al, 0C0h
                cmp     al, 40h ; '@'
                jz      short loc_1403B62C9
                mov     edx, 1
                mov     rcx, rsi
                lea     r8d, [rdx+2]
                call    sub_14031F848
                mov     cl, [rsi+22h]

loc_1403B62C9:                          ; CODE XREF: sub_1403B6174+13F↑j
                and     cl, 0FDh
                mov     qword ptr [rsi+8], 0FFFFFFFFFFFFFFF8h
                or      cl, 5
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rsi+22h], cl
                lock and [rsi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1403B633E
                test    al, 1
                jz      short loc_1403B633E
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1403B633E
                cmp     r14b, 0Fh
                ja      short loc_1403B633E
                cmp     al, 2
                jb      short loc_1403B633E
                mov     r10, gs:20h
                lea     ecx, [r14+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1403B633E
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1403B633E:                          ; CODE XREF: sub_1403B6174+17D↑j
                                        ; sub_1403B6174+181↑j ...
                mov     cr8, r14
                mov     [rsi], rbp
                mov     rbp, rsi
                add     rsi, 30h ; '0'
                cmp     rsi, r15
                jb      loc_1403B61D2
                xor     edx, edx
                mov     rcx, rbp
                call    sub_14032C7B4
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi

locret_1403B637B:                       ; CODE XREF: sub_1403B6174+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6174   endp

byte_1403B637D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE8C4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6384   proc near               ; CODE XREF: sub_1407A02C8+26↓p
                                        ; DATA XREF: .pdata:00000001400DE8D0↑o
                sub     rsp, 28h
                mov     r8, rcx
                mov     [rcx+10h], rdx
                shr     rcx, 9
                mov     rax, 7FFFFFFFF8h
                and     rcx, rax
                sub     rcx, rdx
                mov     rax, 0FFFFF68000000000h
                add     rcx, rax
                sar     rcx, 3
                shl     rcx, 1Ch
                call    sub_14027C6C0
                mov     [r8], rax
                mov     [r8+8], rax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6384   endp

algn_1403B63CA:                         ; DATA XREF: .pdata:00000001400DE8D0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B63D0   proc near               ; CODE XREF: sub_14079F7D4:loc_14079F8CC↓p
                                        ; DATA XREF: .pdata:00000001400DE8DC↑o
                lea     rax, qword_140C31B70
                mov     ecx, 5
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_1403B63E0:                          ; CODE XREF: sub_1403B63D0+25↓j
                and     qword ptr [rax-10h], 0
                and     qword ptr [rax-8], 0
                mov     [rax], rdx
                lea     rax, [rax+18h]
                sub     rcx, 1
                jnz     short loc_1403B63E0
                mov     cs:qword_140C31BD8, rdx
                retn
sub_1403B63D0   endp

; ---------------------------------------------------------------------------
                align 20h
byte_1403B6400  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400DE8DC↑o
; Exported entry 1112. KeAllocateProcessorProfileStructures

; =============== S U B R O U T I N E =======================================


                public KeAllocateProcessorProfileStructures
KeAllocateProcessorProfileStructures proc near
                                        ; CODE XREF: sub_1409A13A0+4C↓p
                                        ; sub_1409A13A0+F3↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404AB618 SIZE 00000196 BYTES

                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], ecx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, r8
                mov     eax, ecx
                mov     rdi, cr8
                xor     r10d, r10d
                test    r9b, r9b
                jnz     short loc_1403B649D
                lea     edx, [r10+2]
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                or      r15, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404AB618

loc_1403B6453:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F520A↓j
                                        ; KeAllocateProcessorProfileStructures+F5214↓j ...
                mov     rcx, gs:20h
                mov     rax, [r14]
                mov     [rcx+8498h], rax
                mov     rax, [r14]
                add     rax, 28h ; '('
                mov     [rcx+84A0h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AB65E

loc_1403B6482:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5250↓j
                                        ; KeAllocateProcessorProfileStructures+F525C↓j ...
                movzx   eax, dil
                mov     cr8, rax
                xor     eax, eax

loc_1403B648C:                          ; CODE XREF: KeAllocateProcessorProfileStructures+1A3↓j
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B649D:                          ; CODE XREF: KeAllocateProcessorProfileStructures+27↑j
                mov     r13, rax
                mov     [r8], r10
                imul    r13, rdx
                lea     rsi, [rax+rax*4]
                mov     [rsp+58h+arg_18], r10b
                shl     rsi, 5
                mov     r12, rax
                add     rsi, r13
                cmp     cs:byte_140E01840, r10b
                jz      short loc_1403B64D1
                add     rsi, 0FFFh
                and     rsi, 0FFFFFFFFFFFFF000h

loc_1403B64D1:                          ; CODE XREF: KeAllocateProcessorProfileStructures+B1↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140761300
                mov     rbx, rax
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     eax, 2
                test    rbx, rbx
                jz      loc_1404AB6C1
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                cmp     cs:byte_140E01840, 0
                jz      short loc_1403B651E
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14079FD4C
                test    eax, eax
                jz      loc_1404AB6CC
                mov     [rsp+58h+arg_18], 1

loc_1403B651E:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F4↑j
                lea     r10, [rbx+r13]
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AB6D7

loc_1403B653D:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F52C9↓j
                                        ; KeAllocateProcessorProfileStructures+F52D3↓j ...
                mov     r8, gs:20h
                mov     rcx, r8
                call    sub_1403B65C8
                test    al, al
                jz      short loc_1403B65B8
                mov     rax, [r8+8498h]
                test    rax, rax
                jnz     loc_1404AB718
                cmp     [rsp+58h+arg_0], eax
                jbe     short loc_1403B6584
                mov     rcx, [rsp+58h+arg_8]
                lea     rax, [r10+20h]

loc_1403B6571:                          ; CODE XREF: KeAllocateProcessorProfileStructures+172↓j
                mov     [rax], rbx
                add     rbx, rcx
                lea     rax, [rax+0A0h]
                sub     r12, 1
                jnz     short loc_1403B6571

loc_1403B6584:                          ; CODE XREF: KeAllocateProcessorProfileStructures+156↑j
                xor     ebx, ebx
                mov     [r14], r10
                xor     r14d, r14d

loc_1403B658C:                          ; CODE XREF: KeAllocateProcessorProfileStructures+1AE↓j
                                        ; KeAllocateProcessorProfileStructures+F52C2↓j ...
                mov     eax, 2

loc_1403B6591:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F52B7↓j
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_1404AB726

loc_1403B659F:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5319↓j
                                        ; KeAllocateProcessorProfileStructures+F5326↓j ...
                movzx   eax, dil
                mov     cr8, rax
                test    rbx, rbx
                jnz     loc_1404AB78B

loc_1403B65B0:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5399↓j
                mov     eax, r14d
                jmp     loc_1403B648C
; ---------------------------------------------------------------------------

loc_1403B65B8:                          ; CODE XREF: KeAllocateProcessorProfileStructures+140↑j
                mov     r14d, 0C00000BBh
                jmp     short loc_1403B658C
KeAllocateProcessorProfileStructures endp

; ---------------------------------------------------------------------------
byte_1403B65C0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A18F0↑o
                                        ; .pdata:00000001400DE8E8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B65C8   proc near               ; CODE XREF: KeAllocateProcessorProfileStructures+139↑p
                                        ; sub_14051442C+DC↓p
                                        ; DATA XREF: ...
                cmp     byte ptr [rcx+8Dh], 2
                jnz     short loc_1403B65F0
                mov     ecx, 1A0h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                and     eax, 1080h
                cmp     rax, 80h
                jnz     short loc_1403B65F0
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403B65F0:                          ; CODE XREF: sub_1403B65C8+7↑j
                                        ; sub_1403B65C8+22↑j
                xor     al, al
                retn
sub_1403B65C8   endp

; ---------------------------------------------------------------------------
                align 4
byte_1403B65F4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE8F4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B65FC   proc near               ; CODE XREF: sub_140A3CC14+773↓p
                                        ; DATA XREF: .pdata:00000001400DE900↑o

var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                mov     eax, cs:dword_140CFC404
                lea     rdi, [rsp+58h+var_28]
                xor     ebx, ebx
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  [rsp+58h+var_28], xmm0
                movups  [rsp+58h+var_38], xmm1
                test    eax, eax
                jz      short loc_1403B6693

loc_1403B6636:                          ; CODE XREF: sub_1403B65FC+95↓j
                xor     edx, edx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rbx*4]
                mov     eax, ecx
                shr     eax, 6
                and     ecx, 3Fh
                mov     word ptr [rsp+58h+var_38+8], ax
                lea     eax, [rdx+1]
                mov     dword ptr [rsp+58h+var_38+0Ah], edx
                shl     rax, cl
                lea     rcx, [rsp+58h+var_38]
                mov     word ptr [rsp+58h+var_38+0Eh], dx
                mov     rdx, rdi
                mov     qword ptr [rsp+58h+var_38], rax
                call    KeSetSystemGroupAffinityThread
                mov     rcx, gs:20h
                xor     edi, edi
                add     rcx, 0FFFFFFFFFFFFFE80h
                call    sub_1409A14B0
                mov     eax, cs:dword_140CFC404
                inc     ebx
                cmp     ebx, eax
                jb      short loc_1403B6636

loc_1403B6693:                          ; CODE XREF: sub_1403B65FC+38↑j
                lea     rcx, [rsp+58h+var_28]
                call    KeRevertToUserGroupAffinityThread
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B65FC
sub_1403B65FC   endp

byte_1403B66B6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE900↑o

; =============== S U B R O U T I N E =======================================


sub_1403B66BC   proc near               ; CODE XREF: sub_1408BBBF8+29A↓p
                                        ; sub_1409A155C+3C1↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AB7AE SIZE 000000A0 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                and     dword ptr [rax+8], 0
                mov     rsi, rcx
                mov     rbx, cr8
                mov     r14d, 2
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404AB7AE

loc_1403B66F8:                          ; CODE XREF: sub_1403B66BC+F50F4↓j
                                        ; sub_1403B66BC+F50FD↓j ...
                lea     rcx, unk_140C31B38
                call    KeAcquireSpinLockAtDpcLevel
                lea     rcx, qword_140CFC558
                call    sub_140214C94
                movzx   eax, byte ptr [rsi+0D1h]
                lea     rdx, [rsi+8470h]
                movzx   ecx, byte ptr [rsi+0D0h]
                mov     r8d, ecx
                shl     r8, 6
                add     r8, rax
                shl     r8, 4
                add     r8, cs:qword_140CFCAC0
                mov     [r8], cl
                mov     al, [rsi+0D1h]
                mov     [r8+1], al
                mov     rax, [rsi+8458h]
                bsf     rcx, rax
                mov     [r8+2], cl
                xor     ecx, ecx
                lea     r9d, [rcx+5]

loc_1403B675C:                          ; CODE XREF: sub_1403B66BC+B5↓j
                mov     rax, [rdx]
                lea     rdx, [rdx+8]
                test    rax, rax
                cmovz   rax, rcx
                mov     rcx, rax
                sub     r9, 1
                jnz     short loc_1403B675C
                test    rax, rax
                jz      short loc_1403B6780
                bsf     rax, rax
                mov     [r8+3], al

loc_1403B6780:                          ; CODE XREF: sub_1403B66BC+BA↑j
                mov     rax, [rsi+0C0h]
                lea     rcx, unk_140C31B38
                mov     rdx, [rax+88h]
                bsf     rax, rdx
                mov     [rsp+28h+arg_0], eax
                mov     [r8+4], al
                mov     al, [rsi+81B8h]
                mov     [r8+5], al
                mov     al, [rsi+81B9h]
                mov     [r8+6], al
                mov     rax, cs:qword_140CFC558
                inc     rax
                mov     cs:qword_140CFC558, rax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AB7ED

loc_1403B67D9:                          ; CODE XREF: sub_1403B66BC+F5133↓j
                                        ; sub_1403B66BC+F513F↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B66BC   endp

algn_1403B67F7:                         ; DATA XREF: .rdata:00000001400A1978↑o
                                        ; .pdata:00000001400DE90C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B6800   proc near               ; CODE XREF: sub_140A50D4C+A9↓p
                                        ; DATA XREF: .pdata:00000001400DE918↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                mov     r11, [rcx+88h]
                lea     r15, cs:140000000h
                mov     r14b, cs:byte_140C49760
                xor     r9d, r9d
                movzx   esi, word ptr [rcx+90h]
                mov     r10, rcx
                mov     ebx, r9d
                mov     r8, r11
                test    r11, r11
                jz      short loc_1403B689C
                mov     edi, esi
                shl     edi, 6

loc_1403B6846:                          ; CODE XREF: sub_1403B6800+9A↓j
                bsf     rbp, r8
                lea     eax, [rdi+rbp]
                mov     eax, ds:rva dword_140D024D0[r15+rax*4]
                mov     rdx, ds:rva qword_140CFDCC0[r15+rax*8]
                test    r14b, r14b
                jz      short loc_1403B687C
                mov     rcx, [rdx+8458h]
                cmp     rcx, [rdx+0C8h]
                jz      short loc_1403B688E
                or      byte ptr [r10+0B5h], 20h
                jmp     short loc_1403B688E
; ---------------------------------------------------------------------------

loc_1403B687C:                          ; CODE XREF: sub_1403B6800+60↑j
                movzx   eax, byte ptr [rdx+0D0h]
                mov     rcx, [rdx+rax*8+8398h]
                and     rcx, r11

loc_1403B688E:                          ; CODE XREF: sub_1403B6800+70↑j
                                        ; sub_1403B6800+7A↑j
                mov     eax, ebp
                not     rcx
                bts     rbx, rax
                and     r8, rcx
                jnz     short loc_1403B6846

loc_1403B689C:                          ; CODE XREF: sub_1403B6800+3F↑j
                mov     rbp, r9
                mov     r14, r11
                test    r11, r11
                jz      short loc_1403B6916
                mov     edi, esi
                shl     edi, 6

loc_1403B68AC:                          ; CODE XREF: sub_1403B6800+D8↓j
                bsf     r8, r14
                lea     eax, [rdi+r8]
                mov     eax, ds:rva dword_140D024D0[r15+rax*4]
                mov     rdx, ds:rva qword_140CFDCC0[r15+rax*8]
                mov     eax, r8d
                bts     rbp, rax
                mov     rax, [rdx+8468h]
                not     rax
                and     r14, rax
                jnz     short loc_1403B68AC
                test    r11, r11
                jz      short loc_1403B6916
                mov     r8d, esi
                shl     r8d, 6

loc_1403B68E6:                          ; CODE XREF: sub_1403B6800+114↓j
                bsf     rdx, r11
                lea     eax, [r8+rdx]
                mov     eax, ds:rva dword_140D024D0[r15+rax*4]
                mov     rax, ds:rva qword_140CFDCC0[r15+rax*8]
                mov     rcx, [rax+8440h]
                or      r9, rcx
                mov     eax, edx
                btr     r11, rax
                not     rcx
                and     r11, rcx
                jnz     short loc_1403B68E6

loc_1403B6916:                          ; CODE XREF: sub_1403B6800+A5↑j
                                        ; sub_1403B6800+DD↑j
                mov     rsi, [rsp+18h+arg_18]
                mov     [r10+0A0h], rbx
                mov     rbx, [rsp+18h+arg_8]
                mov     [r10+178h], rbp
                mov     rbp, [rsp+18h+arg_10]
                mov     [r10+98h], r9
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6800   endp

algn_1403B6941:                         ; DATA XREF: .pdata:00000001400DE918↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B6950   proc near               ; DATA XREF: .rdata:00000001400A19F8↑o
                                        ; .pdata:00000001400DE924↑o ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AB84E SIZE 00000061 BYTES

                mov     [rsp+arg_0], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                and     [rsp+38h+arg_8], 0
                mov     rbx, r9
                or      eax, 0FFFFFFFFh
                mov     rsi, r8
                lock xadd [r9], eax
                dec     eax
                mov     r14d, 80000000h
                mov     edi, eax
                not     edi
                and     edi, r14d
                test    eax, 7FFFFFFFh
                jz      loc_1404AB84E

loc_1403B698A:                          ; CODE XREF: sub_1403B6950+51↓j
                mov     eax, [rbx]
                and     eax, r14d
                cmp     eax, edi
                jz      loc_1404AB875
                lea     rcx, [rsp+38h+arg_8]
                call    sub_1402C8C70
                jmp     short loc_1403B698A
; ---------------------------------------------------------------------------

loc_1403B69A3:                          ; CODE XREF: sub_1403B6950+6A↓j
                                        ; sub_1403B6950+F4F5A↓j
                mov     eax, [rbx]
                and     eax, r14d
                cmp     eax, edi
                jz      loc_1404AB893
                lea     rcx, [rsp+38h+arg_18]
                call    sub_1402C8C70
                jmp     short loc_1403B69A3
sub_1403B6950   endp

; ---------------------------------------------------------------------------
byte_1403B69BC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A19F8↑o
                                        ; .pdata:00000001400DE924↑o

; =============== S U B R O U T I N E =======================================


sub_1403B69C4   proc near               ; CODE XREF: sub_14022EF40+B79↑p
                                        ; sub_14026CAB0:loc_14026CB82↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AB8B0 SIZE 00000077 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rsp+48h+var_28]
                xorps   xmm0, xmm0
                xor     eax, eax
                add     rcx, 1340h
                mov     [rsp+48h+var_18], rax
                movups  [rsp+48h+var_28], xmm0
                call    KeAcquireInStackQueuedSpinLock
                mov     rdi, [rbx+1BC0h]
                mov     rcx, [rbx+118h]
                cmp     rdi, [rbx+1430h]
                jbe     loc_1404AB8B0
                call    KeResetEvent

loc_1403B6A11:                          ; CODE XREF: sub_1403B69C4+F4EF7↓j
                mov     rcx, [rbx+120h]
                cmp     rdi, [rbx+1438h]
                jbe     short loc_1403B6A58
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1403B6A2B:                          ; CODE XREF: sub_1403B69C4+99↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404AB8C0

loc_1403B6A48:                          ; CODE XREF: sub_1403B69C4+F4EFE↓j
                                        ; sub_1403B69C4+F4F0A↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403B6A58:                          ; CODE XREF: sub_1403B69C4+5B↑j
                call    KeResetEvent
                jmp     short loc_1403B6A2B
sub_1403B69C4   endp

; ---------------------------------------------------------------------------
byte_1403B6A5F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1A18↑o
                                        ; .pdata:00000001400DE930↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6A68   proc near               ; CODE XREF: sub_14026A8F0+1D5949↓p
                                        ; sub_140286870+1BE0B8↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r8
                mov     rdi, rdx
                xor     r8d, r8d
                mov     rsi, rcx
                call    sub_140225CC0
                xor     r9d, r9d
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14029B94C
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6A68   endp

algn_1403B6AAA:                         ; DATA XREF: .pdata:00000001400DE93C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B6AB0   proc near               ; CODE XREF: sub_14027ED80+5C4↑p
                                        ; sub_14027ED80+790↑p ...
                sub     rsp, 28h
                call    sub_140312B40
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B6AB0   endp

byte_1403B6ABF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE948↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6AC8   proc near               ; CODE XREF: sub_140A52774+97↓p
                                        ; DATA XREF: .rdata:00000001400A1ED4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001404AB928 SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                cmp     dword ptr [rdx], 1
                mov     rsi, rcx
                jnz     loc_1404AB928
                mov     ecx, [rdx+4]
                lea     r8, [rdx+8]
                add     rcx, r8
                cmp     rcx, r8
                jb      loc_1403B6BEB
                mov     rdx, r8
                jz      loc_1403B6BD1
                mov     r10, [rsp+8+arg_28]

loc_1403B6B0A:                          ; CODE XREF: sub_1403B6AC8+72↓j
                mov     eax, [rdx+8]
                lea     r9, [rdx+0Ch]
                add     r9, rax
                cmp     rdx, r8
                jb      loc_1403B6BEB
                cmp     r9, rcx
                ja      loc_1403B6BEB
                cmp     r9, rdx
                jb      loc_1403B6BEB
                cmp     [rdx], r10
                jz      short loc_1403B6B41
                mov     rdx, r9
                cmp     r9, rcx
                jnz     short loc_1403B6B0A
                jmp     loc_1403B6BD1
; ---------------------------------------------------------------------------

loc_1403B6B41:                          ; CODE XREF: sub_1403B6AC8+6A↑j
                mov     r11, [rsp+8+arg_30]
                lea     rax, [rdx+0Ch]
                sub     r11, r10
                cmp     rax, r9
                jz      short loc_1403B6BD1
                xor     r14d, r14d

loc_1403B6B55:                          ; CODE XREF: sub_1403B6AC8+107↓j
                mov     ecx, [rax+4]
                cmp     ecx, 0Ah
                jb      loc_1403B6BEB
                test    cl, 1
                jnz     loc_1403B6BEB
                lea     r8, [rcx+rax]
                mov     r10d, ecx
                cmp     rax, rdx
                jbe     short loc_1403B6BEB
                cmp     r8, r9
                ja      short loc_1403B6BEB
                cmp     r8, rax
                jb      short loc_1403B6BEB
                mov     ecx, [rax]
                lea     rdi, [r10-8]
                add     rcx, rsi
                shr     rdi, 1
                lea     rbx, [rax+8]
                mov     r10d, r14d
                test    edi, edi
                jz      short loc_1403B6BC9

loc_1403B6B97:                          ; CODE XREF: sub_1403B6AC8+F8↓j
                movzx   eax, word ptr [rbx]
                test    ax, ax
                jz      short loc_1403B6BC4

loc_1403B6B9F:                          ; CODE XREF: sub_1403B6AC8+FF↓j
                mov     ebp, 1000h
                cmp     ax, bp
                jnb     short loc_1403B6BEB
                or      rcx, rax
                inc     r10d
                add     rbx, 2
                add     [rcx], r11
                and     rcx, 0FFFFFFFFFFFFF000h
                cmp     r10d, edi
                jb      short loc_1403B6B97
                jmp     short loc_1403B6BC9
; ---------------------------------------------------------------------------

loc_1403B6BC4:                          ; CODE XREF: sub_1403B6AC8+D5↑j
                test    r10d, r10d
                jz      short loc_1403B6B9F

loc_1403B6BC9:                          ; CODE XREF: sub_1403B6AC8+CD↑j
                                        ; sub_1403B6AC8+FA↑j
                mov     rax, r8
                cmp     r8, r9
                jnz     short loc_1403B6B55

loc_1403B6BD1:                          ; CODE XREF: sub_1403B6AC8+37↑j
                                        ; sub_1403B6AC8+74↑j ...
                xor     eax, eax

loc_1403B6BD3:                          ; CODE XREF: sub_1403B6AC8+128↓j
                                        ; sub_1403B6AC8+F4E65↓j
                mov     rbx, [rsp+8+arg_0]
                mov     rbp, [rsp+8+arg_8]
                mov     rsi, [rsp+8+arg_10]
                mov     rdi, [rsp+8+arg_18]
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B6BEB:                          ; CODE XREF: sub_1403B6AC8+2E↑j
                                        ; sub_1403B6AC8+4F↑j ...
                mov     eax, 0C000007Bh
                jmp     short loc_1403B6BD3
sub_1403B6AC8   endp

; ---------------------------------------------------------------------------
algn_1403B6BF2:                         ; DATA XREF: .rdata:00000001400A1ED4↑o
                                        ; .pdata:00000001400DE954↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_1403B6BF8   proc near               ; CODE XREF: sub_140A52830+115↓p
                                        ; sub_140A529A8+10B↓p
                                        ; DATA XREF: ...

var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = dword ptr -80h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_20          = byte ptr -20h
arg_10          = dword ptr  20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = byte ptr  40h
arg_38          = byte ptr  48h

; FUNCTION CHUNK AT 00000001404AB932 SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+20h], rdi
                mov     [rax+18h], r8d
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-3Fh]
                sub     rsp, 90h
                and     dword ptr [rbp+37h+var_68], 0
                lea     rax, [rbp+37h+var_58]
                xorps   xmm0, xmm0
                mov     qword ptr [rsp+0B0h+var_88], rax
                mov     rax, [rbp+37h+arg_28]
                mov     r14, r9
                mov     r9, [rbp+37h+arg_20]
                xor     edi, edi
                and     [rbp+37h+var_70], edi
                mov     rsi, rdx
                mov     [rsp+0B0h+var_90], rax
                mov     r15, rcx
                mov     r13d, r8d
                mov     [rbp+37h+var_60], rdi
                movups  [rbp+37h+var_58], xmm0
                movups  [rbp+37h+var_48], xmm0
                movups  [rbp+37h+var_38], xmm0
                call    sub_1403B6EF0
                mov     ebx, eax
                test    eax, eax
                js      loc_1403B6DC9
                cmp     [rbp+37h+arg_30], dil
                jnz     loc_1403B6E07
                lea     rax, [rbp+37h+var_70]
                mov     r9, r14
                mov     qword ptr [rsp+0B0h+var_88], rax
                mov     r8d, r13d
                and     [rsp+0B0h+var_90], rdi
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140397BC8
                mov     ebx, eax
                test    eax, eax
                jns     loc_1403B6E29
                cmp     eax, 0C0000023h
                jnz     loc_1403B6DC9
                mov     edx, [rbp+37h+var_70]
                lea     ecx, [rdi+1]
                mov     r8d, 496C7052h
                call    ExAllocatePoolWithTag
                mov     [rbp+37h+var_60], rax
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404AB932
                lea     rax, [rbp+37h+var_70]
                mov     r9, r14
                mov     qword ptr [rsp+0B0h+var_88], rax
                mov     r8d, r13d
                mov     rdx, rsi
                mov     [rsp+0B0h+var_90], rdi
                mov     rcx, r15
                call    sub_140397BC8
                mov     ebx, eax
                test    eax, eax
                js      loc_1403B6DBA
                mov     qword ptr [rbp+37h+var_48], rdi

loc_1403B6CF8:                          ; CODE XREF: sub_1403B6BF8+225↓j
                lea     r8, [rbp+37h+var_68]
                mov     edx, r13d
                mov     rcx, r15
                call    sub_1403B6F9C
                mov     ebx, eax
                test    eax, eax
                js      loc_1403B6DBA
                mov     ecx, dword ptr [rbp+37h+var_68]
                add     rcx, r15
                mov     eax, [rcx+4]
                lea     rdx, [rcx+8]
                add     rdx, rax
                add     rcx, 8

loc_1403B6D25:                          ; CODE XREF: sub_1403B6BF8+20A↓j
                cmp     rcx, rdx
                jnb     loc_1403B6E22
                cmp     qword ptr [rcx], 3
                jnz     loc_1403B6DF8
                mov     r14d, [rcx+8]
                lea     rbx, [rcx+0Ch]
                add     r14, rbx
                mov     [rbp+37h+var_68], r14
                cmp     rbx, r14
                jnb     short loc_1403B6DB8
                mov     rdi, [rbp+37h+arg_28]

loc_1403B6D50:                          ; CODE XREF: sub_1403B6BF8+1BA↓j
                mov     r12d, [rbx+4]
                lea     r13, [rbx+8]
                add     r12, rbx
                mov     rsi, r13
                cmp     r13, r12
                jnb     short loc_1403B6DA9
                mov     r14d, [rbp+37h+arg_10]

loc_1403B6D67:                          ; CODE XREF: sub_1403B6BF8+1AB↓j
                test    dword ptr [rsi], 0FFFh
                jz      short loc_1403B6DED

loc_1403B6D6F:                          ; CODE XREF: sub_1403B6BF8+1F8↓j
                movzx   eax, [rbp+37h+arg_38]
                lea     r8, [rbp+37h+var_58]
                mov     [rsp+0B0h+var_78], eax
                mov     r9, rdi
                mov     eax, [rbx]
                mov     edx, r14d
                mov     [rsp+0B0h+var_80], 1
                mov     rcx, r15
                mov     qword ptr [rsp+0B0h+var_88], rsi
                mov     dword ptr [rsp+0B0h+var_90], eax
                call    sub_1403B6E3C
                add     rsi, 4
                cmp     rsi, r12
                jb      short loc_1403B6D67

loc_1403B6DA5:                          ; CODE XREF: sub_1403B6BF8+1FE↓j
                mov     r14, [rbp+37h+var_68]

loc_1403B6DA9:                          ; CODE XREF: sub_1403B6BF8+169↑j
                mov     eax, [rbx+4]
                add     rbx, rax
                cmp     rbx, r14
                jb      short loc_1403B6D50
                mov     rdi, [rbp+37h+var_60]

loc_1403B6DB8:                          ; CODE XREF: sub_1403B6BF8+152↑j
                xor     ebx, ebx

loc_1403B6DBA:                          ; CODE XREF: sub_1403B6BF8+F6↑j
                                        ; sub_1403B6BF8+113↑j ...
                test    rdi, rdi
                jz      short loc_1403B6DC9
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1403B6DC9:                          ; CODE XREF: sub_1403B6BF8+6E↑j
                                        ; sub_1403B6BF8+AC↑j ...
                lea     r11, [rsp+0B0h+var_20]
                mov     eax, ebx
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B6DED:                          ; CODE XREF: sub_1403B6BF8+175↑j
                cmp     rsi, r13
                jz      loc_1403B6D6F
                jmp     short loc_1403B6DA5
; ---------------------------------------------------------------------------

loc_1403B6DF8:                          ; CODE XREF: sub_1403B6BF8+13A↑j
                mov     eax, [rcx+8]
                add     rcx, 0Ch
                add     rcx, rax
                jmp     loc_1403B6D25
; ---------------------------------------------------------------------------

loc_1403B6E07:                          ; CODE XREF: sub_1403B6BF8+78↑j
                mov     eax, dword ptr [rbp+37h+var_58+8]
                test    eax, eax
                jz      short loc_1403B6E30
                add     rax, r15
                mov     qword ptr [rbp+37h+var_38], rsi
                mov     qword ptr [rbp+37h+var_48+8], rax
                mov     qword ptr [rbp+37h+var_38+8], r14
                jmp     loc_1403B6CF8
; ---------------------------------------------------------------------------

loc_1403B6E22:                          ; CODE XREF: sub_1403B6BF8+130↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_1403B6DBA
; ---------------------------------------------------------------------------

loc_1403B6E29:                          ; CODE XREF: sub_1403B6BF8+A1↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_1403B6DC9
; ---------------------------------------------------------------------------

loc_1403B6E30:                          ; CODE XREF: sub_1403B6BF8+214↑j
                xor     ebx, ebx
                jmp     short loc_1403B6DC9
sub_1403B6BF8   endp

; ---------------------------------------------------------------------------
byte_1403B6E34  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1F7C↑o
                                        ; .pdata:00000001400DE960↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6E3C   proc near               ; CODE XREF: sub_1403B6BF8+19F↑p
                                        ; sub_14059017C+1C4↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = word ptr -2Ch
var_28          = qword ptr -28h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_28], rax
                mov     rbx, [rsp+78h+arg_28]
                xor     eax, eax
                mov     [rsp+78h+var_38], rax
                mov     rdi, rcx
                mov     [rsp+78h+var_30], eax
                mov     r11, r9
                mov     [rsp+78h+var_2C], ax
                mov     r10, r8
                mov     ecx, [rbx]
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_48], rax
                and     ecx, 0FFFh
                mov     eax, [rsp+78h+arg_38]
                mov     esi, edx
                add     ecx, [rsp+78h+arg_20]
                mov     r9, rbx
                mov     [rsp+78h+var_50], eax
                mov     r8, r11
                mov     eax, [rsp+78h+arg_30]
                mov     rdx, r10
                mov     [rsp+78h+var_58], eax
                call    sub_140329D90
                mov     r9d, [rbx]
                lea     r8, [rsp+78h+var_38]
                and     r9d, 0FFFh
                mov     edx, esi
                add     r9d, [rsp+78h+arg_20]
                mov     rcx, rdi
                call    sub_140329D30
                mov     rcx, [rsp+78h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B6E3C
sub_1403B6E3C   endp

algn_1403B6EEA:                         ; DATA XREF: .pdata:00000001400DE96C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B6EF0   proc near               ; CODE XREF: sub_1403B6BF8+65↑p
                                        ; sub_14059017C+96↓p
                                        ; DATA XREF: ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001404AB93C SIZE 00000072 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, [rsp+48h+arg_28]
                xorps   xmm0, xmm0
                mov     rdi, r9
                mov     r15d, r8d
                mov     r14, rdx
                mov     rbp, rcx
                movups  xmmword ptr [rsi], xmm0
                movups  xmmword ptr [rsi+10h], xmm0
                movups  xmmword ptr [rsi+20h], xmm0
                call    sub_140759128
                xor     ebx, ebx
                test    rax, rax
                jz      short loc_1403B6F8E
                cmp     dword ptr [rax], 0C8h
                jb      short loc_1403B6F8E
                cmp     [rax+78h], rbx
                jz      short loc_1403B6F4A
                mov     eax, [rax+78h]
                sub     eax, r14d
                mov     [rsi+4], eax

loc_1403B6F4A:                          ; CODE XREF: sub_1403B6EF0+4F↑j
                mov     r8d, 0Ch
                lea     r9, [rsp+48h+var_28]
                mov     dl, 1
                mov     rcx, rbp
                call    RtlImageDirectoryEntryToData
                test    rax, rax
                jz      short loc_1403B6F69
                sub     eax, ebp
                mov     [rsi+8], eax

loc_1403B6F69:                          ; CODE XREF: sub_1403B6EF0+72↑j
                test    rdi, rdi
                jnz     loc_1404AB93C

loc_1403B6F72:                          ; CODE XREF: sub_1403B6EF0+A3↓j
                                        ; sub_1403B6EF0+F4AAF↓j ...
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B6F8E:                          ; CODE XREF: sub_1403B6EF0+41↑j
                                        ; sub_1403B6EF0+49↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_1403B6F72
sub_1403B6EF0   endp

; ---------------------------------------------------------------------------
byte_1403B6F95  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1FA8↑o
                                        ; .pdata:00000001400DE978↑o

; =============== S U B R O U T I N E =======================================


sub_1403B6F9C   proc near               ; CODE XREF: sub_1403B6BF8+10A↑p
                                        ; sub_14059017C+AC↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AB9AE SIZE 0000000D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     ebp, edx
                mov     [rax+20h], r15
                mov     r14, r8
                mov     rdi, rcx
                call    sub_140759128
                test    rax, rax
                jz      loc_1403B7056
                mov     ecx, [rax]
                cmp     ecx, 0C8h
                jb      short loc_1403B7056
                cmp     ecx, 0E6h
                jb      short loc_1403B7049
                movzx   ebx, word ptr [rax+0E4h]
                mov     esi, [rax+0E0h]
                test    bx, bx
                jz      short loc_1403B7056
                mov     r8d, ebp
                lea     r9, [rsp+38h+arg_18]
                mov     rdx, rdi
                xor     ecx, ecx
                call    RtlImageNtHeaderEx
                test    eax, eax
                js      short loc_1403B702F
                mov     r8, [rsp+38h+arg_18]
                cmp     bx, [r8+6]
                ja      short loc_1403B705D
                movzx   eax, word ptr [r8+14h]
                lea     rcx, [rbx+rbx*4]
                add     rax, r8
                mov     eax, [rax+rcx*8-4]
                add     eax, esi

loc_1403B7029:                          ; CODE XREF: sub_1403B6F9C+F4A1A↓j
                mov     [r14], eax
                mov     eax, r15d

loc_1403B702F:                          ; CODE XREF: sub_1403B6F9C+6D↑j
                                        ; sub_1403B6F9C+BF↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B7049:                          ; CODE XREF: sub_1403B6F9C+45↑j
                cmp     [rax+0C0h], r15
                jnz     loc_1404AB9AE

loc_1403B7056:                          ; CODE XREF: sub_1403B6F9C+2F↑j
                                        ; sub_1403B6F9C+3D↑j ...
                mov     eax, 0C00000BBh
                jmp     short loc_1403B702F
; ---------------------------------------------------------------------------

loc_1403B705D:                          ; CODE XREF: sub_1403B6F9C+79↑j
                mov     eax, 0C000007Bh
                jmp     short loc_1403B702F
sub_1403B6F9C   endp

; ---------------------------------------------------------------------------
algn_1403B7064:                         ; DATA XREF: .rdata:00000001400A1FD4↑o
                                        ; .pdata:00000001400DE984↑o
                align 10h
; Exported entry 1158. KeFlushEntireTb

; =============== S U B R O U T I N E =======================================


                public KeFlushEntireTb
KeFlushEntireTb proc near               ; CODE XREF: sub_140A5259C+F2↓p
                                        ; DATA XREF: .rdata:00000001400A1FF8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

; FUNCTION CHUNK AT 00000001404AB9BC SIZE 000000CF BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rdi
                sub     rsp, 30h
                mov     edx, 3
                mov     byte ptr [rax+18h], 0
                mov     byte ptr [rax+20h], 0
                lea     rax, [rax+20h]
                lea     r9, [rsp+38h+arg_10]
                mov     [rsp+38h+var_18], rax
                mov     cl, 1
                lea     r8d, [rdx-1]
                call    sub_14028F220
                cmp     [rsp+38h+arg_10], 0
                jnz     loc_1404AB9BC
                mov     ecx, 2
                call    sub_14031FEB0

loc_1403B70BB:                          ; CODE XREF: KeFlushEntireTb+F495C↓j
                cmp     cs:dword_140CF4D10, 0
                jnz     loc_1404AB9D1

loc_1403B70C8:                          ; CODE XREF: KeFlushEntireTb+F4A16↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeFlushEntireTb endp

algn_1403B70D9:                         ; DATA XREF: .rdata:00000001400A1FF8↑o
                                        ; .pdata:00000001400DE990↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B70E0   proc near               ; CODE XREF: sub_140A5249C+6E↓p
                                        ; DATA XREF: .pdata:00000001400DE99C↑o

var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = qword ptr -8Ch
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = qword ptr -74h
var_6C          = dword ptr -6Ch
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r14
                lea     rbp, [rsp-47h]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                and     [rbp+57h+var_9C], 0
                mov     rsi, rdx
                and     [rbp+57h+var_8C], 0
                xor     edx, edx
                and     [rbp+57h+var_84], 0
                mov     r14, rcx
                and     [rbp+57h+var_74], 0
                lea     rcx, [rbp+57h+var_60]
                and     [rbp+57h+var_6C], 0
                lea     r8d, [rdx+40h]
                call    memset
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_A0], 200h
                mov     [rbp+57h+var_98], rax
                mov     rax, rsi
                shr     rax, 27h
                and     eax, 1FFh
                mov     rcx, 0FFFFF6FB7DBED000h
                lea     rbx, [rcx+rax*8]
                mov     rcx, rbx
                call    sub_1402805F0
                test    al, 1
                jz      short loc_1403B71A2
                shl     rbx, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                sub     rbx, rax
                sar     rbx, 10h
                xor     edi, edi

loc_1403B7183:                          ; CODE XREF: sub_1403B70E0+C0↓j
                mov     rcx, rbx
                call    sub_1402805F0
                test    rax, rax
                jnz     loc_1403B7295

loc_1403B7194:                          ; CODE XREF: sub_1403B70E0+1BC↓j
                add     rbx, 8
                inc     edi
                cmp     edi, 200h
                jb      short loc_1403B7183

loc_1403B71A2:                          ; CODE XREF: sub_1403B70E0+86↑j
                mov     rax, 0FFFFFF8000000000h
                mov     [rbp+57h+var_78], 1
                and     rsi, rax
                lea     rbx, [rbp+57h+var_8C+4]
                and     [rbp+57h+var_90], 0
                mov     rax, 1000000000h
                mov     [rbp+57h+var_80], rax
                mov     edi, 2
                mov     eax, 80000000h
                mov     [rbp+57h+var_68], rax

loc_1403B71DA:                          ; CODE XREF: sub_1403B70E0+13C↓j
                mov     ecx, 1
                call    sub_1402D2900
                mov     rdx, [rbx+8]
                lea     rcx, [rbp+57h+var_A0]
                add     rdx, 3FFFFFFFh
                mov     r8d, eax
                shr     rdx, 1Eh
                and     r8d, 1FFh
                inc     edx
                call    RtlFindClearBitsAndSet
                mov     eax, eax
                shl     rax, 1Eh
                add     rax, rsi
                mov     [rbx], rax
                lea     rbx, [rbx+18h]
                sub     rdi, 1
                jnz     short loc_1403B71DA
                mov     rax, [rbp+57h+var_8C+4]
                mov     rcx, [rbp+57h+var_74+4]
                mov     cs:qword_140C4E1B0, rax
                mov     cs:qword_140C4E1B8, rax
                mov     cs:qword_140C4E1C0, rax
                mov     rax, [rbp+57h+var_68]
                mov     cs:qword_140C4E0D0, rax
                mov     cs:qword_140C4E0C8, rcx
                mov     rax, [r14+0F0h]
                mov     [rax+0B70h], rcx
                mov     rcx, [r14+0F0h]
                mov     rax, cs:qword_140C4E0D0
                mov     [rcx+0B78h], rax
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B7295:                          ; CODE XREF: sub_1403B70E0+AE↑j
                lea     rax, [rbp+57h+var_60]
                bts     [rax], edi
                jmp     loc_1403B7194
; } // starts at 1403B70E0
sub_1403B70E0   endp

; ---------------------------------------------------------------------------
algn_1403B72A1:                         ; DATA XREF: .pdata:00000001400DE99C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B72A8   proc near               ; CODE XREF: sub_1407A2CA4+33↓p
                                        ; sub_140A54474+914↓p ...

; FUNCTION CHUNK AT 00000001404ABAF2 SIZE 0000001A BYTES

                sub     rsp, 28h
                xor     eax, eax
                test    ecx, ecx
                jz      short loc_1403B72C7
                cmp     ecx, 1
                jz      short loc_1403B72D2
                cmp     ecx, 2
                jnz     loc_1404ABB05
                call    sub_1407A3A74
                jmp     short loc_1403B72CC
; ---------------------------------------------------------------------------

loc_1403B72C7:                          ; CODE XREF: sub_1403B72A8+8↑j
                call    sub_140A5536C

loc_1403B72CC:                          ; CODE XREF: sub_1403B72A8+1D↑j
                                        ; sub_1403B72A8+30↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B72D2:                          ; CODE XREF: sub_1403B72A8+D↑j
                cmp     cs:dword_140C430A4, eax
                jz      short loc_1403B72CC
                jmp     loc_1404ABAF2
sub_1403B72A8   endp

; ---------------------------------------------------------------------------
byte_1403B72DF  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A2504↑o
                                        ; .pdata:00000001400DE9A8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B72E8   proc near               ; CODE XREF: sub_14088E878+125↓p
                                        ; sub_140A554F8+17↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     eax, eax
                cmp     [r9], rax
                jnz     short loc_1403B72FF
                lea     rdx, sub_1403C6320
                call    EtwRegister

loc_1403B72FF:                          ; CODE XREF: sub_1403B72E8+9↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B72E8   endp

byte_1403B7305  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE9B4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B730C   proc near               ; CODE XREF: sub_14076BAC4+AF↓p
                                        ; sub_140A55A4C+30↓p ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     dword ptr [r8], 0
                lea     r9, [rsp+28h+arg_10]
                and     [rsp+28h+arg_10], 0
                mov     rdi, r8
                xor     r8d, r8d
                call    sub_140739D08
                mov     rcx, [rsp+28h+arg_10]
                mov     ebx, eax
                test    eax, eax
                jns     short loc_1403B734E

loc_1403B733B:                          ; CODE XREF: sub_1403B730C+53↓j
                                        ; sub_1403B730C+63↓j
                test    rcx, rcx
                jnz     short loc_1403B7361

loc_1403B7340:                          ; CODE XREF: sub_1403B730C+5C↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B734E:                          ; CODE XREF: sub_1403B730C+2D↑j
                call    sub_14039A9A8
                test    al, al
                jz      short loc_1403B736A
                mov     eax, [rcx+8]
                mov     edx, [rax+rcx]
                mov     [rdi], edx
                jmp     short loc_1403B733B
; ---------------------------------------------------------------------------

loc_1403B7361:                          ; CODE XREF: sub_1403B730C+32↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1403B7340
; ---------------------------------------------------------------------------

loc_1403B736A:                          ; CODE XREF: sub_1403B730C+49↑j
                mov     ebx, 0C0000229h
                jmp     short loc_1403B733B
sub_1403B730C   endp

; ---------------------------------------------------------------------------
algn_1403B7371:                         ; DATA XREF: .pdata:00000001400DE9C0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B7378   proc near               ; CODE XREF: sub_140A56050+459↓p
                                        ; DATA XREF: .pdata:00000001400DE9CC↑o
                sub     rsp, 28h
                mov     r9d, 6
                lea     rcx, unk_140C50C00
                xor     r8d, r8d
                lea     edx, [r9+1Ah]
                call    sub_140303D90
                test    eax, eax
                js      short loc_1403B73AB
                or      cs:dword_140C50C04, 4
                mov     eax, 1

loc_1403B73A5:                          ; CODE XREF: sub_1403B7378+35↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B73AB:                          ; CODE XREF: sub_1403B7378+1F↑j
                xor     eax, eax
                jmp     short loc_1403B73A5
sub_1403B7378   endp

; ---------------------------------------------------------------------------
algn_1403B73AF:                         ; DATA XREF: .pdata:00000001400DE9CC↑o
                align 20h
; Exported entry 122. DbgSetDebugFilterState

; =============== S U B R O U T I N E =======================================


                public DbgSetDebugFilterState
DbgSetDebugFilterState proc near        ; DATA XREF: .pdata:00000001400DE9D8↑o
                sub     rsp, 28h
                call    sub_1407A4F70
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgSetDebugFilterState endp

byte_1403B73CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DE9D8↑o

; =============== S U B R O U T I N E =======================================


sub_1403B73D8   proc near               ; CODE XREF: sub_140303EA8+165A0B↓p
                                        ; sub_140A56050+12E↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404ABB0C SIZE 0000009A BYTES

                push    rbx
                sub     rsp, 40h
                xor     eax, eax
                mov     rbx, rcx
                mov     ecx, cs:dword_140CFB1D4
                xorps   xmm0, xmm0
                mov     [rsp+48h+var_18], rax
                movups  [rsp+48h+var_28], xmm0
                cmp     ecx, 1
                jz      short loc_1403B740B
                test    cs:dword_140CFC400, 8000h
                jnz     loc_1404ABB0C

loc_1403B740B:                          ; CODE XREF: sub_1403B73D8+21↑j
                                        ; sub_1403B73D8+F4744↓j ...
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B73D8   endp

algn_1403B7412:                         ; DATA XREF: .rdata:00000001400A2E34↑o
                                        ; .pdata:00000001400DE9E4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B7418   proc near               ; CODE XREF: sub_14028EDB0:loc_14028EE79↑p
                                        ; sub_14031FBD0:loc_14031FD1A↑p ...

var_D8          = byte ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404ABBA6 SIZE 00000048 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_18], rax
                and     [rsp+0F8h+var_D0], 0
                mov     ebx, ecx
                lea     rcx, [rsp+0F8h+var_C8]
                xor     edx, edx
                mov     r8d, 0A8h
                call    memset
                mov     eax, cs:dword_140CFC41C
                mov     [rsp+0F8h+var_D8], 0
                bt      eax, 17h
                jb      loc_1404ABBA6

loc_1403B7462:                          ; CODE XREF: sub_1403B7418+F479B↓j
                mov     ecx, ebx
                call    sub_1403974FC

loc_1403B7469:                          ; CODE XREF: sub_1403B7418+F47D1↓j
                mov     rcx, [rsp+0F8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0F0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B7418
sub_1403B7418   endp

byte_1403B7483  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A2E5C↑o
                                        ; .pdata:00000001400DE9F0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B748C   proc near               ; CODE XREF: sub_140276AE0+8C7↑p
                                        ; sub_140276AE0+1917↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404ABBEE SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rax, 0FFFFFA8000000000h
                mov     rdx, rcx
                sub     rdx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rdx
                mov     rbx, rdx
                sar     rbx, 3
                mov     rax, rbx
                shr     rax, 3Fh
                add     rbx, rax
                call    sub_1402DAA00
                mov     edx, 2
                movzx   esi, al
                mov     rcx, rbx
                call    sub_140292A50
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404ABBEE

loc_1403B74FE:                          ; CODE XREF: sub_1403B748C+F4764↓j
                                        ; sub_1403B748C+F4770↓j ...
                mov     cr8, rsi
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B748C   endp

algn_1403B7513:                         ; DATA XREF: .rdata:00000001400A2FF8↑o
                                        ; .pdata:00000001400DE9FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1403B7520   proc near               ; DATA XREF: .rdata:00000001400A303C↑o
                                        ; .pdata:00000001400DEA08↑o ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 00000001404ABC52 SIZE 000000D0 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r13
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     r13, unk_140C16640
                xor     eax, eax
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax

loc_1403B754A:                          ; CODE XREF: sub_1403B7520+CC↓j
                                        ; sub_1403B7520+136↓j ...
                xor     r8d, r8d
                lea     rcx, unk_140C16600
                xor     edx, edx
                call    KeRemoveQueue
                cmp     rax, r13
                jz      loc_1403B767E
                cmp     dword ptr [rax+30h], 0
                lea     rdx, [rsp+48h+var_28]
                jz      loc_1403B7609
                lea     rbx, [rax-1D0h]
                mov     rdi, [rbx+10h]
                mov     rcx, rdi
                call    KeAcquireInStackQueuedSpinLock
                cmp     dword ptr [rbx+130h], 0
                jnz     short loc_1403B75A1
                mov     r8d, [rbx+120h]
                mov     eax, [rbx+118h]
                cmp     r8d, eax
                ja      short loc_1403B75F4

loc_1403B75A1:                          ; CODE XREF: sub_1403B7520+6D↑j
                                        ; sub_1403B7520+E7↓j
                cmp     byte ptr [rdi+21h], 0
                jnz     loc_1403B769E
                xor     dil, dil
                lea     r8, [rbx+1D0h]
                lea     rcx, [rbx+148h]
                lea     rdx, unk_140C16600
                call    sub_1402B75B4

loc_1403B75C8:                          ; CODE XREF: sub_1403B7520+181↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   esi, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404ABCBA

loc_1403B75E5:                          ; CODE XREF: sub_1403B7520+F479C↓j
                                        ; sub_1403B7520+F47A8↓j ...
                mov     cr8, rsi
                test    dil, dil
                jz      loc_1403B754A
                jmp     short loc_1403B7649
; ---------------------------------------------------------------------------

loc_1403B75F4:                          ; CODE XREF: sub_1403B7520+7F↑j
                mov     rdx, [rbx+70h]
                sub     r8d, eax
                mov     rcx, [rdi+8]
                neg     rdx
                call    sub_140349400
                jmp     short loc_1403B75A1
; ---------------------------------------------------------------------------

loc_1403B7609:                          ; CODE XREF: sub_1403B7520+4D↑j
                lea     rbx, [rax-208h]
                mov     rcx, [rbx+10h]
                call    KeAcquireInStackQueuedSpinLock
                btr     dword ptr [rbx+138h], 0Ah
                test    dword ptr [rbx+138h], 200h
                jz      short loc_1403B765B
                mov     rcx, rbx
                call    sub_1402B6480
                test    al, al
                jz      short loc_1403B765B
                xor     r8d, r8d
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    sub_1402C2AA0

loc_1403B7649:                          ; CODE XREF: sub_1403B7520+D2↑j
                                        ; sub_1403B7520+15C↓j
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                jmp     loc_1403B754A
; ---------------------------------------------------------------------------

loc_1403B765B:                          ; CODE XREF: sub_1403B7520+10B↑j
                                        ; sub_1403B7520+117↑j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404ABC52

loc_1403B7678:                          ; CODE XREF: sub_1403B7520+F4734↓j
                                        ; sub_1403B7520+F4740↓j ...
                mov     cr8, rdi
                jmp     short loc_1403B7649
; ---------------------------------------------------------------------------

loc_1403B767E:                          ; CODE XREF: sub_1403B7520+3E↑j
                call    sub_14035E354
                mov     r8, r13
                lea     rdx, unk_140C16600
                lea     rcx, qword_140C16680
                call    sub_1402B75B4
                jmp     loc_1403B754A
; ---------------------------------------------------------------------------

loc_1403B769E:                          ; CODE XREF: sub_1403B7520+85↑j
                mov     dil, 1
                jmp     loc_1403B75C8
sub_1403B7520   endp

; ---------------------------------------------------------------------------
algn_1403B76A6:                         ; DATA XREF: .rdata:00000001400A303C↑o
                                        ; .pdata:00000001400DEA08↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403B76B0   proc near               ; DATA XREF: .rdata:00000001400A3070↑o
                                        ; .pdata:00000001400DEA14↑o ...

var_438         = byte ptr -438h
var_430         = byte ptr -430h
var_428         = qword ptr -428h
var_420         = qword ptr -420h
var_418         = byte ptr -418h
var_410         = byte ptr -410h
var_398         = qword ptr -398h
var_390         = qword ptr -390h
var_388         = byte ptr -388h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404ABD22 SIZE 00000129 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 440h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+458h+var_28], rax
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+458h+var_410]
                mov     r8d, 88h
                call    memset
                mov     rbp, gs:188h
                mov     edx, 12h
                mov     rcx, rbp
                call    KeSetPriorityThread
                or      dword ptr [rbp+514h], 2
                lea     rcx, [rsp+458h+var_418]
                mov     r14d, eax
                lea     rdx, [rbx+1138h]
                mov     r8d, 10h

loc_1403B771E:                          ; CODE XREF: sub_1403B76B0+7D↓j
                mov     [rcx], rdx
                add     rdx, 18h
                lea     rcx, [rcx+8]
                sub     r8, 1
                jnz     short loc_1403B771E
                lea     rax, [rbx+68h]
                mov     [rsp+458h+var_398], rax
                lea     rax, [rbx+318h]
                mov     [rsp+458h+var_390], rax
                mov     rax, gs:188h
                mov     qword ptr [rax+4C0h], 3

loc_1403B775E:                          ; CODE XREF: sub_1403B76B0+204↓j
                                        ; sub_1403B76B0+F468A↓j
                or      esi, 0FFFFFFFFh

loc_1403B7761:                          ; CODE XREF: sub_1403B76B0+18D↓j
                                        ; sub_1403B76B0+1B3↓j ...
                cmp     esi, 0FFFFFFFFh
                jz      loc_1403B7875
                mov     rax, [rbx+1D40h]
                mov     rcx, [rbx+1DB0h]
                cmp     rax, rcx
                jbe     loc_1403B7875
                sub     rax, rcx
                cmp     rax, 10h
                jb      loc_1403B7868

loc_1403B778E:                          ; CODE XREF: sub_1403B76B0+1BF↓j
                                        ; sub_1403B76B0+1FC↓j ...
                mov     r8d, [rbx+6Ch]
                test    r8d, r8d
                jnz     short loc_1403B77A0
                cmp     esi, 10h
                jb      loc_1404ABD22

loc_1403B77A0:                          ; CODE XREF: sub_1403B76B0+E5↑j
                                        ; sub_1403B76B0+F4690↓j
                mov     rax, [rbx+1DB0h]
                cmp     [rbx+1D40h], rax
                jz      loc_1403B78B1
                mov     eax, [rbx+270h]
                cmp     rax, [rbx+268h]
                jnb     loc_1404ABDAA
                mov     edx, 10h
                mov     rcx, rbx
                lea     r8d, [rdx-0Fh]
                call    sub_1402D4074
                mov     rdi, rax

loc_1403B77DB:                          ; CODE XREF: sub_1403B76B0+F46FC↓j
                test    rdi, rdi
                jz      loc_1404ABDB1
                xor     edx, edx
                mov     r8d, 108h
                mov     rcx, rdi
                call    memset
                mov     qword ptr [rdi], 61h ; 'a'
                mov     [rdi+0C0h], rbx

loc_1403B7802:                          ; CODE XREF: sub_1403B76B0+F4745↓j
                test    rdi, rdi
                jz      loc_1404ABDFA
                mov     eax, 1
                lock xadd [rbx+270h], eax
                inc     eax
                cmp     eax, [rbx+274h]
                ja      loc_1403B78BF

loc_1403B7826:                          ; CODE XREF: sub_1403B76B0+215↓j
                and     qword ptr [rdi+0C8h], 0
                mov     r8, rdi
                mov     edx, esi
                mov     rcx, rbx
                call    sub_1402D52E4
                test    eax, eax
                jnz     loc_1403B7761
                or      ecx, 0FFFFFFFFh
                lock add [rbx+270h], ecx
                mov     eax, [rdi+28h]
                test    al, 1
                jnz     loc_1404ABE11
                lea     edx, [rcx+2]
                mov     rcx, rdi
                call    sub_14034B1A0
                jmp     loc_1403B7761
; ---------------------------------------------------------------------------

loc_1403B7868:                          ; CODE XREF: sub_1403B76B0+D8↑j
                cmp     dword ptr [rbx+314h], 0
                jnz     loc_1403B778E

loc_1403B7875:                          ; CODE XREF: sub_1403B76B0+B4↑j
                                        ; sub_1403B76B0+CB↑j
                mov     r9d, 8
                lea     rax, [rsp+458h+var_388]
                mov     [rsp+458h+var_420], rax
                lea     rdx, [rsp+458h+var_418]
                and     [rsp+458h+var_428], 0
                mov     [rsp+458h+var_430], 0
                lea     r8d, [r9-7]
                mov     [rsp+458h+var_438], 0
                lea     ecx, [r9+0Ah]
                call    KeWaitForMultipleObjects
                mov     esi, eax
                jmp     loc_1403B778E
; ---------------------------------------------------------------------------

loc_1403B78B1:                          ; CODE XREF: sub_1403B76B0+FE↑j
                test    r8d, r8d
                jz      loc_1403B775E
                jmp     loc_1404ABD45
; ---------------------------------------------------------------------------

loc_1403B78BF:                          ; CODE XREF: sub_1403B76B0+170↑j
                mov     [rbx+274h], eax
                jmp     loc_1403B7826
; } // starts at 1403B76B0
sub_1403B76B0   endp

; ---------------------------------------------------------------------------
algn_1403B78CA:                         ; DATA XREF: .rdata:00000001400A3070↑o
                                        ; .pdata:00000001400DEA14↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=410h

sub_1403B78D0   proc near               ; CODE XREF: sub_1404EC990+4D↓p
                                        ; DATA XREF: .rdata:00000001400A30AC↑o ...

var_4F0         = byte ptr -4F0h
var_4E8         = byte ptr -4E8h
var_4E0         = qword ptr -4E0h
var_4D8         = qword ptr -4D8h
var_4D0         = qword ptr -4D0h
var_4C8         = dword ptr -4C8h
var_4C4         = dword ptr -4C4h
var_4C0         = qword ptr -4C0h
var_4B8         = qword ptr -4B8h
var_4B0         = qword ptr -4B0h
var_4A8         = qword ptr -4A8h
var_4A0         = qword ptr -4A0h
var_498         = qword ptr -498h
var_490         = byte ptr -490h
var_438         = qword ptr -438h
var_430         = qword ptr -430h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001404ABE4C SIZE 000000E0 BYTES

; __unwind { // __GSHandlerCheck
                test    rcx, rcx
                jz      locret_1403B7C3A
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-418h]
                sub     rsp, 4F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+410h+var_30], rax
                mov     eax, [rcx+28h]
                xor     edi, edi
                mov     ebx, [rcx+24h]
                mov     r12, rcx
                mov     r13, [rcx+38h]
                mov     esi, 200h
                and     [rsp+510h+var_4B8], rdi
                lea     rcx, [rbp+410h+var_430]
                mov     r8d, esi
                mov     [rsp+510h+var_4C8], eax
                xor     edx, edx
                mov     [rsp+510h+var_4C4], ebx
                lea     r15d, [rdi+3]
                call    memset
                mov     r8d, esi
                lea     rcx, [rbp+410h+var_230]
                xor     edx, edx
                call    memset
                mov     rax, [r13+370h]
                lea     rcx, [rbx+rbx*2]
                mov     [rsp+510h+var_4A8], rcx
                mov     r14d, ebx
                mov     [rsp+510h+var_4B0], rbx
                lea     rdx, [rax+rcx*8]
                imul    rcx, rbx, 194h
                lea     rax, [r13+3D0h]
                mov     [rsp+510h+var_4D0], rdx
                add     rcx, [r13+378h]
                mov     [rsp+510h+var_4C0], rcx
                mov     [rsp+510h+var_4A0], rdx
                mov     [rsp+510h+var_498], rax

loc_1403B7999:                          ; CODE XREF: sub_1403B78D0+15F↓j
                                        ; sub_1403B78D0+F4657↓j
                cmp     edi, 3Fh ; '?'
                jnb     short loc_1403B79B5
                mov     rax, r14
                shl     rax, 4
                add     rax, [r13+360h]
                cmp     [rax], rax
                jnz     loc_1403B7BD3

loc_1403B79B5:                          ; CODE XREF: sub_1403B78D0+CC↑j
                test    edi, edi
                jz      loc_1403B7B90
                mov     r8, rdx
                lea     rcx, [rbp+410h+var_430]
                mov     edx, edi
                call    sub_14034C488
                xor     r15d, r15d
                mov     ebx, eax
                cmp     eax, edi
                setb    r15b

loc_1403B79D6:                          ; CODE XREF: sub_1403B78D0+2FE↓j
                                        ; sub_1403B78D0+F457F↓j ...
                mov     rdx, [rsp+510h+var_4D0]

loc_1403B79DB:                          ; CODE XREF: sub_1403B78D0+309↓j
                test    r15d, r15d
                jnz     loc_1403B7AAE
                lea     rsi, [r13+380h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                shl     r14, 4

loc_1403B79F9:                          ; CODE XREF: sub_1403B78D0+1D9↓j
                mov     rdx, [r13+360h]
                add     rdx, r14
                cmp     [rdx], rdx
                jnz     short loc_1403B7A3A

loc_1403B7A08:                          ; CODE XREF: sub_1403B78D0+F45CF↓j
                xor     edx, edx
                mov     rcx, rsi
                call    ExReleasePushLockEx
                mov     rcx, [rsp+510h+var_4B8]
                test    rcx, rcx
                jnz     loc_1404ABEA4

loc_1403B7A20:                          ; CODE XREF: sub_1403B78D0+F45FD↓j
                mov     rdx, [rsp+510h+var_4D0]

loc_1403B7A25:                          ; CODE XREF: sub_1403B78D0+1EA↓j
                                        ; sub_1403B78D0+205↓j ...
                cmp     [rsp+510h+var_4C8], 0
                mov     r14, [rsp+510h+var_4B0]
                jz      loc_1403B7999
                jmp     loc_1404ABF23
; ---------------------------------------------------------------------------

loc_1403B7A3A:                          ; CODE XREF: sub_1403B78D0+136↑j
                cmp     edi, 3Fh ; '?'
                jnb     loc_1404ABE78
                mov     rcx, r13
                call    sub_1402F6D78
                mov     rcx, rsi
                xor     edx, edx
                mov     rbx, rax
                call    ExReleasePushLockEx
                mov     rcx, rbx
                call    sub_1403457D8
                test    al, al
                jz      loc_1403B7C25
                mov     rcx, [rbx+30h]
                mov     rdx, [rcx]
                test    rdx, rdx
                jz      loc_1403B7BED
                mov     eax, [rsp+510h+var_4C8]
                mov     rcx, [rsp+510h+var_4C0]
                mov     [rbp+rdi*8+410h+var_430], rdx
                mov     [rbp+rdi*8+410h+var_230], rbx
                inc     edi
                lock inc dword ptr [rcx+rax*4]
                cmp     edi, 3Fh ; '?'
                sbb     rax, rax
                and     [rsp+510h+var_4D0], rax

loc_1403B7A9F:                          ; CODE XREF: sub_1403B78D0+347↓j
                                        ; sub_1403B78D0+365↓j
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                jmp     loc_1403B79F9
; ---------------------------------------------------------------------------

loc_1403B7AAE:                          ; CODE XREF: sub_1403B78D0+10E↑j
                cmp     r15d, 1
                jnz     loc_1404ABEC9
                cmp     ebx, edi
                jnb     loc_1403B7A25
                lfence
                mov     r14d, ebx
                shl     r14, 3
                mov     rsi, [rbp+r14+410h+var_230]
                test    rsi, rsi
                jz      loc_1403B7A25
                mov     rcx, [rsi+30h]
                test    rcx, rcx
                jz      loc_1403B7A25
                mov     edx, 73416343h
                call    ExFreePoolWithTag
                xor     eax, eax
                mov     byte ptr [rsi+78h], 6
                mov     [rsi+30h], rax
                mov     [rbp+r14+410h+var_430], rax
                mov     [rbp+r14+410h+var_230], rax
                mov     rax, [rsi+10h]
                cmp     [rax+208h], r15d
                jnz     loc_1403B7BDE
                cmp     dword ptr [rsi+28h], 20000h
                ja      loc_1403B7BDE
                mov     rcx, rsi
                call    sub_1402FA8C0
                mov     rcx, rsi
                call    sub_1402F9F3C

loc_1403B7B37:                          ; CODE XREF: sub_1403B78D0+318↓j
                dec     edi
                jmp     short loc_1403B7B5B
; ---------------------------------------------------------------------------

loc_1403B7B3B:                          ; CODE XREF: sub_1403B78D0+28D↓j
                inc     ebx
                lea     r14, [r14+8]
                mov     rax, [rbp+rbx*8+410h+var_430]
                mov     [rbp+r14+410h+var_438], rax
                mov     rax, [rbp+rbx*8+410h+var_230]
                mov     [rbp+r14+410h+var_238], rax

loc_1403B7B5B:                          ; CODE XREF: sub_1403B78D0+269↑j
                cmp     ebx, edi
                jb      short loc_1403B7B3B
                mov     rcx, [rsp+510h+var_4C0]
                mov     rdx, [rsp+510h+var_4D0]
                mov     eax, ebx
                and     [rbp+rax*8+410h+var_430], 0
                and     [rbp+rax*8+410h+var_230], 0
                mov     eax, [rsp+510h+var_4C8]
                lock dec dword ptr [rcx+rax*4]
                test    rdx, rdx
                jnz     loc_1403B7A25
                jmp     loc_1404ABE5E
; ---------------------------------------------------------------------------

loc_1403B7B90:                          ; CODE XREF: sub_1403B78D0+E7↑j
                mov     r9d, 8
                lea     rax, [rbp+410h+var_490]
                mov     [rsp+510h+var_4D8], rax
                lea     rdx, [rsp+510h+var_4A0]
                and     [rsp+510h+var_4E0], 0
                mov     [rsp+510h+var_4E8], 0
                lea     r8d, [r9-7]
                mov     [rsp+510h+var_4F0], 0
                lea     ecx, [r9-6]
                call    KeWaitForMultipleObjects
                mov     ebx, eax
                test    eax, eax
                jnz     loc_1404ABE4C
                xor     r15d, r15d
                jmp     loc_1403B79D6
; ---------------------------------------------------------------------------

loc_1403B7BD3:                          ; CODE XREF: sub_1403B78D0+DF↑j
                lea     ebx, [rdi+1]
                xor     r15d, r15d
                jmp     loc_1403B79DB
; ---------------------------------------------------------------------------

loc_1403B7BDE:                          ; CODE XREF: sub_1403B78D0+244↑j
                                        ; sub_1403B78D0+251↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402FB9A4
                jmp     loc_1403B7B37
; ---------------------------------------------------------------------------

loc_1403B7BED:                          ; CODE XREF: sub_1403B78D0+1A2↑j
                mov     edx, 73416343h
                call    ExFreePoolWithTag
                mov     rax, [rbx+10h]
                and     qword ptr [rbx+30h], 0
                mov     byte ptr [rbx+78h], 6
                cmp     dword ptr [rax+208h], 1
                jz      short loc_1403B7C1C

loc_1403B7C0D:                          ; CODE XREF: sub_1403B78D0+353↓j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402FB9A4
                jmp     loc_1403B7A9F
; ---------------------------------------------------------------------------

loc_1403B7C1C:                          ; CODE XREF: sub_1403B78D0+33B↑j
                cmp     dword ptr [rbx+28h], 20000h
                ja      short loc_1403B7C0D

loc_1403B7C25:                          ; CODE XREF: sub_1403B78D0+192↑j
                mov     rcx, rbx
                call    sub_1402FA8C0
                mov     rcx, rbx
                call    sub_1402F9F3C
                jmp     loc_1403B7A9F
; ---------------------------------------------------------------------------

locret_1403B7C3A:                       ; CODE XREF: sub_1403B78D0+3↑j
                                        ; sub_1403B78D0+F464E↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B78D0
sub_1403B78D0   endp

byte_1403B7C3C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A30AC↑o
                                        ; .pdata:00000001400DEA20↑o

; =============== S U B R O U T I N E =======================================


sub_1403B7C44   proc near               ; CODE XREF: sub_1407A5030+4↓p
                                        ; DATA XREF: .pdata:00000001400DEA2C↑o
                sub     rsp, 28h
                mov     ecx, 640005h
                call    sub_1403EBC6C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B7C44   endp

algn_1403B7C58:                         ; DATA XREF: .pdata:00000001400DEA2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B7C60   proc near               ; CODE XREF: sub_140A5C16C+4EB↓p
                                        ; DATA XREF: .rdata:00000001400A30F0↑o ...

var_28          = qword ptr -28h
var_18          = word ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404ABF2C SIZE 00000019 BYTES

                mov     rax, rsp
                mov     [rax+8], rbp
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdx, [rcx+0D8h]
                mov     rdi, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rax-18h]
                movups  xmmword ptr [rax-18h], xmm0
                call    RtlInitString
                movzx   eax, [rsp+48h+var_18]
                xor     esi, esi
                movzx   edx, [rsp+48h+var_18]
                mov     r8d, 30394D43h
                mov     cs:word_140D586C8, si
                lea     ebp, [rsi+1]
                add     ax, bp
                add     edx, ebp
                add     ax, ax
                add     rdx, rdx
                mov     ecx, ebp
                mov     cs:word_140D586CA, ax
                call    ExAllocatePoolWithTag
                mov     cs:qword_140D586D0, rax
                test    rax, rax
                jz      loc_1404ABF2C
                xor     r8d, r8d
                lea     rdx, [rsp+48h+var_18]
                lea     rcx, word_140D586C8
                call    RtlAnsiStringToUnicodeString
                movzx   ecx, [rsp+48h+var_18]
                mov     rax, cs:qword_140D586D0
                mov     rbp, [rsp+48h+arg_0]
                mov     [rax+rcx*2], si
                add     cs:word_140D586C8, 2
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B7C60   endp

byte_1403B7D0C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A30F0↑o
                                        ; .pdata:00000001400DEA38↑o

; =============== S U B R O U T I N E =======================================


sub_1403B7D14   proc near               ; CODE XREF: sub_140A5BEA4+DF↓p
                                        ; sub_140A5BEA4+101↓p ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = word ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-18h], 0
                xor     edi, edi
                mov     [rax-10h], rdi
                mov     rbx, rdx
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_1403B7D98
                mov     rdx, r8
                lea     rcx, [rax-18h]
                call    RtlCreateUnicodeStringFromAsciiz
                mov     rdi, [rsp+48h+var_10]
                test    al, al
                jz      short loc_1403B7DAA
                movzx   eax, [rsp+48h+var_18]
                mov     r9d, 1
                add     eax, 2
                xor     r8d, r8d
                mov     [rsp+48h+var_20], eax
                mov     rdx, rbx
                mov     rcx, rsi
                mov     [rsp+48h+var_28], rdi
                call    ZwSetValueKey
                mov     ebx, eax

loc_1403B7D76:                          ; CODE XREF: sub_1403B7D14+94↓j
                                        ; sub_1403B7D14+9B↓j
                test    rdi, rdi
                jz      short loc_1403B7D85
                lea     rcx, [rsp+48h+var_18]
                call    RtlFreeUnicodeString

loc_1403B7D85:                          ; CODE XREF: sub_1403B7D14+65↑j
                                        ; sub_1403B7D14+90↓j
                mov     rsi, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403B7D98:                          ; CODE XREF: sub_1403B7D14+24↑j
                call    ZwDeleteValueKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     short loc_1403B7D85
                xor     ebx, ebx
                jmp     short loc_1403B7D76
; ---------------------------------------------------------------------------

loc_1403B7DAA:                          ; CODE XREF: sub_1403B7D14+39↑j
                mov     ebx, 0C0000001h
                jmp     short loc_1403B7D76
sub_1403B7D14   endp

; ---------------------------------------------------------------------------
algn_1403B7DB1:                         ; DATA XREF: .pdata:00000001400DEA44↑o
                align 20h
; Exported entry 2200. RtlInitAnsiStringEx

; =============== S U B R O U T I N E =======================================


