PcwAddInstance  proc near               ; CODE XREF: sub_1406A71D0+261↑p
                                        ; sub_1406A71D0+651↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbp, rcx
                mov     ebx, r9d
                mov     rcx, cs:qword_140D2D098
                mov     edi, r8d
                mov     rsi, rdx
                call    sub_140309D44
                test    rax, rax
                jz      short loc_1406AD016
                mov     rcx, [rsp+38h+arg_20]
                mov     r9d, ebx
                mov     rax, [rax+20h]
                mov     r8d, edi
                mov     [rsp+38h+var_18], rcx
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1404079D0
                mov     rcx, cs:qword_140D2D098
                mov     ebx, eax
                call    sub_140309D28

loc_1406ACFFE:                          ; CODE XREF: PcwAddInstance+7D↓j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AD016:                          ; CODE XREF: PcwAddInstance+2F↑j
                call    sub_1409582C8
                mov     ebx, eax
                jmp     short loc_1406ACFFE
PcwAddInstance  endp

; ---------------------------------------------------------------------------
byte_1406AD01F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401026A8↑o

; =============== S U B R O U T I N E =======================================


sub_1406AD028   proc near               ; CODE XREF: sub_1406AE69C+3C↓p
                                        ; DATA XREF: .pdata:00000001401026B4↑o

var_38          = qword ptr -38h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, gs:188h
                xor     r14d, r14d
                mov     rsi, rdx
                mov     [rsp+58h+arg_10], r14
                mov     rbp, rcx
                dec     word ptr [rax+1E6h]
                lea     rbx, [rcx+0E0h]
                xor     r8d, r8d
                mov     rcx, rbx
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                lea     r15d, [r14+11h]
                xor     eax, eax
                lock cmpxchg [rbx], r15
                jnz     loc_1406AD10B

loc_1406AD07E:                          ; CODE XREF: sub_1406AD028+F1↓j
                test    rdi, rdi
                jz      short loc_1406AD087
                or      byte ptr [rdi+1Ah], 1

loc_1406AD087:                          ; CODE XREF: sub_1406AD028+59↑j
                lea     rax, [rsp+58h+arg_0]
                mov     [rsp+58h+arg_18], r14
                lea     rcx, [rbp+0B8h]
                mov     [rsp+58h+var_38], rax
                lea     r9, [rsp+58h+arg_18]
                mov     r8d, 8
                mov     rdx, rsi
                call    sub_1406AE2C8
                mov     rcx, [rsp+58h+arg_10]
                test    eax, eax
                mov     edi, eax
                cmovns  rcx, [rsp+58h+arg_18]
                mov     [rsp+58h+arg_10], rcx
                mov     rax, r15
                lock cmpxchg [rbx], r14
                jnz     short loc_1406AD11E

loc_1406AD0CE:                          ; CODE XREF: sub_1406AD028+FE↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                test    edi, edi
                js      short loc_1406AD0F7
                mov     rcx, [rsp+58h+arg_10]
                mov     rdx, rsi
                call    sub_1406AD130
                mov     edi, eax

loc_1406AD0F7:                          ; CODE XREF: sub_1406AD028+BE↑j
                mov     rbx, [rsp+58h+arg_8]
                mov     eax, edi
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AD10B:                          ; CODE XREF: sub_1406AD028+50↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     loc_1406AD07E
; ---------------------------------------------------------------------------

loc_1406AD11E:                          ; CODE XREF: sub_1406AD028+A4↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_1406AD0CE
sub_1406AD028   endp

; ---------------------------------------------------------------------------
algn_1406AD128:                         ; DATA XREF: .pdata:00000001401026B4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406AD130   proc near               ; CODE XREF: sub_1406AD028+C8↑p
                                        ; DATA XREF: .rdata:0000000140072224↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408194E0 SIZE 0000003B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rdx
                mov     rbp, rcx
                add     [rax+1E6h], r14w
                lea     rdi, [rcx+430h]
                xor     r8d, r8d
                mov     rcx, rdi
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rsi, rax
                jb      loc_1408194E0

loc_1406AD187:                          ; CODE XREF: sub_1406AD130+16C3BF↓j
                test    rsi, rsi
                jz      short loc_1406AD190
                or      byte ptr [rsi+1Ah], 1

loc_1406AD190:                          ; CODE XREF: sub_1406AD130+5A↑j
                sub     rbx, [rbp+20h]
                mov     sil, 2
                shr     rbx, 6
                test    ebx, ebx
                jz      short loc_1406AD21A
                lea     ecx, [rbx-1]

loc_1406AD1A2:                          ; CODE XREF: sub_1406AD130+16C3C8↓j
                cmp     [rcx+rbp+2Ch], sil
                jz      loc_1408194F4

loc_1406AD1AD:                          ; CODE XREF: sub_1406AD130+16C3CE↓j
                inc     rcx

loc_1406AD1B0:                          ; CODE XREF: sub_1406AD130+EC↓j
                mov     r8d, ebx
                jmp     short loc_1406AD1B8
; ---------------------------------------------------------------------------

loc_1406AD1B5:                          ; CODE XREF: sub_1406AD130+8D↓j
                inc     r8

loc_1406AD1B8:                          ; CODE XREF: sub_1406AD130+83↑j
                cmp     [r8+rbp+2Ch], sil
                jz      short loc_1406AD1B5
                cmp     rcx, r8
                jg      short loc_1406AD1D8
                sub     r8, rcx
                xor     edx, edx
                add     rcx, 2Ch ; ','
                inc     r8
                add     rcx, rbp
                call    memset

loc_1406AD1D8:                          ; CODE XREF: sub_1406AD130+92↑j
                lock xadd [rdi], r14
                test    sil, r14b
                jnz     loc_140819503

loc_1406AD1E6:                          ; CODE XREF: sub_1406AD130+16C3D7↓j
                                        ; sub_1406AD130+16C3E6↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AD21A:                          ; CODE XREF: sub_1406AD130+6D↑j
                mov     ecx, ebx
                jmp     short loc_1406AD1B0
sub_1406AD130   endp

; ---------------------------------------------------------------------------
byte_1406AD21E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072224↑o
                                        ; .pdata:00000001401026C0↑o

; =============== S U B R O U T I N E =======================================


sub_1406AD224   proc near               ; CODE XREF: sub_1406AE534+110↓p
                                        ; DATA XREF: .pdata:00000001401026CC↑o

var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = qword ptr -0A8h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001407E7639 SIZE 00000042 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], r8
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0B0h
                mov     rsi, rdx
                xor     edi, edi
                mov     [rsp+0E8h+var_88], rdi
                mov     [rax-50h], rdi
                mov     [rax-58h], rdi
                mov     [rax+20h], dil
                mov     [rsp+0E8h+var_90], rdi
                mov     [rax-78h], rdi
                mov     [rax-68h], rdi
                mov     [rax-60h], rdi
                mov     [rax-80h], edi
                mov     [rax-70h], edi
                mov     [rax-6Ch], edi
                mov     eax, cs:dword_140C53C40
                mov     [rsp+0E8h+var_48], rax
                lea     rdx, [rsp+0E8h+var_88]
                lea     r14d, [rdi+58h]
                mov     ecx, r14d
                call    sub_1406AE394
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9
                mov     r8d, r14d
                xor     edx, edx
                mov     rbx, [rsp+0E8h+var_88]
                mov     rcx, rbx
                call    memset
                and     dword ptr [rbx+10h], 0FFFFFFFEh
                lea     r12d, [rdi+1]
                mov     [rbx+50h], r12
                cmp     [rsi+8], r12d
                jnz     loc_1406AD35F
                lea     rcx, [rsi+10h]
                mov     r14d, 0F8h
                mov     edx, r14d
                call    sub_1406ACB7C
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9
                call    sub_1403F8AB4
                test    eax, eax
                jz      short loc_1406AD337

loc_1406AD2E7:                          ; DATA XREF: .rdata:0000000140072254↑o
;   __try { // __except at loc_1406AD32A
                mov     [rsp+0E8h+var_C8], rdi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r14d
                mov     rcx, [rsi+148h]
                call    IoAllocateMdl
                mov     [rsp+0E8h+var_78], rax
                test    rax, rax
                jnz     short loc_1406AD319
                mov     ebx, 0C0000017h
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD319:                          ; CODE XREF: sub_1406AD224+E5↑j
                mov     rcx, [rsp+0E8h+var_78]
                call    sub_140363160
                mov     [rsp+0E8h+var_80], r12d
                jmp     short loc_1406AD337
;   } // starts at 1406AD2E7
; ---------------------------------------------------------------------------

loc_1406AD32A:                          ; DATA XREF: .rdata:0000000140072254↑o
;   __except(loc_1407E7639) // owned by 1406AD2E7
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                xor     edi, edi
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD337:                          ; CODE XREF: sub_1406AD224+C1↑j
                                        ; sub_1406AD224+104↑j
                mov     r8d, r12d
                mov     edx, r14d
                mov     rcx, [rsi+148h]
                call    sub_1406AD988
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9
                lea     r15, dword_14000A77C
                jmp     loc_1406AD420
; ---------------------------------------------------------------------------

loc_1406AD35F:                          ; CODE XREF: sub_1406AD224+98↑j
                mov     [rsp+0E8h+var_C0], edi
                lea     r15, dword_14000A77C
                mov     [rsp+0E8h+var_C8], r15
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0E67B5Ah
                lea     rcx, unk_140CDB440
                call    sub_140309D90
                cmp     [rsi+8], edi
                jnz     loc_1406AD8C4
                lea     rcx, [rsi+10h]
                mov     r14d, 0F0h
                mov     edx, r14d
                call    sub_1406ACB7C
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9
                call    sub_1403F8AB4
                test    eax, eax
                jz      short loc_1406AD404

loc_1406AD3B4:                          ; DATA XREF: .rdata:0000000140072264↑o
;   __try { // __except at loc_1406AD3F7
                mov     [rsp+0E8h+var_C8], rdi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r14d
                mov     rcx, [rsi+148h]
                call    IoAllocateMdl
                mov     [rsp+0E8h+var_78], rax
                test    rax, rax
                jnz     short loc_1406AD3E6
                mov     ebx, 0C0000017h
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD3E6:                          ; CODE XREF: sub_1406AD224+1B2↑j
                mov     rcx, [rsp+0E8h+var_78]
                call    sub_140363160
                mov     [rsp+0E8h+var_80], r12d
                jmp     short loc_1406AD404
;   } // starts at 1406AD3B4
; ---------------------------------------------------------------------------

loc_1406AD3F7:                          ; DATA XREF: .rdata:0000000140072264↑o
;   __except(loc_1407E764F) // owned by 1406AD3B4
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                xor     edi, edi
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD404:                          ; CODE XREF: sub_1406AD224+18E↑j
                                        ; sub_1406AD224+1D1↑j
                mov     r8d, r12d
                mov     edx, r14d
                mov     rcx, [rsi+148h]
                call    sub_1406AD988
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9

loc_1406AD420:                          ; CODE XREF: sub_1406AD224+136↑j
                lea     r9, [rsp+0E8h+var_58]
                lea     r8, [rsp+0E8h+var_50]
                mov     edx, [rsi+140h]
                mov     rcx, [rsp+0E8h+arg_0]
                call    sub_1406AF040
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AD8C9
                lea     rdx, [rsp+0E8h+var_90]
                mov     ecx, [rsi+140h]
                call    sub_1406AE394
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                test    eax, eax
                js      loc_1406AD8C9

loc_1406AD46B:                          ; DATA XREF: .rdata:0000000140072274↑o
;   __try { // __except at loc_1406AD8BA
                mov     ecx, [rsi+11Ch]
                mov     r14, 7FFFFFFF0000h
                test    ecx, ecx
                jz      short loc_1406AD4A5
                mov     rdx, [rsi+110h]
                lea     r8, [rdx+rcx]
                cmp     r8, r14
                ja      short loc_1406AD494
                cmp     r8, rdx
                jnb     short loc_1406AD4A5

loc_1406AD494:                          ; CODE XREF: sub_1406AD224+269↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     ecx, [rsi+11Ch]

loc_1406AD4A5:                          ; CODE XREF: sub_1406AD224+259↑j
                                        ; sub_1406AD224+26E↑j
                mov     r8d, ecx
                mov     ecx, [rsi+120h]
                add     rcx, [rsp+0E8h+var_90]
                mov     rdx, [rsi+110h]
                call    memmove
                cmp     [rsi+8], r12d
                jnz     short loc_1406AD4F2
                cmp     dword ptr [rsi+11Ch], 4
                jnb     short loc_1406AD4DC
                mov     ebx, 0C000000Dh
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD4DC:                          ; CODE XREF: sub_1406AD224+2A8↑j
                mov     edx, [rsi+120h]
                mov     ecx, [rsi+124h]
                mov     rax, [rsp+0E8h+var_90]
                mov     [rdx+rax], ecx
                jmp     short loc_1406AD525
; ---------------------------------------------------------------------------

loc_1406AD4F2:                          ; CODE XREF: sub_1406AD224+29F↑j
                mov     [rsp+0E8h+var_C0], edi
                mov     [rsp+0E8h+var_C8], r15
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0E67B5Ah
                lea     rcx, unk_140CDB440
                call    sub_140309D90
                cmp     [rsi+8], edi
                jz      short loc_1406AD525
                mov     ebx, 0C000000Dh
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD525:                          ; CODE XREF: sub_1406AD224+2CC↑j
                                        ; sub_1406AD224+2F1↑j
                call    sub_1403F8AB4
                test    eax, eax
                jz      short loc_1406AD578
                mov     [rsp+0E8h+var_C8], rdi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, [rsi+11Ch]
                mov     rcx, [rsi+110h]
                call    IoAllocateMdl
                mov     [rsp+0E8h+var_68], rax
                test    rax, rax
                jnz     short loc_1406AD566
                mov     ebx, 0C0000017h
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD566:                          ; CODE XREF: sub_1406AD224+332↑j
                mov     rcx, [rsp+0E8h+var_68]
                call    sub_140363160
                mov     [rsp+0E8h+var_70], r12d

loc_1406AD578:                          ; CODE XREF: sub_1406AD224+308↑j
                lea     r12, [rsi+60h]
                lea     r13, [rsi+58h]
                mov     edx, [rsi+120h]
                add     rdx, [rsp+0E8h+var_90]
                lea     rax, [rsp+0E8h+arg_18]
                mov     [rsp+0E8h+var_A8], rax
                mov     [rsp+0E8h+var_B8], r12
                mov     eax, [rsi+118h]
                mov     [rsp+0E8h+var_C0], eax
                mov     [rsp+0E8h+var_C8], r13
                mov     r9d, [rsi+11Ch]
                mov     r8, rdx
                xor     ecx, ecx
                call    sub_1406AEF4C
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                test    eax, eax
                js      loc_1406AD8C9
                mov     r8d, 1
                mov     edx, [rsi+11Ch]
                mov     rcx, [rsi+110h]
                call    sub_1406AD988
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                test    eax, eax
                js      loc_1406AD8C9
                mov     rdx, [rsi+128h]
                test    rdx, rdx
                jz      loc_1406AD777
                mov     ecx, [rsi+134h]
                mov     rax, rdx
                test    ecx, ecx
                jz      short loc_1406AD634
                lea     r8, [rdx+rcx]
                cmp     r8, r14
                ja      short loc_1406AD61C
                cmp     r8, rdx
                jnb     short loc_1406AD634

loc_1406AD61C:                          ; CODE XREF: sub_1406AD224+3F1↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     ecx, [rsi+134h]
                mov     rax, [rsi+128h]

loc_1406AD634:                          ; CODE XREF: sub_1406AD224+3E8↑j
                                        ; sub_1406AD224+3F6↑j
                mov     r8d, ecx
                mov     ecx, [rsi+138h]
                add     rcx, [rsp+0E8h+var_90]
                mov     rdx, rax
                call    memmove
                cmp     dword ptr [rsi+8], 1
                jnz     short loc_1406AD67D
                cmp     dword ptr [rsi+134h], 4
                jnb     short loc_1406AD667
                mov     ebx, 0C000000Dh
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD667:                          ; CODE XREF: sub_1406AD224+433↑j
                mov     edx, [rsi+138h]
                mov     ecx, [rsi+13Ch]
                mov     rax, [rsp+0E8h+var_90]
                mov     [rdx+rax], ecx
                jmp     short loc_1406AD6B0
; ---------------------------------------------------------------------------

loc_1406AD67D:                          ; CODE XREF: sub_1406AD224+42A↑j
                mov     [rsp+0E8h+var_C0], edi
                mov     [rsp+0E8h+var_C8], r15
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0E67B5Ah
                lea     rcx, unk_140CDB440
                call    sub_140309D90
                cmp     [rsi+8], edi
                jz      short loc_1406AD6B0
                mov     ebx, 0C000000Dh
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD6B0:                          ; CODE XREF: sub_1406AD224+457↑j
                                        ; sub_1406AD224+47C↑j
                call    sub_1403F8AB4
                test    eax, eax
                jz      short loc_1406AD706
                mov     [rsp+0E8h+var_C8], rdi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, [rsi+134h]
                mov     rcx, [rsi+128h]
                call    IoAllocateMdl
                mov     [rsp+0E8h+var_60], rax
                test    rax, rax
                jnz     short loc_1406AD6F1
                mov     ebx, 0C0000017h
                mov     [rsp+0E8h+var_98], ebx
                jmp     loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD6F1:                          ; CODE XREF: sub_1406AD224+4BD↑j
                mov     rcx, [rsp+0E8h+var_60]
                call    sub_140363160
                mov     [rsp+0E8h+var_6C], 1

loc_1406AD706:                          ; CODE XREF: sub_1406AD224+493↑j
                mov     edx, [rsi+138h]
                add     rdx, [rsp+0E8h+var_90]
                lea     rax, [rsp+0E8h+arg_18]
                mov     [rsp+0E8h+var_A8], rax
                mov     [rsp+0E8h+var_B8], r12
                mov     eax, [rsi+130h]
                mov     [rsp+0E8h+var_C0], eax
                mov     [rsp+0E8h+var_C8], r13
                mov     r9d, [rsi+134h]
                mov     r8, rdx
                xor     ecx, ecx
                call    sub_1406AEF4C
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                test    eax, eax
                js      loc_1406AD8C9
                mov     r8d, 1
                mov     edx, [rsi+134h]
                mov     rcx, [rsi+128h]
                call    sub_1406AD988
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                test    eax, eax
                js      loc_1406AD8C9

loc_1406AD777:                          ; CODE XREF: sub_1406AD224+3D7↑j
                mov     r8d, [rsi+140h]
                mov     rdx, [rsp+0E8h+var_90]
                mov     r14, [rsp+0E8h+var_50]
                mov     rcx, r14
                call    memmove
                nop
;   } // starts at 1406AD46B

loc_1406AD794:                          ; DATA XREF: .rdata:0000000140072274↑o
                mov     rbx, [rsp+0E8h+var_88]
                lea     r10, [rbx+40h]
                mov     rax, [rsi]
                mov     [r10], rax
                lea     rdx, [rbx+28h]
                mov     [rdx], r14
                lea     r9, [rbx+18h]
                mov     eax, [rsi+120h]
                add     rax, [rsp+0E8h+var_58]
                mov     [r9], rax
                mov     eax, [rsi+138h]
                test    eax, eax
                jz      short loc_1406AD7DA
                lea     r14, [rbx+20h]
                add     rax, [rsp+0E8h+var_58]
                mov     [r14], rax
                jmp     short loc_1406AD7E6
; ---------------------------------------------------------------------------

loc_1406AD7DA:                          ; CODE XREF: sub_1406AD224+5A3↑j
                mov     r14, [rsp+0E8h+var_88]
                add     r14, 20h ; ' '
                mov     [r14], rdi

loc_1406AD7E6:                          ; CODE XREF: sub_1406AD224+5B4↑j
                mov     eax, [rsi+140h]
                mov     rbx, [rsp+0E8h+var_88]
                mov     [rbx+48h], eax
                mov     rax, [rsi+110h]
                mov     [rbx+30h], rax
                mov     r8, [rsi+110h]
                sub     r8, [r9]
                mov     [rbx+38h], r8
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_1406AD84C
                movzx   eax, word ptr [rax+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_1406AD841
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_1406AD84C

loc_1406AD841:                          ; CODE XREF: sub_1406AD224+611↑j
                mov     rcx, [rdx]
                mov     rax, [r10]
                mov     [rcx], rax
                jmp     short loc_1406AD852
; ---------------------------------------------------------------------------

loc_1406AD84C:                          ; CODE XREF: sub_1406AD224+603↑j
                                        ; sub_1406AD224+61B↑j
                mov     rax, [rdx]
                mov     [rax], r8

loc_1406AD852:                          ; CODE XREF: sub_1406AD224+626↑j
                mov     rax, [rdx]
                mov     rcx, [rsp+0E8h+var_48]
                mov     [rax+8], rcx
                mov     r8d, [rsi+11Ch]
                mov     rdx, [r9]
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     rcx, r15
                call    ZwFlushInstructionCache
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AD8C9
                cmp     [rsi+128h], rdi
                jz      short loc_1406AD89E
                mov     r8d, [rsi+134h]
                mov     rdx, [r14]
                mov     rcx, r15
                call    ZwFlushInstructionCache
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AD8C9

loc_1406AD89E:                          ; CODE XREF: sub_1406AD224+660↑j
                mov     rcx, [rsp+0E8h+arg_10]
                test    rcx, rcx
                jz      short loc_1406AD8C9
                mov     rax, [rsp+0E8h+var_88]
                mov     [rcx], rax
                mov     [rsp+0E8h+var_88], rdi
                jmp     short loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD8BA:                          ; DATA XREF: .rdata:0000000140072274↑o
;   __except(loc_1407E7665) // owned by 1406AD46B
                mov     ebx, eax
                mov     [rsp+0E8h+var_98], eax
                xor     edi, edi
                jmp     short loc_1406AD8C9
; ---------------------------------------------------------------------------

loc_1406AD8C4:                          ; CODE XREF: sub_1406AD224+165↑j
                mov     ebx, 0C000000Dh

loc_1406AD8C9:                          ; CODE XREF: sub_1406AD224+70↑j
                                        ; sub_1406AD224+B4↑j ...
                call    sub_1403F8AB4
                test    eax, eax
                jz      short loc_1406AD944
                mov     rax, [rsp+0E8h+var_78]
                test    rax, rax
                jz      short loc_1406AD8F4
                cmp     [rsp+0E8h+var_80], edi
                jz      short loc_1406AD8EA
                mov     rcx, rax
                call    MmUnlockPages

loc_1406AD8EA:                          ; CODE XREF: sub_1406AD224+6BC↑j
                mov     rcx, [rsp+0E8h+var_78]
                call    IoFreeMdl

loc_1406AD8F4:                          ; CODE XREF: sub_1406AD224+6B6↑j
                mov     rax, [rsp+0E8h+var_68]
                test    rax, rax
                jz      short loc_1406AD91C
                cmp     [rsp+0E8h+var_70], edi
                jz      short loc_1406AD90F
                mov     rcx, rax
                call    MmUnlockPages

loc_1406AD90F:                          ; CODE XREF: sub_1406AD224+6E1↑j
                mov     rcx, [rsp+0E8h+var_68]
                call    IoFreeMdl

loc_1406AD91C:                          ; CODE XREF: sub_1406AD224+6DB↑j
                mov     rax, [rsp+0E8h+var_60]
                test    rax, rax
                jz      short loc_1406AD944
                cmp     [rsp+0E8h+var_6C], edi
                jz      short loc_1406AD937
                mov     rcx, rax
                call    MmUnlockPages

loc_1406AD937:                          ; CODE XREF: sub_1406AD224+709↑j
                mov     rcx, [rsp+0E8h+var_60]
                call    IoFreeMdl

loc_1406AD944:                          ; CODE XREF: sub_1406AD224+6AC↑j
                                        ; sub_1406AD224+703↑j
                mov     rdx, [rsp+0E8h+var_88]
                mov     rcx, [rsp+0E8h+arg_0]
                call    sub_1406AE69C
                mov     rcx, [rsp+0E8h+var_90]
                test    rcx, rcx
                jz      short loc_1406AD96A
                mov     edx, 42524157h
                call    ExFreePoolWithTag

loc_1406AD96A:                          ; CODE XREF: sub_1406AD224+73A↑j
                mov     eax, ebx
                add     rsp, 0B0h
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
; } // starts at 1406AD224
sub_1406AD224   endp

byte_1406AD980  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401026CC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406AD988   proc near               ; CODE XREF: sub_1405D6BFC+141↑p
                                        ; sub_1405D7FA8+5D↑p ...

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_18          = qword ptr  28h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                xor     eax, eax
                mov     esi, edx
                and     [rbp+var_50], rax
                lea     r9, [rbp+var_48]
                and     [rbp+arg_18], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_38], rax
                mov     edi, r8d
                lea     rax, [rbp+arg_18]
                mov     rbx, rcx
                mov     rdx, rcx
                mov     [r11-60h], rax
                mov     r8d, 6
                mov     qword ptr [r11-68h], 18h
                or      rcx, 0FFFFFFFFFFFFFFFFh
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                movups  [rbp+var_48], xmm0
                call    ZwQueryVirtualMemory
                mov     r8d, eax
                test    eax, eax
                js      short loc_1406ADA64
                mov     ecx, dword ptr [rbp+var_38]
                mov     rax, cs:qword_140C1D920
                shr     ecx, 2
                and     cl, 0Fh
                test    rax, rax
                jz      short loc_1406ADA81
                mov     dl, 0Ch
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1406ADA81
                xor     r8d, r8d
                test    edi, edi
                jz      short loc_1406ADA64
                lea     rax, [rbp+var_50]
                mov     rdx, rbx
                mov     [rsp+80h+var_58], rax
                lea     r9, [rbp+var_30]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+80h+var_60], 30h ; '0'
                call    ZwQueryVirtualMemory
                mov     r8d, eax
                test    eax, eax
                js      short loc_1406ADA64
                mov     rcx, qword ptr [rbp+var_30]
                cmp     rbx, rcx
                jb      short loc_1406ADA89
                add     rcx, qword ptr [rbp+var_20+8]
                lea     rdx, [rbx+rsi]
                cmp     rdx, rcx
                ja      short loc_1406ADA89
                cmp     dword ptr [rbp+var_10+4], 20h ; ' '
                jnz     short loc_1406ADA89

loc_1406ADA64:                          ; CODE XREF: sub_1406AD988+6E↑j
                                        ; sub_1406AD988+95↑j ...
                lea     r11, [rsp+80h+var_s0]
                mov     eax, r8d
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ADA81:                          ; CODE XREF: sub_1406AD988+83↑j
                                        ; sub_1406AD988+8E↑j
                mov     r8d, 0C0000428h
                jmp     short loc_1406ADA64
; ---------------------------------------------------------------------------

loc_1406ADA89:                          ; CODE XREF: sub_1406AD988+C7↑j
                                        ; sub_1406AD988+D4↑j ...
                mov     r8d, 0C000000Dh
                jmp     short loc_1406ADA64
sub_1406AD988   endp

; ---------------------------------------------------------------------------
algn_1406ADA91:                         ; DATA XREF: .pdata:00000001401026D8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406ADA98   proc near               ; CODE XREF: sub_1405F3400+F7↑p
                                        ; sub_1406ADE6C+16B710↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014081951C SIZE 0000002C BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, gs:188h
                xor     r14d, r14d
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+58h+arg_8], r14
                mov     rsi, rcx
                add     [rax+1E6h], di
                lea     rbp, qword_140C53C38
                xor     r8d, r8d
                mov     rcx, rbp
                xor     edx, edx
                call    sub_140244C10
                mov     rbx, rax
                lea     r15d, [r14+11h]
                xor     eax, eax
                lock cmpxchg cs:qword_140C53C38, r15
                jnz     short loc_1406ADB40

loc_1406ADAEF:                          ; CODE XREF: sub_1406ADA98+B6↓j
                test    rbx, rbx
                jz      short loc_1406ADAF8
                or      byte ptr [rbx+1Ah], 1

loc_1406ADAF8:                          ; CODE XREF: sub_1406ADA98+5A↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1406AE264
                mov     ebx, eax
                mov     rax, r15
                lock cmpxchg cs:qword_140C53C38, r14
                jnz     short loc_1406ADB50

loc_1406ADB12:                          ; CODE XREF: sub_1406ADA98+C0↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                test    ebx, ebx
                jns     short loc_1406ADB5A

loc_1406ADB2C:                          ; CODE XREF: sub_1406ADA98+14F↓j
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1406ADB40:                          ; CODE XREF: sub_1406ADA98+55↑j
                mov     r8, rbp
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402F6140
                jmp     short loc_1406ADAEF
; ---------------------------------------------------------------------------

loc_1406ADB50:                          ; CODE XREF: sub_1406ADA98+78↑j
                mov     rcx, rbp
                call    ExfReleasePushLockShared
                jmp     short loc_1406ADB12
; ---------------------------------------------------------------------------

loc_1406ADB5A:                          ; CODE XREF: sub_1406ADA98+92↑j
                mov     rax, gs:188h
                add     [rax+1E6h], di
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbp
                call    sub_140244C10
                lock bts qword ptr [rbp+0], 0
                mov     rbx, rax
                jb      loc_14081951C

loc_1406ADB87:                          ; CODE XREF: sub_1406ADA98+16BA93↓j
                test    rbx, rbx
                jz      short loc_1406ADB90
                or      byte ptr [rbx+1Ah], 1

loc_1406ADB90:                          ; CODE XREF: sub_1406ADA98+F2↑j
                lea     rax, [rsp+58h+arg_8]
                mov     r9d, edi
                mov     r8d, 8
                mov     [rsp+58h+var_38], rax
                mov     rdx, rsi
                lea     rcx, dword_140C53C10
                call    sub_1406AC914
                mov     ebx, eax
                lock xadd cs:qword_140C53C38, rdi
                test    dil, 2
                jnz     loc_140819530

loc_1406ADBC7:                          ; CODE XREF: sub_1406ADA98+16BA9C↓j
                                        ; sub_1406ADA98+16BAAB↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     rcx, [rsp+58h+arg_8]
                call    sub_1406AE054
                jmp     loc_1406ADB2C
sub_1406ADA98   endp

; ---------------------------------------------------------------------------
byte_1406ADBEC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400722DC↑o
                                        ; .pdata:00000001401026E4↑o

; =============== S U B R O U T I N E =======================================


sub_1406ADBF4   proc near               ; CODE XREF: sub_1406AC998+72↑p
                                        ; sub_1406AE534+86↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

                push    rbx
                sub     rsp, 30h
                and     [rsp+38h+arg_0], 0
                mov     rbx, r8
                mov     [rsp+38h+var_18], r9
                mov     r8d, 8
                lea     r9, [rsp+38h+arg_0]
                add     rcx, 8
                call    sub_1406AE2C8
                test    eax, eax
                js      short loc_1406ADC39
                test    rbx, rbx
                jz      short loc_1406ADC39
                mov     rdx, [rsp+38h+arg_0]
                mov     rcx, rdx
                call    sub_1406AEC68
                test    eax, eax
                js      short loc_1406ADC39
                mov     [rbx], rdx

loc_1406ADC39:                          ; CODE XREF: sub_1406ADBF4+2A↑j
                                        ; sub_1406ADBF4+2F↑j ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406ADBF4   endp

byte_1406ADC40  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401026F0↑o

; =============== S U B R O U T I N E =======================================


sub_1406ADC48   proc near               ; CODE XREF: sub_1406AE3F0+20↓p
                                        ; sub_1406AE7E8+A2↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140819548 SIZE 0000002C BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, gs:188h
                xor     ebx, ebx
                mov     rax, gs:188h
                or      rbp, 0FFFFFFFFFFFFFFFFh
                mov     r13, r8
                mov     [rsp+68h+arg_8], rbx
                mov     r15, rcx
                add     [rax+1E6h], bp
                lea     rdi, [rcx+80h]
                xor     r8d, r8d
                mov     rcx, rdi
                xor     edx, edx
                call    sub_140244C10
                mov     rsi, rax
                lea     ecx, [rbx+11h]
                xor     eax, eax
                lock cmpxchg [rdi], rcx
                jnz     loc_1406ADD65

loc_1406ADCB2:                          ; CODE XREF: sub_1406ADC48+12B↓j
                test    rsi, rsi
                jz      short loc_1406ADCBB
                or      byte ptr [rsi+1Ah], 1

loc_1406ADCBB:                          ; CODE XREF: sub_1406ADC48+6D↑j
                lea     r9, [rsp+68h+arg_0]
                mov     [rsp+68h+arg_0], rbx
                mov     r8d, 8
                mov     [rsp+68h+var_48], rbx
                mov     rdx, r14
                lea     rcx, [r15+58h]
                call    sub_1406AE2C8
                mov     esi, eax
                test    eax, eax
                js      short loc_1406ADCFB
                mov     rcx, [rsp+68h+arg_0]
                test    rcx, rcx
                jz      short loc_1406ADCF6
                lock inc qword ptr [rcx+8]
                mov     rcx, [rsp+68h+arg_0]

loc_1406ADCF6:                          ; CODE XREF: sub_1406ADC48+A2↑j
                mov     [rsp+68h+arg_8], rcx

loc_1406ADCFB:                          ; CODE XREF: sub_1406ADC48+98↑j
                mov     eax, 11h
                lock cmpxchg [rdi], rbx
                jnz     short loc_1406ADD78

loc_1406ADD07:                          ; CODE XREF: sub_1406ADC48+138↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                cmp     esi, 0C0000272h
                jz      short loc_1406ADD82

