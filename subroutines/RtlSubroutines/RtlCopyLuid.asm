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


                public IoEnumerateRegisteredFiltersList
IoEnumerateRegisteredFiltersList proc near
                                        ; DATA XREF: .rdata:0000000140094044↑o
                                        ; .pdata:000000014010A4D8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140846F36 SIZE 00000027 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                xor     ebx, ebx
                mov     rdi, r8
                mov     esi, edx
                mov     r14, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, unk_140C459A0
                call    ExAcquireResourceExclusiveLite
                test    al, al
                jz      loc_140846F36

loc_14076B1F9:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+DBDA8↓j
                mov     rax, cs:qword_140C45AF0
                lea     rbp, qword_140C45AF0
                shr     esi, 3

loc_14076B20A:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+D4↓j
                cmp     rax, rbp
                jnz     short loc_14076B27F
                cmp     esi, ebx
                mov     [rdi], ebx
                mov     rbx, cs:qword_140C45AF0
                sbb     edi, edi
                and     edi, 0C0000023h
                test    esi, esi
                jz      short loc_14076B247

loc_14076B226:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+95↓j
                cmp     rbx, rbp
                jz      short loc_14076B247
                mov     rcx, [rbx+10h]
                call    ObfReferenceObject
                mov     rax, [rbx+10h]
                mov     [r14], rax
                add     r14, 8
                mov     rbx, [rbx]
                add     esi, 0FFFFFFFFh
                jnz     short loc_14076B226

loc_14076B247:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+74↑j
                                        ; IoEnumerateRegisteredFiltersList+79↑j
                lea     rcx, unk_140C459A0
                call    ExReleaseResourceLite

loc_14076B253:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+DBD94↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076B27F:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+5D↑j
                mov     rax, [rax]
                inc     ebx
                jmp     short loc_14076B20A
IoEnumerateRegisteredFiltersList endp

; ---------------------------------------------------------------------------
byte_14076B286  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140094044↑o
                                        ; .pdata:000000014010A4D8↑o

; =============== S U B R O U T I N E =======================================


sub_14076B28C   proc near               ; CODE XREF: sub_14069EF80+117↑p
                                        ; DATA XREF: .rdata:0000000140094074↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846F5E SIZE 0000001E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     edx, [rcx+58h]
                xor     ebp, ebp
                mov     rbx, rcx
                sub     edx, 4
                jz      short loc_14076B2BF
                sub     edx, 6
                jz      short loc_14076B2BF
                cmp     edx, 1
                jnz     short loc_14076B31E

loc_14076B2BF:                          ; CODE XREF: sub_14076B28C+27↑j
                                        ; sub_14076B28C+2C↑j
                lea     rcx, dword_140C44EA0
                call    ExAcquireFastMutex
                lea     rcx, [rbx+78h]
                call    sub_1402F1EC4
                mov     eax, eax
                lea     rcx, unk_140C44EE0
                shl     rax, 4
                lea     r15, [rsp+58h+var_38]
                add     rax, rcx
                mov     [rsp+58h+var_38], rax
                xor     esi, esi
                lea     rax, unk_140C44FB0
                mov     [rsp+58h+var_30], rax

loc_14076B2FC:                          ; CODE XREF: sub_14076B28C+84↓j
                mov     r14, [r15]
                mov     rdi, [r14]

loc_14076B302:                          ; CODE XREF: sub_14076B28C+CE↓j
                                        ; sub_14076B28C+DD↓j ...
                cmp     rdi, r14
                jnz     short loc_14076B33E
                inc     esi
                add     r15, 8
                cmp     esi, 2
                jb      short loc_14076B2FC
                lea     rcx, dword_140C44EA0
                call    KeReleaseGuardedMutex

loc_14076B31E:                          ; CODE XREF: sub_14076B28C+31↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, ebp
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
                align 2

loc_14076B33E:                          ; CODE XREF: sub_14076B28C+79↑j
                mov     r13, rdi
                mov     rdi, [rdi]
                cmp     esi, 1
                jb      loc_140846F5E

loc_14076B34D:                          ; CODE XREF: sub_14076B28C+DBCEB↓j
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_14069FAC8
                test    al, al
                jz      short loc_14076B302
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_14069FBBC
                mov     ebp, eax
                jmp     short loc_14076B302
sub_14076B28C   endp

; ---------------------------------------------------------------------------
byte_14076B36B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140094074↑o
                                        ; .pdata:000000014010A4E4↑o

; =============== S U B R O U T I N E =======================================


sub_14076B374   proc near               ; CODE XREF: sub_140735D48+90C↑p
                                        ; DATA XREF: .pdata:000000014010A4F0↑o

var_68          = qword ptr -68h
var_58          = word ptr -58h
var_8           = byte ptr -8
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 80h
                xor     ebp, ebp
                mov     rdi, rcx
                xor     edx, edx
                mov     [rax+8], rbp
                lea     rcx, [rax-58h]
                lea     r8d, [rbp+48h]
                call    memset
                mov     rcx, [rdi+20h]
                lea     rax, [rsp+88h+arg_0]
                xor     r9d, r9d
                mov     [rsp+88h+var_68], rax
                mov     r8d, 0C00000BBh
                mov     [rsp+88h+var_58], 151Bh
                lea     rdx, [rsp+88h+var_58]
                call    sub_1406703BC
                mov     rbx, [rsp+88h+arg_0]
                test    eax, eax
                mov     esi, eax
                cmovs   rbx, rbp
                js      short loc_14076B427
                mov     rcx, rbx
                call    sub_14076B44C
                mov     [rdi+1D0h], ax
                xor     edx, edx
                mov     eax, [rbx+10h]
                mov     rcx, rbx
                mov     [rdi+1C8h], eax
                mov     eax, [rbx+14h]
                mov     [rdi+1CCh], eax
                call    ExFreePoolWithTag

loc_14076B40B:                          ; CODE XREF: sub_14076B374+D0↓j
                lea     r11, [rsp+88h+var_8]
                mov     eax, esi
                mov     rbx, [r11+18h]
                mov     rbp, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076B427:                          ; CODE XREF: sub_14076B374+6A↑j
                or      dword ptr [rdi+1C8h], 0FFFFFFFFh
                mov     eax, 0FFFFh
                mov     [rdi+1D0h], ax
                mov     dword ptr [rdi+1CCh], 0FFFFFFF0h
                jmp     short loc_14076B40B
sub_14076B374   endp

; ---------------------------------------------------------------------------
byte_14076B446  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A4F0↑o

; =============== S U B R O U T I N E =======================================


sub_14076B44C   proc near               ; CODE XREF: sub_14076B374+6F↑p
                                        ; DATA XREF: .rdata:00000001400940B4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846F7C SIZE 00000065 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, rcx
                lea     rcx, dword_140C453C0
                call    ExAcquireFastMutex
                xor     ebx, ebx
                cmp     ebx, cs:dword_140C452E8
                jz      short loc_14076B4D6

loc_14076B479:                          ; CODE XREF: sub_14076B44C+5B↓j
                mov     edx, ebx
                shl     rdx, 4
                add     rdx, cs:qword_140C452F0
                cmp     rbp, rdx
                jz      short loc_14076B4A9
                mov     r8d, 10h
                mov     rcx, rbp
                call    RtlCompareMemory
                cmp     rax, 10h
                jz      short loc_14076B4A9
                inc     ebx
                cmp     ebx, cs:dword_140C452E8
                jb      short loc_14076B479

loc_14076B4A9:                          ; CODE XREF: sub_14076B44C+3D↑j
                                        ; sub_14076B44C+51↑j
                cmp     ebx, cs:dword_140C452E8
                jz      short loc_14076B4D6

