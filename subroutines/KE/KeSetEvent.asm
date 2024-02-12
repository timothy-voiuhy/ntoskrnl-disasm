KeSetEvent      proc near               ; CODE XREF: sub_14020DBD8+73↑p
                                        ; sub_14020F4F0+164↑p ...

var_68          = byte ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042EF3C SIZE 00000059 BYTES

                push    rbx
                push    rdi
                push    r15
                sub     rsp, 70h
                test    byte ptr [rcx], 7Fh
                movzx   edi, r8b
                mov     r15d, edx
                mov     rbx, rcx
                jz      loc_14023DD02
                mov     dword ptr [rsp+88h+arg_0], 0

loc_14023DC17:                          ; CODE XREF: KeSetEvent+127↓j
                                        ; DATA XREF: .rdata:000000014005565C↑o ...
                mov     [rsp+88h+arg_8], rbp
                mov     [rsp+88h+var_20], rsi
                mov     [rsp+88h+var_28], r12
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042EF3C

loc_14023DC44:                          ; CODE XREF: KeSetEvent+1F134E↓j
                                        ; KeSetEvent+1F1358↓j ...
                mov     rbp, gs:20h
                mov     rcx, rbx
                mov     [rsp+88h+var_30], r13
                mov     [rsp+88h+var_38], r14
                call    sub_1402AF4F0
                mov     esi, [rbx+4]
                mov     dword ptr [rbx+4], 1
                test    esi, esi
                jnz     short loc_14023DCB5
                lea     r14, [rbx+8]
                mov     r13, [r14]
                cmp     dword ptr [rsp+88h+arg_0], esi
                jnz     short loc_14023DCA5
                cmp     r13, r14
                jz      short loc_14023DCB5

loc_14023DC82:                          ; CODE XREF: KeSetEvent+501↓j
                mov     rax, [r13+0]
                mov     rdx, r13
                mov     [rsp+88h+arg_18], rdx
                mov     r13, rax
                mov     rcx, [rdx+8]
                cmp     [rax+8], rdx
                jz      short loc_14023DD1C

loc_14023DC9E:                          ; CODE XREF: KeSetEvent+12F↓j
                                        ; KeSetEvent+2BF↓j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14023DCA5:                          ; CODE XREF: KeSetEvent+8B↑j
                cmp     r13, r14
                jnz     loc_14023DD60

loc_14023DCAE:                          ; CODE XREF: KeSetEvent+19E↓j
                mov     [r14+8], r14
                mov     [r14], r14

loc_14023DCB5:                          ; CODE XREF: KeSetEvent+7B↑j
                                        ; KeSetEvent+90↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                neg     dil
                mov     [rsp+88h+var_68], r12b
                mov     r9d, r15d
                mov     r8d, 1
                sbb     edx, edx
                mov     rcx, rbp
                and     edx, 3
                call    sub_14023E110
                mov     r13, [rsp+88h+var_30]
                mov     eax, esi
                mov     rsi, [rsp+88h+var_20]
                mov     r14, [rsp+88h+var_38]
                mov     rbp, [rsp+88h+arg_8]
                mov     r12, [rsp+88h+var_28]
                add     rsp, 70h
                pop     r15
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14023DD01:                         ; DATA XREF: .pdata:00000001400CBA84↑o
                                        ; .pdata:00000001400CBA90↑o
                align 2

loc_14023DD02:                          ; CODE XREF: KeSetEvent+16↑j
                cmp     dword ptr [rcx+4], 1
                jz      loc_14023DD96

loc_14023DD0C:                          ; CODE XREF: KeSetEvent+1A9↓j
                mov     dword ptr [rsp+88h+arg_0], 1
                jmp     loc_14023DC17
; ---------------------------------------------------------------------------

loc_14023DD1C:                          ; CODE XREF: KeSetEvent+AC↑j
                                        ; DATA XREF: .pdata:00000001400CBA90↑o ...
                cmp     [rcx], rdx
                jnz     loc_14023DC9E
                mov     [rcx], rax
                mov     [rax+8], rcx
                movzx   eax, byte ptr [rdx+10h]
                cmp     al, 1
                jnz     loc_14023DDAE
                movzx   r8d, word ptr [rdx+12h]
                xor     r9d, r9d
                mov     rcx, rbp
                call    sub_14023CD30
                test    al, al
                jz      loc_14023E0E8
                sub     dword ptr [rbx+4], 1
                jz      loc_14023DCB5
                jmp     loc_14023E0E8
; ---------------------------------------------------------------------------
                align 20h

loc_14023DD60:                          ; CODE XREF: KeSetEvent+B8↑j
                                        ; KeSetEvent+1A4↓j
                mov     rdx, r13
                mov     r13, [r13+0]
                mov     [rsp+88h+arg_18], rdx
                movzx   eax, byte ptr [rdx+10h]
                cmp     al, 1
                jnz     loc_14023DF48
                movzx   r8d, word ptr [rdx+12h]

loc_14023DD80:                          ; CODE XREF: KeSetEvent+50C↓j
                xor     r9d, r9d
                mov     rcx, rbp
                call    sub_14023CD30

loc_14023DD8B:                          ; CODE XREF: KeSetEvent+42A↓j
                cmp     r13, r14
                jz      loc_14023DCAE
                jmp     short loc_14023DD60
; ---------------------------------------------------------------------------

loc_14023DD96:                          ; CODE XREF: KeSetEvent+116↑j
                                        ; DATA XREF: .pdata:00000001400CBA9C↑o ...
                test    dil, dil
                jnz     loc_14023DD0C
                mov     eax, 1
                add     rsp, 70h
                pop     r15
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14023DDAE:                          ; CODE XREF: KeSetEvent+142↑j
                                        ; DATA XREF: .pdata:00000001400CBAA8↑o ...
                cmp     al, 2
                jnz     loc_14023E0D7
                mov     byte ptr [rdx+11h], 5
                mov     rax, [rdx+18h]
                mov     [rsp+88h+arg_0], rax
                add     rax, 8
                mov     [rsp+88h+var_58], rax
                mov     qword ptr [rdx], 0
                mov     rcx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14023DDF5
                test    al, 1
                jnz     loc_14023DF05

loc_14023DDF5:                          ; CODE XREF: KeSetEvent+1FB↑j
                                        ; KeSetEvent+318↓j ...
                mov     rax, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     [rsp+88h+var_50], rax
                mov     r9, [rax+8]
                mov     [rsp+88h+var_48], r9
                jnz     loc_14023DEEC

loc_14023DE1C:                          ; CODE XREF: KeSetEvent+310↓j
                mov     rcx, [rsp+88h+arg_0]
                call    sub_1402AF4F0
                mov     rdx, [rsp+88h+var_58]
                mov     rcx, [rsp+88h+arg_0]
                cmp     [rdx], rdx
                jz      short loc_14023DE99
                mov     eax, [rcx+28h]
                cmp     eax, [rcx+2Ch]
                jnb     short loc_14023DE99
                mov     r8, [rsp+88h+var_48]
                mov     rax, [r8+0E8h]
                cmp     rax, rcx
                jz      short loc_14023DE8F

loc_14023DE54:                          ; CODE XREF: KeSetEvent+2A7↓j
                mov     r8, [rsp+88h+arg_18]
                mov     rdx, rcx
                mov     rcx, [rsp+88h+var_50]
                call    sub_1402AF540
                mov     rcx, [rsp+88h+arg_0]
                test    al, al
                jz      loc_14042EF81

loc_14023DE79:                          ; CODE XREF: KeSetEvent+2DE↓j
                                        ; KeSetEvent+2E3↓j ...
                lock and dword ptr [rcx], 0FFFFFF7Fh
                sub     dword ptr [rbx+4], 1
                jz      loc_14023DCB5
                jmp     loc_14023E0E8
; ---------------------------------------------------------------------------

loc_14023DE8F:                          ; CODE XREF: KeSetEvent+262↑j
                cmp     byte ptr [r8+283h], 0Fh
                jnz     short loc_14023DE54

loc_14023DE99:                          ; CODE XREF: KeSetEvent+249↑j
                                        ; KeSetEvent+251↑j ...
                mov     r10d, [rcx+4]
                lea     r8, [rcx+18h]
                lea     eax, [r10+1]
                mov     [rcx+4], eax
                mov     r9, [r8+8]
                cmp     [r9], r8
                jnz     loc_14023DC9E
                mov     rax, [rsp+88h+arg_18]
                mov     [rax], r8
                mov     [rax+8], r9
                mov     [r9], rax
                mov     [r8+8], rax
                test    r10d, r10d
                jnz     short loc_14023DE79
                cmp     [rdx], rdx
                jz      short loc_14023DE79
                mov     rdx, rcx
                mov     rcx, [rsp+88h+var_50]
                call    sub_1402C2EC0
                mov     rcx, [rsp+88h+arg_0]
                jmp     short loc_14023DE79
; ---------------------------------------------------------------------------

loc_14023DEEC:                          ; CODE XREF: KeSetEvent+226↑j
                mov     rcx, r9
                call    sub_1405131B4
                movzx   r8d, al
                mov     rcx, r9
                call    sub_1405A7A60
                jmp     loc_14023DE1C
; ---------------------------------------------------------------------------

loc_14023DF05:                          ; CODE XREF: KeSetEvent+1FF↑j
                cmp     cl, 0Fh
                ja      loc_14023DDF5
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     rdx, [rsp+88h+arg_18]
                mov     [r9+14h], r8d
                jmp     loc_14023DDF5
; ---------------------------------------------------------------------------

loc_14023DF48:                          ; CODE XREF: KeSetEvent+185↑j
                cmp     al, 2
                jnz     loc_14023E0F6
                mov     byte ptr [rdx+11h], 5
                mov     rax, [rdx+18h]
                mov     [rsp+88h+arg_0], rax
                add     rax, 8
                mov     [rsp+88h+var_50], rax
                mov     qword ptr [rdx], 0
                mov     rcx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14023DF8F
                test    al, 1
                jnz     loc_14023E094

loc_14023DF8F:                          ; CODE XREF: KeSetEvent+395↑j
                                        ; KeSetEvent+4A7↓j ...
                mov     rax, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     [rsp+88h+var_58], rax
                mov     r9, [rax+8]
                mov     [rsp+88h+var_48], r9
                jnz     loc_14023E07B

loc_14023DFB6:                          ; CODE XREF: KeSetEvent+49F↓j
                mov     rcx, [rsp+88h+arg_0]
                call    sub_1402AF4F0
                mov     r9, [rsp+88h+var_50]
                mov     rcx, [rsp+88h+arg_0]
                cmp     [r9], r9
                jz      short loc_14023E028
                mov     eax, [rcx+28h]
                cmp     eax, [rcx+2Ch]
                jnb     short loc_14023E028
                mov     rdx, [rsp+88h+var_48]
                mov     rax, [rdx+0E8h]
                cmp     rax, rcx
                jz      short loc_14023E01F

loc_14023DFEE:                          ; CODE XREF: KeSetEvent+436↓j
                mov     r8, [rsp+88h+arg_18]
                mov     rdx, rcx
                mov     rcx, [rsp+88h+var_58]
                call    sub_1402AF540
                mov     rcx, [rsp+88h+arg_0]
                test    al, al
                jz      loc_14042EF8B

loc_14023E013:                          ; CODE XREF: KeSetEvent+46D↓j
                                        ; KeSetEvent+472↓j ...
                lock and dword ptr [rcx], 0FFFFFF7Fh
                jmp     loc_14023DD8B
; ---------------------------------------------------------------------------

loc_14023E01F:                          ; CODE XREF: KeSetEvent+3FC↑j
                cmp     byte ptr [rdx+283h], 0Fh
                jnz     short loc_14023DFEE

loc_14023E028:                          ; CODE XREF: KeSetEvent+3E3↑j
                                        ; KeSetEvent+3EB↑j ...
                mov     r10d, [rcx+4]
                lea     rdx, [rcx+18h]
                lea     eax, [r10+1]
                mov     [rcx+4], eax
                mov     r8, [rdx+8]
                cmp     [r8], rdx
                jnz     loc_14023DC9E
                mov     rax, [rsp+88h+arg_18]
                mov     [rax], rdx
                mov     [rax+8], r8
                mov     [r8], rax
                mov     [rdx+8], rax
                test    r10d, r10d
                jnz     short loc_14023E013
                cmp     [r9], r9
                jz      short loc_14023E013
                mov     rdx, rcx
                mov     rcx, [rsp+88h+var_58]
                call    sub_1402C2EC0
                mov     rcx, [rsp+88h+arg_0]
                jmp     short loc_14023E013
