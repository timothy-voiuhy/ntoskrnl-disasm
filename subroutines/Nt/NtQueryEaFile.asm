NtQueryEaFile   proc near               ; DATA XREF: .pdata:00000001401054B0↑o
                                        ; PAGE:000000014098B9E8↓o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_77          = byte ptr -77h
var_76          = byte ptr -76h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r10, r8
                mov     r14, rdx
                mov     r15, rcx
                xor     r13d, r13d
                mov     [rax-60h], r13
                mov     [rsp+0B8h+var_58], r13
                mov     [rax-70h], r13
                mov     [rax-78h], r13b
                mov     [rax-64h], r13d
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-38h], xmm0
                mov     rax, gs:188h
                mov     [rsp+0B8h+var_40], rax
                mov     r12b, [rax+232h]
                mov     [rsp+0B8h+var_77], r12b
                test    r12b, r12b
                jz      loc_1406FF5E8

loc_1406FF3BE:                          ; DATA XREF: .rdata:0000000140082350↑o
;   __try { // __except at loc_1406FF5CE
                mov     rbx, 7FFFFFFF0000h
                mov     rcx, rbx
                cmp     rdx, rbx
                cmovb   rcx, rdx
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     edx, r9d
                lea     r8d, [r13+4]
                mov     rcx, r10
                call    ProbeForWrite
                mov     rdi, [rsp+0B8h+arg_38]
                test    rdi, rdi
                jz      short loc_1406FF402
                mov     rax, rbx
                cmp     rdi, rbx
                cmovb   rax, rdi
                mov     eax, [rax]
                mov     [rsp+0B8h+var_64], eax

loc_1406FF402:                          ; CODE XREF: NtQueryEaFile+A0↑j
                mov     rbx, [rsp+0B8h+arg_28]
                test    rbx, rbx
                jz      loc_1406FF5CC
                cmp     [rsp+0B8h+arg_30], r13d
                jz      loc_1406FF5CC
                mov     [rsp+0B8h+var_50], r13
                mov     [rsp+0B8h+var_68], r13d
                mov     [rsp+0B8h+var_78], 1
                test    bl, 3
                jnz     loc_1406FFA41
                mov     esi, [rsp+0B8h+arg_30]
                lea     rax, [rsi+rbx]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_1406FF458
                cmp     rax, rbx
                jnb     short loc_1406FF463

loc_1406FF458:                          ; CODE XREF: NtQueryEaFile+101↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1406FF463:                          ; CODE XREF: NtQueryEaFile+106↑j
                mov     rdx, rsi
                call    sub_1402159F0
                mov     rdi, rax
                mov     [rsp+0B8h+var_70], rax
                mov     r8, rsi
                mov     rdx, rbx
                mov     rcx, rax
                call    memmove
                mov     [rsp+0B8h+var_50], rdi
                mov     ecx, [rsp+0B8h+arg_30]
                mov     [rsp+0B8h+var_68], ecx

loc_1406FF491:                          ; CODE XREF: NtQueryEaFile+206↓j
                cmp     ecx, 5
                jge     short loc_1406FF4BF
                mov     [rsp+0B8h+var_68], r13d
                xor     edx, edx
                mov     rcx, [rsp+0B8h+var_70]
                call    ExFreePoolWithTag
                mov     [rsp+0B8h+var_70], r13
                mov     ecx, 80000014h
                mov     [r14], ecx
                mov     [r14+8], r13
                mov     eax, ecx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF4BF:                          ; CODE XREF: NtQueryEaFile+144↑j
                movzx   eax, byte ptr [rdi+4]
                add     eax, 6
                cmp     ecx, eax
                jnb     short loc_1406FF4FC
                mov     ebx, edi
                mov     rdi, [rsp+0B8h+var_70]
                sub     ebx, edi
                mov     [rsp+0B8h+var_68], ebx
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     [rsp+0B8h+var_70], r13
                mov     ecx, 80000014h
                mov     [r14], ecx
                movsxd  rax, ebx
                mov     [r14+8], rax
                mov     eax, ecx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF4FC:                          ; CODE XREF: NtQueryEaFile+178↑j
                mov     edx, [rdi]
                test    edx, edx
                jz      loc_1406FF58D
                add     eax, 3
                and     eax, 0FFFFFFFCh
                cmp     eax, edx
                jnz     short loc_1406FF55B
                test    edx, edx
                js      short loc_1406FF55B
                sub     ecx, edx
                mov     [rsp+0B8h+var_68], ecx
                jns     short loc_1406FF54E
                mov     ebx, edi
                mov     rdi, [rsp+0B8h+var_70]
                sub     ebx, edi
                mov     [rsp+0B8h+var_68], ebx
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     [rsp+0B8h+var_70], r13
                mov     ecx, 80000014h
                mov     [r14], ecx
                movsxd  rax, ebx
                mov     [r14+8], rax
                mov     eax, ecx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF54E:                          ; CODE XREF: NtQueryEaFile+1CA↑j
                add     rdi, rdx
                mov     [rsp+0B8h+var_50], rdi
                jmp     loc_1406FF491
; ---------------------------------------------------------------------------

loc_1406FF55B:                          ; CODE XREF: NtQueryEaFile+1BE↑j
                                        ; NtQueryEaFile+1C2↑j
                mov     ebx, edi
                mov     rdi, [rsp+0B8h+var_70]
                sub     ebx, edi
                mov     [rsp+0B8h+var_68], ebx
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     [rsp+0B8h+var_70], r13
                mov     ecx, 80000014h
                mov     [r14], ecx
                movsxd  rax, ebx
                mov     [r14+8], rax
                mov     eax, ecx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF58D:                          ; CODE XREF: NtQueryEaFile+1B0↑j
                sub     ecx, eax
                mov     [rsp+0B8h+var_68], ecx
                jns     short loc_1406FF5C7
                mov     ebx, edi
                mov     rdi, [rsp+0B8h+var_70]
                sub     ebx, edi
                mov     [rsp+0B8h+var_68], ebx
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     [rsp+0B8h+var_70], r13
                mov     ecx, 80000014h
                mov     [r14], ecx
                movsxd  rax, ebx
                mov     [r14+8], rax
                mov     eax, ecx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF5C7:                          ; CODE XREF: NtQueryEaFile+243↑j
                mov     r12b, [rsp+0B8h+var_77]
;   } // starts at 1406FF3BE

