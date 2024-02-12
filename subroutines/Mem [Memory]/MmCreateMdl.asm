MmCreateMdl     proc near               ; CODE XREF: sub_14065EEA0+31D↓p
                                        ; sub_14092E534+84↓p ...

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
                mov     rax, 100000000h
                mov     rsi, r8
                mov     rbx, rdx
                mov     r9, rcx
                cmp     r8, rax
                jnb     loc_14034D322
                xor     ebp, ebp
                mov     r14d, 0FFFh
                mov     edi, ebx
                test    rcx, rcx
                jnz     short loc_14034D2C5
                lea     rdx, [r8+0FFFh]
                mov     eax, edi
                and     rax, r14
                lea     ecx, [rbp+40h]
                add     rdx, rax
                mov     r8d, 6C646D4Dh
                shr     rdx, 0Ch
                lea     rdx, ds:30h[rdx*8]
                call    sub_140268720
                mov     r9, rax
                test    rax, rax
                jz      short loc_14034D322

loc_14034D2C5:                          ; CODE XREF: MmCreateMdl+42↑j
                mov     eax, edi
                mov     [r9], rbp
                and     rax, r14
                mov     [r9+0Ah], bp
                and     rbx, 0FFFFFFFFFFFFF000h
                mov     [r9+28h], esi
                lea     rcx, [rsi+0FFFh]
                mov     [r9+20h], rbx
                add     rcx, rax
                mov     rax, r9
                shr     rcx, 0Ch
                add     cx, 6
                shl     cx, 3
                and     edi, r14d
                mov     [r9+8], cx
                mov     [r9+2Ch], edi

loc_14034D306:                          ; CODE XREF: MmCreateMdl+D4↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034D322:                          ; CODE XREF: MmCreateMdl+2F↑j
                                        ; MmCreateMdl+73↑j
                xor     eax, eax
                jmp     short loc_14034D306
MmCreateMdl     endp

; ---------------------------------------------------------------------------
byte_14034D326  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7DFC↑o

; =============== S U B R O U T I N E =======================================


sub_14034D32C   proc near               ; CODE XREF: sub_14034535C+82↑p
                                        ; sub_14038E280+8C↓p ...

var_78          = byte ptr -78h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140481B14 SIZE 000001A4 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r10, [rcx]
                xor     esi, esi
                mov     [rsp+98h+arg_18], esi
                mov     r14d, 1
                mov     [rsp+98h+var_68], r14d
                mov     edi, edx
                mov     [rsp+98h+var_48], r10
                test    r10, r10
                jnz     short loc_14034D388

loc_14034D36D:                          ; CODE XREF: sub_14034D32C+190↓j
                mov     rbx, [rsp+98h+arg_8]
                mov     eax, esi
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14034D388:                          ; CODE XREF: sub_14034D32C+3F↑j
                mov     rcx, cr8
                mov     [rsp+98h+var_40], rcx
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140481B14

loc_14034D3A9:                          ; CODE XREF: sub_14034D32C+1347EB↓j
                                        ; sub_14034D32C+1347F4↓j ...
                mov     r15, gs:20h
                mov     rax, r10

loc_14034D3B5:                          ; CODE XREF: sub_14034D32C+19B↓j
                lea     rbp, [rax]
                mov     rax, [rax]
                mov     [rsp+98h+var_50], rax
                lea     rax, [rbp+18h]
                mov     rcx, rax
                mov     [rsp+98h+var_58], rax
                call    sub_1402AF4F0
                lea     rax, [rbp+20h]
                mov     [rbp+1Ch], r14d
                mov     rsi, [rax]

loc_14034D3DC:                          ; CODE XREF: sub_14034D32C+134971↓j
                cmp     rsi, rax
                jz      short loc_14034D43D
                mov     rax, [rsi]
                mov     rbx, rsi
                mov     rsi, rax
                mov     [rsp+98h+var_60], rax
                mov     rcx, [rbx+8]
                cmp     [rax+8], rbx
                jz      short loc_14034D400

