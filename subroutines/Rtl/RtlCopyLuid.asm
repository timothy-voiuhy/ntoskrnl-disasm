RtlCopyLuid     proc near               ; DATA XREF: .pdata:000000014010A460↑o
                mov     rax, [rdx]
                mov     [rcx], rax
                retn
RtlCopyLuid     endp

; ---------------------------------------------------------------------------
                align 8
algn_140769E08:                         ; DATA XREF: .pdata:000000014010A460↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140769E10   proc near               ; CODE XREF: MmMapLockedPagesSpecifyCache+1EE↑p
                                        ; DATA XREF: .rdata:0000000140093E74↑o ...

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 000000014084671C SIZE 000000F6 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     eax, 0FFFh
                mov     r13, rcx
                test    eax, r9d
                jnz     loc_14084671C
                mov     r14d, [rcx+28h]
                lea     r15, [rcx+30h]
                and     rdx, rax
                mov     [rsp+0C8h+var_70], r15
                add     rdx, rax
                mov     ecx, 40h ; '@'
                add     r14, rdx
                mov     r8d, 6C646156h
                mov     edx, ecx
                shr     r14, 0Ch
                call    sub_140268720
                xor     edx, edx
                mov     [rsp+0C8h+var_40], rax
                mov     rdi, rax
                test    rax, rax
                jz      loc_140846727
                mov     [rax+28h], rdx
                mov     r12d, edx
                mov     qword ptr [rax+10h], 0FFFFFFFFFFFFFFFEh
                mov     eax, [rsp+0C8h+arg_20]
                sar     eax, 1Fh
                and     eax, 0FFFFFFFDh
                add     eax, 4
                mov     ecx, eax
                mov     [rsp+0C8h+arg_28], eax
                mov     eax, [rdi+30h]
                and     ecx, 1Fh
                shl     ecx, 7
                and     eax, 0FFFFF01Fh
                or      ecx, eax
                or      ecx, 8100010h
                mov     [rdi+30h], ecx
                mov     rax, gs:188h
                mov     [rsp+0C8h+var_68], rdx
                mov     rcx, rax
                mov     [rsp+0C8h+var_60], rax
                mov     rsi, [rax+0B8h]
                mov     rdx, rsi
                mov     [rsp+0C8h+var_78], rsi
                call    sub_1402677E0
                mov     eax, [rsi+464h]
                test    al, 20h
                jnz     loc_140846732
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14065875C
                mov     rbx, [rsp+0C8h+arg_18]
                mov     rbp, r14
                shl     rbp, 0Ch
                xor     r10d, r10d
                test    rbx, rbx
                jnz     loc_14084673C
                lea     rcx, [rsp+0C8h+arg_18]
                mov     r9, rbp
                mov     [rsp+0C8h+var_80], rcx
                mov     r8, rax
                lea     rcx, [rsp+0C8h+var_68]
                mov     [rsp+0C8h+var_88], rcx
                mov     ecx, [rsp+0C8h+arg_28]
                mov     [rsp+0C8h+var_90], r10d
                mov     [rsp+0C8h+var_98], ecx
                xor     ecx, ecx
                mov     [rsp+0C8h+var_A0], r10
                mov     [rsp+0C8h+var_A8], 10000h
                call    sub_140656D60
                xor     r10d, r10d
                mov     esi, eax
                test    eax, eax
                js      loc_14076A15A
                mov     rbx, [rsp+0C8h+arg_18]

loc_140769F79:                          ; CODE XREF: sub_140769E10+DC944↓j
                lea     rcx, [rbp-1]
                mov     [rsp+0C8h+arg_18], r10
                add     rcx, rbx
                mov     rax, rbx
                shr     rax, 0Ch
                mov     rbp, r10
                mov     [rsp+0C8h+var_50], rax
                mov     [rdi+18h], eax
                shr     rax, 20h
                mov     [rdi+20h], al
                mov     [rsp+0C8h+var_48], rcx
                shr     rcx, 0Ch
                mov     rax, rcx
                mov     [rsp+0C8h+var_58], rcx
                shr     rax, 20h
                mov     [rdi+1Ch], ecx
                mov     [rdi+21h], al
                test    r14, r14
                jz      short loc_14076A040
                mov     rax, r15

