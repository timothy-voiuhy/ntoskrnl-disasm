NtQueryInformationFile proc near        ; CODE XREF: sub_140201A84+2B↑p
                                        ; sub_140698D38+193↓p ...

var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_E8          = byte ptr -0E8h
var_E7          = byte ptr -0E7h
var_E0          = qword ptr -0E0h
var_D8          = byte ptr -0D8h
var_D7          = byte ptr -0D7h
var_D4          = dword ptr -0D4h
var_D0          = byte ptr -0D0h
var_CF          = byte ptr -0CFh
var_CE          = byte ptr -0CEh
var_CD          = byte ptr -0CDh
var_CC          = byte ptr -0CCh
var_CB          = byte ptr -0CBh
var_CA          = byte ptr -0CAh
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = byte ptr -58h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 00000001407E6780 SIZE 00000026 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9d
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     ebx, r9d
                mov     r13, r8
                mov     r12, rdx
                mov     rdi, rcx
                mov     [rsp+118h+var_B0], rdx
                mov     [rsp+118h+var_80], rdx
                xor     r15d, r15d
                mov     [rsp+118h+var_E0], r15
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [r11-58h], xmm0
                mov     [r11-48h], rax
                movups  xmmword ptr [r11-68h], xmm0
                mov     [rsp+118h+var_A8], r15
                mov     [rsp+118h+var_D7], al
                mov     [rsp+118h+var_E7], al
                mov     rax, gs:188h
                mov     [rsp+118h+var_78], rax
                movzx   esi, byte ptr [rax+232h]
                mov     [rsp+118h+var_E8], sil
                mov     [rsp+118h+var_CB], sil
                mov     r14d, [rsp+118h+arg_20]
                mov     [rsp+118h+var_F0], r14d
                mov     dword ptr [rsp+118h+var_F8], ebx
                mov     r9, r8
                mov     r8, rdx
                mov     rdx, rax
                movzx   ecx, sil
                call    sub_140641C70
                test    eax, eax
                js      loc_140641C50
                test    sil, sil
                jnz     short loc_1406413AD
                cmp     r14d, 4Bh ; 'K'
                jnz     short loc_1406413AD
                mov     r14d, 47h ; 'G'
                mov     [rsp+118h+arg_20], r14d
                mov     [rsp+118h+var_E7], 1

loc_1406413AD:                          ; CODE XREF: NtQueryInformationFile+B2↑j
                                        ; NtQueryInformationFile+B8↑j
                movsxd  rax, r14d
                lea     rdx, dword_140987C30
                lea     rcx, [rsp+118h+var_A8]
                mov     [rsp+118h+var_F8], rcx
                lea     r9, [rsp+118h+var_E0]
                movzx   r8d, sil
                mov     edx, [rdx+rax*4]
                mov     rcx, rdi
                call    sub_1402433F0
                mov     edi, eax
                mov     [rsp+118h+var_D4], eax
                test    eax, eax
                js      loc_140641C50
                cmp     r14d, 8
                jnz     short loc_14064144F
                mov     rax, gs:188h
                inc     qword ptr [rax+390h]
                inc     dword ptr gs:2EE4h
                cmp     ebx, 4
                jnb     short loc_140641415
                mov     edi, 0C0000004h
                mov     rcx, [rsp+118h+var_E0]
                jmp     loc_140641C49
; ---------------------------------------------------------------------------

loc_140641415:                          ; CODE XREF: NtQueryInformationFile+124↑j
                mov     [rsp+118h+var_D0], 1

loc_14064141A:                          ; DATA XREF: .rdata:00000001400545C4↑o
;   __try { // __except at loc_14064143D
                mov     eax, dword ptr [rsp+118h+var_A8+4]
                mov     [r13+0], eax
                mov     [rsp+118h+var_D0], 0
                mov     [r12], r15d
                mov     qword ptr [r12+8], 4
                mov     edi, [rsp+118h+var_D4]
                jmp     loc_140641609
;   } // starts at 14064141A
; ---------------------------------------------------------------------------

loc_14064143D:                          ; DATA XREF: .rdata:00000001400545C4↑o
;   __except(1) // owned by 14064141A
                mov     edi, eax
                cmp     [rsp+118h+var_D0], 0
                jnz     short loc_14064144A
                mov     edi, [rsp+118h+var_D4]

loc_14064144A:                          ; CODE XREF: NtQueryInformationFile+164↑j
                jmp     loc_140641609
