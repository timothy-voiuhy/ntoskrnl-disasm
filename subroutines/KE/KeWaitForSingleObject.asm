KeWaitForSingleObject proc near         ; CODE XREF: sub_140201AE0+88↑p
                                        ; sub_14020ACA0+1F4↑p ...

var_E0          = dword ptr -0E0h
var_C0          = qword ptr -0C0h
var_B0          = byte ptr -0B0h
var_AF          = byte ptr -0AFh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  10h
arg_8           = dword ptr  18h
arg_10          = byte ptr  20h
arg_18          = byte ptr  28h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014042FCA2 SIZE 0000060C BYTES

                mov     [rsp-8+arg_18], r9b ; KeWaitForMutexObject
                mov     [rsp-8+arg_10], r8b
                mov     [rsp-8+arg_8], edx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-17h]
                sub     rsp, 0A8h
                mov     rbx, gs:188h
                xor     ecx, ecx
                mov     [rbp+4Fh+var_70], rcx
                mov     [rbp+4Fh+var_A8], rcx
                mov     [rbp+4Fh+var_B0], cl
                btr     dword ptr [rbx+74h], 2
                mov     [rbp+4Fh+var_A0], rcx
                lea     r13d, [rcx+2]
                setb    r12b
                mov     [rbp+4Fh+var_50], rcx
                mov     [rbp+4Fh+var_AF], r12b
                test    r12b, r12b
                jnz     short loc_14023FF4C
                mov     r10, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FCA2

loc_14023FF45:                          ; CODE XREF: KeWaitForSingleObject+1EFDD4↓j
                                        ; KeWaitForSingleObject+1EFDDE↓j ...
                mov     [rbx+186h], r10b

loc_14023FF4C:                          ; CODE XREF: KeWaitForSingleObject+5D↑j
                mov     rcx, [rbp+4Fh+arg_20]
                mov     rdx, 0FFFFF78000000008h
                mov     r9d, 1
                mov     r11, 0FFFFF780000003B0h
                test    rcx, rcx
                jnz     loc_1402401CD
                xor     r12d, r12d
                mov     dword ptr [rbp+4Fh+arg_20], r12d

loc_14023FF7A:                          ; CODE XREF: KeWaitForSingleObject+282↓j
                                        ; KeWaitForSingleObject+324↓j
                movzx   r14d, byte ptr [rbx+186h]
                movzx   r15d, [rbp+4Fh+arg_18]
                movzx   edi, [rbp+4Fh+arg_10]

loc_14023FF8B:                          ; CODE XREF: KeWaitForSingleObject+791↓j
                and     dword ptr [rbx+74h], 0FFFFFFEFh
                mov     byte ptr [rbx+70h], 0
                mov     [rbx+187h], dil
                test    r15b, r15b
                jnz     loc_14024042E

loc_14023FFA3:                          ; CODE XREF: KeWaitForSingleObject+562↓j
                mov     rsi, gs:20h
                mov     [rbp+4Fh+var_98], r12d
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042FCE7

loc_14023FFC0:                          ; CODE XREF: KeWaitForSingleObject+651↓j
                                        ; KeWaitForSingleObject+1EFE1B↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1402404F5
                cmp     byte ptr [rbx+0C1h], 0
                jnz     loc_140240601

loc_14023FFDA:                          ; CODE XREF: KeWaitForSingleObject+735↓j
                                        ; KeWaitForSingleObject+743↓j
                mov     rdi, [rbp+4Fh+arg_0]
                test    r15b, r15b
                movzx   r12d, [rbp+4Fh+var_AF]
                lea     r15, [rbx+140h]
                jnz     loc_140240437
                test    byte ptr [rbx+0C2h], 2
                jnz     loc_1402405D1

loc_140240000:                          ; CODE XREF: KeWaitForSingleObject+581↓j
                                        ; KeWaitForSingleObject+705↓j
                mov     eax, [rbp+4Fh+arg_8]
                xor     r14d, r14d
                mov     byte ptr [rbx+184h], 5
                mov     [rbx+283h], al
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+1B4h], eax
                mov     [rbx+40h], r14
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042FDD6