loc_14076B4B1:                          ; CODE XREF: sub_14076B44C+99↓j
                                        ; sub_14076B44C+C3↓j
                lea     rcx, dword_140C453C0
                call    KeReleaseGuardedMutex
                mov     rbp, [rsp+28h+arg_8]
                movzx   eax, bx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076B4D6:                          ; CODE XREF: sub_14076B44C+2B↑j
                                        ; sub_14076B44C+63↑j
                cmp     ebx, cs:dword_140C453F8
                jz      loc_140846F7C

loc_14076B4E2:                          ; CODE XREF: sub_14076B44C+DBB88↓j
                                        ; sub_14076B44C+DBB90↓j
                cmp     ebx, 0FFFFFFFFh
                jz      short loc_14076B4B1
                mov     r9d, cs:dword_140C452E8
                mov     rdx, cs:qword_140C452F0
                mov     r8d, r9d
                movups  xmm0, xmmword ptr [rbp+0]
                add     r8, r8
                inc     r9d
                mov     cs:dword_140C452E8, r9d
                movdqu  xmmword ptr [rdx+r8*8], xmm0
                jmp     short loc_14076B4B1
sub_14076B44C   endp

; ---------------------------------------------------------------------------
algn_14076B511:                         ; DATA XREF: .rdata:00000001400940B4↑o
                                        ; .pdata:000000014010A4FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14076B520   proc near               ; DATA XREF: .rdata:00000001400940DC↑o
                                        ; .pdata:000000014010A508↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846FE2 SIZE 00000066 BYTES

                mov     r11, rsp
                mov     [r11+8], rsi
                mov     [r11+10h], rdi
                mov     [r11+18h], r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [r11-18h], 0
                mov     rdi, rcx
                mov     eax, [rcx+10h]
                test    al, 1
                jz      loc_140846FE2
                xor     r9d, r9d
                lea     rcx, unk_140C19E00
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                lea     r15, [rdi+28h]
                mov     r14, [r15]

loc_14076B563:                          ; CODE XREF: sub_14076B520+B3↓j
                cmp     r14, r15
                jz      short loc_14076B5D5
                lea     rsi, [r14-28h]
                cmp     qword ptr [rsi], 0
                jz      short loc_14076B57F
                mov     rcx, rsi
                call    sub_14076B63C
                and     qword ptr [rsi+40h], 0

loc_14076B57F:                          ; CODE XREF: sub_14076B520+50↑j
                mov     rdx, [rsi+38h]
                test    rdx, rdx
                jz      short loc_14076B5BC
                mov     eax, [rsi+10h]
                test    al, 8
                jnz     short loc_14076B5BC
                mov     rcx, [rdx+48h]
                sub     rcx, cs:qword_140984ED8
                jnz     short loc_14076B5A7
                mov     rcx, [rdx+50h]
                sub     rcx, cs:qword_140984EE0

loc_14076B5A7:                          ; CODE XREF: sub_14076B520+7A↑j
                test    rcx, rcx
                jz      loc_140846FF7

loc_14076B5B0:                          ; CODE XREF: sub_14076B520+DBB12↓j
                lea     rcx, off_140C020D0
                call    sub_14069D618

loc_14076B5BC:                          ; CODE XREF: sub_14076B520+66↑j
                                        ; sub_14076B520+6D↑j
                and     qword ptr [rsi+38h], 0
                lea     rcx, off_140C020F0
                mov     r14, [r14]
                mov     rdx, rsi
                call    sub_14069D618
                jmp     short loc_14076B563
; ---------------------------------------------------------------------------

loc_14076B5D5:                          ; CODE XREF: sub_14076B520+46↑j
                xor     edx, edx
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                xor     esi, esi
                cmp     [rdi+40h], esi
                jbe     short loc_14076B5FE

loc_14076B5EA:                          ; CODE XREF: sub_14076B520+DC↓j
                mov     rax, [rdi+48h]
                mov     rdx, [rax+rsi*8]
                test    rdx, rdx
                jnz     short loc_14076B626

loc_14076B5F7:                          ; CODE XREF: sub_14076B520+112↓j
                inc     esi
                cmp     esi, [rdi+40h]
                jb      short loc_14076B5EA

loc_14076B5FE:                          ; CODE XREF: sub_14076B520+C8↑j
                mov     rcx, [rdi+48h]
                lea     rax, [rdi+50h]
                cmp     rcx, rax
                jnz     loc_140847037

loc_14076B60F:                          ; CODE XREF: sub_14076B520+DBB23↓j
                mov     rsi, [rsp+38h+arg_0]
                mov     rdi, [rsp+38h+arg_8]
                mov     r14, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076B626:                          ; CODE XREF: sub_14076B520+D5↑j
                lea     rcx, off_140C02110
                call    sub_14069D618
                jmp     short loc_14076B5F7
sub_14076B520   endp

; ---------------------------------------------------------------------------
byte_14076B634  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400940DC↑o
                                        ; .pdata:000000014010A508↑o

; =============== S U B R O U T I N E =======================================


sub_14076B63C   proc near               ; CODE XREF: sub_14076B520+55↑p
                                        ; sub_1407C38A8+9B36C↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx+38h]
                mov     rbx, rcx
                dec     dword ptr [rax+24h]
                mov     rcx, [rcx]
                cmp     [rcx+8], rbx
                jnz     short loc_14076B686
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_14076B686
                mov     [rax], rcx
                mov     [rcx+8], rax
                test    dword ptr [rbx+10h], 80000h
                jnz     short loc_14076B675

loc_14076B66E:                          ; CODE XREF: sub_14076B63C+48↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076B675:                          ; CODE XREF: sub_14076B63C+30↑j
                mov     rcx, rbx
                call    sub_1407C6270
                and     dword ptr [rbx+10h], 0FFCFFFFFh
                jmp     short loc_14076B66E
; ---------------------------------------------------------------------------

loc_14076B686:                          ; CODE XREF: sub_14076B63C+17↑j
                                        ; sub_14076B63C+20↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14076B63C   endp

; ---------------------------------------------------------------------------
algn_14076B68D:                         ; DATA XREF: .pdata:000000014010A514↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14076B6A0   proc near               ; DATA XREF: .rdata:0000000140094100↑o
                                        ; .pdata:000000014010A520↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140847048 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rdi
                sub     rsp, 30h
                lea     rbp, off_140C02CF0

loc_14076B6B6:                          ; CODE XREF: sub_14076B6A0+F4↓j
                and     [rsp+38h+var_18], 0
                lea     rcx, unk_140C19E00
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     rbx, cs:off_140C02CF0
                mov     rcx, [rbx+18h]
                test    rcx, rcx
                jz      short loc_14076B723
                mov     rax, cs:qword_140C19E38
                cmp     [rcx+10h], rax
                jz      short loc_14076B723
                xor     edx, edx
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                mov     cl, 1
                call    sub_140359E1C
                xor     ecx, ecx
                call    sub_140359E1C
                and     [rsp+38h+var_18], 0
                lea     rcx, unk_140C19E00
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject

loc_14076B723:                          ; CODE XREF: sub_14076B6A0+3E↑j
                                        ; sub_14076B6A0+4B↑j
                mov     rax, cs:off_140C02CF0
                cmp     [rax+8], rbp
                jnz     FatalListEntryError_108
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     FatalListEntryError_108
                mov     cs:off_140C02CF0, rcx
                xor     edx, edx
                mov     [rcx+8], rbp
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                mov     rdi, [rbx+18h]
                test    rdi, rdi
                jz      short loc_14076B77C
                mov     ecx, [rbx+10h]
                test    ecx, ecx
                jnz     short loc_14076B7AB
                xor     edx, edx

loc_14076B76C:                          ; CODE XREF: sub_14076B6A0+112↓j
                mov     rcx, rdi
                call    sub_140752ABC

loc_14076B774:                          ; CODE XREF: sub_14076B6A0+10E↓j
                mov     rcx, rdi
                call    sub_14030F7A4

