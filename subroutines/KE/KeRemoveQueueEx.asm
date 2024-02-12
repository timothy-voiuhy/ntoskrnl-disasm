KeRemoveQueueEx proc near               ; CODE XREF: sub_1402177E0+93↑p
                                        ; KeRemoveQueue+22↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140426276 SIZE 000007A9 BYTES

                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rbx, gs:188h
                xor     ebp, ebp
                mov     rdi, rcx
                movsx   r13, dl
                mov     r10, r9
                mov     [rsp+98h+var_48], rbp
                movzx   r12d, r8b
                btr     dword ptr [rbx+74h], 2
                lea     ecx, [rbp+2]
                setb    al
                test    al, al
                jnz     short loc_140217C3E
                mov     r11, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426276

loc_140217C37:                          ; CODE XREF: KeRemoveQueueEx+20E698↓j
                                        ; KeRemoveQueueEx+20E6A2↓j ...
                mov     [rbx+186h], r11b

loc_140217C3E:                          ; CODE XREF: KeRemoveQueueEx+3F↑j
                                        ; DATA XREF: .rdata:000000014004CB08↑o ...
                mov     [rsp+98h+arg_8], rsi
                mov     rax, 0FFFFF780000003B0h
                mov     rdx, 0FFFFF78000000008h
                mov     r15d, 1
                test    r10, r10
                jz      loc_140217FC6
                cmp     [r10+4], ebp
                jl      loc_14021806F
                mov     rbp, [r10]
                mov     [rsp+98h+arg_18], r15d

loc_140217C7E:                          ; CODE XREF: KeRemoveQueueEx+3EF↓j
                                        ; KeRemoveQueueEx+4AC↓j
                mov     rax, [rbx+0E8h]
                cmp     rax, rdi
                jnz     short loc_140217C9D
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140217EC4

loc_140217C94:                          ; CODE XREF: KeRemoveQueueEx+2EA↓j
                test    r10, r10
                jnz     loc_140217FD4

loc_140217C9D:                          ; CODE XREF: KeRemoveQueueEx+A8↑j
                                        ; KeRemoveQueueEx+3F8↓j ...
                movzx   r10d, byte ptr [rbx+186h]
                mov     [rsp+98h+var_50], r10

loc_140217CAA:                          ; CODE XREF: KeRemoveQueueEx+61F↓j
                mov     r14, [rsp+98h+var_50]
                mov     edi, 2

loc_140217CB4:                          ; CODE XREF: KeRemoveQueueEx+868↓j
                and     dword ptr [rbx+74h], 0FFFFFFEFh
                mov     byte ptr [rbx+70h], 0
                mov     [rbx+187h], r13b
                test    r12b, r12b
                jz      short loc_140217CCC
                or      dword ptr [rbx+74h], 10h

loc_140217CCC:                          ; CODE XREF: KeRemoveQueueEx+E6↑j
                mov     rsi, gs:20h
                mov     [rsp+98h+var_58], 0
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042671B

loc_140217CED:                          ; CODE XREF: KeRemoveQueueEx+803↓j
                                        ; KeRemoveQueueEx+20EB3F↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1402183B6
                cmp     byte ptr [rbx+0C1h], 0
                jnz     loc_1402183EE

loc_140217D07:                          ; CODE XREF: KeRemoveQueueEx+816↓j
                                        ; KeRemoveQueueEx+81F↓j
                mov     rdi, [rsp+98h+arg_0]
                lea     r14, [rbx+140h]
                test    r12b, r12b
                jz      loc_140218091
                cmp     byte ptr [r13+rbx+72h], 0
                jnz     loc_14042680C
                test    r13b, r13b
                jz      short loc_140217D40
                lea     rax, [rbx+0A8h]
                cmp     [rax], rax
                jnz     loc_140218224

loc_140217D40:                          ; CODE XREF: KeRemoveQueueEx+14E↑j
                cmp     byte ptr [rbx+72h], 0
                jnz     loc_14042681C