loc_140769FC7:                          ; CODE XREF: sub_140769E10+22E↓j
                mov     rsi, [rax]
                mov     rcx, rsi
                call    sub_140243B30
                xor     r8d, r8d
                test    eax, eax
                jz      loc_14076A124
                lea     rbp, [rsi+rsi*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbp, 4
                mov     rax, rax
                add     rbp, rax
                mov     rcx, rbp
                call    sub_1402DB2A8
                mov     esi, eax
                test    eax, eax
                js      loc_14076A15A
                mov     rcx, rbp
                call    sub_14037D47C
                test    eax, eax
                jz      loc_14076A15A
                mov     rbp, [rsp+0C8h+arg_18]

loc_14076A01F:                          ; CODE XREF: sub_140769E10+344↓j
                mov     rax, [rsp+0C8h+var_70]
                inc     rbp
                mov     r12, rax
                mov     [rsp+0C8h+arg_18], rbp
                add     rax, 8
                mov     [rsp+0C8h+var_70], rax
                cmp     rbp, r14
                jb      short loc_140769FC7

loc_14076A040:                          ; CODE XREF: sub_140769E10+1B2↑j
                mov     rbp, [rsp+0C8h+var_78]
                mov     rcx, rdi
                mov     rdx, rbp
                call    sub_14065A240
                mov     esi, eax
                test    eax, eax
                js      loc_140846779
                mov     r8, [rsp+0C8h+var_68]
                xor     r12d, r12d
                test    r8, r8
                jz      short loc_14076A076
                mov     rdx, [rsp+0C8h+var_58]
                mov     rcx, [rsp+0C8h+var_50]
                call    sub_14065A530

loc_14076A076:                          ; CODE XREF: sub_140769E10+255↑j
                mov     rcx, [rsp+0C8h+var_60]
                mov     rdx, rdi
                call    sub_140269778
                mov     eax, [rsp+0C8h+arg_20]
                xor     r8d, r8d
                mov     r9d, [rsp+0C8h+arg_10]
                mov     rdx, r15
                mov     [rsp+0C8h+var_98], eax
                mov     rcx, rbx
                mov     [rsp+0C8h+var_A0], rdi
                mov     [rsp+0C8h+var_A8], r14
                call    sub_1402E9264
                mov     rcx, [rsp+0C8h+var_60]
                mov     rdx, rbp
                call    sub_1402A8CC4
                mov     rcx, rdi
                call    sub_1402675B0
                cmp     [rsp+0C8h+arg_28], 1
                mov     eax, 4
                mov     r8, [rsp+0C8h+var_48]
                mov     rdx, rbx
                mov     rcx, rdi
                mov     dword ptr [rsp+0C8h+var_A8], r12d
                lea     r9d, [rax-2]
                cmovnz  r9d, eax
                call    sub_14065A100
                mov     rcx, rdi
                test    rax, rax
                jz      loc_140846764
                call    sub_140232610
                mov     eax, [r13+2Ch]
                add     rax, rbx
                mov     rbx, [rsp+0C8h+arg_0]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14076A124:                          ; CODE XREF: sub_140769E10+1C7↑j
                mov     rcx, rsi
                call    sub_1402E8238
                mov     r9d, [rsp+0C8h+arg_10]
                mov     rdx, rax
                mov     eax, 1
                mov     [rsp+0C8h+var_A0], r8
                mov     [rsp+0C8h+var_A8], r8
                mov     ecx, eax
                mov     r8d, eax
                call    sub_1402E7DF4
                mov     esi, eax
                test    eax, eax
                jns     loc_14076A01F

loc_14076A15A:                          ; CODE XREF: sub_140769E10+15B↑j
                                        ; sub_140769E10+1F1↑j ...
                mov     rbp, [rsp+0C8h+var_78]
                jmp     loc_140846779
sub_140769E10   endp

; ---------------------------------------------------------------------------
byte_14076A164  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140093E74↑o
                                        ; .pdata:000000014010A46C↑o

; =============== S U B R O U T I N E =======================================


sub_14076A16C   proc near               ; CODE XREF: sub_14067C1A4+19↑p
                                        ; DATA XREF: .rdata:0000000140093EC0↑o ...

var_38          = dword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846812 SIZE 0000009F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 50h
                and     qword ptr [rax-18h], 0
                mov     rbp, 0FFFFF78000000008h
                and     dword ptr [rax-0Ch], 0
                xor     ebx, ebx
                xor     edi, edi
                mov     rsi, rcx
                mov     rbp, [rbp+0]
                test    rcx, rcx
                jnz     loc_140846812

loc_14076A1A7:                          ; CODE XREF: sub_14076A16C+DC6C3↓j
                                        ; sub_14076A16C+DC72D↓j
                and     [rsp+58h+var_18], 0
                lea     rdx, [rsp+58h+var_28]
                and     [rsp+58h+var_C], 0
                xor     r9d, r9d
                and     [rsp+58h+var_38], 0
                mov     [rsp+58h+var_10], 0Ah
                mov     [rsp+58h+var_28], rbx
                lea     r8d, [r9+20h]
                mov     [rsp+58h+var_20], rdi
                lea     ecx, [r9+5Eh]
                call    sub_14067A140
                test    rbx, rbx
                jnz     loc_14084689E

loc_14076A1E7:                          ; CODE XREF: sub_14076A16C+DC740↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14076A16C   endp

byte_14076A1FD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140093EC0↑o
                                        ; .pdata:000000014010A478↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14076A204   proc near               ; CODE XREF: sub_1405FDCD8+19C↑p
                                        ; DATA XREF: .rdata:0000000140093F0C↑o ...

var_30          = qword ptr -30h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_s0          = byte ptr  0
arg_18          = dword ptr  48h
arg_20          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408468B2 SIZE 000000C2 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r9d
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+var_20], 0
                xor     eax, eax
                or      [rbp+var_10], 0FFFFFFFFh
                mov     r13, r8
                or      [rbp+var_18], 0FFFFFFFFh
                mov     r12, rdx
                mov     edx, [rdx]
                xor     r8d, r8d
                mov     [rbp+var_C], eax
                mov     rbx, rcx
                mov     [rbp+var_14], eax
                call    sub_14087D528
                test    al, al
                jz      loc_14084696C
                mov     edx, [r12]
                lea     r8, [rbp+var_10]
                mov     rax, [rbx+8]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14084696C
                lea     rax, [rbp+var_20]
                xor     r9d, r9d
                mov     r8, r13
                mov     [rsp+50h+var_30], rax
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14062FD1C
                mov     esi, eax
                test    eax, eax
                js      loc_140846957
                mov     r15d, 3F5h

loc_14076A2A0:                          ; CODE XREF: sub_14076A204+234↓j
                mov     r14d, [rbp+var_20]
                lea     r8, [rbp+var_18]
                mov     rax, [rbx+8]
                cmp     r14d, 0FFFFFFFFh
                jz      short loc_14076A324
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_1404079D0
                test    rax, rax
                jz      loc_140846957
                cmp     [rax+2], r15w
                jnb     loc_14076A3BA
                mov     r15d, esi
                inc     r15
                lea     r15, [rdi+r15*4]

loc_14076A2DB:                          ; CODE XREF: sub_14076A204+19F↓j
                                        ; sub_14076A204+DC706↓j ...
                mov     rcx, [rbp+arg_20]
                lea     rdx, [rbp+var_18]
                mov     [rcx], r15
                mov     rcx, rbx
                mov     rax, [rbx+10h]
                call    sub_1404079D0
                mov     rax, [rbx+10h]
                lea     rdx, [rbp+var_10]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     eax, r14d

loc_14076A305:                          ; CODE XREF: sub_14076A204+DC76B↓j
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
                align 4