loc_14076B77C:                          ; CODE XREF: sub_14076B6A0+C1↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                or      eax, 0FFFFFFFFh
                lock xadd cs:dword_140C11450, eax
                cmp     eax, 1
                jnz     loc_14076B6B6
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076B7AB:                          ; CODE XREF: sub_14076B6A0+C8↑j
                cmp     ecx, 1
                jnz     short loc_14076B774
                mov     dl, cl
                jmp     short loc_14076B76C
sub_14076B6A0   endp

; ---------------------------------------------------------------------------
byte_14076B7B4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140094100↑o
                                        ; .pdata:000000014010A520↑o

; =============== S U B R O U T I N E =======================================


sub_14076B7BC   proc near               ; CODE XREF: sub_140738BF8+705↑p
                                        ; DATA XREF: .pdata:000000014010A52C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx]
                xor     eax, eax
                mov     rdi, rdx
                mov     r8, [rbx+2D0h]
                test    r8, r8
                jnz     short loc_14076B7E6

loc_14076B7DA:                          ; CODE XREF: sub_14076B7BC+50↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076B7E6:                          ; CODE XREF: sub_14076B7BC+1C↑j
                test    byte ptr [r8+10h], 10h
                jnz     short loc_14076B80E
                test    dword ptr [rbx+230h], 100000h
                jnz     short loc_14076B815
                call    sub_14076B9F0

loc_14076B7FE:                          ; CODE XREF: sub_14076B7BC+57↓j
                                        ; sub_14076B7BC+5E↓j
                mov     r8d, eax
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14076B824
                jmp     short loc_14076B7DA
; ---------------------------------------------------------------------------

loc_14076B80E:                          ; CODE XREF: sub_14076B7BC+2F↑j
                mov     eax, 1
                jmp     short loc_14076B7FE
; ---------------------------------------------------------------------------

loc_14076B815:                          ; CODE XREF: sub_14076B7BC+3B↑j
                mov     eax, 2
                jmp     short loc_14076B7FE
sub_14076B7BC   endp

; ---------------------------------------------------------------------------
byte_14076B81C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010A52C↑o

; =============== S U B R O U T I N E =======================================


sub_14076B824   proc near               ; CODE XREF: sub_14076B7BC+4B↑p
                                        ; DATA XREF: .pdata:000000014010A538↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], r8d
                push    rdi
                sub     rsp, 50h
                xor     esi, esi
                mov     r9, rdx
                and     [rax-10h], esi
                mov     rdi, rcx
                mov     rdx, [rcx+30h]
                test    r8d, r8d
                mov     rcx, cs:qword_140CF4378
                lea     ebx, [rsi+1]
                mov     r8d, ebx
                jnz     short loc_14076B87E
                and     [rax-18h], esi
                xor     r9d, r9d
                and     [rax-20h], rsi
                and     [rax-28h], esi
                lea     rax, qword_14000BC30
                mov     [rsp+58h+var_30], rax
                and     [rsp+58h+var_38], rsi
                call    sub_1407374DC
                jmp     short loc_14076B8B0
; ---------------------------------------------------------------------------

loc_14076B87E:                          ; CODE XREF: sub_14076B824+33↑j
                mov     [rsp+58h+var_18], 4
                lea     rax, [rsp+58h+arg_10]
                mov     [rsp+58h+var_20], rax
                lea     rax, qword_14000BC30
                mov     [rsp+58h+var_28], 7
                mov     [rsp+58h+var_30], rax
                and     [rsp+58h+var_38], rsi
                call    sub_1407374DC
                mov     esi, eax

loc_14076B8B0:                          ; CODE XREF: sub_14076B824+58↑j
                mov     edx, [rsp+58h+arg_10]
                mov     rcx, rdi
                call    sub_14076B904
                cmp     [rsp+58h+arg_10], 2
                mov     rdi, [rdi+2D0h]
                jnz     short loc_14076B8DF
                mov     rax, cs:off_140C00A38
                xor     edx, edx
                mov     rcx, [rdi]
                call    sub_1404079D0
                test    al, al
                jnz     short loc_14076B8E1

loc_14076B8DF:                          ; CODE XREF: sub_14076B824+A4↑j
                xor     bl, bl

loc_14076B8E1:                          ; CODE XREF: sub_14076B824+B9↑j
                mov     al, [rdi+10h]
                and     al, 0FEh
                or      al, bl
                mov     rbx, [rsp+58h+arg_0]
                mov     [rdi+10h], al
                mov     eax, esi
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14076B824   endp

byte_14076B8FE  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A538↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14076B904   proc near               ; CODE XREF: sub_14076B824+93↑p
                                        ; DATA XREF: .rdata:000000014009413C↑o ...

var_B0          = qword ptr -0B0h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = byte ptr -80h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h

; FUNCTION CHUNK AT 0000000140847050 SIZE 00000016 BYTES

; __unwind { // __GSHandlerCheck
                test    edx, edx
                jnz     short loc_14076B90A
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076B90A:                          ; CODE XREF: sub_14076B904+2↑j
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     r11d, r11d
                mov     r9d, edx
                cmp     cs:dword_140C02E00, 5
                mov     r10, rcx
                jbe     loc_140847050
                mov     rdx, 400000000000h
                lea     rcx, dword_140C02E00
                call    sub_140209F38
                test    al, al
                jz      loc_140847050
                lea     rax, [rbp+57h+var_98]
                mov     [rbp+57h+var_A0], r9d
                mov     [rbp+57h+var_60], rax
                lea     r9d, [r11+7]
                lea     rax, [rbp+57h+var_38]
                mov     [rbp+57h+var_98], 1
                mov     [rbp+57h+var_50], rax
                lea     rdx, byte_14002459B
                mov     rax, [r10+30h]
                lea     rcx, dword_140C02E00
                mov     [rbp+57h+var_40], rax
                movzx   eax, word ptr [r10+28h]
                mov     [rbp+57h+var_38], eax
                lea     rax, [rbp+57h+var_A0]
                mov     [rbp+57h+var_30], rax
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_20], rax
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0D0h+var_B0], rax
                mov     [rbp+57h+var_58], 8
                mov     [rbp+57h+var_48], 2
                mov     [rbp+57h+var_34], r11d
                mov     [rbp+57h+var_28], 4
                mov     [rbp+57h+var_90], 1000000h
                mov     [rbp+57h+var_18], 8
                call    sub_1403761E4
                nop
                jmp     loc_140847050
; } // starts at 14076B904
sub_14076B904   endp

; ---------------------------------------------------------------------------
algn_14076B9E7:                         ; DATA XREF: .rdata:000000014009413C↑o
                                        ; .pdata:000000014010A544↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14076B9F0   proc near               ; CODE XREF: sub_14076B7BC+3D↑p
                                        ; DATA XREF: .pdata:000000014010A550↑o

var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_28], rax
                mov     ebp, 6
                lea     rsi, [rcx+10h]
                xorps   xmm0, xmm0
                mov     r14, rcx
                movups  [rsp+58h+var_38], xmm0
                xor     r15d, r15d
                lea     ebx, [rbp-5]

loc_14076BA31:                          ; CODE XREF: sub_14076B9F0+50↓j
                mov     rdi, [rsi]

loc_14076BA34:                          ; CODE XREF: sub_14076B9F0+A8↓j
                test    rdi, rdi
                jnz     short loc_14076BA85
                add     rsi, 8
                sub     rbp, rbx
                jnz     short loc_14076BA31
                cmp     dword ptr [rsp+58h+var_38+4], r15d
                ja      short loc_14076BA5C
                cmp     dword ptr [rsp+58h+var_38+0Ch], r15d
                ja      short loc_14076BA9A
                cmp     r15d, dword ptr [rsp+58h+var_38+8]
                sbb     eax, eax
                and     eax, 2
                mov     ebx, eax