; ---------------------------------------------------------------------------

loc_14023E07B:                          ; CODE XREF: KeSetEvent+3C0↑j
                mov     rcx, r9
                call    sub_1405131B4
                movzx   r8d, al
                mov     rcx, r9
                call    sub_1405A7A60
                jmp     loc_14023DFB6
; ---------------------------------------------------------------------------

loc_14023E094:                          ; CODE XREF: KeSetEvent+399↑j
                cmp     cl, 0Fh
                ja      loc_14023DF8F
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     rdx, [rsp+88h+arg_18]
                mov     [r9+14h], r8d
                jmp     loc_14023DF8F
; ---------------------------------------------------------------------------

loc_14023E0D7:                          ; CODE XREF: KeSetEvent+1C0↑j
                xor     r9d, r9d
                mov     r8d, 100h
                mov     rcx, rbp
                call    sub_14023CD30

loc_14023E0E8:                          ; CODE XREF: KeSetEvent+15A↑j
                                        ; KeSetEvent+16A↑j ...
                cmp     r13, r14
                jz      loc_14023DCB5
                jmp     loc_14023DC82
; ---------------------------------------------------------------------------

loc_14023E0F6:                          ; CODE XREF: KeSetEvent+35A↑j
                mov     r8d, 100h
                jmp     loc_14023DD80
KeSetEvent      endp

; ---------------------------------------------------------------------------
algn_14023E101:                         ; DATA XREF: .pdata:00000001400CBAB4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14023E110   proc near               ; CODE XREF: sub_140216560+83E↑p
                                        ; KeReleaseMutant+1E3↑p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 000000014042EF96 SIZE 00000182 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movzx   ebx, dl
                mov     r14d, r9d
                and     bl, 1
                mov     r12d, r8d
                cmp     qword ptr [rcx+2D08h], 0
                mov     rdi, rcx
                jnz     short loc_14023E19D

loc_14023E13D:                          ; CODE XREF: sub_14023E110+152↓j
                test    bl, bl
                jnz     loc_14023E2F5
                movzx   ebx, [rsp+68h+arg_20]
                mov     rax, [rdi+10h]
                cmp     bl, 2
                jnb     loc_14023E26D
                mov     rsi, [rdi+8]
                test    rax, rax
                jnz     loc_14023E310
                mov     eax, [rsi+74h]
                test    al, 40h
                jnz     loc_14023E3BC

loc_14023E172:                          ; CODE XREF: sub_14023E110+297↓j
                                        ; sub_14023E110+2D3↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042F0C1

loc_14023E180:                          ; CODE XREF: sub_14023E110+1F0FB3↓j
                                        ; sub_14023E110+1F0FC1↓j ...
                mov     cr8, rbx

loc_14023E184:                          ; CODE XREF: sub_14023E110+160↓j
                                        ; sub_14023E110+16F↓j ...
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023E19D:                          ; CODE XREF: sub_14023E110+2B↑j
                test    bl, bl
                jnz     loc_14023E2DC

loc_14023E1A5:                          ; CODE XREF: sub_14023E110+1DF↓j
                mov     r13, [rdi+2D08h]
                mov     qword ptr [rdi+2D08h], 0

loc_14023E1B7:                          ; CODE XREF: sub_14023E110+158↓j
                movzx   eax, byte ptr [r13+173h]
                lea     rbp, [r13-0D8h]
                mov     rsi, [rbp+0D0h]
                mov     r13, [r13+0]
                lea     r15, [rax+rax*2]
                shl     r15, 4
                add     r15, rsi

loc_14023E1DC:                          ; CODE XREF: sub_14023E110+DF↓j
                movzx   eax, byte ptr [rsi+11h]
                cmp     al, 5
                jb      loc_14023E294

loc_14023E1E8:                          ; CODE XREF: sub_14023E110+1C7↓j
                add     rsi, 30h ; '0'
                cmp     rsi, r15
                jnz     short loc_14023E1DC
                mov     [rbp+236h], r12b
                mov     [rbp+237h], r14b
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_14042EF96

loc_14023E20F:                          ; CODE XREF: sub_14023E110+1F0E9A↓j
                mov     eax, [rbp+78h]
                bt      eax, 11h
                jnb     loc_14023E3F5
                bt      eax, 14h
                jb      loc_14023E4B8

loc_14023E226:                          ; CODE XREF: sub_14023E110+3C4↓j
                                        ; sub_14023E110+1F0EA6↓j
                lea     rcx, [rbp+0D8h]
                mov     [rsp+68h+arg_0], 0
                mov     qword ptr [rcx], 0

loc_14023E23D:                          ; CODE XREF: sub_14023E110+2E0↓j
                lea     rdx, [rcx-0D8h]
                mov     rcx, rdi
                lea     r8, [rsp+68h+arg_0]
                call    sub_14023E510
                mov     rcx, [rsp+68h+arg_0]
                test    rcx, rcx
                jnz     loc_14023E3E8

loc_14023E25F:                          ; CODE XREF: sub_14023E110+350↓j
                                        ; sub_14023E110+368↓j ...
                test    r13, r13
                jz      loc_14023E13D
                jmp     loc_14023E1B7
; ---------------------------------------------------------------------------

loc_14023E26D:                          ; CODE XREF: sub_14023E110+44↑j
                test    rax, rax
                jz      loc_14023E184
                movzx   eax, byte ptr [rdi+312Ah]
                test    al, al
                jnz     loc_14023E184
                mov     dl, 2
                mov     rcx, rdi
                call    sub_140308B50
                jmp     loc_14023E184
; ---------------------------------------------------------------------------

loc_14023E294:                          ; CODE XREF: sub_14023E110+D2↑j
                mov     rax, [rsi+20h]
                mov     rcx, rax
                mov     [rsp+68h+var_48], rax
                call    sub_1402AF4F0
                cmp     byte ptr [rsi+11h], 4
                jnz     short loc_14023E2CB
                mov     rcx, [rsi]
                mov     rax, [rsi+8]
                cmp     [rcx+8], rsi
                jz      short loc_14023E2BF

loc_14023E2B8:                          ; CODE XREF: sub_14023E110+1B2↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14023E2BF:                          ; CODE XREF: sub_14023E110+1A6↑j
                cmp     [rax], rsi
                jnz     short loc_14023E2B8
                mov     [rax], rcx
                mov     [rcx+8], rax

loc_14023E2CB:                          ; CODE XREF: sub_14023E110+199↑j
                mov     rax, [rsp+68h+var_48]
                lock and dword ptr [rax], 0FFFFFF7Fh
                jmp     loc_14023E1E8
; ---------------------------------------------------------------------------

loc_14023E2DC:                          ; CODE XREF: sub_14023E110+8F↑j
                shr     edx, 1
                and     dl, 1
                movzx   r8d, dl
                mov     edx, r14d
                call    sub_1402CFD70
                test    al, al
                jz      loc_14023E1A5

loc_14023E2F5:                          ; CODE XREF: sub_14023E110+2F↑j
                mov     rcx, [rdi+8]
                movzx   eax, [rsp+68h+arg_20]
                or      dword ptr [rcx+74h], 4
                mov     [rcx+186h], al
                jmp     loc_14023E184
; ---------------------------------------------------------------------------

loc_14023E310:                          ; CODE XREF: sub_14023E110+51↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402423B0
                mov     rbp, gs:20h
                mov     [rsp+68h+arg_8], 0
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14042EFBB

loc_14023E33B:                          ; CODE XREF: sub_14023E110+39D↓j
                                        ; sub_14023E110+1F0EAF↓j ...
                lock bts qword ptr [rdi+30h], 0
                jb      loc_14023E47D
                mov     rbp, [rdi+10h]
                mov     qword ptr [rdi+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402CC660
                sti
                mov     [rdi+8], rbp
                movzx   eax, byte ptr [rbp+184h]
                cmp     al, 1
                jz      loc_14042F024

loc_14023E377:                          ; CODE XREF: sub_14023E110+1F0F31↓j
                mov     byte ptr [rbp+184h], 2
                mov     rdx, rsi
                mov     rcx, rdi
                mov     byte ptr [rsi+283h], 20h ; ' '
                mov     [rsi+186h], bl
                call    sub_1402CE090
                movzx   r8d, bl
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1404058F0
                test    al, al
                jz      loc_14023E172
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14023E3CA
                jmp     loc_14042F046
; ---------------------------------------------------------------------------

loc_14023E3BC:                          ; CODE XREF: sub_14023E110+5C↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042F07F

loc_14023E3CA:                          ; CODE XREF: sub_14023E110+2A5↑j
                                        ; sub_14023E110+1F0F38↓j ...
                mov     eax, 1
                mov     cr8, rax
                and     dword ptr [rsi+74h], 0FFFFFFBFh
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                jmp     loc_14023E172
; ---------------------------------------------------------------------------

loc_14023E3E8:                          ; CODE XREF: sub_14023E110+149↑j
                mov     rax, [rcx]
                mov     [rsp+68h+arg_0], rax
                jmp     loc_14023E23D
; ---------------------------------------------------------------------------

loc_14023E3F5:                          ; CODE XREF: sub_14023E110+106↑j
                mov     rsi, [rbp+0B8h]
                mov     rcx, rsi
                call    sub_1402AF4F0
                mov     eax, [rsi+348h]
                test    al, 7
                jnz     loc_14023E4F7
                mov     eax, 8
                lock xadd [rsi+348h], eax
                lock and dword ptr [rsi], 0FFFFFF7Fh
                lock btr dword ptr [rbp+78h], 14h
                mov     byte ptr [rbp+184h], 6
                add     rbp, 0D8h
                prefetchw byte ptr cs:qword_140C31E80
                mov     rax, cs:qword_140C31E80

loc_14023E448:                          ; CODE XREF: sub_14023E110+34B↓j
                mov     [rbp+0], rax
                mov     rcx, rax
                lock cmpxchg cs:qword_140C31E80, rbp
                cmp     rax, rcx
                jnz     short loc_14023E448
                test    rax, rax
                jnz     loc_14023E25F
                xor     r8d, r8d
                lea     edx, [rax+0Ah]
                lea     rcx, dword_140C31E40
                call    KeSetEvent
                jmp     loc_14023E25F
; ---------------------------------------------------------------------------

loc_14023E47D:                          ; CODE XREF: sub_14023E110+232↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14042EFE2
                nop     dword ptr [rax]

loc_14023E490:                          ; CODE XREF: sub_14023E110+391↓j
                                        ; sub_14023E110+1F0ED6↓j ...
                lea     rcx, [rsp+68h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rdi+30h]
                test    rax, rax
                jnz     short loc_14023E490
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_14023E33B
                jmp     loc_14042F009
; ---------------------------------------------------------------------------

loc_14023E4B8:                          ; CODE XREF: sub_14023E110+110↑j
                lock btr dword ptr [rbp+78h], 14h
                mov     rcx, [rbp+0B8h]
                mov     eax, 8
                lock xadd [rcx+348h], eax
                test    al, 7
                jz      loc_14023E226
                mov     rsi, [rbp+0B8h]
                mov     rcx, rsi
                call    sub_1402AF4F0
                mov     eax, [rsi+348h]
                test    al, 7
                jz      loc_14042EFAF

loc_14023E4F7:                          ; CODE XREF: sub_14023E110+2FC↑j
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140328CB0
                jmp     loc_14023E25F
sub_14023E110   endp

; ---------------------------------------------------------------------------
algn_14023E507:                         ; DATA XREF: .rdata:0000000140055734↑o
                                        ; .pdata:00000001400CBAC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14023E510   proc near               ; CODE XREF: sub_14023E110+13C↑p
                                        ; sub_1402423B0+33F↓p ...

var_1C8         = qword ptr -1C8h
var_1B8         = byte ptr -1B8h
var_1B4         = dword ptr -1B4h
var_1B0         = byte ptr -1B0h
var_1AC         = dword ptr -1ACh
var_1A8         = qword ptr -1A8h
var_1A0         = dword ptr -1A0h
var_198         = qword ptr -198h
var_190         = xmmword ptr -190h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = dword ptr -178h
var_174         = dword ptr -174h
var_170         = dword ptr -170h
var_16C         = dword ptr -16Ch
var_168         = dword ptr -168h
var_164         = dword ptr -164h
var_160         = dword ptr -160h
var_15C         = dword ptr -15Ch
var_158         = qword ptr -158h
var_150         = xmmword ptr -150h
var_140         = qword ptr -140h
var_138         = xmmword ptr -138h
var_128         = qword ptr -128h
var_120         = xmmword ptr -120h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_8           = dword ptr -8

; FUNCTION CHUNK AT 000000014042F118 SIZE 00000624 BYTES

; __unwind { // __GSHandlerCheck
                pushfq
                push    rbx
                push    rbp
                push    rdi
                push    r13
                push    r15
                sub     rsp, 1B8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1E8h+var_58], rax
                mov     rbp, [rdx+48h]
                xor     r13d, r13d
                cmp     byte ptr [rdx+236h], 1
                xorps   xmm0, xmm0
                mov     [rsp+1E8h+var_158], r8
                mov     rbx, rdx
                mov     [rsp+1E8h+var_1A8], rcx
                movups  [rsp+1E8h+var_190], xmm0
                mov     [rsp+1E8h+var_1AC], r13d
                mov     [rsp+1E8h+var_198], r13
                mov     [rsp+1E8h+var_1A0], r13d
                jnz     loc_14023EA92
                movzx   r15d, byte ptr [rdx+237h]

loc_14023E575:                          ; CODE XREF: sub_14023E510+585↓j
                mov     rdi, gs:20h
                mov     [rsp+1E8h+var_180], r13d
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042F118

loc_14023E593:                          ; CODE XREF: sub_14023E510+C4D↓j
                                        ; sub_14023E510+1F0C0C↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_14023F12C
                test    dword ptr [rbx+78h], 400000h
; } // starts at 14023E510