loc_1406FF5CC:                          ; CODE XREF: NtQueryEaFile+BD↑j
                                        ; NtQueryEaFile+CB↑j
                                        ; DATA XREF: ...
                jmp     short loc_1406FF63D
; ---------------------------------------------------------------------------

loc_1406FF5CE:                          ; DATA XREF: .rdata:0000000140082350↑o
                                        ; .rdata:0000000140082390↑o
;   __except(1) // owned by 1406FF3BE
;   __except(1) // owned by 1406FFA41
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_70]
                test    rcx, rcx
                jz      short loc_1406FF5E1
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FF5E1:                          ; CODE XREF: NtQueryEaFile+288↑j
                mov     eax, ebx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF5E8:                          ; CODE XREF: NtQueryEaFile+68↑j
                mov     rbx, [rsp+0B8h+arg_28]
                test    rbx, rbx
                jz      short loc_1406FF62A
                mov     eax, [rsp+0B8h+arg_30]
                test    eax, eax
                jz      short loc_1406FF62A
                mov     [rsp+0B8h+var_78], 1

loc_1406FF605:                          ; DATA XREF: .rdata:0000000140082360↑o
;   __try { // __except at loc_1406FF625
                mov     edi, eax
                mov     edx, eax
                call    sub_1402159F0
                mov     [rsp+0B8h+var_70], rax
;   } // starts at 1406FF605

loc_1406FF613:                          ; DATA XREF: .rdata:0000000140082360↑o
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, [rsp+0B8h+var_70]
                call    memmove
                jmp     short loc_1406FF62A
; ---------------------------------------------------------------------------

loc_1406FF625:                          ; DATA XREF: .rdata:0000000140082360↑o
;   __except(1) // owned by 1406FF605
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF62A:                          ; CODE XREF: NtQueryEaFile+2A3↑j
                                        ; NtQueryEaFile+2AE↑j ...
                mov     rdi, [rsp+0B8h+arg_38]
                test    rdi, rdi
                jz      short loc_1406FF63D
                mov     eax, [rdi]
                mov     [rsp+0B8h+var_64], eax

