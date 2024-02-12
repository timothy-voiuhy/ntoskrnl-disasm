FsRtlCopyWrite  proc near               ; DATA XREF: .pdata:000000014011C1F0↑o

var_B8          = qword ptr -0B8h
var_B0          = byte ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_88          = byte ptr -88h
var_87          = byte ptr -87h
var_86          = byte ptr -86h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9b
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     sil, r9b
                mov     edi, r8d
                mov     rbx, rdx
                mov     r13, rcx
                xor     r12d, r12d
                mov     [rsp+0D8h+var_88], 1
                mov     [rsp+0D8h+var_86], r12b
                cmp     dword ptr [rdx], 0FFFFFFFFh
                jnz     short loc_14088C08E
                cmp     dword ptr [rdx+4], 0FFFFFFFFh
                mov     [rsp+0D8h+var_87], 1
                jz      short loc_14088C093

loc_14088C08E:                          ; CODE XREF: FsRtlCopyWrite+41↑j
                mov     [rsp+0D8h+var_87], r12b

loc_14088C093:                          ; CODE XREF: FsRtlCopyWrite+4C↑j
                call    IoGetTopLevelIrp
                test    rax, rax
                jnz     loc_14088C15B
                mov     r15, [r13+18h]
                mov     [rsp+0D8h+var_58], r15
                xor     r9d, r9d
                mov     r8b, sil
                mov     edx, edi
                mov     rcx, r13
                call    CcCanIWrite
                test    al, al
                jz      loc_14088C15B
                mov     eax, [r13+50h]
                test    al, 10h
                jnz     loc_14088C15B
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, r13
                call    CcCopyWriteWontFlush
                test    al, al
                jz      short loc_14088C15B
                mov     rax, [rsp+0D8h+arg_30]
                mov     [rax], r12d
                mov     rcx, rdi
                mov     [rsp+0D8h+var_70], rcx
                mov     [rax+8], rcx
                test    edi, edi
                jz      loc_14088C47B
                mov     rsi, r12
                mov     [rsp+0D8h+var_68], r12
                mov     r14, r12
                mov     [rsp+0D8h+var_60], r12
                mov     rax, gs:188h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], dx
                mov     dil, [rsp+0D8h+var_87]
                test    dil, dil
                jnz     short loc_14088C176
                add     rcx, [rbx]
                cmp     rcx, [r15+28h]
                jg      short loc_14088C176
                mov     dl, [rsp+0D8h+arg_18]
                mov     rcx, [r15+8]
                call    ExAcquireResourceSharedLite
                test    al, al
                jnz     short loc_14088C171

loc_14088C14D:                          ; CODE XREF: FsRtlCopyWrite+148↓j
                                        ; FsRtlCopyWrite+1D1↓j ...
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14088C15B:                          ; CODE XREF: FsRtlCopyWrite+5B↑j
                                        ; FsRtlCopyWrite+7F↑j ...
                xor     al, al

loc_14088C15D:                          ; CODE XREF: FsRtlCopyWrite+436↓j
                                        ; FsRtlCopyWrite+43D↓j
                add     rsp, 0A0h
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

loc_14088C171:                          ; CODE XREF: FsRtlCopyWrite+10B↑j
                mov     r9b, 1
                jmp     short loc_14088C18D
; ---------------------------------------------------------------------------

loc_14088C176:                          ; CODE XREF: FsRtlCopyWrite+EE↑j
                                        ; FsRtlCopyWrite+F7↑j
                mov     dl, [rsp+0D8h+arg_18]
                mov     rcx, [r15+8]
                call    ExAcquireResourceExclusiveLite
                test    al, al
                jz      short loc_14088C14D
                mov     r9b, sil

loc_14088C18D:                          ; CODE XREF: FsRtlCopyWrite+134↑j
                mov     rdx, [rsp+0D8h+var_70]
                test    dil, dil
                jz      short loc_14088C19D
                mov     rdi, [r15+20h]
                jmp     short loc_14088C1A0
; ---------------------------------------------------------------------------