loc_14023E5A7:                          ; DATA XREF: .rdata:0000000140055764↑o
                                        ; .rdata:0000000140055780↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+1E8h+var_48], r14
                jnz     loc_14042F181
                xor     r14b, r14b

loc_14023E5B8:                          ; CODE XREF: sub_14023E510+1F0DB4↓j
                movzx   eax, byte ptr [rbx+236h]
; } // starts at 14023E5A7

loc_14023E5BF:                          ; DATA XREF: .rdata:0000000140055780↑o
                                        ; .pdata:00000001400CBAD8↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+1E8h+var_38], rsi
                mov     [rsp+1E8h+var_40], r12
                test    al, al
                jz      loc_14023EE61
                cmp     byte ptr [rbx+0C3h], 10h
                jge     loc_14023EDE8
                mov     eax, ds:0FFFFF78000000320h
                xor     dil, dil
                sub     eax, [rbx+1B4h]
                cmp     rbp, [rbx+20h]
                jnb     loc_14023F0C9

loc_14023E600:                          ; CODE XREF: sub_14023E510+BC9↓j
                cmp     dil, 4
                jnb     loc_14023EAF4
                cmp     byte ptr [rbx+233h], 0Eh
                jge     loc_14023EAF4
                cmp     eax, 2
                jnb     loc_14023EAE7

loc_14023E620:                          ; CODE XREF: sub_14023E510+5DE↓j
                                        ; sub_14023E510+653↓j ...
                mov     rax, [rbx+220h]
                movzx   eax, byte ptr [rax+73Ah]
                cmp     al, 2
                jz      loc_14023EE4A

loc_14023E636:                          ; CODE XREF: sub_14023E510+93E↓j
                mov     eax, [rbx+78h]
                test    al, 8
                movzx   eax, dil
                setz    cl
                not     al
                and     cl, al
                test    cl, 1
                jz      loc_14023EE05
                movsx   r8d, byte ptr [rbx+0C3h]
                test    r8b, r8b
                jle     loc_14023EE05
                movzx   r9d, byte ptr [rbx+234h]
                test    r9b, r9b
                jnz     loc_14023EDF0
                movzx   edx, dil
                shr     dl, 1

loc_14023E677:                          ; CODE XREF: sub_14023E510+8EF↓j
                movsx   r11d, byte ptr [rbx+233h]
                movsx   r10d, r15b
                add     r10d, r11d
                mov     esi, r10d
                test    dl, 1
                jnz     loc_14023EE53

loc_14023E692:                          ; CODE XREF: sub_14023E510+94C↓j
                cmp     esi, 10h
                jge     loc_14023F0BF

loc_14023E69B:                          ; CODE XREF: sub_14023E510+BB4↓j
                cmp     esi, r8d
                jg      loc_14023EEB1

loc_14023E6A4:                          ; CODE XREF: sub_14023E510+8FE↓j
                                        ; sub_14023E510+91A↓j ...
                movzx   eax, byte ptr [rbx+236h]
                shr     dil, 3

loc_14023E6AF:                          ; CODE XREF: sub_14023E510+8DB↓j
                cmp     al, 2
                jz      loc_14023EB98

loc_14023E6B7:                          ; CODE XREF: sub_14023E510+71B↓j
                                        ; sub_14023E510+72E↓j
                test    dil, dil
                jnz     loc_14023EAC2

loc_14023E6C0:                          ; CODE XREF: sub_14023E510+5D2↓j
                                        ; sub_14023E510+966↓j ...
                mov     r12d, [rbx+24Ch]
                mov     [rsp+1E8h+var_1B4], r12d
                mov     [rbx+235h], r13w
                cmp     [rbx+1E4h], r13d
                jnz     loc_14023EA8A
                cmp     byte ptr [rbx+186h], 1
                jz      loc_14023EA8A
                xor     r14b, r14b

loc_14023E6F1:                          ; CODE XREF: sub_14023E510+57D↓j
                xor     bpl, bpl
                btr     dword ptr [rbx+74h], 1
                mov     rax, cs:qword_140CFC558
                setb    r15b
                cmp     [rbx+238h], rax
                jnz     loc_14023F114

loc_14023E711:                          ; CODE XREF: sub_14023E510+C09↓j
                                        ; sub_14023E510+C17↓j
                cmp     cs:dword_140CFC594, r13d
                movzx   edx, word ptr [rbx+248h]
                mov     rcx, [rbx+240h]
                mov     word ptr [rsp+1E8h+var_190+8], dx
                mov     qword ptr [rsp+1E8h+var_190], rcx
                jnz     short loc_14023E74B
                mov     eax, cs:dword_140C31BEC
                cmp     eax, 4
                jz      loc_14042F3F3
                movzx   edx, word ptr [rsp+1E8h+var_190+8]
                mov     rcx, qword ptr [rsp+1E8h+var_190]

loc_14023E74B:                          ; CODE XREF: sub_14023E510+220↑j
                lea     rax, [rcx-1]
                mov     r13d, 1
                lea     r8, cs:140000000h
                test    rcx, rax
                jz      loc_14023F060
                cmp     [rbx+7Dh], bpl
                jnz     loc_14042F4C7
                cmp     cs:dword_140CFC614, 0
                mov     r10, [rsp+1E8h+var_1A8]
                jnz     loc_14042F4A2

loc_14023E781:                          ; CODE XREF: sub_14023E510+1F0F9F↓j
                                        ; sub_14023E510+1F0FA8↓j ...
                lea     r9, [rsp+1E8h+var_1AC]
                mov     byte ptr [rsp+1E8h+var_1C8], bpl
                lea     r8, [rsp+1E8h+var_190]
                mov     rdx, rbx
                mov     rcx, r10
                call    sub_14023F430
                mov     rsi, rax

loc_14023E79E:                          ; CODE XREF: sub_14023E510+BAA↓j
                                        ; sub_14023E510+1F0FD1↓j
                mov     r12d, [rsi+24h]
                mov     [rbx+218h], r12d
                mov     rdi, [rbx+68h]
                test    rdi, rdi
                jnz     loc_14023EFF9

loc_14023E7B6:                          ; CODE XREF: sub_14023E510+AF2↓j
                mov     [rsp+1E8h+var_198], rdi
                test    rdi, rdi
                jnz     loc_14023EFDA

loc_14023E7C4:                          ; CODE XREF: sub_14023E510+AE1↓j
                                        ; sub_14023E510+1F0FDF↓j
                cmp     [rsp+1E8h+var_1AC], 0
                jz      loc_14023EC43
                mov     rax, [rsi+10h]
                test    rax, rax
                jnz     loc_14023F352

loc_14023E7DC:                          ; CODE XREF: sub_14023E510+E46↓j
                mov     r14d, 2
                mov     edi, r14d
                test    r15b, r15b
                jnz     loc_14023F388

loc_14023E7EE:                          ; CODE XREF: sub_14023E510+E7D↓j
                test    byte ptr [rbx+2], 4
                jnz     loc_14023F044

loc_14023E7F8:                          ; CODE XREF: sub_14023E510+B4B↓j
                movzx   ecx, byte ptr [rbx+0C3h]

loc_14023E7FF:                          ; CODE XREF: sub_14023E510+B45↓j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_14042F4FB

loc_14023E815:                          ; CODE XREF: sub_14023E510+1F1006↓j
                mov     [rsi+10h], rbx
                cmp     rbx, [rsi+18h]
                jz      loc_14042F51B
                xor     cl, cl

loc_14023E825:                          ; CODE XREF: sub_14023E510+1F100F↓j
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jz      short loc_14023E834
                mov     [rax+10h], cl

loc_14023E834:                          ; CODE XREF: sub_14023E510+31F↑j
                movzx   eax, byte ptr [rbx+184h]
                cmp     al, r13b
                jz      loc_14023F392
                test    dil, 4
                jnz     loc_14023F392

loc_14023E84E:                          ; CODE XREF: sub_14023E510+E9F↓j
                mov     byte ptr [rbx+184h], 3
                movzx   eax, byte ptr [rsi+23h]
                mov     rcx, [rsi+0C0h]
                mov     byte ptr [rsi+312Bh], 0
                test    r13b, al
                jnz     loc_14042F524
                inc     eax
                mov     [rsi+23h], al
                cmp     eax, r13d
                jnz     short loc_14023E886
                movzx   eax, byte ptr [rsi+0D1h]
                lock btr [rcx], rax

loc_14023E886:                          ; CODE XREF: sub_14023E510+368↑j
                movzx   eax, byte ptr [rsi+0D1h]
                lock btr [rcx+18h], rax
                mov     rax, [rsi+8458h]
                not     rax
                lock and [rcx+8], rax
                mov     rax, [rsi+8458h]
                not     rax
                lock and [rcx+10h], rax
                mov     rax, [rcx+18h]
                not     rax
                and     rax, [rsi+8458h]
                cmp     rax, [rsi+0C8h]
                jnz     short loc_14023E8D5
                movzx   eax, byte ptr [rsi+0D1h]
                lock bts [rcx+10h], rax

loc_14023E8D5:                          ; CODE XREF: sub_14023E510+3B6↑j
                lock and qword ptr [rsi+30h], 0
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_140245F90
                mov     ebp, [rbx+24Ch]
                movsx   edi, byte ptr [rbx+0C3h]
                mov     qword ptr [rbx+40h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042F52B

loc_14023E919:                          ; CODE XREF: sub_14023E510+1F101F↓j
                                        ; sub_14023E510+1F102E↓j ...
                mov     rdx, [rsp+1E8h+var_1A8]
                cmp     rsi, rdx
                jz      loc_14023EA23
                cmp     byte ptr [rsi+7], 0
                jz      loc_14023EA23
                mov     rax, gs:20h
                lea     rcx, [rsp+1E8h+var_108]
                xorps   xmm0, xmm0
                xor     edx, edx
                movups  [rsp+1E8h+var_138], xmm0
                mov     r8d, 0A8h
                mov     dword ptr [rsp+1E8h+var_138], 6
                inc     dword ptr [rax+84D4h]
                xor     eax, eax
                mov     [rsp+1E8h+var_128], rax
                mov     dword ptr [rsp+1E8h+var_138+8], r12d
                call    memset
                mov     rax, cs:qword_140C50770
                lea     rcx, [r12+r12*2]
                movups  xmm0, xmmword ptr [rax+rcx*8]
                movups  [rsp+1E8h+var_120], xmm0
                movsd   xmm1, qword ptr [rax+rcx*8+10h]
                movsd   [rsp+1E8h+var_110], xmm1
                mov     rcx, cs:qword_140C50840
                mov     [rsp+1E8h+var_168], 0FFFFFFFFh
                mov     [rsp+1E8h+var_164], r13d
                mov     eax, [rcx+14h]
                mov     [rsp+1E8h+var_15C], eax
                mov     eax, [rcx+10h]
                mov     [rsp+1E8h+var_160], eax
                mov     rax, cs:qword_140C50778
                mov     rax, [rax+78h]
                cli
                lea     rcx, [rsp+1E8h+var_168]
                mov     r9d, 2Fh ; '/'
                mov     [rsp+1E8h+var_1C8], rcx
                lea     r8, [rsp+1E8h+var_120]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+1E8h+var_160]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                mov     ecx, 200h
                test    [rsp+1E8h+var_8], ecx
                jnz     short loc_14023EA87