loc_14076BA5C:                          ; CODE XREF: sub_14076B9F0+57↑j
                                        ; sub_14076B9F0+C2↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+58h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076BA85:                          ; CODE XREF: sub_14076B9F0+47↑j
                mov     rcx, [rdi]
                call    sub_14076BAC4
                mov     rdi, [rdi+8]
                movsxd  rcx, eax
                add     dword ptr [rsp+rcx*4+58h+var_38], ebx
                jmp     short loc_14076BA34
; ---------------------------------------------------------------------------

loc_14076BA9A:                          ; CODE XREF: sub_14076B9F0+5E↑j
                mov     rax, [r14]
                mov     rcx, [rax+2D0h]
                test    rcx, rcx
                jz      short loc_14076BAAF
                test    byte ptr [rcx+10h], 24h
                jnz     short loc_14076BAB4

loc_14076BAAF:                          ; CODE XREF: sub_14076B9F0+B7↑j
                mov     ebx, r15d
                jmp     short loc_14076BA5C
; ---------------------------------------------------------------------------

loc_14076BAB4:                          ; CODE XREF: sub_14076B9F0+BD↑j
                mov     ebx, 2
                jmp     short loc_14076BA5C
; } // starts at 14076B9F0
sub_14076B9F0   endp

; ---------------------------------------------------------------------------
byte_14076BABB  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A550↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14076BAC4   proc near               ; CODE XREF: sub_14076B9F0+98↑p
                                        ; DATA XREF: .rdata:0000000140094184↑o ...

var_50          = byte ptr -50h
var_40          = xmmword ptr -40h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140847066 SIZE 00000026 BYTES

                mov     [rsp-18h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                or      [rbp+arg_8], 0FFFFFFFFFFFFFFFFh
                lea     r8, [rbp+arg_0]
                mov     rsi, rcx
                xorps   xmm0, xmm0
                mov     rcx, [rcx+30h]
                xor     ebx, ebx
                and     [rbp+arg_0], rbx
                add     rcx, 18h
                xor     r9d, r9d
                mov     [rsp+70h+var_50], bl
                mov     edx, 20019h
                movups  [rbp+var_40], xmm0
                call    sub_140739E5C
                mov     rdi, [rbp+arg_0]
                test    eax, eax
                js      short loc_14076BB7C
                and     [rbp+var_2C], ebx
                lea     rax, aParameters ; "Parameters"
                and     [rbp+var_14], ebx
                lea     r8, [rbp+var_30]
                and     [rbp+arg_8], rbx
                lea     rcx, [rbp+arg_8]
                mov     qword ptr [rbp+var_40+8], rax
                xorps   xmm0, xmm0
                lea     rax, [rbp+var_40]
                mov     dword ptr [rbp+var_40], 160014h
                mov     edx, 20019h
                mov     [rbp+var_20], rax
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_28], rdi
                mov     [rbp+var_18], 240h
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                test    eax, eax
                js      short loc_14076BB7C
                mov     rcx, [rbp+arg_8]
                lea     r8, [rbp+arg_0]
                and     dword ptr [rbp+arg_0], ebx
                lea     rdx, aDmaremappingco ; "DmaRemappingCompatible"
                call    sub_1403B730C
                test    eax, eax
                jns     short loc_14076BBAF

loc_14076BB7C:                          ; CODE XREF: sub_14076BAC4+47↑j
                                        ; sub_14076BAC4+9B↑j ...
                mov     rcx, [rbp+arg_8]
                test    rcx, rcx
                jz      short loc_14076BB8F
                call    ZwClose
                and     [rbp+arg_8], 0

loc_14076BB8F:                          ; CODE XREF: sub_14076BAC4+BF↑j
                test    rdi, rdi
                jz      short loc_14076BB9C
                mov     rcx, rdi
                call    ZwClose

loc_14076BB9C:                          ; CODE XREF: sub_14076BAC4+CE↑j
                mov     eax, ebx
                mov     rbx, [rsp+70h+arg_10]
                add     rsp, 70h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076BBAF:                          ; CODE XREF: sub_14076BAC4+B6↑j
                mov     eax, dword ptr [rbp+arg_0]
                test    eax, eax
                jz      short loc_14076BBD8
                sub     eax, 1
                jz      short loc_14076BBD1
                cmp     eax, 1
                jnz     short loc_14076BB7C
                lea     ebx, [rax+2]
                call    sub_140364580
                test    eax, eax
                jz      short loc_14076BB7C
                jmp     loc_140847066
; ---------------------------------------------------------------------------

loc_14076BBD1:                          ; CODE XREF: sub_14076BAC4+F5↑j
                mov     ebx, 2
                jmp     short loc_14076BB7C
; ---------------------------------------------------------------------------

loc_14076BBD8:                          ; CODE XREF: sub_14076BAC4+F0↑j
                mov     ebx, 1
                jmp     short loc_14076BB7C
sub_14076BAC4   endp

; ---------------------------------------------------------------------------
byte_14076BBDF  db 11h dup(0CCh)        ; DATA XREF: .rdata:0000000140094184↑o
                                        ; .pdata:000000014010A55C↑o

; =============== S U B R O U T I N E =======================================


sub_14076BBF0   proc near               ; DATA XREF: .pdata:000000014010A568↑o
                                        ; sub_140A1EEE4+2FB7↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, gs:188h
                xor     edi, edi
                xor     ebp, ebp
                mov     rsi, rcx
                dec     word ptr [r14+1E6h]
                xor     edx, edx
                lea     rcx, qword_140C19278
                call    ExAcquirePushLockSharedEx
                mov     rbx, cs:qword_140C19240
                test    rsi, rsi
                jz      short loc_14076BC3E
                mov     rbx, [rsi+28h]

loc_14076BC3E:                          ; CODE XREF: sub_14076BBF0+48↑j
                lea     r15, qword_140C19240

loc_14076BC45:                          ; CODE XREF: sub_14076BBF0+C1↓j
                cmp     rbx, r15
                jz      short loc_14076BC64
                lea     rbp, [rbx-28h]
                mov     edx, 6E457845h
                mov     rcx, rbp
                call    ObReferenceObjectSafeWithTag
                test    al, al
                jz      short loc_14076BCAE
                mov     edi, 1

loc_14076BC64:                          ; CODE XREF: sub_14076BBF0+58↑j
                xor     edx, edx
                lea     rcx, qword_140C19278
                call    ExReleasePushLockEx
                mov     rcx, r14
                call    sub_140245770
                test    rsi, rsi
                jz      short loc_14076BC8C
                mov     edx, 6E457845h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag

loc_14076BC8C:                          ; CODE XREF: sub_14076BBF0+8D↑j
                mov     rbx, [rsp+38h+arg_0]
                neg     edi
                mov     rsi, [rsp+38h+arg_10]
                sbb     rax, rax
                and     rax, rbp
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076BCAE:                          ; CODE XREF: sub_14076BBF0+6D↑j
                mov     rbx, [rbx]
                jmp     short loc_14076BC45
sub_14076BBF0   endp

; ---------------------------------------------------------------------------
byte_14076BCB3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A568↑o

; =============== S U B R O U T I N E =======================================


sub_14076BCBC   proc near               ; CODE XREF: sub_140738050+38↑p
                                        ; sub_14097E51C+18A↓p
                                        ; DATA XREF: ...

var_148         = dword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_128         = dword ptr -128h
var_120         = dword ptr -120h
var_118         = dword ptr -118h
var_110         = dword ptr -110h
var_108         = dword ptr -108h
var_100         = dword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = dword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_B8          = byte ptr -0B8h
var_58          = qword ptr -58h
arg_20          = dword ptr  28h
arg_30          = dword ptr  38h

; FUNCTION CHUNK AT 000000014084708C SIZE 00000038 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 128h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+168h+var_58], rax
                xor     r11d, r11d
                mov     r15, r9
                mov     r14, r8
                mov     r13, rdx
                mov     r12, rcx
                mov     [rsp+168h+var_D8], r11
                cmp     [rsp+168h+arg_20], r11d
                jnz     loc_1408470BA
                cmp     [rsp+168h+arg_30], r11d
                jnz     loc_1408470BA
                test    r8, r8
                jnz     loc_14084708C