loc_14024003F:                          ; CODE XREF: KeWaitForSingleObject+82E↓j
                                        ; KeWaitForSingleObject+1EFF0A↓j ...
                mov     r13, gs:20h
                mov     esi, r14d
                mov     byte ptr [r15+10h], 1
                mov     byte ptr [r15+11h], 4
                mov     [r15+12h], r14w
                mov     [r15+20h], rdi
                lock bts dword ptr [rdi], 7
                jb      loc_1402404D0

loc_140240069:                          ; CODE XREF: KeWaitForSingleObject+61D↓j
                movzx   eax, byte ptr [rdi]
                mov     edx, [rdi+4]
                movzx   ecx, al
                and     cl, 7Fh
                cmp     cl, 2
                jz      loc_14024026F
                test    edx, edx
                jg      loc_1402401F9
                movzx   r8d, [rbp+4Fh+var_B0]

loc_14024008B:                          ; CODE XREF: KeWaitForSingleObject+599↓j
                                        ; KeWaitForSingleObject+5B0↓j
                mov     r9, [rbp+4Fh+var_A8]
                mov     r10d, dword ptr [rbp+4Fh+arg_20]
                mov     rax, r9
                cmp     r10d, 2
                jz      loc_140240227
                test    r10d, r10d
                jnz     loc_140240157

loc_1402400A9:                          ; CODE XREF: KeWaitForSingleObject+394↓j
                mov     rcx, [rdi+10h]
                lea     rax, [rdi+8]
                cmp     [rcx], rax
                jnz     loc_140430106
                mov     [r15], rax
                mov     [r15+8], rcx
                mov     [rcx], r15
                mov     [rax+8], r15
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     byte ptr [rbx+24Bh], 1
                test    r8b, r8b
                jnz     loc_14042FE22
                mov     r13, [rbp+4Fh+var_A0]

loc_1402400E3:                          ; CODE XREF: KeWaitForSingleObject+1EFF6E↓j
                test    r13, r13
                jnz     loc_14042FE43

loc_1402400EC:                          ; CODE XREF: KeWaitForSingleObject+1EFF83↓j
                lea     rax, [rbp+4Fh+var_70]
                mov     r8d, r10d
                mov     rdx, r15
                mov     [rsp+0E0h+var_C0], rax
                mov     rcx, rbx
                call    sub_140240710
                mov     rsi, rax
                test    r13, r13
                jnz     loc_14042FE58

loc_14024010F:                          ; CODE XREF: KeWaitForSingleObject+1EFFBD↓j
                xor     r14d, r14d

loc_140240112:                          ; CODE XREF: KeWaitForSingleObject+1EFFB0↓j
                mov     [rbx+3D0h], r14
                cmp     esi, 100h
                jnz     loc_1402401B6
                xor     r12b, r12b
                mov     [rbp+4Fh+var_AF], r12b
                mov     r10, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FE92

loc_140240148:                          ; CODE XREF: KeWaitForSingleObject+1EFFC4↓j
                                        ; KeWaitForSingleObject+1EFFCE↓j ...
                mov     [rbx+186h], r10b
                xor     r12d, r12d
                jmp     loc_14023FF7A
; ---------------------------------------------------------------------------

loc_140240157:                          ; CODE XREF: KeWaitForSingleObject+1D3↑j
                test    r9, r9
                jnz     loc_1402406E3

loc_140240160:                          ; CODE XREF: KeWaitForSingleObject+39A↓j
                mov     esi, 102h

loc_140240165:                          ; CODE XREF: KeWaitForSingleObject+3CB↓j
                xor     r14d, r14d

loc_140240168:                          ; CODE XREF: KeWaitForSingleObject+339↓j
                                        ; KeWaitForSingleObject+345↓j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     byte ptr [rbx+184h], 2
                lock or [rsp+0E0h+var_E0], 0
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     loc_14024052C