loc_14034D3F9:                          ; CODE XREF: sub_14034D32C+D7↓j
                                        ; sub_14034D32C+13490D↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14034D400:                          ; CODE XREF: sub_14034D32C+CB↑j
                cmp     [rcx], rbx
                jnz     short loc_14034D3F9
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     al, [rbx+10h]
                cmp     al, r14b
                jnz     loc_140481B56
                movzx   r8d, word ptr [rbx+12h]
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_14023CD30
                test    al, al
                jz      loc_140481C99
                sub     dword ptr [rbp+1Ch], 1
                jnz     loc_140481C99

loc_14034D43D:                          ; CODE XREF: sub_14034D32C+B3↑j
                                        ; sub_14034D32C+134948↓j
                mov     rax, [rsp+98h+var_58]
                lock and dword ptr [rax], 0FFFFFF7Fh
                mov     esi, [rsp+98h+arg_18]
                mov     rax, [rsp+98h+var_50]
                add     esi, r14d
                mov     [rsp+98h+arg_18], esi
                cmp     rax, [rsp+98h+var_48]
                jnz     short loc_14034D4C1
                mov     ebx, [rsp+98h+arg_10]
                test    r14b, bl
                jz      short loc_14034D486
                mov     rdx, [r15+8]
                mov     rcx, r15
                call    sub_1402C88C0
                test    edi, edi
                jnz     loc_140481CA2

loc_14034D486:                          ; CODE XREF: sub_14034D32C+144↑j
                mov     ecx, [rsp+98h+var_68]

loc_14034D48A:                          ; CODE XREF: sub_14034D32C+13497E↓j
                                        ; sub_14034D32C+134987↓j
                test    bl, 2
                jz      short loc_14034D496
                cmp     ecx, r14d
                cmovz   edi, r14d

loc_14034D496:                          ; CODE XREF: sub_14034D32C+161↑j
                mov     rax, [rsp+98h+var_40]
                mov     r8d, ecx
                mov     rcx, r15
                mov     [rsp+98h+var_78], al
                mov     r9d, edi
                xor     edx, edx
                call    sub_14023E110
                mov     rax, [rsp+98h+arg_0]
                xor     ecx, ecx
                mov     [rax], rcx
                jmp     loc_14034D36D
; ---------------------------------------------------------------------------

loc_14034D4C1:                          ; CODE XREF: sub_14034D32C+138↑j
                mov     r13d, 2
                jmp     loc_14034D3B5
sub_14034D32C   endp

; ---------------------------------------------------------------------------
byte_14034D4CC  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140082C24↑o
                                        ; .pdata:00000001400D7E08↑o

; =============== S U B R O U T I N E =======================================


sub_14034D4D4   proc near               ; CODE XREF: sub_1406A0F7C+109↓p
                                        ; DATA XREF: .pdata:00000001400D7E14↑o
                sub     rsp, 28h
                call    sub_14034D504
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14034D4D4   endp

byte_14034D4E3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7E14↑o

; =============== S U B R O U T I N E =======================================


sub_14034D4EC   proc near               ; CODE XREF: sub_1406A0F7C+112↓p
                                        ; DATA XREF: .pdata:00000001400D7E20↑o
                sub     rsp, 28h
                call    RtlDestroyAtomTable
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14034D4EC   endp

byte_14034D4FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7E20↑o

; =============== S U B R O U T I N E =======================================


sub_14034D504   proc near               ; CODE XREF: sub_14034D4D4+4↑p
                                        ; DATA XREF: .pdata:00000001400D7E2C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12d, edx
                mov     rdi, rcx
                call    sub_140663974
                test    al, al
                jz      short loc_14034D569
                xor     ebp, ebp
                lea     r15, [rdi+20h]
                cmp     [rdi+1Ch], ebp
                jbe     short loc_14034D561

loc_14034D53A:                          ; CODE XREF: sub_14034D504+5B↓j
                mov     rsi, [r15]
                lea     r15, [r15+8]
                jmp     short loc_14034D552
; ---------------------------------------------------------------------------

loc_14034D543:                          ; CODE XREF: sub_14034D504+54↓j
                mov     rsi, [rsi]
                lea     r14, [r13+10h]
                mov     rbx, [r14]