loc_14076A324:                          ; CODE XREF: sub_14076A204+AC↑j
                mov     ecx, esi
                inc     rcx
                lea     r15, [rdi+rcx*4]
                mov     rcx, rbx
                mov     edx, [r15]
                call    sub_1404079D0
                test    rax, rax
                jz      loc_140846957
                mov     r9d, [rax+4]
                xor     r8d, r8d
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_140630D10
                cmp     eax, 2
                jz      loc_140846947
                mov     r8, [rbx+10h]
                lea     rdx, [rbp+var_18]
                test    eax, eax
                mov     rcx, rbx
                mov     rax, r8
                js      loc_1408468B2
                call    sub_1404079D0
                mov     r14d, [r15]
                lea     r8, [rbp+var_18]
                mov     rax, [rbx+8]
                mov     edx, r14d
                mov     rcx, rbx
                mov     [rbp+var_20], r14d
                call    sub_1404079D0
                test    rax, rax
                jz      loc_140846957
                mov     ecx, 3F5h
                cmp     [rax+2], cx
                jb      loc_14076A2DB
                movzx   eax, word ptr [rdi+2]
                dec     eax
                cmp     esi, eax
                jb      loc_1408468C8

loc_14076A3B7:                          ; CODE XREF: sub_14076A204+DC70C↓j
                mov     r15d, ecx

loc_14076A3BA:                          ; CODE XREF: sub_14076A204+C7↑j
                                        ; sub_14076A204+DC734↓j
                mov     r9d, [rbp+arg_18]
                mov     r8d, esi
                mov     edx, [r12]
                mov     rcx, rbx
                call    sub_140732B08
                mov     esi, eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_140846947
                mov     rax, [rbx+10h]
                lea     rdx, [rbp+var_10]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     [r12], esi
                lea     r8, [rbp+var_10]
                mov     rax, [rbx+8]
                mov     edx, esi
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rdi, rax
                test    rax, rax
                jz      loc_140846947
                mov     rax, [rbx+10h]
                lea     rdx, [rbp+var_18]
                mov     rcx, rbx
                call    sub_1404079D0
                lea     rax, [rbp+var_20]
                xor     r9d, r9d
                mov     r8, r13
                mov     [rsp+50h+var_30], rax
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14062FD1C
                mov     esi, eax
                test    eax, eax
                jns     loc_14076A2A0
                jmp     loc_140846957
sub_14076A204   endp

; ---------------------------------------------------------------------------
byte_14076A443  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093F0C↑o
                                        ; .pdata:000000014010A484↑o

; =============== S U B R O U T I N E =======================================


sub_14076A44C   proc near               ; CODE XREF: sub_140736E14+7A↑p
                                        ; sub_14074B288+DF↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140846974 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                mov     edx, 310h
                mov     ecx, 200h
                mov     r8d, 646F6E44h
                call    ExAllocatePoolWithTag
                mov     [rbx], rax
                test    rax, rax
                jz      loc_140846974
                lock inc cs:dword_140C44A90
                mov     rcx, [rbx]
                xor     edx, edx
                mov     r8d, 310h
                call    memset
                mov     rax, [rbx]
                or      ecx, 0FFFFFFFFh
                or      edx, 0FFFFFFFFh
                mov     [rax+1C0h], ecx
                mov     rax, [rbx]
                mov     [rax+1C4h], edx
                mov     rax, [rbx]
                mov     [rax+1C8h], ecx
                mov     ecx, 0FFFFh
                mov     rax, [rbx]
                mov     [rax+1CCh], edx
                mov     rax, [rbx]
                mov     [rax+1D0h], cx
                mov     rax, [rbx]
                mov     dword ptr [rax+12Ch], 301h
                mov     rax, [rbx]
                and     dword ptr [rax+258h], 0
                mov     rax, [rbx]
                and     dword ptr [rax+280h], 0
                mov     rax, [rbx]
                and     qword ptr [rax+288h], 0
                mov     rax, [rbx]
                and     dword ptr [rax+290h], 0
                mov     rax, [rbx]
                mov     [rax+294h], edx
                mov     rax, [rbx]
                and     word ptr [rax+1D2h], 0
                mov     rax, [rbx]
                add     rax, 1E8h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 1F8h
                mov     [rax+8], rax
                mov     [rax], rax
                test    rdi, rdi
                jz      short loc_14076A556
                mov     rax, [rbx]
                mov     [rax+20h], rdi
                mov     rax, [rbx]
                mov     rcx, [rdi+138h]
                mov     [rcx+28h], rax
                btr     dword ptr [rdi+30h], 7

loc_14076A556:                          ; CODE XREF: sub_14076A44C+EE↑j
                mov     rax, [rbx]
                add     rax, 1D8h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 240h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 260h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 270h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 0B0h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbx]
                add     rax, 0C0h
                mov     [rax+8], rax
                mov     [rax], rax
                xor     eax, eax

loc_14076A5B8:                          ; CODE XREF: sub_14076A44C+DC52D↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14076A44C   endp

byte_14076A5C4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140093F2C↑o
                                        ; .pdata:000000014010A490↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=140h

sub_14076A5CC   proc near               ; CODE XREF: sub_1407346D8+196↑p
                                        ; sub_1407346D8+B8A4C↓p ...

var_220         = dword ptr -220h
var_218         = byte ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F0         = dword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = dword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = dword ptr -1B0h
var_1AC         = dword ptr -1ACh
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = dword ptr -198h
var_190         = qword ptr -190h
var_188         = dword ptr -188h
var_180         = dword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = dword ptr -160h
var_15C         = dword ptr -15Ch
var_158         = dword ptr -158h
var_140         = dword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014084697E SIZE 00000152 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-148h]
                sub     rsp, 220h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+140h+var_30], rax
                mov     eax, [rcx+0B8h]
                xor     esi, esi
                mov     byte ptr [rsp+240h+var_210+1], sil
                mov     rbx, rcx
                mov     byte ptr [rsp+240h+var_210], sil
                mov     [rsp+240h+var_208], rsi
                mov     [rsp+240h+var_200], rsi
                test    al, 20h
                jnz     loc_140846988
                lea     rdx, [rcx+188h]
                call    sub_14073E6A8
                mov     edi, eax
                test    eax, eax
                js      loc_14076A9A5
                cmp     [rbx+18h], rsi
                jz      loc_14084697E
                mov     rdi, [rbx+20h]

