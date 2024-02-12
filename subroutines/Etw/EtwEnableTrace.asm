EtwEnableTrace  proc near               ; CODE XREF: sub_140788958+39↑p
                                        ; sub_14093DF84+138↓p
                                        ; DATA XREF: ...

var_78          = dword ptr -78h
var_70          = byte ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 90h
                mov     ebx, r9d
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                call    sub_1402B95B0
                mov     r9, rdi
                mov     r8, rsi
                mov     rdx, rbp
                mov     rcx, [rax+360h]
                xor     eax, eax
                mov     [rsp+98h+var_10], rax
                mov     [rsp+98h+var_18], eax
                mov     [rsp+98h+var_20], rax
                mov     [rsp+98h+var_28], eax
                mov     [rsp+98h+var_30], rax
                mov     [rsp+98h+var_38], eax
                mov     [rsp+98h+var_40], rax
                mov     [rsp+98h+var_48], rax
                mov     [rsp+98h+var_50], rax
                mov     eax, [rsp+98h+arg_38]
                mov     [rsp+98h+var_58], eax
                mov     rax, [rsp+98h+arg_30]
                mov     [rsp+98h+var_60], rax
                mov     rax, [rsp+98h+arg_28]
                mov     [rsp+98h+var_68], rax
                mov     al, [rsp+98h+arg_20]
                mov     [rsp+98h+var_70], al
                mov     [rsp+98h+var_78], ebx
                call    sub_140788A74
                lea     r11, [rsp+98h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EtwEnableTrace  endp

byte_140788A6D  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010BE70↑o

; =============== S U B R O U T I N E =======================================


sub_140788A74   proc near               ; CODE XREF: EtwEnableTrace+9E↑p
                                        ; sub_14078DC04+4BC↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h
arg_58          = qword ptr  60h
arg_60          = dword ptr  68h
arg_68          = qword ptr  70h
arg_70          = dword ptr  78h
arg_78          = qword ptr  80h
arg_80          = dword ptr  88h
arg_88          = qword ptr  90h

; FUNCTION CHUNK AT 000000014085241A SIZE 000001DC BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, [rsp+58h+arg_48]
                xor     ebp, ebp
                mov     r13, r9
                mov     rdi, r8
                mov     r11d, ebp
                lea     r10d, [rbp+78h]
                lea     r14d, [rbp+1]
                test    r15, r15
                jz      short loc_140788AD2
                mov     r9d, ebp
                mov     r8, r15

loc_140788AB8:                          ; CODE XREF: sub_140788A74+5C↓j
                movzx   eax, word ptr [r8]
                test    ax, ax
                jnz     loc_14085241A

loc_140788AC5:                          ; CODE XREF: sub_140788A74+C99AA↓j
                                        ; sub_140788A74+C99C4↓j
                add     r9d, r14d
                add     r8, 10h
                cmp     r9d, 4
                jb      short loc_140788AB8

loc_140788AD2:                          ; CODE XREF: sub_140788A74+3C↑j
                mov     r12, [rsp+58h+arg_50]
                test    r12, r12
                jz      short loc_140788AFC
                mov     edx, ebp
                mov     rcx, r12

loc_140788AE4:                          ; CODE XREF: sub_140788A74+86↓j
                mov     rax, [rcx]
                test    rax, rax
                jnz     loc_140788C30

loc_140788AF0:                          ; CODE XREF: sub_140788A74+1C3↓j
                                        ; sub_140788A74+1DD↓j
                add     edx, r14d
                add     rcx, 8
                cmp     edx, 2
                jb      short loc_140788AE4

loc_140788AFC:                          ; CODE XREF: sub_140788A74+69↑j
                mov     edx, [rsp+58h+arg_60]
                lea     ecx, [r11+1]
                mov     r9d, [rsp+58h+arg_70]
                test    edx, edx
                cmovz   ecx, r11d
                lea     eax, [r10+rdx]
                cmovz   eax, r10d
                test    r9d, r9d
                lea     r8d, [rcx+1]
                cmovz   r8d, ecx
                lea     edx, [rax+r9]
                mov     r9d, [rsp+58h+arg_80]
                cmovz   edx, eax
                test    r9d, r9d
                lea     eax, [r8+1]
                cmovz   eax, r8d
                mov     r8d, 74777445h
                lea     ecx, [rdx+r9]
                cmovz   ecx, edx
                mov     rdx, [rsp+58h+arg_88]
                test    rdx, rdx
                lea     ebx, [rax+1]
                cmovz   ebx, eax
                lea     esi, [rcx+18h]
                mov     eax, ebx
                cmovz   esi, ecx
                shl     eax, 4
                add     esi, eax
                mov     ecx, r14d
                mov     edx, esi
                mov     ebp, esi
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_140852447
                mov     r8d, ebp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xor     edx, edx
                mov     dword ptr [r14], 3
                mov     [r14+4], esi
                test    rdi, rdi
                jnz     loc_140852451

loc_140788BA8:                          ; CODE XREF: sub_140788A74+C99E6↓j
                mov     rax, [rsp+58h+arg_8]
                movups  xmm0, xmmword ptr [rax]
                mov     eax, [rsp+58h+arg_20]
                mov     [r14+48h], eax
                mov     al, [rsp+58h+arg_28]
                mov     [r14+4Ch], al
                mov     rax, [rsp+58h+arg_38]
                mov     [r14+60h], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [r14+58h], rax
                mov     eax, [rsp+58h+arg_40]
                mov     [r14+50h], eax
                mov     [r14+4Eh], r13w
                mov     [r14+74h], ebx
                movdqu  xmmword ptr [r14+28h], xmm0
                test    ebx, ebx
                jnz     short loc_140788C56

loc_140788BFC:                          ; CODE XREF: sub_140788A74+2B7↓j
                                        ; sub_140788A74+C9B7D↓j
                mov     rcx, [rsp+58h+arg_0]
                xor     r8d, r8d
                mov     rdx, r14
                call    sub_1406AFFC8
                xor     edx, edx
                mov     rcx, r14
                mov     ebx, eax
                call    ExFreePoolWithTag

loc_140788C18:                          ; CODE XREF: sub_140788A74+C99CE↓j
                                        ; sub_140788A74+C99D8↓j
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_10]
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
                align 10h

loc_140788C30:                          ; CODE XREF: sub_140788A74+76↑j
                movzx   eax, word ptr [rax+2]
                test    ax, ax
                jz      loc_140788AF0
                cmp     eax, 40h ; '@'
                ja      loc_14085243D
                add     r11d, r14d
                lea     r10d, [r10+rax*2]
                add     r10d, 4
                jmp     loc_140788AF0
; ---------------------------------------------------------------------------

loc_140788C56:                          ; CODE XREF: sub_140788A74+186↑j
                mov     esi, ebx
                lea     rdi, [r14+78h]
                shl     rsi, 4
                mov     ebp, edx
                add     rsi, rdi
                mov     r13d, edx

loc_140788C68:                          ; CODE XREF: sub_140788A74+209↓j
                cmp     [r15], dx
                ja      loc_14085245F

loc_140788C72:                          ; CODE XREF: sub_140788A74+C99EF↓j
                                        ; sub_140788A74+C9A7A↓j
                inc     r13d
                add     r15, 10h
                cmp     r13d, 4
                jb      short loc_140788C68
                mov     r15d, edx

loc_140788C82:                          ; CODE XREF: sub_140788A74+27D↓j
                mov     rax, [r12]
                test    rax, rax
                jz      short loc_140788CE6
                cmp     [rax+2], dx
                jbe     short loc_140788CE6
                mov     eax, r15d
                test    r15d, r15d
                jnz     loc_1408524F3
                mov     eax, ebp
                add     rax, rax
                mov     dword ptr [rdi+rax*8+0Ch], 80000200h

loc_140788CAA:                          ; CODE XREF: sub_140788A74+C9A82↓j
                                        ; sub_140788A74+C9A95↓j
                mov     rax, [r12]
                mov     ebx, ebp
                add     rbx, rbx
                movzx   ecx, word ptr [rax+2]
                mov     rax, rsi
                sub     rax, r14
                mov     [rdi+rbx*8], rax
                lea     ecx, ds:4[rcx*2]
                mov     [rdi+rbx*8+8], ecx
                mov     rdx, [r12]
                mov     r8d, ecx
                mov     rcx, rsi
                call    memmove
                mov     eax, [rdi+rbx*8+8]
                inc     ebp
                add     rsi, rax
                xor     edx, edx

loc_140788CE6:                          ; CODE XREF: sub_140788A74+215↑j
                                        ; sub_140788A74+21B↑j
                inc     r15d
                add     r12, 8
                cmp     r15d, 2
                jb      short loc_140788C82
                mov     ecx, [rsp+58h+arg_60]
                test    ecx, ecx
                jnz     loc_14085250E

loc_140788D02:                          ; CODE XREF: sub_140788A74+C9AD1↓j
                mov     ecx, [rsp+58h+arg_70]
                test    ecx, ecx
                jnz     loc_14085254A

loc_140788D11:                          ; CODE XREF: sub_140788A74+C9B0D↓j
                mov     ecx, [rsp+58h+arg_80]
                test    ecx, ecx
                jnz     loc_140852586

loc_140788D20:                          ; CODE XREF: sub_140788A74+C9B49↓j
                mov     rdx, [rsp+58h+arg_88]
                test    rdx, rdx
                jz      loc_140788BFC
                jmp     loc_1408525C2
sub_140788A74   endp

; ---------------------------------------------------------------------------
byte_140788D36  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009CE54↑o
                                        ; .pdata:000000014010BE7C↑o

; =============== S U B R O U T I N E =======================================


sub_140788D3C   proc near               ; CODE XREF: sub_1407880E0+92↑p
                                        ; DATA XREF: .rdata:000000014009CE98↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408525F6 SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                xor     r9d, r9d
                movzx   edi, dx
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_140788DA2
                test    r8, r8
                jz      short loc_140788DA2
                mov     r10d, [r8+34h]
                mov     edx, r9d
                test    r10d, r10d
                jz      short loc_140788DAA
                add     r8, 418h