; ---------------------------------------------------------------------------

loc_14064144F:                          ; CODE XREF: NtQueryInformationFile+107↑j
                mov     rbx, [rsp+118h+var_E0]
                test    dword ptr [rbx+50h], 800h
                jnz     short loc_14064146C
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     rbx, [rsp+118h+var_E0]
                jmp     short loc_140641475
; ---------------------------------------------------------------------------

loc_14064146C:                          ; CODE XREF: NtQueryInformationFile+17B↑j
                mov     rcx, [rbx+8]
                call    IoGetAttachedDevice

loc_140641475:                          ; CODE XREF: NtQueryInformationFile+18A↑j
                mov     rsi, rax
                mov     [rsp+118h+var_C8], rax
                mov     rax, [rax+8]
                mov     rcx, [rax+50h]
                mov     [rsp+118h+var_A0], rcx
                cmp     r14d, 33h ; '3'
                jnz     short loc_1406414EC
                mov     [rsp+118h+var_CF], 1
                cmp     [rsp+118h+arg_18], 1
                jnb     short loc_1406414AC
                mov     edi, 0C0000004h
                mov     rcx, rbx
                jmp     loc_140641C49
; ---------------------------------------------------------------------------

loc_1406414AC:                          ; CODE XREF: NtQueryInformationFile+1BD↑j
                                        ; DATA XREF: .rdata:00000001400545D4↑o
;   __try { // __except at loc_1406414D2
                mov     rax, [rbx+8]
                movzx   ecx, byte ptr [rax+34h]
                shr     cl, 4
                and     cl, 1
                mov     [r13+0], cl
                mov     [rsp+118h+var_CF], 0
                mov     [r12], r15d
                mov     qword ptr [r12+8], 1
                jmp     short loc_1406414E4
;   } // starts at 1406414AC
; ---------------------------------------------------------------------------

loc_1406414D2:                          ; DATA XREF: .rdata:00000001400545D4↑o
;   __except(1) // owned by 1406414AC
                mov     edi, eax
                cmp     [rsp+118h+var_CF], 0
                jnz     short loc_1406414DF
                mov     edi, [rsp+118h+var_D4]

loc_1406414DF:                          ; CODE XREF: NtQueryInformationFile+1F9↑j
                mov     rbx, [rsp+118h+var_E0]

loc_1406414E4:                          ; CODE XREF: NtQueryInformationFile+1F0↑j
                mov     rcx, rbx
                jmp     loc_140641C49
; ---------------------------------------------------------------------------

loc_1406414EC:                          ; CODE XREF: NtQueryInformationFile+1AE↑j
                cmp     r14d, 3Ah ; ':'
                jnz     short loc_14064151C
                mov     r9d, [rsp+118h+arg_18]
                mov     r8, r13
                mov     rdx, r12
                mov     rcx, [rbx+8]
                call    sub_1403584D8
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_E0]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140641C50
; ---------------------------------------------------------------------------

loc_14064151C:                          ; CODE XREF: NtQueryInformationFile+210↑j
                mov     edi, [rbx+50h]
                xor     r8d, r8d
                test    dil, 2
                jz      loc_140641746
                shr     edi, 2
                and     dil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, [rbx+80h]
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+118h+var_CE], r15b
                mov     edx, 1
                xchg    edx, [rbx+74h]
                test    edx, edx
                jnz     short loc_140641578
                test    rax, rax
                jz      short loc_14064156B
                or      byte ptr [rax+1Ah], 1

loc_14064156B:                          ; CODE XREF: NtQueryInformationFile+285↑j
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     edi, r15d
                jmp     short loc_140641598
; ---------------------------------------------------------------------------

loc_140641578:                          ; CODE XREF: NtQueryInformationFile+280↑j
                lea     rcx, [rsp+118h+var_CE]
                mov     [rsp+118h+var_F8], rcx
                mov     r9, rax
                movzx   r8d, dil
                movzx   edx, [rsp+118h+var_E8]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     edi, eax

loc_140641598:                          ; CODE XREF: NtQueryInformationFile+296↑j
                mov     [rsp+118h+var_D4], edi
                cmp     [rsp+118h+var_CE], r15b
                jnz     short loc_140641609
                cmp     r14d, 0Eh
                jnz     short loc_140641613
                mov     [rsp+118h+var_CD], 1
                cmp     [rsp+118h+arg_18], 8
                jnb     short loc_1406415D1
                mov     edi, 0C0000004h
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0
                mov     rcx, [rsp+118h+var_E0]
                jmp     loc_140641C49