loc_1406ADD25:                          ; CODE XREF: sub_1406ADC48+1D9↓j
                test    esi, esi
                js      loc_1406ADE26
                test    r13, r13
                jz      loc_1406ADE26
                mov     rax, [rsp+68h+arg_8]
                mov     [r13+0], rax

loc_1406ADD3F:                          ; CODE XREF: sub_1406ADC48+1E3↓j
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_1406ADE38
                mov     rbx, [rsp+68h+arg_10]
                mov     eax, esi
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

loc_1406ADD65:                          ; CODE XREF: sub_1406ADC48+64↑j
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F6140
                jmp     loc_1406ADCB2
; ---------------------------------------------------------------------------

loc_1406ADD78:                          ; CODE XREF: sub_1406ADC48+BD↑j
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     short loc_1406ADD07
; ---------------------------------------------------------------------------

loc_1406ADD82:                          ; CODE XREF: sub_1406ADC48+DB↑j
                lea     r8, [rsp+68h+arg_8]
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1407226AC
                mov     esi, eax
                test    eax, eax
                js      loc_1406ADE26
                mov     rax, gs:188h
                add     [rax+1E6h], bp
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rsi, rax
                jb      loc_140819548

loc_1406ADDC8:                          ; CODE XREF: sub_1406ADC48+16B90F↓j
                test    rsi, rsi
                jz      short loc_1406ADDD1
                or      byte ptr [rsi+1Ah], 1

loc_1406ADDD1:                          ; CODE XREF: sub_1406ADC48+183↑j
                mov     r14, [rsp+68h+arg_8]
                lea     rcx, [r15+58h]
                mov     [rsp+68h+var_40], ebp
                mov     rdx, r14
                mov     dword ptr [rsp+68h+var_48], 8
                mov     r9, [r14]
                call    sub_1406AF5B0
                mov     esi, eax
                test    eax, eax
                js      short loc_1406ADDFC
                lock inc qword ptr [r14+8]

loc_1406ADDFC:                          ; CODE XREF: sub_1406ADC48+1AD↑j
                lock xadd [rdi], rbp
                test    bpl, 2
                jnz     loc_14081955C

loc_1406ADE0B:                          ; CODE XREF: sub_1406ADC48+16B918↓j
                                        ; sub_1406ADC48+16B927↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                jmp     loc_1406ADD25
; ---------------------------------------------------------------------------

loc_1406ADE26:                          ; CODE XREF: sub_1406ADC48+DF↑j
                                        ; sub_1406ADC48+E8↑j ...
                mov     rbx, [rsp+68h+arg_8]
                jmp     loc_1406ADD3F
sub_1406ADC48   endp

; ---------------------------------------------------------------------------
byte_1406ADE30  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140072308↑o
                                        ; .pdata:00000001401026FC↑o

; =============== S U B R O U T I N E =======================================


sub_1406ADE38   proc near               ; CODE XREF: sub_1406AC660+3F↑p
                                        ; sub_1406ADC48+FD↑p ...
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                test    rdx, rdx
                jz      short loc_1406ADE55
                or      rbx, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdx+8], rbx
                sub     rbx, 1
                jz      short loc_1406ADE5F

loc_1406ADE55:                          ; CODE XREF: sub_1406ADE38+B↑j
                                        ; sub_1406ADE38+2C↓j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ADE5F:                          ; CODE XREF: sub_1406ADE38+1B↑j
                call    sub_140722828
                jmp     short loc_1406ADE55
sub_1406ADE38   endp

; ---------------------------------------------------------------------------
byte_1406ADE66  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140102708↑o

; =============== S U B R O U T I N E =======================================


sub_1406ADE6C   proc near               ; CODE XREF: sub_14060DA00+25FB↑p
                                        ; DATA XREF: .rdata:0000000140072344↑o ...

var_34          = dword ptr -34h
var_30          = dword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E7681 SIZE 00000034 BYTES
; FUNCTION CHUNK AT 0000000140819574 SIZE 00000031 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     esi, edx
                mov     rdi, rcx
                and     [rsp+58h+arg_0], 0
                and     [rsp+58h+arg_10], 0
                test    rcx, rcx
                jz      loc_1406ADFA4

loc_1406ADE93:                          ; DATA XREF: .rdata:0000000140072330↑o
;   __try { // __except at loc_1406ADF03
                cmp     esi, 8
                jb      short loc_1406ADEC8
                lea     rax, [rsi+rcx]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_1406ADED6
                cmp     rax, rdi
                jb      short loc_1406ADED6

loc_1406ADEB0:                          ; CODE XREF: sub_1406ADE6C+75↓j
                lea     rdx, [rsp+58h+arg_10]
                mov     ecx, esi
                call    sub_1406AE394
                mov     ebx, eax
                mov     [rsp+58h+var_34], eax
                test    eax, eax
                js      short loc_1406ADEE3
                jmp     short loc_1406ADEE8
; ---------------------------------------------------------------------------

loc_1406ADEC8:                          ; CODE XREF: sub_1406ADE6C+2A↑j
                mov     ebx, 0C000000Dh
                mov     [rsp+58h+var_34], ebx
                jmp     loc_1406ADF75
; ---------------------------------------------------------------------------

loc_1406ADED6:                          ; CODE XREF: sub_1406ADE6C+3D↑j
                                        ; sub_1406ADE6C+42↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406ADEB0
; ---------------------------------------------------------------------------

loc_1406ADEE3:                          ; CODE XREF: sub_1406ADE6C+58↑j
                jmp     loc_1406ADF75
; ---------------------------------------------------------------------------

loc_1406ADEE8:                          ; CODE XREF: sub_1406ADE6C+5A↑j
                mov     r8, rsi
                mov     rdx, rdi
                mov     rbx, [rsp+58h+arg_10]
                mov     rcx, rbx
                call    memmove
                mov     eax, [rbx]
                mov     [rsp+58h+var_30], eax
                jmp     short loc_1406ADF0B
;   } // starts at 1406ADE93
; ---------------------------------------------------------------------------

loc_1406ADF03:                          ; DATA XREF: .rdata:0000000140072330↑o
;   __except(loc_1407E7681) // owned by 1406ADE93
                mov     ebx, eax
                mov     [rsp+58h+var_34], eax
                jmp     short loc_1406ADF75
; ---------------------------------------------------------------------------

loc_1406ADF0B:                          ; CODE XREF: sub_1406ADE6C+95↑j
                                        ; sub_1406ADE6C+141↓j
                xor     ebx, ebx
                cmp     eax, 7
                setnz   bl
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                call    PsGetProcessId
                mov     rcx, rax
                lea     r8, [rsp+58h+arg_0]
                mov     edx, ebx
                call    sub_1406AE08C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406ADF75
                mov     ecx, [rsp+58h+var_30]
                sub     ecx, 1
                jz      loc_1406AE037
                sub     ecx, 1
                jz      loc_1406AE020
                sub     ecx, 1
                jz      short loc_1406ADFB2
                sub     ecx, 1
                jnz     short loc_1406ADFC9
                cmp     [rsp+58h+arg_10], 0
                jnz     loc_14081959B
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1406AE3F0

loc_1406ADF73:                          ; CODE XREF: sub_1406ADE6C+15B↓j
                                        ; sub_1406ADE6C+198↓j ...
                mov     ebx, eax

loc_1406ADF75:                          ; CODE XREF: sub_1406ADE6C+65↑j
                                        ; sub_1406ADE6C:loc_1406ADEE3↑j ...
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1406AE054
                mov     rcx, [rsp+58h+arg_10]
                test    rcx, rcx
                jz      short loc_1406ADF93
                mov     edx, 42524157h
                call    ExFreePoolWithTag

loc_1406ADF93:                          ; CODE XREF: sub_1406ADE6C+11B↑j
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406ADFA4:                          ; CODE XREF: sub_1406ADE6C+21↑j
                mov     eax, 4
                mov     [rsp+58h+var_30], eax
                jmp     loc_1406ADF0B
; ---------------------------------------------------------------------------

loc_1406ADFB2:                          ; CODE XREF: sub_1406ADE6C+EA↑j
                mov     r9d, esi
                mov     r8, rdi
                mov     rdx, [rsp+58h+arg_10]
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1406AE7E8
                jmp     short loc_1406ADF73
; ---------------------------------------------------------------------------

loc_1406ADFC9:                          ; CODE XREF: sub_1406ADE6C+EF↑j
                sub     ecx, 1
                jz      loc_140819587
                sub     ecx, 1
                jz      loc_140819587
                sub     ecx, 1
                jz      loc_140819574
                sub     ecx, 1
                jz      short loc_1406AE009
                cmp     ecx, 1
                jnz     loc_14081959B
                mov     r8d, esi
                mov     rdx, [rsp+58h+arg_10]
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1407218F8
                jmp     loc_1406ADF73
; ---------------------------------------------------------------------------

loc_1406AE009:                          ; CODE XREF: sub_1406ADE6C+17B↑j
                mov     r8d, esi
                mov     rdx, [rsp+58h+arg_10]
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1407221A8
                jmp     loc_1406ADF73
; ---------------------------------------------------------------------------

loc_1406AE020:                          ; CODE XREF: sub_1406ADE6C+E1↑j
                mov     r8d, esi
                mov     rdx, [rsp+58h+arg_10]
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1405D65AC
                jmp     loc_1406ADF73
; ---------------------------------------------------------------------------

loc_1406AE037:                          ; CODE XREF: sub_1406ADE6C+D8↑j
                mov     r8d, esi
                mov     rdx, [rsp+58h+arg_10]
                mov     rcx, [rsp+58h+arg_0]
                call    sub_1405D64E8
                jmp     loc_1406ADF73
; } // starts at 1406ADE6C
sub_1406ADE6C   endp

; ---------------------------------------------------------------------------
byte_1406AE04E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072344↑o
                                        ; .pdata:0000000140102714↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE054   proc near               ; CODE XREF: sub_1406ADA98+14A↑p
                                        ; sub_1406ADE6C+10E↑p ...
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                test    rcx, rcx
                jz      short loc_1406AE074
                or      rbx, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx+0E8h], rbx
                sub     rbx, 1
                jz      short loc_1406AE07E

loc_1406AE074:                          ; CODE XREF: sub_1406AE054+B↑j
                                        ; sub_1406AE054+2F↓j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AE07E:                          ; CODE XREF: sub_1406AE054+1E↑j
                call    sub_1406AC660
                jmp     short loc_1406AE074
sub_1406AE054   endp

; ---------------------------------------------------------------------------
byte_1406AE085  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140102720↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE08C   proc near               ; CODE XREF: sub_1406ADE6C+C6↑p
                                        ; DATA XREF: .rdata:0000000140072380↑o ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_28          = byte ptr -28h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408195A6 SIZE 00000039 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     ebx, ebx
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     [rax+20h], rbx
                mov     r15, r8
                mov     rax, gs:188h
                mov     r14d, edx
                mov     rbp, rcx
                add     [rax+1E6h], si
                lea     r12, qword_140C53C38
                xor     r8d, r8d
                mov     rcx, r12
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                lea     r13d, [rbx+11h]
                xor     eax, eax
                lock cmpxchg cs:qword_140C53C38, r13
                jnz     loc_1406AE183

loc_1406AE0F7:                          ; CODE XREF: sub_1406AE08C+105↓j
                test    rdi, rdi
                jz      short loc_1406AE100
                or      byte ptr [rdi+1Ah], 1

loc_1406AE100:                          ; CODE XREF: sub_1406AE08C+6E↑j
                lea     rdx, [rsp+68h+arg_18]
                mov     rcx, rbp
                call    sub_1406AE264
                mov     edi, eax
                mov     rax, r13
                lock cmpxchg cs:qword_140C53C38, rbx
                jnz     short loc_1406AE196

loc_1406AE120:                          ; CODE XREF: sub_1406AE08C+112↓j
                mov     rcx, r12
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                cmp     edi, 0C0000272h
                jz      short loc_1406AE1A0

loc_1406AE13E:                          ; CODE XREF: sub_1406AE08C+1CA↓j
                test    edi, edi
                js      loc_1408195D2
                test    r15, r15
                jz      loc_1408195D2
                mov     rax, [rsp+68h+arg_18]
                mov     [r15], rax

loc_1406AE15A:                          ; CODE XREF: sub_1406AE08C+16B54E↓j
                mov     rcx, rbx
                call    sub_1406AE054
                lea     r11, [rsp+68h+var_28]
                mov     eax, edi
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
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

loc_1406AE183:                          ; CODE XREF: sub_1406AE08C+65↑j
                mov     r8, r12
                mov     rdx, rdi
                mov     rcx, r12
                call    sub_1402F6140
                jmp     loc_1406AE0F7
; ---------------------------------------------------------------------------

loc_1406AE196:                          ; CODE XREF: sub_1406AE08C+92↑j
                mov     rcx, r12
                call    ExfReleasePushLockShared
                jmp     short loc_1406AE120
; ---------------------------------------------------------------------------

loc_1406AE1A0:                          ; CODE XREF: sub_1406AE08C+B0↑j
                test    r14d, r14d
                jz      loc_1408195D2
                lea     rdx, [rsp+68h+arg_18]
                mov     rcx, rbp
                call    sub_140721DFC
                mov     edi, eax
                test    eax, eax
                js      loc_1408195D2
                mov     rax, gs:188h
                add     [rax+1E6h], si
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                call    sub_140244C10
                lock bts qword ptr [r12], 0
                mov     rdi, rax
                jb      loc_1408195A6

loc_1406AE1F0:                          ; CODE XREF: sub_1406AE08C+16B529↓j
                test    rdi, rdi
                jz      short loc_1406AE1F9
                or      byte ptr [rdi+1Ah], 1

loc_1406AE1F9:                          ; CODE XREF: sub_1406AE08C+167↑j
                mov     r14, [rsp+68h+arg_18]
                lea     rcx, dword_140C53C10
                mov     [rsp+68h+var_40], esi
                mov     rdx, r14
                mov     [rsp+68h+var_48], 8
                mov     r9, [r14]
                call    sub_1406AF5B0
                mov     edi, eax
                test    eax, eax
                js      short loc_1406AE22D
                lock inc qword ptr [r14+0E8h]

loc_1406AE22D:                          ; CODE XREF: sub_1406AE08C+197↑j
                lock xadd cs:qword_140C53C38, rsi
                test    sil, 2
                jnz     loc_1408195BA

loc_1406AE240:                          ; CODE XREF: sub_1406AE08C+16B532↓j
                                        ; sub_1406AE08C+16B541↓j
                mov     rcx, r12
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                jmp     loc_1406AE13E
sub_1406AE08C   endp

; ---------------------------------------------------------------------------
byte_1406AE25B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140072380↑o
                                        ; .pdata:000000014010272C↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE264   proc near               ; CODE XREF: sub_1406ADA98+65↑p
                                        ; sub_1406AE08C+7F↑p
                                        ; DATA XREF: ...

arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+18h], r8
                push    rbx
                sub     rsp, 30h
                and     qword ptr [rax+18h], 0
                lea     r9, [rax+18h]
                and     qword ptr [rax-18h], 0
                mov     rbx, rdx
                mov     rdx, rcx
                mov     r8d, 8
                lea     rcx, dword_140C53C10
                call    sub_1406AE2C8
                test    eax, eax
                js      short loc_1406AE2B9
                test    rbx, rbx
                jz      short loc_1406AE2B9
                mov     rcx, [rsp+38h+arg_10]
                test    rcx, rcx
                jz      short loc_1406AE2B6
                lock inc qword ptr [rcx+0E8h]
                mov     rcx, [rsp+38h+arg_10]

loc_1406AE2B6:                          ; CODE XREF: sub_1406AE264+43↑j
                mov     [rbx], rcx

loc_1406AE2B9:                          ; CODE XREF: sub_1406AE264+34↑j
                                        ; sub_1406AE264+39↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AE264   endp

byte_1406AE2C0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102738↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE2C8   proc near               ; CODE XREF: sub_1405D696C+26↑p
                                        ; sub_1406AC914+2C↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     edi, [rcx+4]
                xor     ebp, ebp
                sub     edi, 1
                mov     r15, r9
                mov     r12d, r8d
                mov     r13, rdx
                mov     r14, rcx
                mov     ebx, ebp
                mov     esi, 0C0000272h
                js      short loc_1406AE33F

loc_1406AE301:                          ; CODE XREF: sub_1406AE2C8+71↓j
                lea     eax, [rdi+rbp]
                mov     ecx, 2
                cdq
                mov     r8d, r12d
                idiv    ecx
                mov     edx, [r14]
                mov     rcx, [r14+10h]
                mov     ebx, eax
                imul    edx, eax
                mov     rax, [r14+20h]
                mov     rcx, [rdx+rcx]
                mov     rdx, r13
                call    sub_1404079D0
                test    rax, rax
                jz      short loc_1406AE33D
                js      short loc_1406AE383
                lea     ebp, [rbx+1]
                mov     ebx, ebp

loc_1406AE337:                          ; CODE XREF: sub_1406AE2C8+BE↓j
                cmp     ebp, edi
                jle     short loc_1406AE301
                jmp     short loc_1406AE33F
; ---------------------------------------------------------------------------

loc_1406AE33D:                          ; CODE XREF: sub_1406AE2C8+66↑j
                xor     esi, esi

loc_1406AE33F:                          ; CODE XREF: sub_1406AE2C8+37↑j
                                        ; sub_1406AE2C8+73↑j
                mov     rax, [rsp+48h+arg_20]
                test    rax, rax
                jnz     short loc_1406AE388

loc_1406AE349:                          ; CODE XREF: sub_1406AE2C8+C2↓j
                test    r15, r15
                jz      short loc_1406AE363
                test    esi, esi
                js      short loc_1406AE363
                mov     edx, [r14]
                mov     rcx, [r14+10h]
                imul    edx, ebx
                mov     rdx, [rdx+rcx]
                mov     [r15], rdx

loc_1406AE363:                          ; CODE XREF: sub_1406AE2C8+84↑j
                                        ; sub_1406AE2C8+88↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
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

loc_1406AE383:                          ; CODE XREF: sub_1406AE2C8+68↑j
                lea     edi, [rbx-1]
                jmp     short loc_1406AE337
; ---------------------------------------------------------------------------

loc_1406AE388:                          ; CODE XREF: sub_1406AE2C8+7F↑j
                mov     [rax], ebx
                jmp     short loc_1406AE349
sub_1406AE2C8   endp

; ---------------------------------------------------------------------------
byte_1406AE38C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102744↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE394   proc near               ; CODE XREF: sub_1405D6454+29↑p
                                        ; sub_1405D69C4+3F↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408195E0 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, rdx
                mov     eax, ebx
                test    ecx, ecx
                jz      short loc_1406AE3BE
                mov     edx, ecx
                mov     r8d, 42524157h
                lea     ecx, [rbx+1]
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_1406AE3E0

loc_1406AE3BE:                          ; CODE XREF: sub_1406AE394+13↑j
                test    rdi, rdi
                jz      short loc_1406AE3C9
                mov     [rdi], rax
                mov     rax, rbx

loc_1406AE3C9:                          ; CODE XREF: sub_1406AE394+2D↑j
                test    rax, rax
                jnz     loc_1408195E0

loc_1406AE3D2:                          ; CODE XREF: sub_1406AE394+51↓j
                                        ; sub_1406AE394+16B25A↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1406AE3E0:                          ; CODE XREF: sub_1406AE394+28↑j
                mov     ebx, 0C0000017h
                jmp     short loc_1406AE3D2
sub_1406AE394   endp

; ---------------------------------------------------------------------------
algn_1406AE3E7:                         ; DATA XREF: .rdata:00000001400723AC↑o
                                        ; .pdata:0000000140102750↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406AE3F0   proc near               ; CODE XREF: sub_1406ADE6C+102↑p
                                        ; DATA XREF: .pdata:000000014010275C↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax+10h], 0
                lea     r8, [rax+10h]
                and     dword ptr [rax-14h], 0
                mov     rsi, rcx
                call    sub_1406ADC48
                mov     rdi, [rsp+48h+arg_8]
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AE471
                mov     eax, [rdi+10h]
                test    eax, eax
                jz      short loc_1406AE48F
                lea     ecx, [rax-1]
                shl     rcx, 5
                add     rcx, [rdi+18h]
                mov     rax, [rcx+8]
                lea     rdx, [rsp+48h+var_28]
                mov     [rsp+48h+var_20], rax
                mov     rax, [rcx+10h]
                mov     [rsp+48h+var_28], rax
                mov     eax, [rcx+18h]
                mov     rcx, rdi
                mov     [rsp+48h+var_18], eax
                call    sub_1406AE708
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AE471
                mov     r8d, 1
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406AE49C
                mov     ebx, eax

loc_1406AE471:                          ; CODE XREF: sub_1406AE3F0+2E↑j
                                        ; sub_1406AE3F0+6C↑j ...
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406ADE38
                mov     rsi, [rsp+48h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AE48F:                          ; CODE XREF: sub_1406AE3F0+35↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1406AE471
sub_1406AE3F0   endp

; ---------------------------------------------------------------------------
byte_1406AE496  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010275C↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE49C   proc near               ; CODE XREF: sub_1406AE3F0+7A↑p
                                        ; sub_140722828+16↓p
                                        ; DATA XREF: ...

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
                xor     edi, edi
                mov     rsi, rdx
                mov     r14, rcx
                cmp     r8d, 0FFFFFFFFh
                jle     short loc_1406AE51C
                mov     eax, [rdx+10h]

loc_1406AE4C6:                          ; CODE XREF: sub_1406AE49C+87↓j
                cmp     r8d, eax
                ja      short loc_1406AE525
                test    r8d, r8d
                jle     short loc_1406AE4FE
                mov     ebp, r8d

loc_1406AE4D3:                          ; CODE XREF: sub_1406AE49C+60↓j
                mov     ebx, [rsi+10h]
                mov     rcx, r14
                dec     ebx
                shl     rbx, 5
                add     rbx, [rsi+18h]
                mov     rdx, [rbx]
                call    sub_1406AE69C
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0
                movups  xmmword ptr [rbx+10h], xmm0
                dec     dword ptr [rsi+10h]
                sub     rbp, 1
                jnz     short loc_1406AE4D3

loc_1406AE4FE:                          ; CODE XREF: sub_1406AE49C+32↑j
                                        ; sub_1406AE49C+8E↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406AE51C:                          ; CODE XREF: sub_1406AE49C+25↑j
                mov     r8d, [rdx+10h]
                mov     eax, r8d
                jmp     short loc_1406AE4C6
; ---------------------------------------------------------------------------

loc_1406AE525:                          ; CODE XREF: sub_1406AE49C+2D↑j
                mov     edi, 0C000000Dh
                jmp     short loc_1406AE4FE
sub_1406AE49C   endp

; ---------------------------------------------------------------------------
byte_1406AE52C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102768↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406AE534   proc near               ; CODE XREF: sub_1406AE7E8+8B↓p
                                        ; DATA XREF: .rdata:0000000140072408↑o ...

arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 00000001408195F4 SIZE 00000017 BYTES

                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 30h
                mov     r14, rdx
                xor     r12d, r12d
                mov     edx, [rcx+0Ch]
                mov     r15, r8
                sub     edx, [rcx+38h]
                mov     rsi, rcx
                mov     [rbp+arg_0], r12
                mov     [rbp+arg_18], r12
                call    sub_1406AC798
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                lea     rbx, [rsi+30h]
                xor     r8d, r8d
                mov     rcx, rbx
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                lea     r13d, [r12+11h]
                xor     eax, eax
                lock cmpxchg [rbx], r13
                jnz     loc_1406AE676

loc_1406AE5A0:                          ; CODE XREF: sub_1406AE534+150↓j
                test    rdi, rdi
                jz      short loc_1406AE5A9
                or      byte ptr [rdi+1Ah], 1

loc_1406AE5A9:                          ; CODE XREF: sub_1406AE534+6F↑j
                mov     rdx, [r14+110h]
                lea     r8, [rbp+arg_0]
                xor     r9d, r9d
                mov     rcx, rsi
                call    sub_1406ADBF4
                mov     edi, eax
                mov     rax, r13
                lock cmpxchg [rbx], r12
                jnz     loc_1406AE689

loc_1406AE5CF:                          ; CODE XREF: sub_1406AE534+15D↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                cmp     edi, 0C0000272h
                jz      short loc_1406AE63A
                mov     rbx, [rbp+arg_0]
                test    edi, edi
                js      short loc_1406AE60B

loc_1406AE5F5:                          ; CODE XREF: sub_1406AE534+13B↓j
                                        ; sub_1406AE534+16B0D2↓j
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1406AE9BC
                test    r15, r15
                jz      short loc_1406AE60B
                mov     [r15], rbx
                mov     rbx, r12

loc_1406AE60B:                          ; CODE XREF: sub_1406AE534+BF↑j
                                        ; sub_1406AE534+CF↑j ...
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1406AE69C
                mov     rdx, [rbp+arg_18]
                mov     rcx, rsi
                call    sub_1406AE69C
                mov     rbx, [rsp+30h+arg_8]
                mov     eax, edi
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
                align 2

loc_1406AE63A:                          ; CODE XREF: sub_1406AE534+B7↑j
                lea     r8, [rbp+arg_0]
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1406AD224
                mov     rbx, [rbp+arg_0]
                mov     edi, eax
                test    eax, eax
                js      short loc_1406AE60B
                lea     r8, [rbp+arg_18]
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1406AC998
                mov     edi, eax
                test    eax, eax
                js      short loc_1406AE60B
                mov     r14, [rbp+arg_18]
                test    r14, r14
                jz      short loc_1406AE5F5
                jmp     loc_1408195F4
; ---------------------------------------------------------------------------

loc_1406AE676:                          ; CODE XREF: sub_1406AE534+66↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     loc_1406AE5A0
; ---------------------------------------------------------------------------

loc_1406AE689:                          ; CODE XREF: sub_1406AE534+95↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     loc_1406AE5CF
sub_1406AE534   endp

; ---------------------------------------------------------------------------
byte_1406AE696  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072408↑o
                                        ; .pdata:0000000140102774↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE69C   proc near               ; CODE XREF: sub_1406AC494+F3↑p
                                        ; sub_1406AC660+6C↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rdx
                test    rdx, rdx
                jz      short loc_1406AE6C0
                or      rdi, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdx+50h], rdi
                sub     rdi, 1
                jz      short loc_1406AE6CF

loc_1406AE6C0:                          ; CODE XREF: sub_1406AE69C+12↑j
                                        ; sub_1406AE69C+61↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AE6CF:                          ; CODE XREF: sub_1406AE69C+22↑j
                mov     rdx, [rdx+28h]
                test    rdx, rdx
                jz      short loc_1406AE6F0
                call    sub_1406AD028
                and     qword ptr [rbx+28h], 0
                and     qword ptr [rbx+18h], 0
                and     qword ptr [rbx+20h], 0
                and     dword ptr [rbx+48h], 0

loc_1406AE6F0:                          ; CODE XREF: sub_1406AE69C+3A↑j
                mov     edx, 42524157h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1406AE6C0
sub_1406AE69C   endp

; ---------------------------------------------------------------------------
byte_1406AE6FF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140102780↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE708   proc near               ; CODE XREF: sub_1406AE3F0+63↑p
                                        ; sub_1406AE7E8+162↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081960C SIZE 0000002B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r8, [rax+0B8h]
                mov     rax, [r8+580h]
                test    rax, rax
                jnz     loc_14081960C

loc_1406AE742:                          ; CODE XREF: sub_1406AE708+16AF1A↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                mov     dword ptr [rdi+60h], 100001h
                lea     rdx, [rdi+30h]
                mov     rcx, gs:188h
                mov     r9b, 1
                xor     r8d, r8d
                mov     [rsp+38h+var_18], 1
                call    sub_1406652B4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AE7BC
                mov     rax, [rsi+8]
                lea     rdx, [rdi+30h]
                mov     [rdi+128h], rax
                mov     r9b, 1
                mov     rax, [rsi]
                xor     r8d, r8d
                mov     [rdi+0C8h], rax
                mov     eax, [rsi+10h]
                mov     [rdi+74h], eax
                mov     rcx, gs:188h
                mov     [rsp+38h+var_18], 3
                call    sub_1406650FC
                mov     ebx, eax

loc_1406AE7BC:                          ; CODE XREF: sub_1406AE708+75↑j
                mov     rcx, gs:188h
                call    sub_140245770

loc_1406AE7CA:                          ; CODE XREF: sub_1406AE708+16AF2A↓j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AE708   endp

algn_1406AE7E2:                         ; DATA XREF: .rdata:0000000140072440↑o
                                        ; .pdata:000000014010278C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0F0h

sub_1406AE7E8   proc near               ; CODE XREF: sub_1406ADE6C+156↑p
                                        ; DATA XREF: .rdata:0000000140072474↑o ...

var_1D0         = qword ptr -1D0h
var_1C8         = dword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = xmmword ptr -1B0h
var_1A0         = qword ptr -1A0h
var_190         = byte ptr -190h
var_40          = qword ptr -40h