loc_14076A64E:                          ; CODE XREF: sub_14076A5CC+DC3C0↓j
                test    rdi, rdi
                jz      loc_14084697E
                xor     edx, edx
                lea     rcx, [rsp+240h+var_1F0]
                mov     r8d, 1C0h
                call    memset
                mov     r8d, 7000000h
                mov     dword ptr [rsp+240h+var_1D0], 1000000h
                mov     r9d, 120h
                mov     [rbp+140h+var_198], r8d
                mov     ecx, 4000000h
                mov     dword ptr [rsp+240h+var_1E8], r9d
                lea     rax, aService_0 ; "Service"
                mov     [rbp+140h+var_160], r8d
                mov     [rsp+240h+var_1E0], rax
                lea     r13, [rbx+120h]
                lea     edx, [r9+10h]
                mov     [rbp+140h+var_128], ecx
                lea     rax, aLowerfilters ; "LowerFilters"
                mov     [rbp+140h+var_1B0], edx
                mov     [rbp+140h+var_1A8], rax
                lea     rsi, [rbx+130h]
                lea     rax, aUpperfilters_0 ; "UpperFilters"
                mov     dword ptr [rbp+140h+var_178], edx
                mov     [rbp+140h+var_170], rax
                lea     r14, [rbx+140h]
                lea     rax, aConfigflags_0 ; "ConfigFlags"
                mov     [rbp+140h+var_F0], r8d
                mov     [rbp+140h+var_138], rax
                lea     r15, [rbx+150h]
                lea     rax, [rbx+180h]
                mov     [rbp+140h+var_108], edx
                mov     [rbp+140h+var_130], rax
                lea     r12, [rbx+160h]
                lea     rax, aIncludedinfs ; "IncludedInfs"
                mov     [rbp+140h+var_B8], r8d
                mov     [rbp+140h+var_100], rax
                lea     r8, [rsp+240h+var_1F0]
                lea     rax, aIncludedconfig ; "IncludedConfigs"
                mov     [rbp+140h+var_D0], edx
                mov     [rbp+140h+var_C8], rax
                mov     rdx, rdi
                lea     rax, aReboot    ; "Reboot"
                mov     [rbp+140h+var_80], ecx
                mov     [rbp+140h+var_90], rax
                mov     ecx, 0C0000000h
                lea     rax, [rbx+184h]
                mov     [rbp+140h+var_98], r9d
                xor     r9d, r9d
                mov     [rbp+140h+var_88], rax
                mov     qword ptr [rsp+240h+var_1D8], r13
                mov     [rbp+140h+var_1A0], rsi
                mov     [rbp+140h+var_168], r14
                mov     [rbp+140h+var_140], 124h
                mov     [rbp+140h+var_F8], r15
                mov     [rbp+140h+var_C0], r12
                mov     [rsp+240h+var_218], 1
                call    sub_14062B088
                mov     edi, eax
                cmp     eax, 0C0000034h
                jz      loc_14084697E
                test    eax, eax
                js      loc_14076A9A5
                cmp     word ptr [rsi], 2
                ja      short loc_14076A7A9
                cmp     qword ptr [rbx+138h], 0
                jnz     loc_140846991

loc_14076A7A9:                          ; CODE XREF: sub_14076A5CC+1CD↑j
                                        ; sub_14076A5CC+DC3CE↓j
                cmp     word ptr [r14], 2
                ja      short loc_14076A7BE
                cmp     qword ptr [rbx+148h], 0
                jnz     loc_14084699F

loc_14076A7BE:                          ; CODE XREF: sub_14076A5CC+1E2↑j
                                        ; sub_14076A5CC+DC3DC↓j
                cmp     word ptr [r15], 2
                ja      short loc_14076A7D3
                cmp     qword ptr [rbx+158h], 0
                jnz     loc_1408469AD

loc_14076A7D3:                          ; CODE XREF: sub_14076A5CC+1F7↑j
                                        ; sub_14076A5CC+DC3EA↓j
                xor     r15d, r15d
                cmp     word ptr [r12], 2
                ja      short loc_14076A7EB
                cmp     [rbx+168h], r15
                jnz     loc_1408469BB

loc_14076A7EB:                          ; CODE XREF: sub_14076A5CC+210↑j
                                        ; sub_14076A5CC+DC3F8↓j
                mov     eax, [rbx+0B8h]
                test    al, 20h
                jnz     loc_1408469C9

loc_14076A7F9:                          ; CODE XREF: sub_14076A5CC+DC41A↓j
                                        ; sub_14076A5CC+DC438↓j ...
                mov     rcx, [rbx+128h]
                test    rcx, rcx
                jz      short loc_14076A835
                cmp     [r13+0], r15w
                jz      short loc_14076A835
                lea     r8, [rbx+198h]
                lea     rdx, [rsp+240h+var_210+1]
                call    sub_14077AA10
                mov     edi, eax
                test    eax, eax
                js      loc_14084697E
                cmp     byte ptr [rsp+240h+var_210+1], r15b
                jz      short loc_14076A835
                or      dword ptr [rbx+0B8h], 10h

loc_14076A835:                          ; CODE XREF: sub_14076A5CC+237↑j
                                        ; sub_14076A5CC+23E↑j ...
                mov     rsi, [rbx+138h]
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    rsi, rsi
                jnz     loc_140846A40

loc_14076A849:                          ; CODE XREF: sub_14076A5CC+DC489↓j
                mov     rsi, [rbx+148h]
                test    rsi, rsi
                jnz     loc_140846A82

loc_14076A859:                          ; CODE XREF: sub_14076A5CC+DC4CB↓j
                mov     eax, [rbx+0B8h]
                test    al, 20h
                jnz     loc_14076A99E
                xor     edx, edx
                lea     rcx, [rsp+240h+var_1F0]
                mov     r8d, 0A0h
                call    memset
                mov     r9, [rbx+10h]
                lea     rax, qword_14000C538
                mov     rdx, [rbx+40h]
                lea     rsi, [rbx+0F0h]
                mov     qword ptr [rsp+240h+var_1F0], rax
                lea     r14, [rbx+110h]
                mov     ecx, 6
                mov     dword ptr [rsp+240h+var_218], 4
                lea     rax, qword_14000C520
                mov     dword ptr [rsp+240h+var_1E8], 0Dh
                mov     [rsp+240h+var_1C8], rax
                lea     rax, qword_14000C508
                mov     [rbp+140h+var_1A0], rax
                lea     rax, [rsp+240h+var_210]
                mov     [rbp+140h+var_190], rax
                lea     r8d, [rcx+2]
                lea     rax, qword_14000C4F0
                mov     [rsp+240h+var_1E0], rsi
                mov     [rbp+140h+var_178], rax
                lea     rax, [rsp+240h+var_208]
                mov     [rbp+140h+var_168], rax
                lea     rax, [rsp+240h+var_1F0]
                mov     qword ptr [rsp+240h+var_220], rax
                mov     [rsp+240h+var_1D8], 10h
                mov     [rbp+140h+var_1C0], 12h
                mov     [rbp+140h+var_1B8], r14
                mov     [rbp+140h+var_1AC], ecx
                mov     [rbp+140h+var_198], 11h
                mov     [rbp+140h+var_188], 1
                mov     dword ptr [rbp+140h+var_170], 2012h
                mov     [rbp+140h+var_15C], ecx
                call    sub_14073EE68
                mov     edi, eax
                test    eax, eax
                js      short loc_14076A9A5
                cmp     dword ptr [rsp+240h+var_1D0], r15d
                jl      loc_140846A9C
                lea     rdx, [rbx+100h]
                mov     r8b, 1
                mov     rcx, rsi
                call    sub_140677A28
                mov     edi, eax
                test    eax, eax
                js      short loc_14076A9A5

loc_14076A953:                          ; CODE XREF: sub_14076A5CC+DC4D6↓j
                cmp     dword ptr [rbp+140h+var_1A8], r15d
                jl      loc_140846AA7

loc_14076A95D:                          ; CODE XREF: sub_14076A5CC+DC4E6↓j
                cmp     [rbp+140h+var_180], r15d
                movzx   eax, byte ptr [rsp+240h+var_210]
                cmovl   eax, r15d
                mov     byte ptr [rsp+240h+var_210], al
                cmp     al, r12b
                jz      short loc_14076A9E2

loc_14076A973:                          ; CODE XREF: sub_14076A5CC+41D↓j
                cmp     [rbp+140h+var_158], r15d
                jge     short loc_14076A985
                xor     edx, edx
                lea     rcx, [rsp+240h+var_208]
                call    RtlInitUnicodeString

loc_14076A985:                          ; CODE XREF: sub_14076A5CC+3AB↑j
                cmp     [rsp+240h+var_200], r15
                jnz     loc_140846AB7

loc_14076A990:                          ; CODE XREF: sub_14076A5CC+DC4F1↓j
                                        ; sub_14076A5CC+DC4FF↓j
                mov     rcx, rbx
                call    sub_14076A9F4
                mov     edi, eax
                test    eax, eax
                js      short loc_14076A9A5

loc_14076A99E:                          ; CODE XREF: sub_14076A5CC+295↑j
                or      dword ptr [rbx+0B8h], 1

loc_14076A9A5:                          ; CODE XREF: sub_14076A5CC+6E↑j
                                        ; sub_14076A5CC+1C3↑j ...
                lea     rcx, [rsp+240h+var_208]
                call    RtlFreeUnicodeString
                mov     eax, edi
                mov     rcx, [rbp+140h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+240h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076A9E2:                          ; CODE XREF: sub_14076A5CC+3A5↑j
                or      dword ptr [rbx+0B8h], 40h
                jmp     short loc_14076A973
; } // starts at 14076A5CC
sub_14076A5CC   endp

; ---------------------------------------------------------------------------
byte_14076A9EB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093F68↑o
                                        ; .pdata:000000014010A49C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14076A9F4   proc near               ; CODE XREF: sub_14076A5CC+3C7↑p
                                        ; DATA XREF: .rdata:0000000140093F94↑o ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  48h
arg_8           = dword ptr  50h
arg_10          = qword ptr  58h
arg_18          = qword ptr  60h