; ---------------------------------------------------------------------------

loc_1406415D1:                          ; CODE XREF: NtQueryInformationFile+2D6↑j
                                        ; DATA XREF: .rdata:00000001400545E4↑o
;   __try { // __except at loc_1406415F2
                mov     rax, [rsp+118h+var_E0]
                mov     rcx, [rax+68h]
                mov     [r13+0], rcx
                mov     [rsp+118h+var_CD], 0
                mov     [r12], r15d
                mov     qword ptr [r12+8], 8
                jmp     short loc_1406415FF
;   } // starts at 1406415D1
; ---------------------------------------------------------------------------

loc_1406415F2:                          ; DATA XREF: .rdata:00000001400545E4↑o
;   __except(1) // owned by 1406415D1
                mov     edi, eax
                cmp     [rsp+118h+var_CD], 0
                jnz     short loc_1406415FF
                mov     edi, [rsp+118h+var_D4]

loc_1406415FF:                          ; CODE XREF: NtQueryInformationFile+310↑j
                                        ; NtQueryInformationFile+319↑j ...
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0

loc_140641609:                          ; CODE XREF: NtQueryInformationFile+158↑j
                                        ; NtQueryInformationFile:loc_14064144A↑j ...
                mov     rcx, [rsp+118h+var_E0]
                jmp     loc_140641C49
; ---------------------------------------------------------------------------

loc_140641613:                          ; CODE XREF: NtQueryInformationFile+2C7↑j
                mov     rax, [rsp+118h+var_A0]
                test    rax, rax
                jz      loc_140641741
                mov     r10, [rax+20h]
                mov     [rsp+118h+var_C0], r10
                mov     [rsp+118h+var_A0], r10
                mov     rbx, [rax+28h]
                cmp     r14d, 4
                jnz     short loc_14064163E
                test    r10, r10
                jnz     short loc_140641651

loc_14064163E:                          ; CODE XREF: NtQueryInformationFile+357↑j
                cmp     r14d, 5
                jnz     loc_140641741
                test    rbx, rbx
                jz      loc_140641741

loc_140641651:                          ; CODE XREF: NtQueryInformationFile+35C↑j
                xorps   xmm0, xmm0
                movups  [rsp+118h+var_98], xmm0
                mov     [rsp+118h+var_D8], r15b
                mov     [rsp+118h+var_CC], r15b

loc_140641666:                          ; DATA XREF: .rdata:0000000140054604↑o
;   __try { // __except at loc_1406416F3
                mov     eax, cs:dword_140C2A6E0
                test    al, 10h
                jz      short loc_14064167F
                call    sub_1409CBA9C
                mov     r13, rax
                mov     r10, [rsp+118h+var_C0]
                jmp     short loc_140641682
; ---------------------------------------------------------------------------

loc_14064167F:                          ; CODE XREF: NtQueryInformationFile+38E↑j
                mov     r13, r15

loc_140641682:                          ; CODE XREF: NtQueryInformationFile+39D↑j
                mov     [rsp+118h+var_88], r13

loc_14064168A:                          ; DATA XREF: .rdata:00000001400545F4↑o
;     __try { // __finally(loc_1407E6780)
                mov     [rsp+118h+var_F8], rsi
                lea     r9, [rsp+118h+var_98]
                mov     r8, [rsp+118h+arg_10]
                mov     dl, 1
                mov     rcx, [rsp+118h+var_E0]
                cmp     r14d, 4
                mov     rax, r10
                jz      short loc_1406416B2
                mov     rax, rbx

loc_1406416B2:                          ; CODE XREF: NtQueryInformationFile+3CD↑j
                call    sub_1404079D0
                mov     [rsp+118h+var_D8], al
                movzx   ebx, al
;     } // starts at 14064168A

loc_1406416BE:                          ; DATA XREF: .rdata:00000001400545F4↑o
                test    r13, r13
                jz      short loc_1406416D0
                mov     rdx, [rsp+118h+var_C0]
                mov     rcx, r13
                call    sub_1409CB9C4

loc_1406416D0:                          ; CODE XREF: NtQueryInformationFile+3E1↑j
                test    bl, bl
                jz      short loc_1406416F1
                mov     edi, dword ptr [rsp+118h+var_98]
                mov     [rsp+118h+var_D4], edi
                mov     [rsp+118h+var_CC], 1
                movups  xmm0, [rsp+118h+var_98]
                movups  xmmword ptr [r12], xmm0

loc_1406416F1:                          ; CODE XREF: NtQueryInformationFile+3F2↑j
                jmp     short loc_140641739
;   } // starts at 140641666
; ---------------------------------------------------------------------------