loc_140240188:                          ; CODE XREF: KeWaitForSingleObject+6E1↓j
                movzx   edi, byte ptr [rbx+186h]
                movzx   eax, byte ptr [rbx+70h]
                test    al, 38h
                jnz     loc_1402406AE

loc_14024019B:                          ; CODE XREF: KeWaitForSingleObject+4D5↓j
                test    r12b, r12b
                jnz     loc_140240666
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140430248

loc_1402401B2:                          ; CODE XREF: KeWaitForSingleObject+1F037A↓j
                                        ; KeWaitForSingleObject+1F0386↓j ...
                mov     cr8, rdi

loc_1402401B6:                          ; CODE XREF: KeWaitForSingleObject+24F↑j
                                        ; KeWaitForSingleObject+559↓j ...
                mov     eax, esi
                add     rsp, 0A8h
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402401CD:                          ; CODE XREF: KeWaitForSingleObject+9D↑j
                cmp     dword ptr [rcx+4], 0
                jge     short loc_14024021A
                mov     rax, [r11]
                mov     r9, [rdx]
                sub     r9, rax
                mov     dword ptr [rbp+4Fh+arg_20], r13d
                mov     rax, [rbx+0F8h]
                add     rax, [rcx]
                sub     r9, rax
                mov     [rbp+4Fh+var_A8], r9

loc_1402401F1:                          ; CODE XREF: KeWaitForSingleObject+355↓j
                xor     r12d, r12d
                jmp     loc_14023FF7A
; ---------------------------------------------------------------------------

loc_1402401F9:                          ; CODE XREF: KeWaitForSingleObject+1B0↑j
                and     al, 7
                xor     r14d, r14d
                cmp     al, 1
                jz      loc_14024045C
                cmp     cl, 5
                jnz     loc_140240168
                lea     eax, [rdx-1]
                mov     [rdi+4], eax
                jmp     loc_140240168
; ---------------------------------------------------------------------------

loc_14024021A:                          ; CODE XREF: KeWaitForSingleObject+301↑j
                mov     rax, [rcx]
                mov     [rbp+4Fh+var_A8], rax
                mov     dword ptr [rbp+4Fh+arg_20], r9d
                jmp     short loc_1402401F1
; ---------------------------------------------------------------------------

loc_140240227:                          ; CODE XREF: KeWaitForSingleObject+1CA↑j
                mov     rax, 0FFFFF780000003B0h
                mov     rcx, 0FFFFF78000000008h
                mov     rax, [rax]
                mov     rcx, [rcx]
                sub     rcx, [rbx+0F8h]
                mov     edx, [rbx+3B8h]
                sub     rcx, rax
                mov     rax, r9
                cmp     [rbx+187h], sil
                jnz     loc_140240485

loc_140240261:                          ; CODE XREF: KeWaitForSingleObject+5BB↓j
                                        ; KeWaitForSingleObject+5C8↓j ...
                cmp     rcx, rax
                jbe     loc_1402400A9
                jmp     loc_140240160
; ---------------------------------------------------------------------------

loc_14024026F:                          ; CODE XREF: KeWaitForSingleObject+1A8↑j
                movzx   r8d, byte ptr [rdi+30h]
                shr     r8b, 1
                and     r8b, 1
                mov     [rbp+4Fh+var_B0], r8b
                test    edx, edx
                jle     loc_140240465

loc_140240287:                          ; CODE XREF: KeWaitForSingleObject+5AA↓j
                mov     eax, [rdi+4]
                cmp     eax, 80000000h
                jz      loc_1404300E5
                sub     eax, 1
                mov     [rdi+4], eax
                jnz     loc_140240165
                xor     r15d, r15d
                mov     [rbx+0C8h], r15
                mov     rsi, gs:20h
                mov     [rbp+4Fh+var_94], r15d
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042FEF7

