KdSystemDebugControl proc near          ; DATA XREF: .pdata:000000014011DE10↑o

var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_138         = dword ptr -138h
var_134         = dword ptr -134h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = xmmword ptr -120h
var_110         = qword ptr -110h
var_108         = xmmword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = byte ptr  38h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rsi
                sub     rsp, 170h
                mov     r10, rdx
                and     [rsp+178h+var_134], 0
                and     [rsp+178h+var_130], 0
                and     [rsp+178h+var_128], 0
                cmp     cs:byte_140C0F428, 0
                jnz     short loc_1408BB43C
                cmp     cs:byte_140C0F430, 0
                jnz     short loc_1408BB43C
                cmp     cs:KdDebuggerEnabled, 0
                jnz     short loc_1408BB44F

loc_1408BB43C:                          ; CODE XREF: KdSystemDebugControl+28↑j
                                        ; KdSystemDebugControl+31↑j
                cmp     cs:byte_140C32099, 0
                jnz     short loc_1408BB44F
                mov     eax, 0C0000022h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB44F:                          ; CODE XREF: KdSystemDebugControl+3A↑j
                                        ; KdSystemDebugControl+43↑j
                                        ; DATA XREF: ...
;   __try { // __except at loc_1408BBBA9
                cmp     ecx, 0Eh
                jg      loc_1408BB8FD
                jz      loc_1408BB84B
                sub     ecx, 7
                jz      loc_1408BB828
                sub     ecx, 1
                jz      loc_1408BB78F
                sub     ecx, 1
                jz      loc_1408BB6FC
                sub     ecx, 1
                jz      loc_1408BB666
                sub     ecx, 1
                jz      loc_1408BB5C3
                sub     ecx, 1
                jz      loc_1408BB52A
                cmp     ecx, 1
                jnz     loc_1408BB92B
                cmp     r8d, 18h
                jz      short loc_1408BB4AD
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB4AD:                          ; CODE XREF: KdSystemDebugControl+A1↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_120], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_110], xmm1
                mov     esi, dword ptr [rsp+178h+var_110]
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                xor     r9d, r9d
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_120+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_158], rax
                mov     r9d, esi
                mov     r8, [rsp+178h+var_130]
                mov     rdx, qword ptr [rsp+178h+var_120]
                mov     ecx, dword ptr [rsp+178h+var_110+4]
                call    sub_1409BC008
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB52A:                          ; CODE XREF: KdSystemDebugControl+8E↑j
                cmp     r8d, 18h
                jz      short loc_1408BB53A
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB53A:                          ; CODE XREF: KdSystemDebugControl+12E↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_108], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_F8], xmm1
                mov     esi, dword ptr [rsp+178h+var_F8]
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, 1
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_108+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_158], rax
                mov     r9d, esi
                mov     r8, [rsp+178h+var_130]
                mov     rdx, qword ptr [rsp+178h+var_108]
                mov     ecx, dword ptr [rsp+178h+var_F8+4]
                call    sub_1409BBF1C
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB5C3:                          ; CODE XREF: KdSystemDebugControl+85↑j
                cmp     r8d, 18h
                jz      short loc_1408BB5D3
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB5D3:                          ; CODE XREF: KdSystemDebugControl+1C7↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_70], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_60], xmm1
                mov     esi, dword ptr [rsp+178h+var_60]
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                xor     r9d, r9d
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_70+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_150], rax
                mov     dword ptr [rsp+178h+var_158], 3
                mov     rcx, qword ptr [rsp+178h+var_70]

loc_1408BB651:                          ; CODE XREF: KdSystemDebugControl+2F7↓j
                                        ; KdSystemDebugControl+38A↓j ...
                mov     rdx, [rsp+178h+var_130]
                mov     r8d, esi
                xor     r9d, r9d
                call    sub_1409BBB9C
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB666:                          ; CODE XREF: KdSystemDebugControl+7C↑j
                cmp     r8d, 18h
                jz      short loc_1408BB676
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB676:                          ; CODE XREF: KdSystemDebugControl+26A↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_58], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_48], xmm1
                mov     esi, dword ptr [rsp+178h+var_48]
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, 1
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_58+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_150], rax
                mov     dword ptr [rsp+178h+var_158], 2
                mov     rcx, qword ptr [rsp+178h+var_58]
                jmp     loc_1408BB651
; ---------------------------------------------------------------------------