loc_1406416F3:                          ; DATA XREF: .rdata:0000000140054604↑o
;   __except(1) // owned by 140641666
                mov     edi, eax
                cmp     [rsp+118h+var_CC], 0
                jnz     short loc_140641702
                mov     [rsp+118h+var_D4], eax
                jmp     short loc_140641706
; ---------------------------------------------------------------------------

loc_140641702:                          ; CODE XREF: NtQueryInformationFile+41A↑j
                mov     edi, [rsp+118h+var_D4]

loc_140641706:                          ; CODE XREF: NtQueryInformationFile+420↑j
                xor     r15d, r15d
                mov     r14d, [rsp+118h+arg_20]
                mov     r12, [rsp+118h+arg_8]
                mov     rsi, [rsp+118h+var_C8]
                movzx   eax, [rsp+118h+var_CB]
                mov     [rsp+118h+var_E8], al
                movzx   ebx, [rsp+118h+var_D8]
                mov     rax, [rsp+118h+var_80]
                mov     [rsp+118h+var_B0], rax

loc_140641739:                          ; CODE XREF: NtQueryInformationFile:loc_1406416F1↑j
                test    bl, bl
                jnz     loc_1406415FF

loc_140641741:                          ; CODE XREF: NtQueryInformationFile+33B↑j
                                        ; NtQueryInformationFile+362↑j ...
                mov     r13b, 1
                jmp     short loc_14064175B
; ---------------------------------------------------------------------------

loc_140641746:                          ; CODE XREF: NtQueryInformationFile+246↑j
                mov     edx, 1
                lea     rcx, [rsp+118h+var_58]
                call    KeInitializeEvent
                xor     r13b, r13b

loc_14064175B:                          ; CODE XREF: NtQueryInformationFile+464↑j
                mov     [rsp+118h+var_CA], r13b
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402360C0
                mov     r9, [rsp+118h]
                xor     r8d, r8d
                movzx   edx, byte ptr [rsi+4Ch]
                mov     rcx, rsi
                call    sub_140235D20
                mov     rbx, rax
                mov     [rsp+118h+var_C0], rax
                test    rax, rax
                jnz     short loc_1406417A4
                xor     edx, edx
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_140641C50
; ---------------------------------------------------------------------------

loc_1406417A4:                          ; CODE XREF: NtQueryInformationFile+4AC↑j
                mov     rax, [rsp+118h+var_E0]
                mov     [rbx+0C0h], rax
                mov     rax, [rsp+118h+var_78]
                mov     [rbx+98h], rax
                movzx   eax, [rsp+118h+var_E8]
                mov     [rbx+40h], al
                test    r13b, r13b
                jz      short loc_1406417D5
                or      byte ptr [rbx+47h], 2
                mov     rax, r15
                jmp     short loc_140641800
; ---------------------------------------------------------------------------

loc_1406417D5:                          ; CODE XREF: NtQueryInformationFile+4EA↑j
                cmp     al, 1
                jnz     short loc_1406417E4
                xor     ecx, ecx
                call    KeSetKernelStackSwapEnable
                mov     [rsp+118h+var_D7], al

loc_1406417E4:                          ; CODE XREF: NtQueryInformationFile+4F7↑j
                mov     dword ptr [rbx+10h], 4
                lea     rax, [rsp+118h+var_68]
                mov     [rsp+118h+var_B0], rax
                lea     rax, [rsp+118h+var_58]

loc_140641800:                          ; CODE XREF: NtQueryInformationFile+4F3↑j
                mov     rdx, rbx
                mov     rcx, rbx
                mov     [rbx+50h], rax
                mov     rax, [rsp+118h+var_B0]
                mov     [rbx+48h], rax
                mov     [rbx+58h], r15
                mov     rdi, [rbx+0B8h]
                mov     byte ptr [rdi-48h], 5
                mov     rax, [rsp+118h+var_E0]
                mov     [rdi-18h], rax
                mov     rax, [rsp+118h+arg_10]
                mov     [rbx+70h], rax
                mov     [rbx+18h], r15
                mov     [rbx+8], r15