loc_14088C19D:                          ; CODE XREF: FsRtlCopyWrite+155↑j
                mov     rdi, [rbx]

loc_14088C1A0:                          ; CODE XREF: FsRtlCopyWrite+15B↑j
                lea     rbx, [rdi+rdx]
                mov     [rsp+0D8h+var_80], rbx
                mov     [rsp+0D8h+var_78], rdi
                cmp     [r13+30h], r12
                jz      loc_14088C248
                mov     cl, [r15+5]
                test    cl, cl
                jz      loc_14088C248
                mov     r8, [r15+28h]
                lea     rax, [r8+2000h]
                cmp     rdi, rax
                jge     short loc_14088C248
                mov     rax, 7FFFFFFFFFFFFFFFh
                sub     rax, rdi
                cmp     rax, rdx
                jl      short loc_14088C248
                cmp     rbx, [r15+18h]
                jg      short loc_14088C248
                test    r9b, r9b
                jz      short loc_14088C256
                cmp     rbx, r8
                jle     short loc_14088C256
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                mov     dl, [rsp+0D8h+arg_18]
                mov     rcx, [r15+8]
                call    ExAcquireResourceExclusiveLite
                test    al, al
                jz      loc_14088C14D
                cmp     [rsp+0D8h+var_87], r12b
                jz      short loc_14088C234
                mov     rdi, [r15+20h]
                mov     [rsp+0D8h+var_78], rdi
                mov     rbx, [rsp+0D8h+var_70]
                add     rbx, rdi
                mov     [rsp+0D8h+var_80], rbx

loc_14088C234:                          ; CODE XREF: FsRtlCopyWrite+1DC↑j
                cmp     [r13+30h], r12
                jz      short loc_14088C248
                mov     cl, [r15+5]
                test    cl, cl
                jz      short loc_14088C248
                cmp     rbx, [r15+18h]
                jle     short loc_14088C256

loc_14088C248:                          ; CODE XREF: FsRtlCopyWrite+172↑j
                                        ; FsRtlCopyWrite+17E↑j ...
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                jmp     loc_14088C14D
; ---------------------------------------------------------------------------

loc_14088C256:                          ; CODE XREF: FsRtlCopyWrite+1AF↑j
                                        ; FsRtlCopyWrite+1B4↑j ...
                cmp     cl, 2
                jnz     short loc_14088C2D8
                mov     rcx, [rsp+0D8h+arg_38]
                mov     rax, [rcx+8]
                mov     rax, [rax+50h]
                xorps   xmm0, xmm0
                movups  [rsp+0D8h+var_50], xmm0
                mov     rdx, [rsp+0D8h+arg_8]
                cmp     qword ptr [rdx], 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14088C288
                lea     rdx, [r15+20h]

loc_14088C288:                          ; CODE XREF: FsRtlCopyWrite+242↑j
                mov     rax, [rax+8]
                mov     [rsp+0D8h+var_A0], rcx
                lea     rcx, [rsp+0D8h+var_50]
                mov     [rsp+0D8h+var_A8], rcx
                mov     [rsp+0D8h+var_B0], r12b
                mov     ecx, [rsp+0D8h+arg_20]
                mov     dword ptr [rsp+0D8h+var_B8], ecx
                mov     r9b, [rsp+0D8h+arg_18]
                mov     r8d, [rsp+0D8h+arg_10]
                mov     rcx, r13
                call    sub_1404079D0
                test    al, al
                jnz     short loc_14088C2D8
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                jmp     loc_14088C465
; ---------------------------------------------------------------------------

loc_14088C2D8:                          ; CODE XREF: FsRtlCopyWrite+219↑j
                                        ; FsRtlCopyWrite+288↑j
                mov     rax, [r15+20h]
                cmp     rbx, rax
                jle     short loc_14088C324
                mov     [rsp+0D8h+var_86], 1
                mov     rsi, rax
                mov     [rsp+0D8h+var_68], rax
                mov     r14, [r15+28h]
                mov     [rsp+0D8h+var_60], r14
                mov     eax, dword ptr [rsp+0D8h+var_80+4]
                cmp     [r15+24h], eax
                jz      short loc_14088C320
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088C320
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+20h], rbx
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088C324
; ---------------------------------------------------------------------------