loc_1408BB6FC:                          ; CODE XREF: KdSystemDebugControl+73↑j
                cmp     r8d, 18h
                jz      short loc_1408BB70C
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB70C:                          ; CODE XREF: KdSystemDebugControl+300↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_40], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_30], xmm1
                mov     esi, dword ptr [rsp+178h+var_30]
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                xor     r9d, r9d
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_40+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_150], rax
                mov     dword ptr [rsp+178h+var_158], 1
                mov     rcx, qword ptr [rsp+178h+var_40]
                jmp     loc_1408BB651
; ---------------------------------------------------------------------------

loc_1408BB78F:                          ; CODE XREF: KdSystemDebugControl+6A↑j
                cmp     r8d, 18h
                jz      short loc_1408BB79F
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB79F:                          ; CODE XREF: KdSystemDebugControl+393↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_28], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+178h+var_18], xmm1
                mov     esi, dword ptr [rsp+178h+var_18]
                test    esi, esi
                jnz     short loc_1408BB7CD

loc_1408BB7C3:                          ; CODE XREF: KdSystemDebugControl+C6↑j
                                        ; KdSystemDebugControl+159↑j ...
                mov     ebx, 0C0000005h
                jmp     loc_1408BB930
; ---------------------------------------------------------------------------

loc_1408BB7CD:                          ; CODE XREF: KdSystemDebugControl+3C1↑j
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, 1
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_28+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_150], rax
                and     dword ptr [rsp+178h+var_158], 0
                mov     rcx, qword ptr [rsp+178h+var_28]
                jmp     loc_1408BB651
; ---------------------------------------------------------------------------

loc_1408BB828:                          ; CODE XREF: KdSystemDebugControl+61↑j
                cmp     [rsp+178h+arg_20], 28h ; '('
                jz      short loc_1408BB83C
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB83C:                          ; CODE XREF: KdSystemDebugControl+430↑j
                mov     rcx, r9
                call    sub_1409BAE6C
                xor     ebx, ebx
                jmp     loc_1408BB930
; ---------------------------------------------------------------------------

loc_1408BB84B:                          ; CODE XREF: KdSystemDebugControl+58↑j
                cmp     r8d, 20h ; ' '
                jz      short loc_1408BB85B
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB85B:                          ; CODE XREF: KdSystemDebugControl+44F↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_F0], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+178h+var_E0], xmm1
                movd    esi, xmm1
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, 1
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_F0+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_148], rax
                mov     dword ptr [rsp+178h+var_150], esi
                mov     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9, qword ptr [rsp+178h+var_F0]
                mov     r8d, dword ptr [rsp+178h+var_E0+0Ch]
                mov     edx, dword ptr [rsp+178h+var_E0+8]
                mov     ecx, dword ptr [rsp+178h+var_E0+4]
                call    sub_140511E64
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB8FD:                          ; CODE XREF: KdSystemDebugControl+52↑j
                sub     ecx, 0Fh
                jz      loc_1408BBAE8
                sub     ecx, 1
                jz      loc_1408BBAC7
                sub     ecx, 1
                jz      loc_1408BBAA6
                sub     ecx, 1
                jz      loc_1408BB9F4
                sub     ecx, 1
                jz      short loc_1408BB945
                cmp     ecx, 1
                jz      short loc_1408BB939

loc_1408BB92B:                          ; CODE XREF: KdSystemDebugControl+97↑j
                mov     ebx, 0C0000003h

loc_1408BB930:                          ; CODE XREF: KdSystemDebugControl+3C8↑j
                                        ; KdSystemDebugControl+446↑j
                mov     [rsp+178h+var_138], ebx
                jmp     loc_1408BBB94
; ---------------------------------------------------------------------------