loc_1406FF63D:                          ; CODE XREF: NtQueryEaFile:loc_1406FF5CC↑j
                                        ; NtQueryEaFile+2E5↑j
                mov     [rsp+0B8h+var_98], r13
                lea     r9, [rsp+0B8h+var_60]
                mov     r8b, r12b
                mov     edx, 8
                mov     rcx, r15
                call    sub_1402433F0
                mov     ebx, eax
                test    eax, eax
                jns     short loc_1406FF677
                cmp     [rsp+0B8h+var_78], r13b
                jz      short loc_1406FF670
                xor     edx, edx
                mov     rcx, [rsp+0B8h+var_70]
                call    ExFreePoolWithTag

loc_1406FF670:                          ; CODE XREF: NtQueryEaFile+312↑j
                                        ; NtQueryEaFile+410↓j
                mov     eax, ebx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF677:                          ; CODE XREF: NtQueryEaFile+30B↑j
                mov     r15, [rsp+0B8h+var_60]
                lea     rsi, [r15+50h]
                mov     edi, [rsi]
                test    dil, 2
                jz      loc_1406FF72E
                shr     edi, 2
                and     dil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0B8h+var_60]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     r9, rax
                mov     [rsp+0B8h+var_76], r13b
                mov     eax, 1
                xchg    eax, [rbx+74h]
                test    eax, eax
                jnz     short loc_1406FF6E9
                test    r9, r9
                jz      short loc_1406FF6D7
                or      byte ptr [r9+1Ah], 1

loc_1406FF6D7:                          ; CODE XREF: NtQueryEaFile+380↑j
                mov     r15, [rsp+0B8h+var_60]
                mov     rcx, r15
                call    ObfReferenceObject
                mov     ebx, r13d
                jmp     short loc_1406FF708
; ---------------------------------------------------------------------------

loc_1406FF6E9:                          ; CODE XREF: NtQueryEaFile+37B↑j
                lea     rax, [rsp+0B8h+var_76]
                mov     [rsp+0B8h+var_98], rax
                mov     r8b, dil
                mov     dl, r12b
                mov     r15, [rsp+0B8h+var_60]
                mov     rcx, r15
                call    sub_1406A0C70
                mov     ebx, eax

loc_1406FF708:                          ; CODE XREF: NtQueryEaFile+397↑j
                cmp     [rsp+0B8h+var_76], r13b
                jz      short loc_1406FF724
                cmp     [rsp+0B8h+var_78], r13b
                jz      short loc_1406FF758
                xor     edx, edx
                mov     rcx, [rsp+0B8h+var_70]
                call    ExFreePoolWithTag
                jmp     short loc_1406FF758
; ---------------------------------------------------------------------------

loc_1406FF724:                          ; CODE XREF: NtQueryEaFile+3BD↑j
                mov     r12b, 1
                mov     rdi, [rsp+0B8h+var_58]
                jmp     short loc_1406FF777
; ---------------------------------------------------------------------------

loc_1406FF72E:                          ; CODE XREF: NtQueryEaFile+336↑j
                call    sub_140508A4C
                mov     rdi, rax
                mov     [rsp+0B8h+var_58], rax
                test    rax, rax
                jnz     short loc_1406FF765
                cmp     [rsp+0B8h+var_78], r13b
                jz      short loc_1406FF753
                xor     edx, edx
                mov     rcx, [rsp+0B8h+var_70]
                call    ExFreePoolWithTag

loc_1406FF753:                          ; CODE XREF: NtQueryEaFile+3F5↑j
                mov     ebx, 0C000009Ah

loc_1406FF758:                          ; CODE XREF: NtQueryEaFile+3C4↑j
                                        ; NtQueryEaFile+3D2↑j
                mov     rcx, r15
                call    PsDereferenceSiloContext
                jmp     loc_1406FF670
; ---------------------------------------------------------------------------

loc_1406FF765:                          ; CODE XREF: NtQueryEaFile+3EE↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rax
                call    KeInitializeEvent
                mov     r12b, r13b