loc_14076BD1E:                          ; CODE XREF: sub_14076BCBC+DB3EF↓j
                mov     eax, [r15+10h]
                movzx   ecx, byte ptr [r15+0Fh]
                movzx   edx, byte ptr [r15+0Eh]
                movzx   r8d, byte ptr [r15+0Dh]
                movzx   r9d, byte ptr [r15+0Ch]
                movzx   r10d, byte ptr [r15+0Bh]
                movzx   r11d, byte ptr [r15+0Ah]
                movzx   ebx, byte ptr [r15+9]
                movzx   edi, byte ptr [r15+8]
                movzx   esi, word ptr [r15+6]
                movzx   ebp, word ptr [r15+4]
                mov     [rsp+168h+var_E0], eax
                mov     eax, [r15]
                mov     [rsp+168h+var_E8], ecx
                lea     rcx, [rsp+168h+var_B8]
                mov     [rsp+168h+var_F0], edx
                mov     [rsp+168h+var_F8], r8d
                xor     r8d, r8d
                mov     [rsp+168h+var_100], r9d
                xor     r9d, r9d
                mov     [rsp+168h+var_108], r10d
                mov     [rsp+168h+var_110], r11d
                mov     [rsp+168h+var_118], ebx
                mov     [rsp+168h+var_120], edi
                lea     edx, [r9+30h]
                mov     [rsp+168h+var_128], esi
                mov     [rsp+168h+var_130], ebp
                mov     dword ptr [rsp+168h+var_138], eax
                lea     rax, a08lx04x04x02x0_0 ; "{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%"...
                mov     [rsp+168h+var_140], rax
                mov     [rsp+168h+var_148], 800h
                call    sub_14021D28C
                test    eax, eax
                js      loc_1408470B0
                lea     rax, [rsp+168h+var_D8]
                mov     r9d, 6
                mov     [rsp+168h+var_138], rax
                lea     r8, [rsp+168h+var_B8]
                mov     rdx, r13
                mov     byte ptr [rsp+168h+var_148], 0
                mov     rcx, r12
                call    sub_1406CD7A0
                mov     esi, 0C0000034h
                mov     ebx, eax
                cmp     eax, esi
                jz      loc_14076BE7E
                test    eax, eax
                js      short loc_14076BE57
                xorps   xmm0, xmm0
                lea     rcx, [rsp+168h+var_D0]
                mov     rdx, r14
                movups  [rsp+168h+var_D0], xmm0
                call    RtlInitUnicodeStringEx
                mov     edi, eax
                test    eax, eax
                js      short loc_14076BE3A
                mov     rcx, [rsp+168h+var_D8]
                lea     rdx, [rsp+168h+var_D0]
                call    ZwDeleteValueKey
                mov     edi, eax

loc_14076BE3A:                          ; CODE XREF: sub_14076BCBC+165↑j
                mov     rcx, [rsp+168h+var_D8]
                call    ZwClose
                cmp     edi, esi
                jz      short loc_14076BE7E
                cmp     edi, 0C000017Ch
                jz      short loc_14076BE7E
                test    edi, edi
                js      short loc_14076BE85

loc_14076BE57:                          ; CODE XREF: sub_14076BCBC+144↑j
                                        ; sub_14076BCBC+1C7↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+168h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 128h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076BE7E:                          ; CODE XREF: sub_14076BCBC+13C↑j
                                        ; sub_14076BCBC+18D↑j ...
                mov     ebx, 0C0000225h
                jmp     short loc_14076BE57
; ---------------------------------------------------------------------------

loc_14076BE85:                          ; CODE XREF: sub_14076BCBC+199↑j
                mov     ebx, edi
                jmp     short loc_14076BE57
; } // starts at 14076BCBC
sub_14076BCBC   endp

; ---------------------------------------------------------------------------
algn_14076BE89:                         ; DATA XREF: .rdata:0000000140094204↑o
                                        ; .pdata:000000014010A574↑o
                align 10h
; Exported entry 1628. NtSetVolumeInformationFile

; =============== S U B R O U T I N E =======================================


                public NtSetVolumeInformationFile
NtSetVolumeInformationFile proc near    ; DATA XREF: .pdata:000000014010A580↑o
                                        ; PAGE:000000014098AF48↓o

var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_C8          = byte ptr -0C8h
var_C7          = byte ptr -0C7h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = dword ptr -70h
var_6C          = xmmword ptr -6Ch
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
arg_20          = dword ptr  28h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_48], rax
                mov     ebx, r9d
                mov     [rsp+108h+var_C4], ebx
                mov     r13, r8
                mov     rdi, rdx
                mov     [rsp+108h+var_A0], rdx
                mov     r11, rcx
                xor     r14d, r14d
                mov     [rsp+108h+var_C0], r14
                mov     r12d, r14d
                mov     [rsp+108h+var_98], r14
                mov     [rsp+108h+var_B8], r14
                mov     r9, gs:188h
                mov     [rsp+108h+var_B0], r9
                mov     r10b, [r9+232h]
                mov     [rsp+108h+var_C7], r10b
                test    r10b, r10b
                jz      loc_14076BFFB
                cmp     [rsp+108h+arg_20], 0Fh
                jnb     loc_14076BFF1
                movsxd  r8, [rsp+108h+arg_20]
                lea     rdx, cs:140000000h
                movzx   eax, byte ptr [r8+rdx+985080h]
                test    al, al
                jz      loc_14076BFF1
                cmp     ebx, eax
                jnb     short loc_14076BF3E
                mov     eax, 0C0000004h
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BF3E:                          ; CODE XREF: NtSetVolumeInformationFile+A2↑j
                                        ; DATA XREF: .rdata:0000000140094234↑o
;   __try { // __except at loc_14076BFEC
                mov     rcx, rdi
                mov     rsi, 7FFFFFFF0000h
                cmp     rdi, rsi
                cmovnb  rcx, rsi
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [r9+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_14076BFAA
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_14076BF81
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_14076BFAA

loc_14076BF81:                          ; CODE XREF: NtSetVolumeInformationFile+E5↑j
                test    ebx, ebx
                jz      short loc_14076BFE4
                test    r13b, 3
                jnz     loc_14076C3EF
                lea     rcx, [rbx+r13]
                cmp     rcx, rsi
                ja      short loc_14076BF9D
                cmp     rcx, r13
                jnb     short loc_14076BFE4

loc_14076BF9D:                          ; CODE XREF: NtSetVolumeInformationFile+106↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14076BFE4
; ---------------------------------------------------------------------------

loc_14076BFAA:                          ; CODE XREF: NtSetVolumeInformationFile+D7↑j
                                        ; NtSetVolumeInformationFile+EF↑j
                test    ebx, ebx
                jz      short loc_14076BFE4
                movzx   eax, byte ptr [r8+rdx+985470h]
                mov     r15d, 1
                sub     rax, r15
                test    r13, rax
                jnz     loc_14076C3F4
                lea     rcx, [rbx+r13]
                cmp     rcx, rsi
                ja      short loc_14076BFD7
                cmp     rcx, r13
                jnb     short loc_14076BFEA

loc_14076BFD7:                          ; CODE XREF: NtSetVolumeInformationFile+140↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14076BFEA
; ---------------------------------------------------------------------------

loc_14076BFE4:                          ; CODE XREF: NtSetVolumeInformationFile+F3↑j
                                        ; NtSetVolumeInformationFile+10B↑j ...
                mov     r15d, 1

loc_14076BFEA:                          ; CODE XREF: NtSetVolumeInformationFile+145↑j
                                        ; NtSetVolumeInformationFile+152↑j
                jmp     short loc_14076C008
;   } // starts at 14076BF3E
; ---------------------------------------------------------------------------

loc_14076BFEC:                          ; DATA XREF: .rdata:0000000140094234↑o
                                        ; .rdata:0000000140094254↑o
;   __except(1) // owned by 14076BF3E
;   __except(1) // owned by 14076C3EF
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BFF1:                          ; CODE XREF: NtSetVolumeInformationFile+7A↑j
                                        ; NtSetVolumeInformationFile+9A↑j
                mov     eax, 0C0000003h
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BFFB:                          ; CODE XREF: NtSetVolumeInformationFile+6C↑j
                lea     rdx, cs:140000000h
                mov     r15d, 1

loc_14076C008:                          ; CODE XREF: NtSetVolumeInformationFile:loc_14076BFEA↑j
                movsxd  rax, [rsp+108h+arg_20]
                mov     [rsp+108h+var_E8], r14
                lea     r9, [rsp+108h+var_C0]
                mov     r8b, r10b
                mov     edx, ds:rva dword_140986640[rdx+rax*4]
                mov     rcx, r11
                call    sub_1402433F0
                test    eax, eax
                js      loc_14076C3CB
                lea     rdx, [rsp+108h+var_B8]
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    sub_14069C6DC
                mov     rdi, [rsp+108h+var_B8]
                test    eax, eax
                cmovs   rdi, r14
                mov     [rsp+108h+var_B8], rdi
                lea     rax, [rsi+50h]
                mov     [rsp+108h+var_A8], rax
                mov     r14d, [rax]
                test    r14b, 2
                jz      loc_14076C11D
                shr     r14d, 2
                and     r14b, r15b
                mov     rax, gs:188h
                or      ecx, 0FFFFFFFFh
                add     [rax+1E4h], cx
                mov     rbx, [rsp+108h+var_C0]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+108h+var_C8], 0
                mov     ecx, r15d
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_14076C0C5
                test    rax, rax
                jz      short loc_14076C0B4
                or      [rax+1Ah], r15b

