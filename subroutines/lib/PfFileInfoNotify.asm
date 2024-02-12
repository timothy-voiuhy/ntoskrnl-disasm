PfFileInfoNotify proc near              ; DATA XREF: .rdata:000000014005D6C0↑o
                                        ; .pdata:00000001400CE448↑o

var_D0          = qword ptr -0D0h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140441678 SIZE 000005D5 BYTES

                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0B8h
                xor     r12d, r12d
                mov     rsi, rcx
                cmp     dword ptr [rcx], 0Fh
                mov     [rbp+57h+var_94], r12d
                mov     [rbp+57h+var_6C], r12d
                mov     [rbp+57h+var_A8], r12
                mov     [rbp+57h+var_A0], r12
                jnz     loc_140270874
                mov     eax, [rcx+8]
                test    al, 8
                jnz     loc_14027030C
                test    al, 4
                jnz     loc_1402704A2

loc_1402700BF:                          ; CODE XREF: PfFileInfoNotify+447↓j
                                        ; PfFileInfoNotify+51A↓j ...
                mov     eax, [rsi+8]
                test    al, 1
                jz      loc_14027032A
                mov     eax, cs:dword_140C4FC64
                cmp     cs:dword_140C4FC60, eax
                jnb     loc_14027067D
                mov     eax, [rsi+4]

loc_1402700DF:                          ; CODE XREF: PfFileInfoNotify+615↓j
                                        ; PfFileInfoNotify+61E↓j ...
                cmp     eax, 4
                jnz     loc_14027032F
                mov     rdx, [rsi+10h]
                mov     ebx, [rdx+8]
                mov     ecx, [rdx+10h]
                and     ebx, 0FFFh
                add     rcx, 0FFFh
                add     rbx, rcx
                shr     rbx, 0Ch
                cmp     cs:dword_140C4C40C, r12d
                jnz     loc_1402702D1

loc_140270113:                          ; CODE XREF: PfFileInfoNotify+292↓j
                mov     eax, cs:dword_140C4FC64
                cmp     cs:dword_140C4FC60, eax
                jnb     loc_14027071E
                mov     rax, [rsi+10h]
                mov     rcx, [rax+20h]
                movsxd  r10, dword ptr [rax+14h]
                mov     r9, [rax+8]
                mov     r11, [rax+18h]
                mov     edx, [rcx+510h]
                mov     r8, [rcx+220h]
                shr     edx, 0Ch
                and     edx, 7
                test    dword ptr [r8+464h], 100000h
                jnz     loc_140270739

loc_14027015D:                          ; CODE XREF: PfFileInfoNotify+6D5↓j
                cmp     edx, cs:dword_140C4E6AC
                jb      loc_140270307
                mov     rcx, [r8+440h]
                mov     rax, r10
                shl     rax, 3Fh
                mov     rdx, 1FFFFFFFFFFFFFFFh
                or      rax, rbx
                mov     dword ptr [rbp+57h+var_48+4], ecx
                mov     qword ptr [rbp+57h+var_58], rax
                mov     rbx, r12
                mov     rax, [r8+468h]
                mov     rdi, r12
                xor     rax, rcx
                shr     r9, 0Ch
                and     rax, rdx
                mov     qword ptr [rbp+57h+var_68], r11
                mov     qword ptr [rbp+57h+var_58+8], rax
                mov     rcx, 0FFFFF78000000320h
                mov     eax, cs:dword_140CEC0D0
                mov     dword ptr [rbp+57h+var_48], eax
                mov     rax, 0FFFFF78000000004h
                mov     qword ptr [rbp+57h+var_68+8], r9
                mov     rcx, [rcx]
                mov     r15d, ecx
                mov     eax, [rax]
                imul    r15, rax
                shr     rcx, 20h
                imul    rcx, rax
                shr     r15, 18h
                shl     rcx, 8
                add     r15, rcx
                lea     rcx, unk_140C4FBA0
                shr     r15, 0Ah
                add     r15d, cs:dword_140C5015C
                call    sub_14024C840
                test    al, al
                jz      loc_140441BEC