loc_1402402C8:                          ; CODE XREF: KeWaitForSingleObject+7D3↓j
                                        ; KeWaitForSingleObject+1F002B↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140240677
                cmp     [rdi+31h], r15b
                jz      short loc_1402402E2
                dec     word ptr [rbx+1E4h]

loc_1402402E2:                          ; CODE XREF: KeWaitForSingleObject+409↑j
                cmp     [r13+8], rbx
                jnz     loc_14042FF60
                movzx   ecx, byte ptr [r13+312Ah]

loc_1402402F4:                          ; CODE XREF: KeWaitForSingleObject+1F0092↓j
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+var_58], rax
                mov     eax, [rdi]
                movups  [rbp+4Fh+var_68], xmm0
                mov     dword ptr [rbp+4Fh+var_68], eax
                mov     byte ptr [rbp+4Fh+var_68+2], cl
                mov     eax, dword ptr [rbp+4Fh+var_68]
                mov     [rdi], eax
                movzx   eax, byte ptr [rdi+30h]
                mov     [rdi+28h], rbx
                test    al, 1
                jnz     loc_14042FF67

loc_14024031E:                          ; CODE XREF: KeWaitForSingleObject+1F00AB↓j
                mov     r14, rbx
                test    al, 2
                jnz     loc_14042FF80
                mov     [rbx+3D0h], r15

loc_140240330:                          ; CODE XREF: KeWaitForSingleObject+1F00B7↓j
                lea     rax, [rbx+308h]
                mov     rdx, [rax+8]
                lea     rcx, [rdi+18h]
                cmp     [rdx], rax
                jnz     loc_140430106
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     byte ptr [rbx+184h], 2
                mov     [rbx+40h], r15
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042FF8C

loc_140240381:                          ; CODE XREF: KeWaitForSingleObject+1F00C0↓j
                                        ; KeWaitForSingleObject+1F00CF↓j ...
                mov     rsi, [rbx+0C8h]
                mov     rcx, [r14+3D0h]
                test    rcx, rcx
                jnz     loc_14042FFB0

loc_140240398:                          ; CODE XREF: KeWaitForSingleObject+1F00F5↓j
                                        ; KeWaitForSingleObject+1F00FF↓j
                movzx   edi, byte ptr [rbx+186h]
                movzx   eax, byte ptr [rbx+70h]
                test    al, 38h
                jz      loc_14024019B
                test    al, 18h
                jz      loc_14043008C
                test    al, 8
                jnz     loc_14042FFD4

loc_1402403BB:                          ; CODE XREF: KeWaitForSingleObject+1F010A↓j
                mov     [rbp+4Fh+var_80], r15
                mov     rbx, gs:20h
                mov     [rbp+4Fh+var_90], r15d
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14042FFDF

loc_1402403DC:                          ; CODE XREF: KeWaitForSingleObject+1F0113↓j
                                        ; KeWaitForSingleObject+1F0122↓j ...
                lock bts qword ptr [r13+30h], 0
                jb      loc_140430006
                cmp     [r13+10h], r15
                jnz     short loc_1402403FB
                lea     rdx, [rbp+4Fh+var_80]
                mov     rcx, r13
                call    sub_1402CEB5C

loc_1402403FB:                          ; CODE XREF: KeWaitForSingleObject+51D↑j
                lock and [r13+30h], r15
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140430068

loc_140240419:                          ; CODE XREF: KeWaitForSingleObject+1F019C↓j
                                        ; KeWaitForSingleObject+1F01AB↓j ...
                movzx   r8d, dil
                lea     rdx, [rbp+4Fh+var_80]
                mov     rcx, r13
                call    sub_14028D950
                jmp     loc_1402401B6
; ---------------------------------------------------------------------------

loc_14024042E:                          ; CODE XREF: KeWaitForSingleObject+CD↑j
                or      dword ptr [rbx+74h], 10h
                jmp     loc_14023FFA3
; ---------------------------------------------------------------------------