; FUNCTION CHUNK AT 0000000140819638 SIZE 00000099 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-0C0h]
                sub     rsp, 1C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0F0h+var_40], rax
                mov     r15, r8
                mov     r14, rdx
                mov     rdi, rcx
                xor     r12d, r12d
                xorps   xmm0, xmm0
                mov     [rsp+1F0h+var_1B8], r12
                xor     eax, eax
                mov     [rsp+1F0h+var_1C0], r12
                xor     edx, edx
                mov     [rsp+1F0h+var_1A0], rax
                mov     r8d, 150h
                lea     rcx, [rsp+1F0h+var_190]
                movups  [rsp+1F0h+var_1B0], xmm0
                mov     esi, r9d
                call    memset
                lea     r8, [rsp+1F0h+var_190]
                mov     edx, esi
                mov     rcx, r14
                call    sub_1406AED14
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AE975
                lea     r8, [rsp+1F0h+var_1B8]
                mov     rcx, rdi
                lea     rdx, [rsp+1F0h+var_190]
                call    sub_1406AE534
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AE975
                lea     r8, [rsp+1F0h+var_1C0]
                mov     rcx, rdi
                call    sub_1406ADC48
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AE975
                mov     rcx, [rsp+1F0h+var_1C0]
                lea     rdx, [rsp+1F0h+var_1B0]
                call    sub_1406AEC88
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AE975
                mov     eax, dword ptr [rsp+1F0h+var_1A0]
                mov     r9, qword ptr [rsp+1F0h+var_1B0]
                mov     r8, qword ptr [rsp+1F0h+var_1B0+8]
                mov     rdx, [rsp+1F0h+var_1B8]
                mov     rcx, [rsp+1F0h+var_1C0]
                mov     dword ptr [rsp+1F0h+var_1D0], eax
                call    sub_1406AEB84
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AE975
                mov     rdx, [rsp+1F0h+var_1B8]
                lea     r8, [rsp+1F0h+var_1B0]
                mov     [rsp+1F0h+var_1C8], esi
                lea     rcx, [rsp+1F0h+var_190]
                mov     r9, r14
                mov     [rsp+1F0h+var_1D0], r15
                call    sub_1406AEAA4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AE975
                mov     rax, gs:188h
                mov     esi, 14Ch
                mov     rcx, [rax+0B8h]
                lea     r14d, [rsi+78h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jnz     loc_140819638

loc_1406AE92C:                          ; CODE XREF: sub_1406AE7E8+16AE5D↓j
                                        ; sub_1406AE7E8+16AE8B↓j
                btr     dword ptr [rsp+1F0h+var_1A0], 8

loc_1406AE932:                          ; CODE XREF: sub_1406AE7E8+16AE95↓j
                mov     rax, [rsp+1F0h+var_1B8]
                lea     rdx, [rsp+1F0h+var_1B0]
                mov     rcx, [rax+18h]
                mov     qword ptr [rsp+1F0h+var_1B0+8], rcx
                mov     rcx, [rsp+1F0h+var_1C0]
                call    sub_1406AE708
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406AE975
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jnz     loc_14081968D

loc_1406AE975:                          ; CODE XREF: sub_1406AE7E8+78↑j
                                        ; sub_1406AE7E8+94↑j ...
                mov     rdx, [rsp+1F0h+var_1C0]
                mov     rcx, rdi
                call    sub_1406ADE38
                mov     rdx, [rsp+1F0h+var_1B8]
                mov     rcx, rdi
                call    sub_1406AE69C
                mov     eax, ebx
                mov     rcx, [rbp+0F0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1C0h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406AE7E8
sub_1406AE7E8   endp

byte_1406AE9B3  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140072474↑o
                                        ; .pdata:0000000140102798↑o

; =============== S U B R O U T I N E =======================================


sub_1406AE9BC   proc near               ; CODE XREF: sub_1406AE534+C7↑p
                                        ; DATA XREF: .rdata:00000001400724A0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408196D2 SIZE 0000002C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rdx
                mov     r14, rcx
                add     [rax+1E6h], si
                lea     rdi, [rcx+50h]
                xor     r8d, r8d
                mov     rcx, rdi
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rbp, rax
                jb      loc_1408196D2

loc_1406AEA0F:                          ; CODE XREF: sub_1406AE9BC+16AD25↓j
                test    rbp, rbp
                jz      short loc_1406AEA18
                or      byte ptr [rbp+1Ah], 1

loc_1406AEA18:                          ; CODE XREF: sub_1406AE9BC+56↑j
                mov     eax, [rbx+10h]
                test    al, 1
                jz      short loc_1406AEA53
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_1406AEA94
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_1406AEA94
                mov     [rcx], rax
                mov     [rax+8], rcx
                lea     rax, [r14+40h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     short loc_1406AEA94
                mov     [rbx], rax
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx

loc_1406AEA53:                          ; CODE XREF: sub_1406AE9BC+61↑j
                lock xadd [rdi], rsi
                test    sil, 2
                jnz     loc_1408196E6

loc_1406AEA62:                          ; CODE XREF: sub_1406AE9BC+16AD2E↓j
                                        ; sub_1406AE9BC+16AD3D↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406AEA94:                          ; CODE XREF: sub_1406AE9BC+6A↑j
                                        ; sub_1406AE9BC+73↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1406AE9BC   endp

; ---------------------------------------------------------------------------
byte_1406AEA9B  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400724A0↑o
                                        ; .pdata:00000001401027A4↑o

; =============== S U B R O U T I N E =======================================


sub_1406AEAA4   proc near               ; CODE XREF: sub_1406AE7E8+110↑p
                                        ; DATA XREF: .pdata:00000001401027B0↑o

var_14          = dword ptr -14h
var_10          = dword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001407E76BB SIZE 0000002E BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 30h
                mov     r15, r9
                mov     rsi, r8
                mov     r14, rcx
                xor     ebx, ebx
                cmp     [rcx+128h], rbx
                jz      short loc_1406AEAE7
                cmp     [rsp+38h+arg_28], 20h ; ' '
                jnb     short loc_1406AEADF
                mov     ebx, 80000005h
                jmp     short loc_1406AEB5E
; ---------------------------------------------------------------------------

loc_1406AEADF:                          ; CODE XREF: sub_1406AEAA4+32↑j
                mov     rax, [rdx+20h]
                mov     [r9+18h], rax

loc_1406AEAE7:                          ; CODE XREF: sub_1406AEAA4+2B↑j
                                        ; DATA XREF: .rdata:00000001400724D0↑o
;   __try { // __except at loc_1406AEB58
                mov     edi, ebx
                mov     [rsp+38h+var_14], ebx

loc_1406AEAED:                          ; CODE XREF: sub_1406AEAA4+78↓j
                mov     eax, [r14+144h]
                shr     eax, 0Ah
                inc     eax
                cmp     edi, eax
                jnb     short loc_1406AEB1E
                mov     edx, edi
                shl     edx, 0Ah
                mov     rcx, [rsi]
                sub     rcx, rdx
                mov     edx, 8
                lea     r8d, [rdx-7]
                call    ProbeForWrite
                inc     edi
                mov     [rsp+38h+var_14], edi
                jmp     short loc_1406AEAED
; ---------------------------------------------------------------------------

loc_1406AEB1E:                          ; CODE XREF: sub_1406AEAA4+57↑j
                mov     rdx, [rsi]
                lea     rax, [rdx-20h]
                mov     [rsi], rax
                test    al, 0Fh
                jnz     short loc_1406AEB32
                add     rdx, 0FFFFFFFFFFFFFFD8h
                jmp     short loc_1406AEB36
; ---------------------------------------------------------------------------

loc_1406AEB32:                          ; CODE XREF: sub_1406AEAA4+86↑j
                add     rdx, 0FFFFFFFFFFFFFFD0h

loc_1406AEB36:                          ; CODE XREF: sub_1406AEAA4+8C↑j
                mov     [rsi], rdx
                mov     [rsp+38h+var_10], ebx
                mov     rcx, [rsp+38h+arg_20]
                lea     rax, [rcx+10h]
                mov     [rdx], rax
                mov     r8d, [rsp+38h+arg_28]
                mov     rdx, r15
                call    memmove
                jmp     short loc_1406AEB5E
;   } // starts at 1406AEAE7
; ---------------------------------------------------------------------------

loc_1406AEB58:                          ; DATA XREF: .rdata:00000001400724D0↑o
;   __except(loc_1407E76BB) // owned by 1406AEAE7
                mov     ebx, eax
                mov     [rsp+38h+var_10], eax

loc_1406AEB5E:                          ; CODE XREF: sub_1406AEAA4+39↑j
                                        ; sub_1406AEAA4+B2↑j
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                mov     r14, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406AEAA4
sub_1406AEAA4   endp

byte_1406AEB7C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401027B0↑o

; =============== S U B R O U T I N E =======================================


sub_1406AEB84   proc near               ; CODE XREF: sub_1406AE7E8+E6↑p
                                        ; DATA XREF: .pdata:00000001401027BC↑o

var_18          = dword ptr -18h
var_14          = dword ptr -14h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                mov     r10d, [rcx+14h]
                mov     rbx, rcx
                and     dword ptr [rax-14h], 0
                mov     r11d, 20h ; ' '
                and     dword ptr [rax-18h], 0
                mov     rbp, r8
                and     dword ptr [rax+8], 0
                lea     r8, [rax-14h]
                mov     rdi, rdx
                mov     ecx, r10d
                mov     edx, r11d
                mov     rsi, r9
                call    sub_1405C0AA4
                test    eax, eax
                js      short loc_1406AEC49
                mov     edx, [rbx+20h]
                lea     r8, [rsp+38h+arg_0]
                mov     ecx, r10d
                call    sub_1402008C8
                test    eax, eax
                js      short loc_1406AEC49
                mov     ecx, [rsp+38h+arg_0]
                lea     r8, [rsp+38h+var_18]
                mov     edx, r11d
                call    sub_1405C0AA4
                test    eax, eax
                js      short loc_1406AEC49
                mov     ecx, [rbx+10h]
                lea     eax, [rcx+1]
                cmp     eax, r10d
                jb      short loc_1406AEC24
                mov     r8d, [rsp+38h+var_18]
                lea     r9, [rbx+18h]
                mov     edx, [rsp+38h+var_14]
                mov     rcx, [rbx+18h]
                call    sub_1406AC3F0
                test    eax, eax
                js      short loc_1406AEC49
                mov     eax, [rbx+20h]
                add     [rbx+14h], eax
                mov     ecx, [rbx+10h]

loc_1406AEC24:                          ; CODE XREF: sub_1406AEB84+7B↑j
                mov     eax, [rsp+38h+arg_20]
                shl     rcx, 5
                add     rcx, [rbx+18h]
                mov     [rcx], rdi
                mov     [rcx+8], rbp
                mov     [rcx+10h], rsi
                mov     [rcx+18h], eax
                mov     rcx, rdi
                inc     dword ptr [rbx+10h]
                call    sub_1406AEC68

loc_1406AEC49:                          ; CODE XREF: sub_1406AEB84+47↑j
                                        ; sub_1406AEB84+5B↑j ...
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AEB84   endp

byte_1406AEC5F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401027BC↑o

; =============== S U B R O U T I N E =======================================


sub_1406AEC68   proc near               ; CODE XREF: sub_1406AC998+B1↑p
                                        ; sub_1406ACAAC+A7↑p ...
                xor     eax, eax
                test    rcx, rcx
                jz      short locret_1406AEC7D
                lock add qword ptr [rcx+50h], 1
                mov     ecx, 0C00000E5h
                cmovz   eax, ecx

locret_1406AEC7D:                       ; CODE XREF: sub_1406AEC68+5↑j
                retn
sub_1406AEC68   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1406AEC7F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401027C8↑o

; =============== S U B R O U T I N E =======================================


sub_1406AEC88   proc near               ; CODE XREF: sub_1406AE7E8+BB↑p
                                        ; DATA XREF: .rdata:0000000140072518↑o ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408196FE SIZE 0000002B BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rdi, rdx
                mov     rbx, rcx
                mov     r8, [rax+0B8h]
                mov     rax, [r8+580h]
                test    rax, rax
                jnz     loc_1408196FE

loc_1406AECB8:                          ; CODE XREF: sub_1406AEC88+16AA8C↓j
                mov     dword ptr [rbx+60h], 100001h
                lea     rdx, [rbx+30h]
                mov     rcx, gs:188h
                mov     r9b, 1
                xor     r8d, r8d
                mov     [rsp+38h+var_18], 1
                call    sub_1406652B4
                mov     ecx, eax
                test    eax, eax
                js      short loc_1406AED00
                mov     rax, [rbx+128h]
                mov     [rdi+8], rax
                mov     rax, [rbx+0C8h]
                mov     [rdi], rax
                mov     eax, [rbx+74h]
                mov     [rdi+10h], eax

loc_1406AED00:                          ; CODE XREF: sub_1406AEC88+5B↑j
                                        ; sub_1406AEC88+16AA9C↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, ecx
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AEC88   endp

byte_1406AED0E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072518↑o
                                        ; .pdata:00000001401027D4↑o

; =============== S U B R O U T I N E =======================================


sub_1406AED14   proc near               ; CODE XREF: sub_1406AE7E8+6F↑p
                                        ; DATA XREF: .rdata:0000000140072568↑o ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E76EF SIZE 0000006C BYTES
; FUNCTION CHUNK AT 000000014081972A SIZE 0000016A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 60h
                mov     rdi, r8
                mov     ebx, edx
                mov     r14, rcx
                xor     esi, esi
                xor     edx, edx
                mov     r8d, 150h
                mov     rcx, rdi
                call    memset
                cmp     ebx, 18h
                jb      loc_14081972A
                cmp     dword ptr [r14], 3
                jnz     loc_14081972A
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jnz     loc_140819734

loc_1406AED76:                          ; CODE XREF: sub_1406AED14+16AA34↓j
                                        ; sub_1406AED14+16AA54↓j ...
;   __try { // __except at loc_1406AEE2B
                mov     rcx, [r14+8]
                lea     rax, [rcx+0F0h]
                mov     r8, 7FFFFFFF0000h
                cmp     rax, r8
                ja      short loc_1406AED95
                cmp     rax, rcx
                jnb     short loc_1406AEDA4

loc_1406AED95:                          ; CODE XREF: sub_1406AED14+7A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     rcx, [r14+8]

loc_1406AEDA4:                          ; CODE XREF: sub_1406AED14+7F↑j
                lea     rdx, [rdi+10h]
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rdx+30h], xmm1
                movups  xmm0, xmmword ptr [rcx+40h]
                movups  xmmword ptr [rdx+40h], xmm0
                movups  xmm1, xmmword ptr [rcx+50h]
                movups  xmmword ptr [rdx+50h], xmm1
                movups  xmm0, xmmword ptr [rcx+60h]
                movups  xmmword ptr [rdx+60h], xmm0
                mov     r9d, 80h
                lea     rax, [r9+rdx]
                movups  xmm0, xmmword ptr [rcx+70h]
                movups  xmmword ptr [rax-10h], xmm0
                add     rcx, r9
                movups  xmm1, xmmword ptr [rcx]
                movups  xmmword ptr [rax], xmm1
                movups  xmm0, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rax+10h], xmm0
                movups  xmm1, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rax+20h], xmm1
                movups  xmm0, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rax+30h], xmm0
                movups  xmm1, xmmword ptr [rcx+40h]
                movups  xmmword ptr [rax+40h], xmm1
                movups  xmm0, xmmword ptr [rcx+50h]
                movups  xmmword ptr [rax+50h], xmm0
                movups  xmm1, xmmword ptr [rcx+60h]
                movups  xmmword ptr [rax+60h], xmm1
                jmp     short loc_1406AEE32
;   } // starts at 1406AED76
; ---------------------------------------------------------------------------

loc_1406AEE2B:                          ; DATA XREF: .rdata:0000000140072544↑o
;   __except(loc_1407E76EF) // owned by 1406AED76
                mov     esi, eax
                jmp     loc_1406AEF2C
; ---------------------------------------------------------------------------

loc_1406AEE32:                          ; CODE XREF: sub_1406AED14+115↑j
                mov     rax, [r14+8]
                mov     [rdi+148h], rax
                mov     eax, [rdi+34h]
                mov     ecx, eax
                and     ecx, 0Fh
                mov     [rdi+8], ecx
                shr     eax, 4
                and     eax, 0Fh
                mov     [rdi+0Ch], eax
                cmp     ecx, 1
                jz      loc_140819785
                mov     [rsp+68h+var_40], esi
                lea     rax, dword_14000A77C
                mov     [rsp+68h+var_48], rax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0E67B5Ah
                lea     rcx, unk_140CDB440
                call    sub_140309D90
                cmp     [rdi+8], esi
                jnz     loc_14081972A

loc_1406AEE8A:                          ; CODE XREF: sub_1406AED14+16AB17↓j
                mov     edx, [rdi+48h]
                mov     r8d, 0FFFFFFFh
                and     edx, r8d
                jbe     loc_14081972A
                mov     rax, [r14+8]
                mov     ecx, [rax+28h]
                and     rcx, r8
                mov     rbx, [rdi+148h]
                sub     rbx, rcx
                mov     [rdi], rbx
                mov     eax, [rdi+3Ch]
                mov     ecx, 1000h
                cmp     eax, ecx
                cmova   ecx, eax
                mov     [rdi+144h], ecx
                mov     r9d, [rdi+4Ch]
                mov     r10d, r9d
                mov     r11d, [rdi+44h]
                mov     r14d, r11d
                and     r14d, r8d
                and     r11, r8
                and     r10d, r8d
                jnz     loc_140819837
                mov     r9, r11
                mov     r10d, r14d
                mov     ecx, edx

loc_1406AEEEB:                          ; CODE XREF: sub_1406AED14+16AB4D↓j
                mov     dword ptr [rdi+120h], 10h
                mov     [rdi+11Ch], ecx
                mov     [rdi+118h], r10d
                lea     rax, [rbx+r9]
                mov     [rdi+110h], rax
                cmp     dword ptr [rdi+8], 1
                jz      loc_140819866

loc_1406AEF17:                          ; CODE XREF: sub_1406AED14+16AB70↓j
                                        ; sub_1406AED14+16AB7B↓j
                mov     ecx, [rdi+134h]
                add     ecx, 10h
                add     ecx, [rdi+11Ch]
                mov     [rdi+140h], ecx

loc_1406AEF2C:                          ; CODE XREF: sub_1406AED14+119↑j
                                        ; sub_1406AED14+16AA1B↓j ...
                mov     eax, esi
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406AED14
sub_1406AED14   endp

byte_1406AEF46  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072568↑o
                                        ; .pdata:00000001401027E0↑o

; =============== S U B R O U T I N E =======================================


sub_1406AEF4C   proc near               ; CODE XREF: sub_1405D7FA8+EC↑p
                                        ; sub_1405D8174+D6↑p ...

var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_C8          = qword ptr -0C8h
var_C0          = byte ptr -0C0h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_40          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                sub     rsp, 108h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_18], rax
                mov     r10, [rsp+108h+arg_30]
                lea     rax, off_140008BB8
                mov     r11, [rsp+108h+arg_40]
                test    ecx, ecx
                mov     [rsp+108h+var_C8], rax
                lea     rax, [rsp+108h+var_C0]
                mov     [rsp+108h+var_D8], r11
                movups  xmm0, xmmword ptr [r10]
                movups  xmm1, xmmword ptr [r10+10h]
                movups  xmmword ptr [rax], xmm0
                movups  xmm0, xmmword ptr [r10+20h]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmm1, xmmword ptr [r10+30h]
                movups  xmmword ptr [rax+20h], xmm0
                movups  xmm0, xmmword ptr [r10+40h]
                movups  xmmword ptr [rax+30h], xmm1
                movups  xmm1, xmmword ptr [r10+50h]
                movups  xmmword ptr [rax+40h], xmm0
                movups  xmm0, xmmword ptr [r10+60h]
                movups  xmmword ptr [rax+50h], xmm1
                movups  xmm1, xmmword ptr [r10+80h]
                movups  xmmword ptr [rax+60h], xmm0
                movups  xmm0, xmmword ptr [r10+70h]
                movups  xmmword ptr [rax+70h], xmm0
                movups  xmm0, xmmword ptr [r10+90h]
                movups  xmmword ptr [rax+80h], xmm1
                movups  xmmword ptr [rax+90h], xmm0
                mov     eax, [rsp+108h+arg_28]
                mov     [rsp+108h+var_E0], eax
                mov     rax, [rsp+108h+arg_20]
                mov     rcx, [rax]
                mov     [rsp+108h+var_E8], rcx
                lea     rcx, [rsp+108h+var_C8]
                jnz     short loc_1406AF033
                call    sub_140309FA0

loc_1406AF018:                          ; CODE XREF: sub_1406AEF4C+EC↓j
                xor     eax, eax
                mov     rcx, [rsp+108h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 108h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF033:                          ; CODE XREF: sub_1406AEF4C+C5↑j
                call    sub_1402001A0
                jmp     short loc_1406AF018
; } // starts at 1406AEF4C
sub_1406AEF4C   endp

; ---------------------------------------------------------------------------
algn_1406AF03A:                         ; DATA XREF: .pdata:00000001401027EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406AF040   proc near               ; CODE XREF: sub_1406AD224+21A↑p
                                        ; DATA XREF: .rdata:0000000140072668↑o ...

var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  40h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140819894 SIZE 00000036 BYTES

                mov     [rsp-38h+arg_0], rbx
                mov     [rsp-38h+arg_18], r9
                mov     [rsp-38h+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                mov     r12d, edx
                mov     [rbp+var_20], rax
                mov     r13, rcx
                mov     [rbp+var_18], rax
                mov     r14d, eax
                mov     edi, eax
                mov     esi, eax
                cmp     edx, 10000h
                ja      loc_140819894
                mov     rax, gs:188h
                or      r15, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E6h], r15w
                lea     rbx, [rcx+0E0h]
                xor     r8d, r8d
                mov     rcx, rbx
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                lea     ecx, [r14+11h]
                xor     eax, eax
                lock cmpxchg [rbx], rcx
                jnz     loc_1406AF25B

loc_1406AF0C1:                          ; CODE XREF: sub_1406AF040+229↓j
                xor     eax, eax
                test    rdi, rdi
                jz      short loc_1406AF0CC
                or      byte ptr [rdi+1Ah], 1

loc_1406AF0CC:                          ; CODE XREF: sub_1406AF040+86↑j
                mov     edi, eax
                cmp     [r13+0BCh], eax
                jbe     short loc_1406AF10C

loc_1406AF0D7:                          ; CODE XREF: sub_1406AF040+14F↓j
                mov     ecx, [r13+0B8h]
                lea     r8, [rbp+var_18]
                mov     rax, [r13+0C8h]
                mov     edx, r12d
                imul    ecx, edi
                mov     r14, [rcx+rax]
                mov     rcx, r14
                call    sub_1406AF28C
                mov     esi, eax
                test    eax, eax
                js      loc_1406AF27B
                cmp     [rbp+var_18], 0
                jz      short loc_1406AF186

loc_1406AF10C:                          ; CODE XREF: sub_1406AF040+95↑j
                                        ; sub_1406AF040+155↓j
                mov     eax, 11h
                xor     edi, edi
                lock cmpxchg [rbx], rdi
                jnz     loc_1406AF26E

loc_1406AF11E:                          ; CODE XREF: sub_1406AF040+236↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     rcx, [rbp+var_18]
                test    rcx, rcx
                jz      short loc_1406AF19A
                mov     rdi, [rbp+var_20]

loc_1406AF141:                          ; CODE XREF: sub_1406AF040+216↓j
                mov     rax, [rbp+arg_10]
                test    rax, rax
                jz      short loc_1406AF14D
                mov     [rax], rcx

loc_1406AF14D:                          ; CODE XREF: sub_1406AF040+108↑j
                mov     r8, [rbp+arg_18]
                test    r8, r8
                jz      short loc_1406AF163
                mov     rdx, [r14]
                sub     rdx, [r14+20h]
                add     rdx, rcx
                mov     [r8], rdx

loc_1406AF163:                          ; CODE XREF: sub_1406AF040+114↑j
                                        ; sub_1406AF040+187↓j ...
                mov     rcx, rdi
                call    sub_1406AF530
                mov     rbx, [rsp+50h+arg_0]
                mov     eax, esi
                add     rsp, 50h
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

loc_1406AF186:                          ; CODE XREF: sub_1406AF040+CA↑j
                inc     edi
                cmp     edi, [r13+0BCh]
                jb      loc_1406AF0D7
                jmp     loc_1406AF10C
; ---------------------------------------------------------------------------

loc_1406AF19A:                          ; CODE XREF: sub_1406AF040+FB↑j
                lea     rdx, [rbp+var_20]
                call    sub_140720CB4
                mov     esi, eax
                test    eax, eax
                js      loc_1406AF27B
                mov     rdi, [rbp+var_20]
                lea     r8, [rbp+var_18]
                mov     rcx, rdi
                mov     edx, r12d
                call    sub_1406AF28C
                xor     r12d, r12d
                mov     esi, eax
                test    eax, eax
                js      short loc_1406AF163
                mov     rax, gs:188h
                add     [rax+1E6h], r15w
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140244C10
                lock bts qword ptr [rbx], 0
                mov     rdi, rax
                jb      loc_14081989E

loc_1406AF1F6:                          ; CODE XREF: sub_1406AF040+16A86D↓j
                test    rdi, rdi
                jz      short loc_1406AF1FF
                or      byte ptr [rdi+1Ah], 1

loc_1406AF1FF:                          ; CODE XREF: sub_1406AF040+1B9↑j
                mov     rdx, [rbp+var_20]
                lea     rcx, [r13+0B8h]
                mov     [rsp+50h+var_28], r15d
                mov     [rsp+50h+var_30], 8
                mov     r9, [rdx+20h]
                call    sub_1406AF5B0
                mov     esi, eax
                lock xadd [rbx], r15
                test    r15b, 2
                jnz     loc_1408198B2

loc_1406AF231:                          ; CODE XREF: sub_1406AF040+16A876↓j
                                        ; sub_1406AF040+16A885↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                test    esi, esi
                js      short loc_1406AF27B
                mov     r14, [rbp+var_20]
                mov     rdi, r12
                mov     rcx, [rbp+var_18]
                jmp     loc_1406AF141
; ---------------------------------------------------------------------------

loc_1406AF25B:                          ; CODE XREF: sub_1406AF040+7B↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     loc_1406AF0C1
; ---------------------------------------------------------------------------

loc_1406AF26E:                          ; CODE XREF: sub_1406AF040+D8↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     loc_1406AF11E
; ---------------------------------------------------------------------------

loc_1406AF27B:                          ; CODE XREF: sub_1406AF040+BF↑j
                                        ; sub_1406AF040+167↑j ...
                mov     rdi, [rbp+var_20]
                jmp     loc_1406AF163
sub_1406AF040   endp

; ---------------------------------------------------------------------------
byte_1406AF284  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140072668↑o
                                        ; .pdata:00000001401027F8↑o

; =============== S U B R O U T I N E =======================================


sub_1406AF28C   proc near               ; CODE XREF: sub_1406AF040+B6↑p
                                        ; sub_1406AF040+17B↑p
                                        ; DATA XREF: ...

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
                xor     eax, eax
                mov     rdi, r8
                mov     rsi, rcx
                test    edx, edx
                jz      short loc_1406AF2E7
                lea     ebp, [rdx+3Fh]
                mov     ebx, 3FFh
                shr     ebp, 6
                lea     ecx, [rax+1]
                sub     ebx, ebp
                call    sub_1402D2900
                btr     eax, 1Fh
                lea     ecx, [rbx+1]
                xor     edx, edx
                mov     r9d, ebp
                div     ecx
                mov     r8d, ebx
                mov     rcx, rsi
                mov     r14d, edx
                call    sub_1406AF328
                test    rax, rax
                jz      short loc_1406AF30D

loc_1406AF2E7:                          ; CODE XREF: sub_1406AF28C+23↑j
                                        ; sub_1406AF28C+91↓j
                test    rdi, rdi
                jz      short loc_1406AF2EF
                mov     [rdi], rax

loc_1406AF2EF:                          ; CODE XREF: sub_1406AF28C+5E↑j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF30D:                          ; CODE XREF: sub_1406AF28C+59↑j
                mov     r9d, ebp
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1406AF328
                jmp     short loc_1406AF2E7
sub_1406AF28C   endp

; ---------------------------------------------------------------------------
byte_1406AF31F  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140102804↑o

; =============== S U B R O U T I N E =======================================


sub_1406AF328   proc near               ; CODE XREF: sub_1406AF28C+51↑p
                                        ; sub_1406AF28C+8C↑p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408198CA SIZE 0000002C BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     eax, eax
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     r12d, eax
                mov     r15d, r9d
                mov     rax, gs:188h
                mov     r13d, r8d
                mov     edi, edx
                mov     rbp, rcx
                add     [rax+1E6h], r14w
                lea     rbx, [rcx+430h]
                xor     r8d, r8d
                mov     rcx, rbx
                xor     edx, edx
                call    sub_140244C10
                mov     rsi, rax
                lea     ecx, [r12+11h]
                xor     eax, eax
                lock cmpxchg [rbx], rcx
                jnz     loc_1406AF4DA

loc_1406AF392:                          ; CODE XREF: sub_1406AF328+1C0↓j
                xor     r11d, r11d
                test    rsi, rsi
                jz      short loc_1406AF39E
                or      byte ptr [rsi+1Ah], 1

loc_1406AF39E:                          ; CODE XREF: sub_1406AF328+70↑j
                lea     r10d, [r13+1]
                or      r13d, 0FFFFFFFFh

loc_1406AF3A6:                          ; CODE XREF: sub_1406AF328+1AD↓j
                cmp     edi, r10d
                jnb     short loc_1406AF3C3
                mov     eax, edi
                lea     rcx, [rbp+2Ch]
                add     rcx, rax

loc_1406AF3B4:                          ; CODE XREF: sub_1406AF328+99↓j
                cmp     [rcx], r11b
                jz      short loc_1406AF3C6
                inc     edi
                inc     rcx
                cmp     edi, r10d
                jb      short loc_1406AF3B4

loc_1406AF3C3:                          ; CODE XREF: sub_1406AF328+81↑j
                mov     edi, r13d

loc_1406AF3C6:                          ; CODE XREF: sub_1406AF328+8F↑j
                cmp     edi, r13d
                jz      short loc_1406AF3E3
                lea     r8d, [r15-1]
                mov     rcx, rbp
                lea     edx, [rdi+1]
                call    sub_1406AF500
                cmp     eax, r13d
                jnz     loc_1406AF4D2

loc_1406AF3E3:                          ; CODE XREF: sub_1406AF328+A1↑j
                mov     eax, 11h
                lock cmpxchg [rbx], r11
                jnz     loc_1406AF4ED

loc_1406AF3F3:                          ; CODE XREF: sub_1406AF328+1CD↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                cmp     edi, r13d
                jz      loc_1406AF4B1
                mov     rax, gs:188h
                add     [rax+1E6h], r14w
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140244C10
                lock bts qword ptr [rbx], 0
                mov     rsi, rax
                jb      loc_1408198CA

loc_1406AF43F:                          ; CODE XREF: sub_1406AF328+16A5B1↓j
                test    rsi, rsi
                jz      short loc_1406AF448
                or      byte ptr [rsi+1Ah], 1

loc_1406AF448:                          ; CODE XREF: sub_1406AF328+11A↑j
                mov     r8d, r15d
                mov     edx, edi
                mov     rcx, rbp
                call    sub_1406AF500
                cmp     eax, r13d
                jnz     short loc_1406AF48C
                mov     r12d, edi
                shl     r12d, 6
                add     r12, [rbp+20h]
                test    r15d, r15d
                jz      short loc_1406AF481
                mov     ecx, edi
                lea     r8d, [r15-1]
                add     rcx, 2Ch ; ','
                mov     edx, 2
                add     rcx, rbp
                call    memset

loc_1406AF481:                          ; CODE XREF: sub_1406AF328+140↑j
                lea     eax, [r15-1]
                add     eax, edi
                mov     byte ptr [rax+rbp+2Ch], 1

loc_1406AF48C:                          ; CODE XREF: sub_1406AF328+130↑j
                lock xadd [rbx], r14
                test    r14b, 2
                jnz     loc_1408198DE

loc_1406AF49B:                          ; CODE XREF: sub_1406AF328+16A5BA↓j
                                        ; sub_1406AF328+16A5C9↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770

loc_1406AF4B1:                          ; CODE XREF: sub_1406AF328+E4↑j
                mov     rbx, [rsp+48h+arg_8]
                mov     rax, r12
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AF4D2:                          ; CODE XREF: sub_1406AF328+B5↑j
                lea     edi, [rax+1]
                jmp     loc_1406AF3A6
; ---------------------------------------------------------------------------

loc_1406AF4DA:                          ; CODE XREF: sub_1406AF328+64↑j
                mov     r8, rbx
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     loc_1406AF392
; ---------------------------------------------------------------------------

loc_1406AF4ED:                          ; CODE XREF: sub_1406AF328+C5↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     loc_1406AF3F3
sub_1406AF328   endp

; ---------------------------------------------------------------------------
algn_1406AF4FA:                         ; DATA XREF: .rdata:00000001400726B4↑o
                                        ; .pdata:0000000140102810↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406AF500   proc near               ; CODE XREF: sub_1406AF328+AD↑p
                                        ; sub_1406AF328+128↑p
                                        ; DATA XREF: ...
                lea     r9d, [rdx+r8]
                cmp     edx, r9d
                jnb     short loc_1406AF521
                mov     eax, edx
                add     rcx, 2Ch ; ','
                add     rcx, rax

loc_1406AF512:                          ; CODE XREF: sub_1406AF500+1F↓j
                cmp     byte ptr [rcx], 0
                jnz     short loc_1406AF526
                inc     edx
                inc     rcx
                cmp     edx, r9d
                jb      short loc_1406AF512

loc_1406AF521:                          ; CODE XREF: sub_1406AF500+7↑j
                or      eax, 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AF526:                          ; CODE XREF: sub_1406AF500+15↑j
                mov     eax, edx
                retn
sub_1406AF500   endp

; ---------------------------------------------------------------------------
                align 2
algn_1406AF52A:                         ; DATA XREF: .pdata:000000014010281C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406AF530   proc near               ; CODE XREF: sub_1406AC660+EE↑p
                                        ; sub_1406AF040+126↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408198F6 SIZE 0000003C BYTES

                test    rcx, rcx
                jnz     short loc_1406AF537
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF537:                          ; CODE XREF: sub_1406AF530+3↑j
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, rcx
                mov     rdx, [rax+0B8h]
                cmp     [rcx+10h], rdx
                jz      loc_1408198F6
                xor     edi, edi

loc_1406AF560:                          ; CODE XREF: sub_1406AF530+16A3D5↓j
                                        ; sub_1406AF530+16A3E1↓j
                mov     rcx, [rbx+18h]
                test    rcx, rcx
                jz      short loc_1406AF573
                call    sub_1407222D8
                and     qword ptr [rbx+18h], 0

loc_1406AF573:                          ; CODE XREF: sub_1406AF530+37↑j
                and     qword ptr [rbx+20h], 0
                cmp     qword ptr [rbx], 0
                jz      short loc_1406AF58F
                test    edi, edi
                jnz     loc_140819916

loc_1406AF586:                          ; CODE XREF: sub_1406AF530+16A3FD↓j
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+8], 0

loc_1406AF58F:                          ; CODE XREF: sub_1406AF530+4C↑j
                mov     edx, 42524157h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AF530   endp

algn_1406AF5A8:                         ; DATA XREF: .rdata:00000001400726D4↑o
                                        ; .pdata:0000000140102828↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406AF5B0   proc near               ; CODE XREF: sub_1405D6324+C6↑p
                                        ; sub_1406AC998+A3↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rax, r9
                mov     rdi, rdx
                mov     r9d, [rsp+38h+arg_28]
                mov     rbx, rcx
                cmp     r9d, 0FFFFFFFFh
                jz      short loc_1406AF5E5

loc_1406AF5CE:                          ; CODE XREF: sub_1406AF5B0+57↓j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1406AF610
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF5E5:                          ; CODE XREF: sub_1406AF5B0+1C↑j
                mov     r8d, [rsp+38h+arg_20]
                lea     rcx, [rsp+38h+arg_28]
                mov     [rsp+38h+var_18], rcx
                xor     r9d, r9d
                mov     rcx, rbx
                mov     rdx, rax
                call    sub_1406AE2C8
                mov     r9d, [rsp+38h+arg_28]
                jmp     short loc_1406AF5CE
sub_1406AF5B0   endp

; ---------------------------------------------------------------------------
algn_1406AF609:                         ; DATA XREF: .pdata:0000000140102834↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406AF610   proc near               ; CODE XREF: sub_1406AF5B0+24↑p
                                        ; DATA XREF: .rdata:000000014007270C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140819932 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     r8d, [rcx+4]
                xor     edi, edi
                mov     r10d, [rcx+8]
                mov     esi, r9d
                mov     rbp, rdx
                mov     rbx, rcx
                lea     eax, [r8+1]
                cmp     eax, r10d
                jnb     short loc_1406AF69D

loc_1406AF640:                          ; CODE XREF: sub_1406AF610+BF↓j
                cmp     esi, r8d
                ja      loc_140819932
                test    r10d, r10d
                jz      loc_140819932
                mov     ecx, [rbx]
                lea     eax, [rsi+1]
                mov     r9, [rbx+10h]
                mov     edx, ecx
                sub     r8d, esi
                imul    edx, esi
                imul    r8d, ecx
                imul    ecx, eax
                add     rdx, r9
                add     rcx, r9
                call    memmove
                mov     ecx, [rbx]
                inc     dword ptr [rbx+4]
                mov     rax, [rbx+10h]
                imul    ecx, esi
                mov     [rcx+rax], rbp

loc_1406AF685:                          ; CODE XREF: sub_1406AF610+AF↓j
                                        ; sub_1406AF610+16A327↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF69D:                          ; CODE XREF: sub_1406AF610+2E↑j
                mov     edx, [rcx]
                lea     r9, [rcx+10h]
                mov     r8d, [rcx+18h]
                mov     rcx, [rcx+10h]
                add     r8d, r10d
                imul    r8d, edx
                imul    edx, r10d
                call    sub_1406AC3F0
                mov     edi, eax
                test    eax, eax
                js      short loc_1406AF685
                mov     ecx, [rbx+18h]
                add     [rbx+8], ecx
                mov     r10d, [rbx+8]
                mov     r8d, [rbx+4]
                jmp     loc_1406AF640
sub_1406AF610   endp

; ---------------------------------------------------------------------------
byte_1406AF6D4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007270C↑o
                                        ; .pdata:0000000140102840↑o

; =============== S U B R O U T I N E =======================================


sub_1406AF6DC   proc near               ; CODE XREF: sub_1406B3A1C+1B9↓p
                                        ; sub_1406D96E0+832↓p ...

var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_28          = qword ptr -28h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081993C SIZE 0000000A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_28], rax
                movzx   ebx, word ptr [rcx]
                mov     ebp, r8d
                mov     esi, edx
                mov     rdi, rcx
                test    bx, bx
                jz      loc_14081993C

loc_1406AF711:                          ; CODE XREF: sub_1406AF6DC+16A265↓j
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+60h]
                call    memset
                movups  xmm0, cs:xmmword_1400117F8
                mov     rcx, [rdi+438h]
                xor     r8d, r8d
                movups  xmm1, xmmword ptr [rdi+124h]
                movzx   eax, bx
                lea     rdx, [rsp+0A8h+var_88]
                movdqu  [rsp+0A8h+var_60], xmm0
                mov     [rsp+0A8h+var_84], 60h ; '`'
                movdqu  [rsp+0A8h+var_50], xmm1
                mov     [rsp+0A8h+var_88], 7
                mov     [rsp+0A8h+var_38], rax
                mov     [rsp+0A8h+var_40], esi
                mov     [rsp+0A8h+var_3C], ebp
                call    sub_1406AF8C4
                mov     rcx, [rsp+0A8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_18]
                add     rsp, 90h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406AF6DC
sub_1406AF6DC   endp

byte_1406AF793  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007273C↑o
                                        ; .pdata:000000014010284C↑o

; =============== S U B R O U T I N E =======================================


sub_1406AF79C   proc near               ; CODE XREF: sub_1406AFFC8+38E↓p
                                        ; sub_1406B20F4+17F↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140819946 SIZE 000000E1 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-28h], 0
                mov     rbx, rdx
                mov     dl, r8b
                mov     rsi, r9
                mov     r15b, r8b
                mov     r12, rcx
                call    sub_14060C2D8
                mov     ebp, eax
                test    eax, eax
                jnz     loc_140819978
                test    rbx, rbx
                jz      loc_140819946
                mov     ecx, [rbx+4]
                mov     r8, rsi
                mov     rdx, rbx
                call    sub_1406AF820
                mov     edi, eax

loc_1406AF7F5:                          ; CODE XREF: sub_1406AF79C+16A1BF↓j
                                        ; sub_1406AF79C+16A1D7↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+48h+arg_18]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406AF79C   endp

algn_1406AF817:                         ; DATA XREF: .rdata:000000014007276C↑o
                                        ; .pdata:0000000140102858↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406AF820   proc near               ; CODE XREF: sub_1406AF79C+52↑p
                                        ; sub_1406AF8C4+1EC↓p ...

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
                xor     ebx, ebx
                mov     r14, r8
                mov     [r8], rbx
                mov     rsi, rdx
                test    rdx, rdx
                jz      short loc_1406AF84E
                cmp     [rdx+4], ecx
                jnz     short loc_1406AF8AE

loc_1406AF84E:                          ; CODE XREF: sub_1406AF820+27↑j
                mov     ebp, ecx
                mov     r8d, 44777445h
                mov     edx, ecx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1406AF8B5
                mov     r8d, ebp
                mov     rcx, rax
                test    rsi, rsi
                jz      short loc_1406AF8A5
                mov     rdx, rsi
                call    memmove

loc_1406AF87D:                          ; CODE XREF: sub_1406AF820+8C↓j
                mov     dword ptr [rdi+8], 1
                mov     [r14], rdi

loc_1406AF887:                          ; CODE XREF: sub_1406AF820+93↓j
                                        ; sub_1406AF820+9A↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406AF8A5:                          ; CODE XREF: sub_1406AF820+53↑j
                xor     edx, edx
                call    memset
                jmp     short loc_1406AF87D
; ---------------------------------------------------------------------------

loc_1406AF8AE:                          ; CODE XREF: sub_1406AF820+2C↑j
                mov     ebx, 0C0000004h
                jmp     short loc_1406AF887
; ---------------------------------------------------------------------------

loc_1406AF8B5:                          ; CODE XREF: sub_1406AF820+48↑j
                mov     ebx, 0C0000017h
                jmp     short loc_1406AF887
sub_1406AF820   endp

; ---------------------------------------------------------------------------
byte_1406AF8BC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102864↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406AF8C4   proc near               ; CODE XREF: NtTraceControl+3B5↑p
                                        ; sub_1406AF6DC+8E↑p
                                        ; DATA XREF: ...

var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_40          = qword ptr -40h
arg_0           = qword ptr  10h
arg_8           = word ptr  18h
arg_18          = dword ptr  28h

                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0B0h
                xor     esi, esi
                mov     r15b, r8b
                mov     rdi, rdx
                mov     [rbp+57h+var_98], rsi
                mov     r14, rcx
                mov     [rbp+57h+var_A8], rsi
                mov     r13b, sil
                mov     [rbp+57h+var_B0], rsi
                lea     r8d, [rsi+58h]
                mov     [rbp+57h+var_B8], rsi
                xor     edx, edx
                mov     [rbp+57h+arg_18], esi
                lea     rcx, [rbp+57h+var_90]
                mov     [rbp+57h+var_BC], r13d
                mov     [rbp+57h+var_A0], rsi
                call    memset
                mov     r8d, [rdi+4]
                cmp     r8d, 10000h
                jbe     short loc_1406AF92F
                mov     eax, 0C0000206h
                jmp     loc_1406AFC52
; ---------------------------------------------------------------------------

loc_1406AF92F:                          ; CODE XREF: sub_1406AF8C4+5F↑j
                cmp     dword ptr [rdi], 0Bh
                mov     r12d, 4
                jnz     short loc_1406AF999
                cmp     r8d, 78h ; 'x'
                jnb     short loc_1406AF94A

loc_1406AF940:                          ; CODE XREF: sub_1406AF8C4+9B↓j
                mov     ebx, 80000005h
                jmp     loc_1406AFC47
; ---------------------------------------------------------------------------

loc_1406AF94A:                          ; CODE XREF: sub_1406AF8C4+7A↑j
                mov     ecx, [rdi+48h]
                mov     eax, 0FFFFFFF8h
                add     ecx, 7
                and     rcx, rax
                lea     rax, [r8-4Ch]
                cmp     rcx, rax
                jnb     short loc_1406AF940
                mov     eax, [rcx+rdi+48h]
                test    eax, eax
                jz      short loc_1406AF996
                lea     rbx, [rdi+4Ch]
                add     rbx, rcx
                lea     r9, [rbp+57h+var_90]
                sub     r8d, ebx
                mov     [rbp+57h+var_A0], rbx
                add     r8d, edi
                mov     rdx, rbx
                mov     ecx, eax
                call    sub_1409423AC
                test    eax, eax
                jz      short loc_1406AF996
                mov     ebx, 0C000000Dh
                jmp     loc_1406AFC47
; ---------------------------------------------------------------------------

loc_1406AF996:                          ; CODE XREF: sub_1406AF8C4+A3↑j
                                        ; sub_1406AF8C4+C6↑j
                mov     [rdi], r12d

loc_1406AF999:                          ; CODE XREF: sub_1406AF8C4+74↑j
                call    PsGetCurrentThreadProcessId
                mov     [rdi+24h], eax
                cmp     [rdi], r12d
                jnz     short loc_1406AF9EC
                cmp     dword ptr [rdi+4], 0F8h
                jnb     short loc_1406AF9B9
                mov     ebx, 0C0000023h
                jmp     loc_1406AFC47
; ---------------------------------------------------------------------------

loc_1406AF9B9:                          ; CODE XREF: sub_1406AF8C4+E9↑j
                mov     ebx, 80h
                lea     rcx, qword_140010678
                mov     edx, ebx
                call    sub_140942B80
                movups  xmm0, cs:xmmword_14000AC68
                test    eax, eax
                movzx   r13d, r13b
                lea     r12d, [rbx-7Fh]
                cmovs   r13d, r12d
                mov     [rbp+57h+var_BC], r13d
                movdqu  xmmword ptr [rdi+28h], xmm0
                jmp     short loc_1406AF9F8
; ---------------------------------------------------------------------------

loc_1406AF9EC:                          ; CODE XREF: sub_1406AF8C4+E0↑j
                mov     ebx, r12d
                mov     r12d, 1
                mov     esi, r12d

loc_1406AF9F8:                          ; CODE XREF: sub_1406AF8C4+126↑j
                mov     eax, [rdi+20h]
                lea     rdx, [rdi+28h]
                and     dword ptr [rdi+14h], 0
                mov     r8d, esi
                mov     rcx, r14
                mov     [rbp+57h+var_C0], eax
                call    sub_14060C690
                xor     esi, esi
                mov     r14, rax
                test    rax, rax
                jnz     short loc_1406AFA25
                mov     ebx, 0C0000295h
                jmp     loc_1406AFC47
; ---------------------------------------------------------------------------

loc_1406AFA25:                          ; CODE XREF: sub_1406AF8C4+155↑j
                test    r15b, r15b
                jz      short loc_1406AFA47
                cmp     dword ptr [rdi], 4
                jz      short loc_1406AFA47
                mov     rcx, [rax+48h]
                xor     r8d, r8d
                mov     edx, ebx
                call    sub_140609060
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AFC3F

loc_1406AFA47:                          ; CODE XREF: sub_1406AF8C4+164↑j
                                        ; sub_1406AF8C4+169↑j
                call    KeEnterCriticalRegion
                lea     rcx, [r14+198h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                lea     r13, [r14+38h]
                mov     [r14+1A0h], rax
                cmp     [r13+0], r13
                jnz     short loc_1406AFA7E
                mov     ebx, 0C0000296h
                jmp     loc_1406AFBF8
; ---------------------------------------------------------------------------

loc_1406AFA7E:                          ; CODE XREF: sub_1406AF8C4+1AE↑j
                cmp     [rdi+0Ch], sil
                jz      short loc_1406AFAA6
                lea     r8, [rbp+57h+var_A8]
                mov     rcx, r14
                lea     rdx, [rbp+57h+var_98]
                call    sub_140700C0C
                mov     ebx, eax
                test    eax, eax
                js      loc_1406AFBF8
                mov     rax, [rbp+57h+var_A8]
                mov     [rdi+18h], rax

loc_1406AFAA6:                          ; CODE XREF: sub_1406AF8C4+1BE↑j
                mov     ecx, [rdi+4]
                lea     r8, [rbp+57h+var_B0]
                mov     rdx, rdi
                call    sub_1406AF820
                mov     r15d, eax
                test    eax, eax
                jns     short loc_1406AFAC6

loc_1406AFABC:                          ; CODE XREF: sub_1406AF8C4+2E6↓j
                mov     ebx, 0C0000017h
                jmp     loc_1406AFBF8
; ---------------------------------------------------------------------------

loc_1406AFAC6:                          ; CODE XREF: sub_1406AF8C4+1F6↑j
                mov     rbx, [r13+0]

loc_1406AFACA:                          ; CODE XREF: sub_1406AF8C4+319↓j
                cmp     rbx, r13
                jz      loc_1406AFBE2
                movzx   eax, word ptr [rbx+62h]
                mov     rsi, [rbp+57h+var_B0]
                test    al, 2
                jz      loc_1406AFBD8
                test    al, 40h
                jnz     loc_1406AFBD8
                mov     rax, [rbp+57h+var_A0]
                test    rax, rax
                jz      short loc_1406AFB0F
                mov     r8, [rbp+57h+var_40]
                lea     r9, [rbp+57h+var_90]
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_1406B4244
                test    al, al
                jz      loc_1406AFBD8

loc_1406AFB0F:                          ; CODE XREF: sub_1406AF8C4+22E↑j
                xor     eax, eax
                cmp     [rbp+57h+var_C0], eax
                jz      short loc_1406AFB2A
                mov     rcx, [rbx+50h]
                call    PsGetProcessId
                cmp     eax, [rbp+57h+var_C0]
                jnz     loc_1406AFBD8
                xor     eax, eax

loc_1406AFB2A:                          ; CODE XREF: sub_1406AF8C4+250↑j
                cmp     byte ptr [rbp+57h+var_BC], r12b
                jnz     short loc_1406AFB47
                mov     rcx, [rbx+50h]
                call    sub_140942B98
                mov     r15d, eax
                xor     eax, eax
                test    r15d, r15d
                js      loc_1406AFBD8

loc_1406AFB47:                          ; CODE XREF: sub_1406AF8C4+26A↑j
                cmp     dword ptr [rdi], 4
                jnz     short loc_1406AFBBC
                mov     [rbp+57h+arg_8], ax
                cmp     [rdi+4Ch], r12d
                jz      short loc_1406AFBBC
                mov     rcx, [rbx+50h]
                call    PsGetProcessId
                movzx   edx, word ptr [rdi+50h]
                lea     r8, [rbp+57h+arg_8]
                mov     ecx, 7FFFh
                and     dx, cx
                mov     ecx, eax
                call    sub_1409406DC
                xor     esi, esi
                mov     r15d, eax
                test    eax, eax
                js      short loc_1406AFBDA
                mov     rsi, [rbp+57h+var_B8]
                test    rsi, rsi
                jz      short loc_1406AFB96
                mov     rcx, rsi
                call    sub_1406B2548
                xor     esi, esi
                mov     [rbp+57h+var_B8], rsi

loc_1406AFB96:                          ; CODE XREF: sub_1406AF8C4+2C2↑j
                mov     ecx, [rdi+4]
                lea     r8, [rbp+57h+var_B8]
                mov     rdx, rdi
                call    sub_1406AF820
                mov     r15d, eax
                test    eax, eax
                js      loc_1406AFABC
                mov     rsi, [rbp+57h+var_B8]
                movzx   eax, [rbp+57h+arg_8]
                mov     [rsi+50h], ax

loc_1406AFBBC:                          ; CODE XREF: sub_1406AF8C4+286↑j
                                        ; sub_1406AF8C4+290↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1406B1C18
                xor     esi, esi
                test    eax, eax
                js      short loc_1406AFBD3
                add     [rbp+57h+arg_18], r12d
                jmp     short loc_1406AFBDA
; ---------------------------------------------------------------------------

loc_1406AFBD3:                          ; CODE XREF: sub_1406AF8C4+307↑j
                mov     r15d, eax
                jmp     short loc_1406AFBDA
; ---------------------------------------------------------------------------

loc_1406AFBD8:                          ; CODE XREF: sub_1406AF8C4+219↑j
                                        ; sub_1406AF8C4+221↑j ...
                xor     esi, esi

loc_1406AFBDA:                          ; CODE XREF: sub_1406AF8C4+2B9↑j
                                        ; sub_1406AF8C4+30D↑j ...
                mov     rbx, [rbx]
                jmp     loc_1406AFACA
; ---------------------------------------------------------------------------

loc_1406AFBE2:                          ; CODE XREF: sub_1406AF8C4+209↑j
                mov     edx, [rbp+57h+arg_18]
                mov     ebx, esi
                mov     rax, [rbp+57h+var_98]
                test    edx, edx
                mov     [rdi+14h], edx
                cmovz   ebx, r15d
                mov     [rdi+18h], rax

loc_1406AFBF8:                          ; CODE XREF: sub_1406AF8C4+1B5↑j
                                        ; sub_1406AF8C4+1D4↑j ...
                xor     edx, edx
                mov     [r14+1A0h], rsi
                lea     rcx, [r14+198h]
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                mov     rcx, [rbp+57h+var_B0]
                test    rcx, rcx
                jz      short loc_1406AFC20
                call    sub_1406B2548

loc_1406AFC20:                          ; CODE XREF: sub_1406AF8C4+355↑j
                mov     rsi, [rbp+57h+var_B8]
                test    rsi, rsi
                jz      short loc_1406AFC31
                mov     rcx, rsi
                call    sub_1406B2548

loc_1406AFC31:                          ; CODE XREF: sub_1406AF8C4+363↑j
                mov     rcx, [rbp+57h+var_A8]
                test    rcx, rcx
                jz      short loc_1406AFC3F
                call    PsDereferenceSiloContext

loc_1406AFC3F:                          ; CODE XREF: sub_1406AF8C4+17D↑j
                                        ; sub_1406AF8C4+374↑j
                mov     rcx, r14
                call    sub_14060C59C

loc_1406AFC47:                          ; CODE XREF: sub_1406AF8C4+81↑j
                                        ; sub_1406AF8C4+CD↑j ...
                lea     rcx, [rbp+57h+var_90]
                call    sub_1406B0810
                mov     eax, ebx

loc_1406AFC52:                          ; CODE XREF: sub_1406AF8C4+66↑j
                mov     rbx, [rsp+0E0h+arg_0]
                add     rsp, 0B0h
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
sub_1406AF8C4   endp

byte_1406AFC6E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140102870↑o

; =============== S U B R O U T I N E =======================================


sub_1406AFC74   proc near               ; CODE XREF: sub_14069E5DC+74↑p
                                        ; DATA XREF: .rdata:00000001400727D4↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140819A28 SIZE 000000DF BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-38h], 0
                xor     edi, edi
                and     [rax-30h], rdi
                xor     bpl, bpl
                mov     rsi, rdx
                mov     r15, rcx
                test    rdx, rdx
                jz      loc_140819AFD
                cmp     r8d, 3A8h
                jnz     loc_140819AFD
                cmp     r9d, 8
                jnz     loc_140819AFD
                call    sub_1406B2570
                mov     rdi, rax
                test    rax, rax
                jz      loc_140819A28
                call    PsGetCurrentThreadProcessId
                lea     rcx, [rdi+38h]
                mov     [rdi+30h], rax
                call    SeCaptureSubjectContext
                lea     r8, [rsp+58h+arg_8]
                mov     edx, 104h
                mov     rcx, rsi
                call    sub_1402F1E60
                mov     ebx, eax
                test    eax, eax
                js      loc_140819A2F
                cmp     dword ptr [rsi+208h], 1A0h
                jnz     loc_140819A2F
                mov     ecx, [rsi+210h]
                cmp     ecx, 4
                jge     loc_140819A2F
                mov     eax, [rsi+20Ch]
                test    eax, 0FFFFFFFCh
                jnz     loc_140819A2F
                mov     r13d, 1
                test    r13b, al
                jnz     loc_1406AFF0E

loc_1406AFD3D:                          ; CODE XREF: sub_1406AFC74+29C↓j
                test    al, 2
                jnz     loc_1406AFF25

loc_1406AFD45:                          ; CODE XREF: sub_1406AFC74+2B7↓j
                lea     r14, [rsi+218h]
                cmp     ecx, r13d
                jz      loc_1406AFEF7

loc_1406AFD55:                          ; CODE XREF: sub_1406AFC74+28F↓j
                mov     r11d, 0C8h
                cmp     ecx, 2
                jz      loc_1406AFF36

loc_1406AFD64:                          ; CODE XREF: sub_1406AFC74+2D6↓j
                cmp     dword ptr [rsi+210h], 3
                jz      loc_140819A4E

loc_1406AFD71:                          ; CODE XREF: sub_1406AFC74+169DF0↓j
                mov     eax, [rsi+210h]
                mov     [rdi+84h], eax
                mov     ecx, [rsi+210h]
                test    ecx, ecx
                jnz     loc_1406AFE56
                mov     eax, [rsi+20Ch]
                test    r13b, al
                jnz     short loc_1406AFD9F
                movups  xmm0, xmmword ptr [r14]
                movdqu  xmmword ptr [rdi+18h], xmm0

loc_1406AFD9F:                          ; CODE XREF: sub_1406AFC74+120↑j
                                        ; sub_1406AFC74+231↓j ...
                mov     rax, [rdi+58h]
                lea     rcx, dword_140C44EA0
                mov     [rsi], rax
                mov     rax, [rsp+58h+arg_20]
                mov     qword ptr [rax+8], 8
                call    ExAcquireFastMutex
                mov     ecx, [rsi+210h]
                test    ecx, ecx
                jnz     loc_1406AFEAA
                mov     eax, [rsi+20Ch]
                test    r13b, al
                jnz     loc_1406AFF1B
                mov     rcx, r14
                call    sub_14030AD8C

loc_1406AFDE7:                          ; CODE XREF: sub_1406AFC74+2AC↓j
                mov     edx, eax
                lea     rax, unk_140C44DC0
                shl     rdx, 4
                add     rdx, rax
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     loc_140819AF6
                add     cs:dword_140C4C3D8, r13d
                mov     [rdi], rdx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [rdx+8], rdi

loc_1406AFE19:                          ; CODE XREF: sub_1406AFC74+27E↓j
                                        ; sub_1406AFC74+349↓j ...
                mov     bpl, r13b

loc_1406AFE1C:                          ; CODE XREF: sub_1406AFC74+169E23↓j
                lea     rcx, dword_140C44EA0
                call    KeReleaseGuardedMutex
                test    ebx, ebx
                js      loc_140819A34
                mov     [r15+20h], rdi

loc_1406AFE34:                          ; CODE XREF: sub_1406AFC74+169E8E↓j
                test    ebx, ebx
                js      loc_140819A34

loc_1406AFE3C:                          ; CODE XREF: sub_1406AFC74+169DD5↓j
                mov     rbp, [rsp+58h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406AFE56:                          ; CODE XREF: sub_1406AFC74+111↑j
                sub     ecx, r13d
                jnz     loc_1406AFF55
                mov     rcx, [r14]
                lea     r8, [rsp+58h+var_30]
                lea     rdx, [rsp+58h+var_38]
                call    sub_14076CDFC
                test    eax, eax
                js      loc_140819A2F
                mov     rdx, [rsp+58h+var_38]
                lea     r8, [rdi+18h]
                mov     ecx, r13d
                mov     rdx, [rdx+8]
                call    sub_1406CB5AC
                mov     ebx, eax
                test    eax, eax
                js      loc_140819A34
                mov     rax, [rsp+58h+var_30]
                mov     [rdi+20h], rax
                mov     [rdi+28h], bpl
                jmp     loc_1406AFD9F
; ---------------------------------------------------------------------------

loc_1406AFEAA:                          ; CODE XREF: sub_1406AFC74+156↑j
                sub     ecx, r13d
                jnz     loc_1406AFF71
                mov     rcx, [rdi+18h]
                mov     rcx, [rcx+10h]
                call    sub_1402F1EC4
                mov     eax, eax
                lea     rcx, unk_140C450E0
                shl     rax, 4
                add     rax, rcx
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_140819AF6
                add     cs:dword_140C4C3D0, r13d
                mov     [rdi], rax
                mov     [rdi+8], rcx
                mov     [rcx], rdi
                mov     [rax+8], rdi
                jmp     loc_1406AFE19
; ---------------------------------------------------------------------------

loc_1406AFEF7:                          ; CODE XREF: sub_1406AFC74+DB↑j
                mov     rax, [r14]
                add     rax, r13
                test    rax, 0FFFFFFFFFFFFFFFEh
                jnz     loc_1406AFD55
                jmp     loc_140819A2F
; ---------------------------------------------------------------------------

loc_1406AFF0E:                          ; CODE XREF: sub_1406AFC74+C3↑j
                test    ecx, ecx
                jz      loc_1406AFD3D
                jmp     loc_140819A2F
; ---------------------------------------------------------------------------

loc_1406AFF1B:                          ; CODE XREF: sub_1406AFC74+165↑j
                mov     eax, 0Dh
                jmp     loc_1406AFDE7
; ---------------------------------------------------------------------------

loc_1406AFF25:                          ; CODE XREF: sub_1406AFC74+CB↑j
                lea     eax, [rcx-2]
                cmp     eax, r13d
                jbe     loc_1406AFD45
                jmp     loc_140819A2F
; ---------------------------------------------------------------------------

loc_1406AFF36:                          ; CODE XREF: sub_1406AFC74+EA↑j
                lea     r8, [rsp+58h+arg_8]
                mov     rdx, r11
                mov     rcx, r14
                call    sub_1402F1E60
                mov     ebx, eax
                test    eax, eax
                jns     loc_1406AFD64
                jmp     loc_140819A2F
; ---------------------------------------------------------------------------

loc_1406AFF55:                          ; CODE XREF: sub_1406AFC74+1E5↑j
                sub     ecx, r13d
                jnz     loc_140819A69

loc_1406AFF5E:                          ; CODE XREF: sub_1406AFC74+169DFA↓j
                mov     eax, [rsi+20Ch]
                test    al, 2
                jnz     loc_1406AFD9F
                jmp     loc_140819A73
; ---------------------------------------------------------------------------

loc_1406AFF71:                          ; CODE XREF: sub_1406AFC74+239↑j
                sub     ecx, r13d
                jnz     loc_140819A8D
                mov     eax, [rsi+20Ch]
                test    al, 2
                jz      loc_140819AE8
                lea     eax, [rcx+0Dh]

loc_1406AFF8B:                          ; CODE XREF: sub_1406AFC74+169E7D↓j
                mov     ecx, eax
                lea     rax, unk_140C44EE0
                shl     rcx, 4
                add     rcx, rax
                mov     rax, [rcx+8]
                cmp     [rax], rcx
                jnz     loc_140819AF6
                add     cs:dword_140C4C3D4, r13d
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [rcx+8], rdi
                jmp     loc_1406AFE19
sub_1406AFC74   endp

; ---------------------------------------------------------------------------
algn_1406AFFC2:                         ; DATA XREF: .rdata:00000001400727D4↑o
                                        ; .pdata:000000014010287C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=120h

sub_1406AFFC8   proc near               ; CODE XREF: NtTraceControl+39B↑p
                                        ; sub_140788A74+193↓p
                                        ; DATA XREF: ...

var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = byte ptr -1E0h
var_1D0         = byte ptr -1D0h
var_1CF         = byte ptr -1CFh
var_1CE         = byte ptr -1CEh
var_1CD         = byte ptr -1CDh
var_1CC         = byte ptr -1CCh
var_1CB         = byte ptr -1CBh
var_1C8         = dword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = word ptr -1A8h
var_1A4         = dword ptr -1A4h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = dword ptr -190h
var_18C         = dword ptr -18Ch
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = xmmword ptr -160h
var_150         = dword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_120         = byte ptr -120h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = byte ptr -60h
var_5C          = byte ptr -5Ch
var_54          = dword ptr -54h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140819B48 SIZE 00000372 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0F0h]
                sub     rsp, 1F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+120h+var_40], rax
                mov     eax, [rdx+50h]
                xor     r13d, r13d
                and     eax, 20h
                mov     [rbp+120h+var_168], r13
                mov     [rsp+220h+var_1C8], eax
                mov     bl, r8b
                neg     eax
                mov     [rbp+120h+var_170], r13
                mov     rdi, rdx
                mov     [rbp+120h+var_18C], r13d
                sbb     al, al
                mov     [rsp+220h+var_1CC], r13b
                and     al, 2
                mov     [rsp+220h+var_1CE], r13b
                mov     r14, rcx
                mov     [rsp+220h+var_1D0], al
                xor     edx, edx
                mov     byte ptr [rbp+120h+var_190], r13b
                lea     r8d, [r13+58h]
                mov     [rsp+220h+var_1CD], r13b
                lea     rcx, [rbp+120h+var_120]
                mov     [rsp+220h+var_1CB], r13b
                mov     esi, r13d
                mov     [rsp+220h+var_1B8], r13
                mov     [rsp+220h+var_1A8], r13w
                call    memset
                xor     eax, eax
                mov     [rsp+220h+var_1C0], r13
                mov     [rbp+120h+var_150], eax
                lea     r9, [rbp+120h+var_160]
                lea     rax, [rbp+120h+var_120]
                mov     [rsp+220h+var_1B0], r13
                mov     [rsp+220h+var_1F8], rax
                xorps   xmm0, xmm0
                lea     rax, [rsp+220h+var_1B8]
                mov     r8b, bl
                mov     rdx, rdi
                mov     [rsp+220h+var_200], rax
                mov     rcx, r14
                mov     r15d, r13d
                movups  [rbp+120h+var_160], xmm0
                call    sub_1406B08A4
                xor     r9d, r9d
                mov     ebx, eax
                test    eax, eax
                js      loc_1406B0191
                mov     r8d, [rdi+74h]
                mov     r12d, [rdi+48h]
                mov     [rsp+220h+var_1A4], r12d
                lea     eax, [r8-1]
                cmp     eax, 1
                jbe     loc_1406B0787
                mov     r8d, r9d
                mov     [rbp+120h+var_54], r9d

loc_1406B00C8:                          ; CODE XREF: sub_1406AFFC8+804↓j
                or      rcx, 0FFFFFFFFFFFFFFFFh
                cmp     [rsp+220h+var_1C8], r9d
                jnz     short loc_1406B0134
                mov     rax, gs:188h
                add     [rax+1E4h], cx
                lea     rax, [rsp+220h+var_1CB]
                mov     r9d, r12d
                mov     [rsp+220h+var_1E8], rax
                lea     rdx, [rdi+28h]
                mov     dword ptr [rsp+220h+var_1F0], r8d
                lea     rax, [rbp+120h+var_60]
                movzx   r8d, word ptr [rdi+4Eh]
                mov     rcx, r14
                mov     [rsp+220h+var_1F8], rax
                mov     eax, [rdi+58h]
                mov     dword ptr [rsp+220h+var_200], eax
                call    sub_1406B0A10
                mov     ebx, eax
                call    KeLeaveCriticalRegion
                xor     r9d, r9d
                cmp     [rsp+220h+var_1CB], r9b
                jnz     short loc_1406B0191
                mov     r15, [rsp+220h+var_1C0]
                mov     r13, [rsp+220h+var_1B0]

loc_1406B0134:                          ; CODE XREF: sub_1406AFFC8+109↑j
                mov     ecx, 0FFFDh
                test    [rdi+4Eh], cx
                jz      loc_140819EAB
                call    PsGetCurrentThreadProcessId
                mov     bl, byte ptr [rbp+120h+var_150+2]
                lea     rdx, xmmword_14000AC68
                movzx   r15d, [rsp+220h+var_1D0]
                lea     r13, [rdi+28h]
                test    bl, bl
                mov     [rdi+24h], eax
                mov     r8d, r15d
                mov     rcx, r14
                cmovz   rdx, r13
                call    sub_14060C690
                xor     r9d, r9d
                mov     rsi, rax
                test    rax, rax
                jnz     loc_1406B0619
                test    bl, bl
                jnz     short loc_1406B0189
                cmp     r12d, 1
                jz      short loc_1406B019B

loc_1406B0189:                          ; CODE XREF: sub_1406AFFC8+1B9↑j
                mov     ebx, 0C0000295h
                mov     rsi, r9

loc_1406B0191:                          ; CODE XREF: sub_1406AFFC8+D6↑j
                                        ; sub_1406AFFC8+160↑j ...
                mov     r14, [rsp+220h+var_1B8]
                jmp     loc_1406B02DF
; ---------------------------------------------------------------------------

loc_1406B019B:                          ; CODE XREF: sub_1406AFFC8+1BF↑j
                mov     r8d, r15d
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1406B1774
                mov     rsi, rax
                test    rax, rax
                jz      loc_140819B48

loc_1406B01B5:                          ; CODE XREF: sub_1406AFFC8+655↓j
                                        ; sub_1406AFFC8+662↓j ...
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rcx, [rsi+198h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                xor     r9d, r9d
                mov     r14, [rsp+220h+var_1B8]
                mov     r15b, 1
                mov     [rsi+1A0h], rax
                mov     [rsp+220h+var_1CC], r15b
                test    r14, r14
                jz      short loc_1406B020B
                mov     eax, [r14+340h]
                test    al, 40h
                jnz     loc_140819B5C

loc_1406B020B:                          ; CODE XREF: sub_1406AFFC8+232↑j
                mov     r13d, [rsp+220h+var_1C8]
                test    r13d, r13d
                jnz     loc_140819B66

loc_1406B0219:                          ; CODE XREF: sub_1406AFFC8+169BB7↓j
                mov     dl, byte ptr [rbp+120h+var_150+2]
                mov     r10d, 7FFFh
                mov     [rdi+70h], r12d
                movzx   ecx, word ptr [rdi+4Eh]
                mov     [rdi+68h], cx
                mov     al, [rdi+4Ch]
                mov     [rdi+6Ah], al
                mov     eax, [rdi+58h]
                mov     [rdi+6Ch], eax
                mov     r8, [rdi+58h]
                mov     rax, r8
                test    dl, dl
                jnz     loc_140819B84

loc_1406B0249:                          ; CODE XREF: sub_1406AFFC8+169BC8↓j
                test    rax, rax
                jz      loc_1406B066B

loc_1406B0252:                          ; CODE XREF: sub_1406AFFC8+6A7↓j
                cmp     [rdi+4Ch], r9b
                jnz     short loc_1406B025C
                mov     byte ptr [rdi+4Ch], 0FFh

loc_1406B025C:                          ; CODE XREF: sub_1406AFFC8+28E↑j
                cmp     r12d, 2
                jz      short loc_1406B02A3
                test    dl, dl
                jnz     short loc_1406B02A3
                lea     rax, [rsp+220h+var_1CD]
                mov     rdx, rdi
                lea     r9, [rbp+120h+var_120]
                mov     [rsp+220h+var_200], rax
                mov     rcx, rsi
                call    sub_1406B0B1C
                xor     r9d, r9d
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406B02C5
                movups  xmm0, xmmword ptr [rsi+60h]
                movups  xmmword ptr [rdi+48h], xmm0
                movups  xmm1, xmmword ptr [rsi+70h]
                movups  xmmword ptr [rdi+58h], xmm1
                mov     eax, [rdi+50h]
                test    al, 4
                jnz     loc_140819B95

loc_1406B02A3:                          ; CODE XREF: sub_1406AFFC8+298↑j
                                        ; sub_1406AFFC8+29C↑j ...
                lea     rax, [rsi+38h]
                cmp     [rax], rax
                jnz     loc_1406B033E
                cmp     [rsi+190h], r9
                jnz     short loc_1406B02C2
                lea     rax, [rsi+10h]
                cmp     [rax], rax
                jnz     short loc_1406B033E

loc_1406B02C2:                          ; CODE XREF: sub_1406AFFC8+2EF↑j
                mov     ebx, r9d

loc_1406B02C5:                          ; CODE XREF: sub_1406AFFC8+2BE↑j
                                        ; sub_1406AFFC8+646↓j ...
                lea     rcx, [rsi+198h]
                mov     [rsi+1A0h], r9
                xor     edx, edx
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion

loc_1406B02DF:                          ; CODE XREF: sub_1406AFFC8+1CE↑j
                                        ; sub_1406AFFC8+64C↓j
                test    r14, r14
                jz      short loc_1406B02EE
                xor     edx, edx
                mov     rcx, r14
                call    sub_1406084E4

loc_1406B02EE:                          ; CODE XREF: sub_1406AFFC8+31A↑j
                mov     rcx, [rbp+120h+var_170]
                test    rcx, rcx
                jnz     loc_1406B077D

loc_1406B02FB:                          ; CODE XREF: sub_1406AFFC8+7BA↓j
                test    rsi, rsi
                jz      short loc_1406B0308
                mov     rcx, rsi
                call    sub_14060C59C

loc_1406B0308:                          ; CODE XREF: sub_1406AFFC8+336↑j
                lea     rcx, [rbp+120h+var_120]
                call    sub_1406B0810
                mov     eax, ebx
                mov     rcx, [rbp+120h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+220h+arg_10]
                add     rsp, 1F0h
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

loc_1406B033E:                          ; CODE XREF: sub_1406AFFC8+2E2↑j
                                        ; sub_1406AFFC8+2F8↑j
                cmp     [rdi+0Ch], r9b
                jnz     loc_1406B0724

loc_1406B0348:                          ; CODE XREF: sub_1406AFFC8+781↓j
                lea     r9, [rsp+220h+var_1B0]
                mov     r8b, 0FFh
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406AF79C
                xor     r9d, r9d
                test    eax, eax
                js      loc_140819BCE
                mov     r12, [rsp+220h+var_1B0]
                lea     r8, [rsp+220h+var_1C0]
                mov     rdx, r12
                lea     rax, [r12+4]
                mov     ecx, [rax]
                mov     [rbp+120h+var_138], rax
                call    sub_1406AF820
                mov     r15, [rsp+220h+var_1C0]
                xor     r9d, r9d
                test    eax, eax
                js      loc_140819C02
                mov     r12d, [rbp+120h+var_190]
                lea     rdx, [rsi+80h]
                mov     rbx, r15
                mov     cl, r9b
                mov     [rbp+120h+var_1A0], rbx

loc_1406B03A8:                          ; CODE XREF: sub_1406AFFC8+3F2↓j
                cmp     [rdx], r9d
                jnz     loc_1406B0674

loc_1406B03B1:                          ; CODE XREF: sub_1406AFFC8+6B7↓j
                inc     cl
                add     rdx, 20h ; ' '
                cmp     cl, 8
                jb      short loc_1406B03A8
                mov     [rbp+120h+var_190], r12d
                mov     r12, [rsp+220h+var_1B0]
                mov     [rsp+220h+var_1CF], r9b
                mov     [rbp+120h+var_180], r9
                cmp     [rsi+190h], r9
                jnz     short loc_1406B03E7
                lea     rax, [rsi+10h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jnz     loc_1406B0717

loc_1406B03E7:                          ; CODE XREF: sub_1406AFFC8+40D↑j
                                        ; sub_1406AFFC8+757↓j
                mov     rcx, rsi
                mov     [rbp+120h+var_178], rcx

loc_1406B03EE:                          ; CODE XREF: sub_1406AFFC8+169E61↓j
                lea     rdx, [rcx+38h]
                mov     rax, [rdx]
                mov     [rbp+120h+var_130], rdx
                mov     [rbp+120h+var_188], rax
                cmp     rax, rdx
                jz      loc_1406B057D

loc_1406B0406:                          ; CODE XREF: sub_1406AFFC8+5AB↓j
                mov     [rbp+120h+var_140], rbx
                mov     [rbp+120h+var_148], rbx
                test    r13d, r13d
                jnz     loc_140819C0C
                mov     r13, rax

loc_1406B041A:                          ; CODE XREF: sub_1406AFFC8+169C9A↓j
                mov     rax, [rax]
                lea     r8, [rbp+120h+var_160]
                mov     [rbp+120h+var_188], rax
                mov     r9, rdi
                mov     al, [rsp+220h+var_1D0]
                mov     rdx, r14
                mov     byte ptr [rsp+220h+var_1F0], al
                mov     rcx, r13
                mov     al, [rsp+220h+var_1CF]
                mov     byte ptr [rsp+220h+var_1F8], al
                lea     rax, [rbp+120h+var_120]
                mov     [rsp+220h+var_200], rax
                call    sub_1406B1AE0
                xor     r9d, r9d
                test    al, al
                jz      loc_1406B055B
                mov     [rbp+120h+var_198], r12
                cmp     byte ptr [rbp+120h+var_150+2], r9b
                jnz     loc_140819CE8
                mov     eax, [rsp+220h+var_1A4]
                cmp     eax, 2
                jz      loc_1406B050B
                mov     al, [rsp+220h+var_1CF]
                test    al, al
                jnz     loc_140819C67
                cmp     [rsp+220h+var_1C8], r9d
                jnz     loc_140819C80
                mov     bl, [r13+64h]

loc_1406B048D:                          ; CODE XREF: sub_1406AFFC8+169CAA↓j
                                        ; sub_1406AFFC8+169CB3↓j ...
                mov     r15d, [rsp+220h+var_1A4]
                mov     rdx, r14
                mov     r9b, [rsp+220h+var_1D0]
                mov     rcx, r13
                mov     r8b, [rsp+220h+var_1CD]
                mov     dword ptr [rsp+220h+var_1F8], r15d
                mov     byte ptr [rsp+220h+var_200], al
                call    sub_1406B2290
                mov     r9b, byte ptr [rbp+120h+var_190]
                lea     rax, [rsp+220h+var_1C0]
                mov     dl, [rsp+220h+var_1CD]
                mov     r8b, bl
                mov     [rsp+220h+var_1E8], rax
                mov     rcx, r13
                mov     al, [rsp+220h+var_1CF]
                mov     dword ptr [rsp+220h+var_1F0], r15d
                mov     byte ptr [rsp+220h+var_1F8], al
                mov     al, [rsp+220h+var_1D0]
                mov     byte ptr [rsp+220h+var_200], al
                call    sub_1406B20F4
                mov     r15, [rsp+220h+var_1C0]
                xor     r9d, r9d
                test    al, al
                jz      loc_140819C89
                mov     rax, [rbp+120h+var_1A0]
                test    r15, r15
                jnz     loc_1406B074E
                mov     r15, rax
                mov     [rsp+220h+var_1C0], rax

loc_1406B0507:                          ; CODE XREF: sub_1406AFFC8+7B0↓j
                mov     eax, [rsp+220h+var_1A4]

loc_1406B050B:                          ; CODE XREF: sub_1406AFFC8+4A4↑j
                dec     eax
                cmp     eax, 1
                ja      short loc_1406B053A
                movzx   ecx, word ptr [r13+62h]
                test    cl, 8
                jnz     loc_1406B0684
                test    cl, 20h
                jnz     loc_1406B0684
                test    dword ptr [r14+340h], 2000000h
                jnz     loc_1406B0684

loc_1406B053A:                          ; CODE XREF: sub_1406AFFC8+548↑j
                                        ; sub_1406AFFC8+6D7↓j ...
                mov     rdx, [rbp+120h+var_198]

loc_1406B053E:                          ; CODE XREF: sub_1406AFFC8+169DA0↓j
                mov     rcx, r13
                call    sub_1406B1C18
                mov     rbx, [rbp+120h+var_1A0]
                xor     r9d, r9d
                test    eax, eax
                js      short loc_1406B055B
                test    byte ptr [r13+62h], 2
                jz      short loc_1406B055B
                inc     [rbp+120h+var_18C]

loc_1406B055B:                          ; CODE XREF: sub_1406AFFC8+489↑j
                                        ; sub_1406AFFC8+587↑j ...
                cmp     [rsp+220h+var_1CE], r9b
                jnz     loc_140819D6D

loc_1406B0566:                          ; CODE XREF: sub_1406AFFC8+169DCF↓j
                mov     rax, [rbp+120h+var_188]
                mov     r13d, [rsp+220h+var_1C8]
                cmp     rax, [rbp+120h+var_130]
                jnz     loc_1406B0406
                mov     rcx, [rbp+120h+var_178]

loc_1406B057D:                          ; CODE XREF: sub_1406AFFC8+438↑j
                cmp     rcx, rsi
                jnz     loc_140819D9C

loc_1406B0586:                          ; CODE XREF: sub_1406AFFC8+169DF1↓j
                mov     r13, [rbp+120h+var_180]
                test    r13, r13
                jnz     loc_140819DBE
                mov     rax, [rbp+120h+var_168]
                mov     ebx, r9d
                mov     ecx, [rbp+120h+var_18C]
                mov     [rdi+18h], rax
                mov     [rdi+14h], ecx
                test    r14, r14
                jz      short loc_1406B05E0
                mov     r13d, [rsp+220h+var_1A4]
                cmp     r13d, 1
                ja      short loc_1406B05E0
                mov     rcx, cs:qword_140C19990
                lea     rax, qword_14000AC38
                lea     r12, qword_14000AC48
                cmovnz  r12, rax
                mov     rdx, r12
                call    EtwEventEnabled
                xor     r9d, r9d
                test    al, al
                jnz     loc_140819E42

loc_1406B05E0:                          ; CODE XREF: sub_1406AFFC8+5DF↑j
                                        ; sub_1406AFFC8+5EA↑j ...
                mov     r13, [rsp+220h+var_1B0]

loc_1406B05E5:                          ; CODE XREF: sub_1406AFFC8+169EDE↓j
                                        ; sub_1406AFFC8+169EED↓j
                test    r15, r15
                jz      short loc_1406B05F5
                mov     rcx, r15
                call    sub_1406B2548
                xor     r9d, r9d

loc_1406B05F5:                          ; CODE XREF: sub_1406AFFC8+620↑j
                mov     r15b, [rsp+220h+var_1CC]

loc_1406B05FA:                          ; CODE XREF: sub_1406AFFC8+169C10↓j
                test    r13, r13
                jz      short loc_1406B060A
                mov     rcx, r13
                call    sub_1406B2548
                xor     r9d, r9d

loc_1406B060A:                          ; CODE XREF: sub_1406AFFC8+635↑j
                cmp     r15b, 1
                jz      loc_1406B02C5
                jmp     loc_1406B02DF
; ---------------------------------------------------------------------------

loc_1406B0619:                          ; CODE XREF: sub_1406AFFC8+1B1↑j
                cmp     r12d, 1
                jnz     loc_1406B01B5
                movzx   eax, word ptr [rax+58h]
                test    ax, ax
                jz      loc_1406B01B5
                cmp     [rsp+220h+var_1C8], r9d
                jnz     loc_1406B01B5
                cmp     [rdi+4Eh], ax
                jz      loc_1406B01B5
                mov     rcx, cs:qword_14000AC58
                sub     rcx, [rsi+28h]
                jnz     short loc_1406B065D
                mov     rcx, cs:qword_14000AC60
                sub     rcx, [rsi+30h]

loc_1406B065D:                          ; CODE XREF: sub_1406AFFC8+688↑j
                test    rcx, rcx
                jnz     loc_1406B01B5
                jmp     loc_140819B52
; ---------------------------------------------------------------------------

loc_1406B066B:                          ; CODE XREF: sub_1406AFFC8+284↑j
                mov     [rdi+58h], rbx
                jmp     loc_1406B0252
; ---------------------------------------------------------------------------

loc_1406B0674:                          ; CODE XREF: sub_1406AFFC8+3E3↑j
                movzx   r12d, r12b
                movzx   eax, cl
                bts     r12d, eax
                jmp     loc_1406B03B1
; ---------------------------------------------------------------------------

loc_1406B0684:                          ; CODE XREF: sub_1406AFFC8+552↑j
                                        ; sub_1406AFFC8+55B↑j ...
                test    cl, 1
                jnz     loc_1406B07D1
                mov     rcx, [r13+50h]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      loc_1406B053A
                mov     rcx, [r13+50h]
                xorps   xmm0, xmm0
                movups  [rbp+120h+var_90], xmm0
                movups  [rbp+120h+var_80], xmm0
                movups  [rbp+120h+var_70], xmm0
                call    PsGetProcessServerSilo
                mov     rcx, rax
                call    PsAttachSiloToCurrentThread
                mov     rcx, [r13+50h]
                lea     rdx, [rbp+120h+var_90]
                mov     rbx, rax
                call    KeStackAttachProcess
                mov     r8, r13
                mov     dl, 1
                mov     rcx, r14
                call    sub_14070B590
                lea     rcx, [rbp+120h+var_90]
                call    KeUnstackDetachProcess
                mov     rcx, rbx
                call    PsDetachSiloFromCurrentThread
                mov     rcx, [r13+50h]
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406B053A
; ---------------------------------------------------------------------------

loc_1406B0717:                          ; CODE XREF: sub_1406AFFC8+419↑j
                add     rcx, 0FFFFFFFFFFFFFFF0h
                mov     [rbp+120h+var_180], rcx
                jmp     loc_1406B03E7
; ---------------------------------------------------------------------------

loc_1406B0724:                          ; CODE XREF: sub_1406AFFC8+37A↑j
                lea     r8, [rbp+120h+var_170]
                mov     rcx, rsi
                lea     rdx, [rbp+120h+var_168]
                call    sub_140700C0C
                xor     r9d, r9d
                mov     ebx, eax
                test    eax, eax
                js      loc_1406B02C5
                mov     rax, [rbp+120h+var_170]
                mov     [rdi+18h], rax
                jmp     loc_1406B0348
; ---------------------------------------------------------------------------

loc_1406B074E:                          ; CODE XREF: sub_1406AFFC8+531↑j
                mov     rcx, r15
                mov     [rbp+120h+var_198], rcx
                cmp     r15, rax
                jz      short loc_1406B0768
                mov     rcx, rax
                call    sub_1406B2548
                mov     rcx, r15
                xor     r9d, r9d

loc_1406B0768:                          ; CODE XREF: sub_1406AFFC8+790↑j
                cmp     rcx, [rbp+120h+var_148]
                mov     rbx, rcx
                cmovz   rbx, [rbp+120h+var_140]
                mov     [rbp+120h+var_1A0], rbx
                jmp     loc_1406B0507
; ---------------------------------------------------------------------------

loc_1406B077D:                          ; CODE XREF: sub_1406AFFC8+32D↑j
                call    PsDereferenceSiloContext
                jmp     loc_1406B02FB
; ---------------------------------------------------------------------------

loc_1406B0787:                          ; CODE XREF: sub_1406AFFC8+F0↑j
                lea     rax, [rdi+78h]
                mov     r11, r8
                lea     r10, [rbp+120h+var_5C]
                sub     r10, rax
                lea     r9, [rbp+120h+var_60]
                sub     r9, rax
                lea     rdx, [rax+8]

loc_1406B07A6:                          ; CODE XREF: sub_1406AFFC8+7FF↓j
                mov     eax, [rdx+4]
                mov     rcx, [rdx-8]
                add     rcx, rdi
                mov     [r10+rdx], eax
                mov     eax, [rdx]
                mov     [r9+rdx-8], rcx
                mov     [r9+rdx], eax
                lea     rdx, [rdx+10h]
                sub     r11, 1
                jnz     short loc_1406B07A6
                xor     r9d, r9d
                jmp     loc_1406B00C8
; ---------------------------------------------------------------------------

loc_1406B07D1:                          ; CODE XREF: sub_1406AFFC8+6BF↑j
                xorps   xmm0, xmm0
                mov     rbx, r9
                movups  [rbp+120h+var_C0], xmm0
                movups  [rbp+120h+var_B0], xmm0
                movups  [rbp+120h+var_A0], xmm0
                test    cl, 10h
                jnz     loc_140819CA3

loc_1406B07EF:                          ; CODE XREF: sub_1406AFFC8+169CFE↓j
                mov     r8, r13
                xor     edx, edx
                mov     rcx, r14
                call    sub_14070B590
                test    rbx, rbx
                jz      loc_1406B053A
                jmp     loc_140819CCE
; } // starts at 1406AFFC8
sub_1406AFFC8   endp

; ---------------------------------------------------------------------------
algn_1406B080A:                         ; DATA XREF: .rdata:0000000140072838↑o
                                        ; .pdata:0000000140102888↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B0810   proc near               ; CODE XREF: sub_1406AF8C4+387↑p
                                        ; sub_1406AFFC8+344↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, rcx
                mov     esi, 4

loc_1406B082A:                          ; CODE XREF: sub_1406B0810+2A↓j
                mov     rcx, [rdi]
                test    rcx, rcx
                jnz     short loc_1406B087A

loc_1406B0832:                          ; CODE XREF: sub_1406B0810+71↓j
                add     rdi, 8
                sub     rsi, 1
                jnz     short loc_1406B082A
                lea     rdi, [rbx+20h]
                mov     esi, 2

loc_1406B0845:                          ; CODE XREF: sub_1406B0810+45↓j
                mov     rcx, [rdi]
                test    rcx, rcx
                jnz     short loc_1406B0883

loc_1406B084D:                          ; CODE XREF: sub_1406B0810+7A↓j
                add     rdi, 8
                sub     rsi, 1
                jnz     short loc_1406B0845
                mov     rcx, [rbx+30h]
                test    rcx, rcx
                jnz     short loc_1406B088C

loc_1406B0860:                          ; CODE XREF: sub_1406B0810+81↓j
                mov     rcx, [rbx+48h]
                test    rcx, rcx
                jnz     short loc_1406B0893

loc_1406B0869:                          ; CODE XREF: sub_1406B0810+8A↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B087A:                          ; CODE XREF: sub_1406B0810+20↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406B0832
; ---------------------------------------------------------------------------

loc_1406B0883:                          ; CODE XREF: sub_1406B0810+3B↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406B084D
; ---------------------------------------------------------------------------

loc_1406B088C:                          ; CODE XREF: sub_1406B0810+4E↑j
                call    sub_140942200
                jmp     short loc_1406B0860
; ---------------------------------------------------------------------------

loc_1406B0893:                          ; CODE XREF: sub_1406B0810+57↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406B0869
sub_1406B0810   endp

; ---------------------------------------------------------------------------
byte_1406B089C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102894↑o

; =============== S U B R O U T I N E =======================================


sub_1406B08A4   proc near               ; CODE XREF: sub_1406AFFC8+CA↑p
                                        ; DATA XREF: .rdata:0000000140072878↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140819EBA SIZE 0000004D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, [rsp+38h+arg_20]
                mov     rdi, r9
                mov     r15b, r8b
                mov     rbx, rdx
                mov     rbp, rcx
                and     qword ptr [r14], 0
                cmp     dword ptr [rdx+4], 78h ; 'x'
                jb      loc_1406B0A00
                cmp     dword ptr [rdx+74h], 0
                ja      loc_1406B09EB

loc_1406B08E5:                          ; CODE XREF: sub_1406B08A4+156↓j
                cmp     dword ptr [rbx+48h], 2
                ja      loc_1406B0A00
                movzx   edx, word ptr [rbx+4Eh]
                mov     ecx, edx
                and     ecx, 8000h
                setnz   al
                mov     [rdi+12h], al
                test    ecx, ecx
                jnz     loc_140819EE9
                cmp     edx, 3
                jz      loc_1406B09E4
                mov     rcx, qword ptr cs:xmmword_14000AC68
                sub     rcx, [rbx+28h]
                jnz     short loc_1406B092A
                mov     rcx, qword ptr cs:xmmword_14000AC68+8
                sub     rcx, [rbx+30h]

loc_1406B092A:                          ; CODE XREF: sub_1406B08A4+79↑j
                test    rcx, rcx
                jz      loc_1406B0A00
                xor     r8d, r8d
                mov     rcx, rbp
                call    sub_140608410
                mov     rdx, rax
                test    rax, rax
                jz      loc_140819EDE
                cmp     rbp, cs:qword_140CFB008
                mov     [r14], rax
                jnz     loc_140819EBA

loc_1406B095A:                          ; CODE XREF: sub_1406B08A4+169623↓j
                mov     eax, [rbx+50h]
                test    al, 20h
                jnz     loc_140819ECC

loc_1406B0965:                          ; CODE XREF: sub_1406B08A4+169635↓j
                mov     eax, [rdx+340h]
                test    al, 40h
                jnz     loc_140819EDE
                movups  xmm0, xmmword ptr [rdx+124h]
                movdqu  xmmword ptr [rdi], xmm0
                mov     eax, [rdx+0Ch]
                test    al, al
                jns     short loc_1406B098C
                mov     byte ptr [rdi+10h], 1
                mov     eax, [rdx+0Ch]

loc_1406B098C:                          ; CODE XREF: sub_1406B08A4+DF↑j
                bt      eax, 18h
                jb      short loc_1406B09DE

loc_1406B0992:                          ; CODE XREF: sub_1406B08A4+13E↓j
                test    r15b, r15b
                jz      short loc_1406B09D9
                mov     rdx, rdi
                lea     rcx, [rbx+28h]
                call    sub_1406B0DD8
                mov     r8d, eax

loc_1406B09A6:                          ; CODE XREF: sub_1406B08A4+138↓j
                                        ; sub_1406B08A4+169640↓j
                mov     edx, [rbx+50h]

loc_1406B09A9:                          ; CODE XREF: sub_1406B08A4+16965E↓j
                mov     eax, edx
                mov     ecx, edx
                or      eax, 40h
                and     edx, 0FFFFFFEFh
                and     cl, 10h
                cmovz   edx, eax
                mov     eax, r8d
                mov     [rbx+50h], edx

loc_1406B09BF:                          ; CODE XREF: sub_1406B08A4+145↓j
                                        ; sub_1406B08A4+161↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B09D9:                          ; CODE XREF: sub_1406B08A4+F1↑j
                xor     r8d, r8d
                jmp     short loc_1406B09A6
; ---------------------------------------------------------------------------

loc_1406B09DE:                          ; CODE XREF: sub_1406B08A4+EC↑j
                mov     byte ptr [rdi+11h], 1
                jmp     short loc_1406B0992
; ---------------------------------------------------------------------------

loc_1406B09E4:                          ; CODE XREF: sub_1406B08A4+68↑j
                mov     eax, 0C0000022h
                jmp     short loc_1406B09BF
; ---------------------------------------------------------------------------

loc_1406B09EB:                          ; CODE XREF: sub_1406B08A4+3B↑j
                mov     rdx, [rsp+38h+arg_28]
                mov     rcx, rbx
                call    sub_1407B7BD0
                test    eax, eax
                jz      loc_1406B08E5

loc_1406B0A00:                          ; CODE XREF: sub_1406B08A4+31↑j
                                        ; sub_1406B08A4+45↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1406B09BF
sub_1406B08A4   endp

; ---------------------------------------------------------------------------
algn_1406B0A07:                         ; DATA XREF: .rdata:0000000140072878↑o
                                        ; .pdata:00000001401028A0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B0A10   proc near               ; CODE XREF: sub_1406AFFC8+14C↑p
                                        ; DATA XREF: .rdata:00000001400728A8↑o ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140819F08 SIZE 000000D1 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, [rsp+58h+arg_38]
                mov     r10d, 1
                mov     eax, r9d
                movzx   r12d, r8w
                mov     r9d, [rsp+58h+arg_20]
                mov     rdi, rdx
                mov     rbx, rcx
                mov     r11d, 0C0000225h
                lea     edx, [r10+1]
                mov     [r14], r10b
                cmp     eax, edx
                jz      loc_1406B0AF3
                xor     ecx, ecx
                cmp     eax, r10d
                jnz     short loc_1406B0AE7
                mov     bpl, r10b

loc_1406B0A6E:                          ; CODE XREF: sub_1406B0A10+DE↓j
                mov     esi, ecx
                lea     r15, off_140985EC0

loc_1406B0A77:                          ; CODE XREF: sub_1406B0A10+91↓j
                mov     r13, [r15]
                mov     rax, [rdi]
                mov     r8, [r13+0]
                sub     r8, rax
                jnz     short loc_1406B0A8E
                mov     r8, [r13+8]
                sub     r8, [rdi+8]

loc_1406B0A8E:                          ; CODE XREF: sub_1406B0A10+74↑j
                test    r8, r8
                jz      loc_140819FAF
                add     esi, r10d
                add     r15, 10h
                cmp     esi, 0Ah
                jb      short loc_1406B0A77
                mov     r8, cs:qword_14000AC78
                sub     r8, rax
                jnz     short loc_1406B0ABA
                mov     r8, cs:qword_14000AC80
                sub     r8, [rdi+8]

loc_1406B0ABA:                          ; CODE XREF: sub_1406B0A10+9D↑j
                test    r8, r8
                jz      loc_140819F51

loc_1406B0AC3:                          ; CODE XREF: sub_1406B0A10+D9↓j
                                        ; sub_1406B0A10+FF↓j ...
                mov     [r14], cl

loc_1406B0AC6:                          ; CODE XREF: sub_1406B0A10+169589↓j
                                        ; sub_1406B0A10+16959A↓j
                mov     eax, r11d

loc_1406B0AC9:                          ; CODE XREF: sub_1406B0A10+16953C↓j
                                        ; sub_1406B0A10+1695C4↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B0AE7:                          ; CODE XREF: sub_1406B0A10+59↑j
                test    eax, eax
                jnz     short loc_1406B0AC3
                mov     bpl, cl
                jmp     loc_1406B0A6E
; ---------------------------------------------------------------------------

loc_1406B0AF3:                          ; CODE XREF: sub_1406B0A10+4E↑j
                mov     r8, cs:qword_14000AD48
                sub     r8, [rdi]
                jnz     short loc_1406B0B0A
                mov     r8, cs:qword_14000AD50
                sub     r8, [rdi+8]

loc_1406B0B0A:                          ; CODE XREF: sub_1406B0A10+ED↑j
                xor     ecx, ecx
                test    r8, r8
                jnz     short loc_1406B0AC3
                jmp     loc_140819F08
sub_1406B0A10   endp

; ---------------------------------------------------------------------------
byte_1406B0B16  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400728A8↑o
                                        ; .pdata:00000001401028AC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406B0B1C   proc near               ; CODE XREF: sub_1406AFFC8+2B2↑p
                                        ; DATA XREF: .rdata:00000001400728D8↑o ...

var_30          = qword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_20          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140819FDA SIZE 0000000A BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     eax, [rdx+48h]
                xor     r13d, r13d
                mov     rdi, rdx
                mov     r12, r9
                mov     rbx, rcx
                lea     edx, [r13+1]
                cmp     eax, edx
                jnz     loc_1406B0DA8
                mov     r9b, [rdi+70h]
                xor     r9b, [rcx+5Bh]
                and     r9b, dl
                xor     [rcx+5Bh], r9b
                mov     al, [rcx+5Bh]
                mov     cl, [rdi+6Bh]
                and     al, dl
                add     cl, cl
                or      cl, al
                mov     [rbx+5Bh], cl
                movzx   eax, word ptr [rdi+68h]
                mov     [rbx+58h], ax
                mov     al, [rdi+6Ah]
                mov     [rbx+5Ah], al
                mov     [rbx+50h], r8

loc_1406B0B86:                          ; CODE XREF: sub_1406B0B1C+28E↓j
                                        ; sub_1406B0B1C+29C↓j ...
                mov     r10d, r13d
                mov     r8d, 8

loc_1406B0B8F:                          ; CODE XREF: sub_1406B0B1C+8E↓j
                mov     r9d, r10d
                lea     rax, [r9+4]
                shl     rax, 5
                cmp     [rax+rbx], r13d
                jnz     loc_1406B0CAF

loc_1406B0BA4:                          ; CODE XREF: sub_1406B0B1C+1A6↓j
                add     r10d, edx
                cmp     r10d, r8d
                jb      short loc_1406B0B8F
                cmp     [rdi+48h], r13d
                jz      loc_1406B0DC7
                mov     r10d, r13d

loc_1406B0BB9:                          ; CODE XREF: sub_1406B0B1C+258↓j
                mov     ecx, r10d
                lea     rax, [rcx+4]
                shl     rax, 5
                cmp     [rax+rbx], r13d
                jnz     loc_1406B0D6E
                movups  xmm0, xmmword ptr [rdi+48h]
                lea     rax, [rcx+4]
                mov     qword ptr [rbp+var_20], r13
                mov     sil, byte ptr [rbp+var_20+4]
                lea     r9, [rbx+84h]
                shl     rax, 5
                mov     r14, r13
                or      r11, 0FFFFFFFFFFFFFFFFh
                mov     qword ptr [rbp+var_20+8], r13
                mov     qword ptr [rbp+var_10], r13
                mov     r15d, r13d
                mov     qword ptr [rbp+var_10+8], r11
                movups  xmmword ptr [rax+rbx], xmm0
                movups  xmm1, xmmword ptr [rdi+58h]
                movups  xmmword ptr [rax+rbx+10h], xmm1

loc_1406B0C0C:                          ; CODE XREF: sub_1406B0B1C+FD↓j
                cmp     [r9-4], r13d
                jnz     short loc_1406B0C86

loc_1406B0C12:                          ; CODE XREF: sub_1406B0B1C+18E↓j
                add     r9, 20h ; ' '
                sub     r8, rdx
                jnz     short loc_1406B0C0C
                mov     rax, [rbp+arg_20]
                mov     cl, r10b
                shl     dl, cl
                mov     r8, rdi
                mov     byte ptr [rbp+var_20+4], sil
                mov     rcx, rbx
                mov     dword ptr [rbp+var_20+8], r15d
                movups  xmm0, [rbp+var_20]
                mov     [rax], dl
                mov     edx, r10d
                mov     qword ptr [rbp+var_10], r14
                movups  xmm1, [rbp+var_10]
                mov     [rsp+50h+var_30], r12
                movups  xmmword ptr [rbx+60h], xmm0
                movups  xmmword ptr [rbx+70h], xmm1
                cmp     [rdi+48h], r13d
                setz    r9b
                call    sub_1406B0E94
                mov     rcx, rbx
                call    sub_14060C784

loc_1406B0C65:                          ; CODE XREF: sub_1406B0B1C+23F↓j
                                        ; sub_1406B0B1C+24D↓j
                xor     eax, eax

loc_1406B0C67:                          ; CODE XREF: sub_1406B0B1C+2B0↓j
                                        ; sub_1406B0B1C+1694C3↓j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B0C86:                          ; CODE XREF: sub_1406B0B1C+F4↑j
                movzx   ecx, byte ptr [r9]
                cmp     sil, cl
                movzx   eax, sil
                mov     dword ptr [rbp+var_20], edx
                cmovbe  eax, ecx
                and     r11, [r9+14h]
                or      r14, [r9+0Ch]
                mov     sil, al
                or      r15d, [r9+4]
                mov     qword ptr [rbp+var_10+8], r11
                jmp     loc_1406B0C12
; ---------------------------------------------------------------------------

loc_1406B0CAF:                          ; CODE XREF: sub_1406B0B1C+82↑j
                movzx   eax, word ptr [rdi+4Eh]
                mov     rcx, r9
                shl     rcx, 5
                cmp     [rcx+rbx+86h], ax
                jnz     loc_1406B0BA4
                movups  xmm0, xmmword ptr [rdi+48h]
                lea     rax, [r9+4]
                mov     qword ptr [rbp+var_20], r13
                mov     sil, byte ptr [rbp+var_20+4]
                lea     r9, [rbx+84h]
                shl     rax, 5
                mov     r14, r13
                or      r11, 0FFFFFFFFFFFFFFFFh
                mov     qword ptr [rbp+var_20+8], r13
                mov     qword ptr [rbp+var_10], r13
                mov     r15d, r13d
                mov     qword ptr [rbp+var_10+8], r11
                movups  xmmword ptr [rax+rbx], xmm0
                movups  xmm1, xmmword ptr [rdi+58h]
                movups  xmmword ptr [rax+rbx+10h], xmm1

loc_1406B0D06:                          ; CODE XREF: sub_1406B0B1C+1F7↓j
                cmp     [r9-4], r13d
                jnz     short loc_1406B0D7F

loc_1406B0D0C:                          ; CODE XREF: sub_1406B0B1C+287↓j
                add     r9, 20h ; ' '
                sub     r8, rdx
                jnz     short loc_1406B0D06
                mov     rax, [rbp+arg_20]
                mov     cl, r10b
                shl     dl, cl
                mov     r8, rdi
                mov     byte ptr [rbp+var_20+4], sil
                mov     rcx, rbx
                mov     dword ptr [rbp+var_20+8], r15d
                movups  xmm0, [rbp+var_20]
                mov     [rax], dl
                mov     edx, r10d
                mov     qword ptr [rbp+var_10], r14
                movups  xmm1, [rbp+var_10]
                mov     [rsp+50h+var_30], r12
                movups  xmmword ptr [rbx+60h], xmm0
                movups  xmmword ptr [rbx+70h], xmm1
                cmp     [rdi+48h], r13d
                setz    r9b
                call    sub_1406B0E94
                cmp     [rdi+48h], r13d
                jnz     loc_1406B0C65
                mov     rcx, rbx
                call    sub_14060C59C
                jmp     loc_1406B0C65
; ---------------------------------------------------------------------------

loc_1406B0D6E:                          ; CODE XREF: sub_1406B0B1C+AC↑j
                add     r10d, edx
                cmp     r10d, r8d
                jb      loc_1406B0BB9
                jmp     loc_140819FDA
; ---------------------------------------------------------------------------

loc_1406B0D7F:                          ; CODE XREF: sub_1406B0B1C+1EE↑j
                movzx   ecx, byte ptr [r9]
                cmp     sil, cl
                movzx   eax, sil
                mov     dword ptr [rbp+var_20], edx
                cmovbe  eax, ecx
                and     r11, [r9+14h]
                or      r14, [r9+0Ch]
                mov     sil, al
                or      r15d, [r9+4]
                mov     qword ptr [rbp+var_10+8], r11
                jmp     loc_1406B0D0C
; ---------------------------------------------------------------------------

loc_1406B0DA8:                          ; CODE XREF: sub_1406B0B1C+34↑j
                test    eax, eax
                jnz     loc_1406B0B86
                movzx   eax, word ptr [rdi+68h]
                cmp     [rcx+58h], ax
                jnz     loc_1406B0B86
                and     byte ptr [rcx+5Bh], 0FEh
                jmp     loc_1406B0B86
; ---------------------------------------------------------------------------

loc_1406B0DC7:                          ; CODE XREF: sub_1406B0B1C+94↑j
                mov     eax, 0C0000225h
                jmp     loc_1406B0C67
sub_1406B0B1C   endp

; ---------------------------------------------------------------------------
algn_1406B0DD1:                         ; DATA XREF: .rdata:00000001400728D8↑o
                                        ; .pdata:00000001401028B8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406B0DD8   proc near               ; CODE XREF: sub_1406B08A4+FA↑p
                                        ; sub_140940D24+93↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014081A1A0 SIZE 0000001C BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                xor     r8d, r8d
                mov     edx, 80h
                mov     rbx, rcx
                call    sub_1406B0E44
                test    eax, eax
                js      short loc_1406B0E31
                xor     r8d, r8d
                mov     edx, 80h
                mov     rcx, rdi
                call    sub_1406B0E44
                mov     ecx, eax
                test    eax, eax
                js      short loc_1406B0E31
                mov     rax, [rbx]
                sub     rax, cs:qword_14000AC98
                jnz     short loc_1406B0E26
                mov     rax, [rbx+8]
                sub     rax, cs:qword_14000ACA0

loc_1406B0E26:                          ; CODE XREF: sub_1406B0DD8+41↑j
                test    rax, rax
                jz      loc_14081A1A0

loc_1406B0E2F:                          ; CODE XREF: sub_1406B0DD8+1693DF↓j
                mov     eax, ecx

loc_1406B0E31:                          ; CODE XREF: sub_1406B0DD8+1F↑j
                                        ; sub_1406B0DD8+35↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406B0DD8   endp

byte_1406B0E3D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007292C↑o
                                        ; .pdata:00000001401028C4↑o

; =============== S U B R O U T I N E =======================================


sub_1406B0E44   proc near               ; CODE XREF: sub_1406B0DD8+18↑p
                                        ; sub_1406B0DD8+2C↑p ...

arg_0           = qword ptr  8
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_18], 0
                mov     edi, edx
                lea     rdx, [rsp+28h+arg_18]
                mov     rbx, r8
                call    sub_1406298E0
                mov     rcx, [rsp+28h+arg_18]
                mov     r8, rbx
                mov     edx, edi
                call    sub_140609060
                lea     rcx, [rsp+28h+arg_18]
                mov     ebx, eax
                call    sub_140629E14
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406B0E44   endp