loc_14064183F:                          ; DATA XREF: .rdata:0000000140054614↑o
;   __try { // __except at loc_140641C13
                mov     esi, [rsp+118h+arg_18]
                mov     edx, esi
                call    sub_1402159F0
                mov     [rbx+18h], rax
;   } // starts at 14064183F

loc_140641851:                          ; DATA XREF: .rdata:0000000140054614↑o
                cmp     cs:dword_140CF4A5C, 0
                jnz     short loc_140641867
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rax
                call    memset

loc_140641867:                          ; CODE XREF: NtQueryInformationFile+578↑j
                or      dword ptr [rbx+10h], 870h
                mov     [rdi-40h], esi
                mov     [rdi-38h], r14d
                cmp     [rsp+118h+var_E7], 0
                jz      short loc_140641880
                or      byte ptr [rdi-46h], 1

loc_140641880:                          ; CODE XREF: NtQueryInformationFile+59A↑j
                mov     rcx, rbx
                call    sub_140245C90
                call    sub_140234A00
                xor     r10b, r10b
                mov     esi, r15d
                mov     [rsp+118h+var_D4], r15d
                cmp     r14d, 10h
                jnz     short loc_1406418C0
                mov     r9, [rbx+18h]
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1406F9280
                mov     [r9], eax
                mov     qword ptr [rbx+38h], 4
                mov     [rbx+30h], r15d
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_1406418C0:                          ; CODE XREF: NtQueryInformationFile+5BC↑j
                cmp     r14d, 11h
                jnz     short loc_1406418E8
                mov     rcx, [rbx+18h]
                mov     r11, [rsp+118h+var_C8]
                mov     eax, [r11+98h]
                mov     [rcx], eax
                mov     qword ptr [rbx+38h], 4
                mov     [rbx+30h], esi
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_1406418E8:                          ; CODE XREF: NtQueryInformationFile+5E4↑j
                cmp     r14d, 29h ; ')'
                jnz     short loc_140641946
                mov     r8, [rbx+18h]
                mov     [r8], r15d
                mov     ecx, r15d
                mov     rdx, [rsp+118h+var_E0]
                test    dword ptr [rdx+50h], 4000000h
                jz      short loc_140641913
                mov     ecx, 2
                mov     [r8], ecx
                mov     rdx, [rsp+118h+var_E0]

loc_140641913:                          ; CODE XREF: NtQueryInformationFile+624↑j
                test    dword ptr [rdx+50h], 8000000h
                jz      short loc_140641927
                or      ecx, 4
                mov     [r8], ecx
                mov     rdx, [rsp+118h+var_E0]

loc_140641927:                          ; CODE XREF: NtQueryInformationFile+63A↑j
                test    dword ptr [rdx+50h], 2000000h
                jz      short loc_140641936
                or      ecx, 1
                mov     [r8], ecx

loc_140641936:                          ; CODE XREF: NtQueryInformationFile+64E↑j
                mov     qword ptr [rbx+38h], 4
                mov     [rbx+30h], esi
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_140641946:                          ; CODE XREF: NtQueryInformationFile+60C↑j
                cmp     r14d, 2Bh ; '+'
                jnz     short loc_140641992
                mov     rdx, [rbx+18h]
                mov     rax, [rsp+118h+var_E0]
                mov     rcx, [rax+0D0h]
                test    rcx, rcx
                jz      short loc_14064197B
                mov     ecx, [rcx+50h]
                call    sub_1403F1620
                mov     [rdx], eax
                mov     qword ptr [rbx+38h], 4
                mov     [rbx+30h], esi
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_14064197B:                          ; CODE XREF: NtQueryInformationFile+67F↑j
                mov     ecx, 2
                mov     [rdx], ecx
                mov     qword ptr [rbx+38h], 4
                mov     [rbx+30h], esi
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_140641992:                          ; CODE XREF: NtQueryInformationFile+66A↑j
                cmp     r14d, 2Fh ; '/'
                jnz     loc_140641A3C
                mov     rdx, [rbx+18h]
                mov     [rsp+118h+var_B8], r15d
                lea     r9, [rsp+118h+var_B8]
                mov     r8d, [rsp+118h+arg_18]
                mov     rcx, [rsp+118h+var_E0]
                call    sub_140897188
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax
                mov     r10b, 1
                mov     [rsp+118h+var_E7], r10b
                mov     edi, 0C0000004h
                cmp     eax, edi
                jnz     short loc_140641A1D