; FUNCTION CHUNK AT 0000000140846AD0 SIZE 00000337 BYTES

                mov     [rsp-40h+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 68h
                mov     r15, rcx
                lea     rax, [rbp+var_28]
                xor     r12d, r12d
                mov     [rbp+var_28], rax
                xorps   xmm0, xmm0
                lea     rcx, [rbp+var_28]
                movups  [rbp+var_18], xmm0
                mov     [rbp+var_20], rcx
                cmp     [r15+168h], r12
                jnz     loc_140846AD0
                mov     ebx, r12d

loc_14076AA39:                          ; CODE XREF: sub_14076A9F4+DC3F5↓j
                lea     rax, [rbp+var_28]
                cmp     [rbp+var_28], rax
                jnz     loc_140846DEE

loc_14076AA47:                          ; CODE XREF: sub_14076A9F4+DC0FA↓j
                mov     eax, ebx
                add     rsp, 68h
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
sub_14076A9F4   endp

byte_14076AA5B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093F94↑o
                                        ; .pdata:000000014010A4A8↑o

; =============== S U B R O U T I N E =======================================


sub_14076AA64   proc near               ; CODE XREF: sub_14069F1E0:loc_14069F38C↑p
                                        ; DATA XREF: .rdata:0000000140093FBC↑o ...

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846E08 SIZE 0000007D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rcx, dword_140C451E0
                call    ExAcquireFastMutex
                mov     rsi, cs:qword_140C451C0
                lea     rbp, qword_140C451C0
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  [rsp+48h+var_18], xmm0
                movups  [rsp+48h+var_28], xmm1
                cmp     rsi, rbp
                jnz     loc_14076AB34

loc_14076AAAE:                          ; CODE XREF: sub_14076AA64+F9↓j
                                        ; sub_14076AA64+104↓j
                mov     byte ptr [rbx+10h], 1
                mov     rax, cs:qword_140C451C8
                cmp     [rax], rbp
                jnz     loc_140846E7E
                mov     [rbx], rbp
                lea     rcx, dword_140C451E0
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C451C8, rbx
                call    KeReleaseGuardedMutex
                cmp     rsi, rbp
                jnz     short loc_14076AB1E
                mov     edx, 20h ; ' '
                mov     ecx, 200h
                mov     r8d, 59706E50h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_14076AB1E
                and     qword ptr [rax], 0
                lea     rcx, sub_140772A60
                mov     [rax+10h], rcx
                mov     edx, 4
                mov     rcx, rax
                mov     [rax+18h], rax
                call    ExQueueWorkItem

loc_14076AB1E:                          ; CODE XREF: sub_14076AA64+7E↑j
                                        ; sub_14076AA64+98↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14076AB34:                          ; CODE XREF: sub_14076AA64+44↑j
                mov     rdi, rsi

loc_14076AB37:                          ; CODE XREF: sub_14076AA64+10A↓j
                mov     ecx, [rdi+14h]
                cmp     ecx, [rbx+14h]
                jnz     short loc_14076AB62
                mov     eax, [rbx+18h]
                cmp     [rdi+18h], eax
                jnz     short loc_14076AB62
                cmp     ecx, 3
                jz      loc_140846E08
                cmp     ecx, 2
                jz      loc_140846E5E

loc_14076AB59:                          ; CODE XREF: sub_14076AA64+DC3EF↓j
                                        ; sub_14076AA64+DC40F↓j
                mov     byte ptr [rdi+10h], 0
                jmp     loc_14076AAAE
; ---------------------------------------------------------------------------

loc_14076AB62:                          ; CODE XREF: sub_14076AA64+D9↑j
                                        ; sub_14076AA64+E1↑j ...
                mov     rdi, [rdi]
                cmp     rdi, rbp
                jz      loc_14076AAAE
                jmp     short loc_14076AB37
sub_14076AA64   endp

; ---------------------------------------------------------------------------
byte_14076AB70  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140093FBC↑o
                                        ; .pdata:000000014010A4B4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14076AB78   proc near               ; CODE XREF: sub_14069F59C+1EB↑p
                                        ; DATA XREF: .rdata:0000000140093FE0↑o ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = qword ptr  20h
arg_8           = dword ptr  28h
arg_10          = dword ptr  30h
arg_18          = dword ptr  38h

; FUNCTION CHUNK AT 0000000140846E86 SIZE 00000025 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                xor     esi, esi
                lea     rax, [rbp+arg_8]
                mov     [rsp+70h+var_20], esi
                mov     rbx, rdx
                mov     [r11-40h], rax
                mov     rdi, rcx
                mov     [rsp+70h+var_30], 4
                lea     rax, [rbp+arg_18]
                mov     [r11-50h], rax
                lea     r8d, [rsi+1]
                lea     rax, [rbp+arg_10]
                mov     [rdx], sil
                mov     [r11-58h], rax
                mov     rdx, rcx
                mov     rcx, cs:qword_140CF4378
                lea     rax, qword_14000A460
                mov     [r11-60h], rax
                xor     r9d, r9d
                mov     [r11-68h], rsi
                mov     [rbp+arg_18], esi
                mov     [rbp+var_10], esi
                mov     [rbp+var_C], esi
                mov     [rbp+arg_10], esi
                mov     [rbp+arg_8], esi
                call    sub_1406CC6BC
                mov     edx, eax
                test    eax, eax
                js      loc_14076ACD1
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rbp+arg_8]
                mov     [rsp+70h+var_20], esi
                lea     r8d, [rsi+1]
                mov     [rsp+70h+var_28], rax
                xor     r9d, r9d
                mov     [rsp+70h+var_30], 4
                lea     rax, [rbp+var_10]
                mov     [rsp+70h+var_38], rax
                mov     rdx, rdi
                lea     rax, [rbp+arg_10]
                mov     [rsp+70h+var_40], rax
                lea     rax, qword_14000A490
                mov     [rsp+70h+var_48], rax
                mov     [rsp+70h+var_50], rsi
                call    sub_1406CC6BC
                mov     edx, eax
                test    eax, eax
                js      loc_14076ACD1
                mov     eax, [rbp+arg_18]
                bt      eax, 12h
                jb      loc_14076ACE4
                mov     ecx, [rbp+var_10]
                and     eax, 400h
                jnz     loc_140846E86

loc_14076AC69:                          ; CODE XREF: sub_14076AB78+DC317↓j
                test    eax, eax
                jnz     loc_140846E94

loc_14076AC71:                          ; CODE XREF: sub_14076AB78+DC32E↓j
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rbp+arg_8]
                mov     [rsp+70h+var_20], esi
                xor     r9d, r9d
                mov     [rsp+70h+var_28], rax
                mov     rdx, rdi
                mov     [rsp+70h+var_30], 4
                lea     rax, [rbp+var_C]
                mov     [rsp+70h+var_38], rax
                lea     rax, [rbp+arg_10]
                mov     [rsp+70h+var_40], rax
                lea     r8d, [r9+1]
                lea     rax, qword_14000C550
                mov     [rsp+70h+var_48], rax
                mov     [rsp+70h+var_50], rsi
                call    sub_1406CC6BC
                mov     edx, eax
                test    eax, eax
                js      short loc_14076ACD1
                test    [rbp+var_C], 420h
                jz      short loc_14076ACD1

loc_14076ACCE:                          ; CODE XREF: sub_14076AB78+DC31F↓j
                                        ; sub_14076AB78+DC328↓j
                mov     byte ptr [rbx], 1

loc_14076ACD1:                          ; CODE XREF: sub_14076AB78+78↑j
                                        ; sub_14076AB78+D0↑j ...
                mov     rbx, [rsp+70h+arg_0]
                mov     eax, edx
                add     rsp, 70h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14076ACE4:                          ; CODE XREF: sub_14076AB78+DD↑j
                                        ; sub_14076AB78+DC311↓j
                mov     [rbx], sil
                jmp     short loc_14076ACD1
sub_14076AB78   endp