loc_140270209:                          ; CODE XREF: PfFileInfoNotify+1D1B76↓j
                lea     rcx, unk_140C4FBC0
                call    ExpInterlockedPopEntrySList
                mov     rcx, rax
                test    rax, rax
                jz      loc_1402704C0

loc_140270221:                          ; CODE XREF: PfFileInfoNotify+462↓j
                                        ; PfFileInfoNotify+49A↓j
                mov     rdx, [rcx+18h]
                mov     rax, [rcx+20h]
                sub     rax, rdx
                cmp     rax, 40h ; '@'
                jl      loc_140441BC6
                mov     rdi, rdx
                mov     rbx, rcx
                mov     r14d, r12d

loc_14027023F:                          ; CODE XREF: PfFileInfoNotify+1D1BD8↓j
                test    r14d, r14d
                js      loc_140441BF2
                mov     rax, [rdi]
                movups  xmm0, [rbp+57h+var_68]
                mov     [rdi+8], r15d
                and     rax, 0FFFFFFFFFFFEA013h
                movups  xmm1, [rbp+57h+var_58]
                or      rax, 2A013h
                mov     [rdi], rax
                movups  xmmword ptr [rdi+10h], xmm0
                movsd   xmm0, [rbp+57h+var_48]
                movups  xmmword ptr [rdi+20h], xmm1
                movsd   qword ptr [rdi+30h], xmm0
                add     qword ptr [rbx+18h], 40h ; '@'
                inc     dword ptr [rbx+28h]
                mov     rdi, [rbx+10h]
                mov     rcx, [rbx+20h]
                sub     rcx, [rbx+18h]
                movsxd  rax, dword ptr [rdi+50h]
                cmp     rcx, rax
                jl      loc_14027050F
                lea     rcx, [rdi+20h]
                mov     rdx, rbx
                call    ExpInterlockedPushEntrySList
                mov     rcx, rdi
                call    sub_14024C380

loc_1402702AD:                          ; CODE XREF: PfFileInfoNotify+4AB↓j
                mov     r14d, r12d

loc_1402702B0:                          ; CODE XREF: PfFileInfoNotify+29A↓j
                                        ; PfFileInfoNotify+ABF↓j ...
                test    r14d, r14d
                js      loc_140270724

loc_1402702B9:                          ; CODE XREF: PfFileInfoNotify+2BD↓j
                                        ; PfFileInfoNotify+42D↓j ...
                mov     eax, r14d
                add     rsp, 0B8h
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

loc_1402702D1:                          ; CODE XREF: PfFileInfoNotify+9D↑j
                mov     r14, [rdx+20h]
                mov     r12, rbx
                mov     rax, [rdx]
                mov     r15, [rdx+8]
                mov     r13, [rdx+18h]
                mov     rcx, [r14+220h]
                mov     [rbp+57h+arg_8], rax
                call    sub_140270D30
                mov     rdi, rax
                test    rax, rax
                jnz     loc_140270520

loc_1402702FF:                          ; CODE XREF: PfFileInfoNotify+50A↓j
                xor     r12d, r12d
                jmp     loc_140270113
; ---------------------------------------------------------------------------

loc_140270307:                          ; CODE XREF: PfFileInfoNotify+F3↑j
                mov     r14d, r12d
                jmp     short loc_1402702B0
; ---------------------------------------------------------------------------

loc_14027030C:                          ; CODE XREF: PfFileInfoNotify+41↑j
                mov     ecx, [rcx+4]
                cmp     ecx, 7
                jnz     loc_14027087F
                mov     edi, 1
                lock xadd cs:dword_140CEC0D0, edi
                inc     edi
                mov     [rsi+10h], edi

loc_14027032A:                          ; CODE XREF: PfFileInfoNotify+54↑j
                                        ; PfFileInfoNotify+2F2↓j ...
                mov     r14d, r12d
                jmp     short loc_1402702B9
; ---------------------------------------------------------------------------