loc_1406419D3:                          ; DATA XREF: .rdata:0000000140054624↑o
;   __try { // __except at loc_1406419E7
                mov     ecx, [rsp+118h+var_B8]
                mov     [r12+8], rcx
                lea     ecx, [r14-2Dh]
                mov     r11, [rsp+118h+var_C8]
                jmp     short loc_140641A2F
;   } // starts at 1406419D3
; ---------------------------------------------------------------------------

loc_1406419E7:                          ; DATA XREF: .rdata:0000000140054624↑o
;   __except(1) // owned by 1406419D3
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax
                xor     r15d, r15d
                lea     ecx, [r15+2]
                mov     r12, [rsp+118h+arg_8]
                mov     rbx, [rsp+118h+var_C0]
                mov     r11, [rsp+118h+var_C8]
                movzx   eax, [rsp+118h+var_CB]
                mov     [rsp+118h+var_E8], al
                movzx   r13d, [rsp+118h+var_CA]
                movzx   r10d, [rsp+118h+var_E7]
                jmp     short loc_140641A2F
; ---------------------------------------------------------------------------

loc_140641A1D:                          ; CODE XREF: NtQueryInformationFile+6F1↑j
                mov     eax, [rsp+118h+var_B8]
                mov     [rbx+38h], rax

loc_140641A25:                          ; CODE XREF: NtQueryInformationFile+77B↓j
                                        ; NtQueryInformationFile+78C↓j
                mov     ecx, 2

loc_140641A2A:                          ; CODE XREF: NtQueryInformationFile+786↓j
                mov     r11, [rsp+118h+var_C8]

loc_140641A2F:                          ; CODE XREF: NtQueryInformationFile+705↑j
                                        ; NtQueryInformationFile+73B↑j ...
                test    r10b, r10b
                jz      short loc_140641AA6
                mov     [rbx+30h], esi
                jmp     loc_140641AC4
; ---------------------------------------------------------------------------

loc_140641A3C:                          ; CODE XREF: NtQueryInformationFile+6B6↑j
                cmp     r14d, 35h ; '5'
                jnz     short loc_140641A68
                mov     rdx, [rbx+18h]
                mov     rcx, [rsp+118h+var_E0]
                call    sub_140897028
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax
                mov     r10b, 1
                test    eax, eax
                js      short loc_140641A25
                mov     ecx, 2
                mov     [rbx+38h], rcx
                jmp     short loc_140641A2A
; ---------------------------------------------------------------------------

loc_140641A68:                          ; CODE XREF: NtQueryInformationFile+760↑j
                cmp     r14d, 12h
                jnz     short loc_140641A25
                mov     r9, [rbx+18h]
                mov     eax, dword ptr [rsp+118h+var_A8+4]
                mov     [r9+4Ch], eax
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1406F9280
                mov     [r9+58h], eax
                mov     r11, [rsp+118h+var_C8]
                mov     eax, [r11+98h]
                mov     [r9+5Ch], eax
                mov     qword ptr [rbx+38h], 0Ch
                lea     ecx, [r14-10h]
                jmp     short loc_140641A2F
; ---------------------------------------------------------------------------

loc_140641AA6:                          ; CODE XREF: NtQueryInformationFile+752↑j
                mov     dword ptr [rsp+118h+var_F8], ecx
                mov     r9, [rsp+118h+var_E0]
                movzx   r8d, r13b
                mov     rdx, rbx
                mov     rcx, r11
                call    sub_14030FD90
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax

loc_140641AC4:                          ; CODE XREF: NtQueryInformationFile+5DB↑j
                                        ; NtQueryInformationFile+603↑j ...
                cmp     esi, 103h
                jnz     short loc_140641B40
                movzx   r8d, [rsp+118h+var_E8]
                test    r13b, r13b
                jz      short loc_140641AEB
                mov     rdx, [rsp+118h+var_E0]
                mov     rcx, rbx
                call    sub_140201AE0
                mov     esi, eax
                jmp     loc_140641BF7
; ---------------------------------------------------------------------------

