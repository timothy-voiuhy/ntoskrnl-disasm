FsRtlCheckOplockForFsFilterCallback proc near
                                        ; DATA XREF: .pdata:00000001400FB0E8↑o

var_188         = qword ptr -188h
var_180         = dword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = byte ptr -138h
var_134         = dword ptr -134h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_D8          = qword ptr -0D8h
var_B8          = byte ptr -0B8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1A8h+var_48], rax
                mov     r12d, r8d
                mov     rsi, rdx
                xor     r13d, r13d
                mov     r14d, r13d
                mov     rbx, [rcx]
                mov     [rsp+1A8h+var_110], rbx
                test    r8d, 0FFFFFFF7h
                jz      short loc_1405CD0AF
                mov     eax, 0C000000Dh
                jmp     loc_1405CD2AF
; ---------------------------------------------------------------------------

loc_1405CD0AF:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+43↑j
                test    rbx, rbx
                jz      loc_1405CD2AC
                mov     [rsp+1A8h+var_138], r13b

loc_1405CD0BD:                          ; DATA XREF: .rdata:00000001400B5810↑o
;   __try { // __finally(loc_1405CD2D3)
                mov     rcx, [rbx+98h]
                call    ExAcquireFastMutexUnsafe
                mov     dil, 1
                mov     [rsp+1A8h+var_138], dil
                mov     r15d, [rbx+90h]
                test    r15d, 7000h
                jz      loc_1405CD29B
                xor     edx, edx
                lea     r8d, [rdx+48h]
                lea     rcx, [rsp+1A8h+var_108]
                call    memset
                mov     r11d, 4
                mov     [rsp+1A8h+var_108], r11b
                mov     rax, [rsi+10h]
                mov     [rsp+1A8h+var_D8], rax
                cmp     byte ptr [rsi+4], 0FFh
                jnz     loc_1405CD29B
                lea     r10d, [r11-3]
                cmp     [rsi+18h], r10d
                jnz     loc_1405CD29B
                mov     r9d, [rsi+1Ch]
                test    r9b, 44h
                jz      loc_1405CD29B
                cmp     cs:dword_140C021A0, 5
                jbe     loc_1405CD226
                mov     rdx, 400000000000h
                lea     rcx, dword_140C021A0
                call    sub_140209F38
                test    al, al
                jz      loc_1405CD226
                mov     [rsp+1A8h+var_120], r10
                lea     rax, [rsp+1A8h+var_120]
                mov     [rsp+1A8h+var_98], rax
                mov     [rsp+1A8h+var_90], 8
                mov     [rsp+1A8h+var_134], r10d
                lea     rax, [rsp+1A8h+var_134]
                mov     [rsp+1A8h+var_88], rax
                mov     [rsp+1A8h+var_80], r11
                mov     [rsp+1A8h+var_130], r9d
                lea     rax, [rsp+1A8h+var_130]
                mov     [rsp+1A8h+var_78], rax
                mov     [rsp+1A8h+var_70], r11
                mov     [rsp+1A8h+var_12C], r15d
                lea     rax, [rsp+1A8h+var_12C]
                mov     [rsp+1A8h+var_68], rax
                mov     [rsp+1A8h+var_60], r11
                mov     [rsp+1A8h+var_118], 1000000h
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_58], rax
                mov     [rsp+1A8h+var_50], 8
                lea     rax, [rsp+1A8h+var_B8]
                mov     [rsp+1A8h+var_188], rax
                lea     r9d, [r11+3]
                lea     rdx, byte_1400237E8
                lea     rcx, dword_140C021A0
                call    sub_1403761E4
                mov     dil, [rsp+1A8h+var_138]

loc_1405CD226:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+DF↑j
                                        ; FsRtlCheckOplockForFsFilterCallback+FD↑j
                test    dil, dil
                jnz     short loc_1405CD23C
                mov     rcx, [rbx+98h]
                call    ExAcquireFastMutexUnsafe
                mov     [rsp+1A8h+var_138], 1

loc_1405CD23C:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+1C9↑j
                mov     [rsp+1A8h+var_140], r13
                lea     rax, [rsp+1A8h+var_138]
                mov     [rsp+1A8h+var_148], rax
                mov     [rsp+1A8h+var_150], r13
                mov     [rsp+1A8h+var_158], r13
                mov     [rsp+1A8h+var_160], r13
                mov     [rsp+1A8h+var_168], r13
                mov     [rsp+1A8h+var_170], r13
                mov     [rsp+1A8h+var_178], r13
                mov     [rsp+1A8h+var_180], 5000h
                mov     dword ptr [rsp+1A8h+var_188], r13d
                mov     r9d, r12d
                xor     r8d, r8d
                lea     rdx, [rsp+1A8h+var_108]
                mov     rcx, rbx
                call    sub_14024DBF0
                mov     r14d, eax
                mov     [rsp+1A8h+var_128], eax
                mov     dil, [rsp+1A8h+var_138]
;   } // starts at 1405CD0BD

loc_1405CD29B:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+7F↑j
                                        ; FsRtlCheckOplockForFsFilterCallback+B6↑j ...
                test    dil, dil
                jz      short loc_1405CD2AC
                mov     rcx, [rbx+98h]
                call    ExReleaseFastMutexUnsafe

loc_1405CD2AC:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+52↑j
                                        ; FsRtlCheckOplockForFsFilterCallback+23E↑j
                mov     eax, r14d

loc_1405CD2AF:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+4A↑j
                mov     rcx, [rsp+1A8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 170h
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
; } // starts at 1405CD060
; ---------------------------------------------------------------------------

loc_1405CD2D3:                          ; DATA XREF: .rdata:00000001400B5810↑o
                                        ; .pdata:00000001400FB0E8↑o ...
;   __finally // owned by 1405CD0BD
                push    rbp
                sub     rsp, 70h
                mov     rbp, rdx
                cmp     byte ptr [rbp+70h], 0
                jz      short loc_1405CD2F6
                mov     rcx, [rbp+98h]
                mov     rcx, [rcx+98h]
                call    ExReleaseFastMutexUnsafe
                nop

loc_1405CD2F6:                          ; CODE XREF: FsRtlCheckOplockForFsFilterCallback+280↑j
                add     rsp, 70h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCheckOplockForFsFilterCallback endp
