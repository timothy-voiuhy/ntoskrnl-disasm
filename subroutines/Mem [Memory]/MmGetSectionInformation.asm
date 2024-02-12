MmGetSectionInformation proc near       ; CODE XREF: sub_14067EC44+824↑p
                                        ; sub_14067EC44+D8F↑p ...

var_68          = dword ptr -68h
var_58          = xmmword ptr -58h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 80h
                mov     rbx, r8
                mov     edi, edx
                mov     rsi, rcx
                xor     edx, edx
                lea     r8d, [rdx+48h]
                lea     rcx, [rsp+88h+var_58]
                call    memset
                mov     r11d, [rsi+38h]
                xor     r9d, r9d
                mov     r8d, r9d
                mov     rcx, rsi
                call    sub_140267410
                mov     r10, rax
                mov     rcx, rax
                call    sub_1402685A8
                test    eax, eax
                jz      short loc_1406C3605
                mov     eax, 0C000000Dh
                jmp     loc_1406C3834
; ---------------------------------------------------------------------------

loc_1406C3605:                          ; CODE XREF: MmGetSectionInformation+49↑j
                test    edi, edi
                jnz     loc_1406C369F
                mov     ecx, r11d
                and     ecx, 1000h
                shl     ecx, 0Eh
                mov     eax, r11d
                mov     r8d, ecx
                bts     r8d, 1Bh
                and     eax, 2000h
                cmovz   r8d, ecx
                test    r11b, 20h
                mov     eax, 1000000h
                cmovnz  r8d, eax
                mov     eax, r11d
                mov     edx, r8d
                bts     edx, 15h
                and     al, 40h
                cmovz   edx, r8d
                mov     eax, r11d
                mov     ecx, edx
                bts     ecx, 17h
                and     al, 80h
                cmovz   ecx, edx
                mov     edx, ecx
                bts     edx, 13h
                test    r11d, r11d
                cmovns  edx, ecx
                mov     rax, [r10]
                movzx   ecx, word ptr [rax+0Ch]
                mov     eax, edx
                bts     eax, 1Ch
                test    cx, cx
                cmovns  eax, edx
                mov     edx, 4000h
                mov     r8d, eax
                bts     r8d, 1Eh
                and     cx, dx
                cmovz   r8d, eax
                mov     eax, [r10+38h]
                mov     ecx, 20020h
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406C369F
                bts     r8d, 1Dh

loc_1406C369F:                          ; CODE XREF: MmGetSectionInformation+57↑j
                                        ; MmGetSectionInformation+E8↑j
                                        ; DATA XREF: ...