loc_14023EA1E:                          ; CODE XREF: sub_14023E510+578↓j
                mov     rdx, [rsp+1E8h+var_1A8]

loc_14023EA23:                          ; CODE XREF: sub_14023E510+411↑j
                                        ; sub_14023E510+41B↑j
                mov     eax, cs:dword_140CFC450
                test    r14b, al
                jz      short loc_14023EA3E
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_14042F54F

loc_14023EA3E:                          ; CODE XREF: sub_14023E510+51C↑j
                                        ; sub_14023E510+867↓j ...
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jnz     loc_14042F5E0

loc_14023EA4E:                          ; CODE XREF: sub_14023E510+ABF↓j
                                        ; sub_14023E510+1F1227↓j
                mov     rsi, [rsp+1E8h+var_38]
                mov     r12, [rsp+1E8h+var_40]
                mov     r14, [rsp+1E8h+var_48]
                mov     rcx, [rsp+1E8h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1B8h
                pop     r15
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                pop     rcx
                retn
; } // starts at 14023E5BF
; ---------------------------------------------------------------------------
; __unwind { // __GSHandlerCheck
byte_14023EA86  db 0CCh                 ; DATA XREF: .pdata:00000001400CBAE4↑o
                                        ; .pdata:00000001400CBAF0↑o
; } // starts at 14023EA86
; ---------------------------------------------------------------------------

loc_14023EA87:                          ; CODE XREF: sub_14023E510+50C↑j
                                        ; DATA XREF: .pdata:00000001400CBAF0↑o ...
                sti
                jmp     short loc_14023EA1E
; ---------------------------------------------------------------------------

loc_14023EA8A:                          ; CODE XREF: sub_14023E510+1CB↑j
                                        ; sub_14023E510+1D8↑j
                mov     r14b, 1
                jmp     loc_14023E6F1
; ---------------------------------------------------------------------------

loc_14023EA92:                          ; CODE XREF: sub_14023E510+57↑j
                                        ; DATA XREF: .pdata:00000001400CBAFC↑o ...
; __unwind { // __GSHandlerCheck
                xor     r15b, r15b
                jmp     loc_14023E575
; } // starts at 14023EA92
; ---------------------------------------------------------------------------

loc_14023EA9A:                          ; CODE XREF: sub_14023E510+955↓j
                                        ; DATA XREF: .pdata:00000001400CBB08↑o ...
; __unwind { // __GSHandlerCheck
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1402CDEF0
                test    r14b, r14b
                jnz     short loc_14023EABA
                movsx   r8d, al
                xor     r9d, r9d
                mov     rdx, rbx
                xor     ecx, ecx
                call    sub_14028DBD0

loc_14023EABA:                          ; CODE XREF: sub_14023E510+597↑j
                mov     rcx, rbx
                call    sub_1402CD9E8

loc_14023EAC2:                          ; CODE XREF: sub_14023E510+1AA↑j
                                        ; sub_14023E510+96E↓j
                movzx   ecx, byte ptr [rbx+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rbx+78h]
                add     rcx, rbp
                test    al, 20h
                jnz     loc_14023F0DE

loc_14023EADE:                          ; CODE XREF: sub_14023E510+BD4↓j
                mov     [rbx+20h], rcx
                jmp     loc_14023E6C0
; ---------------------------------------------------------------------------

loc_14023EAE7:                          ; CODE XREF: sub_14023E510+10A↑j
                cmp     [rbx+234h], r13b
                jnz     loc_14023E620

loc_14023EAF4:                          ; CODE XREF: sub_14023E510+F4↑j
                                        ; sub_14023E510+101↑j
                movzx   esi, byte ptr [rbx+0C3h]
                or      dil, 8
                cmp     sil, 10h
                jge     short loc_14023EB60
                movzx   eax, cs:byte_140CFB016
                test    al, al
                jnz     loc_14042F2C9

loc_14023EB14:                          ; CODE XREF: sub_14023E510+1F0DC9↓j
                                        ; sub_14023E510+1F0DEB↓j
                movzx   ecx, byte ptr [rbx+234h]
                movzx   edx, byte ptr [rbx+233h]
                movzx   eax, cl
                shr     al, 4
                movzx   r8d, cl
                sub     sil, al
                and     r8b, 0Fh
                sub     sil, r8b
                dec     sil
                movzx   eax, sil
                cmp     al, dl
                cmovge  edx, eax
                movzx   esi, dl
                test    cl, cl
                jnz     loc_14023F1CB

loc_14023EB4D:                          ; CODE XREF: sub_14023E510+CD6↓j
                                        ; sub_14023E510+1F0E17↓j
                mov     eax, [rbx+358h]
                mov     [rsp+1E8h+var_17C], r13d
                test    eax, eax
                jnz     loc_14023F1EB

loc_14023EB60:                          ; CODE XREF: sub_14023E510+5F3↑j
                                        ; sub_14023E510+CF6↓j
                test    r14b, r14b
                jnz     loc_14023E620
                mov     rcx, gs:20h
                cmp     sil, [rbx+0C3h]
                jg      loc_14023F410

loc_14023EB7F:                          ; CODE XREF: sub_14023E510+F07↓j
                                        ; sub_14023E510+1F0E27↓j ...
                test    dword ptr [rbx+78h], 400000h
                mov     [rbx+0C3h], sil
                jz      loc_14023E620
                jmp     loc_14042F369
; ---------------------------------------------------------------------------

loc_14023EB98:                          ; CODE XREF: sub_14023E510+1A1↑j
                movzx   edx, byte ptr [rbx+0C3h]
                test    dl, dl
                jle     loc_14023EE7B
                movzx   ecx, byte ptr [rbx+237h]
                cmp     dl, cl
                jge     loc_14023EE7B
                cmp     dl, 0Dh
                jge     loc_14023EE7B
                mov     r8d, [rbx+78h]
                test    r8b, 8
                jnz     loc_14023EE7B
                mov     esi, 0Dh
                mov     eax, r8d
                cmp     cl, sil
                cmovl   esi, ecx
                movzx   ecx, sil
                sub     cl, dl
                shl     cl, 4
                add     [rbx+234h], cl
                mov     rcx, gs:20h
                cmp     sil, dl
                jle     short loc_14023EC05
                cmp     [rbx+319h], r13b
                ja      loc_14042F39B

loc_14023EC05:                          ; CODE XREF: sub_14023E510+6E6↑j
                                        ; sub_14023E510+1F0E96↓j ...
                mov     [rbx+0C3h], sil
                bt      eax, 16h
                jb      loc_14042F3DA

loc_14023EC16:                          ; CODE XREF: sub_14023E510+1F0EDE↓j
                mov     rcx, [rbx+20h]
                cmp     rbp, rcx
                ja      short loc_14023EC31
                mov     eax, cs:dword_140CFC748
                sub     rcx, rbp
                cmp     rcx, rax
                jnb     loc_14023E6B7

loc_14023EC31:                          ; CODE XREF: sub_14023E510+70D↑j
                mov     eax, cs:dword_140CFC748
                add     rax, rbp
                mov     [rbx+20h], rax
                jmp     loc_14023E6B7
; ---------------------------------------------------------------------------

loc_14023EC43:                          ; CODE XREF: sub_14023E510+2B9↑j
                test    bpl, bpl
                jnz     loc_14023EF14
                mov     rbp, [rsi+10h]
                test    rbp, rbp
                jnz     loc_14023F007
                mov     rbp, [rsi+8]
                cmp     rbp, rbx
                jz      loc_14023F3D0
                test    dword ptr [rbp+78h], 400000h
                mov     [rsp+1E8h+var_1B0], 0
                jnz     loc_14042F616

loc_14023EC78:                          ; CODE XREF: sub_14023E510+ECE↓j
                                        ; sub_14023E510+1F1115↓j ...
                cmp     cs:byte_140CFC43E, 0
                jz      loc_14023EF01
                lea     r9, [rsp+1E8h+var_198]
                mov     r8, rbx
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CFBD0
                test    al, al
                jz      loc_14023F03A

loc_14023ECA0:                          ; CODE XREF: sub_14023E510+9FE↓j
                movzx   eax, byte ptr [rbp+184h]
                cmp     al, 2
                jnz     short loc_14023ECB2
                mov     [rbp+235h], r13b

loc_14023ECB2:                          ; CODE XREF: sub_14023E510+799↑j
                mov     r14d, 2
                mov     edi, r14d
                test    r15b, r15b
                jnz     loc_14023F168

loc_14023ECC4:                          ; CODE XREF: sub_14023E510+C5D↓j
                test    byte ptr [rbx+2], 4
                jnz     loc_14023F0F8

loc_14023ECCE:                          ; CODE XREF: sub_14023E510+BFF↓j
                movzx   ecx, byte ptr [rbx+0C3h]

loc_14023ECD5:                          ; CODE XREF: sub_14023E510+BF9↓j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_14042F650

loc_14023ECEB:                          ; CODE XREF: sub_14023E510+1F115B↓j
                mov     [rsi+10h], rbx
                cmp     rbx, [rsi+18h]
                jz      loc_14042F670
                xor     cl, cl

loc_14023ECFB:                          ; CODE XREF: sub_14023E510+1F1164↓j
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jz      short loc_14023ED0A
                mov     [rax+10h], cl

loc_14023ED0A:                          ; CODE XREF: sub_14023E510+7F5↑j
                movzx   eax, byte ptr [rbx+184h]
                cmp     al, r13b
                jz      loc_14023F172
                test    dil, 4
                jnz     loc_14023F172

loc_14023ED24:                          ; CODE XREF: sub_14023E510+C7F↓j
                mov     byte ptr [rbx+184h], 3
                lock and qword ptr [rsi+30h], 0
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_140245F90
                mov     ebp, [rbx+24Ch]
                movsx   edi, byte ptr [rbx+0C3h]
                mov     qword ptr [rbx+40h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042F679

loc_14023ED6F:                          ; CODE XREF: sub_14023E510+1F116D↓j
                                        ; sub_14023E510+1F117C↓j ...
                mov     r15, [rsp+1E8h+var_1A8]
                cmp     r15, rsi
                jz      loc_14023EA3E
                mov     rax, gs:20h
                lea     rcx, [rsp+1E8h+var_150]
                xorps   xmm0, xmm0
                movups  [rsp+1E8h+var_150], xmm0
                mov     dword ptr [rsp+1E8h+var_150], 6
                inc     dword ptr [rax+84D4h]
                xor     eax, eax
                mov     [rsp+1E8h+var_140], rax
                mov     dword ptr [rsp+1E8h+var_150+8], r12d
                lea     edx, [rax+2Fh]
                call    sub_140252160
                mov     eax, cs:dword_140CFC450
                test    r14b, al
                jz      loc_14023EA3E
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jz      loc_14023EA3E
                jmp     loc_14042F69D
; ---------------------------------------------------------------------------

loc_14023EDE8:                          ; CODE XREF: sub_14023E510+CE↑j
                mov     dil, 1
                jmp     loc_14023E6AF
; ---------------------------------------------------------------------------

loc_14023EDF0:                          ; CODE XREF: sub_14023E510+15B↑j
                test    r9b, 0F0h
                jnz     short loc_14023EE05
                movzx   edx, dil
                shr     dl, 1
                test    dl, 1
                jnz     loc_14023E677

loc_14023EE05:                          ; CODE XREF: sub_14023E510+139↑j
                                        ; sub_14023E510+14A↑j ...
                movzx   eax, cs:byte_140CFB016
                test    al, al
                jnz     loc_14023E6A4
                mov     edx, [rbx+78h]
                movzx   eax, dil
                and     al, 6
                cmp     al, 6
                setz    cl
                test    dl, 8
                setz    al
                test    al, cl
                jz      loc_14023E6A4
                cmp     [rbx+0C3h], r13b
                jle     loc_14023E6A4
                mov     rcx, rbx
                call    sub_1402D0AD4
                jmp     loc_14023E6A4
; ---------------------------------------------------------------------------

loc_14023EE4A:                          ; CODE XREF: sub_14023E510+120↑j
                or      dil, 2
                jmp     loc_14023E636
; ---------------------------------------------------------------------------

loc_14023EE53:                          ; CODE XREF: sub_14023E510+17C↑j
                movsx   eax, byte ptr cs:dword_140CFC5E0
                add     esi, eax
                jmp     loc_14023E692
; ---------------------------------------------------------------------------

loc_14023EE61:                          ; CODE XREF: sub_14023E510+C1↑j
                cmp     rbp, [rbx+20h]
                jnb     loc_14023EA9A
                movzx   eax, byte ptr [rbx+235h]
                mov     [rsp+1E8h+var_1A0], eax
                jmp     loc_14023E6C0
; ---------------------------------------------------------------------------

loc_14023EE7B:                          ; CODE XREF: sub_14023E510+691↑j
                                        ; sub_14023E510+6A0↑j ...
                test    dil, dil
                jnz     loc_14023EAC2
                mov     rcx, [rbx+20h]
                cmp     rbp, rcx
                ja      short loc_14023EE9F
                mov     eax, cs:dword_140CFC748
                sub     rcx, rbp
                cmp     rcx, rax
                jnb     loc_14023E6C0

loc_14023EE9F:                          ; CODE XREF: sub_14023E510+97B↑j
                mov     eax, cs:dword_140CFC748
                add     rax, rbp
                mov     [rbx+20h], rax
                jmp     loc_14023E6C0
; ---------------------------------------------------------------------------

loc_14023EEB1:                          ; CODE XREF: sub_14023E510+18E↑j
                xor     cl, cl
                cmp     esi, r10d
                jg      loc_14023F0E9

loc_14023EEBC:                          ; CODE XREF: sub_14023E510+BE3↓j
                movzx   eax, r9b
                xor     al, cl
                and     al, 0Fh
                xor     al, r9b
                mov     [rbx+234h], al
                mov     rcx, gs:20h
                cmp     sil, r8b
                jle     short loc_14023EEE8
                cmp     [rbx+319h], r13b
                ja      loc_14023F316

loc_14023EEE8:                          ; CODE XREF: sub_14023E510+9C9↑j
                                        ; sub_14023E510+E11↓j ...
                test    dword ptr [rbx+78h], 400000h
                mov     [rbx+0C3h], sil
                jz      loc_14023E6A4
                jmp     loc_14042F382
; ---------------------------------------------------------------------------

loc_14023EF01:                          ; CODE XREF: sub_14023E510+76F↑j
                movzx   eax, byte ptr [rbp+0C3h]
                cmp     [rbx+0C3h], al
                jg      loc_14023ECA0

loc_14023EF14:                          ; CODE XREF: sub_14023E510+736↑j
                                        ; sub_14023E510+B2F↓j ...
                mov     r12d, [rsp+1E8h+var_1B4]
                xor     r13d, r13d

loc_14023EF1C:                          ; CODE XREF: sub_14023E510+1F0F8D↓j
                mov     r10, rdi
                test    r15b, r15b
                jnz     short loc_14023EF38
                mov     eax, ds:0FFFFF78000000320h
                mov     rdi, [rsp+1E8h+var_198]
                mov     [rbx+1B4h], eax

loc_14023EF38:                          ; CODE XREF: sub_14023E510+A12↑j
                test    rdi, rdi
                jnz     short loc_14023EF4A
                mov     r10, [rbx+68h]
                test    r10, r10
                jnz     loc_14023F2D8

loc_14023EF4A:                          ; CODE XREF: sub_14023E510+A2B↑j
                                        ; sub_14023E510+DD1↓j
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_14042F6F6

loc_14023EF5A:                          ; CODE XREF: sub_14023E510+1F11EA↓j
                xor     cl, cl
                mov     byte ptr [rbx+184h], 1
                mov     [rsp+1E8h+var_1B8], cl
                test    r10, r10
                jnz     loc_14023F194

loc_14023EF70:                          ; CODE XREF: sub_14023E510+C8B↓j
                                        ; sub_14023E510+CB6↓j
                movsx   r8d, byte ptr [rbx+0C3h]
                mov     rdx, rbx
                mov     r9d, [rsp+1E8h+var_1A0]
                mov     byte ptr [rsp+1E8h+var_1C8], cl
                mov     rcx, rsi
                call    sub_1403296D0

loc_14023EF8C:                          ; CODE XREF: sub_14023E510+DE9↓j
                lock and qword ptr [rsi+30h], 0
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_140245F90
                mov     edi, [rbx+24Ch]
                mov     [rbx+40h], r13
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042F6FF

loc_14023EFC5:                          ; CODE XREF: sub_14023E510+1F11F3↓j
                                        ; sub_14023E510+1F1202↓j ...
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jz      loc_14023EA4E
                jmp     loc_14042F723
; ---------------------------------------------------------------------------

loc_14023EFDA:                          ; CODE XREF: sub_14023E510+2AE↑j
                mov     rcx, rdi

loc_14023EFDD:                          ; CODE XREF: sub_14023E510+AE7↓j
                test    byte ptr [rcx+70h], 2
                jnz     loc_14042F4E6
                mov     rcx, [rcx+198h]
                test    rcx, rcx
                jz      loc_14023E7C4
                jmp     short loc_14023EFDD
; ---------------------------------------------------------------------------

loc_14023EFF9:                          ; CODE XREF: sub_14023E510+2A0↑j
                mov     eax, [rsi+0D8h]
                add     rdi, rax
                jmp     loc_14023E7B6
; ---------------------------------------------------------------------------

loc_14023F007:                          ; CODE XREF: sub_14023E510+743↑j
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140352724
                cmp     cs:byte_140CFC43E, 0
                jz      loc_14023F2FE
                lea     r9, [rsp+1E8h+var_198]
                mov     r8, rbx
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CFBD0
                test    al, al
                jnz     loc_14023F20B

loc_14023F03A:                          ; CODE XREF: sub_14023E510+78A↑j
                mov     rdi, [rsp+1E8h+var_198]
                jmp     loc_14023EF14
; ---------------------------------------------------------------------------

loc_14023F044:                          ; CODE XREF: sub_14023E510+2E2↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402D0980
                movzx   ecx, r13b
                test    al, al
                jnz     loc_14023E7FF
                jmp     loc_14023E7F8
; ---------------------------------------------------------------------------

loc_14023F060:                          ; CODE XREF: sub_14023E510+24F↑j
                mov     rdi, gs:20h
                xor     r9d, r9d
                bsr     rcx, rcx
                movzx   eax, dx
                shl     eax, 6
                add     eax, ecx
                mov     [rsp+1E8h+var_170], ecx
                mov     [rsp+1E8h+var_16C], r9d
                mov     eax, ds:rva dword_140D024D0[r8+rax*4]
                mov     rsi, ds:rva qword_140CFDCC0[r8+rax*8]

loc_14023F091:                          ; CODE XREF: sub_14023E510+E73↓j
                movzx   edx, r13b
                mov     rcx, rdi
                call    sub_140245F90
                lock bts qword ptr [rsi+30h], 0
                jb      loc_14023F361
                mov     eax, [rsp+1E8h+var_1AC]
                test    [rsi+23h], r13b
                cmovz   eax, r13d
                mov     [rsp+1E8h+var_1AC], eax
                jmp     loc_14023E79E
; ---------------------------------------------------------------------------

loc_14023F0BF:                          ; CODE XREF: sub_14023E510+185↑j
                mov     esi, 0Fh
                jmp     loc_14023E69B
; ---------------------------------------------------------------------------

loc_14023F0C9:                          ; CODE XREF: sub_14023E510+EA↑j
                mov     cl, 4
                cmp     eax, 2
                movzx   edi, cl
                mov     ecx, 5
                cmovb   edi, ecx
                jmp     loc_14023E600
; ---------------------------------------------------------------------------

loc_14023F0DE:                          ; CODE XREF: sub_14023E510+5C8↑j
                lock btr dword ptr [rbx+78h], 5
                jmp     loc_14023EADE
; ---------------------------------------------------------------------------

loc_14023F0E9:                          ; CODE XREF: sub_14023E510+9A6↑j
                movzx   ecx, sil
                sub     cl, r11b
                sub     cl, r15b
                jmp     loc_14023EEBC
; ---------------------------------------------------------------------------

loc_14023F0F8:                          ; CODE XREF: sub_14023E510+7B8↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402D0980
                movzx   ecx, r13b
                test    al, al
                jnz     loc_14023ECD5
                jmp     loc_14023ECCE
; ---------------------------------------------------------------------------

loc_14023F114:                          ; CODE XREF: sub_14023E510+1FB↑j
                mov     eax, [rbx+74h]
                test    al, 8
                jnz     loc_14023E711
                mov     rcx, rbx
                call    sub_1402BAAB8
                jmp     loc_14023E711
; } // starts at 14023EA9A
; ---------------------------------------------------------------------------

loc_14023F12C:                          ; CODE XREF: sub_14023E510+8A↑j
                                        ; DATA XREF: .pdata:00000001400CBB14↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042F13F
                nop     dword ptr [rax+00h]

loc_14023F140:                          ; CODE XREF: sub_14023E510+C41↓j
                                        ; sub_14023E510+1F0C33↓j ...
                lea     rcx, [rsp+1E8h+var_180]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_14023F140
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_14023E593
                jmp     loc_14042F166
; } // starts at 14023F12C
; ---------------------------------------------------------------------------

loc_14023F168:                          ; CODE XREF: sub_14023E510+7AE↑j
                                        ; DATA XREF: .pdata:00000001400CBB20↑o ...