loc_140240437:                          ; CODE XREF: KeWaitForSingleObject+11D↑j
                movsx   r8, [rbp+4Fh+arg_10]
                cmp     byte ptr [r8+rbx+72h], 0
                jnz     loc_14042FEE7
                test    r8b, r8b
                jnz     short loc_1402404B8

loc_14024044D:                          ; CODE XREF: KeWaitForSingleObject+5F2↓j
                cmp     byte ptr [rbx+72h], 0
                jz      loc_140240000
                jmp     loc_14042FED9
; ---------------------------------------------------------------------------

loc_14024045C:                          ; CODE XREF: KeWaitForSingleObject+330↑j
                mov     [rdi+4], r14d
                jmp     loc_140240168
; ---------------------------------------------------------------------------

loc_140240465:                          ; CODE XREF: KeWaitForSingleObject+3B1↑j
                cmp     rbx, [rdi+28h]
                jnz     loc_14024008B
                movzx   eax, byte ptr [r13+312Ah]
                cmp     [rdi+2], al
                jz      loc_140240287
                jmp     loc_14024008B
; ---------------------------------------------------------------------------

loc_140240485:                          ; CODE XREF: KeWaitForSingleObject+38B↑j
                cmp     [rbx+1E4h], esi
                jnz     loc_140240261
                cmp     [rbx+186h], sil
                jnz     loc_140240261
                cmp     [rbx+0C0h], sil
                jnz     loc_140240261
                test    edx, edx
                jz      loc_140240261
                jmp     loc_14042FE19
; ---------------------------------------------------------------------------

loc_1402404B8:                          ; CODE XREF: KeWaitForSingleObject+57B↑j
                lea     rax, [rbx+0A8h]
                cmp     [rax], rax
                jz      short loc_14024044D
                or      byte ptr [rbx+0C2h], 2
                jmp     loc_1402405DB
; ---------------------------------------------------------------------------

loc_1402404D0:                          ; CODE XREF: KeWaitForSingleObject+193↑j
                                        ; KeWaitForSingleObject+616↓j ...
                inc     r14d
                test    cs:dword_140CFB240, r14d
                jz      loc_14042FDF0

loc_1402404E0:                          ; CODE XREF: KeWaitForSingleObject+1EFF28↓j
                                        ; KeWaitForSingleObject+1EFF35↓j
                pause

loc_1402404E2:                          ; CODE XREF: KeWaitForSingleObject+1EFF44↓j
                mov     eax, [rdi]
                test    al, al
                js      short loc_1402404D0
                lock bts dword ptr [rdi], 7
                jnb     loc_140240069
                jmp     short loc_1402404D0
; ---------------------------------------------------------------------------

loc_1402404F5:                          ; CODE XREF: KeWaitForSingleObject+F7↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042FD0E

loc_140240505:                          ; CODE XREF: KeWaitForSingleObject+645↓j
                                        ; KeWaitForSingleObject+1EFE42↓j ...
                lea     rcx, [rbp+4Fh+var_98]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140240505
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_14023FFC0
                jmp     loc_14042FD35
; ---------------------------------------------------------------------------

loc_14024052C:                          ; CODE XREF: KeWaitForSingleObject+2B2↑j
                mov     rdi, gs:20h
                mov     [rbp+4Fh+var_8C], r14d
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_1402405A0
                cmp     byte ptr [rdi+20h], 1
                ja      short loc_1402405A0
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_1402405A0
                jmp     short loc_140240593
; ---------------------------------------------------------------------------

loc_140240558:                          ; CODE XREF: KeWaitForSingleObject+6D7↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     short loc_1402405B6

loc_140240564:                          ; CODE XREF: KeWaitForSingleObject+6A4↓j
                                        ; KeWaitForSingleObject+6EA↓j ...
                lea     rcx, [rbp+4Fh+var_8C]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140240564
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_1402405A0
                cmp     byte ptr [rdi+20h], 1
                ja      short loc_1402405A0
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_1402405A0

loc_140240593:                          ; CODE XREF: KeWaitForSingleObject+686↑j
                mov     rcx, rdi
                call    sub_1403F2EC4
                nop     dword ptr [rax+rax+00h]

