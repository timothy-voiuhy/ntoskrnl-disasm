FsRtlGetVirtualDiskNestingLevel proc near
                                        ; DATA XREF: .rdata:0000000140087E88↑o
                                        ; .pdata:00000001400D9074↑o

var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = word ptr -80h
var_7E          = byte ptr -7Eh
var_7D          = byte ptr -7Dh
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140489F02 SIZE 00000032 BYTES

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
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                mov     eax, [rcx+48h]
                xor     r13d, r13d
                mov     [rbp+57h+var_7D], r13b
                xorps   xmm0, xmm0
                mov     r14, r8
                mov     r15, rdx
                mov     rbx, rcx
                mov     esi, r13d
                lea     edi, [r13+1]
                movups  [rbp+57h+var_60], xmm0
                cmp     eax, 24h ; '$'
                ja      loc_140489F2A
                mov     rcx, 100000018Ch
                bt      rcx, rax
                jnb     loc_140489F2A
                lea     rax, [rbp+57h+var_78]
                mov     [rbp+57h+var_80], r13w
                mov     [rbp+57h+var_70], rax
                xor     ecx, ecx
                lea     rax, [rbp+57h+var_78]
                mov     [rbp+57h+var_7E], 6
                mov     [rbp+57h+var_78], rax
                mov     [rbp+57h+var_7C], r13d
                call    IoSetThreadHardErrorMode
                mov     r12b, al
                mov     [rbp+57h+var_68], r13
                xor     eax, eax
                mov     dword ptr [rbp+57h+var_68], edi
                mov     [rbp+57h+var_40], eax
                lea     r9d, [r13+8]
                mov     rax, [rbp+5Fh]
                lea     r8, [rbp+57h+var_68]
                mov     [rsp+0D0h+var_88], rax
                xorps   xmm0, xmm0
                lea     rax, [rbp+57h+var_60]
                mov     rdx, rbx
                mov     [rsp+0D0h+var_90], rax
                mov     ecx, 2D1190h
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0D0h+var_98], rax
                lea     rax, [rbp+57h+var_50]
                mov     [rsp+0D0h+var_A0], r13b
                mov     [rsp+0D0h+var_A8], 14h
                mov     [rsp+0D0h+var_B0], rax
                movups  [rbp+57h+var_50], xmm0
                call    sub_14030FA70
                test    rax, rax
                jz      loc_140489F02
                mov     rdx, rax
                mov     rcx, rbx
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_140489F0C

loc_14035E139:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+12BEF5↓j
                test    ebx, ebx
                jns     short loc_14035E184

loc_14035E13D:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+159↓j
                                        ; FsRtlGetVirtualDiskNestingLevel+15E↓j
                cmp     ebx, 0C000009Ah
                cmovnz  ebx, r13d

loc_14035E147:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+186↓j
                                        ; FsRtlGetVirtualDiskNestingLevel+12BED7↓j
                mov     [r15], esi
                test    r14, r14
                jz      short loc_14035E152
                mov     [r14], edi

loc_14035E152:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+11D↑j
                mov     cl, r12b
                call    IoSetThreadHardErrorMode
                mov     eax, ebx

loc_14035E15C:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+12BEFF↓j
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_18]
                add     rsp, 0A0h
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

loc_14035E184:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+10B↑j
                cmp     qword ptr [rbp+57h+var_60+8], 14h
                jb      short loc_14035E13D
                cmp     dword ptr [rbp+57h+var_50], edi
                jnz     short loc_14035E13D
                call    FsRtlQueryMaximumVirtualDiskNestingLevel
                mov     ecx, [rbp+57h+var_40]
                cmp     ecx, eax
                ja      short loc_14035E1BC
                test    ecx, ecx
                jnz     short loc_14035E1B8

loc_14035E1A0:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+18A↓j
                                        ; FsRtlGetVirtualDiskNestingLevel+193↓j
                cmp     byte ptr [rbp+57h+var_50+4], r13b
                mov     ecx, dword ptr [rbp+57h+var_50+0Ch]
                cmovnz  edi, r13d
                mov     edx, edi
                or      edi, 2
                and     cl, 2
                cmovz   edi, edx
                jmp     short loc_14035E147
; ---------------------------------------------------------------------------

loc_14035E1B8:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+16E↑j
                mov     esi, ecx
                jmp     short loc_14035E1A0
; ---------------------------------------------------------------------------

loc_14035E1BC:                          ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+16A↑j
                call    FsRtlQueryMaximumVirtualDiskNestingLevel
                mov     esi, eax
                jmp     short loc_14035E1A0
; } // starts at 14035E030
FsRtlGetVirtualDiskNestingLevel endp