; __unwind { // __GSHandlerCheck
                mov     edi, 6
                jmp     loc_14023ECC4
; ---------------------------------------------------------------------------

loc_14023F172:                          ; CODE XREF: sub_14023E510+804↑j
                                        ; sub_14023E510+80E↑j
                mov     ecx, [rbx+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     ecx, [rbx+1B4h]
                add     eax, ecx
                mov     [rbx+84h], eax
                jmp     loc_14023ED24
; ---------------------------------------------------------------------------

loc_14023F194:                          ; CODE XREF: sub_14023E510+A5A↑j
                test    dword ptr [rbx+78h], 0C00h
                jnz     loc_14023EF70
                lea     rax, [rsp+1E8h+var_1B8]
                xor     r9d, r9d
                mov     rdx, r10
                mov     [rsp+1E8h+var_1C8], rax
                mov     rcx, rbx
                call    sub_1402D0A30
                test    eax, eax
                jnz     loc_14023F2E6
                movzx   ecx, [rsp+1E8h+var_1B8]
                jmp     loc_14023EF70
; ---------------------------------------------------------------------------

loc_14023F1CB:                          ; CODE XREF: sub_14023E510+637↑j
                test    r8b, r8b
                jz      short loc_14023F1DF
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+368h], eax

loc_14023F1DF:                          ; CODE XREF: sub_14023E510+CBE↑j
                mov     [rbx+234h], r13b
                jmp     loc_14023EB4D
; ---------------------------------------------------------------------------

loc_14023F1EB:                          ; CODE XREF: sub_14023E510+64A↑j
                bsr     r8d, eax
                movsx   ecx, sil
                cmp     ecx, r8d
                movzx   esi, sil
                movzx   eax, r8b
                cmovl   esi, eax
                mov     [rsp+1E8h+var_17C], r8d
                jmp     loc_14023EB60
; ---------------------------------------------------------------------------

loc_14023F20B:                          ; CODE XREF: sub_14023E510+B24↑j
                                        ; sub_14023E510+E01↓j
                mov     [rbp+235h], r13b
                mov     r14d, 2
                test    r15b, r15b
                jnz     loc_14023F3E3

loc_14023F221:                          ; CODE XREF: sub_14023E510+ED9↓j
                test    byte ptr [rbx+2], 4
                jnz     loc_14023F3B4

loc_14023F22B:                          ; CODE XREF: sub_14023E510+EBB↓j
                movzx   ecx, byte ptr [rbx+0C3h]

loc_14023F232:                          ; CODE XREF: sub_14023E510+EB5↓j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_14042F5ED

loc_14023F248:                          ; CODE XREF: sub_14023E510+1F10F8↓j
                mov     [rsi+10h], rbx
                cmp     rbx, [rsi+18h]
                jz      loc_14042F60D
                xor     cl, cl

loc_14023F258:                          ; CODE XREF: sub_14023E510+1F1101↓j
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jz      short loc_14023F267
                mov     [rax+10h], cl

loc_14023F267:                          ; CODE XREF: sub_14023E510+D52↑j
                movzx   eax, byte ptr [rbx+184h]
                cmp     al, r13b
                jz      loc_14023F3EE
                test    r14b, 4
                jnz     loc_14023F3EE

loc_14023F281:                          ; CODE XREF: sub_14023E510+EFB↓j
                mov     rcx, [rsp+1E8h+var_158]
                mov     rdx, rbp
                mov     byte ptr [rbx+184h], 3
                call    sub_1402C34D0
                lock and qword ptr [rsi+30h], 0
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_140245F90
                mov     ebp, [rbx+24Ch]
                mov     rcx, rbx
                movsx   edi, byte ptr [rbx+0C3h]
                call    sub_1403261B0
                mov     rcx, [rsp+1E8h+var_1A8]
                mov     r8d, edi
                mov     rdx, rsi
                call    sub_1402897A0
                jmp     loc_14023EA3E
; ---------------------------------------------------------------------------

loc_14023F2D8:                          ; CODE XREF: sub_14023E510+A34↑j
                mov     eax, [rsi+0D8h]
                add     r10, rax
                jmp     loc_14023EF4A
; ---------------------------------------------------------------------------

loc_14023F2E6:                          ; CODE XREF: sub_14023E510+CAB↑j
                mov     r9d, [rsp+1E8h+var_1A0]
                mov     r8, rbx
                mov     rdx, r10
                mov     rcx, rsi
                call    sub_14030B5F0
                jmp     loc_14023EF8C
; ---------------------------------------------------------------------------

loc_14023F2FE:                          ; CODE XREF: sub_14023E510+B09↑j
                movzx   eax, byte ptr [rbp+0C3h]
                cmp     [rbx+0C3h], al
                jle     loc_14023EF14
                jmp     loc_14023F20B
; ---------------------------------------------------------------------------

loc_14023F316:                          ; CODE XREF: sub_14023E510+9D2↑j
                lea     rdx, [rbx+328h]
                cmp     qword ptr [rdx], 1
                jnz     loc_14023EEE8
                lea     r8, [rcx+8778h]
                test    r8, r8
                jz      loc_14023EEE8
                mov     rax, [r8]
                mov     [rdx], rax
                mov     [r8], rdx
                lock inc word ptr [rbx+364h]
                call    sub_14032A28C
                jmp     loc_14023EEE8
; ---------------------------------------------------------------------------

loc_14023F352:                          ; CODE XREF: sub_14023E510+2C6↑j
                cmp     rax, [rsi+18h]
                jz      loc_14023E7DC
                jmp     loc_14042F4F4
; ---------------------------------------------------------------------------

loc_14023F361:                          ; CODE XREF: sub_14023E510+B94↑j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140245F90
                nop     dword ptr [rax+rax+00h]

loc_14023F370:                          ; CODE XREF: sub_14023E510+E71↓j
                lea     rcx, [rsp+1E8h+var_16C]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_14023F370
                jmp     loc_14023F091
; ---------------------------------------------------------------------------

loc_14023F388:                          ; CODE XREF: sub_14023E510+2D8↑j
                mov     edi, 6
                jmp     loc_14023E7EE
; ---------------------------------------------------------------------------

loc_14023F392:                          ; CODE XREF: sub_14023E510+32E↑j
                                        ; sub_14023E510+338↑j
                mov     ecx, [rbx+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     ecx, [rbx+1B4h]
                add     eax, ecx
                mov     [rbx+84h], eax
                jmp     loc_14023E84E
; ---------------------------------------------------------------------------

loc_14023F3B4:                          ; CODE XREF: sub_14023E510+D15↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402D0980
                movzx   ecx, r13b
                test    al, al
                jnz     loc_14023F232
                jmp     loc_14023F22B
; ---------------------------------------------------------------------------

loc_14023F3D0:                          ; CODE XREF: sub_14023E510+750↑j
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402CDA30
                jmp     loc_14023EC78
; ---------------------------------------------------------------------------

loc_14023F3E3:                          ; CODE XREF: sub_14023E510+D0B↑j
                mov     r14d, 6
                jmp     loc_14023F221
; ---------------------------------------------------------------------------

loc_14023F3EE:                          ; CODE XREF: sub_14023E510+D61↑j
                                        ; sub_14023E510+D6B↑j
                mov     ecx, [rbx+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     ecx, [rbx+1B4h]
                add     eax, ecx
                mov     [rbx+84h], eax
                jmp     loc_14023F281
; ---------------------------------------------------------------------------

loc_14023F410:                          ; CODE XREF: sub_14023E510+669↑j
                cmp     [rbx+319h], r13b
                jbe     loc_14023EB7F
                jmp     loc_14042F32C
; } // starts at 14023F168
sub_14023E510   endp

; ---------------------------------------------------------------------------
algn_14023F422:                         ; DATA XREF: .pdata:00000001400CBB2C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=4Fh

sub_14023F430   proc near               ; CODE XREF: sub_14023E510+286↑p
                                        ; DATA XREF: .rdata:0000000140055878↑o ...

var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_100         = word ptr -100h
var_FE          = byte ptr -0FEh
var_FC          = dword ptr -0FCh
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_50          = qword ptr -50h
arg_20          = byte ptr  30h

; FUNCTION CHUNK AT 000000014042F73C SIZE 00000364 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-17h]
                sub     rsp, 0F8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_50], rax
                movzx   r12d, [rbp+4Fh+arg_20]
                xorps   xmm0, xmm0
                mov     r10, [r8]
                xor     r15b, r15b
                mov     [rbp+4Fh+var_98], r9
                mov     r13, rdx
                movzx   r9d, word ptr [r8+8]
                mov     r11, rcx
                mov     [rsp+130h+var_100], r9w
                mov     [rsp+130h+var_F8], rcx
                mov     [rsp+130h+var_FE], r12b
                mov     [rsp+130h+var_D8], 0
                movups  [rbp+4Fh+var_B8], xmm0
                mov     [rsp+130h+var_F0], r10
                mov     [rsp+130h+var_FC], r15d

loc_14023F49A:                          ; CODE XREF: sub_14023F430+1F0337↓j
                lea     rdi, cs:140000000h

loc_14023F4A1:                          ; CODE XREF: sub_14023F430+5B3↓j
                                        ; sub_14023F430+6EF↓j ...
                mov     eax, [r13+218h]
                btr     eax, 1Fh
                mov     word ptr [rbp+4Fh+var_B8+8], r9w
                mov     rsi, ds:rva qword_140CFDCC0[rdi+rax*8]
                movzx   eax, byte ptr [r11+0D0h]
                cmp     r9w, ax
                jnz     short loc_14023F4F8
                mov     [rsp+130h+var_108], r15b
                mov     r9, r10
                mov     r8, r13
                mov     byte ptr [rsp+130h+var_110], r12b
                mov     rdx, rsi
                mov     rcx, r11
                call    sub_14023FBB0
                mov     rbx, rax
                test    rax, rax
                jnz     loc_14023F59C
                mov     r10, [rsp+130h+var_F0]
                mov     r11, [rsp+130h+var_F8]

loc_14023F4F8:                          ; CODE XREF: sub_14023F430+95↑j
                mov     eax, [r13+24Ch]
                xor     ebx, ebx
                mov     r9, [rsi+0C0h]
                mov     edx, [rsp+130h+var_FC]
                mov     [rsp+130h+var_E0], r9
                mov     r14, ds:rva qword_140CFDCC0[rdi+rax*8]
                mov     qword ptr [rbp+4Fh+var_B8], r10
                mov     rdi, [r14+0C0h]
                cmp     r9, rdi
                cmovz   rbx, rsi
                mov     r15, [rdi]
                mov     r8, r15
                and     r8, r10
                mov     [rsp+130h+var_E8], r8
                mov     rax, r8
                test    dl, dl
                jnz     loc_14042F76C

loc_14023F544:                          ; CODE XREF: sub_14023F430+1F035E↓j
                test    rax, rax
                jz      loc_14023F6DA

loc_14023F54D:                          ; CODE XREF: sub_14023F430+1F033F↓j
                test    byte ptr [rdi+0B5h], 20h
                jz      short loc_14023F582
                test    r12b, r12b
                jnz     loc_14042F793

loc_14023F55F:                          ; CODE XREF: sub_14023F430+1F038D↓j
                mov     rdx, [rdi+8]
                mov     r8, [rsp+130h+var_E8]
                and     rdx, r8
                jz      loc_14023F6A3
                test    r12b, r12b
                jnz     loc_14042F7C2

loc_14023F57A:                          ; CODE XREF: sub_14023F430+1F03F1↓j
                mov     r8, rdx
                mov     [rsp+130h+var_E8], rdx

loc_14023F582:                          ; CODE XREF: sub_14023F430+124↑j
                                        ; sub_14023F430+283↓j ...
                test    [r14+0C8h], r8
                jz      short loc_14023F604
                mov     rbx, r14

loc_14023F58E:                          ; CODE XREF: sub_14023F430+1E0↓j
                                        ; sub_14023F430+26E↓j
                test    rbx, rbx
                jz      loc_14042F827

loc_14023F597:                          ; CODE XREF: sub_14023F430+62E↓j
                                        ; sub_14023F430+6AA↓j ...
                mov     r15d, [rsp+130h+var_FC]

loc_14023F59C:                          ; CODE XREF: sub_14023F430+B8↑j
                mov     rdi, gs:20h
                mov     [rbp+4Fh+var_C4], 0
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042F851

loc_14023F5BC:                          ; CODE XREF: sub_14023F430+562↓j
                                        ; sub_14023F430+1F0425↓j ...
                lock bts qword ptr [rbx+30h], 0
                jb      loc_14023F966
                movzx   eax, byte ptr [rbx+23h]
                test    al, al
                jnz     loc_14023F9AA

loc_14023F5D5:                          ; CODE XREF: sub_14023F430+1F048C↓j
                mov     rdi, [rbp+4Fh+var_98]
                mov     eax, 1
                mov     [rdi], eax
                mov     rax, rbx