loc_14027032F:                          ; CODE XREF: PfFileInfoNotify+72↑j
                cmp     eax, 0Dh        ; switch 14 cases
                ja      def_14027034B   ; jumptable 000000014027034B default case, cases 4-7,9-12
                lea     rdx, cs:140000000h
                cdqe
                mov     ecx, ds:(jpt_14027034B - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_140270351:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rdx, [rsi+10h]  ; jumptable 000000014027034B case 2
                mov     eax, [rdx+20h]
                mov     ecx, eax
                shr     ecx, 10h
                movzx   eax, ax
                cmp     ecx, eax
                jbe     short loc_14027032A
                mov     r8d, 1
                lea     rcx, unk_140C501D8
                call    sub_1405E96E0
                mov     eax, cs:dword_140C4FC64
                cmp     cs:dword_140C4FC60, eax
                jnb     loc_14027074A
                mov     rax, [rsi+10h]
                lea     r8, [rbp+57h+var_A0]
                mov     edx, [rax+20h]
                mov     rax, [rax+18h]
                mov     ebx, edx
                movzx   ecx, dx
                shr     ebx, 10h
                lea     r12, [rax+rcx*2]
                movzx   eax, dx
                sub     ebx, eax
                lea     rdx, [rbp+57h+var_A8]
                lea     rcx, unk_140C4FB20
                lea     r13d, [rbx+rbx]
                lea     r15d, [r13+35h]
                and     r15d, 0FFFFFFF8h
                mov     r9d, r15d
                call    sub_1402088C8
                mov     r14d, eax
                test    eax, eax
                js      loc_140441BAC
                mov     rdi, [rbp+57h+var_A0]
                mov     ecx, r15d
                and     ecx, 0FFFFFFFh
                mov     r8d, r13d
                shl     ecx, 3
                mov     eax, [rdi]
                and     eax, 80000000h
                or      ecx, eax
                mov     [rdi], ecx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+28h]
                mov     [rdi+4], ecx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+2Ch]
                mov     [rdi+8], ecx
                mov     rax, [rsi+10h]
                mov     rcx, [rax+8]
                mov     [rdi+18h], rcx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+30h]
                mov     [rdi+20h], ecx
                mov     rax, [rsi+10h]
                mov     rcx, [rax+10h]
                mov     [rdi+10h], rcx
                mov     rax, [rsi+10h]
                mov     edx, [rax+24h]
                xor     edx, [rdi+28h]
                and     edx, 1
                xor     [rdi+28h], edx
                mov     rdx, r12
                mov     ecx, [rdi+28h]
                mov     rax, [rsi+10h]
                mov     r9d, [rax+24h]
                shr     r9d, 3
                xor     r9d, ecx
                and     r9d, 2
                xor     r9d, ecx
                mov     [rdi+28h], r9d
                mov     rax, [rsi+10h]
                mov     ecx, [rax+24h]
                add     ecx, ecx
                xor     ecx, r9d
                and     ecx, 4
                xor     ecx, r9d
                mov     [rdi+28h], ecx
                lea     rcx, [rdi+2Ch]
                mov     [rdi+2Ah], bx
                call    memmove
                movzx   eax, word ptr [rdi+2Ah]
                lea     rcx, [rdi+2Ch]
                xor     r12d, r12d
                mov     [rdi+rax*2+2Ch], r12w

loc_140270489:                          ; CODE XREF: PfFileInfoNotify+7DF↓j
                call    _wcsupr
                mov     rcx, [rbp+57h+var_A8]
                mov     r8d, r15d
                call    sub_1402089A4
                mov     r14d, r12d
                jmp     loc_1402702B9
; ---------------------------------------------------------------------------

loc_1402704A2:                          ; CODE XREF: PfFileInfoNotify+49↑j
                mov     eax, [rcx+4]
                cmp     eax, 2
                jnz     loc_14027057F
                mov     rcx, [rcx+10h]
                call    sub_140696C74
                jmp     loc_1402700BF
; ---------------------------------------------------------------------------
                align 20h

loc_1402704C0:                          ; CODE XREF: PfFileInfoNotify+1AB↑j
                                        ; PfFileInfoNotify+498↓j
                lea     rcx, unk_140C4FBB0
                call    ExpInterlockedPopEntrySList
                mov     rcx, rax
                test    rax, rax
                jnz     loc_140270221
                mov     rax, cs:qword_140C4FBF8
                lea     rcx, unk_140C4FBA0
                call    sub_1404079D0
                mov     r14d, eax
                test    eax, eax
                js      loc_140441C2E
                lea     rcx, unk_140C4FBC0
                call    ExpInterlockedPopEntrySList
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1402704C0
                jmp     loc_140270221