loc_14034D54D:                          ; CODE XREF: sub_14034D504+8F↓j
                cmp     rbx, r14
                jnz     short loc_14034D587

loc_14034D552:                          ; CODE XREF: sub_14034D504+3D↑j
                                        ; sub_14034D504+C4↓j
                mov     r13, rsi
                test    rsi, rsi
                jnz     short loc_14034D543
                inc     ebp
                cmp     ebp, [rdi+1Ch]
                jb      short loc_14034D53A

loc_14034D561:                          ; CODE XREF: sub_14034D504+34↑j
                mov     rcx, rdi
                call    sub_140663E04

loc_14034D569:                          ; CODE XREF: sub_14034D504+29↑j
                mov     rbx, [rsp+48h+arg_0]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034D587:                          ; CODE XREF: sub_14034D504+4C↑j
                mov     rcx, rbx
                cmp     [rbx+10h], r12d
                jz      short loc_14034D595

loc_14034D590:                          ; CODE XREF: sub_14034D504+C2↓j
                mov     rbx, [rbx]
                jmp     short loc_14034D54D
; ---------------------------------------------------------------------------

loc_14034D595:                          ; CODE XREF: sub_14034D504+8A↑j
                mov     rdx, [rcx]
                mov     rax, [rbx+8]
                mov     rbx, rax
                cmp     [rdx+8], rcx
                jnz     short loc_14034D5CA
                cmp     [rax], rcx
                jnz     short loc_14034D5CA
                mov     [rax], rdx
                mov     [rdx+8], rax
                call    sub_140701A1C
                mov     r8, rdi
                mov     rdx, r14
                mov     rcx, r13
                call    sub_14034D5D8
                test    al, al
                jz      short loc_14034D590
                jmp     short loc_14034D552
; ---------------------------------------------------------------------------

loc_14034D5CA:                          ; CODE XREF: sub_14034D504+9F↑j
                                        ; sub_14034D504+A4↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14034D504   endp

; ---------------------------------------------------------------------------
algn_14034D5D1:                         ; DATA XREF: .pdata:00000001400D7E2C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14034D5D8   proc near               ; CODE XREF: sub_14034D504+BB↑p
                                        ; RtlDeleteAtomFromAtomTable+85↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                test    byte ptr [rdx+16h], 1
                mov     rdi, r8
                mov     rbx, rcx
                jnz     short loc_14034D5FE
                mov     esi, 0FFFFh
                add     [rdx+14h], si
                jz      short loc_14034D611

loc_14034D5FE:                          ; CODE XREF: sub_14034D5D8+19↑j
                                        ; sub_14034D5D8+76↓j ...
                xor     al, al

loc_14034D600:                          ; CODE XREF: sub_14034D5D8+4F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034D611:                          ; CODE XREF: sub_14034D5D8+24↑j
                lea     rax, [rcx+10h]
                cmp     rdx, rax
                jnz     short loc_14034D629

loc_14034D61A:                          ; CODE XREF: sub_14034D5D8+7E↓j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14034D668
                mov     al, 1
                jmp     short loc_14034D600
; ---------------------------------------------------------------------------

loc_14034D629:                          ; CODE XREF: sub_14034D5D8+40↑j
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_14034D658
                mov     rcx, [rdx+8]
                cmp     [rcx], rdx
                jnz     short loc_14034D658
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     rcx, rdx
                call    sub_140701A1C
                test    byte ptr [rbx+26h], 1
                jnz     short loc_14034D5FE
                add     [rbx+24h], si
                jnz     short loc_14034D5FE
                jmp     short loc_14034D61A
; ---------------------------------------------------------------------------

loc_14034D658:                          ; CODE XREF: sub_14034D5D8+58↑j
                                        ; sub_14034D5D8+61↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14034D5D8   endp

; ---------------------------------------------------------------------------
byte_14034D65F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7E38↑o

; =============== S U B R O U T I N E =======================================