byte_1406B0E8C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401028D0↑o

; =============== S U B R O U T I N E =======================================


sub_1406B0E94   proc near               ; CODE XREF: sub_1406B0B1C+13C↑p
                                        ; sub_1406B0B1C+236↑p ...

var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], r8
                mov     [rax+10h], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                xor     r15d, r15d
                mov     r10d, edx
                mov     [rsp+0B8h+var_98], r15d
                mov     sil, r9b
                mov     [rsp+0B8h+arg_18], r15b
                mov     rbx, rcx
                mov     [rsp+0B8h+var_60], r15
                mov     [rsp+0B8h+var_78], r15
                mov     [rsp+0B8h+var_88], r15
                mov     [rsp+0B8h+var_90], r15
                mov     [rax-68h], r15
                mov     [rsp+0B8h+var_70], r15
                test    r8, r8
                jz      short loc_1406B0EF5
                cmp     [r8+74h], r15d
                jnz     short loc_1406B0EF8

loc_1406B0EF5:                          ; CODE XREF: sub_1406B0E94+59↑j
                mov     sil, 1

loc_1406B0EF8:                          ; CODE XREF: sub_1406B0E94+5F↑j
                mov     rbp, [rcx+180h]
                test    sil, sil
                jz      loc_1406B10F2
                test    rbp, rbp
                jz      loc_1406B1768
                imul    r14, r10, 68h ; 'h'
                mov     edi, r15d
                mov     r9b, sil
                xor     r8d, r8d
                xor     edx, edx
                xchg    edi, [r14+rbp]
                mov     rcx, [rcx+180h]
                add     rcx, r14
                call    sub_1407CE644
                mov     ecx, 80000004h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B0F54
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, r14
                xor     edx, edx
                call    sub_1409422D0

loc_1406B0F54:                          ; CODE XREF: sub_1406B0E94+AA↑j
                mov     ebp, 80000008h
                mov     eax, edi
                and     eax, ebp
                cmp     eax, ebp
                jnz     short loc_1406B0F79
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 10h
                xor     edx, edx
                add     rcx, r14
                call    sub_140942374

loc_1406B0F79:                          ; CODE XREF: sub_1406B0E94+CB↑j
                mov     r15d, 80000010h
                mov     eax, edi
                and     eax, r15d
                cmp     eax, r15d
                jnz     short loc_1406B0FA1
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 18h
                xor     edx, edx
                add     rcx, r14
                call    sub_140942374

loc_1406B0FA1:                          ; CODE XREF: sub_1406B0E94+F3↑j
                mov     r12d, 80000020h
                mov     eax, edi
                and     eax, r12d
                cmp     eax, r12d
                jnz     short loc_1406B0FC9
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 20h ; ' '
                xor     edx, edx
                add     rcx, r14
                call    sub_140942374

loc_1406B0FC9:                          ; CODE XREF: sub_1406B0E94+11B↑j
                mov     ecx, 80008000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B0FEE
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 28h ; '('
                xor     edx, edx
                add     rcx, r14
                call    sub_140942374

loc_1406B0FEE:                          ; CODE XREF: sub_1406B0E94+140↑j
                mov     ecx, 80001000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B1018
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 30h ; '0'
                xor     edx, edx
                add     rcx, r14
                call    sub_1407D1014
                mov     [rsp+0B8h+var_60], rax

loc_1406B1018:                          ; CODE XREF: sub_1406B0E94+165↑j
                mov     r13d, 80000200h
                mov     eax, edi
                and     eax, r13d
                cmp     eax, r13d
                jnz     short loc_1406B1045
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 48h ; 'H'
                xor     edx, edx
                add     rcx, r14
                call    sub_1407D1014
                mov     [rsp+0B8h+var_78], rax

loc_1406B1045:                          ; CODE XREF: sub_1406B0E94+192↑j
                mov     ecx, 80000400h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B106F
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 60h ; '`'
                xor     edx, edx
                add     rcx, r14
                call    sub_1407D1014
                mov     [rsp+0B8h+var_88], rax

loc_1406B106F:                          ; CODE XREF: sub_1406B0E94+1BC↑j
                mov     ecx, 80002000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B1099
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 38h ; '8'
                xor     edx, edx
                add     rcx, r14
                call    sub_1407D1014
                mov     [rsp+0B8h+var_90], rax

loc_1406B1099:                          ; CODE XREF: sub_1406B0E94+1E6↑j
                mov     ecx, 80004000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B10C3
                mov     rcx, [rbx+180h]
                lea     r9, [rsp+0B8h+var_68]
                add     rcx, r14
                mov     r8b, sil
                xor     edx, edx
                call    sub_140942230
                mov     [rsp+0B8h+var_98], eax

loc_1406B10C3:                          ; CODE XREF: sub_1406B0E94+210↑j
                mov     eax, 80000100h
                and     edi, eax
                cmp     edi, eax
                jnz     loc_1406B169B
                mov     rcx, [rbx+180h]
                mov     r8b, sil
                add     rcx, 50h ; 'P'
                xor     edx, edx
                add     rcx, r14
                call    sub_1407D1014
                mov     rbp, rax
                jmp     loc_1406B16A0
; ---------------------------------------------------------------------------

loc_1406B10F2:                          ; CODE XREF: sub_1406B0E94+6E↑j
                test    rbp, rbp
                jnz     short loc_1406B113C
                mov     edi, 340h
                mov     r8d, 46777445h
                mov     edx, edi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rbp, rax
                test    rax, rax
                jnz     short loc_1406B1120
                mov     eax, 0C0000017h
                jmp     loc_1406B174C
; ---------------------------------------------------------------------------

loc_1406B1120:                          ; CODE XREF: sub_1406B0E94+280↑j
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rbp
                call    memset
                mov     r10d, [rsp+0B8h+arg_8]
                mov     [rbx+180h], rbp

loc_1406B113C:                          ; CODE XREF: sub_1406B0E94+261↑j
                mov     eax, r10d
                mov     r14d, r15d
                imul    rsi, rax, 68h ; 'h'
                mov     rax, [rsp+0B8h+arg_10]
                mov     edi, r15d
                mov     ecx, r15d
                mov     r12d, 80000020h
                mov     [rsp+0B8h+var_80], ecx
                mov     r15d, 80000010h
                mov     r13d, 80000200h
                xchg    r14d, [rsi+rbp]
                mov     ebp, 80000008h
                mov     [rsp+0B8h+var_58], r14d
                cmp     [rax+74h], edi
                jbe     loc_1406B1468
                mov     r14, rax

loc_1406B1184:                          ; CODE XREF: sub_1406B0E94+5C4↓j
                add     rcx, rcx
                mov     edx, [r14+rcx*8+84h]
                mov     eax, [r14+rcx*8+80h]
                mov     rcx, [r14+rcx*8+78h]
                add     rcx, r14
                mov     [rsp+0B8h+var_48], eax
                mov     [rsp+0B8h+var_44], edx
                mov     [rsp+0B8h+var_50], rcx
                cmp     edx, r13d
                ja      loc_1406B132B
                jz      loc_1406B12F9
                cmp     edx, 80000000h
                jz      loc_1406B12C7
                cmp     edx, 80000004h
                jz      loc_1406B12A8
                cmp     edx, ebp
                jz      loc_1406B1282
                cmp     edx, r15d
                jz      short loc_1406B1258
                cmp     edx, r12d
                jz      short loc_1406B1223
                cmp     edx, 80000100h
                jnz     loc_1406B1442
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 50h ; 'P'
                add     rcx, rsi
                add     rdx, 48h ; 'H'
                call    sub_1407D1014
                mov     [rsp+0B8h+var_70], rax
                or      edi, 80000100h
                jmp     loc_1406B1442
; ---------------------------------------------------------------------------

loc_1406B1223:                          ; CODE XREF: sub_1406B0E94+34F↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 20h ; ' '
                add     rcx, rsi
                add     rdx, 10h
                call    sub_140942374
                or      edi, 80000020h

loc_1406B124B:                          ; CODE XREF: sub_1406B0E94+3EC↓j
                                        ; sub_1406B0E94+412↓j ...
                mov     r10d, [rsp+0B8h+arg_8]
                jmp     loc_1406B1442
; ---------------------------------------------------------------------------

loc_1406B1258:                          ; CODE XREF: sub_1406B0E94+34A↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 18h
                add     rcx, rsi
                add     rdx, 8
                call    sub_140942374
                or      edi, 80000010h
                jmp     short loc_1406B124B
; ---------------------------------------------------------------------------

loc_1406B1282:                          ; CODE XREF: sub_1406B0E94+341↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 10h
                add     rcx, rsi
                call    sub_140942374
                or      edi, 80000008h
                jmp     short loc_1406B124B
; ---------------------------------------------------------------------------

loc_1406B12A8:                          ; CODE XREF: sub_1406B0E94+339↑j
                mov     rcx, [rbx+180h]
                lea     rdx, [rsp+0B8h+var_50]
                add     rcx, rsi
                xor     r8d, r8d
                call    sub_1409422D0
                or      edi, 80000004h
                jmp     short loc_1406B124B
; ---------------------------------------------------------------------------

loc_1406B12C7:                          ; CODE XREF: sub_1406B0E94+32D↑j
                mov     rcx, [rbx+180h]
                lea     r8, [rsp+0B8h+var_50]
                add     rcx, rsi
                xor     r9d, r9d
                mov     edx, r10d
                call    sub_1407CE644
                mov     r10d, [rsp+0B8h+arg_8]
                mov     r8b, 1
                mov     [rsp+0B8h+arg_18], r8b
                jmp     loc_1406B144A
; ---------------------------------------------------------------------------

loc_1406B12F9:                          ; CODE XREF: sub_1406B0E94+321↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 48h ; 'H'
                add     rcx, rsi
                add     rdx, 20h ; ' '
                call    sub_1407D1014
                mov     [rsp+0B8h+var_78], rax
                or      edi, 80000200h
                jmp     loc_1406B1442
; ---------------------------------------------------------------------------

loc_1406B132B:                          ; CODE XREF: sub_1406B0E94+31B↑j
                cmp     edx, 80000400h
                jz      loc_1406B1415
                cmp     edx, 80001000h
                jz      loc_1406B13E6
                cmp     edx, 80002000h
                jz      short loc_1406B13B7
                cmp     edx, 80004000h
                jz      short loc_1406B138C
                cmp     edx, 80008000h
                jnz     loc_1406B1442
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 28h ; '('
                add     rcx, rsi
                add     rdx, 18h
                call    sub_140942374
                or      edi, 80008000h
                jmp     loc_1406B124B
; ---------------------------------------------------------------------------

loc_1406B138C:                          ; CODE XREF: sub_1406B0E94+4BD↑j
                mov     rcx, [rbx+180h]
                lea     r9, [rsp+0B8h+var_68]
                add     rcx, rsi
                lea     rdx, [rsp+0B8h+var_50]
                xor     r8d, r8d
                call    sub_140942230
                mov     [rsp+0B8h+var_98], eax
                or      edi, 80004000h
                jmp     loc_1406B124B
; ---------------------------------------------------------------------------

loc_1406B13B7:                          ; CODE XREF: sub_1406B0E94+4B5↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 38h ; '8'
                add     rcx, rsi
                add     rdx, 38h ; '8'
                call    sub_1407D1014
                mov     [rsp+0B8h+var_90], rax
                or      edi, 80002000h
                jmp     short loc_1406B1442
; ---------------------------------------------------------------------------

loc_1406B13E6:                          ; CODE XREF: sub_1406B0E94+4A9↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 30h ; '0'
                add     rcx, rsi
                add     rdx, 28h ; '('
                call    sub_1407D1014
                mov     [rsp+0B8h+var_60], rax
                or      edi, 80001000h
                jmp     short loc_1406B1442
; ---------------------------------------------------------------------------

loc_1406B1415:                          ; CODE XREF: sub_1406B0E94+49D↑j
                mov     rcx, [rbx+180h]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+arg_20]
                add     rcx, 60h ; '`'
                add     rcx, rsi
                add     rdx, 30h ; '0'
                call    sub_1407D1014
                mov     [rsp+0B8h+var_88], rax
                or      edi, 80000400h

loc_1406B1442:                          ; CODE XREF: sub_1406B0E94+357↑j
                                        ; sub_1406B0E94+38A↑j ...
                mov     r8b, [rsp+0B8h+arg_18]

loc_1406B144A:                          ; CODE XREF: sub_1406B0E94+460↑j
                mov     ecx, [rsp+0B8h+var_80]
                inc     ecx
                mov     [rsp+0B8h+var_80], ecx
                cmp     ecx, [r14+74h]
                jb      loc_1406B1184
                mov     r14d, [rsp+0B8h+var_58]
                test    r8b, r8b
                jnz     short loc_1406B147F

loc_1406B1468:                          ; CODE XREF: sub_1406B0E94+2E7↑j
                mov     rcx, [rbx+180h]
                mov     r9b, 1
                add     rcx, rsi
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1407CE644

loc_1406B147F:                          ; CODE XREF: sub_1406B0E94+5D2↑j
                mov     ecx, 80000004h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B14A9
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B14A9
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, rsi
                xor     edx, edx
                call    sub_1409422D0

loc_1406B14A9:                          ; CODE XREF: sub_1406B0E94+5F7↑j
                                        ; sub_1406B0E94+5FF↑j
                mov     eax, r14d
                and     eax, ebp
                cmp     eax, ebp
                jnz     short loc_1406B14D2
                mov     eax, edi
                and     eax, ebp
                cmp     eax, ebp
                jz      short loc_1406B14D2
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 10h
                xor     edx, edx
                add     rcx, rsi
                call    sub_140942374

loc_1406B14D2:                          ; CODE XREF: sub_1406B0E94+61C↑j
                                        ; sub_1406B0E94+624↑j
                mov     eax, r14d
                and     eax, r15d
                cmp     eax, r15d
                jnz     short loc_1406B14FF
                mov     eax, edi
                and     eax, r15d
                cmp     eax, r15d
                jz      short loc_1406B14FF
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 18h
                xor     edx, edx
                add     rcx, rsi
                call    sub_140942374

loc_1406B14FF:                          ; CODE XREF: sub_1406B0E94+647↑j
                                        ; sub_1406B0E94+651↑j
                mov     eax, r14d
                and     eax, r12d
                cmp     eax, r12d
                jnz     short loc_1406B152C
                mov     eax, edi
                and     eax, r12d
                cmp     eax, r12d
                jz      short loc_1406B152C
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 20h ; ' '
                xor     edx, edx
                add     rcx, rsi
                call    sub_140942374

loc_1406B152C:                          ; CODE XREF: sub_1406B0E94+674↑j
                                        ; sub_1406B0E94+67E↑j
                mov     ecx, 80008000h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B155A
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B155A
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 28h ; '('
                xor     edx, edx
                add     rcx, rsi
                call    sub_140942374

loc_1406B155A:                          ; CODE XREF: sub_1406B0E94+6A4↑j
                                        ; sub_1406B0E94+6AC↑j
                mov     ecx, 80001000h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B158D
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B158D
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 30h ; '0'
                xor     edx, edx
                add     rcx, rsi
                call    sub_1407D1014
                mov     [rsp+0B8h+var_60], rax

loc_1406B158D:                          ; CODE XREF: sub_1406B0E94+6D2↑j
                                        ; sub_1406B0E94+6DA↑j
                mov     eax, r14d
                and     eax, r13d
                cmp     eax, r13d
                jnz     short loc_1406B15BF
                mov     eax, edi
                and     eax, r13d
                cmp     eax, r13d
                jz      short loc_1406B15BF
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 48h ; 'H'
                xor     edx, edx
                add     rcx, rsi
                call    sub_1407D1014
                mov     [rsp+0B8h+var_78], rax

loc_1406B15BF:                          ; CODE XREF: sub_1406B0E94+702↑j
                                        ; sub_1406B0E94+70C↑j
                mov     ecx, 80000400h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B15F2
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B15F2
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 60h ; '`'
                xor     edx, edx
                add     rcx, rsi
                call    sub_1407D1014
                mov     [rsp+0B8h+var_88], rax

loc_1406B15F2:                          ; CODE XREF: sub_1406B0E94+737↑j
                                        ; sub_1406B0E94+73F↑j
                mov     ecx, 80002000h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B1625
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B1625
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 38h ; '8'
                xor     edx, edx
                add     rcx, rsi
                call    sub_1407D1014
                mov     [rsp+0B8h+var_90], rax

loc_1406B1625:                          ; CODE XREF: sub_1406B0E94+76A↑j
                                        ; sub_1406B0E94+772↑j
                mov     ecx, 80004000h
                mov     eax, r14d
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406B1658
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B1658
                mov     rcx, [rbx+180h]
                lea     r9, [rsp+0B8h+var_68]
                add     rcx, rsi
                mov     r8b, 1
                xor     edx, edx
                call    sub_140942230
                mov     [rsp+0B8h+var_98], eax

loc_1406B1658:                          ; CODE XREF: sub_1406B0E94+79D↑j
                                        ; sub_1406B0E94+7A5↑j
                mov     ecx, 80000100h
                and     r14d, ecx
                cmp     r14d, ecx
                jnz     short loc_1406B168A
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406B168A
                mov     rcx, [rbx+180h]
                mov     r8b, 1
                add     rcx, 50h ; 'P'
                xor     edx, edx
                add     rcx, rsi
                call    sub_1407D1014
                mov     rbp, rax
                jmp     short loc_1406B168F
; ---------------------------------------------------------------------------

loc_1406B168A:                          ; CODE XREF: sub_1406B0E94+7CF↑j
                                        ; sub_1406B0E94+7D7↑j
                mov     rbp, [rsp+0B8h+var_70]

loc_1406B168F:                          ; CODE XREF: sub_1406B0E94+7F4↑j
                mov     rax, [rbx+180h]
                xchg    edi, [rsi+rax]
                jmp     short loc_1406B16A0
; ---------------------------------------------------------------------------

loc_1406B169B:                          ; CODE XREF: sub_1406B0E94+238↑j
                mov     rbp, [rsp+0B8h+var_70]

loc_1406B16A0:                          ; CODE XREF: sub_1406B0E94+259↑j
                                        ; sub_1406B0E94+805↑j
                mov     r15, [rsp+0B8h+var_60]
                mov     rbx, [rsp+0B8h+var_68]
                mov     r14, [rsp+0B8h+var_78]
                mov     rsi, [rsp+0B8h+var_88]
                mov     rdi, [rsp+0B8h+var_90]
                test    r15, r15
                jnz     short loc_1406B16D7
                test    r14, r14
                jnz     short loc_1406B16D7
                test    rsi, rsi
                jnz     short loc_1406B16D7
                test    rdi, rdi
                jnz     short loc_1406B16D7
                test    rbx, rbx
                jnz     short loc_1406B16D7
                test    rbp, rbp
                jz      short loc_1406B1748

loc_1406B16D7:                          ; CODE XREF: sub_1406B0E94+828↑j
                                        ; sub_1406B0E94+82D↑j ...
                xor     edx, edx
                lea     rcx, sub_140363640
                call    KeGenericCallDpc
                test    r15, r15
                jz      short loc_1406B16F4
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_1406B16F4:                          ; CODE XREF: sub_1406B0E94+854↑j
                test    r14, r14
                jz      short loc_1406B1703
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_1406B1703:                          ; CODE XREF: sub_1406B0E94+863↑j
                test    rsi, rsi
                jz      short loc_1406B1710
                mov     rcx, rsi
                call    sub_140942200

loc_1406B1710:                          ; CODE XREF: sub_1406B0E94+872↑j
                test    rdi, rdi
                jz      short loc_1406B171D
                mov     rcx, rdi
                call    sub_140942200

loc_1406B171D:                          ; CODE XREF: sub_1406B0E94+87F↑j
                test    rbx, rbx
                jz      short loc_1406B172C
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406B172C:                          ; CODE XREF: sub_1406B0E94+88C↑j
                test    rbp, rbp
                jz      short loc_1406B1748
                or      eax, 0FFFFFFFFh
                lock xadd [rbp+0], eax
                cmp     eax, 1
                jnz     short loc_1406B1748
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag

loc_1406B1748:                          ; CODE XREF: sub_1406B0E94+841↑j
                                        ; sub_1406B0E94+89B↑j ...
                mov     eax, [rsp+0B8h+var_98]

loc_1406B174C:                          ; CODE XREF: sub_1406B0E94+287↑j
                                        ; sub_1406B0E94+8D7↓j
                mov     rbx, [rsp+0B8h+arg_0]
                add     rsp, 80h
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

loc_1406B1768:                          ; CODE XREF: sub_1406B0E94+77↑j
                mov     eax, r15d
                jmp     short loc_1406B174C
sub_1406B0E94   endp

; ---------------------------------------------------------------------------
byte_1406B176D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401028DC↑o

; =============== S U B R O U T I N E =======================================


sub_1406B1774   proc near               ; CODE XREF: sub_140609120+416↑p
                                        ; sub_14060BF10+3A9↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                movsxd  rbp, r8d
                mov     r12, rdx
                mov     rbx, rcx
                xor     esi, esi
                call    sub_1406B19F4
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1406B17CB

loc_1406B17A9:                          ; CODE XREF: sub_1406B1774+A3↓j
                xor     eax, eax

loc_1406B17AB:                          ; CODE XREF: sub_1406B1774+26D↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B17CB:                          ; CODE XREF: sub_1406B1774+33↑j
                mov     rcx, cs:qword_140CFB008
                cmp     rbx, rcx
                jz      short loc_1406B1819
                mov     r8d, ebp
                mov     rdx, r12
                call    sub_14060C690
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1406B1819
                mov     rcx, cs:qword_140CFB008
                mov     r8d, ebp
                mov     rdx, r12
                call    sub_1406B1774
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1406B1819
                mov     rax, [rdi+20h]
                mov     rcx, rdi
                dec     rax
                mov     [rdi+20h], rax
                call    sub_1406B42CC
                jmp     short loc_1406B17A9
; ---------------------------------------------------------------------------

loc_1406B1819:                          ; CODE XREF: sub_1406B1774+61↑j
                                        ; sub_1406B1774+74↑j ...
                mov     eax, [r12+8]
                lea     r14, [rbx+1D0h]
                mov     ecx, [r12+0Ch]
                mov     r15, rbp
                xor     rcx, rax
                shl     r15, 4
                mov     eax, [r12+4]
                xor     rcx, rax
                mov     eax, [r12]
                xor     rcx, rax
                and     ecx, 3Fh
                imul    rax, rcx, 38h ; '8'
                add     r14, rax
                add     r15, r14
                test    rsi, rsi
                jz      short loc_1406B18A2
                call    KeEnterCriticalRegion
                lea     rcx, [rsi+198h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                lea     rcx, [rsi+10h]
                mov     [rsi+1A0h], rax
                lea     rax, [rdi+10h]
                mov     [rdi+190h], rsi
                mov     rdx, [rcx]
                cmp     [rdx+8], rcx
                jnz     loc_1406B19E6
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rdx+8], rax
                mov     [rcx], rax