; ---------------------------------------------------------------------------

loc_14027050F:                          ; CODE XREF: PfFileInfoNotify+223↑j
                mov     rax, [rdi+60h]
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     loc_1402702AD
; ---------------------------------------------------------------------------

loc_140270520:                          ; CODE XREF: PfFileInfoNotify+289↑j
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_1402EEB70
                test    eax, eax
                jz      short loc_14027056E
                and     r15, 0FFFFFFFFFFFFF000h
                test    rbx, rbx
                jz      short loc_14027056E
                mov     r14, [rbp+57h+arg_8]
                xor     esi, esi

loc_140270544:                          ; CODE XREF: PfFileInfoNotify+4F8↓j
                mov     r9, r15
                mov     dword ptr [rsp+0F0h+var_D0], esi
                mov     r8, r13
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14026EFEC
                test    eax, eax
                js      short loc_14027056A
                add     r15, 1000h
                sub     r12, 1
                jnz     short loc_140270544

loc_14027056A:                          ; CODE XREF: PfFileInfoNotify+4EB↑j
                mov     rsi, [rbp+57h+arg_0]

loc_14027056E:                          ; CODE XREF: PfFileInfoNotify+4C0↑j
                                        ; PfFileInfoNotify+4CC↑j
                lea     rcx, [rdi+168h]
                call    sub_14024C380
                jmp     loc_1402702FF
; ---------------------------------------------------------------------------

loc_14027057F:                          ; CODE XREF: PfFileInfoNotify+438↑j
                test    eax, eax
                jz      loc_14027075A
                cmp     eax, 3
                jnz     loc_1402700BF
                mov     rcx, [rcx+10h]
                call    sub_1406FC46C
                jmp     loc_1402700BF
; ---------------------------------------------------------------------------

loc_14027059E:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rcx, [rsi+10h]  ; jumptable 000000014027034B case 13
                mov     rax, [rcx+8]
                test    rax, rax
                jz      loc_140441BBB
                mov     [rbp+57h+var_78], rax
                lea     r8, [rbp+57h+var_80]
                mov     eax, cs:dword_140CEC0D0
                mov     r9d, 18h
                mov     [rbp+57h+var_70], eax
                mov     rax, [rcx]
                mov     rcx, 0FFFFF78000000320h
                mov     [rbp+57h+var_80], rax
                mov     rax, 0FFFFF78000000004h
                mov     [rbp+57h+var_6C], r12d
                mov     rcx, [rcx]
                mov     eax, [rax]
                mov     edx, ecx
                shr     rcx, 20h
                imul    rcx, rax
                imul    rdx, rax
                shl     rcx, 8
                shr     rdx, 18h
                add     rdx, rcx
                lea     ecx, [r9+7]

loc_140270607:                          ; CODE XREF: PfFileInfoNotify+6A9↓j
                shr     rdx, 0Ah
                add     edx, cs:dword_140C5015C
                call    sub_1402087D8
                mov     r14d, r12d
                jmp     loc_1402702B9
; ---------------------------------------------------------------------------

loc_14027061E:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rdx, [rsi+10h]  ; jumptable 000000014027034B case 3
                mov     eax, [rdx+20h]
                mov     ecx, eax
                shr     ecx, 10h
                movzx   eax, ax
                cmp     ecx, eax
                jbe     loc_14027032A
                xor     r8d, r8d
                lea     rcx, unk_140C501D8
                call    sub_1405E96E0
                mov     eax, cs:dword_140C4FC64
                cmp     cs:dword_140C4FC60, eax
                jnb     loc_140270752
                mov     rdx, [rsi+10h]
                xor     ecx, ecx
                mov     r9d, [rdx+24h]
                mov     r8d, [rdx+2Ch]
                mov     rdx, [rdx+10h]
                shr     r9d, 3
                and     r9d, 1
                call    sub_14020865C
                mov     r14d, r12d
                jmp     loc_1402702B9