loc_1406FF777:                          ; CODE XREF: NtQueryEaFile+3DC↑j
                mov     rcx, r15
                call    sub_1402360C0
                mov     rcx, r15
                call    IoGetRelatedDeviceObject
                mov     r13, rax
                mov     r9, [rsp+0B8h]
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rbx, rax
                mov     [rsp+0B8h+var_48], rax
                test    rax, rax
                jnz     short loc_1406FF7E4
                mov     eax, [rsi]
                test    al, 2
                jnz     short loc_1406FF7BD
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406FF7BD:                          ; CODE XREF: NtQueryEaFile+461↑j
                xor     edx, edx
                mov     rcx, r15
                call    sub_1408925D4
                cmp     [rsp+0B8h+var_78], 0
                jz      short loc_1406FF7DA
                xor     edx, edx
                mov     rcx, [rsp+0B8h+var_70]
                call    ExFreePoolWithTag

loc_1406FF7DA:                          ; CODE XREF: NtQueryEaFile+47C↑j
                mov     eax, 0C000009Ah
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF7E4:                          ; CODE XREF: NtQueryEaFile+45B↑j
                mov     [rax+0C0h], r15
                mov     rax, [rsp+0B8h+var_40]
                mov     [rbx+98h], rax
                mov     al, [rsp+0B8h+var_77]
                mov     [rbx+40h], al
                test    r12b, r12b
                jz      short loc_1406FF80A
                mov     rax, r14
                xor     ecx, ecx
                jmp     short loc_1406FF81C
; ---------------------------------------------------------------------------

loc_1406FF80A:                          ; CODE XREF: NtQueryEaFile+4B1↑j
                mov     dword ptr [rbx+10h], 4
                lea     rax, [rsp+0B8h+var_38]
                mov     rcx, rdi

loc_1406FF81C:                          ; CODE XREF: NtQueryEaFile+4B8↑j
                mov     [rbx+50h], rcx
                mov     [rbx+48h], rax
                and     qword ptr [rbx+58h], 0
                mov     rsi, [rbx+0B8h]
                mov     byte ptr [rsi-48h], 7
                mov     [rsi-18h], r15
                cmp     [rsp+0B8h+var_78], 0
                jz      short loc_1406FF859
                mov     rdi, [rsp+0B8h+var_70]
                mov     [rbx+0A0h], rdi
                mov     [rsi-38h], rdi
                mov     eax, [rsp+0B8h+arg_30]
                mov     [rsi-30h], eax

loc_1406FF859:                          ; CODE XREF: NtQueryEaFile+4ED↑j
                mov     eax, [r13+30h]
                test    al, 4
                jz      loc_1406FF8E6
                mov     edi, [rsp+0B8h+arg_18]
                test    edi, edi
                jz      short loc_1406FF8D8

loc_1406FF870:                          ; DATA XREF: .rdata:0000000140082370↑o
;   __try { // __except at loc_1406FF89A
                mov     edx, edi
                call    sub_1402159F0
                mov     rcx, rax
                mov     [rbx+18h], rax
;   } // starts at 1406FF870

loc_1406FF87E:                          ; DATA XREF: .rdata:0000000140082370↑o
                cmp     cs:dword_140CF4A5C, 0
                jnz     short loc_1406FF891
                mov     r8, rdi
                xor     edx, edx
                call    memset

loc_1406FF891:                          ; CODE XREF: NtQueryEaFile+535↑j
                or      dword ptr [rbx+10h], 70h
                jmp     loc_1406FF981
; ---------------------------------------------------------------------------

loc_1406FF89A:                          ; DATA XREF: .rdata:0000000140082370↑o
;   __except(1) // owned by 1406FF870
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_60]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                mov     r9, [rsp+0B8h+var_58]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_48]
                call    sub_1405CD328
                mov     rcx, [rsp+0B8h+var_70]
                test    rcx, rcx
                jz      short loc_1406FF8D1
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FF8D1:                          ; CODE XREF: NtQueryEaFile+578↑j
                mov     eax, ebx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF8D8:                          ; CODE XREF: NtQueryEaFile+51E↑j
                and     qword ptr [rbx+18h], 0
                or      dword ptr [rbx+10h], 50h
                jmp     loc_1406FF98D
; ---------------------------------------------------------------------------

loc_1406FF8E6:                          ; CODE XREF: NtQueryEaFile+50F↑j
                test    al, 10h
                jz      loc_1406FF981
                mov     edi, [rsp+0B8h+arg_18]
                test    edi, edi
                jz      loc_1406FF98D