sub_14034D668   proc near               ; CODE XREF: sub_14034D5D8+48↑p
                                        ; DATA XREF: .pdata:00000001400D7E44↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rcx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [r11+18h], 0
                lea     rax, [r11+8]
                mov     [r11-28h], rax
                lea     r9, [r11+18h]
                mov     rsi, rdx
                lea     rax, [r11+20h]
                lea     rdx, [rcx+2Ah]
                mov     [r11-30h], rax
                and     qword ptr [r11-38h], 0
                xor     r8d, r8d
                mov     rcx, rsi
                call    sub_140663AC0
                test    eax, eax
                js      short loc_14034D6E3
                mov     rbx, [rsp+58h+arg_0]
                test    rbx, rbx
                jz      short loc_14034D6E3
                mov     rcx, [rsp+58h+arg_10]
                test    rcx, rcx
                jz      short loc_14034D6C4
                mov     rax, [rbx]
                mov     [rcx], rax

loc_14034D6C4:                          ; CODE XREF: sub_14034D668+54↑j
                lea     rdi, [rbx+10h]

loc_14034D6C8:                          ; CODE XREF: sub_14034D668+9F↓j
                mov     rcx, [rdi]
                cmp     rcx, rdi
                jnz     short loc_14034D6EC
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140701A4C
                mov     rcx, rbx
                call    sub_140701A1C

loc_14034D6E3:                          ; CODE XREF: sub_14034D668+40↑j
                                        ; sub_14034D668+4A↑j
                add     rsp, 40h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14034D6EC:                          ; CODE XREF: sub_14034D668+66↑j
                cmp     [rcx+8], rdi
                jnz     short loc_14034D709
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_14034D709
                mov     [rdi], rax
                mov     [rax+8], rdi
                call    sub_140701A1C
                jmp     short loc_14034D6C8
; ---------------------------------------------------------------------------

loc_14034D709:                          ; CODE XREF: sub_14034D668+88↑j
                                        ; sub_14034D668+91↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14034D668   endp

; ---------------------------------------------------------------------------
algn_14034D710:                         ; DATA XREF: .pdata:00000001400D7E44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14034D720   proc near               ; CODE XREF: sub_140552DB0+A↓p
                                        ; DATA XREF: .rdata:0000000140082D40↑o ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140481CB8 SIZE 0000043A BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, [rdx+38h]
                mov     r14, rdx
                mov     r13, rcx
                test    al, 1
                jnz     short loc_14034D75E

loc_14034D746:                          ; CODE XREF: sub_14034D720+56↓j
                                        ; sub_14034D720+116↓j
                mov     rbx, [rsp+58h+arg_18]
                xor     eax, eax
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034D75E:                          ; CODE XREF: sub_14034D720+24↑j
                xor     esi, esi
                test    r8d, r8d
                jnz     short loc_14034D778
                mov     cl, 1
                call    sub_140212F34
                sub     rax, [r14+68h]
                cmp     rax, 2FAF080h
                jb      short loc_14034D746

loc_14034D778:                          ; CODE XREF: sub_14034D720+43↑j
                or      r12, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+58h+arg_10], rsi
                mov     eax, 2
                cmp     [r14+40h], rsi
                jnz     loc_140481CB8

loc_14034D790:                          ; CODE XREF: sub_14034D720+13492A↓j
                lea     rcx, [r14+10h]
                mov     rbx, rsi
                call    ExAcquireSpinLockExclusive
                and     dword ptr [r14+38h], 0FFFFFFFEh
                mov     rcx, [r14+8]
                movzx   ebp, al
                test    cl, 1
                jnz     loc_14048204F
                mov     rdi, rcx
                jmp     short loc_14034D7ED
; ---------------------------------------------------------------------------

loc_14034D7B6:                          ; CODE XREF: sub_14034D720+9F↓j
                                        ; sub_14034D720+DF↓j
                mov     rdi, rax
                mov     rax, [rax]
                test    rax, rax
                jnz     short loc_14034D7B6

loc_14034D7C1:                          ; CODE XREF: sub_14034D720+E9↓j
                                        ; sub_14034D720+EE↓j
                mov     eax, [rsi+8Ch]
                test    al, 1
                jnz     short loc_14034D7ED
                mov     ecx, [rsi+84h]
                cmp     ecx, 200h
                jz      loc_140482068
                mov     edx, [rsi+88h]
                add     edx, ecx
                cmp     edx, 200h
                jnb     short loc_14034D841