; ---------------------------------------------------------------------------

loc_14027067D:                          ; CODE XREF: PfFileInfoNotify+66↑j
                mov     ecx, [rsi+4]
                mov     eax, ecx
                cmp     ecx, 4
                jz      loc_1402700DF
                cmp     ecx, 2
                jz      loc_1402700DF
                cmp     ecx, 3
                jz      loc_1402700DF
                mov     r14d, 0C000007Fh
                jmp     short loc_140270724
; ---------------------------------------------------------------------------

loc_1402706A5:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rcx, [rsi+10h]  ; jumptable 000000014027034B case 8
                lea     r8, [rbp+57h+var_98]
                mov     r9d, 18h
                mov     [rbp+57h+var_94], r12d
                mov     eax, [rcx+4]
                mov     edx, [rcx]
                mov     [rbp+57h+var_98], eax
                and     edx, 3
                mov     rax, [rcx+8]
                add     rdx, rdx
                mov     [rbp+57h+var_90], rax
                mov     rax, [rcx+10h]
                mov     rcx, 0FFFFF78000000320h
                add     rax, 0FFFh
                and     rax, 0FFFFFFFFFFFFF000h
                or      rdx, rax
                mov     rax, 0FFFFF78000000004h
                mov     rcx, [rcx]
                mov     [rbp+57h+var_88], rdx
                mov     edx, ecx
                mov     eax, [rax]
                shr     rcx, 20h
                imul    rcx, rax
                imul    rdx, rax
                shl     rcx, 8
                shr     rdx, 18h
                add     rdx, rcx
                mov     ecx, r9d
                jmp     loc_140270607
; ---------------------------------------------------------------------------

loc_14027071E:                          ; CODE XREF: PfFileInfoNotify+AF↑j
                mov     r14d, 0C000007Fh

loc_140270724:                          ; CODE XREF: PfFileInfoNotify+243↑j
                                        ; PfFileInfoNotify+633↑j ...
                cmp     dword ptr [rsi+4], 3
                jg      loc_1402702B9
                inc     cs:dword_140C4FD64
                jmp     loc_1402702B9
; ---------------------------------------------------------------------------

loc_140270739:                          ; CODE XREF: PfFileInfoNotify+E7↑j
                mov     eax, 2
                cmp     edx, eax
                cmovb   eax, edx
                mov     edx, eax
                jmp     loc_14027015D
; ---------------------------------------------------------------------------

loc_14027074A:                          ; CODE XREF: PfFileInfoNotify+312↑j
                mov     r14d, 0C000007Fh
                jmp     short loc_140270724
; ---------------------------------------------------------------------------

loc_140270752:                          ; CODE XREF: PfFileInfoNotify+5E0↑j
                mov     r14d, 0C000007Fh
                jmp     short loc_140270724
; ---------------------------------------------------------------------------

loc_14027075A:                          ; CODE XREF: PfFileInfoNotify+511↑j
                mov     rcx, [rcx+10h]
                call    sub_1406961AC
                jmp     loc_1402700BF
; ---------------------------------------------------------------------------