loc_140641AEB:                          ; CODE XREF: NtQueryInformationFile+7F5↑j
                mov     [rsp+118h+var_F8], r15
                xor     r9d, r9d
                xor     edx, edx
                lea     rcx, [rsp+118h+var_58]
                call    KeWaitForSingleObject
                cmp     eax, 101h
                jz      short loc_140641B10
                cmp     eax, 0C0h
                jnz     short loc_140641B20

loc_140641B10:                          ; CODE XREF: NtQueryInformationFile+827↑j
                mov     rdx, rbx
                lea     rcx, [rsp+118h+var_58]
                call    sub_14089280C

loc_140641B20:                          ; CODE XREF: NtQueryInformationFile+82E↑j
                mov     esi, dword ptr [rsp+118h+var_68]

loc_140641B27:                          ; DATA XREF: .rdata:0000000140054634↑o
;   __try { // __except at loc_140641B39
                movups  xmm0, [rsp+118h+var_68]
                movups  xmmword ptr [r12], xmm0
                jmp     loc_140641C01
;   } // starts at 140641B27
; ---------------------------------------------------------------------------

loc_140641B39:                          ; DATA XREF: .rdata:0000000140054634↑o
;   __except(1) // owned by 140641B27
                mov     esi, eax
                jmp     loc_140641C01
; ---------------------------------------------------------------------------

loc_140641B40:                          ; CODE XREF: NtQueryInformationFile+7EA↑j
                mov     [rsp+118h+var_70], r15
                mov     [rsp+118h+var_C0], r15
                test    r13b, r13b
                jnz     short loc_140641B56
                mov     [rbx+50h], r15

loc_140641B56:                          ; CODE XREF: NtQueryInformationFile+870↑j
                mov     [rbx+48h], r12
                mov     rdi, cr8
                mov     eax, 1
                mov     cr8, rax
                lea     rcx, [rbx+78h]
                lea     rax, [rsp+118h+var_C0]
                mov     [rsp+118h+var_F8], rax
                lea     r9, [rsp+118h+var_E0]
                lea     r8, [rsp+118h+var_C0]
                lea     rdx, [rsp+118h+var_70]
                call    sub_14023D030
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140641BEA
                test    al, 1
                jz      short loc_140641BEA
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140641BEA
                cmp     dil, 0Fh
                ja      short loc_140641BEA
                cmp     al, 2
                jb      short loc_140641BEA
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, dil
                inc     ecx
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140641BE6
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140641BE6:                          ; CODE XREF: NtQueryInformationFile+8FC↑j
                mov     esi, [rsp+118h+var_D4]

loc_140641BEA:                          ; CODE XREF: NtQueryInformationFile+8B4↑j
                                        ; NtQueryInformationFile+8B8↑j ...
                movzx   eax, dil
                mov     cr8, rax
                test    r13b, r13b
                jz      short loc_140641C01

loc_140641BF7:                          ; CODE XREF: NtQueryInformationFile+806↑j
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0

loc_140641C01:                          ; CODE XREF: NtQueryInformationFile+854↑j
                                        ; NtQueryInformationFile+85B↑j ...
                cmp     [rsp+118h+var_D7], 0
                jz      short loc_140641C0F
                mov     cl, 1
                call    KeSetKernelStackSwapEnable

loc_140641C0F:                          ; CODE XREF: NtQueryInformationFile+926↑j
                mov     eax, esi
                jmp     short loc_140641C50
; ---------------------------------------------------------------------------

loc_140641C13:                          ; DATA XREF: .rdata:0000000140054614↑o
;   __except(1) // owned by 14064183F
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_E0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+118h+var_F8], dl
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+118h+var_C0]
                call    sub_1405CD328
                cmp     [rsp+118h+var_D7], 0
                jz      short loc_140641C45
                mov     cl, 1
                call    KeSetKernelStackSwapEnable

loc_140641C45:                          ; CODE XREF: NtQueryInformationFile+95C↑j
                mov     eax, ebx
                jmp     short loc_140641C50
; ---------------------------------------------------------------------------

loc_140641C49:                          ; CODE XREF: NtQueryInformationFile+130↑j
                                        ; NtQueryInformationFile+1C7↑j ...
                call    PsDereferenceSiloContext
                mov     eax, edi

loc_140641C50:                          ; CODE XREF: NtQueryInformationFile+A9↑j
                                        ; NtQueryInformationFile+FD↑j ...
                add     rsp, 0E0h
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
; } // starts at 1406412E0
NtQueryInformationFile endp