loc_1402405A0:                          ; CODE XREF: KeWaitForSingleObject+673↑j
                                        ; KeWaitForSingleObject+679↑j ...
                lock bts qword ptr [rbx+40h], 0
                jb      short loc_140240558
                mov     rcx, rbx
                call    sub_1403261B0
                jmp     loc_140240188
; ---------------------------------------------------------------------------

loc_1402405B6:                          ; CODE XREF: KeWaitForSingleObject+692↑j
                cmp     byte ptr [rdi+20h], 1
                ja      short loc_140240564
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140240564
                mov     rcx, rdi
                call    sub_1403F2EC4
                jmp     short loc_140240564
; ---------------------------------------------------------------------------

loc_1402405D1:                          ; CODE XREF: KeWaitForSingleObject+12A↑j
                cmp     [rbp+4Fh+arg_10], 0
                jz      loc_140240000

loc_1402405DB:                          ; CODE XREF: KeWaitForSingleObject+5FB↑j
                mov     edi, 0C0h

loc_1402405E0:                          ; CODE XREF: KeWaitForSingleObject+1F0012↓j
                                        ; KeWaitForSingleObject+1F0022↓j
                mov     rcx, rbx
                call    sub_1403261B0
                mov     rcx, gs:20h
                movzx   edx, r14b
                call    sub_1402D1604
                mov     esi, edi
                jmp     loc_1402401B6
; ---------------------------------------------------------------------------

loc_140240601:                          ; CODE XREF: KeWaitForSingleObject+104↑j
                cmp     r14b, 1
                jnb     loc_14023FFDA
                cmp     word ptr [rbx+1E6h], 0
                jnz     loc_14023FFDA
                mov     rcx, rbx
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FD50

loc_14024062F:                          ; CODE XREF: KeWaitForSingleObject+1EFE82↓j
                                        ; KeWaitForSingleObject+1EFE90↓j ...
                mov     esi, 1
                mov     cr8, rsi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     rcx, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042FD92

loc_14024065A:                          ; CODE XREF: KeWaitForSingleObject+1EFEC5↓j
                                        ; KeWaitForSingleObject+1EFECE↓j ...
                mov     [rbx+186h], r14b
                jmp     loc_14023FF8B
; ---------------------------------------------------------------------------

loc_140240666:                          ; CODE XREF: KeWaitForSingleObject+2CE↑j
                movzx   edx, dil
                mov     rcx, r13
                call    sub_1402D1604
                jmp     loc_1402401B6
; ---------------------------------------------------------------------------

loc_140240677:                          ; CODE XREF: KeWaitForSingleObject+3FF↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042FF1E

loc_140240687:                          ; CODE XREF: KeWaitForSingleObject+7C7↓j
                                        ; KeWaitForSingleObject+1F0052↓j ...
                lea     rcx, [rbp+4Fh+var_94]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140240687
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_1402402C8
                jmp     loc_14042FF45
; ---------------------------------------------------------------------------

loc_1402406AE:                          ; CODE XREF: KeWaitForSingleObject+2C5↑j
                test    al, 18h
                jnz     loc_14043010D
                mov     dl, 1
                mov     rcx, r13
                call    sub_1402D1604
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140430206

loc_1402406DA:                          ; CODE XREF: KeWaitForSingleObject+1F0338↓j
                                        ; KeWaitForSingleObject+1F0346↓j ...
                mov     cr8, r14
                jmp     loc_1402401B6
; ---------------------------------------------------------------------------

loc_1402406E3:                          ; CODE XREF: KeWaitForSingleObject+28A↑j
                mov     rcx, 0FFFFF78000000014h
                mov     rcx, [rcx]
                jmp     loc_140240261
; ---------------------------------------------------------------------------

loc_1402406F5:                          ; CODE XREF: KeWaitForSingleObject+1EFF10↓j
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     loc_14024003F
                jmp     loc_14042FDE5
KeWaitForSingleObject endp
