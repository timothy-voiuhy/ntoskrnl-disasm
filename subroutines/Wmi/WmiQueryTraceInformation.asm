WmiQueryTraceInformation proc near      ; CODE XREF: sub_140787534+9E↑p
                                        ; sub_1408921A0+4C↓p ...

var_48          = byte ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rsi, r9
                mov     r15d, r8d
                mov     rdi, rdx
                mov     ebx, ecx
                xor     r13d, r13d
                mov     [rax-40h], r13d
                mov     [rax-30h], r13
                mov     [rax-44h], r13d
                call    sub_1402B95B0
                mov     rdx, [rax+360h]

loc_140787853:                          ; DATA XREF: .rdata:000000014009CD04↑o
;   __try { // __except at loc_140788040
                test    rsi, rsi
                jnz     loc_1407879A2

loc_14078785C:                          ; CODE XREF: WmiQueryTraceInformation+195↓j
                cmp     ebx, 7
                jle     loc_1407879AA
                mov     r14d, 8
                sub     ebx, r14d
                jnz     short loc_1407878D5
                cmp     r15d, 4
                jnz     loc_140788020
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jz      loc_140788027
                mov     ebx, [rax]
                mov     [rsp+68h+var_40], ebx
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     r8d, r8d
                mov     edx, ebx
                call    sub_140608410
                test    rax, rax
                jz      loc_140788039
                mov     ebx, [rax+100h]
                xor     edx, edx
                mov     rcx, rax
                call    sub_1406084E4
                test    rdi, rdi
                jz      short loc_1407878C7
                mov     [rdi], ebx

loc_1407878C7:                          ; CODE XREF: WmiQueryTraceInformation+B3↑j
                                        ; WmiQueryTraceInformation+349↓j ...
                test    rsi, rsi
                jnz     loc_14078802E

loc_1407878D0:                          ; CODE XREF: WmiQueryTraceInformation+125↓j
                                        ; WmiQueryTraceInformation+27E↓j ...
                jmp     loc_140788044
; ---------------------------------------------------------------------------

loc_1407878D5:                          ; CODE XREF: WmiQueryTraceInformation+5E↑j
                sub     ebx, 1
                jz      loc_140787F2C
                sub     ebx, 1
                jz      loc_140787E68
                sub     ebx, 1
                jz      loc_140787971
                sub     ebx, 1
                jz      loc_140787DA7
                sub     ebx, 1
                jnz     short loc_140787937
                test    rsi, rsi
                jnz     loc_140787D81

loc_140787907:                          ; CODE XREF: WmiQueryTraceInformation+574↓j
                cmp     cs:byte_140C197B5, 0
                jz      loc_140787D89
                cmp     r15d, r14d
                jnz     loc_140787D93
                test    rdi, rdi
                jz      loc_140787D9D
                lea     rax, off_140C00EB0

loc_14078792D:                          ; CODE XREF: WmiQueryTraceInformation+15F↓j
                                        ; WmiQueryTraceInformation+190↓j
                mov     [rdi], rax

loc_140787930:                          ; CODE XREF: WmiQueryTraceInformation+62D↓j
                mov     [rsp+68h+var_44], r13d
                jmp     short loc_1407878D0
; ---------------------------------------------------------------------------

loc_140787937:                          ; CODE XREF: WmiQueryTraceInformation+EC↑j
                cmp     ebx, 2
                jnz     loc_140787D51
                test    rsi, rsi
                jnz     loc_140787D5B

loc_140787949:                          ; CODE XREF: WmiQueryTraceInformation+54E↓j
                cmp     cs:byte_140C197B5, 0
                jz      loc_140787D63
                cmp     r15d, r14d
                jnz     loc_140787D6D
                test    rdi, rdi
                jz      loc_140787D77
                lea     rax, unk_140C11F48
                jmp     short loc_14078792D
; ---------------------------------------------------------------------------

loc_140787971:                          ; CODE XREF: WmiQueryTraceInformation+DA↑j
                test    rsi, rsi
                jnz     loc_140787E42

loc_14078797A:                          ; CODE XREF: WmiQueryTraceInformation+635↓j
                cmp     cs:byte_140C197B5, 0
                jz      loc_140787E4A
                cmp     r15d, r14d
                jnz     loc_140787E54
                test    rdi, rdi
                jz      loc_140787E5E
                lea     rax, qword_140C545D0
                jmp     short loc_14078792D
; ---------------------------------------------------------------------------

loc_1407879A2:                          ; CODE XREF: WmiQueryTraceInformation+46↑j
                mov     [rsi], r13d
                jmp     loc_14078785C
; ---------------------------------------------------------------------------

loc_1407879AA:                          ; CODE XREF: WmiQueryTraceInformation+4F↑j
                jz      loc_140787CAA
                test    ebx, ebx
                jz      loc_140787C47
                sub     ebx, 1
                jz      loc_140787BCD
                sub     ebx, 1
                jz      loc_140787B70
                sub     ebx, 1
                jz      loc_140787B10
                sub     ebx, 1
                jz      loc_140787AB2
                sub     ebx, 1
                jz      loc_140787AA5
                cmp     ebx, 1
                jnz     loc_140787D51
                mov     [rsp+68h+var_3C], r13d
                lea     r14d, [rbx+7]
                cmp     r15d, r14d
                jb      loc_140787A9B
                test    rdi, rdi
                jz      loc_140787A9B
                call    sub_1402B95B0
                mov     r13, [rax+360h]
                xor     ebx, ebx
                mov     [rsp+68h+var_3C], ebx
                lea     r9d, [r14-7]

loc_140787A1F:                          ; CODE XREF: WmiQueryTraceInformation+25E↓j
                mov     r14d, r9d
                mov     [rsp+68h+var_40], r9d
                cmp     r9d, [r13+10h]
                jnb     short loc_140787A70
                xor     r8d, r8d
                mov     edx, r9d
                mov     rcx, r13
                call    sub_140608410
                test    rax, rax
                jz      short loc_140787A6A
                lea     r12d, [rbx+1]
                mov     edx, r12d
                shl     rdx, 3
                cmp     rdx, r15
                ja      short loc_140787A59
                mov     edx, r14d
                mov     ecx, ebx
                mov     [rdi+rcx*8], rdx

loc_140787A59:                          ; CODE XREF: WmiQueryTraceInformation+23E↑j
                xor     edx, edx
                mov     rcx, rax
                call    sub_1406084E4
                mov     ebx, r12d
                mov     [rsp+68h+var_3C], ebx

loc_140787A6A:                          ; CODE XREF: WmiQueryTraceInformation+22E↑j
                lea     r9d, [r14+1]
                jmp     short loc_140787A1F
; ---------------------------------------------------------------------------

loc_140787A70:                          ; CODE XREF: WmiQueryTraceInformation+21B↑j
                mov     edx, ebx
                shl     rdx, 3
                mov     ecx, [rsp+68h+var_44]
                mov     r8d, 105h
                cmp     rdx, r15
                cmova   ecx, r8d
                mov     [rsp+68h+var_44], ecx
                test    rsi, rsi
                jz      loc_1407878D0
                mov     [rsi], edx
                jmp     loc_1407878D0
; ---------------------------------------------------------------------------

loc_140787A9B:                          ; CODE XREF: WmiQueryTraceInformation+1EA↑j
                                        ; WmiQueryTraceInformation+1F3↑j
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787AA5:                          ; CODE XREF: WmiQueryTraceInformation+1CF↑j
                mov     [rsp+68h+var_44], 0C0000003h
                jmp     loc_1407878D0
; ---------------------------------------------------------------------------

loc_140787AB2:                          ; CODE XREF: WmiQueryTraceInformation+1C6↑j
                mov     r14d, 8
                cmp     r15d, r14d
                jz      short loc_140787AC7
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787AC7:                          ; CODE XREF: WmiQueryTraceInformation+2AB↑j
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    sub_140608410
                test    rax, rax
                jz      short loc_140787B06
                mov     ebx, [rax]
                mov     [rsp+68h+var_30], rbx
                xor     edx, edx
                mov     rcx, rax
                call    sub_1406084E4
                test    rdi, rdi
                jz      loc_140787C36
                mov     [rdi], rbx
                jmp     loc_140787C36
; ---------------------------------------------------------------------------

loc_140787B06:                          ; CODE XREF: WmiQueryTraceInformation+2D2↑j
                mov     eax, 0C0000225h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B10:                          ; CODE XREF: WmiQueryTraceInformation+1BD↑j
                cmp     r15d, 4
                jnb     short loc_140787B20
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B20:                          ; CODE XREF: WmiQueryTraceInformation+304↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787B37
                mov     eax, 0C0000030h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B37:                          ; CODE XREF: WmiQueryTraceInformation+31B↑j
                mov     rax, [rax+8]
                mov     [rsp+68h+var_30], rax
                test    rax, rax
                jz      short loc_140787B66
                mov     ecx, 0FFFFFFFFh
                cmp     rax, rcx
                jz      short loc_140787B66
                shr     rax, 10h
                movzx   ecx, al
                test    rdi, rdi
                jz      loc_1407878C7
                mov     [rdi], ecx
                jmp     loc_1407878C7
; ---------------------------------------------------------------------------

loc_140787B66:                          ; CODE XREF: WmiQueryTraceInformation+333↑j
                                        ; WmiQueryTraceInformation+33D↑j
                mov     eax, 0C0000008h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B70:                          ; CODE XREF: WmiQueryTraceInformation+1B4↑j
                cmp     r15d, 4
                jnb     short loc_140787B80
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B80:                          ; CODE XREF: WmiQueryTraceInformation+364↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787B97
                mov     eax, 0C0000030h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787B97:                          ; CODE XREF: WmiQueryTraceInformation+37B↑j
                mov     rax, [rax+8]
                mov     [rsp+68h+var_30], rax
                test    rax, rax
                jz      short loc_140787BC3
                mov     ecx, 0FFFFFFFFh
                cmp     rax, rcx
                jz      short loc_140787BC3
                shr     rax, 20h

loc_140787BB3:                          ; CODE XREF: WmiQueryTraceInformation+480↓j
                test    rdi, rdi
                jz      loc_1407878C7
                mov     [rdi], eax
                jmp     loc_1407878C7
; ---------------------------------------------------------------------------

loc_140787BC3:                          ; CODE XREF: WmiQueryTraceInformation+393↑j
                                        ; WmiQueryTraceInformation+39D↑j
                mov     eax, 0C0000008h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787BCD:                          ; CODE XREF: WmiQueryTraceInformation+1AB↑j
                mov     r14d, 8
                cmp     r15d, r14d
                jz      short loc_140787BE2
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787BE2:                          ; CODE XREF: WmiQueryTraceInformation+3C6↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787BF9
                mov     eax, 0C0000030h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787BF9:                          ; CODE XREF: WmiQueryTraceInformation+3DD↑j
                mov     eax, [rax]
                mov     [rsp+68h+var_40], eax
                cmp     eax, [rdx+10h]
                jb      short loc_140787C0E
                mov     eax, 0C0000008h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787C0E:                          ; CODE XREF: WmiQueryTraceInformation+3F2↑j
                mov     [rsp+68h+var_30], r13
                test    eax, eax
                movzx   ecx, ax
                jnz     short loc_140787C1F
                mov     ecx, 0FFFFh

loc_140787C1F:                          ; CODE XREF: WmiQueryTraceInformation+408↑j
                mov     word ptr [rsp+68h+var_30], cx

loc_140787C24:                          ; CODE XREF: WmiQueryTraceInformation+536↓j
                test    rdi, rdi
                jz      short loc_140787C36
                mov     rax, [rsp+68h+var_30]
                mov     [rdi], rax
                jmp     short loc_140787C36
; ---------------------------------------------------------------------------

loc_140787C33:                          ; CODE XREF: WmiQueryTraceInformation+70D↓j
                mov     [rdi], r12

loc_140787C36:                          ; CODE XREF: WmiQueryTraceInformation+2E8↑j
                                        ; WmiQueryTraceInformation+2F1↑j ...
                test    rsi, rsi
                jz      loc_1407878D0
                mov     [rsi], r14d
                jmp     loc_1407878D0
; ---------------------------------------------------------------------------

loc_140787C47:                          ; CODE XREF: WmiQueryTraceInformation+1A2↑j
                cmp     r15d, 4
                jz      short loc_140787C57
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787C57:                          ; CODE XREF: WmiQueryTraceInformation+43B↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787C6E
                mov     eax, 0C0000030h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787C6E:                          ; CODE XREF: WmiQueryTraceInformation+452↑j
                mov     rax, [rax+8]
                mov     [rsp+68h+var_30], rax
                test    rax, rax
                jz      short loc_140787CA0
                mov     ecx, 0FFFFFFFFh
                cmp     rax, rcx
                jz      short loc_140787CA0
                movzx   eax, ax
                mov     [rsp+68h+var_40], eax
                cmp     eax, [rdx+10h]
                jb      loc_140787BB3
                mov     eax, 0C0000008h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787CA0:                          ; CODE XREF: WmiQueryTraceInformation+46A↑j
                                        ; WmiQueryTraceInformation+474↑j
                mov     eax, 0C0000008h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787CAA:                          ; CODE XREF: WmiQueryTraceInformation:loc_1407879AA↑j
                                        ; DATA XREF: .rdata:000000014009CCF4↑o
;     __try { // __except at loc_140787D0F
                mov     rax, gs:188h
                mov     [rsp+68h+var_20], rax
                mov     al, [rax+232h]
                mov     [rsp+68h+var_48], al
                test    al, al
                jz      short loc_140787D0D
                mov     rcx, [rsp+68h+arg_20]
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jz      short loc_140787D0D
                mov     rcx, [rcx+8]
                mov     r9d, 1
                test    r9b, cl
                jz      short loc_140787CEA
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140787CEA:                          ; CODE XREF: WmiQueryTraceInformation+4D3↑j
                lea     rdx, [rcx+rax]
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                ja      short loc_140787D02
                cmp     rdx, rcx
                jnb     short loc_140787D0D

loc_140787D02:                          ; CODE XREF: WmiQueryTraceInformation+4EB↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_140787D0D:                          ; CODE XREF: WmiQueryTraceInformation+4B4↑j
                                        ; WmiQueryTraceInformation+4C4↑j ...
                jmp     short loc_140787D14
;     } // starts at 140787CAA
; ---------------------------------------------------------------------------

loc_140787D0F:                          ; DATA XREF: .rdata:000000014009CCF4↑o
;   __except(1) // owned by 140787CAA
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D14:                          ; CODE XREF: WmiQueryTraceInformation:loc_140787D0D↑j
                mov     r14d, 8
                cmp     r15d, r14d
                jz      short loc_140787D29
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D29:                          ; CODE XREF: WmiQueryTraceInformation+50D↑j
                mov     [rsp+68h+var_30], r13
                lea     rdx, [rsp+68h+var_30]
                mov     rcx, [rsp+68h+arg_20]
                call    sub_1407885AC
                mov     [rsp+68h+var_44], eax
                test    eax, eax
                jns     loc_140787C24
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D51:                          ; CODE XREF: WmiQueryTraceInformation+12A↑j
                                        ; WmiQueryTraceInformation+1D8↑j
                mov     eax, 0C0000003h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D5B:                          ; CODE XREF: WmiQueryTraceInformation+133↑j
                mov     [rsi], r14d
                jmp     loc_140787949
; ---------------------------------------------------------------------------

loc_140787D63:                          ; CODE XREF: WmiQueryTraceInformation+140↑j
                mov     eax, 0C00000A3h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D6D:                          ; CODE XREF: WmiQueryTraceInformation+149↑j
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D77:                          ; CODE XREF: WmiQueryTraceInformation+152↑j
                mov     eax, 0C00000F0h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D81:                          ; CODE XREF: WmiQueryTraceInformation+F1↑j
                mov     [rsi], r14d
                jmp     loc_140787907
; ---------------------------------------------------------------------------

loc_140787D89:                          ; CODE XREF: WmiQueryTraceInformation+FE↑j
                mov     eax, 0C00000A3h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D93:                          ; CODE XREF: WmiQueryTraceInformation+107↑j
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787D9D:                          ; CODE XREF: WmiQueryTraceInformation+110↑j
                mov     eax, 0C00000F0h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787DA7:                          ; CODE XREF: WmiQueryTraceInformation+E3↑j
                test    rsi, rsi
                jz      short loc_140787DB2
                mov     dword ptr [rsi], 78h ; 'x'

loc_140787DB2:                          ; CODE XREF: WmiQueryTraceInformation+59A↑j
                cmp     cs:byte_140C197B5, 0
                jnz     short loc_140787DC5
                mov     eax, 0C00000A3h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787DC5:                          ; CODE XREF: WmiQueryTraceInformation+5A9↑j
                cmp     r15d, 78h ; 'x'
                jz      short loc_140787DD5
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787DD5:                          ; CODE XREF: WmiQueryTraceInformation+5B9↑j
                test    rdi, rdi
                jnz     short loc_140787DE4
                mov     eax, 0C00000F0h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787DE4:                          ; CODE XREF: WmiQueryTraceInformation+5C8↑j
                movaps  xmm0, xmmword ptr cs:off_1409881B0
                movups  xmmword ptr [rdi], xmm0
                movaps  xmm1, xmmword ptr cs:off_1409881C0
                movups  xmmword ptr [rdi+10h], xmm1
                movaps  xmm0, xmmword ptr cs:off_1409881D0
                movups  xmmword ptr [rdi+20h], xmm0
                movaps  xmm1, xmmword ptr cs:off_1409881E0
                movups  xmmword ptr [rdi+30h], xmm1
                movaps  xmm0, xmmword ptr cs:off_1409881F0
                movups  xmmword ptr [rdi+40h], xmm0
                movaps  xmm1, xmmword ptr cs:off_140988200
                movups  xmmword ptr [rdi+50h], xmm1
                movaps  xmm0, xmmword ptr cs:off_140988210
                movups  xmmword ptr [rdi+60h], xmm0
                movsd   xmm0, cs:off_140988220
                movsd   qword ptr [rdi+70h], xmm0
                jmp     loc_140787930
; ---------------------------------------------------------------------------

loc_140787E42:                          ; CODE XREF: WmiQueryTraceInformation+164↑j
                mov     [rsi], r14d
                jmp     loc_14078797A
; ---------------------------------------------------------------------------

loc_140787E4A:                          ; CODE XREF: WmiQueryTraceInformation+171↑j
                mov     eax, 0C00000A3h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787E54:                          ; CODE XREF: WmiQueryTraceInformation+17A↑j
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787E5E:                          ; CODE XREF: WmiQueryTraceInformation+183↑j
                mov     eax, 0C00000F0h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787E68:                          ; CODE XREF: WmiQueryTraceInformation+D1↑j
                mov     r12, r13
                mov     [rsp+68h+var_28], r13
                mov     [rsp+68h+var_38], r13d
                cmp     r15d, r14d
                jz      short loc_140787E84
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787E84:                          ; CODE XREF: WmiQueryTraceInformation+668↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787E9B
                mov     eax, 0C0000030h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787E9B:                          ; CODE XREF: WmiQueryTraceInformation+67F↑j
                mov     ebx, [rax]
                mov     [rsp+68h+var_40], ebx
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     r8d, r8d
                mov     edx, ebx
                call    sub_140608410
                mov     r10, rax
                test    rax, rax
                jz      short loc_140787F22
                mov     r11d, cs:dword_140CFC404
                mov     r8d, r13d
                mov     [rsp+68h+var_38], r13d
                mov     r9d, 1

loc_140787ED4:                          ; CODE XREF: WmiQueryTraceInformation+6F8↓j
                cmp     r8d, r11d
                jnb     short loc_140787F0A
                mov     rax, [r10+438h]
                mov     edx, r8d
                shl     rdx, 6
                mov     rax, [rax+1028h]
                mov     ecx, [rsp+68h+var_40]
                mov     rax, [rax+rdx+8]
                add     r12, [rax+rcx*8]
                mov     [rsp+68h+var_28], r12
                add     r8d, r9d
                mov     [rsp+68h+var_38], r8d
                jmp     short loc_140787ED4
; ---------------------------------------------------------------------------

loc_140787F0A:                          ; CODE XREF: WmiQueryTraceInformation+6C7↑j
                xor     edx, edx
                mov     rcx, r10
                call    sub_1406084E4
                test    rdi, rdi
                jz      loc_140787C36
                jmp     loc_140787C33
; ---------------------------------------------------------------------------

loc_140787F22:                          ; CODE XREF: WmiQueryTraceInformation+6AD↑j
                mov     eax, 0C0000225h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787F2C:                          ; CODE XREF: WmiQueryTraceInformation+C8↑j
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jnz     short loc_140787F43
                mov     eax, 0C00000F3h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787F43:                          ; CODE XREF: WmiQueryTraceInformation+727↑j
                test    rsi, rsi
                jnz     short loc_140787F52
                mov     eax, 0C00000F2h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787F52:                          ; CODE XREF: WmiQueryTraceInformation+736↑j
                mov     dword ptr [rsi], 20h ; ' '
                cmp     r15d, 20h ; ' '
                jnb     short loc_140787F68
                mov     eax, 0C0000004h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787F68:                          ; CODE XREF: WmiQueryTraceInformation+74C↑j
                test    rdi, rdi
                jnz     short loc_140787F77
                mov     eax, 0C00000F0h
                jmp     loc_140788048
; ---------------------------------------------------------------------------

loc_140787F77:                          ; CODE XREF: WmiQueryTraceInformation+75B↑j
                mov     rax, [rax]
                mov     [rsp+68h+var_30], rax
                movzx   eax, ax
                mov     [rsp+68h+var_40], eax
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     r8d, r8d
                mov     edx, [rsp+68h+var_40]
                call    sub_140608410
                mov     r8, rax
                test    rax, rax
                jz      short loc_140788005
                mov     r9d, 1
                mov     [rdi], r9d
                mov     ecx, [rax+4]
                mov     [rdi+4], ecx
                mov     ecx, [rax+0F0h]
                mov     [rdi+8], ecx
                mov     ecx, [rax+0FCh]
                mov     [rdi+0Ch], ecx
                mov     ecx, [rax+0Ch]
                mov     [rdi+10h], ecx
                mov     ecx, [rax+0E0h]
                mov     [rdi+14h], ecx
                mov     eax, [rax+0D8h]
                mov     [rdi+1Ch], eax
                mov     eax, [r8+0E4h]
                mov     [rdi+18h], eax
                xor     edx, edx
                mov     rcx, r8
                call    sub_1406084E4
                jmp     short loc_14078800D
; ---------------------------------------------------------------------------

loc_140788005:                          ; CODE XREF: WmiQueryTraceInformation+7A4↑j
                mov     [rsp+68h+var_44], 0C0000296h

loc_14078800D:                          ; CODE XREF: WmiQueryTraceInformation+7F3↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_1407878D0
; ---------------------------------------------------------------------------

loc_140788020:                          ; CODE XREF: WmiQueryTraceInformation+64↑j
                mov     eax, 0C0000004h
                jmp     short loc_140788048
; ---------------------------------------------------------------------------

loc_140788027:                          ; CODE XREF: WmiQueryTraceInformation+75↑j
                mov     eax, 0C0000030h
                jmp     short loc_140788048
; ---------------------------------------------------------------------------

loc_14078802E:                          ; CODE XREF: WmiQueryTraceInformation+BA↑j
                mov     dword ptr [rsi], 4
                jmp     loc_1407878D0
; ---------------------------------------------------------------------------

loc_140788039:                          ; CODE XREF: WmiQueryTraceInformation+9A↑j
                mov     eax, 0C0000225h
                jmp     short loc_140788048
;   } // starts at 140787853
; ---------------------------------------------------------------------------

loc_140788040:                          ; DATA XREF: .rdata:000000014009CD04↑o
;   __except(1) // owned by 140787853
                mov     [rsp+68h+var_44], eax

loc_140788044:                          ; CODE XREF: WmiQueryTraceInformation:loc_1407878D0↑j
                mov     eax, [rsp+68h+var_44]

loc_140788048:                          ; CODE XREF: WmiQueryTraceInformation+290↑j
                                        ; WmiQueryTraceInformation+2B2↑j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140787810
WmiQueryTraceInformation endp