loc_14076C0B4:                          ; CODE XREF: NtSetVolumeInformationFile+21E↑j
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    ObfReferenceObject
                xor     ebx, ebx
                jmp     short loc_14076C0E8
; ---------------------------------------------------------------------------

loc_14076C0C5:                          ; CODE XREF: NtSetVolumeInformationFile+219↑j
                lea     rcx, [rsp+108h+var_C8]
                mov     [rsp+108h+var_E8], rcx
                mov     r9, rax
                mov     r8b, r14b
                mov     dl, [rsp+108h+var_C7]
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    sub_1406A0C70
                mov     ebx, eax

loc_14076C0E8:                          ; CODE XREF: NtSetVolumeInformationFile+233↑j
                cmp     [rsp+108h+var_C8], 0
                jz      short loc_14076C10D
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+108h+var_B8]
                test    rcx, rcx
                jz      short loc_14076C106

loc_14076C101:                          ; CODE XREF: NtSetVolumeInformationFile+4FC↓j
                call    PsDereferenceSiloContext

loc_14076C106:                          ; CODE XREF: NtSetVolumeInformationFile+26F↑j
                                        ; NtSetVolumeInformationFile+4A6↓j
                mov     eax, ebx
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C10D:                          ; CODE XREF: NtSetVolumeInformationFile+25D↑j
                mov     [rsp+108h+var_C8], r15b
                mov     rdi, [rsp+108h+var_B8]
                mov     ebx, [rsp+108h+var_C4]
                jmp     short loc_14076C14C
; ---------------------------------------------------------------------------

loc_14076C11D:                          ; CODE XREF: NtSetVolumeInformationFile+1D6↑j
                call    sub_140359720
                mov     r12, rax
                mov     [rsp+108h+var_98], rax
                test    rax, rax
                jnz     short loc_14076C139
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                jmp     short loc_14076C1B7
; ---------------------------------------------------------------------------

loc_14076C139:                          ; CODE XREF: NtSetVolumeInformationFile+29D↑j
                xor     r8d, r8d
                mov     edx, r15d
                mov     rcx, rax
                call    KeInitializeEvent
                mov     [rsp+108h+var_C8], 0

loc_14076C14C:                          ; CODE XREF: NtSetVolumeInformationFile+28B↑j
                mov     rax, [rsp+108h+var_A8]
                mov     eax, [rax]
                bt      eax, 1Ah
                jb      short loc_14076C165
                lea     rcx, [rsi+98h]
                call    KeResetEvent

loc_14076C165:                          ; CODE XREF: NtSetVolumeInformationFile+2C7↑j
                mov     rcx, rsi
                call    IoGetRelatedDeviceObject
                mov     [rsp+108h+var_90], rax
                mov     r9, [rsp+108h]
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     r14, rax
                mov     [rsp+108h+var_88], rax
                xor     edx, edx
                test    rax, rax
                jnz     short loc_14076C1CE
                mov     rax, [rsp+108h+var_A8]
                mov     eax, [rax]
                test    al, 2
                jnz     short loc_14076C1AD
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_14076C1AD:                          ; CODE XREF: NtSetVolumeInformationFile+313↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1408925D4

loc_14076C1B7:                          ; CODE XREF: NtSetVolumeInformationFile+2A7↑j
                test    rdi, rdi
                jz      short loc_14076C1C4
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14076C1C4:                          ; CODE XREF: NtSetVolumeInformationFile+32A↑j
                mov     eax, 0C000009Ah
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C1CE:                          ; CODE XREF: NtSetVolumeInformationFile+308↑j
                mov     [rax+0C0h], rsi
                mov     rax, [rsp+108h+var_B0]
                mov     [r14+98h], rax
                mov     al, [rsp+108h+var_C7]
                mov     [r14+40h], al
                xorps   xmm0, xmm0
                movups  [rsp+108h+var_80], xmm0
                cmp     [rsp+108h+var_C8], dl
                jz      short loc_14076C204
                mov     rax, [rsp+108h+var_A0]
                mov     rcx, rdx
                jmp     short loc_14076C217
; ---------------------------------------------------------------------------

loc_14076C204:                          ; CODE XREF: NtSetVolumeInformationFile+368↑j
                mov     dword ptr [r14+10h], 4
                lea     rax, [rsp+108h+var_80]
                mov     rcx, r12

loc_14076C217:                          ; CODE XREF: NtSetVolumeInformationFile+372↑j
                mov     [r14+50h], rcx
                mov     [r14+48h], rax
                mov     [r14+58h], rdx
                mov     rax, [r14+0B8h]
                sub     rax, 48h ; 'H'
                mov     [rsp+108h+var_B0], rax
                mov     byte ptr [rax], 0Bh
                mov     [rax+30h], rsi
                mov     [r14+18h], rdx
                mov     [r14+8], rdx

loc_14076C242:                          ; DATA XREF: .rdata:0000000140094244↑o
;   __try { // __except at loc_14076C391
                mov     rdx, rbx
                call    sub_1402159F0
                mov     [r14+18h], rax
                mov     r8, rbx
                mov     rdx, r13
                mov     rcx, rax
                call    memmove
                nop
;   } // starts at 14076C242

loc_14076C25D:                          ; DATA XREF: .rdata:0000000140094244↑o
                mov     r8b, [rsp+108h+var_C7]
                test    r8b, r8b
                jz      short loc_14076C2BA
                cmp     [rsp+108h+arg_20], 2
                jnz     short loc_14076C2BA
                mov     rax, [r14+18h]
                mov     eax, [rax]
                test    eax, eax
                js      short loc_14076C286
                add     eax, 4
                mov     edx, [rsp+108h+var_C4]
                cmp     eax, edx
                jbe     short loc_14076C2BE