loc_1406B18A2:                          ; CODE XREF: sub_1406B1774+DF↑j
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rbp, [r14+30h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                mov     r14, [r15]

loc_1406B18C7:                          ; CODE XREF: sub_1406B1774+180↓j
                cmp     r14, r15
                jz      loc_1406B1956
                mov     rax, [r12]
                cmp     rax, [r14+28h]
                jnz     short loc_1406B18F1
                mov     rax, [r12+8]
                cmp     rax, [r14+30h]
                jnz     short loc_1406B18F1
                mov     rcx, r14
                call    sub_14060C784
                test    al, al
                jnz     short loc_1406B18F6

loc_1406B18F1:                          ; CODE XREF: sub_1406B1774+164↑j
                                        ; sub_1406B1774+16F↑j
                mov     r14, [r14]
                jmp     short loc_1406B18C7
; ---------------------------------------------------------------------------

loc_1406B18F6:                          ; CODE XREF: sub_1406B1774+17B↑j
                test    r14, r14
                jz      short loc_1406B1956
                lock xadd [rbp+0], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1406B1911
                mov     rcx, rbp
                call    ExfTryToWakePushLock

loc_1406B1911:                          ; CODE XREF: sub_1406B1774+193↑j
                mov     rcx, rbp
                call    sub_140243660
                call    KeLeaveCriticalRegion
                test    rsi, rsi
                jz      loc_1406B19C6
                lea     rax, [rdi+10h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_1406B19E6
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_1406B19E6
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                and     qword ptr [rdi+190h], 0
                jmp     short loc_1406B1999
; ---------------------------------------------------------------------------

loc_1406B1956:                          ; CODE XREF: sub_1406B1774+156↑j
                                        ; sub_1406B1774+185↑j
                mov     rax, [r15]
                cmp     [rax+8], r15
                jnz     loc_1406B19E6
                mov     [rdi], rax
                mov     r14, rdi
                mov     [rdi+8], r15
                mov     [rax+8], rdi
                mov     [r15], rdi
                xor     edi, edi
                lock xadd [rbp+0], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1406B198C
                mov     rcx, rbp
                call    ExfTryToWakePushLock

loc_1406B198C:                          ; CODE XREF: sub_1406B1774+20E↑j
                mov     rcx, rbp
                call    sub_140243660
                call    KeLeaveCriticalRegion

loc_1406B1999:                          ; CODE XREF: sub_1406B1774+1E0↑j
                test    rsi, rsi
                jz      short loc_1406B19C6
                and     qword ptr [rsi+1A0h], 0
                lea     rcx, [rsi+198h]
                xor     edx, edx
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                test    rdi, rdi
                jz      short loc_1406B19DE
                mov     rcx, rsi
                call    sub_14060C59C

loc_1406B19C6:                          ; CODE XREF: sub_1406B1774+1AD↑j
                                        ; sub_1406B1774+228↑j
                test    rdi, rdi
                jz      short loc_1406B19DE
                mov     rcx, [rdi+20h]
                dec     rcx
                mov     [rdi+20h], rcx
                mov     rcx, rdi
                call    sub_1406B42CC

loc_1406B19DE:                          ; CODE XREF: sub_1406B1774+248↑j
                                        ; sub_1406B1774+255↑j
                mov     rax, r14
                jmp     loc_1406B17AB
; ---------------------------------------------------------------------------

loc_1406B19E6:                          ; CODE XREF: sub_1406B1774+11A↑j
                                        ; sub_1406B1774+1BE↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1406B1774   endp

; ---------------------------------------------------------------------------
byte_1406B19ED  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401028E8↑o

; =============== S U B R O U T I N E =======================================


sub_1406B19F4   proc near               ; CODE XREF: sub_1406B1774+28↑p
                                        ; DATA XREF: .rdata:000000014007298C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081A1BC SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rdi, rdx
                mov     edx, 1A8h
                mov     rsi, rcx
                mov     r8d, 47777445h
                lea     ecx, [rdx+58h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_1406B1AD5
                xor     edx, edx
                mov     r8d, 1A8h
                mov     rcx, rax
                call    memset
                mov     qword ptr [rbx+20h], 1
                lea     rax, [rbx+38h]
                movups  xmm0, xmmword ptr [rdi]
                and     qword ptr [rbx+1A0h], 0
                lea     rdx, [rsp+28h+arg_10]
                mov     rcx, rdi
                mov     [rbx+188h], rsi
                movdqu  xmmword ptr [rbx+28h], xmm0
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+10h]
                mov     [rax+8], rax
                mov     [rax], rax
                and     qword ptr [rbx+198h], 0
                call    sub_1406298E0
                mov     rcx, [rsp+28h+arg_10]
                lea     rdx, [rbx+48h]
                mov     r8d, 1
                call    ObLogSecurityDescriptor
                test    eax, eax
                js      loc_14081A1BC

loc_1406B1AA4:                          ; CODE XREF: sub_1406B19F4+1687D4↓j
                lea     rcx, [rsp+28h+arg_10]
                call    sub_140629E14
                test    rbx, rbx
                jz      short loc_1406B1AC1
                mov     rax, [rbx+188h]
                lock inc dword ptr [rax+1010h]

loc_1406B1AC1:                          ; CODE XREF: sub_1406B19F4+BD↑j
                mov     rax, rbx

loc_1406B1AC4:                          ; CODE XREF: sub_1406B19F4:loc_1406B1AD5↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B1AD5:                          ; CODE XREF: sub_1406B19F4+34↑j
                jmp     short loc_1406B1AC4
sub_1406B19F4   endp

; ---------------------------------------------------------------------------
algn_1406B1AD7:                         ; DATA XREF: .rdata:000000014007298C↑o
                                        ; .pdata:00000001401028F4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B1AE0   proc near               ; CODE XREF: sub_1406AFFC8+47F↑p
                                        ; DATA XREF: .rdata:00000001400729EC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

; FUNCTION CHUNK AT 000000014081A40A SIZE 00000043 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                test    byte ptr [rcx+62h], 1
                mov     rbp, r9
                mov     esi, [r9+48h]
                mov     rbx, r8
                mov     r14, rdx
                mov     rdi, rcx
                jnz     short loc_1406B1B67

loc_1406B1B0F:                          ; CODE XREF: sub_1406B1AE0+93↓j
                cmp     esi, 2
                jz      short loc_1406B1B90
                cmp     byte ptr [r8+12h], 0
                jnz     short loc_1406B1B90

loc_1406B1B1B:                          ; CODE XREF: sub_1406B1AE0+C6↓j
                test    byte ptr [rdi+62h], 8
                jnz     short loc_1406B1B79

loc_1406B1B21:                          ; CODE XREF: sub_1406B1AE0+A9↓j
                                        ; sub_1406B1AE0+16893C↓j
                cmp     byte ptr [rbx+12h], 1
                jz      loc_14081A421
                cmp     [rsp+28h+arg_30], 2
                jz      loc_14081A430

loc_1406B1B36:                          ; CODE XREF: sub_1406B1AE0+168968↓j
                mov     r8b, [rbx+10h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406B1BB4

loc_1406B1B45:                          ; CODE XREF: sub_1406B1AE0+16894B↓j
                test    eax, eax
                jnz     short loc_1406B1B75
                mov     al, 1

loc_1406B1B4B:                          ; CODE XREF: sub_1406B1AE0+97↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B1B67:                          ; CODE XREF: sub_1406B1AE0+2D↑j
                cmp     byte ptr [r8+11h], 0
                jnz     short loc_1406B1B75
                cmp     byte ptr [r8+12h], 0
                jz      short loc_1406B1B0F

loc_1406B1B75:                          ; CODE XREF: sub_1406B1AE0+67↑j
                                        ; sub_1406B1AE0+8C↑j ...
                xor     al, al
                jmp     short loc_1406B1B4B
; ---------------------------------------------------------------------------

loc_1406B1B79:                          ; CODE XREF: sub_1406B1AE0+3F↑j
                cmp     [rsp+28h+arg_30], 2
                jz      short loc_1406B1B75
                cmp     [rsp+28h+arg_28], 0
                jnz     short loc_1406B1B75
                test    esi, esi
                jnz     short loc_1406B1B21
                jmp     loc_14081A40A
; ---------------------------------------------------------------------------

loc_1406B1B90:                          ; CODE XREF: sub_1406B1AE0+32↑j
                                        ; sub_1406B1AE0+39↑j
                mov     r8, [rsp+28h+arg_20]
                mov     rdx, rbp
                mov     r9, r8
                mov     r8, [r8+50h]
                call    sub_1406B4244
                test    al, al
                jnz     loc_1406B1B1B
                jmp     short loc_1406B1B75
sub_1406B1AE0   endp

; ---------------------------------------------------------------------------
byte_1406B1BAE  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400729EC↑o
                                        ; .pdata:0000000140102900↑o

; =============== S U B R O U T I N E =======================================


sub_1406B1BB4   proc near               ; CODE XREF: sub_1406B1AE0+60↑p
                                        ; DATA XREF: .pdata:000000014010290C↑o

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

                push    rbx
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rbx, rdx
                movups  [rsp+48h+var_28], xmm0
                movups  [rsp+48h+var_18], xmm0
                test    r8b, r8b
                jz      short loc_1406B1C0C
                test    byte ptr [rcx+62h], 1
                jnz     short loc_1406B1C0C
                mov     rdx, [rcx+50h]
                lea     r8, [rsp+48h+var_28]
                xor     ecx, ecx
                call    SeCaptureSubjectContextEx
                lea     r8, [rsp+48h+var_28]
                mov     edx, 200h
                mov     rcx, rbx
                call    sub_1406B0E44
                lea     rcx, [rsp+48h+var_28]
                mov     ebx, eax
                call    SeReleaseSubjectContext
                mov     eax, ebx

loc_1406B1C05:                          ; CODE XREF: sub_1406B1BB4+5A↓j
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406B1C0C:                          ; CODE XREF: sub_1406B1BB4+19↑j
                                        ; sub_1406B1BB4+1F↑j
                xor     eax, eax
                jmp     short loc_1406B1C05
sub_1406B1BB4   endp

; ---------------------------------------------------------------------------
byte_1406B1C10  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010290C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=40h

sub_1406B1C18   proc near               ; CODE XREF: sub_1406AF8C4+2FE↑p
                                        ; sub_1406AFFC8+579↑p ...

var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = word ptr -0E0h
var_DE          = byte ptr -0DEh
var_DD          = byte ptr -0DDh
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = byte ptr -90h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081A44E SIZE 0000015E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-10h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+40h+var_40], rax
                movzx   eax, word ptr [rcx+62h]
                xor     r12d, r12d
                xorps   xmm0, xmm0
                mov     r15, rdx
                mov     rsi, rcx
                mov     r10d, r12d
                mov     ebx, r12d
                mov     r14d, r12d
                movups  [rbp+40h+var_C0], xmm0
                movups  [rbp+40h+var_B0], xmm0
                movups  [rbp+40h+var_A0], xmm0
                movups  [rsp+140h+var_D0], xmm0
                test    al, 1
                jnz     short loc_1406B1CAE
                test    al, 2
                jz      short loc_1406B1C83
                mov     r8, rcx
                mov     rcx, [rcx+50h]
                call    sub_1406B1E10
                mov     r14d, eax

loc_1406B1C83:                          ; CODE XREF: sub_1406B1C18+5A↑j
                                        ; sub_1406B1C18+A3↓j ...
                mov     eax, r14d
                mov     rcx, [rbp+40h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+140h+arg_10]
                add     rsp, 110h
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

loc_1406B1CAE:                          ; CODE XREF: sub_1406B1C18+56↑j
                mov     rdx, [rcx+50h]
                mov     [rsp+140h+var_F8], rdx
                cmp     [rcx+58h], r12
                jz      short loc_1406B1C83
                mov     r13, 0FFFFF78000000320h
                mov     rdi, [r13+0]
                test    byte ptr [rcx+62h], 10h
                jnz     loc_14081A44E

loc_1406B1CD5:                          ; CODE XREF: sub_1406B1C18+16887A↓j
                cmp     dword ptr [r15], 3
                jnz     loc_14081A4CC
                test    byte ptr [rsi+62h], 8
                jnz     loc_1406B1D8C
                mov     r11d, [r15+48h]
                mov     rax, [rsi+58h]
                mov     r8d, [r15+74h]
                mov     [rsp+140h+var_100], rax
                mov     eax, r11d
                neg     eax
                mov     eax, r11d
                sbb     r12b, r12b
                and     r12b, [r15+4Ch]
                neg     eax
                mov     eax, r11d
                sbb     r9, r9
                and     r9, [r15+60h]
                neg     eax
                sbb     r13, r13
                xor     edx, edx
                and     r13, [r15+58h]
                test    r8d, r8d
                jnz     loc_1406B1DD9

loc_1406B1D29:                          ; CODE XREF: sub_1406B1C18+1E7↓j
                                        ; sub_1406B1C18+1688AF↓j
                mov     rdx, [rsp+140h+var_F8]
                lea     rcx, [r15+38h]
                mov     rax, [rsp+140h+var_100]
                mov     r8b, r12b
                mov     [rsp+140h+var_110], rdx
                mov     edx, r11d
                mov     [rsp+140h+var_118], r10
                mov     [rsp+140h+var_120], r9
                mov     r9, r13
                call    sub_1404079D0
                mov     r13, 0FFFFF78000000320h

loc_1406B1D5E:                          ; CODE XREF: sub_1406B1C18+1BF↓j
                                        ; sub_1406B1C18+1688BA↓j
                test    rbx, rbx
                jnz     loc_14081A4D7

loc_1406B1D67:                          ; CODE XREF: sub_1406B1C18+1688D4↓j
                mov     rbx, [r13+0]
                call    KeQueryTimeIncrement
                sub     rbx, rdi
                mov     r9d, eax
                imul    r9, rbx
                cmp     r9, 23C36D10h
                jl      loc_1406B1C83
                jmp     loc_14081A4F1
; ---------------------------------------------------------------------------

loc_1406B1D8C:                          ; CODE XREF: sub_1406B1C18+CB↑j
                mov     r11, [rsi+20h]
                mov     r9, rdx
                mov     dl, [r15+70h]
                mov     cl, [r11+5Ah]
                movzx   eax, word ptr [r11+58h]
                mov     r8d, [r11+50h]
                mov     r10d, [r11+54h]
                mov     [rsp+140h+var_E0], ax
                mov     rax, [rsi+58h]
                mov     [rsp+140h+var_DE], cl
                lea     rcx, [r11+28h]
                mov     [rsp+140h+var_DC], r8d
                lea     r8, [rsp+140h+var_E0]
                mov     [rsp+140h+var_DD], r12b
                mov     [rsp+140h+var_D8], r10d
                mov     [rsp+140h+var_D4], r12d
                call    sub_1404079D0
                jmp     short loc_1406B1D5E
; ---------------------------------------------------------------------------

loc_1406B1DD9:                          ; CODE XREF: sub_1406B1C18+10B↑j
                lea     rax, [r15+84h]

loc_1406B1DE0:                          ; CODE XREF: sub_1406B1C18+1ED↓j
                mov     ecx, [rax]
                test    ecx, ecx
                jns     loc_14081A497
                cmp     ecx, 80000000h
                jz      loc_14081A497
                inc     edx
                add     rax, 10h
                cmp     edx, r8d
                jnb     loc_1406B1D29
                jmp     short loc_1406B1DE0
; } // starts at 1406B1C18
sub_1406B1C18   endp

; ---------------------------------------------------------------------------
algn_1406B1E07:                         ; DATA XREF: .rdata:0000000140072A24↑o
                                        ; .pdata:0000000140102918↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B1E10   proc near               ; CODE XREF: sub_1406B1C18+63↑p
                                        ; DATA XREF: .rdata:0000000140072A50↑o ...

arg_0           = qword ptr  8
arg_10          = byte ptr  18h

; FUNCTION CHUNK AT 000000014081A5AC SIZE 00000035 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   r12d, word ptr [r8+62h]
                mov     eax, 100h
                xor     ebx, ebx
                mov     rsi, r8
                and     r12w, ax
                mov     rbp, rdx
                mov     r15, rcx
                mov     r13b, 1
                setnz   [rsp+58h+arg_10]
                call    sub_1406B2080
                mov     r14, rax
                test    rax, rax
                jz      loc_14081A5AC
                lea     edx, [rbx+38h]
                mov     ecx, 200h
                mov     r8d, 72777445h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14081A5AC
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rdi], xmm0
                movups  xmmword ptr [rdi+10h], xmm0
                movups  xmmword ptr [rdi+20h], xmm0
                mov     [rdi+30h], rax
                mov     [rdi+10h], rbp
                mov     [rdi+18h], rsi
                movzx   eax, word ptr [rsi+60h]
                mov     [rdi+30h], ax
                mov     dword ptr [rdi+34h], 1
                cmp     [rbp+0Ch], bl
                jnz     loc_1406B1F66
                xor     r15d, r15d

loc_1406B1EAC:                          ; CODE XREF: sub_1406B1E10+1A3↓j
                lock inc dword ptr [rbp+8]
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, [r14+10h]
                call    ExAcquirePushLockExclusiveEx
                lea     rdx, [r14+18h]
                mov     r8, [rdx]
                cmp     r8, rdx
                jnz     short loc_1406B1F46

loc_1406B1ED7:                          ; CODE XREF: sub_1406B1E10+151↓j
                                        ; sub_1406B1E10+1687C5↓j
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     loc_14081A5DA
                mov     [rdi], rdx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [rdx+8], rdi
                test    r13b, r13b
                jz      short loc_1406B1F15
                test    r12w, r12w
                jnz     loc_1406B1FBE
                mov     rcx, [r14]

loc_1406B1F04:                          ; CODE XREF: sub_1406B1E10+1B2↓j
                test    rcx, rcx
                jz      short loc_1406B1F15
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    KeSetEvent

loc_1406B1F15:                          ; CODE XREF: sub_1406B1E10+E5↑j
                                        ; sub_1406B1E10+F7↑j
                xor     edx, edx
                lea     rcx, [r14+10h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1406B1F2E:                          ; CODE XREF: sub_1406B1E10+1687A1↓j
                                        ; sub_1406B1E10+1687B4↓j
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
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

loc_1406B1F46:                          ; CODE XREF: sub_1406B1E10+C5↑j
                mov     r9b, [rsp+58h+arg_10]

loc_1406B1F4B:                          ; CODE XREF: sub_1406B1E10+1687BF↓j
                mov     rax, [r8+18h]
                mov     cl, [rax+63h]
                and     cl, r13b
                cmp     r9b, cl
                jnz     loc_14081A5C9
                mov     r13b, r15b
                jmp     loc_1406B1ED7
; ---------------------------------------------------------------------------

loc_1406B1F66:                          ; CODE XREF: sub_1406B1E10+93↑j
                mov     rbx, [rbp+18h]
                or      dword ptr [rdi+34h], 2
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     edx, 1
                mov     [rdi+20h], rbx
                mov     r9, rsi
                mov     rcx, r15
                lea     r8d, [rdx+2]
                call    PsChargeProcessWakeCounter
                xor     r15d, r15d
                mov     [rdi+28h], rax
                mov     edx, r15d
                mov     ebx, 0C0000001h

loc_1406B1F9D:                          ; CODE XREF: sub_1406B1E10+1BC↓j
                mov     ecx, edx
                xor     eax, eax
                lock cmpxchg [rsi+rcx*8+30h], rdi
                jnz     short loc_1406B1FC7
                mov     [rdi+32h], dx
                mov     ebx, r15d

loc_1406B1FB1:                          ; CODE XREF: sub_1406B1E10+1BE↓j
                test    ebx, ebx
                jns     loc_1406B1EAC
                jmp     loc_14081A5B6
; ---------------------------------------------------------------------------

loc_1406B1FBE:                          ; CODE XREF: sub_1406B1E10+EB↑j
                mov     rcx, [r14+8]
                jmp     loc_1406B1F04
; ---------------------------------------------------------------------------

loc_1406B1FC7:                          ; CODE XREF: sub_1406B1E10+198↑j
                inc     edx
                cmp     edx, 4
                jb      short loc_1406B1F9D
                jmp     short loc_1406B1FB1
sub_1406B1E10   endp

; ---------------------------------------------------------------------------
byte_1406B1FD0  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140072A50↑o
                                        ; .pdata:0000000140102924↑o

; =============== S U B R O U T I N E =======================================


sub_1406B1FD8   proc near               ; CODE XREF: NtTraceControl+623↑p
                                        ; DATA XREF: .rdata:0000000140072A74↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081A5E2 SIZE 0000000E BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [r11-10h], 0
                lea     rax, [r11+18h]
                mov     r8, cs:ExEventObjectType
                mov     sil, dl
                and     qword ptr [r11+18h], 0
                mov     edx, 2
                mov     r9b, 1
                mov     [r11-18h], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+38h+arg_10]
                mov     edi, eax
                test    eax, eax
                js      short loc_1406B2049
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                call    sub_1406B2080
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1406B206B
                test    sil, sil
                jnz     short loc_1406B2065

loc_1406B203E:                          ; CODE XREF: sub_1406B1FD8+91↓j
                xor     eax, eax
                lock cmpxchg [rcx], rbx
                jnz     short loc_1406B2072
                xor     ebx, ebx

loc_1406B2049:                          ; CODE XREF: sub_1406B1FD8+42↑j
                                        ; sub_1406B1FD8+98↓j ...
                test    rbx, rbx
                jnz     loc_14081A5E2

loc_1406B2052:                          ; CODE XREF: sub_1406B1FD8+168613↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B2065:                          ; CODE XREF: sub_1406B1FD8+64↑j
                add     rcx, 8
                jmp     short loc_1406B203E
; ---------------------------------------------------------------------------

loc_1406B206B:                          ; CODE XREF: sub_1406B1FD8+5F↑j
                mov     edi, 0C0000017h
                jmp     short loc_1406B2049
; ---------------------------------------------------------------------------

loc_1406B2072:                          ; CODE XREF: sub_1406B1FD8+6D↑j
                mov     edi, 0C0000718h
                jmp     short loc_1406B2049
sub_1406B1FD8   endp

; ---------------------------------------------------------------------------
algn_1406B2079:                         ; DATA XREF: .rdata:0000000140072A74↑o
                                        ; .pdata:0000000140102930↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B2080   proc near               ; CODE XREF: sub_1406B1E10+35↑p
                                        ; sub_1406B1FD8+54↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014081A5F0 SIZE 0000000F BYTES

                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx+590h]
                mov     rbx, rcx
                test    rax, rax
                jnz     short loc_1406B20E5
                lea     edx, [rax+28h]
                mov     ecx, 200h
                mov     r8d, 53777445h
                call    ExAllocatePoolWithTag
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1406B20EC
                and     qword ptr [rax], 0
                and     qword ptr [rax+8], 0
                and     qword ptr [rax+20h], 0
                add     rax, 18h
                mov     [rax+8], rax
                mov     [rax], rax
                and     qword ptr [rcx+10h], 0
                xor     eax, eax
                lock cmpxchg [rbx+590h], rcx
                mov     rbx, rax
                jnz     loc_14081A5F0

loc_1406B20E2:                          ; CODE XREF: sub_1406B2080+16857A↓j
                mov     rax, rcx

loc_1406B20E5:                          ; CODE XREF: sub_1406B2080+13↑j
                                        ; sub_1406B2080:loc_1406B20EC↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406B20EC:                          ; CODE XREF: sub_1406B2080+2E↑j
                jmp     short loc_1406B20E5
sub_1406B2080   endp

; ---------------------------------------------------------------------------
byte_1406B20EE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140072A90↑o
                                        ; .pdata:000000014010293C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_1406B20F4   proc near               ; CODE XREF: sub_1406AFFC8+515↑p
                                        ; sub_1409352C4+1A8↓p ...

var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = byte ptr  30h
arg_28          = byte ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 000000014081A600 SIZE 00000054 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-3Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+37h+var_18], rax
                mov     r10b, [rbp+37h+arg_20]
                xor     r15d, r15d
                mov     rdi, [rbp+37h+arg_38]
                mov     rbx, rcx
                test    r10b, r10b
                jnz     loc_14081A60B
                cmp     [rbp+37h+arg_28], r15b
                jnz     loc_14081A600
                mov     al, [rcx+64h]
                mov     cl, [rcx+66h]

loc_1406B2148:                          ; CODE XREF: sub_1406B20F4+168512↓j
                                        ; sub_1406B20F4+168528↓j
                movzx   r14d, word ptr [rbx+62h]
                and     r14w, 8
                jnz     short loc_1406B21AB
                test    r8b, dl
                jz      short loc_1406B21A3

loc_1406B2159:                          ; CODE XREF: sub_1406B20F4+B1↓j
                cmp     r9b, al
                jnz     short loc_1406B21B4
                cmp     r10b, 2
                jz      short loc_1406B21B4
                test    cl, cl
                jnz     short loc_1406B21B4
                cmp     [rbx+65h], r15b
                jnz     short loc_1406B21B4
                cmp     [rbx+67h], r15b
                jnz     short loc_1406B21B4

loc_1406B2174:                          ; CODE XREF: sub_1406B20F4+B9↓j
                                        ; sub_1406B20F4+168531↓j
                mov     [rdi], r15

loc_1406B2177:                          ; CODE XREF: sub_1406B20F4+16A↓j
                                        ; sub_1406B20F4+186↓j
                mov     al, 1

loc_1406B2179:                          ; CODE XREF: sub_1406B20F4+B5↓j
                mov     rcx, [rbp+37h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B21A3:                          ; CODE XREF: sub_1406B20F4+63↑j
                test    dl, al
                jnz     short loc_1406B2159

loc_1406B21A7:                          ; CODE XREF: sub_1406B20F4+18C↓j
                                        ; sub_1406B20F4+168540↓j
                xor     al, al
                jmp     short loc_1406B2179
; ---------------------------------------------------------------------------

loc_1406B21AB:                          ; CODE XREF: sub_1406B20F4+5E↑j
                test    al, al
                jnz     short loc_1406B2174
                jmp     loc_14081A621
; ---------------------------------------------------------------------------

loc_1406B21B4:                          ; CODE XREF: sub_1406B20F4+68↑j
                                        ; sub_1406B20F4+6E↑j ...
                xor     edx, edx
                lea     rcx, [rbp+37h+var_90]
                lea     r8d, [rdx+78h]
                call    memset
                mov     rsi, [rdi]
                mov     rcx, [rbx+20h]
                mov     dl, [rbx+64h]
                movups  xmm0, xmmword ptr [rsi]
                movups  [rbp+37h+var_90], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  [rbp+37h+var_80], xmm1
                movups  xmm0, xmmword ptr [rsi+20h]
                movups  [rbp+37h+var_70], xmm0
                movups  xmm1, xmmword ptr [rsi+30h]
                movups  [rbp+37h+var_60], xmm1
                movsd   xmm0, qword ptr [rsi+40h]
                movsd   [rbp+37h+var_50], xmm0
                mov     dword ptr [rbp+37h+var_90+8], 1
                movups  xmm0, xmmword ptr [rcx+28h]
                mov     dword ptr [rbp+37h+var_90+4], 78h ; 'x'
                movdqu  [rbp+37h+var_70+8], xmm0
                call    sub_14060C2D8
                test    eax, eax
                jnz     loc_14081A639

loc_1406B221A:                          ; CODE XREF: sub_1406B20F4+16854D↓j
                lea     rdx, [rbp+37h+var_48]
                mov     rcx, rbx
                call    sub_140607870
                test    r14w, r14w
                jnz     loc_14081A646

loc_1406B2230:                          ; CODE XREF: sub_1406B20F4+16855B↓j
                test    rsi, rsi
                jz      short loc_1406B2264
                mov     eax, dword ptr [rbp+37h+var_90+4]
                cmp     [rsi+4], eax
                jnz     short loc_1406B2255
                mov     r8d, 78h ; 'x'
                lea     rdx, [rbp+37h+var_90]
                mov     rcx, rsi
                call    RtlCompareMemory
                cmp     rax, 78h ; 'x'
                jz      short loc_1406B2285

loc_1406B2255:                          ; CODE XREF: sub_1406B20F4+147↑j
                mov     [rdi], r15
                mov     rax, r15

loc_1406B225B:                          ; CODE XREF: sub_1406B20F4+194↓j
                test    rax, rax
                jnz     loc_1406B2177

loc_1406B2264:                          ; CODE XREF: sub_1406B20F4+13F↑j
                mov     r8b, [rbx+64h]
                lea     rdx, [rbp+37h+var_90]
                mov     rcx, [rbx+20h]
                mov     r9, rdi
                call    sub_1406AF79C
                test    eax, eax
                jns     loc_1406B2177
                jmp     loc_1406B21A7
; ---------------------------------------------------------------------------

loc_1406B2285:                          ; CODE XREF: sub_1406B20F4+15F↑j
                mov     rax, [rdi]
                jmp     short loc_1406B225B
; } // starts at 1406B20F4
sub_1406B20F4   endp

; ---------------------------------------------------------------------------
algn_1406B228A:                         ; DATA XREF: .rdata:0000000140072AC8↑o
                                        ; .pdata:0000000140102948↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B2290   proc near               ; CODE XREF: sub_1406AFFC8+4E3↑p
                                        ; sub_1409355AC+1A6↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 000000014081A654 SIZE 0000003E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     r10b, r9b
                test    r9b, r9b
                mov     r9b, [rsp+38h+arg_20]
                mov     dil, r8b
                mov     al, r9b
                mov     rbp, rdx
                mov     rsi, rcx
                jnz     loc_14081A654
                neg     al
                sbb     rbx, rbx
                and     ebx, 2
                add     rbx, 64h ; 'd'

loc_1406B22CD:                          ; CODE XREF: sub_1406B2290+1683D0↓j
                mov     eax, [rsp+38h+arg_28]
                cmp     eax, 1
                jnz     short loc_1406B2334
                lea     rax, [rsp+38h+arg_18]
                mov     [rsp+38h+arg_18], dil
                mov     r8b, r10b
                mov     [rsp+38h+var_18], rax
                mov     dl, 1
                call    sub_14060BAC0
                movzx   eax, word ptr [rsi+62h]
                test    al, 8
                jnz     short loc_1406B232B
                mov     ecx, 400h
                test    cx, ax
                jnz     loc_14081A665

loc_1406B2305:                          ; CODE XREF: sub_1406B2290+1683DA↓j
                                        ; sub_1406B2290+1683ED↓j ...
                not     dil
                and     dil, [rbx+rsi]
                or      dil, [rsp+38h+arg_18]
                mov     [rbx+rsi], dil

loc_1406B2315:                          ; CODE XREF: sub_1406B2290+A2↓j
                                        ; sub_1406B2290+A6↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B232B:                          ; CODE XREF: sub_1406B2290+65↑j
                mov     al, [rsp+38h+arg_18]
                mov     [rsi+64h], al
                jmp     short loc_1406B2315
; ---------------------------------------------------------------------------

loc_1406B2334:                          ; CODE XREF: sub_1406B2290+44↑j
                test    eax, eax
                jnz     short loc_1406B2315
                test    byte ptr [rcx+62h], 8
                jnz     short loc_1406B2315
                not     dil
                and     [rbx+rcx], dil
                jmp     short loc_1406B2315
sub_1406B2290   endp

; ---------------------------------------------------------------------------
algn_1406B2347:                         ; DATA XREF: .rdata:0000000140072AF0↑o
                                        ; .pdata:0000000140102954↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B2350   proc near               ; CODE XREF: NtTraceControl+35C↑p
                                        ; DATA XREF: .rdata:0000000140072B20↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081A692 SIZE 0000003B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, gs:188h
                xor     esi, esi
                mov     r13, r9
                mov     bpl, r8b
                mov     r12d, edx
                mov     r15, rcx
                mov     r10, [rax+0B8h]
                mov     r14, [r10+590h]
                test    r14, r14
                jz      loc_14081A692
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rbx, [r14+10h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                add     r14, 18h
                mov     rdi, [r14]

loc_1406B23BF:                          ; CODE XREF: sub_1406B2350+16834F↓j
                cmp     rdi, r14
                jz      short loc_1406B23D7
                mov     rax, [rdi+18h]
                mov     dl, [rax+63h]
                and     dl, 1
                cmp     bpl, dl
                jnz     loc_14081A69C

loc_1406B23D7:                          ; CODE XREF: sub_1406B2350+72↑j
                cmp     rdi, r14
                jz      loc_14081A6A4
                mov     rax, [rdi]
                cmp     [rax+8], rdi
                jnz     loc_14081A6C6
                mov     rcx, [rdi+8]
                cmp     [rcx], rdi
                jnz     loc_14081A6C6
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     rbp, [rdi+10h]
                cmp     [rbp+4], r12d
                ja      loc_1406B24B4

loc_1406B240F:                          ; CODE XREF: sub_1406B2350+184↓j
                mov     r12, [r14]
                xor     edx, edx
                mov     eax, [rbp+4]
                mov     rcx, rbx
                mov     [r13+0], eax
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    esi, esi
                js      short loc_1406B248A
                mov     r13d, 1
                mov     ebx, r13d
                lock xadd [rbp+14h], ebx
                mov     r8d, [rbp+4]
                mov     rdx, rbp
                mov     rcx, r15
                add     ebx, r13d
                call    memmove
                and     qword ptr [r15+18h], 0
                mov     [r15+14h], ebx
                movzx   eax, word ptr [rdi+30h]
                mov     [r15+18h], eax
                cmp     byte ptr [rbp+0Ch], 0
                jnz     short loc_1406B24AA

loc_1406B246C:                          ; CODE XREF: sub_1406B2350+162↓j
                mov     rcx, rbp
                call    sub_1406B2548
                mov     edx, r13d
                mov     rcx, rdi
                call    sub_1406B24E0
                cmp     r12, r14
                mov     eax, 105h
                cmovnz  esi, eax

loc_1406B248A:                          ; CODE XREF: sub_1406B2350+E3↑j
                                        ; sub_1406B2350+168347↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B24AA:                          ; CODE XREF: sub_1406B2350+11A↑j
                movzx   eax, word ptr [rdi+32h]
                mov     [r15+10h], eax
                jmp     short loc_1406B246C
; ---------------------------------------------------------------------------

loc_1406B24B4:                          ; CODE XREF: sub_1406B2350+B9↑j
                mov     rax, [r14]
                cmp     [rax+8], r14
                jnz     loc_14081A6C6
                mov     [rdi], rax
                mov     esi, 0C0000023h
                mov     [rdi+8], r14
                mov     [rax+8], rdi
                mov     [r14], rdi
                jmp     loc_1406B240F
sub_1406B2350   endp

; ---------------------------------------------------------------------------
algn_1406B24D9:                         ; DATA XREF: .rdata:0000000140072B20↑o
                                        ; .pdata:0000000140102960↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B24E0   proc near               ; CODE XREF: sub_14060B8FC+113↑p
                                        ; sub_1406B2350+12A↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rbx, rcx
                test    dl, 2
                jnz     short loc_1406B2522

loc_1406B24F4:                          ; CODE XREF: sub_1406B24E0+52↓j
                                        ; sub_1406B24E0+5D↓j
                not     edi
                prefetchw byte ptr [rbx+34h]
                mov     eax, [rbx+34h]

loc_1406B24FD:                          ; CODE XREF: sub_1406B24E0+26↓j
                mov     ecx, eax
                and     ecx, edi
                lock cmpxchg [rbx+34h], ecx
                jnz     short loc_1406B24FD
                test    eax, edi
                jnz     short loc_1406B2516
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406B2516:                          ; CODE XREF: sub_1406B24E0+2A↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B2522:                          ; CODE XREF: sub_1406B24E0+12↑j
                mov     rcx, [rcx+20h]
                call    PsDereferenceSiloContext
                mov     rcx, [rbx+28h]
                test    rcx, rcx
                jz      short loc_1406B24F4
                mov     rdx, [rbx+18h]
                call    PsReleaseProcessWakeCounter
                jmp     short loc_1406B24F4
sub_1406B24E0   endp

; ---------------------------------------------------------------------------
byte_1406B253F  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010296C↑o

; =============== S U B R O U T I N E =======================================


sub_1406B2548   proc near               ; CODE XREF: sub_14060B8FC+106↑p
                                        ; sub_1406AF8C4+2C7↑p ...
                sub     rsp, 28h
                or      eax, 0FFFFFFFFh
                lock xadd [rcx+8], eax
                cmp     eax, 1
                jz      short loc_1406B255F

loc_1406B2559:                          ; CODE XREF: sub_1406B2548+1E↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B255F:                          ; CODE XREF: sub_1406B2548+F↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406B2559
sub_1406B2548   endp

; ---------------------------------------------------------------------------
algn_1406B2568:                         ; DATA XREF: .pdata:0000000140102978↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406B2570   proc near               ; CODE XREF: sub_1406AFC74+4B↑p
                                        ; DATA XREF: .rdata:0000000140072B5C↑o ...

var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_48          = byte ptr -48h
var_18          = qword ptr -18h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 000000014081A6CE SIZE 00000023 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r13
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_18], rax
                xor     eax, eax
                mov     [rbp+57h+var_B0], 2A0028h
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_80], rax
                lea     rax, aLpacpnpnotific ; "lpacPnpNotifications"
                xor     ebx, ebx
                mov     r13d, 59706E50h
                mov     [rbp+57h+var_A8], rax
                mov     esi, 90h
                mov     r8d, r13d
                mov     edx, esi
                lea     r12d, [rbx+1]
                mov     ecx, r12d
                movups  [rbp+57h+var_A0], xmm0
                movups  [rbp+57h+var_90], xmm0
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1406B2836
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r8d, r13d
                lea     edx, [rbx+38h]
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     [rdi+10h], rax
                test    rax, rax
                jz      loc_14081A6CE
                mov     rcx, rax
                call    KeInitializeGuardedMutex
                lea     rax, [rdi+70h]
                mov     dword ptr [rdi+84h], 4
                mov     [rax+8], rax
                lea     r8, [rbp+57h+var_78]
                mov     [rax], rax
                lea     rdx, [rbp+57h+var_48]
                lea     rax, [rdi+60h]
                mov     [rdi+8Ch], r12b
                lea     rcx, [rbp+57h+var_B0]
                mov     [rax+8], rax
                mov     [rax], rax
                call    RtlDeriveCapabilitySidsFromName
                test    eax, eax
                js      loc_14081A6CE
                mov     edx, r12d
                lea     rcx, [rbp+57h+var_A0]
                call    RtlCreateSecurityDescriptor
                test    eax, eax
                js      loc_14081A6CE
                mov     rsi, cs:qword_140C54340
                lea     rcx, [rbp+57h+var_A0]
                mov     rdx, rsi
                mov     r8b, r12b
                call    RtlSetOwnerSecurityDescriptor
                test    eax, eax
                js      loc_14081A6CE
                mov     rcx, cs:qword_140C1DAE0
                call    RtlLengthSid
                mov     rcx, cs:qword_140C54328
                mov     ebx, eax
                call    RtlLengthSid
                mov     rcx, cs:qword_140C54330
                add     ebx, eax
                call    RtlLengthSid
                mov     rcx, rsi
                add     ebx, eax
                call    RtlLengthSid
                lea     rcx, [rbp+57h+var_78]
                add     ebx, eax
                call    RtlLengthSid
                mov     r8d, r13d
                mov     ecx, r12d
                lea     esi, [rax+30h]
                add     esi, ebx
                mov     edx, esi
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14081A6CE
                lea     r15d, [r12+1]
                mov     edx, esi
                mov     r8d, r15d
                mov     rcx, rax
                call    RtlCreateAcl
                test    eax, eax
                js      loc_14081A6CE
                mov     rcx, cs:qword_140C54340
                mov     r9d, 10000000h
                mov     byte ptr [rsp+0F0h+var_C8], 0
                mov     r8d, r15d
                mov     qword ptr [rsp+0F0h+var_D0], rcx
                mov     edx, r15d
                mov     rcx, rbx
                call    sub_140622B20
                test    eax, eax
                js      loc_14081A6CE
                mov     rax, cs:qword_140C54330
                mov     r9d, r12d
                mov     byte ptr [rsp+0F0h+var_C8], 0
                mov     r8d, r15d
                mov     edx, r15d
                mov     qword ptr [rsp+0F0h+var_D0], rax
                mov     rcx, rbx
                call    sub_140622B20
                test    eax, eax
                js      loc_14081A6CE
                mov     rax, cs:qword_140C54328
                mov     r9d, r12d
                mov     byte ptr [rsp+0F0h+var_C8], 0
                mov     r8d, r15d
                mov     edx, r15d
                mov     qword ptr [rsp+0F0h+var_D0], rax
                mov     rcx, rbx
                call    sub_140622B20
                test    eax, eax
                js      loc_14081A6CE
                mov     rax, cs:qword_140C1DAE0
                mov     r9d, r12d
                mov     byte ptr [rsp+0F0h+var_C8], 0
                mov     r8d, r15d
                mov     edx, r15d
                mov     qword ptr [rsp+0F0h+var_D0], rax
                mov     rcx, rbx
                call    sub_140622B20
                test    eax, eax
                js      loc_14081A6CE
                lea     rax, [rbp+57h+var_78]
                mov     byte ptr [rsp+0F0h+var_C8], 0
                mov     r9d, r12d
                mov     qword ptr [rsp+0F0h+var_D0], rax
                mov     r8d, r15d
                mov     edx, r15d
                mov     rcx, rbx
                call    sub_140622B20
                test    eax, eax
                js      loc_14081A6CE
                xor     r9d, r9d
                lea     rcx, [rbp+57h+var_A0]
                mov     r8, rbx
                mov     dl, r12b
                call    RtlSetDaclSecurityDescriptor
                test    eax, eax
                js      loc_14081A6CE
                lea     rax, [rbp+57h+var_A0]
                xor     r9d, r9d
                mov     [rsp+0F0h+var_C0], rax
                lea     r8d, [r12+3]
                mov     dword ptr [rsp+0F0h+var_C8], r8d
                lea     rcx, [rdi+58h]
                and     qword ptr [rsp+0F0h+var_D0], 0
                lea     edx, [r12+2]
                call    ZwCreateWnfStateName
                test    eax, eax
                js      loc_14081A6CE