loc_1408BB939:                          ; CODE XREF: KdSystemDebugControl+529↑j
                xor     ecx, ecx
                call    sub_1409BAE48
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB945:                          ; CODE XREF: KdSystemDebugControl+524↑j
                cmp     r8d, 20h ; ' '
                jz      short loc_1408BB955
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BB955:                          ; CODE XREF: KdSystemDebugControl+549↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_D0], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+178h+var_C0], xmm1
                movd    esi, xmm1
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                xor     r9d, r9d
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_D0+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_148], rax
                mov     dword ptr [rsp+178h+var_150], esi
                mov     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, dword ptr [rsp+178h+var_D0]
                mov     r8d, dword ptr [rsp+178h+var_C0+0Ch]
                mov     edx, dword ptr [rsp+178h+var_C0+8]
                mov     ecx, dword ptr [rsp+178h+var_C0+4]
                call    sub_1409BAF00
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BB9F4:                          ; CODE XREF: KdSystemDebugControl+51B↑j
                cmp     r8d, 20h ; ' '
                jz      short loc_1408BBA04
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BBA04:                          ; CODE XREF: KdSystemDebugControl+5F8↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_B0], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+178h+var_A0], xmm1
                movd    esi, xmm1
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, 1
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_B0+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_148], rax
                mov     dword ptr [rsp+178h+var_150], esi
                mov     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9d, dword ptr [rsp+178h+var_B0]
                mov     r8d, dword ptr [rsp+178h+var_A0+0Ch]
                mov     edx, dword ptr [rsp+178h+var_A0+8]
                mov     ecx, dword ptr [rsp+178h+var_A0+4]
                call    sub_1409BAE98
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BBAA6:                          ; CODE XREF: KdSystemDebugControl+512↑j
                cmp     r8d, 10h
                jz      short loc_1408BBAB6
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BBAB6:                          ; CODE XREF: KdSystemDebugControl+6AA↑j
                add     rdx, 8
                mov     ecx, [r10]
                call    sub_140512010
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BBAC7:                          ; CODE XREF: KdSystemDebugControl+509↑j
                cmp     r8d, 10h
                jz      short loc_1408BBAD7
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BBAD7:                          ; CODE XREF: KdSystemDebugControl+6CB↑j
                add     rdx, 8
                mov     ecx, [r10]
                call    sub_140511F24
                jmp     loc_1408BBB8E
; ---------------------------------------------------------------------------

loc_1408BBAE8:                          ; CODE XREF: KdSystemDebugControl+500↑j
                cmp     r8d, 20h ; ' '
                jz      short loc_1408BBAF8
                mov     eax, 0C0000004h
                jmp     loc_1408BBBC3
; ---------------------------------------------------------------------------

loc_1408BBAF8:                          ; CODE XREF: KdSystemDebugControl+6EC↑j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+178h+var_90], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+178h+var_80], xmm1
                movd    esi, xmm1
                test    esi, esi
                jz      loc_1408BB7C3
                lea     rax, [rsp+178h+var_128]
                mov     [rsp+178h+var_150], rax
                lea     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                xor     r9d, r9d
                mov     r8b, [rsp+178h+arg_30]
                mov     edx, esi
                mov     rcx, qword ptr [rsp+178h+var_90+8]
                call    sub_1406909D8
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax
                test    eax, eax
                js      short loc_1408BBB94
                lea     rax, [rsp+178h+var_134]
                mov     [rsp+178h+var_148], rax
                mov     dword ptr [rsp+178h+var_150], esi
                mov     rax, [rsp+178h+var_130]
                mov     [rsp+178h+var_158], rax
                mov     r9, qword ptr [rsp+178h+var_90]
                mov     r8d, dword ptr [rsp+178h+var_80+0Ch]
                mov     edx, dword ptr [rsp+178h+var_80+8]
                mov     ecx, dword ptr [rsp+178h+var_80+4]
                call    sub_140511F58

loc_1408BBB8E:                          ; CODE XREF: KdSystemDebugControl+125↑j
                                        ; KdSystemDebugControl+1BE↑j ...
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax

loc_1408BBB94:                          ; CODE XREF: KdSystemDebugControl+FF↑j
                                        ; KdSystemDebugControl+195↑j ...
                mov     rcx, [rsp+178h+arg_28]
                test    rcx, rcx
                jz      short loc_1408BBBA7
                mov     eax, [rsp+178h+var_134]
                mov     [rcx], eax

loc_1408BBBA7:                          ; CODE XREF: KdSystemDebugControl+79F↑j
                jmp     short loc_1408BBBAF
;   } // starts at 1408BB44F
; ---------------------------------------------------------------------------

loc_1408BBBA9:                          ; DATA XREF: .rdata:00000001400B9274↑o
;   __except(1) // owned by 1408BB44F
                mov     ebx, eax
                mov     [rsp+178h+var_138], eax

loc_1408BBBAF:                          ; CODE XREF: KdSystemDebugControl:loc_1408BBBA7↑j
                cmp     [rsp+178h+var_130], 0
                jz      short loc_1408BBBC1
                mov     rcx, [rsp+178h+var_128]
                call    sub_1402E68C4

loc_1408BBBC1:                          ; CODE XREF: KdSystemDebugControl+7B5↑j
                mov     eax, ebx

loc_1408BBBC3:                          ; CODE XREF: KdSystemDebugControl+4A↑j
                                        ; KdSystemDebugControl+A8↑j ...
                mov     rbx, [rsp+178h+arg_0]
                add     rsp, 170h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408BB400
KdSystemDebugControl endp