loc_140788D6C:                          ; CODE XREF: sub_140788D3C+C98C3↓j
                mov     r11, [r8]
                mov     rcx, [rbx]
                sub     rcx, [r11]
                jnz     short loc_140788D7F
                mov     rcx, [rbx+8]
                sub     rcx, [r11+8]

loc_140788D7F:                          ; CODE XREF: sub_140788D3C+39↑j
                test    rcx, rcx
                jnz     loc_1408525F6
                cmp     di, [r11+10h]
                jnz     loc_1408525F6

loc_140788D93:                          ; CODE XREF: sub_140788D3C+6C↓j
                                        ; sub_140788D3C+74↓j
                mov     rbx, [rsp+arg_0]
                mov     eax, r9d
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140788DA2:                          ; CODE XREF: sub_140788D3C+16↑j
                                        ; sub_140788D3C+1B↑j
                mov     r9d, 0C000000Dh
                jmp     short loc_140788D93
; ---------------------------------------------------------------------------

loc_140788DAA:                          ; CODE XREF: sub_140788D3C+27↑j
                                        ; sub_140788D3C+C98C9↓j
                mov     r9d, 0C0000001h
                jmp     short loc_140788D93
sub_140788D3C   endp

; ---------------------------------------------------------------------------
algn_140788DB2:                         ; DATA XREF: .rdata:000000014009CE98↑o
                                        ; .pdata:000000014010BE88↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140788DB8   proc near               ; CODE XREF: sub_140757D1C+776↑p
                                        ; DATA XREF: .rdata:000000014009CEC8↑o ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014085260A SIZE 0000000A BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, rcx
                lea     rdx, aW32pservicetab ; "W32pServiceTable"
                mov     rcx, [rcx+30h]
                call    RtlFindExportedRoutineByName
                mov     rdi, rax
                test    rax, rax
                jz      loc_14085260A
                mov     rcx, [rbx+30h]
                lea     rdx, aW32pservicelim ; "W32pServiceLimit"
                call    RtlFindExportedRoutineByName
                mov     r14, rax
                test    rax, rax
                jz      loc_14085260A
                mov     rcx, [rbx+30h]
                lea     rdx, aW32pargumentta ; "W32pArgumentTable"
                call    RtlFindExportedRoutineByName
                mov     rbp, rax
                test    rax, rax
                jz      loc_14085260A
                mov     rcx, [rbx+30h]
                lea     rdx, aW32pservicetab_0 ; "W32pServiceTableFilter"
                call    RtlFindExportedRoutineByName
                mov     rsi, rax
                test    rax, rax
                jz      loc_14085260A
                mov     rcx, [rbx+30h]
                lea     rdx, aW32pservicelim_0 ; "W32pServiceLimitFilter"
                call    RtlFindExportedRoutineByName
                mov     r15, rax
                test    rax, rax
                jz      loc_14085260A
                mov     rcx, [rbx+30h]
                lea     rdx, aW32pargumentta_0 ; "W32pArgumentTableFilter"
                call    RtlFindExportedRoutineByName
                mov     r12, rax
                test    rax, rax
                jz      loc_14085260A
                mov     r13d, [r14]
                mov     r9d, 4
                shl     r13d, 2
                mov     rdx, rdi
                mov     r8d, r13d
                mov     rcx, rbx
                call    sub_14033EDF4
                mov     eax, [r15]
                mov     r9d, 4
                shl     eax, 2
                mov     rdx, rsi
                mov     r8d, eax
                mov     [rsp+58h+arg_0], eax
                mov     rcx, rbx
                call    sub_14033EDF4
                mov     rax, [rbx+30h]
                mov     r9d, 3
                mov     r8d, [r15]
                mov     rdx, r12
                mov     rcx, rsi
                mov     [rsp+58h+var_38], rax
                call    sub_14039FDA4
                mov     rax, [rbx+30h]
                mov     r9d, 1
                mov     r8d, [r14]
                mov     rdx, rbp
                mov     rcx, rdi
                mov     [rsp+58h+var_38], rax
                call    sub_14039FDA4
                mov     rcx, [rbx+70h]
                call    sub_140267410
                cmp     qword ptr [rax+90h], 0
                jz      short loc_140788F2E
                mov     ebp, 100h
                mov     r8d, r13d
                mov     r9d, ebp
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14033EDF4
                mov     r8d, [rsp+58h+arg_0]
                mov     r9d, ebp
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14033EDF4

loc_140788F2E:                          ; CODE XREF: sub_140788DB8+14B↑j
                xor     eax, eax

loc_140788F30:                          ; CODE XREF: sub_140788DB8+C9857↓j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140788DB8   endp

algn_140788F4E:                         ; DATA XREF: .rdata:000000014009CEC8↑o
                                        ; .pdata:000000014010BE94↑o
                align 20h
; Exported entry 2184. RtlGetSetBootStatusData

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