loc_140270768:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rax, [rsi+10h]  ; jumptable 000000014027034B case 0
                lea     r8, [rbp+57h+var_A0]
                lea     rdx, [rbp+57h+var_A8]
                lea     rcx, unk_140C4FB20
                movzx   r13d, word ptr [rax+1Eh]
                add     r13d, r13d
                lea     r15d, [r13+41h]
                and     r15d, 0FFFFFFF8h
                mov     r9d, r15d
                call    sub_1402088C8
                mov     r14d, eax
                test    eax, eax
                js      loc_140441BAC
                mov     rdi, [rbp+57h+var_A0]
                lea     eax, ds:0[r15*8]
                mov     r8d, r13d
                mov     ecx, [rdi]
                and     ecx, 80000002h
                or      ecx, eax
                or      ecx, 2
                mov     [rdi], ecx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+34h]
                mov     [rdi+4], ecx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+38h]
                mov     [rdi+8], ecx
                mov     rax, [rsi+10h]
                mov     rcx, [rax+8]
                mov     [rdi+18h], rcx
                mov     rax, [rsi+10h]
                mov     edx, [rax+30h]
                xor     edx, [rdi+24h]
                and     edx, 0Fh
                xor     [rdi+24h], edx
                mov     edx, [rdi+24h]
                mov     rax, [rsi+10h]
                mov     ecx, [rax+30h]
                xor     ecx, edx
                and     ecx, 0F0h
                xor     ecx, edx
                mov     [rdi+24h], ecx
                mov     rax, [rsi+10h]
                mov     rcx, [rax+10h]
                mov     [rdi+10h], rcx
                mov     rax, [rsi+10h]
                mov     ecx, [rax+18h]
                mov     [rdi+20h], ecx
                mov     rax, [rsi+10h]
                movzx   ecx, word ptr [rax+1Eh]
                add     cx, cx
                mov     [rdi+28h], cx
                mov     [rdi+2Ah], cx
                lea     rcx, [rdi+38h]
                mov     rdx, [rsi+10h]
                mov     rdx, [rdx+28h]
                call    memmove
                mov     rax, [rsi+10h]
                lea     rcx, [rdi+38h]
                movzx   edx, word ptr [rax+1Eh]
                mov     [rdi+rdx*2+38h], r12w
                jmp     loc_140270489
; ---------------------------------------------------------------------------

loc_140270854:                          ; CODE XREF: PfFileInfoNotify+2DB↑j
                                        ; DATA XREF: PfFileInfoNotify:jpt_14027034B↓o
                mov     rdx, [rsi+10h]  ; jumptable 000000014027034B case 1
                xor     r9d, r9d
                mov     r8d, [rdx+38h]
                lea     ecx, [r9+2]
                mov     rdx, [rdx+8]
                call    sub_14020865C
                mov     r14d, r12d
                jmp     loc_1402702B9
; ---------------------------------------------------------------------------

loc_140270874:                          ; CODE XREF: PfFileInfoNotify+36↑j
                mov     r14d, 0C000000Dh
                jmp     loc_140270724
; ---------------------------------------------------------------------------

loc_14027087F:                          ; CODE XREF: PfFileInfoNotify+2A2↑j
                sub     ecx, 0Ah
                jnz     loc_140270CB6
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C50288
                call    ExAcquirePushLockExclusiveEx
                cmp     cs:qword_140C50278, 0
                mov     rbx, 0FFFFFFFFFFFFFFFFh
                mov     r12d, 0FFFFFFFFh
                mov     r13, 7FFFFFFFFFFFFFFCh
                lea     edi, [rbx+2]
                jnz     loc_140441B6F
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C50290
                call    ExAcquirePushLockExclusiveEx
                and     cs:dword_140C502A8, 0FFFFFFFEh
                mov     rax, rbx
                lock xadd cs:qword_140C50290, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_140270911
                lea     rcx, qword_140C50290
                call    ExfTryToWakePushLock

loc_140270911:                          ; CODE XREF: PfFileInfoNotify+893↑j
                xor     r15d, r15d
                lea     rcx, qword_140C50290
                mov     [rbp+57h+var_B8], r15d
                mov     r14, gs:188h
                call    sub_140245330
                cmp     eax, edi
                jnz     loc_140270CDB
                mov     rcx, [r14+0B8h]
                call    sub_140245840
                mov     r8d, eax