loc_14076C286:                          ; CODE XREF: NtSetVolumeInformationFile+3E9↑j
                mov     eax, [rsi+50h]
                shr     eax, 1
                and     al, r15b
                mov     byte ptr [rsp+108h+var_E8], al
                mov     r9, r12
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1405CD328
                test    rdi, rdi
                jz      short loc_14076C2B0
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14076C2B0:                          ; CODE XREF: NtSetVolumeInformationFile+416↑j
                mov     eax, 0C000000Dh
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C2BA:                          ; CODE XREF: NtSetVolumeInformationFile+3D5↑j
                                        ; NtSetVolumeInformationFile+3DF↑j
                mov     edx, [rsp+108h+var_C4]

loc_14076C2BE:                          ; CODE XREF: NtSetVolumeInformationFile+3F4↑j
                or      dword ptr [r14+10h], 30h
                mov     rcx, [rsp+108h+var_B0]
                mov     [rcx+8], edx
                mov     eax, [rsp+108h+arg_20]
                mov     [rcx+10h], eax
                mov     [rsp+108h+var_D8], 2
                mov     r13b, [rsp+108h+var_C8]
                mov     byte ptr [rsp+108h+var_E0], r13b
                mov     byte ptr [rsp+108h+var_E8], r8b
                xor     r9d, r9d
                mov     r8, rsi
                mov     rdx, r14
                mov     rcx, [rsp+108h+var_90]
                call    sub_140643F60
                mov     ebx, eax
                xor     esi, esi
                test    r13b, r13b
                jnz     short loc_14076C333
                mov     rax, [rsp+108h+var_A0]
                mov     [rsp+108h+var_E0], rax
                lea     rax, [rsp+108h+var_80]
                mov     [rsp+108h+var_E8], rax
                mov     r9b, [rsp+108h+var_C7]
                mov     r8, r14
                mov     rdx, r12
                mov     ecx, ebx
                call    sub_1406FC85C
                mov     ebx, eax

loc_14076C333:                          ; CODE XREF: NtSetVolumeInformationFile+476↑j
                test    rdi, rdi
                jz      loc_14076C106
                test    ebx, ebx
                js      short loc_14076C389
                mov     [rsp+108h+var_5C], esi
                mov     [rsp+108h+var_4C], esi
                mov     [rsp+108h+var_70], 240001h
                mov     [rsp+108h+var_58], rsi
                or      [rsp+108h+var_50], 0FFFFFFFFh
                movups  xmm0, cs:xmmword_14001E530
                movdqu  [rsp+108h+var_6C], xmm0
                lea     rdx, [rsp+108h+var_70]
                mov     rcx, rdi
                call    IoReportTargetDeviceChange

loc_14076C389:                          ; CODE XREF: NtSetVolumeInformationFile+4AE↑j
                mov     rcx, rdi
                jmp     loc_14076C101
; ---------------------------------------------------------------------------

loc_14076C391:                          ; DATA XREF: .rdata:0000000140094244↑o
;   __except(1) // owned by 14076C242
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_C0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+108h+var_E8], dl
                mov     r9, [rsp+108h+var_98]
                xor     r8d, r8d
                mov     rdx, [rsp+108h+var_88]
                call    sub_1405CD328
                mov     rcx, [rsp+108h+var_B8]
                test    rcx, rcx
                jz      short loc_14076C3C9
                call    PsDereferenceSiloContext

loc_14076C3C9:                          ; CODE XREF: NtSetVolumeInformationFile+532↑j
                mov     eax, ebx

loc_14076C3CB:                          ; CODE XREF: NtSetVolumeInformationFile+A9↑j
                                        ; NtSetVolumeInformationFile:loc_14076BFEC↑j ...
                mov     rcx, [rsp+108h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D0h
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
; ---------------------------------------------------------------------------

loc_14076C3EF:                          ; CODE XREF: NtSetVolumeInformationFile+F9↑j
                                        ; DATA XREF: .rdata:0000000140094254↑o
;   __try { // __except at loc_14076BFEC
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14076C3F4:                          ; CODE XREF: NtSetVolumeInformationFile+133↑j
                call    ExRaiseDatatypeMisalignment
NtSetVolumeInformationFile endp

; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 14076C3EF
byte_14076C3FA  db 0CCh                 ; DATA XREF: .rdata:0000000140094254↑o
; } // starts at 14076BE90
byte_14076C3FB  db 15h dup(0CCh)        ; DATA XREF: .pdata:000000014010A580↑o
; Exported entry 963. IoReportTargetDeviceChange

; =============== S U B R O U T I N E =======================================


                public IoReportTargetDeviceChange
IoReportTargetDeviceChange proc near    ; CODE XREF: FsRtlNotifyVolumeEventEx+BA↑p
                                        ; NtSetVolumeInformationFile+4F4↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408470C4 SIZE 0000011F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                xor     eax, eax
                xor     ebp, ebp
                mov     [rsp+68h+var_28], rax
                xorps   xmm0, xmm0
                mov     [rsp+68h+arg_0], ebp
                mov     rsi, rdx
                mov     rbx, rcx
                lea     r14d, [rax+2]
                movups  [rsp+68h+var_38], xmm0
                test    rcx, rcx
                jz      loc_1408471CA
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408470D3
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1408470D3
                lea     rdi, [rdx+4]
                lea     rdx, qword_14000AB40
                cmp     rdi, rdx
                jz      loc_14076C560
                lea     r14d, [rbp+10h]
                mov     rcx, rdi
                mov     r8d, r14d
                call    RtlCompareMemory
                cmp     rax, r14
                mov     ecx, ebp
                setz    cl
                test    ecx, ecx
                jnz     loc_14076C560
                lea     rdx, xmmword_14000AB70
                cmp     rdi, rdx
                jz      loc_14076C560
                mov     r8d, r14d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r14
                jz      loc_14076C560
                lea     rdx, xmmword_14000AB80
                cmp     rdi, rdx
                jz      loc_14076C560
                mov     r8d, r14d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r14
                jz      short loc_14076C560
                movzx   eax, word ptr [rsi+2]
                lea     edx, [rbp+24h]
                cmp     ax, dx
                jb      short loc_14076C560
                mov     ecx, [rsi+20h]
                cmp     ecx, 0FFFFFFFFh
                jnz     loc_1408470C4

loc_14076C4FD:                          ; CODE XREF: IoReportTargetDeviceChange+DACBE↓j
                xor     r8d, r8d
                lea     rcx, [rsp+68h+var_38]
                xor     edx, edx
                call    KeInitializeEvent
                xor     r9d, r9d
                mov     [rsp+68h+var_40], rsi
                lea     r8, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], rbp
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rbx
                call    sub_14069ED34
                test    eax, eax
                js      short loc_14076C54A
                xor     r9d, r9d
                mov     [rsp+68h+var_48], rbp
                xor     r8d, r8d
                lea     rcx, [rsp+68h+var_38]
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, [rsp+68h+arg_0]

loc_14076C54A:                          ; CODE XREF: IoReportTargetDeviceChange+11D↑j
                                        ; IoReportTargetDeviceChange+155↓j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14076C560:                          ; CODE XREF: IoReportTargetDeviceChange+6C↑j
                                        ; IoReportTargetDeviceChange+8B↑j ...
                mov     eax, 0C0000010h
                jmp     short loc_14076C54A
IoReportTargetDeviceChange endp

; ---------------------------------------------------------------------------
algn_14076C567:                         ; DATA XREF: .rdata:0000000140094284↑o
                                        ; .pdata:000000014010A58C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14076C570   proc near               ; CODE XREF: sub_140735D48+A04↑p
                                        ; DATA XREF: .rdata:00000001400942D0↑o ...

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 00000001408471E4 SIZE 00000042 BYTES

                mov     [rsp-8+arg_0], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+var_10], 0
                lea     rdx, [rbp+var_10]
                and     [rbp+arg_8], 0
                mov     rbx, rcx
                and     [rbp+arg_10], 0
                call    sub_14076C684
                cmp     [rbp+var_10], 0
                jnz     short loc_14076C5B2
                mov     word ptr [rbx+1D2h], 101h