loc_1406FF8FD:                          ; DATA XREF: .rdata:0000000140082380↑o
;   __try { // __except at loc_1406FF943
                mov     [rsp+0B8h+var_98], rbx
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, edi
                mov     rcx, [rsp+0B8h+arg_10]
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jz      loc_1406FFA47
                movzx   eax, byte ptr [rsi-48h]
                mov     dword ptr [rsp+0B8h+var_98], eax
                mov     r9, r13
                mov     r8d, 1
                mov     dil, [rsp+0B8h+var_77]
                mov     dl, dil
                call    sub_1405089E0
                jmp     short loc_1406FF992
;   } // starts at 1406FF8FD
; ---------------------------------------------------------------------------

loc_1406FF943:                          ; DATA XREF: .rdata:0000000140082380↑o
                                        ; .rdata:00000001400823A0↑o
;   __except(1) // owned by 1406FF8FD
;   __except(1) // owned by 1406FFA47
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_60]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                mov     r9, [rsp+0B8h+var_58]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_48]
                call    sub_1405CD328
                mov     rcx, [rsp+0B8h+var_70]
                test    rcx, rcx
                jz      short loc_1406FF97A
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FF97A:                          ; CODE XREF: NtQueryEaFile+621↑j
                mov     eax, ebx
                jmp     loc_1406FFA23
; ---------------------------------------------------------------------------

loc_1406FF981:                          ; CODE XREF: NtQueryEaFile+545↑j
                                        ; NtQueryEaFile+598↑j
                mov     rax, [rsp+0B8h+arg_10]
                mov     [rbx+70h], rax

loc_1406FF98D:                          ; CODE XREF: NtQueryEaFile+591↑j
                                        ; NtQueryEaFile+5A7↑j
                mov     dil, [rsp+0B8h+var_77]

loc_1406FF992:                          ; CODE XREF: NtQueryEaFile+5F1↑j
                mov     eax, [rsp+0B8h+arg_18]
                mov     [rsi-40h], eax
                mov     eax, [rsp+0B8h+var_64]
                mov     [rsi-28h], eax
                mov     byte ptr [rsi-46h], 0
                xor     al, al
                cmp     [rsp+0B8h+arg_40], al
                jz      short loc_1406FF9B8
                mov     byte ptr [rsi-46h], 1
                mov     al, 1

loc_1406FF9B8:                          ; CODE XREF: NtQueryEaFile+660↑j
                cmp     [rsp+0B8h+arg_20], 0
                jz      short loc_1406FF9C7
                or      al, 2
                mov     [rsi-46h], al

loc_1406FF9C7:                          ; CODE XREF: NtQueryEaFile+670↑j
                cmp     [rsp+0B8h+arg_38], 0
                jz      short loc_1406FF9D7
                or      al, 4
                mov     [rsi-46h], al

loc_1406FF9D7:                          ; CODE XREF: NtQueryEaFile+680↑j
                mov     [rsp+0B8h+var_88], 2
                mov     byte ptr [rsp+0B8h+var_90], r12b
                mov     byte ptr [rsp+0B8h+var_98], dil
                xor     r9d, r9d
                mov     r8, r15
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_140643F60
                test    r12b, r12b
                jnz     short loc_1406FFA23
                mov     [rsp+0B8h+var_90], r14
                lea     rcx, [rsp+0B8h+var_38]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9b, dil
                mov     r8, rbx
                mov     rdx, [rsp+0B8h+var_58]
                mov     ecx, eax
                call    sub_1406FC85C

loc_1406FFA23:                          ; CODE XREF: NtQueryEaFile+16A↑j
                                        ; NtQueryEaFile+1A7↑j ...
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FFA41:                          ; CODE XREF: NtQueryEaFile+E3↑j
                                        ; DATA XREF: .rdata:0000000140082390↑o