loc_140217D4A:                          ; CODE XREF: KeRemoveQueueEx+4B8↓j
                                        ; KeRemoveQueueEx+4C7↓j
                mov     byte ptr [rbx+184h], 5
                mov     byte ptr [rbx+283h], 0Fh
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+1B4h], eax
                mov     qword ptr [rbx+40h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042682A

loc_140217D88:                          ; CODE XREF: KeRemoveQueueEx+20EC4E↓j
                                        ; KeRemoveQueueEx+20EC5D↓j ...
                xor     esi, esi

loc_140217D8A:                          ; CODE XREF: KeRemoveQueueEx+66B↓j
                test    rsi, rsi
                jnz     loc_140218204
                mov     r8, [rbx+0E8h]
                cmp     rdi, r8
                jnz     loc_140218149

loc_140217DA3:                          ; CODE XREF: KeRemoveQueueEx+574↓j
                mov     byte ptr [r14+10h], 3
                mov     r9d, 80h
                mov     byte ptr [r14+11h], 4
                xor     esi, esi
                mov     [r14+12h], r9w
                mov     [r14+20h], rdi
                lock bts dword ptr [rdi], 7
                jb      loc_140218121

loc_140217DC9:                          ; CODE XREF: KeRemoveQueueEx+564↓j
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140218159

loc_140217DD3:                          ; CODE XREF: KeRemoveQueueEx+57F↓j
                                        ; KeRemoveQueueEx+20EC9C↓j
                test    [rdi+1], r15b
                jnz     loc_140426987
                mov     esi, [rsp+98h+arg_18]
                mov     rax, rbp
                cmp     esi, 2
                jz      loc_1402180AC
                test    esi, esi
                jnz     loc_140218382

loc_140217DF8:                          ; CODE XREF: KeRemoveQueueEx+528↓j
                lock dec dword ptr [rdi+28h]
                lea     rax, [rdi+8]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_1404269D5
                mov     [r14], rcx
                mov     [r14+8], rax
                mov     [rcx+8], r14
                mov     [rax], r14
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r9, rbp
                mov     [rbx+24Bh], r15b
                mov     r8d, esi
                mov     [rsp+98h+var_78], 0
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_140240710
                mov     byte ptr [rbx+283h], 0
                mov     rcx, rax
                cmp     rax, 100h
                jz      loc_1402181D8
                mov     r14, [rsp+98h+arg_20]
                mov     ebp, [rsp+98h+arg_28]
                mov     [r14], rax
                cmp     ebp, r15d
                jbe     short loc_140217E98
                add     rax, 0FFFFFFFFFFFFFEFFh
                cmp     rax, r15
                jbe     short loc_140217E98
                mov     eax, 80h
                cmp     rcx, rax
                jz      short loc_140217E98
                cmp     rcx, 0C0h
                jz      short loc_140217E98
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140218250

loc_140217E98:                          ; CODE XREF: KeRemoveQueueEx+28E↑j
                                        ; KeRemoveQueueEx+299↑j ...
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jnz     loc_140426713

loc_140217EA8:                          ; CODE XREF: KeRemoveQueueEx+639↓j
                                        ; KeRemoveQueueEx+20EE3A↓j
                mov     eax, r15d

loc_140217EAB:                          ; CODE XREF: KeRemoveQueueEx+3E1↓j
                                        ; KeRemoveQueueEx+20EE26↓j
                mov     rsi, [rsp+98h+arg_8]
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_140217EC3:                         ; DATA XREF: .pdata:00000001400CA344↑o
                                        ; .pdata:00000001400CA350↑o
                align 4

loc_140217EC4:                          ; CODE XREF: KeRemoveQueueEx+AE↑j
                                        ; DATA XREF: .pdata:00000001400CA350↑o ...
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_140217C94
                mov     [rsp+98h+var_68], 0
                lock bts dword ptr [rdi], 7
                jb      loc_140218365

loc_140217EE3:                          ; CODE XREF: KeRemoveQueueEx+79A↓j
                cmp     dword ptr [rdi+4], 0
                jz      loc_1402183AA
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_1402183AA
                mov     rdx, [rdi+18h]
                lea     r8, [rdi+18h]
                mov     r9, [rsp+98h+arg_20]
                xor     esi, esi
                mov     r10d, [rsp+98h+arg_28]

loc_140217F13:                          ; CODE XREF: KeRemoveQueueEx+53C↓j
                dec     dword ptr [rdi+4]
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14042647A
                mov     rcx, [rdx+8]
                cmp     [rax+8], rdx
                jnz     loc_1404269D5
                cmp     [rcx], rdx
                jnz     loc_1404269D5
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     qword ptr [rdx], 0
                mov     [r9+rsi*8], rdx
                inc     esi
                mov     rdx, [r8]
                cmp     rdx, r8
                jnz     loc_140218113

loc_140217F59:                          ; CODE XREF: KeRemoveQueueEx+536↓j
                test    esi, esi
                jz      loc_1402183AA
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     rbp, gs:20h
                movzx   edi, byte ptr [rbx+186h]
                cmp     dil, 2
                jnb     loc_140426435
                cmp     qword ptr [rbp+10h], 0
                mov     r14, [rbp+8]
                jnz     loc_1402182B6
                mov     eax, [r14+74h]
                test    al, 40h
                jnz     loc_140426389

loc_140217F9D:                          ; CODE XREF: KeRemoveQueueEx+780↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404263DA

loc_140217FAB:                          ; CODE XREF: KeRemoveQueueEx+20E7FD↓j
                                        ; KeRemoveQueueEx+20E80B↓j ...
                mov     cr8, rdi

loc_140217FAF:                          ; CODE XREF: KeRemoveQueueEx+20E85A↓j
                                        ; KeRemoveQueueEx+20E869↓j ...
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jnz     loc_140426466

loc_140217FBF:                          ; CODE XREF: KeRemoveQueueEx+5ED↓j
                                        ; KeRemoveQueueEx+20E895↓j
                mov     eax, esi
                jmp     loc_140217EAB
; ---------------------------------------------------------------------------

loc_140217FC6:                          ; CODE XREF: KeRemoveQueueEx+83↑j
                xor     esi, esi
                mov     [rsp+98h+arg_18], esi
                jmp     loc_140217C7E
; ---------------------------------------------------------------------------

loc_140217FD4:                          ; CODE XREF: KeRemoveQueueEx+B7↑j
                cmp     qword ptr [r10], 0
                jnz     loc_140217C9D
                test    [rdi+1], r15b
                jnz     loc_140426498
                test    r12b, r12b
                jnz     loc_1404264AD

loc_140217FF1:                          ; CODE XREF: KeRemoveQueueEx+20E90A↓j
                mov     r9d, r15d
                movzx   r8d, r13b
                movzx   edx, r12b
                mov     rcx, rbx
                call    sub_140342DF0
                movsxd  rcx, eax
                test    eax, eax
                jnz     short loc_140218010
                mov     ecx, 102h

loc_140218010:                          ; CODE XREF: KeRemoveQueueEx+429↑j
                mov     r14, [rsp+98h+arg_20]
                mov     [r14], rcx
                test    r12b, r12b
                jnz     loc_140426547

loc_140218024:                          ; CODE XREF: KeRemoveQueueEx+20E8C8↓j
                                        ; KeRemoveQueueEx+20E970↓j
                mov     rsi, gs:20h
                movzx   edi, byte ptr [rbx+186h]
                cmp     dil, 2
                jnb     loc_1404266E9
                cmp     qword ptr [rsi+10h], 0
                mov     rbp, [rsi+8]
                jnz     loc_14021844D
                mov     eax, [rbp+74h]
                test    al, 40h
                jnz     loc_14042663C

loc_140218058:                          ; CODE XREF: KeRemoveQueueEx+908↓j
                                        ; KeRemoveQueueEx+20EAAC↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426691

loc_140218066:                          ; CODE XREF: KeRemoveQueueEx+20EAB4↓j
                                        ; KeRemoveQueueEx+20EAC2↓j ...
                mov     cr8, rdi
                jmp     loc_140217E98
; ---------------------------------------------------------------------------

loc_14021806F:                          ; CODE XREF: KeRemoveQueueEx+8D↑j
                mov     rax, [rax]
                mov     rbp, [rdx]
                sub     rbp, rax
                mov     [rsp+98h+arg_18], ecx
                mov     rax, [rbx+0F8h]
                add     rax, [r10]
                sub     rbp, rax
                jmp     loc_140217C7E
; ---------------------------------------------------------------------------

loc_140218091:                          ; CODE XREF: KeRemoveQueueEx+139↑j
                test    byte ptr [rbx+0C2h], 2
                jz      loc_140217D4A
                test    r13b, r13b
                jnz     loc_14021822B
                jmp     loc_140217D4A
; ---------------------------------------------------------------------------

loc_1402180AC:                          ; CODE XREF: KeRemoveQueueEx+20A↑j
                mov     rax, 0FFFFF780000003B0h
                mov     rcx, 0FFFFF78000000008h
                mov     rax, [rax]
                mov     rcx, [rcx]
                sub     rcx, [rbx+0F8h]
                mov     edx, [rbx+3B8h]
                sub     rcx, rax
                cmp     byte ptr [rbx+187h], 0
                mov     rax, rbp
                jz      short loc_140218105
                cmp     dword ptr [rbx+1E4h], 0
                jnz     short loc_140218105
                cmp     byte ptr [rbx+186h], 0
                jnz     short loc_140218105
                cmp     byte ptr [rbx+0C0h], 0
                jnz     short loc_140218105
                test    edx, edx
                jnz     loc_140426881

loc_140218105:                          ; CODE XREF: KeRemoveQueueEx+500↑j
                                        ; KeRemoveQueueEx+509↑j ...
                cmp     rcx, rax
                jbe     loc_140217DF8
                jmp     loc_14021838B
; ---------------------------------------------------------------------------

loc_140218113:                          ; CODE XREF: KeRemoveQueueEx+373↑j
                cmp     esi, r10d
                jnb     loc_140217F59
                jmp     loc_140217F13
; ---------------------------------------------------------------------------

loc_140218121:                          ; CODE XREF: KeRemoveQueueEx+1E3↑j
                                        ; KeRemoveQueueEx+555↓j ...
                inc     esi
                test    cs:dword_140CFB240, esi
                jz      loc_14042684E

loc_14021812F:                          ; CODE XREF: KeRemoveQueueEx+20EC76↓j
                                        ; KeRemoveQueueEx+20EC83↓j
                pause

loc_140218131:                          ; CODE XREF: KeRemoveQueueEx+20EC91↓j
                mov     eax, [rdi]
                test    al, al
                js      short loc_140218121
                lock bts dword ptr [rdi], 7
                jb      short loc_140218121
                mov     r9d, 80h
                jmp     loc_140217DC9
; ---------------------------------------------------------------------------

loc_140218149:                          ; CODE XREF: KeRemoveQueueEx+1BD↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14032F424
                jmp     loc_140217DA3
; ---------------------------------------------------------------------------

loc_140218159:                          ; CODE XREF: KeRemoveQueueEx+1ED↑j
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_140217DD3
                mov     r8d, [rsp+98h+arg_28]
                mov     rcx, rdi
                mov     rdx, [rsp+98h+arg_20]
                call    sub_14034EB54
                mov     esi, eax
                test    eax, eax
                jz      loc_140426876
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r14, [rsp+98h+arg_20]

loc_140218196:                          ; CODE XREF: KeRemoveQueueEx+7C5↓j
                mov     byte ptr [rbx+283h], 0
                mov     rdi, gs:20h
                cmp     qword ptr [rdi+2D08h], 0
                jnz     loc_1404269DC

loc_1402181B4:                          ; CODE XREF: KeRemoveQueueEx+20EE11↓j
                movzx   r8d, r15b
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402D149C
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jz      loc_140217FBF
                jmp     loc_1404269F6
; ---------------------------------------------------------------------------

loc_1402181D8:                          ; CODE XREF: KeRemoveQueueEx+273↑j
                mov     r10, cr8
                mov     [rsp+98h+var_50], r10
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042689C

loc_1402181F8:                          ; CODE XREF: KeRemoveQueueEx+20ECBF↓j
                                        ; KeRemoveQueueEx+20ECC9↓j ...
                mov     [rbx+186h], r10b
                jmp     loc_140217CAA
; ---------------------------------------------------------------------------

loc_140218204:                          ; CODE XREF: KeRemoveQueueEx+1AD↑j
                mov     rcx, [rsp+98h+arg_20]
                mov     [rcx], rsi
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jz      loc_140217EA8
                jmp     loc_140426A0B
; ---------------------------------------------------------------------------

loc_140218224:                          ; CODE XREF: KeRemoveQueueEx+15A↑j
                or      byte ptr [rbx+0C2h], 2

loc_14021822B:                          ; CODE XREF: KeRemoveQueueEx+4C1↑j
                mov     esi, 0C0h

loc_140218230:                          ; CODE XREF: KeRemoveQueueEx+20EC37↓j
                                        ; KeRemoveQueueEx+20EC45↓j
                mov     rcx, rbx
                call    sub_1403261B0
                mov     rcx, gs:20h
                movzx   edx, byte ptr [rsp+98h+var_50]
                call    sub_1402D1604
                jmp     loc_140217D8A
; ---------------------------------------------------------------------------

loc_140218250:                          ; CODE XREF: KeRemoveQueueEx+2B2↑j
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                mov     r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404268E2

loc_140218272:                          ; CODE XREF: KeRemoveQueueEx+20ED05↓j
                                        ; KeRemoveQueueEx+20ED0F↓j ...
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     dword ptr [rdi+4], 0
                jz      short loc_140218294
                lea     r8d, [rbp-1]
                mov     rcx, rdi
                lea     rdx, [r14+8]
                call    sub_14034EB54
                lea     r15d, [rax+1]

loc_140218294:                          ; CODE XREF: KeRemoveQueueEx+69E↑j
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426924

loc_1402182A9:                          ; CODE XREF: KeRemoveQueueEx+20ED46↓j
                                        ; KeRemoveQueueEx+20ED52↓j ...
                movzx   eax, sil
                mov     cr8, rax
                jmp     loc_140217E98
; ---------------------------------------------------------------------------

loc_1402182B6:                          ; CODE XREF: KeRemoveQueueEx+3AB↑j
                xor     edx, edx
                mov     rcx, r14
                call    sub_1402423B0
                mov     r13, gs:20h
                mov     [rsp+98h+var_64], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_1404262C0

loc_1402182E1:                          ; CODE XREF: KeRemoveQueueEx+940↓j
                                        ; KeRemoveQueueEx+20E6E4↓j ...
                lock bts qword ptr [rbp+30h], 0
                jb      loc_1402184F3
                mov     r13, [rbp+10h]
                mov     qword ptr [rbp+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_1402CC660
                sti
                mov     [rbp+8], r13
                movzx   eax, byte ptr [r13+184h]
                cmp     al, r15b
                jz      loc_140426329

loc_14021831F:                          ; CODE XREF: KeRemoveQueueEx+20E76A↓j
                mov     byte ptr [r13+184h], 2
                mov     rdx, r14
                mov     rcx, rbp
                mov     byte ptr [r14+283h], 20h ; ' '
                mov     [r14+186h], dil
                call    sub_1402CE090
                movzx   r8d, dil
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1404058F0
                test    al, al
                jnz     loc_14021852B

loc_140218358:                          ; CODE XREF: KeRemoveQueueEx+96E↓j
                mov     r9, [rsp+98h+arg_20]
                jmp     loc_140217F9D
; ---------------------------------------------------------------------------

loc_140218365:                          ; CODE XREF: KeRemoveQueueEx+2FD↑j
                                        ; KeRemoveQueueEx+793↓j ...
                lea     rcx, [rsp+98h+var_68]
                call    sub_1402C8C70
                mov     eax, [rdi]
                test    al, al
                js      short loc_140218365
                lock bts dword ptr [rdi], 7
                jnb     loc_140217EE3
                jmp     short loc_140218365
; ---------------------------------------------------------------------------

loc_140218382:                          ; CODE XREF: KeRemoveQueueEx+212↑j
                test    rbp, rbp
                jnz     loc_14042688A

loc_14021838B:                          ; CODE XREF: KeRemoveQueueEx+52E↑j
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r14, [rsp+98h+arg_20]
                mov     ecx, 102h
                mov     [r14], rcx

loc_1402183A2:                          ; CODE XREF: KeRemoveQueueEx+20EDF0↓j
                mov     esi, r15d
                jmp     loc_140218196
; ---------------------------------------------------------------------------

loc_1402183AA:                          ; CODE XREF: KeRemoveQueueEx+307↑j
                                        ; KeRemoveQueueEx+313↑j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                jmp     loc_140217C9D
; ---------------------------------------------------------------------------

loc_1402183B6:                          ; CODE XREF: KeRemoveQueueEx+114↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140426742

loc_1402183C6:                          ; CODE XREF: KeRemoveQueueEx+7F7↓j
                                        ; KeRemoveQueueEx+20EB66↓j ...
                lea     rcx, [rsp+98h+var_58]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_1402183C6
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_140217CED
                jmp     loc_140426769
; ---------------------------------------------------------------------------

loc_1402183EE:                          ; CODE XREF: KeRemoveQueueEx+121↑j
                cmp     word ptr [rbx+1E6h], 0
                jnz     loc_140217D07
                cmp     r14b, r15b
                jnb     loc_140217D07
                mov     rcx, rbx
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426784

loc_14021841B:                          ; CODE XREF: KeRemoveQueueEx+20EBA7↓j
                                        ; KeRemoveQueueEx+20EBB6↓j ...
                mov     cr8, r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     rcx, cr8
                mov     cr8, rdi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404267C8

loc_140218441:                          ; CODE XREF: KeRemoveQueueEx+20EBEB↓j
                                        ; KeRemoveQueueEx+20EBF4↓j ...
                mov     [rbx+186h], r14b
                jmp     loc_140217CB4
; ---------------------------------------------------------------------------

loc_14021844D:                          ; CODE XREF: KeRemoveQueueEx+467↑j
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1402423B0
                mov     r13, gs:20h
                mov     [rsp+98h+var_5C], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140426555

loc_140218478:                          ; CODE XREF: KeRemoveQueueEx+20E979↓j
                                        ; KeRemoveQueueEx+20E988↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_14042657C
                mov     r13, [rsi+10h]
                mov     qword ptr [rsi+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                mov     [rsi+8], r13
                movzx   eax, byte ptr [r13+184h]
                cmp     al, r15b
                jz      loc_1404265DE

loc_1402184B6:                          ; CODE XREF: KeRemoveQueueEx+20EA1F↓j
                mov     byte ptr [r13+184h], 2
                mov     rdx, rbp
                mov     rcx, rsi
                mov     byte ptr [rbp+283h], 20h ; ' '
                mov     [rbp+186h], dil
                call    sub_1402CE090
                movzx   r8d, dil
                mov     rdx, r13
                mov     rcx, rbp
                call    sub_1404058F0
                test    al, al
                jz      loc_140218058
                jmp     loc_140426604
; ---------------------------------------------------------------------------

loc_1402184F3:                          ; CODE XREF: KeRemoveQueueEx+708↑j
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_1404262E7

loc_140218503:                          ; CODE XREF: KeRemoveQueueEx+934↓j
                                        ; KeRemoveQueueEx+20E70B↓j ...
                lea     rcx, [rsp+98h+var_64]
                call    sub_1402C8C70
                mov     rax, [rbp+30h]
                test    rax, rax
                jnz     short loc_140218503
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jz      loc_1402182E1
                jmp     loc_14042630E
; ---------------------------------------------------------------------------

loc_14021852B:                          ; CODE XREF: KeRemoveQueueEx+772↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042634F

loc_140218539:                          ; CODE XREF: KeRemoveQueueEx+20E772↓j
                                        ; KeRemoveQueueEx+20E780↓j ...
                mov     cr8, r15
                and     dword ptr [r14+74h], 0FFFFFFBFh
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                jmp     loc_140218358
; ---------------------------------------------------------------------------

loc_140218553:                          ; CODE XREF: KeRemoveQueueEx+984↓j
                                        ; KeRemoveQueueEx+20E9A6↓j ...
                lea     rcx, [rsp+98h+var_5C]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_140218553
                jmp     loc_1404265B3
KeRemoveQueueEx endp