loc_14023F5E3:                          ; CODE XREF: sub_14023F430+518↓j
                mov     rcx, [rbp+4Fh+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0F8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14023F604:                          ; CODE XREF: sub_14023F430+159↑j
                test    rbx, rbx
                jz      short loc_14023F616
                test    [rbx+0C8h], r8
                jnz     loc_14023F58E

loc_14023F616:                          ; CODE XREF: sub_14023F430+1D7↑j
                mov     rax, [r14+8458h]
                and     rax, r8
                jnz     loc_14023F959
                test    rbx, rbx
                jz      short loc_14023F63B
                mov     rax, [rbx+8458h]
                and     rax, r8
                jnz     loc_14023F99D

loc_14023F63B:                          ; CODE XREF: sub_14023F430+1F9↑j
                mov     eax, cs:dword_140CFB148
                test    al, 1
                jz      short loc_14023F65D
                mov     rax, [r14+8468h]
                and     rax, r8
                jz      loc_14042F830
                mov     r8, rax
                mov     [rsp+130h+var_E8], rax

loc_14023F65D:                          ; CODE XREF: sub_14023F430+213↑j
                                        ; sub_14023F430+531↓j ...
                movzx   ecx, byte ptr [r14+0D1h]
                movzx   edx, byte ptr [r14+0D0h]
                ror     r8, cl
                bsf     rax, r8
                shl     edx, 6
                add     ecx, eax
                mov     [rbp+4Fh+var_C8], 0
                and     ecx, 3Fh
                add     edx, ecx
                mov     [rbp+4Fh+var_C8], ecx
                lea     rcx, cs:140000000h
                mov     eax, ds:rva dword_140D024D0[rcx+rdx*4]
                mov     rbx, ds:rva qword_140CFDCC0[rcx+rax*8]
                jmp     loc_14023F58E
; ---------------------------------------------------------------------------

loc_14023F6A3:                          ; CODE XREF: sub_14023F430+13B↑j
                test    r12b, r12b
                jnz     loc_14042F827
                cmp     [r11+0C0h], rdi
                jnz     loc_14023F582
                lea     rdx, [rsp+130h+var_E8]
                mov     rcx, r11
                call    sub_140347C14
                mov     r8, [rsp+130h+var_E8]
                mov     r10, [rsp+130h+var_F0]
                mov     r9, [rsp+130h+var_E0]
                jmp     loc_14023F582
; ---------------------------------------------------------------------------

loc_14023F6DA:                          ; CODE XREF: sub_14023F430+117↑j
                                        ; sub_14023F430+1F03FB↓j
                mov     rax, [rdi+88h]
                mov     r15, rax
                mov     [rsp+130h+var_D0], rax
                not     r15
                and     r15, r10
                mov     qword ptr [rbp+4Fh+var_B8], r15
                cmp     r9, rdi
                jnz     loc_14023FA9A

loc_14023F6FC:                          ; CODE XREF: sub_14023F430+66D↓j
                                        ; sub_14023F430+680↓j ...
                movzx   esi, [rsp+130h+var_100]
                cmp     si, [r9+90h]
                jnz     short loc_14023F71B
                mov     r15, [r9+88h]
                or      r15, rax
                not     r15
                and     r15, r10

loc_14023F71B:                          ; CODE XREF: sub_14023F430+2D9↑j
                mov     r11, [rsp+130h+var_F8]
                mov     qword ptr [rbp+4Fh+var_B8], r15
                mov     rax, [r11+0C0h]
                mov     [rsp+130h+var_D0], rax
                cmp     rax, rdi
                jnz     loc_14023FB2A

loc_14023F739:                          ; CODE XREF: sub_14023F430+6FD↓j
                                        ; sub_14023F430+706↓j ...
                cmp     si, [rax+90h]
                jnz     loc_14023FB9F
                mov     r12, [rax+88h]
                not     r12
                and     r12, r15

loc_14023F753:                          ; CODE XREF: sub_14023F430+772↓j
                movzx   eax, word ptr [rax+92h]
                mov     esi, 1
                movzx   ecx, byte ptr [rdi+92h]
                movzx   r15d, [rsp+130h+var_FE]
                shl     rsi, cl
                bts     rsi, rax
                mov     [rsp+130h+var_D8], 0
                movzx   eax, word ptr [r9+92h]
                bts     rsi, rax
                not     esi
                and     esi, [rdi+80h]

loc_14023F78F:                          ; CODE XREF: sub_14023F430+76A↓j
                mov     qword ptr [rbp+4Fh+var_B8], r12

loc_14023F793:                          ; CODE XREF: sub_14023F430+5E0↓j
                test    r12, r12
                jnz     loc_14023F9EE

loc_14023F79C:                          ; CODE XREF: sub_14023F430+5D2↓j
                cmp     byte ptr [rsp+130h+var_FC], 0
                jnz     short loc_14023F7E5
                xor     r15b, r15b
                mov     [rbp+4Fh+var_A8], 0
                cmp     cs:dword_140C31C40, 0
                mov     [rbp+4Fh+var_A0], 0
                mov     [rsp+130h+var_D4], 0
                mov     [rsp+130h+var_FC], r15d
                jnz     loc_14042F8E6

loc_14023F7D0:                          ; CODE XREF: sub_14023F430+1F04FD↓j
                movzx   r12d, [rsp+130h+var_FE]
                movzx   r9d, [rsp+130h+var_100]
                test    r15b, r15b
                jnz     loc_14042F762

loc_14023F7E5:                          ; CODE XREF: sub_14023F430+371↑j
                mov     r15, [r14+8440h]
                and     r15, [rsp+130h+var_F0]
                lea     rax, [r15-1]
                test    r15, rax
                jz      loc_14023F8CD
                mov     rdx, [r14+8448h]
                lea     rsi, [rbp+4Fh+var_90]
                movzx   edi, byte ptr [rdx+251h]
                movzx   ebx, byte ptr [rdx+250h]
                add     rsi, rdi
                mov     rcx, rsi
                mov     r8d, ebx
                add     rdx, 210h
                mov     r12d, edi
                call    memmove
                mov     rax, [r14+0C0h]
                lea     r9d, [rdi+rbx]
                movzx   r8d, byte ptr [r13+0C3h]
                mov     r10d, 0FFFFFFFFh
                mov     r11, [rax+168h]
                mov     eax, cs:dword_140CFC58C
                test    al, 1
                jnz     loc_14042F932
                test    cs:dword_140CFC450, 800h
                jz      short loc_14023F876
                cmp     cs:dword_140CFC580, 0
                jnz     loc_14042F93A

loc_14023F876:                          ; CODE XREF: sub_14023F430+437↑j
                                        ; sub_14023F430+1F0504↓j ...
                cmp     edi, r9d
                jnb     short loc_14023F8A4
                mov     rcx, r12
                mov     eax, 1
                rol     rax, cl

loc_14023F886:                          ; CODE XREF: sub_14023F430+472↓j
                test    r15, rax
                jz      short loc_14023F897
                movzx   ecx, byte ptr [rsi]
                cmp     cl, r8b
                jl      loc_14023F94D

loc_14023F897:                          ; CODE XREF: sub_14023F430+459↑j
                                        ; sub_14023F430+524↓j
                inc     edi
                rol     rax, 1
                inc     rsi
                cmp     edi, r9d
                jb      short loc_14023F886

loc_14023F8A4:                          ; CODE XREF: sub_14023F430+449↑j
                                        ; sub_14023F430+1F0532↓j
                test    r10d, r10d
                js      short loc_14023F8CD

loc_14023F8A9:                          ; CODE XREF: sub_14023F430+1F0571↓j
                movzx   eax, byte ptr [r14+0D0h]
                lea     rdx, cs:140000000h
                shl     eax, 6
                add     eax, r10d
                mov     eax, ds:rva dword_140D024D0[rdx+rax*4]
                mov     r14, ds:rva qword_140CFDCC0[rdx+rax*8]

loc_14023F8CD:                          ; CODE XREF: sub_14023F430+3C8↑j
                                        ; sub_14023F430+477↑j
                mov     rbx, gs:20h
                mov     rdi, [r14+0C0h]
                mov     [rbp+4Fh+var_C0], 0
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14042F9AC

loc_14023F8F4:                          ; CODE XREF: sub_14023F430+65F↓j
                                        ; sub_14023F430+1F0580↓j ...
                lock bts qword ptr [r14+30h], 0
                jb      loc_14023FA63
                mov     r15d, [rsp+130h+var_FC]
                test    r15b, r15b
                jnz     loc_14042FA15
                xor     ecx, ecx

loc_14023F911:                          ; CODE XREF: sub_14023F430+1F05F0↓j
                movzx   r12d, [rsp+130h+var_FE]
                test    r12b, r12b
                jnz     short loc_14023F930
                mov     rax, [rdi]
                mov     r10, [rsp+130h+var_F0]
                or      rax, rcx
                test    r10, rax
                jnz     loc_14023FAF4

loc_14023F930:                          ; CODE XREF: sub_14023F430+4EA↑j
                mov     rdi, [rbp+4Fh+var_98]
                mov     dword ptr [rdi], 0
                test    byte ptr [r14+23h], 2
                jnz     loc_14042FA3B

loc_14023F945:                          ; CODE XREF: sub_14023F430+1F0654↓j
                                        ; sub_14023F430+1F065E↓j ...
                mov     rax, r14
                jmp     loc_14023F5E3
; ---------------------------------------------------------------------------

loc_14023F94D:                          ; CODE XREF: sub_14023F430+461↑j
                movzx   r8d, cl
                mov     r10d, edi
                jmp     loc_14023F897
; ---------------------------------------------------------------------------

loc_14023F959:                          ; CODE XREF: sub_14023F430+1F0↑j
                mov     r8, rax
                mov     [rsp+130h+var_E8], rax
                jmp     loc_14023F65D
; ---------------------------------------------------------------------------

loc_14023F966:                          ; CODE XREF: sub_14023F430+193↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042F878

loc_14023F976:                          ; CODE XREF: sub_14023F430+556↓j
                                        ; sub_14023F430+1F044C↓j ...
                lea     rcx, [rbp+4Fh+var_C4]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jnz     short loc_14023F976
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_14023F5BC
                jmp     loc_14042F89F
; ---------------------------------------------------------------------------

loc_14023F99D:                          ; CODE XREF: sub_14023F430+205↑j
                mov     r8, rax
                mov     [rsp+130h+var_E8], rax
                jmp     loc_14023F65D
; ---------------------------------------------------------------------------

loc_14023F9AA:                          ; CODE XREF: sub_14023F430+19F↑j
                test    r15b, r15b
                jnz     loc_14042F8BA

loc_14023F9B3:                          ; CODE XREF: sub_14023F430+1F0492↓j
                lock and qword ptr [rbx+30h], 0
                mov     rcx, gs:20h
                lea     rdi, cs:140000000h
                mov     r10, [rsp+130h+var_F0]
                mov     r11, [rsp+130h+var_F8]
                movzx   r9d, [rsp+130h+var_100]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      loc_14023F4A1
                jmp     loc_14042F8C7
; ---------------------------------------------------------------------------

loc_14023F9EE:                          ; CODE XREF: sub_14023F430+366↑j
                movzx   ecx, word ptr [rdi+92h]
                lea     rdx, [rsp+130h+var_D8]
                call    sub_1402599AC
                cmp     eax, 0FFFFFFFFh
                jz      loc_14023F79C
                mov     edx, eax
                mov     ecx, esi
                bt      rcx, rdx
                jnb     loc_14023F793
                lea     rcx, cs:140000000h
                mov     eax, eax
                xor     r9d, r9d
                mov     rdx, r11
                mov     rax, ds:rva qword_140D23380[rcx+rax*8]
                mov     ecx, [rsp+130h+var_FC]
                mov     r8, rax
                mov     [rsp+130h+var_108], cl
                mov     rcx, [rsp+130h+var_F0]
                mov     [rsp+130h+var_D0], rax
                mov     byte ptr [rsp+130h+var_110], r15b
                call    sub_1403907D8
                mov     rbx, rax
                test    rax, rax
                jz      loc_14023FB83
                movzx   r12d, [rsp+130h+var_FE]
                jmp     loc_14023F597
; ---------------------------------------------------------------------------

loc_14023FA63:                          ; CODE XREF: sub_14023F430+4CB↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14042F9D3

loc_14023FA73:                          ; CODE XREF: sub_14023F430+653↓j
                                        ; sub_14023F430+1F05A7↓j ...
                lea     rcx, [rbp+4Fh+var_C0]
                call    sub_1402C8C70
                mov     rax, [r14+30h]
                test    rax, rax
                jnz     short loc_14023FA73
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      loc_14023F8F4
                jmp     loc_14042F9FA
; ---------------------------------------------------------------------------

loc_14023FA9A:                          ; CODE XREF: sub_14023F430+2C6↑j
                test    r15, r15
                jz      loc_14023F6FC
                movzx   ecx, [rsp+130h+var_100]
                cmp     [r9+90h], cx
                jnz     loc_14023F6FC
                mov     r8, [rsp+130h+var_E0]
                mov     r9, rsi
                mov     [rsp+130h+var_108], dl
                mov     rcx, r10
                mov     rdx, [rsp+130h+var_F8]
                mov     byte ptr [rsp+130h+var_110], r12b
                call    sub_1403907D8
                mov     rbx, rax
                test    rax, rax
                jnz     loc_14023F597
                mov     rax, [rsp+130h+var_D0]
                mov     r10, [rsp+130h+var_F0]
                mov     r9, [rsp+130h+var_E0]
                jmp     loc_14023F6FC
; ---------------------------------------------------------------------------

loc_14023FAF4:                          ; CODE XREF: sub_14023F430+4FA↑j
                lock and qword ptr [r14+30h], 0
                mov     rcx, gs:20h
                lea     rdi, cs:140000000h
                mov     r11, [rsp+130h+var_F8]
                movzx   r9d, [rsp+130h+var_100]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      loc_14023F4A1
                jmp     loc_14042FA25
; ---------------------------------------------------------------------------

loc_14023FB2A:                          ; CODE XREF: sub_14023F430+303↑j
                cmp     rax, r9
                jz      loc_14023F739
                test    r15, r15
                jz      loc_14023F739
                cmp     si, [rax+90h]
                jnz     short loc_14023FB9F
                mov     ecx, [rsp+130h+var_FC]
                mov     r9, r11
                mov     [rsp+130h+var_108], cl
                mov     r8, rax
                mov     rcx, r10
                mov     byte ptr [rsp+130h+var_110], r12b
                mov     rdx, r11
                call    sub_1403907D8
                mov     rbx, rax
                test    rax, rax
                jnz     loc_14023F597
                mov     rax, [rsp+130h+var_D0]
                mov     r11, [rsp+130h+var_F8]
                mov     r9, [rsp+130h+var_E0]
                jmp     loc_14023F739
; ---------------------------------------------------------------------------

loc_14023FB83:                          ; CODE XREF: sub_14023F430+622↑j
                mov     rax, [rsp+130h+var_D0]
                mov     r11, [rsp+130h+var_F8]
                mov     rax, [rax+88h]
                not     rax
                and     r12, rax
                jmp     loc_14023F78F
; ---------------------------------------------------------------------------

loc_14023FB9F:                          ; CODE XREF: sub_14023F430+310↑j
                                        ; sub_14023F430+713↑j
                mov     r12, r15
                jmp     loc_14023F753
; } // starts at 14023F430
sub_14023F430   endp