loc_14076C5A6:                          ; CODE XREF: sub_14076C570+F9↓j
                                        ; sub_14076C570+DAC96↓j ...
                mov     rbx, [rsp+50h+arg_0]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076C5B2:                          ; CODE XREF: sub_14076C570+2B↑j
                mov     rax, [rbx+20h]
                mov     edx, 300h
                mov     ecx, [rax+34h]
                mov     eax, ecx
                and     eax, edx
                bt      ecx, 0Eh
                jb      loc_1408471EE
                bt      ecx, 0Fh
                jb      loc_1408471E4
                cmp     eax, 200h
                jz      loc_1408471EE
                cmp     eax, edx
                jz      loc_1408471E4
                cmp     rbx, [rbp+var_10]
                jnz     loc_14076C674
                lea     rdx, [rbp+arg_8]
                mov     rcx, rbx
                call    sub_14076C6A4
                mov     edx, [rbp+arg_8]

loc_14076C602:                          ; CODE XREF: sub_14076C570+10C↓j
                cmp     rbx, [rbp+var_10]
                jz      short loc_14076C61B
                mov     rax, [rbx+10h]
                movzx   ecx, byte ptr [rax+1D2h]
                cmp     edx, ecx
                cmovg   edx, ecx
                mov     [rbp+arg_8], edx

loc_14076C61B:                          ; CODE XREF: sub_14076C570+96↑j
                and     [rsp+50h+var_18], 0
                lea     rax, [rbp+arg_18]
                mov     [rsp+50h+var_20], rax
                mov     r9d, 22h ; '"'
                mov     [rbx+1D2h], dl
                lea     rax, [rbp+arg_8]
                mov     [rsp+50h+var_28], rax
                xor     r8d, r8d
                mov     [rbx+1D3h], dl
                lea     rax, [rbp+arg_10]
                mov     rdx, [rbx+30h]
                mov     rcx, cs:qword_140CF4378
                mov     [rsp+50h+var_30], rax
                mov     [rbp+arg_18], 4
                call    sub_14062BA8C
                test    eax, eax
                js      loc_14076C5A6
                jmp     loc_1408471F8
; ---------------------------------------------------------------------------

loc_14076C674:                          ; CODE XREF: sub_14076C570+7D↑j
                mov     edx, 6

loc_14076C679:                          ; CODE XREF: sub_14076C570+DAC79↓j
                                        ; sub_14076C570+DAC83↓j
                mov     [rbp+arg_8], edx
                jmp     short loc_14076C602
sub_14076C570   endp

; ---------------------------------------------------------------------------
byte_14076C67E  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400942D0↑o
                                        ; .pdata:000000014010A598↑o

; =============== S U B R O U T I N E =======================================


sub_14076C684   proc near               ; CODE XREF: sub_14076C570+21↑p
                                        ; sub_140700AA8+127036↓p
                                        ; DATA XREF: ...
                jmp     short loc_14076C694
; ---------------------------------------------------------------------------

loc_14076C686:                          ; CODE XREF: sub_14076C684+13↓j
                mov     eax, [rcx+230h]
                test    al, 18h
                jnz     short loc_14076C699
                mov     rcx, [rcx+10h]

loc_14076C694:                          ; CODE XREF: sub_14076C684↑j
                test    rcx, rcx
                jnz     short loc_14076C686

loc_14076C699:                          ; CODE XREF: sub_14076C684+A↑j
                mov     [rdx], rcx
                retn
sub_14076C684   endp

; ---------------------------------------------------------------------------
                align 2
byte_14076C69E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A5A4↑o

; =============== S U B R O U T I N E =======================================


sub_14076C6A4   proc near               ; CODE XREF: sub_14076C570+8A↑p
                                        ; DATA XREF: .rdata:00000001400942F4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140847226 SIZE 0000002C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     word ptr [rcx+28h], 8
                mov     rsi, rdx
                mov     rdi, rcx
                jbe     short loc_14076C6DE
                mov     rcx, [rcx+30h]
                lea     rdx, aUsb_0     ; "USB\\"
                mov     r8d, 4
                call    _wcsnicmp
                test    eax, eax
                jz      loc_14076C79A

loc_14076C6DE:                          ; CODE XREF: sub_14076C6A4+1A↑j
                cmp     word ptr [rdi+28h], 0Ah
                mov     ebx, 5
                jbe     short loc_14076C723
                mov     rcx, [rdi+30h]
                lea     rdx, a1394_1    ; "1394\\"
                mov     r8d, ebx
                call    _wcsnicmp
                test    eax, eax
                jz      loc_14076C787
                cmp     word ptr [rdi+28h], 0Ah
                jbe     short loc_14076C723
                mov     rcx, [rdi+30h]
                lea     rdx, aSbp2      ; "SBP2\\"
                mov     r8d, ebx
                call    _wcsnicmp
                test    eax, eax
                jz      short loc_14076C787

loc_14076C723:                          ; CODE XREF: sub_14076C6A4+44↑j
                                        ; sub_14076C6A4+66↑j
                cmp     word ptr [rdi+28h], 0Eh
                jbe     short loc_14076C744
                mov     rcx, [rdi+30h]
                lea     rdx, aPcmcia    ; "PCMCIA\\"
                mov     r8d, 7
                call    _wcsnicmp
                test    eax, eax
                jz      short loc_14076C787

loc_14076C744:                          ; CODE XREF: sub_14076C6A4+84↑j
                cmp     word ptr [rdi+28h], 8
                jbe     short loc_14076C769
                mov     rcx, [rdi+30h]
                lea     rdx, aPci       ; "PCI\\"
                mov     r8d, 4
                call    _wcsnicmp
                test    eax, eax
                jz      loc_140847226

loc_14076C769:                          ; CODE XREF: sub_14076C6A4+A5↑j
                                        ; sub_14076C6A4+DAB8B↓j ...
                mov     rax, [rdi+2D0h]
                test    rax, rax
                jnz     short loc_14076C7A1

loc_14076C775:                          ; CODE XREF: sub_14076C6A4+102↓j
                mov     rax, [rdi+10h]
                mov     cl, [rax+1D2h]
                sub     cl, bl
                neg     cl
                sbb     eax, eax
                add     ebx, eax

loc_14076C787:                          ; CODE XREF: sub_14076C6A4+5B↑j
                                        ; sub_14076C6A4+7D↑j ...
                mov     [rsi], ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076C79A:                          ; CODE XREF: sub_14076C6A4+34↑j
                mov     ebx, 5
                jmp     short loc_14076C787
; ---------------------------------------------------------------------------

loc_14076C7A1:                          ; CODE XREF: sub_14076C6A4+CF↑j
                mov     al, [rax+10h]
                test    al, 4
                jz      short loc_14076C775
                jmp     short loc_14076C787
sub_14076C6A4   endp

; ---------------------------------------------------------------------------
algn_14076C7AA:                         ; DATA XREF: .rdata:00000001400942F4↑o
                                        ; .pdata:000000014010A5B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14076C7B0   proc near               ; CODE XREF: sub_14037E06C+78↑p
                                        ; DATA XREF: .pdata:000000014010A5BC↑o
                sub     rsp, 28h
                or      eax, 0FFFFFFFFh
                lock xadd [rcx+10B0h], eax
                cmp     eax, 1
                jz      short loc_14076C7CA

loc_14076C7C4:                          ; CODE XREF: sub_14076C7B0+1F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076C7CA:                          ; CODE XREF: sub_14076C7B0+12↑j
                call    sub_1406E1ED8
                jmp     short loc_14076C7C4
sub_14076C7B0   endp

; ---------------------------------------------------------------------------
algn_14076C7D1:                         ; DATA XREF: .pdata:000000014010A5BC↑o
                align 20h
; Exported entry 1991. RtlAppendStringToString

; =============== S U B R O U T I N E =======================================