loc_14088C320:                          ; CODE XREF: FsRtlCopyWrite+2BF↑j
                                        ; FsRtlCopyWrite+2C8↑j
                mov     [r15+20h], rbx

loc_14088C324:                          ; CODE XREF: FsRtlCopyWrite+29F↑j
                                        ; FsRtlCopyWrite+2DE↑j
                mov     ecx, 4
                call    IoSetTopLevelIrp
                nop

loc_14088C32F:                          ; DATA XREF: .rdata:00000001400B540C↑o
;   __try { // __except at loc_14088C389
                cmp     rdi, [r15+28h]
                jle     short loc_14088C352
                mov     r9b, [rsp+0D8h+arg_18]
                lea     r8, [rsp+0D8h+var_78]
                lea     rdx, [r15+28h]
                mov     rcx, r13
                call    CcZeroData
                mov     [rsp+0D8h+var_88], al

loc_14088C352:                          ; CODE XREF: FsRtlCopyWrite+2F3↑j
                cmp     [rsp+0D8h+var_88], r12b
                jz      short loc_14088C387
                mov     rax, [rsp+0D8h+arg_28]
                mov     [rsp+0D8h+var_B8], rax
                mov     r9b, [rsp+0D8h+arg_18]
                mov     r8d, [rsp+0D8h+arg_10]
                lea     rdx, [rsp+0D8h+var_78]
                mov     rcx, r13
                call    CcCopyWrite
                mov     [rsp+0D8h+var_88], al

loc_14088C387:                          ; CODE XREF: FsRtlCopyWrite+317↑j
                jmp     short loc_14088C3B5
;   } // starts at 14088C32F
; ---------------------------------------------------------------------------

loc_14088C389:                          ; DATA XREF: .rdata:00000001400B540C↑o
;   __except(loc_14088C482) // owned by 14088C32F
                mov     [rsp+0D8h+var_88], 0
                xor     r12d, r12d
                mov     r13, [rsp+0D8h+arg_0]
                mov     r15, [rsp+0D8h+var_58]
                mov     rdi, [rsp+0D8h+var_78]
                mov     rbx, [rsp+0D8h+var_80]
                mov     rsi, [rsp+0D8h+var_68]
                mov     r14, [rsp+0D8h+var_60]

loc_14088C3B5:                          ; CODE XREF: FsRtlCopyWrite:loc_14088C387↑j
                xor     ecx, ecx
                call    IoSetTopLevelIrp
                cmp     [rsp+0D8h+var_88], r12b
                jz      short loc_14088C425
                cmp     rbx, [r15+28h]
                jle     short loc_14088C3F6
                mov     eax, dword ptr [rsp+0D8h+var_80+4]
                cmp     [r15+2Ch], eax
                jz      short loc_14088C3F2
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088C3F2
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+28h], rbx
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088C3F6
; ---------------------------------------------------------------------------

loc_14088C3F2:                          ; CODE XREF: FsRtlCopyWrite+391↑j
                                        ; FsRtlCopyWrite+39A↑j
                mov     [r15+28h], rbx

loc_14088C3F6:                          ; CODE XREF: FsRtlCopyWrite+387↑j
                                        ; FsRtlCopyWrite+3B0↑j
                bts     dword ptr [r13+50h], 0Ch
                cmp     [rsp+0D8h+var_86], r12b
                jz      short loc_14088C415
                mov     rax, [r13+28h]
                mov     rcx, [rax+8]
                mov     [rcx+8], rbx
                bts     dword ptr [r13+50h], 0Dh

loc_14088C415:                          ; CODE XREF: FsRtlCopyWrite+3C1↑j
                mov     ecx, [rsp+0D8h+arg_10]
                add     rcx, rdi
                mov     [r13+68h], rcx
                jmp     short loc_14088C457
; ---------------------------------------------------------------------------