loc_14034D7ED:                          ; CODE XREF: sub_14034D720+94↑j
                                        ; sub_14034D720+A9↑j ...
                test    rdi, rdi
                jz      short loc_14034D815
                mov     rax, [rdi+8]
                mov     rsi, rdi
                mov     rcx, rdi
                test    rax, rax
                jnz     short loc_14034D7B6

loc_14034D801:                          ; CODE XREF: sub_14034D720+F3↓j
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14034D7C1
                cmp     [rdi], rcx
                jz      short loc_14034D7C1
                mov     rcx, rdi
                jmp     short loc_14034D801
; ---------------------------------------------------------------------------

loc_14034D815:                          ; CODE XREF: sub_14034D720+D0↑j
                                        ; sub_14034D720+134933↓j
                lea     rcx, [r14+10h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140482081

loc_14034D82C:                          ; CODE XREF: sub_14034D720+134963↓j
                                        ; sub_14034D720+13496F↓j ...
                mov     cr8, rbp

loc_14034D830:                          ; CODE XREF: sub_14034D720+1349CD↓j
                mov     rdx, rbx
                test    rbx, rbx
                jz      loc_14034D746
                jmp     loc_1404820E1
; ---------------------------------------------------------------------------

loc_14034D841:                          ; CODE XREF: sub_14034D720+CB↑j
                or      dword ptr [r14+38h], 1
                jmp     short loc_14034D7ED
sub_14034D720   endp

; ---------------------------------------------------------------------------
algn_14034D848:                         ; DATA XREF: .rdata:0000000140082D40↑o
                                        ; .pdata:00000001400D7E50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14034D850   proc near               ; CODE XREF: sub_14026DEF0+3BA↑p
                                        ; DATA XREF: .rdata:0000000140082D64↑o ...

var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404820F2 SIZE 00000041 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 70h
                mov     rax, gs:188h
                mov     edi, edx
                cmp     qword ptr [rcx], 0
                mov     rbx, rcx
                mov     rsi, [rax+220h]
                jnz     loc_1404820F2
                cmp     qword ptr [rcx+8], 0
                jnz     loc_1404820F2

loc_14034D889:                          ; CODE XREF: sub_14034D850+1348DE↓j
                cmp     qword ptr [rbx+40h], 0
                jnz     short loc_14034D8A3

loc_14034D890:                          ; CODE XREF: sub_14034D850+56↓j
                                        ; sub_14034D850+D7↓j
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034D8A3:                          ; CODE XREF: sub_14034D850+3E↑j
                cmp     edi, 2
                jz      short loc_14034D890
                mov     r9d, 28h ; '('
                lea     r8, [rsp+78h+var_38]
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     rcx, rax
                sub     rcx, [rbx+40h]
                mov     [rbx+40h], rcx
                add     ecx, ecx
                mov     rdx, [rsi+468h]
                xor     rdx, [rsi+440h]
                mov     [rsp+78h+var_38], ecx
                mov     ecx, cs:dword_140CEC0D0
                mov     [rsp+78h+var_34], ecx
                mov     rcx, [rbx+30h]
                mov     [rsp+78h+var_20], rcx
                mov     rcx, [rbx+20h]
                shr     rcx, 9
                mov     ecx, ecx
                mov     [rsp+78h+var_30], rcx
                mov     rcx, 1FFFFFFFFFFFFFFFh
                and     rdx, rcx
                mov     rcx, [rbx+28h]
                mov     [rsp+78h+var_28], rcx
                lea     ecx, [r9-0Bh]
                mov     [rsp+78h+var_18], rdx
                mov     edx, eax
                call    sub_1402087D8
                jmp     loc_14034D890
sub_14034D850   endp

; ---------------------------------------------------------------------------
algn_14034D92C:                         ; DATA XREF: .rdata:0000000140082D64↑o
                                        ; .pdata:00000001400D7E5C↑o
                align 20h
; Exported entry 1844. PsGetProcessPeb

; =============== S U B R O U T I N E =======================================