;   __try { // __except at loc_1406C382A
                test    edi, edi
                jnz     short loc_1406C36BF
                mov     rax, [rsi+18h]
                shl     rax, 0Ch
                mov     [rbx], rax
                mov     rax, [rsi+30h]
                mov     [rbx+10h], rax
                mov     [rbx+8], r8d
                jmp     loc_1406C3828
; ---------------------------------------------------------------------------

loc_1406C36BF:                          ; CODE XREF: MmGetSectionInformation+F1↑j
                mov     esi, 1
                cmp     edi, esi
                jz      short loc_1406C3723
                cmp     edi, 4
                jz      short loc_1406C3723
                test    r11b, 20h
                jz      short loc_1406C3729
                mov     rax, [r10+60h]
                mov     rdx, [rax+20h]
                test    rdx, rdx
                jnz     short loc_1406C36E5
                mov     rdx, r9
                jmp     short loc_1406C36E9
; ---------------------------------------------------------------------------

loc_1406C36E5:                          ; CODE XREF: MmGetSectionInformation+12E↑j
                mov     rdx, [rdx+28h]

loc_1406C36E9:                          ; CODE XREF: MmGetSectionInformation+133↑j
                cmp     edi, 2
                jnz     short loc_1406C3711
                test    dword ptr [r10+38h], 10000000h
                jz      short loc_1406C3709
                mov     rax, [r10]
                mov     rcx, cs:qword_140C4DC90
                sub     rcx, [rax+20h]
                add     rdx, rcx

loc_1406C3709:                          ; CODE XREF: MmGetSectionInformation+146↑j
                mov     [rbx], rdx
                jmp     loc_1406C3828
; ---------------------------------------------------------------------------

loc_1406C3711:                          ; CODE XREF: MmGetSectionInformation+13C↑j
                mov     rax, [r10]
                mov     rcx, [rax+20h]
                sub     rcx, rdx
                mov     [rbx], rcx
                jmp     loc_1406C3828
; ---------------------------------------------------------------------------

loc_1406C3723:                          ; CODE XREF: MmGetSectionInformation+116↑j
                                        ; MmGetSectionInformation+11B↑j
                test    r11b, 20h
                jnz     short loc_1406C3739

loc_1406C3729:                          ; CODE XREF: MmGetSectionInformation+121↑j
                mov     r9d, 0C0000049h
                mov     [rsp+88h+var_68], r9d
                jmp     loc_1406C3828
; ---------------------------------------------------------------------------

loc_1406C3739:                          ; CODE XREF: MmGetSectionInformation+177↑j
                mov     rax, [r10]
                mov     r8, [rax+38h]
                movups  xmm0, xmmword ptr [r8]
                movaps  [rsp+88h+var_58], xmm0
                movups  xmm1, xmmword ptr [r8+10h]
                movups  xmm2, xmmword ptr [r8+20h]
                movups  xmm3, xmmword ptr [r8+30h]
                test    dword ptr [r10+38h], 10000000h
                jz      short loc_1406C377D
                movzx   ecx, word ptr [rsp+88h+var_58]
                mov     qword ptr [rsp+88h+var_58], rcx
                or      rcx, cs:qword_140C4DC90
                mov     qword ptr [rsp+88h+var_58], rcx
                movaps  xmm0, [rsp+88h+var_58]

loc_1406C377D:                          ; CODE XREF: MmGetSectionInformation+1B0↑j
                cmp     edi, 4
                jnz     loc_1406C3819
                mov     rcx, r10
                call    sub_1402A8A70
                mov     ecx, r9d
                mov     dword ptr [rsp+88h+var_18], ecx
                mov     edx, r9d
                test    rax, rax
                jz      short loc_1406C37AB
                mov     eax, [rax]
                test    al, 10h
                jz      short loc_1406C37AB
                mov     ecx, esi
                mov     dword ptr [rsp+88h+var_18], ecx
                mov     edx, esi

loc_1406C37AB:                          ; CODE XREF: MmGetSectionInformation+1EB↑j
                                        ; MmGetSectionInformation+1F1↑j
                mov     eax, [r8+4Ch]
                test    sil, al
                jz      short loc_1406C37BF
                mov     ecx, edx
                or      ecx, 2
                mov     dword ptr [rsp+88h+var_18], ecx
                mov     edx, ecx

loc_1406C37BF:                          ; CODE XREF: MmGetSectionInformation+202↑j
                test    al, 2
                jz      short loc_1406C37CE
                mov     ecx, edx
                or      ecx, 8
                mov     dword ptr [rsp+88h+var_18], ecx
                mov     edx, ecx

loc_1406C37CE:                          ; CODE XREF: MmGetSectionInformation+211↑j
                test    al, 4
                jz      short loc_1406C37DB
                mov     ecx, edx
                or      ecx, 10h
                mov     dword ptr [rsp+88h+var_18], ecx

loc_1406C37DB:                          ; CODE XREF: MmGetSectionInformation+220↑j
                test    al, 8
                jz      short loc_1406C37E6
                or      ecx, 20h
                mov     dword ptr [rsp+88h+var_18], ecx

loc_1406C37E6:                          ; CODE XREF: MmGetSectionInformation+22D↑j
                test    al, 10h
                jz      short loc_1406C37F1
                or      ecx, 40h
                mov     dword ptr [rsp+88h+var_18], ecx

loc_1406C37F1:                          ; CODE XREF: MmGetSectionInformation+238↑j
                test    al, 20h
                jz      short loc_1406C37FD
                bts     ecx, 7
                mov     dword ptr [rsp+88h+var_18], ecx

loc_1406C37FD:                          ; CODE XREF: MmGetSectionInformation+243↑j
                movups  xmmword ptr [rbx], xmm0
                movups  xmmword ptr [rbx+10h], xmm1
                movups  xmmword ptr [rbx+20h], xmm2
                movups  xmmword ptr [rbx+30h], xmm3
                movsd   xmm0, [rsp+88h+var_18]
                movsd   qword ptr [rbx+40h], xmm0
                jmp     short loc_1406C3828
; ---------------------------------------------------------------------------

loc_1406C3819:                          ; CODE XREF: MmGetSectionInformation+1D0↑j
                movups  xmmword ptr [rbx], xmm0
                movups  xmmword ptr [rbx+10h], xmm1
                movups  xmmword ptr [rbx+20h], xmm2
                movups  xmmword ptr [rbx+30h], xmm3

loc_1406C3828:                          ; CODE XREF: MmGetSectionInformation+10A↑j
                                        ; MmGetSectionInformation+15C↑j ...
                jmp     short loc_1406C3831
;   } // starts at 1406C369F
; ---------------------------------------------------------------------------

loc_1406C382A:                          ; DATA XREF: .rdata:0000000140074CDC↑o
;   __except(1) // owned by 1406C369F
                mov     r9d, eax
                mov     [rsp+88h+var_68], eax

loc_1406C3831:                          ; CODE XREF: MmGetSectionInformation:loc_1406C3828↑j
                mov     eax, r9d

loc_1406C3834:                          ; CODE XREF: MmGetSectionInformation+50↑j
                lea     r11, [rsp+88h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406C35B0
MmGetSectionInformation endp