; ---------------------------------------------------------------------------
algn_14076ACE9:                         ; DATA XREF: .rdata:0000000140093FE0↑o
                                        ; .pdata:000000014010A4C0↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14076ACF0   proc near               ; CODE XREF: sub_140735D48+BA8↑p
                                        ; sub_1408B5F80+6F8↓p
                                        ; DATA XREF: ...

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140846EAC SIZE 0000008A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                xor     r13d, r13d
                mov     [rbp+57h+var_98], r8
                mov     [rbp+57h+var_90], r13d
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_78], r13
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+57h+var_A0], r13d
                mov     r12, r8
                movups  [rbp+57h+var_88], xmm0
                mov     rax, gs:188h
                mov     rbx, rcx
                mov     [rbp+57h+var_50], rdx
                mov     r15d, r13d
                mov     [rbp+57h+var_68], r13
                mov     edi, r13d
                mov     esi, r13d
                add     [rax+1E4h], r14w
                mov     dl, 1
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceSharedLite
                test    rbx, rbx
                jz      short loc_14076AD7E
                mov     rax, [rbx+138h]
                mov     r13, [rax+28h]

loc_14076AD7E:                          ; CODE XREF: sub_14076ACF0+81↑j
                mov     rdx, [r13+30h]
                lea     rax, [rbp+57h+var_78]
                xor     ecx, ecx
                xor     r9d, r9d
                mov     [rsp+0F0h+var_B8], rcx
                mov     [rsp+0F0h+var_C0], rax
                mov     byte ptr [rsp+0F0h+var_C8], cl
                lea     r8d, [rcx+10h]
                mov     dword ptr [rsp+0F0h+var_D0], 2001Fh
                mov     rcx, cs:qword_140CF4378
                call    sub_14062C9F8
                mov     ebx, eax
                test    eax, eax
                js      loc_14076AF1B
                mov     rcx, [rbp+57h+var_78]
                lea     rax, aUniqueparentid ; "UniqueParentID"
                mov     qword ptr [rbp+57h+var_88+8], rax
                lea     r9, [rbp+57h+var_48]
                lea     rax, [rbp+57h+var_A0]
                mov     dword ptr [rbp+57h+var_88], 1E001Ch
                mov     [rsp+0F0h+var_C8], rax
                lea     rdx, [rbp+57h+var_88]
                mov     r8d, 2
                mov     dword ptr [rsp+0F0h+var_D0], 10h
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                jns     loc_140846EAC
                mov     edx, 42h ; 'B'
                mov     dword ptr [rbp+57h+var_88], 1E001Ch
                lea     rax, aParentidprefix ; "ParentIdPrefix"
                mov     [rbp+57h+var_A0], edx
                mov     r12d, 6E657050h
                mov     qword ptr [rbp+57h+var_88+8], rax
                mov     r8d, r12d
                lea     ecx, [rdx-41h]
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140846F2C
                mov     rcx, [rbp+57h+var_78]
                lea     rax, [rbp+57h+var_A0]
                mov     [rsp+0F0h+var_C8], rax
                lea     rdx, [rbp+57h+var_88]
                mov     eax, [rbp+57h+var_A0]
                mov     r9, rsi
                mov     r8d, 2
                mov     dword ptr [rsp+0F0h+var_D0], eax
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_14076AF96
                cmp     dword ptr [rsi+4], 1
                jnz     loc_140846F06
                mov     r13d, [rsi+8]
                mov     r8d, r12d
                mov     edx, r13d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140846F2C
                lea     r8, [rsi+0Ch]
                mov     edx, r13d
                mov     rcx, rax
                call    sub_1402F1C38

loc_14076AE9F:                          ; CODE XREF: sub_14076ACF0+4A5↓j
                                        ; sub_14076ACF0+DC207↓j
                mov     r13, [rbp+57h+var_50]
                test    r13, r13
                jz      loc_14076AF81
                mov     rax, r14

loc_14076AEAF:                          ; CODE XREF: sub_14076ACF0+1C8↓j
                inc     rax
                cmp     [r13+rax*2+0], r15w
                jnz     short loc_14076AEAF

loc_14076AEBA:                          ; CODE XREF: sub_14076ACF0+1D2↓j
                                        ; sub_14076ACF0+294↓j
                inc     r14
                cmp     [rdi+r14*2], r15w
                jnz     short loc_14076AEBA
                add     eax, 2
                mov     r8d, r12d
                add     eax, r14d
                mov     ecx, 1
                mov     edx, eax
                add     rdx, rdx
                mov     [rbp+57h+var_A0], eax
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_140846F2C
                mov     edx, [rbp+57h+var_A0]
                mov     rcx, rax
                test    r13, r13
                jz      loc_14076AF89
                mov     r9, rdi
                mov     [rsp+0F0h+var_D0], r13
                lea     r8, aSS_4       ; "%s&%s"
                call    sub_140311280

loc_14076AF0E:                          ; CODE XREF: sub_14076ACF0+2A1↓j
                                        ; sub_14076ACF0+2C4↓j ...
                mov     r12, [rbp+57h+var_98]

loc_14076AF12:                          ; CODE XREF: sub_14076ACF0+DC211↓j
                mov     rcx, [rbp+57h+var_78]
                call    ZwClose

loc_14076AF1B:                          ; CODE XREF: sub_14076ACF0+C5↑j
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    rsi, rsi
                jz      short loc_14076AF44
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14076AF44:                          ; CODE XREF: sub_14076ACF0+248↑j
                test    rdi, rdi
                jz      short loc_14076AF53
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14076AF53:                          ; CODE XREF: sub_14076ACF0+257↑j
                mov     [r12], r15
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_18]
                add     rsp, 0C0h
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

loc_14076AF81:                          ; CODE XREF: sub_14076ACF0+1B6↑j
                mov     rax, r15
                jmp     loc_14076AEBA
; ---------------------------------------------------------------------------

loc_14076AF89:                          ; CODE XREF: sub_14076ACF0+204↑j
                mov     r8, rdi
                call    sub_140371440
                jmp     loc_14076AF0E
; ---------------------------------------------------------------------------