loc_140270944:                          ; CODE XREF: PfFileInfoNotify+C6E↓j
                dec     word ptr [r14+1E6h]
                inc     byte ptr [r14+31Ah]
                movsx   ecx, byte ptr [r14+318h]
                lea     r9, qword_140C50290
                movsx   edx, byte ptr [r14+366h]
                and     r9, r13
                movzx   eax, byte ptr [r14+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                mov     byte ptr [rbp+57h+arg_0], al
                bsr     ecx, edx
                mov     [rbp+57h+var_BC], ecx
                jz      short loc_1402709C6

loc_140270985:                          ; CODE XREF: PfFileInfoNotify+951↓j
                lea     r15, [rcx+rcx*2]
                mov     eax, edi
                shl     r15, 5
                add     r15, [r14+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [r15+1Ah], dil
                jz      short loc_1402709BB
                mov     eax, [r15+20h]
                test    dil, al
                jnz     short loc_1402709BB
                mov     rax, [r15+20h]
                and     rax, r13
                cmp     rax, r9
                jz      loc_140270B34

loc_1402709BB:                          ; CODE XREF: PfFileInfoNotify+930↑j
                                        ; PfFileInfoNotify+939↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+var_BC], ecx
                jnz     short loc_140270985

loc_1402709C3:                          ; CODE XREF: PfFileInfoNotify+AE3↓j
                xor     r15d, r15d

loc_1402709C6:                          ; CODE XREF: PfFileInfoNotify+913↑j
                mov     eax, [r14+78h]
                bt      eax, 10h
                jnb     loc_140441B52

loc_1402709D4:                          ; CODE XREF: PfFileInfoNotify+B67↓j
                                        ; PfFileInfoNotify+1D1ADD↓j
                dec     byte ptr [r14+31Ah]
                lea     r8, [rbp+57h+var_B8]
                lea     rdx, qword_140C50290
                mov     rcx, r14
                call    sub_1402456E0
                add     [r14+1E6h], di
                jz      loc_140270BDC

loc_1402709FC:                          ; CODE XREF: PfFileInfoNotify+B76↓j
                                        ; PfFileInfoNotify+B81↓j
                call    KeLeaveCriticalRegion
                mov     rax, [rsi+10h]
                lea     rcx, sub_1408E1340
                mov     rax, [rax+20h]
                call    sub_1404079D0
                mov     rax, [rsi+10h]
                xor     r15d, r15d
                mov     cs:qword_140C50278, rax
                mov     r14d, r15d
                mov     eax, r15d
                xchg    rax, cs:qword_140C50280

loc_140270A30:                          ; CODE XREF: PfFileInfoNotify+1D1B08↓j
                lock xadd cs:qword_140C50288, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_140270A4D
                lea     rcx, qword_140C50288
                call    ExfTryToWakePushLock

loc_140270A4D:                          ; CODE XREF: PfFileInfoNotify+9CF↑j
                mov     [rbp+57h+var_B0], r15d
                lea     rcx, qword_140C50288
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, edi
                jnz     short loc_140270A79
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r12d, eax

loc_140270A79:                          ; CODE XREF: PfFileInfoNotify+9F8↑j
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                movsx   ecx, byte ptr [rbx+318h]
                lea     r8, qword_140C50288
                movsx   edx, byte ptr [rbx+366h]
                and     r8, r13
                movzx   eax, byte ptr [rbx+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                mov     byte ptr [rbp+57h+arg_0], al
                bsr     ecx, edx
                mov     [rbp+57h+var_B4], ecx
                jz      short loc_140270AF6

loc_140270AB5:                          ; CODE XREF: PfFileInfoNotify+A81↓j
                lea     r15, [rcx+rcx*2]
                mov     eax, edi
                shl     r15, 5
                add     r15, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [r15+1Ah], dil
                jz      short loc_140270AEB
                mov     eax, [r15+20h]
                test    dil, al
                jnz     short loc_140270AEB
                mov     rax, [r15+20h]
                and     rax, r13
                cmp     rax, r8
                jz      loc_140270BF6

loc_140270AEB:                          ; CODE XREF: PfFileInfoNotify+A60↑j
                                        ; PfFileInfoNotify+A69↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+var_B4], ecx
                jnz     short loc_140270AB5

loc_140270AF3:                          ; CODE XREF: PfFileInfoNotify+BA5↓j
                xor     r15d, r15d

loc_140270AF6:                          ; CODE XREF: PfFileInfoNotify+A43↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jnb     loc_140441B8F

loc_140270B03:                          ; CODE XREF: PfFileInfoNotify+C27↓j
                                        ; PfFileInfoNotify+1D1B1A↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_B0]
                lea     rdx, qword_140C50288
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jz      loc_140270C9C

loc_140270B2A:                          ; CODE XREF: PfFileInfoNotify+C36↓j
                                        ; PfFileInfoNotify+C41↓j
                call    KeLeaveCriticalRegion
                jmp     loc_1402702B0