;   __try { // __except at loc_1406FF5CE
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406FFA41
; ---------------------------------------------------------------------------

loc_1406FFA47:                          ; CODE XREF: NtQueryEaFile+5CD↑j
                                        ; DATA XREF: .rdata:0000000140082390↑o ...
;   __try { // __except at loc_1406FF943
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1406FFA47
byte_1406FFA52  db 0CCh                 ; DATA XREF: .rdata:00000001400823A0↑o
; } // starts at 1406FF350
NtQueryEaFile   endp

byte_1406FFA53  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401054B0↑o

; =============== S U B R O U T I N E =======================================


sub_1406FFA5C   proc near               ; CODE XREF: sub_140656210+156↑p
                                        ; DATA XREF: .pdata:00000001401054BC↑o

arg_0           = qword ptr  8

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rdx
                cmp     qword ptr [rcx+0D0h], 0
                jnz     short loc_1406FFA9C
                lea     rdx, [rsp+28h+arg_0]
                call    sub_14021AEE0
                test    eax, eax
                js      short loc_1406FFA95

loc_1406FFA83:                          ; CODE XREF: sub_1406FFA5C+4F↓j
                mov     rcx, [rsp+28h+arg_0]
                mov     r8, rbx
                mov     edx, 5
                call    sub_1403496B8

loc_1406FFA95:                          ; CODE XREF: sub_1406FFA5C+25↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406FFA9C:                          ; CODE XREF: sub_1406FFA5C+17↑j
                lea     r8, [rsp+28h+arg_0]
                mov     edx, 5
                call    sub_14021B460
                jmp     short loc_1406FFA83
sub_1406FFA5C   endp

; ---------------------------------------------------------------------------
byte_1406FFAAD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401054BC↑o

; =============== S U B R O U T I N E =======================================


sub_1406FFAB4   proc near               ; CODE XREF: sub_140269F00+FA↑p
                                        ; sub_1406BF8A0+15CFC8↓p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h

                mov     r11, rsp
                sub     rsp, 48h
                xor     r10d, r10d
                lea     r9, [r11+8]
                mov     [r11-10h], r9
                mov     rax, rcx
                mov     [r11+20h], r10d
                lea     r9, [r11+20h]
                mov     [r11-18h], r9
                mov     r9, r8
                mov     [r11+8], r10d
                mov     r8, rdx
                mov     rcx, gs:188h
                mov     rdx, rax
                mov     [r11-20h], r10d
                mov     [rsp+48h+var_28], 4
                mov     rcx, [rcx+0B8h]
                call    sub_1402851E0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406FFAB4   endp

algn_1406FFB09:                         ; DATA XREF: .pdata:00000001401054C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406FFB10   proc near               ; CODE XREF: sub_140615D50+41F↑p
                                        ; DATA XREF: .pdata:00000001401054D4↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rdx
                push    rbx
                sub     rsp, 40h
                mov     rbx, r8
                test    r9d, 10010h
                setz    dl
                bt      [rsp+48h+arg_20], 1Dh
                setb    al
                and     dl, al
                mov     al, dl
                neg     al
                sbb     r9d, r9d
                not     r9d
                and     r9d, 0C000000Dh
                test    dl, dl
                jz      short loc_1406FFB93

loc_1406FFB47:                          ; DATA XREF: .rdata:0000000140082430↑o
;   __try { // __except at loc_1406FFB50
                mov     ecx, [rcx]
                mov     [rsp+48h+var_18], rcx
                jmp     short loc_1406FFB55
;   } // starts at 1406FFB47
; ---------------------------------------------------------------------------

loc_1406FFB50:                          ; DATA XREF: .rdata:0000000140082430↑o
;   __except(1) // owned by 1406FFB47
                mov     r9d, eax
                jmp     short loc_1406FFB93
; ---------------------------------------------------------------------------

loc_1406FFB55:                          ; CODE XREF: sub_1406FFB10+3E↑j
                mov     r8, cs:ExEventObjectType
                and     [rsp+48h+arg_8], 0
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_8]
                mov     [rsp+48h+var_28], rax
                mov     r9b, 1
                mov     edx, 2
                call    ObReferenceObjectByHandle
                mov     r9d, eax
                test    eax, eax
                js      short loc_1406FFB93
                mov     rax, [rsp+48h+arg_8]
                or      rax, 3
                mov     [rbx+38h], rax

loc_1406FFB93:                          ; CODE XREF: sub_1406FFB10+35↑j
                                        ; sub_1406FFB10+43↑j ...
                mov     eax, r9d
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406FFB10
sub_1406FFB10   endp

byte_1406FFB9D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001401054D4↑o
; Exported entry 455. FsRtlIncrementCcFastReadWait

; =============== S U B R O U T I N E =======================================