loc_14076AF96:                          ; CODE XREF: sub_14076ACF0+170↑j
                lea     rdx, [r13+28h]
                mov     [rbp+57h+var_A0], 1Fh
                mov     r8b, 1
                lea     rcx, [rbp+57h+var_88]
                call    RtlUpcaseUnicodeString
                xor     r10d, r10d
                mov     ebx, eax
                test    eax, eax
                js      loc_14076AF0E
                mov     rdx, qword ptr [rbp+57h+var_88+8]
                mov     r8d, r10d
                movzx   ecx, word ptr [rbp+57h+var_88]
                mov     r9d, r10d
                shr     rcx, 1
                lea     rax, [rdx+rcx*2]
                cmp     rdx, rax
                cmova   rcx, r10
                test    rcx, rcx
                jz      short loc_14076AFF1

loc_14076AFDB:                          ; CODE XREF: sub_14076ACF0+2FF↓j
                movzx   eax, word ptr [rdx]
                inc     r9
                imul    r8d, 25h ; '%'
                lea     rdx, [rdx+2]
                add     r8d, eax
                cmp     r9, rcx
                jb      short loc_14076AFDB

loc_14076AFF1:                          ; CODE XREF: sub_14076ACF0+2E9↑j
                imul    eax, r8d, 12B9B0A5h
                lea     rcx, [rbp+57h+var_88]
                cdq
                mov     ebx, eax
                mov     eax, 44B82F99h
                xor     ebx, edx
                sub     ebx, edx
                imul    ebx
                sar     edx, 1Ch
                mov     eax, edx
                shr     eax, 1Fh
                add     edx, eax
                imul    eax, edx, 3B9ACA07h
                sub     ebx, eax
                mov     [rbp+57h+var_70], ebx
                call    RtlFreeUnicodeString
                mov     eax, [rbp+57h+var_A0]
                mov     r8d, r12d
                add     eax, eax
                mov     ecx, 1
                mov     edx, eax
                mov     [rbp+57h+var_60], rax
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140846F2C
                mov     eax, [r13+98h]
                lea     r9, aNextparentid ; "NextParentID"
                mov     rdx, [rbp+57h+var_60]
                lea     r8, aSXX        ; "%s.%x.%x"
                mov     dword ptr [rsp+0F0h+var_C8], eax
                mov     rcx, rdi
                mov     dword ptr [rsp+0F0h+var_D0], ebx
                call    sub_14021C308
                mov     rcx, cs:qword_140CF4378
                lea     r8, [rbp+57h+var_68]
                mov     edx, 5
                call    sub_14062C5C0
                mov     ebx, eax
                test    eax, eax
                js      loc_14076AF0E
                mov     rdx, rdi
                lea     rcx, [rbp+57h+var_88]
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+var_68]
                lea     rax, [rbp+57h+var_A0]
                mov     [rsp+0F0h+var_C8], rax
                lea     r9, [rbp+57h+var_48]
                mov     r8d, 2
                mov     dword ptr [rsp+0F0h+var_D0], 10h
                lea     rdx, [rbp+57h+var_88]
                call    ZwQueryValueKey
                xor     ecx, ecx
                lea     r9d, [rcx+4]
                test    eax, eax
                jns     loc_140846F10

loc_14076B0D2:                          ; CODE XREF: sub_14076ACF0+DC224↓j
                                        ; sub_14076ACF0+DC237↓j
                mov     eax, ecx

loc_14076B0D4:                          ; CODE XREF: sub_14076ACF0+DC231↓j
                mov     rcx, [rbp+57h+var_68]
                lea     rdx, [rbp+57h+var_88]
                inc     eax
                mov     dword ptr [rsp+0F0h+var_C8], r9d
                mov     [rbp+57h+var_90], eax
                xor     r8d, r8d
                lea     rax, [rbp+57h+var_90]
                mov     [rsp+0F0h+var_D0], rax
                call    ZwSetValueKey
                xor     edx, edx
                mov     ebx, eax
                test    eax, eax
                js      loc_14076AF0E
                mov     eax, [rbp+57h+var_90]
                lea     rcx, aParentidprefix ; "ParentIdPrefix"
                dec     eax
                mov     qword ptr [rbp+57h+var_88+8], rcx
                mov     rcx, [rbp+57h+var_60]
                lea     r8, [rbp+57h+var_58]
                mov     [rsp+0F0h+var_B0], eax
                xor     r9d, r9d
                mov     [rbp+57h+var_90], eax
                mov     eax, [rbp+57h+var_70]
                mov     dword ptr [rsp+0F0h+var_B8], eax
                shr     rcx, 1
                mov     dword ptr [rbp+57h+var_88], 1E001Ch
                mov     eax, [r13+98h]
                mov     dword ptr [rsp+0F0h+var_C0], eax
                lea     rax, aXXX       ; "%x&%x&%x"
                mov     [rsp+0F0h+var_C8], rax
                mov     [rsp+0F0h+var_D0], rdx
                mov     rdx, rcx
                mov     rcx, rdi
                mov     [rbp+57h+var_58], rdi
                call    sub_14021D28C
                mov     rax, [rbp+57h+var_58]
                lea     rdx, [rbp+57h+var_88]
                mov     rcx, [rbp+57h+var_78]
                sub     rax, rdi
                sar     rax, 1
                mov     r9d, 1
                inc     eax
                xor     r8d, r8d
                mov     [rbp+57h+var_A0], eax
                add     eax, eax
                mov     dword ptr [rsp+0F0h+var_C8], eax
                mov     [rsp+0F0h+var_D0], rdi
                call    ZwSetValueKey
                mov     ebx, eax
                test    eax, eax
                jns     loc_14076AE9F
                jmp     loc_14076AF0E
; } // starts at 14076ACF0
sub_14076ACF0   endp

; ---------------------------------------------------------------------------
byte_14076B1A0  db 10h dup(0CCh)        ; DATA XREF: .rdata:0000000140094018↑o
                                        ; .pdata:000000014010A4CC↑o
; Exported entry 815. IoEnumerateRegisteredFiltersList

; =============== S U B R O U T I N E =======================================