loc_14088C425:                          ; CODE XREF: FsRtlCopyWrite+381↑j
                cmp     [rsp+0D8h+var_86], r12b
                jz      short loc_14088C457
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088C44F
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+20h], rsi
                mov     [r15+28h], r14
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088C457
; ---------------------------------------------------------------------------

loc_14088C44F:                          ; CODE XREF: FsRtlCopyWrite+3F3↑j
                mov     [r15+20h], rsi
                mov     [r15+28h], r14

loc_14088C457:                          ; CODE XREF: FsRtlCopyWrite+3E3↑j
                                        ; FsRtlCopyWrite+3EA↑j ...
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                mov     r12b, [rsp+0D8h+var_88]

loc_14088C465:                          ; CODE XREF: FsRtlCopyWrite+293↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     al, r12b
                jmp     loc_14088C15D
; ---------------------------------------------------------------------------

loc_14088C47B:                          ; CODE XREF: FsRtlCopyWrite+BC↑j
                mov     al, 1
                jmp     loc_14088C15D
; } // starts at 14088C040
; ---------------------------------------------------------------------------

loc_14088C482:                          ; DATA XREF: .rdata:00000001400B540C↑o
                                        ; .pdata:000000014011C1F0↑o ...
;   __except filter // owned by 14088C32F
                push    rbp
                sub     rsp, 50h
                mov     rbp, rdx
                mov     rax, [rcx]
                mov     ecx, [rax]
                call    FsRtlIsNtstatusExpected
                xor     ecx, ecx
                test    al, al
                setnz   cl
                mov     eax, ecx
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCopyWrite  endp

byte_14088C4A5  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014011C1FC↑o

; =============== S U B R O U T I N E =======================================


sub_14088C4AC   proc near               ; CODE XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+4CA↑p
                                        ; DATA XREF: .pdata:000000014011C208↑o

var_48          = qword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 60h
                xorps   xmm0, xmm0
                mov     rsi, rdx
                mov     rdi, rcx
                xor     eax, eax
                movups  [rsp+68h+var_28], xmm0
                xor     r8d, r8d
                mov     [r11-18h], rax
                xor     edx, edx
                lea     rcx, [r11-28h]
                movups  [rsp+68h+var_38], xmm0
                call    KeInitializeEvent
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                xor     r8d, r8d
                mov     rcx, rax
                mov     rbx, rax
                mov     dl, [rax+4Ch]
                call    IoAllocateIrpEx
                mov     rdx, rax
                test    rax, rax
                jnz     short loc_14088C50B
                mov     eax, 0C000009Ah
                jmp     short loc_14088C588
; ---------------------------------------------------------------------------

loc_14088C50B:                          ; CODE XREF: sub_14088C4AC+56↑j
                mov     byte ptr [rax+40h], 0
                mov     rcx, rbx
                mov     [rdx+18h], rsi
                lea     rax, [rsp+68h+var_38]
                mov     [rdx+48h], rax
                lea     rax, [rsp+68h+var_28]
                mov     [rdx+50h], rax
                mov     rax, gs:188h
                mov     [rdx+98h], rax
                mov     rax, [rdx+0B8h]
                and     dword ptr [rax-38h], 0
                and     qword ptr [rax-28h], 0
                mov     word ptr [rax-48h], 0Dh
                mov     [rax-18h], rdi
                mov     dword ptr [rax-30h], 903A4h
                mov     dword ptr [rax-40h], 8
                call    IofCallDriver
                cmp     eax, 103h
                jnz     short loc_14088C588
                and     [rsp+68h+var_48], 0
                lea     rcx, [rsp+68h+var_28]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, dword ptr [rsp+68h+var_38]

loc_14088C588:                          ; CODE XREF: sub_14088C4AC+5D↑j
                                        ; sub_14088C4AC+BE↑j
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14088C4AC   endp

algn_14088C599:                         ; DATA XREF: .pdata:000000014011C208↑o
                align 20h
; Exported entry 490. FsRtlLogCcFlushError

; =============== S U B R O U T I N E =======================================