; ---------------------------------------------------------------------------
algn_14023FBA7:                         ; DATA XREF: .rdata:0000000140055878↑o
                                        ; .pdata:00000001400CBB38↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14023FBB0   proc near               ; CODE XREF: sub_14023F430+AD↑p
                                        ; DATA XREF: .rdata:00000001400558A0↑o ...

var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014042FAA0 SIZE 000000AB BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                test    byte ptr [rcx+312Ch], 1
                mov     rdi, rdx
                mov     rbx, rcx
                jnz     short loc_14023FBE7

loc_14023FBD1:                          ; CODE XREF: sub_14023FBB0+4B↓j
                                        ; sub_14023FBB0+73↓j ...
                xor     eax, eax

loc_14023FBD3:                          ; CODE XREF: sub_14023FBB0+121↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023FBE7:                          ; CODE XREF: sub_14023FBB0+1F↑j
                cmp     byte ptr [r8+283h], 0Fh
                jz      short loc_14023FBFD
                mov     eax, cs:dword_140CFC6B0
                cmp     [r8+54h], eax
                jnb     short loc_14023FBD1

loc_14023FBFD:                          ; CODE XREF: sub_14023FBB0+3F↑j
                mov     rsi, [rcx+0C0h]
                mov     r14, [rsi]
                mov     r8, r14
                and     r8, r9
                cmp     [rsp+48h+arg_28], 0
                mov     rcx, r8
                mov     [rsp+48h+var_28], r8
                jnz     loc_14042FAA0

loc_14023FC20:                          ; CODE XREF: sub_14023FBB0+1EFF12↓j
                test    rcx, rcx
                jz      short loc_14023FBD1

loc_14023FC25:                          ; CODE XREF: sub_14023FBB0+1EFEF3↓j
                mov     rax, [rbx+8468h]
                and     rax, rcx
                jz      short loc_14023FC39
                mov     r8, rax
                mov     [rsp+48h+var_28], rax

loc_14023FC39:                          ; CODE XREF: sub_14023FBB0+7F↑j
                test    byte ptr [rsi+0B5h], 20h
                jz      short loc_14023FC64
                movzx   ebp, [rsp+48h+arg_20]
                test    bpl, bpl
                jnz     loc_14042FAC7

loc_14023FC50:                          ; CODE XREF: sub_14023FBB0+1EFF2C↓j
                mov     r8, [rsi+8]
                and     r8, [rsp+48h+var_28]
                jz      short loc_14023FCD6
                test    bpl, bpl
                jnz     loc_14042FAE1

loc_14023FC64:                          ; CODE XREF: sub_14023FBB0+90↑j
                                        ; sub_14023FBB0+145↓j ...
                mov     rax, [rbx+8458h]
                not     rax
                and     rax, r8
                jz      short loc_14023FC76
                mov     r8, rax

loc_14023FC76:                          ; CODE XREF: sub_14023FBB0+C1↑j
                                        ; sub_14023FBB0+14F↓j
                movzx   edx, byte ptr [rbx+0D0h]
                mov     ecx, [rbx+8454h]
                cmp     [rdi+0D0h], dl
                jnz     short loc_14023FCA2
                mov     rax, [rbx+8460h]
                test    [rdi+0C8h], rax
                jz      short loc_14023FCA2
                movzx   ecx, byte ptr [rdi+0D1h]

loc_14023FCA2:                          ; CODE XREF: sub_14023FBB0+D9↑j
                                        ; sub_14023FBB0+E9↑j
                ror     r8, cl
                bsf     rax, r8
                shl     edx, 6
                add     ecx, eax
                mov     [rsp+48h+arg_0], 0
                and     ecx, 3Fh
                add     edx, ecx
                lea     rcx, cs:140000000h
                mov     eax, ds:rva dword_140D024D0[rcx+rdx*4]
                mov     rax, ds:rva qword_140CFDCC0[rcx+rax*8]
                jmp     loc_14023FBD3
; ---------------------------------------------------------------------------

loc_14023FCD6:                          ; CODE XREF: sub_14023FBB0+A9↑j
                test    bpl, bpl
                jnz     loc_14023FBD1
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    sub_140347C14
                test    al, al
                jnz     short loc_14023FCFA
                mov     r8, [rsp+48h+var_28]
                jmp     loc_14023FC64
; ---------------------------------------------------------------------------

loc_14023FCFA:                          ; CODE XREF: sub_14023FBB0+13E↑j
                                        ; sub_14023FBB0+1EFF26↓j
                mov     r8, [rsp+48h+var_28]
                jmp     loc_14023FC76
sub_14023FBB0   endp

; ---------------------------------------------------------------------------
algn_14023FD04:                         ; DATA XREF: .rdata:00000001400558A0↑o
                                        ; .pdata:00000001400CBB44↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14023FD10   proc near               ; CODE XREF: sub_14023D030+23A↑p
                                        ; sub_14023D030+2EE↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042FB4C SIZE 00000148 BYTES

                push    rbx
                push    rsi
                push    r14
                sub     rsp, 20h
                mov     rbx, [rcx+98h]
                xor     sil, sil

loc_14023FD23:                          ; DATA XREF: .rdata:00000001400558C0↑o
                                        ; .rdata:00000001400558D4↑o ...
                mov     [rsp+38h+arg_8], rdi
                mov     rdi, rcx
                mov     r14, 0FFFFFFFFFFFFFFFFh
                test    rbx, rbx
                jz      short loc_14023FD9C

loc_14023FD37:                          ; DATA XREF: .rdata:00000001400558D4↑o
                                        ; .rdata:00000001400558E8↑o ...
                mov     [rsp+38h+arg_0], rbp
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FB4C

loc_14023FD57:                          ; CODE XREF: sub_14023FD10+1EFE3E↓j
                                        ; sub_14023FD10+1EFE48↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14042FB8D

loc_14023FD64:                          ; DATA XREF: .rdata:00000001400558E8↑o
                                        ; .rdata:00000001400558F8↑o ...
                mov     [rsp+38h+arg_10], r15
                mov     r15, gs:20h
                mov     rcx, [r15+84B8h]
                test    rcx, rcx
                jnz     loc_14042FB9F

loc_14023FD82:                          ; CODE XREF: sub_14023FD10+1EFE94↓j
                                        ; sub_14023FD10+1EFEA3↓j ...
                lock bts qword ptr [rbx+588h], 0
                jb      loc_14023FE22

loc_14023FD92:                          ; CODE XREF: sub_14023FD10+12E↓j
                mov     r15, [rsp+38h+arg_10]

loc_14023FD97:                          ; CODE XREF: sub_14023FD10+1EFE8A↓j
                                        ; DATA XREF: .pdata:00000001400CBB74↑o ...
                mov     rbp, [rsp+38h+arg_0]

loc_14023FD9C:                          ; CODE XREF: sub_14023FD10+25↑j
                                        ; DATA XREF: .pdata:00000001400CBB80↑o ...
                mov     rdx, [rdi+20h]
                lea     rax, [rdi+20h]
                mov     rcx, [rax+8]
                mov     rdi, [rsp+38h+arg_8]
                cmp     [rdx+8], rax
                jnz     loc_14042FC8D

loc_14023FDB7:                          ; DATA XREF: .pdata:00000001400CBB8C↑o
                                        ; .pdata:00000001400CBB98↑o
                cmp     [rcx], rax
                jnz     loc_14042FC8D
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                test    rbx, rbx
                jz      short loc_14023FE18
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14042FBEF
                lock and qword ptr [rbx+588h], 0

loc_14023FDE9:                          ; CODE XREF: sub_14023FD10+1EFEF1↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042FC06

loc_14023FE02:                          ; CODE XREF: sub_14023FD10+1EFEFA↓j
                                        ; sub_14023FD10+1EFF09↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FC2A

loc_14023FE10:                          ; CODE XREF: sub_14023FD10+1EFF1C↓j
                                        ; sub_14023FD10+1EFF28↓j ...
                movzx   eax, sil
                mov     cr8, rax

loc_14023FE18:                          ; CODE XREF: sub_14023FD10+C1↑j
                add     rsp, 20h
                pop     r14
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14023FE22:                          ; CODE XREF: sub_14023FD10+7C↑j
                                        ; DATA XREF: .pdata:00000001400CBB98↑o ...
                mov     rcx, [r15+84B8h]
                test    rcx, rcx
                jnz     loc_14042FBC7

loc_14023FE32:                          ; CODE XREF: sub_14023FD10+1EFEBC↓j
                                        ; sub_14023FD10+1EFECB↓j ...
                lea     rcx, [rbx+588h]
                call    sub_140300EA0
                jmp     loc_14023FD92
sub_14023FD10   endp

; ---------------------------------------------------------------------------
algn_14023FE43:                         ; DATA XREF: .pdata:00000001400CBBA4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14023FE50   proc near               ; CODE XREF: sub_1402B71D8+2B↓p
                                        ; sub_140324B50+DF↓p ...

; FUNCTION CHUNK AT 000000014042FC94 SIZE 0000000D BYTES

                mov     rax, rcx
                lea     r9, qword_140CFCE60
                shr     rax, 8
                lea     r10, [rcx+30h]
                movzx   edx, al
                movzx   eax, byte ptr [rcx+18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     r9, [r9+rdx*8]
                mov     rax, [r9+20h]
                test    al, 1
                jnz     short loc_14023FE8C
                test    rax, rax
                js      short locret_14023FE8A
                add     rax, r10

locret_14023FE8A:                       ; CODE XREF: sub_14023FE50+35↑j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14023FE8C:                          ; CODE XREF: sub_14023FE50+30↑j
                test    al, 2
                jz      short loc_14023FEB8
                mov     r8d, [r9+0B0h]
                movzx   ecx, word ptr [r9+0B4h]
                mov     edx, [rcx+r10]
                and     edx, r8d
                cmp     edx, r8d
                jz      loc_14042FC94
                add     rax, 0FFFFFFFFFFFFFFFDh
                add     rax, r10
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14023FEB8:                          ; CODE XREF: sub_14023FE50+3E↑j
                mov     rax, [rax+r10-1]
                retn
sub_14023FE50   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14023FEBF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400CBBB0↑o
; Exported entry 1358. KeWaitForMutexObject
; Exported entry 1359. KeWaitForSingleObject

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=4Fh