; ---------------------------------------------------------------------------

loc_140270B34:                          ; CODE XREF: PfFileInfoNotify+945↑j
                cmp     [r15+28h], r8d
                jnz     loc_1402709BB
                and     byte ptr [r15+1Ah], 0FEh
                mov     rax, [r15+20h]
                test    rax, rax
                jz      loc_1402709BB
                test    r15, r15
                jz      loc_1402709C3
                movzx   eax, byte ptr [r15+20h]
                or      al, 2
                mov     [r15+20h], al
                mov     rax, [r15+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_140270B78
                mov     rcx, r15
                call    sub_14031EC80

loc_140270B78:                          ; CODE XREF: PfFileInfoNotify+AFE↑j
                mov     eax, [r15+58h]
                and     eax, 1FFFFh
                mov     [rbp+57h+var_B8], eax
                and     dword ptr [r15+58h], 0FFFE0000h
                and     byte ptr [r15+19h], 0FEh
                mov     qword ptr [r15+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     r15, [r14+320h]
                imul    r15
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     byte ptr [rbp+57h+arg_0], dil
                jnz     loc_140441B3F
                movzx   eax, byte ptr [r14+318h]
                bts     eax, edx
                mov     [r14+318h], al
                jmp     loc_1402709D4
; ---------------------------------------------------------------------------

loc_140270BDC:                          ; CODE XREF: PfFileInfoNotify+986↑j
                lea     rax, [r14+98h]
                cmp     [rax], rax
                jz      loc_1402709FC
                call    KiCheckForKernelApcDelivery
                jmp     loc_1402709FC
; ---------------------------------------------------------------------------

loc_140270BF6:                          ; CODE XREF: PfFileInfoNotify+A75↑j
                cmp     [r15+28h], r12d
                jnz     loc_140270AEB
                and     byte ptr [r15+1Ah], 0FEh
                mov     rax, [r15+20h]
                test    rax, rax
                jz      loc_140270AEB
                test    r15, r15
                jz      loc_140270AF3
                movzx   eax, byte ptr [r15+20h]
                or      al, 2
                mov     [r15+20h], al
                mov     rax, [r15+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_140270C3A
                mov     rcx, r15
                call    sub_14031EC80

loc_140270C3A:                          ; CODE XREF: PfFileInfoNotify+BC0↑j
                mov     eax, [r15+58h]
                and     eax, 1FFFFh
                mov     [rbp+57h+var_B0], eax
                and     dword ptr [r15+58h], 0FFFE0000h
                and     byte ptr [r15+19h], 0FEh
                mov     qword ptr [r15+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     r15, [rbx+320h]
                imul    r15
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     byte ptr [rbp+57h+arg_0], dil
                jnz     loc_140441B7D
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al
                jmp     loc_140270B03
; ---------------------------------------------------------------------------

loc_140270C9C:                          ; CODE XREF: PfFileInfoNotify+AB4↑j
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      loc_140270B2A
                call    KiCheckForKernelApcDelivery
                jmp     loc_140270B2A
; ---------------------------------------------------------------------------

loc_140270CB6:                          ; CODE XREF: PfFileInfoNotify+812↑j
                sub     ecx, 1
                jz      loc_14044168E
                cmp     ecx, 1
                jnz     def_14027034B   ; jumptable 000000014027034B default case, cases 4-7,9-12
                mov     eax, cs:dword_140C503D0
                test    al, 2
                jz      loc_14027032A
                jmp     loc_140441683
; ---------------------------------------------------------------------------

loc_140270CDB:                          ; CODE XREF: PfFileInfoNotify+8BF↑j
                mov     r8d, r12d
                jmp     loc_140270944
; ---------------------------------------------------------------------------
                align 4
jpt_14027034B   dd offset loc_140270768 - 140000000h
                                        ; DATA XREF: PfFileInfoNotify+2D1↑r
                dd offset loc_140270854 - 140000000h ; jump table for switch statement
                dd offset loc_140270351 - 140000000h
                dd offset loc_14027061E - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset loc_1402706A5 - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset def_14027034B - 140000000h
                dd offset loc_14027059E - 140000000h
PfFileInfoNotify endp