loc_1406B2826:                          ; CODE XREF: sub_1406B2570+16817C↓j
                test    rbx, rbx
                jz      short loc_1406B2836
                mov     edx, r13d
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406B2836:                          ; CODE XREF: sub_1406B2570+79↑j
                                        ; sub_1406B2570+2B9↑j
                mov     rax, rdi
                mov     rcx, [rbp+57h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F0h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406B2570
sub_1406B2570   endp

algn_1406B2867:                         ; DATA XREF: .rdata:0000000140072B5C↑o
                                        ; .pdata:0000000140102984↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B2870   proc near               ; DATA XREF: .rdata:0000000140072BB4↑o
                                        ; .pdata:0000000140102990↑o ...

var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 000000014081A6F2 SIZE 00000016 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r13d, edx
                mov     r15, rcx
                xor     ebx, ebx
                mov     [rax-30h], rbx
                mov     [rax-28h], rbx
                mov     rax, gs:188h
                mov     r12b, [rax+232h]
                mov     [rsp+78h+var_38], ebx
                test    r12b, r12b
                jz      loc_14081A6F2

loc_1406B28BA:                          ; DATA XREF: .rdata:0000000140072B90↑o
;   __try { // __except at loc_1406B28F8
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     r15, rdx
                cmovb   rcx, r15
                mov     rax, [rcx]
                mov     [rcx], rax
                test    r8, r8
                jz      short loc_1406B28F6
                test    r8b, 7
                jz      short loc_1406B28E5
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B28E5:                          ; CODE XREF: sub_1406B2870+6D↑j
                cmp     r8, rdx
                cmovb   rdx, r8
                mov     al, [rdx]
                mov     eax, [r8+18h]
                mov     [rsp+78h+var_38], eax

loc_1406B28F6:                          ; CODE XREF: sub_1406B2870+67↑j
                jmp     short loc_1406B28FD
;   } // starts at 1406B28BA
; ---------------------------------------------------------------------------

loc_1406B28F8:                          ; DATA XREF: .rdata:0000000140072B90↑o
;   __except(1) // owned by 1406B28BA
                jmp     loc_1406B29F5
; ---------------------------------------------------------------------------

loc_1406B28FD:                          ; CODE XREF: sub_1406B2870:loc_1406B28F6↑j
                                        ; sub_1406B2870+167E85↓j ...
                mov     al, r12b
                neg     al
                sbb     edi, edi
                and     edi, 0FFFEFE00h
                add     edi, 11FF2h
                and     edi, [rsp+78h+var_38]
                lea     rdx, [rsp+78h+var_30]
                mov     rcx, r9
                call    sub_1406B2E5C
                test    eax, eax
                js      loc_1406B29F5
                call    sub_1402B95B0
                mov     rbx, rax
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E4h]
                lea     rsi, [rax+2D0h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                lea     rcx, [rbx+80h]
                mov     rdx, [rsp+78h+var_30]
                call    sub_1406B33EC
                mov     r14, rax
                mov     edx, 534E624Fh
                mov     rcx, [rsp+78h+var_30]
                call    ExFreePoolWithTag
                test    r14, r14
                jz      loc_1406B2A15
                mov     r14, [r14+10h]
                test    r14, r14
                jz      loc_1406B2A15
                mov     rcx, r14
                call    ObfReferenceObject
                xor     edx, edx
                mov     rcx, rsi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                lea     rax, [rsp+78h+var_28]
                mov     [rsp+78h+var_48], rax
                mov     [rsp+78h+var_50], r12b
                mov     rax, cs:qword_140C259E0
                mov     [rsp+78h+var_58], rax
                mov     r9d, r13d
                xor     r8d, r8d
                mov     edx, edi
                mov     rcx, r14
                call    ObOpenObjectByPointer
                mov     ebx, eax
                mov     dword ptr [rsp+78h+var_30], eax
                mov     rcx, r14
                call    PsDereferenceSiloContext
                nop

loc_1406B29E5:                          ; DATA XREF: .rdata:0000000140072BA0↑o
;   __try { // __except at loc_1406B29EF
                mov     rcx, [rsp+78h+var_28]
                mov     [r15], rcx
                jmp     short loc_1406B29F3
;   } // starts at 1406B29E5
; ---------------------------------------------------------------------------

loc_1406B29EF:                          ; DATA XREF: .rdata:0000000140072BA0↑o
;   __except(1) // owned by 1406B29E5
                mov     ebx, dword ptr [rsp+78h+var_30]

loc_1406B29F3:                          ; CODE XREF: sub_1406B2870+17D↑j
                mov     eax, ebx

loc_1406B29F5:                          ; CODE XREF: sub_1406B2870:loc_1406B28F8↑j
                                        ; sub_1406B2870+B3↑j ...
                lea     r11, [rsp+78h+var_18]
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
; ---------------------------------------------------------------------------

loc_1406B2A15:                          ; CODE XREF: sub_1406B2870+108↑j
                                        ; sub_1406B2870+115↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, 0C000003Ah
                jmp     short loc_1406B29F5
; } // starts at 1406B2870
sub_1406B2870   endp

; ---------------------------------------------------------------------------
algn_1406B2A34:                         ; DATA XREF: .rdata:0000000140072BB4↑o
                                        ; .pdata:0000000140102990↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B2A40   proc near               ; DATA XREF: .rdata:0000000140072C0C↑o
                                        ; .pdata:000000014010299C↑o ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 000000014081A708 SIZE 0000007B BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r14, r8
                mov     r13d, edx
                mov     r15, rcx
                xor     ebx, ebx
                mov     [rax-30h], rbx
                mov     [rax-20h], rbx
                mov     [rax-28h], rbx
                mov     rax, gs:188h
                mov     sil, [rax+232h]
                test    sil, sil
                jz      short loc_1406B2AA7

loc_1406B2A89:                          ; DATA XREF: .rdata:0000000140072BE8↑o
;   __try { // __except at loc_1406B2AA2
                mov     rcx, 7FFFFFFF0000h
                cmp     r15, rcx
                cmovb   rcx, r15
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_1406B2AA7
;   } // starts at 1406B2A89
; ---------------------------------------------------------------------------

loc_1406B2AA2:                          ; DATA XREF: .rdata:0000000140072BE8↑o
;   __except(1) // owned by 1406B2A89
                jmp     loc_1406B2C6B
; ---------------------------------------------------------------------------

loc_1406B2AA7:                          ; CODE XREF: sub_1406B2A40+47↑j
                                        ; sub_1406B2A40+60↑j
                lea     rdx, [rsp+88h+var_28]
                mov     rcx, r9
                call    sub_1406B2E5C
                test    eax, eax
                js      loc_1406B2C6B
                mov     rdi, [rsp+88h+var_28]
                lea     rcx, [rdi+30h]
                call    sub_1406B2CB0
                mov     ebx, eax
                xor     r8d, r8d
                test    eax, eax
                js      loc_1406B2C97
                mov     eax, [rdi+18h]
                add     eax, 188h
                mov     ebx, eax
                cmp     rbx, [rdi+18h]
                jb      loc_14081A708
                mov     rdx, cs:qword_140C259E0
                mov     [rsp+88h+var_40], r8
                lea     rcx, [rsp+88h+var_30]
                mov     [rsp+88h+var_48], rcx
                mov     [rsp+88h+var_50], r8d
                mov     dword ptr [rsp+88h+var_58], r8d
                mov     dword ptr [rsp+88h+var_60], eax
                mov     r9b, sil
                mov     r8, r14
                mov     cl, sil
                call    sub_14061EDD0
                xor     esi, esi
                test    eax, eax
                js      loc_1406B2C95
                mov     r8d, ebx
                xor     edx, edx
                mov     r14, [rsp+88h+var_30]
                mov     rcx, r14
                call    memset
                lea     rbx, [r14+15Fh]
                and     rbx, 0FFFFFFFFFFFFFFF8h
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                mov     r8, [rdi+18h]
                mov     [rbx+18h], r8
                mov     [rbx+10h], rsi
                mov     al, [rdi+28h]
                mov     [rbx+28h], al
                lea     rcx, [rbx+30h]
                lea     rdx, [rdi+30h]
                call    memmove
                mov     edx, 534E624Fh
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     [r14+128h], rsi
                or      dword ptr [r14+154h], 0FFFFFFFFh
                mov     dword ptr [r14+150h], 1
                lea     rcx, [r14-30h]
                movzx   eax, byte ptr [rcx+1Ah]
                test    al, 2
                jnz     loc_14081A712
                mov     ecx, esi

loc_1406B2BA3:                          ; CODE XREF: sub_1406B2A40+167CE3↓j
                test    rcx, rcx
                jnz     loc_14081A728
                mov     rcx, rbx
                call    sub_1406B332C
                mov     edi, eax
                test    eax, eax
                js      loc_1406B2C8B
                mov     rcx, r14
                call    ObfReferenceObject
                lea     rax, [rsp+88h+var_20]
                mov     [rsp+88h+var_58], rax
                mov     [rsp+88h+var_60], rsi
                mov     [rsp+88h+var_68], esi
                xor     r9d, r9d
                mov     r8d, r13d
                xor     edx, edx
                mov     rcx, r14
                call    sub_14061EFE0
                mov     edi, eax
                mov     [rsp+88h+var_38], eax
                call    sub_1402B95B0
                mov     rsi, rax
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E4h]
                lea     r12, [rax+2D0h]
                xor     edx, edx
                mov     rcx, r12
                call    ExAcquirePushLockExclusiveEx
                test    edi, edi
                js      loc_14081A732
                mov     eax, [r14+150h]
                test    al, 2
                jnz     loc_14081A74D
                mov     rax, [rsp+88h+var_30]
                mov     [rbx+10h], rax
                mov     [rax+140h], rbx

loc_1406B2C3F:                          ; CODE XREF: sub_1406B2A40+167D37↓j
                xor     edx, edx
                mov     rcx, r12
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    edi, edi
                js      short loc_1406B2C69

loc_1406B2C5B:                          ; DATA XREF: .rdata:0000000140072BF8↑o
;   __try { // __except at loc_1406B2C65
                mov     rax, [rsp+88h+var_20]
                mov     [r15], rax
                jmp     short loc_1406B2C69
;   } // starts at 1406B2C5B
; ---------------------------------------------------------------------------

loc_1406B2C65:                          ; DATA XREF: .rdata:0000000140072BF8↑o
;   __except(1) // owned by 1406B2C5B
                mov     edi, [rsp+88h+var_38]

loc_1406B2C69:                          ; CODE XREF: sub_1406B2A40+219↑j
                                        ; sub_1406B2A40+223↑j ...
                mov     eax, edi

loc_1406B2C6B:                          ; CODE XREF: sub_1406B2A40:loc_1406B2AA2↑j
                                        ; sub_1406B2A40+76↑j ...
                lea     r11, [rsp+88h+var_18]
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
; ---------------------------------------------------------------------------

loc_1406B2C8B:                          ; CODE XREF: sub_1406B2A40+178↑j
                                        ; sub_1406B2A40+167CED↓j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                jmp     short loc_1406B2C69
; ---------------------------------------------------------------------------

loc_1406B2C95:                          ; CODE XREF: sub_1406B2A40+E1↑j
                mov     ebx, eax

loc_1406B2C97:                          ; CODE XREF: sub_1406B2A40+91↑j
                                        ; sub_1406B2A40+167CCD↓j
                mov     edx, 534E624Fh
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     short loc_1406B2C6B
; } // starts at 1406B2A40
sub_1406B2A40   endp

; ---------------------------------------------------------------------------
algn_1406B2CA8:                         ; DATA XREF: .rdata:0000000140072C0C↑o
                                        ; .pdata:000000014010299C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406B2CB0   proc near               ; CODE XREF: sub_1406B2A40+85↑p
                                        ; sub_1408E0CD0+68↓p
                                        ; DATA XREF: ...

var_B0          = dword ptr -0B0h
var_AC          = word ptr -0ACh
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_60          = byte ptr -60h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                and     [rbp+57h+var_B0], 0
                xor     edx, edx
                mov     rdi, rcx
                mov     [rbp+57h+var_AC], 1000h
                lea     rcx, [rbp+57h+var_60]
                lea     r8d, [rdx+44h]
                call    memset
                and     [rbp+57h+var_A4], 0
                lea     r8, [rbp+57h+var_A0]
                and     [rbp+57h+var_A8], 0
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_A0], xmm0
                xor     eax, eax
                movups  [rbp+57h+var_90], xmm0
                mov     [rbp+57h+var_70], rax
                movups  [rbp+57h+var_80], xmm0
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                call    SeCaptureSubjectContextEx
                mov     rax, qword ptr [rbp+57h+var_A0]
                mov     rbx, qword ptr [rbp+57h+var_90]
                test    rax, rax
                cmovnz  rbx, rax
                cmp     dword ptr [rbx+0C0h], 2
                jz      loc_1406B2E0F

loc_1406B2D43:                          ; CODE XREF: sub_1406B2CB0+166↓j
                lea     r8, [rbp+57h+var_A8]
                mov     edx, 1Dh
                mov     rcx, rbx
                call    SeQueryInformationToken
                cmp     [rbp+57h+var_A8], 0
                jnz     loc_1406B2E25

loc_1406B2D5E:                          ; CODE XREF: sub_1406B2CB0+18B↓j
                lea     r8, [rbp+57h+var_A4]
                mov     edx, 19h
                mov     rcx, rbx
                call    SeQueryInformationToken
                mov     r8b, 1
                lea     rdx, [rbp+57h+var_B0]
                lea     rcx, [rbp+57h+var_60]
                call    RtlInitializeSid
                xor     edx, edx
                lea     rcx, [rbp+57h+var_60]
                call    RtlSubAuthoritySid
                mov     edx, [rbp+57h+var_A4]
                lea     rcx, [rbp+57h+var_A0]
                mov     [rax], edx
                lea     rax, [rbp+57h+var_60]
                mov     qword ptr [rbp+57h+var_80+8], rax
                call    SeLockSubjectContext
                lea     r8, [rbp+57h+var_A0]
                mov     rcx, rdi
                lea     rdx, sub_1406B5F20
                call    sub_1406B3198
                lea     rcx, [rbp+57h+var_A0]
                mov     ebx, eax
                call    SeUnlockSubjectContext
                mov     ecx, dword ptr [rbp+57h+var_70]
                test    ecx, ecx
                js      short loc_1406B2DD8
                test    ebx, ebx
                cmovs   ecx, ebx
                mov     dword ptr [rbp+57h+var_70], ecx
                test    ecx, ecx
                js      short loc_1406B2DD8
                cmp     qword ptr [rbp+57h+var_80], 0
                jnz     short loc_1406B2E43

loc_1406B2DD8:                          ; CODE XREF: sub_1406B2CB0+113↑j
                                        ; sub_1406B2CB0+11F↑j ...
                lea     rcx, [rbp+57h+var_A0]
                call    SeReleaseSubjectContext
                mov     rcx, qword ptr [rbp+57h+var_80]
                test    rcx, rcx
                jnz     short loc_1406B2E4B

loc_1406B2DEA:                          ; CODE XREF: sub_1406B2CB0+1A2↓j
                mov     eax, dword ptr [rbp+57h+var_70]
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B2E0F:                          ; CODE XREF: sub_1406B2CB0+8D↑j
                cmp     dword ptr [rbx+0C4h], 2
                jge     loc_1406B2D43

loc_1406B2E1C:                          ; CODE XREF: sub_1406B2CB0+199↓j
                mov     dword ptr [rbp+57h+var_70], 0C0000022h
                jmp     short loc_1406B2DD8
; ---------------------------------------------------------------------------

loc_1406B2E25:                          ; CODE XREF: sub_1406B2CB0+A8↑j
                lea     r8, [rbp+57h+var_80]
                mov     edx, 1Fh
                mov     rcx, rbx
                call    SeQueryInformationToken
                mov     dword ptr [rbp+57h+var_70], eax
                test    eax, eax
                jns     loc_1406B2D5E
                jmp     short loc_1406B2DD8
; ---------------------------------------------------------------------------

loc_1406B2E43:                          ; CODE XREF: sub_1406B2CB0+126↑j
                test    byte ptr [rbp+57h+var_70+4], 1
                jnz     short loc_1406B2DD8
                jmp     short loc_1406B2E1C
; ---------------------------------------------------------------------------

loc_1406B2E4B:                          ; CODE XREF: sub_1406B2CB0+138↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406B2DEA
; } // starts at 1406B2CB0
sub_1406B2CB0   endp

; ---------------------------------------------------------------------------
byte_1406B2E54  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401029A8↑o

; =============== S U B R O U T I N E =======================================


sub_1406B2E5C   proc near               ; CODE XREF: sub_1406B2870+AC↑p
                                        ; sub_1406B2A40+6F↑p
                                        ; DATA XREF: ...

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E7761 SIZE 0000001B BYTES
; FUNCTION CHUNK AT 000000014081A784 SIZE 000000E7 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rdx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     r12, rdx
                mov     r14, rcx
                xorps   xmm0, xmm0
                movups  [rsp+0A8h+var_58], xmm0
                movups  [rsp+0A8h+var_48], xmm0
                and     qword ptr [rdx], 0
                mov     rax, gs:188h
                mov     r8b, [rax+232h]
                mov     [rsp+0A8h+arg_10], r8b
                test    r8b, r8b
                jz      loc_14081A784

loc_1406B2EA7:                          ; DATA XREF: .rdata:0000000140072C58↑o
;   __try { // __except at loc_1406B2F11
                mov     rdx, 7FFFFFFF0000h
                mov     rax, rdx
                cmp     rcx, rdx
                cmovb   rax, rcx
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+0A8h+var_68], xmm0
                psrldq  xmm0, 8
                movd    edi, xmm0
                mov     dword ptr [rsp+0A8h+var_68+8], edi
                lea     eax, [rdi-10h]
                cmp     eax, 7FEFh
                ja      short loc_1406B2F07
                test    edi, edi
                jz      short loc_1406B2EF3
                test    r14b, 3
                jnz     short loc_1406B2EF5
                mov     ecx, edi
                add     rcx, r14
                cmp     rcx, rdx
                ja      short loc_1406B2EFA
                cmp     rcx, r14
                jb      short loc_1406B2EFA

loc_1406B2EF3:                          ; CODE XREF: sub_1406B2E5C+80↑j
                                        ; sub_1406B2E5C+A9↓j
                jmp     short loc_1406B2F16
; ---------------------------------------------------------------------------

loc_1406B2EF5:                          ; CODE XREF: sub_1406B2E5C+86↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406B2EFA:                          ; CODE XREF: sub_1406B2E5C+90↑j
                                        ; sub_1406B2E5C+95↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406B2EF3
; ---------------------------------------------------------------------------

loc_1406B2F07:                          ; CODE XREF: sub_1406B2E5C+7C↑j
                mov     eax, 0C000000Dh
                jmp     loc_1406B304E
;   } // starts at 1406B2EA7
; ---------------------------------------------------------------------------

loc_1406B2F11:                          ; DATA XREF: .rdata:0000000140072C58↑o
;   __except(1) // owned by 1406B2EA7
                jmp     loc_1406B304E
; ---------------------------------------------------------------------------

loc_1406B2F16:                          ; CODE XREF: sub_1406B2E5C:loc_1406B2EF3↑j
                                        ; sub_1406B2E5C+167935↓j
                xor     esi, esi
                and     [rsp+0A8h+arg_18], esi
                xor     r13b, r13b
                mov     [rsp+0A8h+arg_0], r13b
                mov     eax, edi
                mov     [rsp+0A8h+var_78], rax
                mov     r15d, edi
                and     [rsp+0A8h+var_80], rsi
                and     [rsp+0A8h+var_88], esi
                mov     rax, qword ptr [rsp+0A8h+var_68+8]
                shr     rax, 20h
                test    al, 1
                jnz     loc_1406B305E

loc_1406B2F4E:                          ; CODE XREF: sub_1406B2E5C+25D↓j
                add     r15, 30h ; '0'
                mov     eax, 0FFFFFFFFh
                cmp     r15, rax
                ja      loc_14081A7D9
                mov     r15d, r15d
                mov     r8d, 534E624Fh
                mov     edx, r15d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+0A8h+var_70], rax
                test    rax, rax
                jz      loc_14081A7E3
                lea     rax, [r15-30h]
                mov     [rsi+18h], rax
                lea     r15, [rsi+30h]

loc_1406B2F93:                          ; DATA XREF: .rdata:0000000140072C68↑o
;   __try { // __except at loc_1406B2FA5
                mov     r8, [rsp+0A8h+var_78]
                mov     rdx, r14
                mov     rcx, r15
                call    memmove
                jmp     short loc_1406B2FBE
;   } // starts at 1406B2F93
; ---------------------------------------------------------------------------

loc_1406B2FA5:                          ; DATA XREF: .rdata:0000000140072C68↑o
;   __except(loc_1407E7761) // owned by 1406B2F93
                mov     edi, eax
                mov     r12, [rsp+0A8h+arg_8]
                mov     rsi, [rsp+0A8h+var_70]
                mov     r13b, [rsp+0A8h+arg_0]
                jmp     short loc_1406B302D
; ---------------------------------------------------------------------------

loc_1406B2FBE:                          ; CODE XREF: sub_1406B2E5C+147↑j
                cmp     [rsp+0A8h+var_80], 0
                jnz     loc_14081A7ED

loc_1406B2FCA:                          ; CODE XREF: sub_1406B2E5C+1679D7↓j
                mov     [r15+8], edi
                mov     eax, dword ptr [rsp+0A8h+var_68+4]
                mov     [r15+4], eax
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r15
                call    sub_1406B3198
                mov     edi, eax
                test    eax, eax
                js      short loc_1406B2FF9
                mov     rcx, rsi
                call    sub_1406B30D4
                test    eax, eax
                jz      loc_14081A838

loc_1406B2FF9:                          ; CODE XREF: sub_1406B2E5C+18B↑j
                mov     byte ptr [rsi+28h], 0
                mov     r8, rsi
                lea     rdx, sub_140706F00
                mov     rcx, r15
                call    sub_1406B3198
                movzx   ecx, byte ptr [rsi+28h]
                mov     eax, 0BACF914Dh
                mul     ecx
                mov     eax, ecx
                sub     eax, edx
                shr     eax, 1
                add     eax, edx
                shr     eax, 5
                imul    eax, 25h ; '%'
                sub     ecx, eax
                mov     [rsi+28h], cl

loc_1406B302D:                          ; CODE XREF: sub_1406B2E5C+160↑j
                                        ; sub_1406B2E5C+167950↓j ...
                mov     rcx, [rsp+0A8h+var_80]
                test    rcx, rcx
                jnz     loc_14081A842

loc_1406B303B:                          ; CODE XREF: sub_1406B2E5C+1679EE↓j
                test    r13b, r13b
                jnz     short loc_1406B30BE

loc_1406B3040:                          ; CODE XREF: sub_1406B2E5C+26C↓j
                test    edi, edi
                js      loc_14081A84F
                mov     [r12], rsi

loc_1406B304C:                          ; CODE XREF: sub_1406B2E5C+1679F6↓j
                                        ; sub_1406B2E5C+167A0A↓j
                mov     eax, edi

loc_1406B304E:                          ; CODE XREF: sub_1406B2E5C+B0↑j
                                        ; sub_1406B2E5C:loc_1406B2F11↑j
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B305E:                          ; CODE XREF: sub_1406B2E5C+EC↑j
                mov     rcx, gs:188h
                mov     r13b, 1
                mov     [rsp+0A8h+arg_0], r13b
                mov     rdx, [rcx+0B8h]
                lea     r8, [rsp+0A8h+var_58]
                call    SeCaptureSubjectContextEx
                mov     rdi, qword ptr [rsp+0A8h+var_48]
                cmp     qword ptr [rsp+0A8h+var_58], rsi
                cmovnz  rdi, qword ptr [rsp+0A8h+var_58]
                lea     r8, [rsp+0A8h+arg_18]
                mov     edx, 1Dh
                mov     rcx, rdi
                call    SeQueryInformationToken
                cmp     [rsp+0A8h+arg_18], esi
                jnz     loc_14081A796

loc_1406B30B5:                          ; CODE XREF: sub_1406B2E5C+167978↓j
                mov     edi, dword ptr [rsp+0A8h+var_68+8]
                jmp     loc_1406B2F4E
; ---------------------------------------------------------------------------

loc_1406B30BE:                          ; CODE XREF: sub_1406B2E5C+1E2↑j
                lea     rcx, [rsp+0A8h+var_58]
                call    SeReleaseSubjectContext
                jmp     loc_1406B3040
; } // starts at 1406B2E5C
sub_1406B2E5C   endp

; ---------------------------------------------------------------------------
byte_1406B30CD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140072C7C↑o
                                        ; .pdata:00000001401029B4↑o

; =============== S U B R O U T I N E =======================================


sub_1406B30D4   proc near               ; CODE XREF: sub_1406B2E5C+190↑p
                                        ; DATA XREF: .pdata:00000001401029C0↑o

var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h

                mov     rax, rsp
                sub     rsp, 58h
                and     qword ptr [rax-28h], 0
                lea     r8, [rax-38h]
                and     dword ptr [rax-14h], 0
                lea     rdx, sub_1406B3140
                and     dword ptr [rax-18h], 0
                and     dword ptr [rax-1Ch], 0
                and     dword ptr [rax-20h], 0
                mov     [rax-38h], rcx
                mov     [rax-30h], rcx
                add     rcx, 30h ; '0'
                call    sub_1406B3198
                test    eax, eax
                js      short loc_1406B312C
                cmp     [rsp+58h+var_18], 0
                jl      short loc_1406B312C
                mov     eax, [rsp+58h+var_20]
                cmp     [rsp+58h+var_1C], eax
                jnz     short loc_1406B312C
                mov     eax, 1

loc_1406B3126:                          ; CODE XREF: sub_1406B30D4+5A↓j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406B312C:                          ; CODE XREF: sub_1406B30D4+3A↑j
                                        ; sub_1406B30D4+41↑j ...
                xor     eax, eax
                jmp     short loc_1406B3126
sub_1406B30D4   endp

; ---------------------------------------------------------------------------
algn_1406B3130:                         ; DATA XREF: .pdata:00000001401029C0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B3140   proc near               ; DATA XREF: .pdata:00000001401029CC↑o
                                        ; sub_1406B30D4+14↑o ...
                push    rbx
                sub     rsp, 20h
                inc     dword ptr [rdx+18h]
                mov     rbx, rdx
                mov     [rdx+10h], rcx
                mov     r8, rdx
                mov     rcx, [rdx+8]
                lea     rdx, sub_140713240
                add     rcx, 30h ; '0'
                call    sub_1406B3198
                test    eax, eax
                js      short loc_1406B318A
                mov     eax, [rbx+1Ch]
                cmp     [rbx+18h], eax
                jnz     short loc_1406B317F
                mov     eax, 1

loc_1406B3178:                          ; CODE XREF: sub_1406B3140+48↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B317F:                          ; CODE XREF: sub_1406B3140+31↑j
                mov     dword ptr [rbx+20h], 0C000017Bh

loc_1406B3186:                          ; CODE XREF: sub_1406B3140+4D↓j
                xor     eax, eax
                jmp     short loc_1406B3178
; ---------------------------------------------------------------------------

loc_1406B318A:                          ; CODE XREF: sub_1406B3140+29↑j
                mov     [rbx+20h], eax
                jmp     short loc_1406B3186
sub_1406B3140   endp

; ---------------------------------------------------------------------------
byte_1406B318F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401029CC↑o

; =============== S U B R O U T I N E =======================================


sub_1406B3198   proc near               ; CODE XREF: sub_1406B2CB0+FE↑p
                                        ; sub_1406B2E5C+182↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081A86C SIZE 0000001F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                mov     [rax+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, [rcx+8]
                mov     r9, r8
                mov     r13, rdx
                mov     rdi, rcx
                cmp     eax, 10h
                jb      loc_1406B32AB
                cmp     dword ptr [rcx], 1
                jnz     loc_1406B32AB
                lea     rsi, [rcx+rax]
                cmp     rsi, rcx
                jb      loc_1406B32AB
                lea     rbx, [rcx+10h]
                xor     r12d, r12d
                lea     rcx, [rbx+8]
                xor     r15d, r15d
                xor     r14d, r14d
                cmp     rcx, rsi
                jnb     loc_1406B3285

loc_1406B31FD:                          ; CODE XREF: sub_1406B3198+DB↓j
                mov     r8d, [rbx+4]
                inc     r14d
                cmp     r8d, 8
                jb      loc_1406B32AB
                lea     rbp, [rbx+r8]
                cmp     rbp, rbx
                jb      loc_1406B32AB
                cmp     rbp, rsi
                ja      loc_1406B32AB
                mov     edx, [rbx]
                sub     edx, 1
                jz      short loc_1406B3275
                sub     edx, 1
                jnz     loc_14081A86C

loc_1406B3234:                          ; CODE XREF: sub_1406B3198+1676E3↓j
                lea     edx, [r8-8]
                call    sub_1406B32B8
                test    al, al
                jz      short loc_1406B32AB
                mov     r9, [rsp+48h+arg_10]

loc_1406B3246:                          ; CODE XREF: sub_1406B3198+E4↓j
                test    r13, r13
                jz      short loc_1406B325D
                mov     rdx, r9
                mov     rcx, rbx
                mov     rax, r13
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1406B3285

loc_1406B325D:                          ; CODE XREF: sub_1406B3198+B1↑j
                lea     rbx, [rbp+7]
                and     rbx, 0FFFFFFFFFFFFFFF8h
                lea     rcx, [rbx+8]
                cmp     rcx, rsi
                jnb     short loc_1406B3285
                mov     r9, [rsp+48h+arg_10]
                jmp     short loc_1406B31FD
; ---------------------------------------------------------------------------

loc_1406B3275:                          ; CODE XREF: sub_1406B3198+91↑j
                inc     r15d
                cmp     r15d, 1
                jbe     short loc_1406B3246
                mov     eax, 0C00000BDh
                jmp     short loc_1406B328D
; ---------------------------------------------------------------------------

loc_1406B3285:                          ; CODE XREF: sub_1406B3198+5F↑j
                                        ; sub_1406B3198+C3↑j ...
                cmp     [rdi+4], r14d
                jnz     short loc_1406B32AB
                xor     eax, eax

loc_1406B328D:                          ; CODE XREF: sub_1406B3198+EB↑j
                                        ; sub_1406B3198+118↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
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

loc_1406B32AB:                          ; CODE XREF: sub_1406B3198+2F↑j
                                        ; sub_1406B3198+38↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1406B328D
sub_1406B3198   endp

; ---------------------------------------------------------------------------
algn_1406B32B2:                         ; DATA XREF: .rdata:0000000140072CC4↑o
                                        ; .pdata:00000001401029D8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406B32B8   proc near               ; CODE XREF: sub_1406B3198+A0↑p
                                        ; DATA XREF: .pdata:00000001401029E4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, edx
                mov     rdi, rcx
                cmp     edx, 8
                jb      short loc_1406B32F6
                call    RtlSubAuthorityCountSid
                movzx   r8d, byte ptr [rax]
                lea     r8d, ds:8[r8*4]
                cmp     ebx, r8d
                jb      short loc_1406B32F6
                mov     rcx, rdi
                call    RtlValidSid

loc_1406B32EA:                          ; CODE XREF: sub_1406B32B8+40↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B32F6:                          ; CODE XREF: sub_1406B32B8+12↑j
                                        ; sub_1406B32B8+28↑j
                xor     al, al
                jmp     short loc_1406B32EA
sub_1406B32B8   endp

; ---------------------------------------------------------------------------
algn_1406B32FA:                         ; DATA XREF: .pdata:00000001401029E4↑o
                align 20h
; Exported entry 2217. RtlInitializeSid

; =============== S U B R O U T I N E =======================================


