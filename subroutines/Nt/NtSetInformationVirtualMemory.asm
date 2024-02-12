NtSetInformationVirtualMemory proc near ; DATA XREF: .rdata:00000001400614A0↑o
                                        ; .pdata:0000000140100014↑o ...

var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_330         = qword ptr -330h
var_328         = qword ptr -328h
var_318         = byte ptr -318h
var_310         = qword ptr -310h
var_308         = qword ptr -308h
var_300         = dword ptr -300h
var_2FC         = dword ptr -2FCh
var_2F4         = dword ptr -2F4h
var_2F0         = qword ptr -2F0h
var_2E8         = dword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = dword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = xmmword ptr -2C8h
var_2B8         = xmmword ptr -2B8h
var_2A8         = qword ptr -2A8h
var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_270         = xmmword ptr -270h
var_260         = xmmword ptr -260h
var_250         = xmmword ptr -250h
var_238         = byte ptr -238h
var_138         = byte ptr -138h
var_38          = qword ptr -38h
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001407E6E8C SIZE 00000074 BYTES
; FUNCTION CHUNK AT 0000000140809F60 SIZE 0000028B BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 340h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+368h+var_38], rax
                mov     r10, r9
                mov     [rsp+368h+var_288], r9
                mov     r13, r8
                mov     r14d, edx
                mov     r15, rcx
                mov     [rsp+368h+var_308], rcx
                mov     [rsp+368h+var_290], rcx
                mov     rdx, [rsp+368h+arg_20]
                and     [rsp+368h+var_2F0], 0
                xorps   xmm0, xmm0
                movups  [rsp+368h+var_270], xmm0
                movups  [rsp+368h+var_260], xmm0
                movups  [rsp+368h+var_250], xmm0
                and     [rsp+368h+var_2E8], 0
                and     [rsp+368h+var_2D0], 0
                xor     r11d, r11d
                mov     [rsp+368h+var_2F4], r11d
                xor     ebx, ebx
                mov     [rsp+368h+var_2D8], ebx
                lea     rax, [rsp+368h+var_238]
                mov     [rsp+368h+var_310], rax
                xor     edi, edi
                and     [rsp+368h+var_300], ebx
                test    r14d, r14d
                js      loc_14080A1E1
                lea     r12d, [r11+1]
                cmp     r14d, r12d
                jle     short loc_14065FCEE
                cmp     r14d, 2
                jz      short loc_14065FD47
                jle     loc_14080A1E1
                cmp     r14d, 6
                jg      loc_14080A1E1

loc_14065FCEE:                          ; CODE XREF: NtSetInformationVirtualMemory+B6↑j
                test    rdx, rdx
                jz      loc_1406602A3
                mov     ecx, [rsp+368h+arg_28]
                cmp     ecx, 4
                jnz     loc_140809F60
                cmp     r14d, ecx
                jnz     short loc_14065FD57
                cmp     cs:dword_140C2A1D8, ebx
                jnz     loc_140809F6A
                mov     eax, 0C00000BBh

loc_14065FD1D:                          ; CODE XREF: NtSetInformationVirtualMemory+31D↓j
                                        ; NtSetInformationVirtualMemory:loc_14065FF57↓j ...
                mov     rcx, [rsp+368h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+368h+arg_8]
                add     rsp, 340h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14065FD47:                          ; CODE XREF: NtSetInformationVirtualMemory+BC↑j
                mov     ecx, [rsp+368h+arg_28]
                cmp     ecx, 28h ; '('
                jnz     loc_140809F60

loc_14065FD57:                          ; CODE XREF: NtSetInformationVirtualMemory+EA↑j
                                        ; NtSetInformationVirtualMemory+1AA34D↓j
                lea     rax, [r8-1]
                mov     r8, 0FFFFFFFFFFFFFFEh
                cmp     rax, r8
                ja      loc_140809F73
                mov     r9, gs:188h
                mov     [rsp+368h+var_298], r9
                mov     r8, [r9+0B8h]
                mov     [rsp+368h+var_2E0], r8
                cmp     r14d, 2
                jnz     short loc_14065FDA5
                test    dword ptr [r8+9D0h], 100h
                jnz     loc_140809F7D

loc_14065FDA5:                          ; CODE XREF: NtSetInformationVirtualMemory+172↑j
                                        ; NtSetInformationVirtualMemory+1AA371↓j
                xor     eax, eax
                movups  [rsp+368h+var_2C8], xmm0
                movups  [rsp+368h+var_2B8], xmm0
                mov     [rsp+368h+var_2A8], rax
                mov     r9b, [r9+232h]
                mov     [rsp+368h+var_318], r9b
                test    r9b, r9b
                jz      loc_1406601CD

loc_14065FDD4:                          ; DATA XREF: .rdata:0000000140061468↑o
;   __try { // __except at loc_14065FF57
                mov     rax, r13
                shl     rax, 4
                test    rax, rax
                jz      loc_14065FF02
                test    r10b, 3
                jnz     loc_14065FEED
                lea     r8, [rax+r10]
                mov     r15, 7FFFFFFF0000h
                cmp     r8, r15
                ja      loc_14065FEF2
                cmp     r8, r10
                jb      loc_14065FEF2

loc_14065FE0E:                          ; CODE XREF: NtSetInformationVirtualMemory+2DD↓j
                                        ; NtSetInformationVirtualMemory+2EC↓j
                cmp     r14d, 2
                jnz     loc_14065FEC9
                test    ecx, ecx
                jz      short loc_14065FE3A
                test    dl, 3
                jnz     loc_14065FF11
                add     rcx, rdx
                cmp     rcx, r15
                ja      loc_14065FF16
                cmp     rcx, rdx
                jb      loc_14065FF16

loc_14065FE3A:                          ; CODE XREF: NtSetInformationVirtualMemory+1FA↑j
                                        ; NtSetInformationVirtualMemory+301↓j
                movups  xmm2, xmmword ptr [rdx]
                movups  [rsp+368h+var_2C8], xmm2
                movups  xmm0, xmmword ptr [rdx+10h]
                movups  [rsp+368h+var_2B8], xmm0
                movsd   xmm1, qword ptr [rdx+20h]
                movsd   [rsp+368h+var_2A8], xmm1
                movd    eax, xmm2
                mov     [rsp+368h+var_2FC], eax
                test    eax, eax
                jz      loc_14065FF38
                mov     rax, qword ptr [rsp+368h+var_2C8]
                shr     rax, 20h
                test    eax, eax
                jnz     loc_14065FF38
                lea     edx, [rax+4]
                mov     r8d, edx
                mov     rcx, qword ptr [rsp+368h+var_2C8+8]
                call    ProbeForWrite
                mov     eax, [rsp+368h+var_2FC]
                test    rax, rax
                jz      short loc_14065FEC2
                test    byte ptr [rsp+368h+var_2B8], 3
                jnz     short loc_14065FF26
                add     rax, rax
                mov     rcx, qword ptr [rsp+368h+var_2B8]
                lea     rdx, [rcx+rax*8]
                cmp     rdx, r15
                ja      short loc_14065FF2B
                cmp     rdx, rcx
                jb      short loc_14065FF2B

loc_14065FEC2:                          ; CODE XREF: NtSetInformationVirtualMemory+27D↑j
                                        ; NtSetInformationVirtualMemory+316↓j
                mov     r9b, [rsp+368h+var_318]
                jmp     short loc_14065FF48
; ---------------------------------------------------------------------------

loc_14065FEC9:                          ; CODE XREF: NtSetInformationVirtualMemory+1F2↑j
                test    dl, 3
                jnz     short loc_14065FF42
                mov     rax, rdx
                cmp     rdx, r15
                cmovnb  rax, r15
                mov     al, [rax]
                mov     eax, [rdx]
                mov     [rsp+368h+var_300], eax
                mov     eax, dword ptr [rsp+368h+var_2C8]
                mov     [rsp+368h+var_2FC], eax
                jmp     short loc_14065FF48
; ---------------------------------------------------------------------------

loc_14065FEED:                          ; CODE XREF: NtSetInformationVirtualMemory+1C8↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14065FEF2:                          ; CODE XREF: NtSetInformationVirtualMemory+1DF↑j
                                        ; NtSetInformationVirtualMemory+1E8↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14065FE0E
; ---------------------------------------------------------------------------

loc_14065FF02:                          ; CODE XREF: NtSetInformationVirtualMemory+1BE↑j
                mov     r15, 7FFFFFFF0000h
                jmp     loc_14065FE0E
; ---------------------------------------------------------------------------

loc_14065FF11:                          ; CODE XREF: NtSetInformationVirtualMemory+1FF↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14065FF16:                          ; CODE XREF: NtSetInformationVirtualMemory+20B↑j
                                        ; NtSetInformationVirtualMemory+214↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14065FE3A
; ---------------------------------------------------------------------------

loc_14065FF26:                          ; CODE XREF: NtSetInformationVirtualMemory+287↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14065FF2B:                          ; CODE XREF: NtSetInformationVirtualMemory+29B↑j
                                        ; NtSetInformationVirtualMemory+2A0↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14065FEC2
; ---------------------------------------------------------------------------

loc_14065FF38:                          ; CODE XREF: NtSetInformationVirtualMemory+249↑j
                                        ; NtSetInformationVirtualMemory+25D↑j
                mov     eax, 0C00000F3h
                jmp     loc_14065FD1D
; ---------------------------------------------------------------------------

loc_14065FF42:                          ; CODE XREF: NtSetInformationVirtualMemory+2AC↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 8

loc_14065FF48:                          ; CODE XREF: NtSetInformationVirtualMemory+2A7↑j
                                        ; NtSetInformationVirtualMemory+2CB↑j
                mov     r8, [rsp+368h+var_2E0]
                mov     r15, [rsp+368h+var_308]
                jmp     short loc_14065FF5C
;   } // starts at 14065FDD4
; ---------------------------------------------------------------------------

loc_14065FF57:                          ; DATA XREF: .rdata:0000000140061468↑o
;   __except(1) // owned by 14065FDD4
                jmp     loc_14065FD1D
; ---------------------------------------------------------------------------

loc_14065FF5C:                          ; CODE XREF: NtSetInformationVirtualMemory+335↑j
                                        ; NtSetInformationVirtualMemory+5C8↓j ...
                cmp     r15, 0FFFFFFFFFFFFFFFFh
                jnz     loc_14066014D
                mov     [rsp+368h+var_2F0], r8

loc_14065FF6B:                          ; CODE XREF: NtSetInformationVirtualMemory+55D↓j
                lea     r15, [rsp+368h+var_138]
                mov     [rsp+368h+var_2E0], r15
                cmp     r13, 10h
                ja      loc_140809FE4

loc_14065FF85:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA3E9↓j
                cmp     r14d, 2
                jnz     short loc_14065FFA9
                mov     eax, [rsp+368h+var_2FC]
                cmp     eax, 10h
                ja      loc_14080A029

loc_14065FF98:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA428↓j
                mov     rcx, qword ptr [rsp+368h+var_2B8+8]
                test    rcx, rcx
                jnz     loc_14080A060

loc_14065FFA9:                          ; CODE XREF: NtSetInformationVirtualMemory+369↑j
                                        ; NtSetInformationVirtualMemory+1AA48A↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_14065FFE3
                mov     r8, r13
                shl     r8, 4
                mov     rdx, [rsp+368h+var_288]
                mov     rcx, r15
                call    memmove
                cmp     r14d, 2
                jnz     short loc_14065FFE1
                mov     r8d, [rsp+368h+var_2FC]
                shl     r8, 4
                mov     rdx, qword ptr [rsp+368h+var_2B8]
                mov     rcx, [rsp+368h+var_310]
                call    memmove

loc_14065FFE1:                          ; CODE XREF: NtSetInformationVirtualMemory+3A4↑j
                jmp     short loc_14066000C
;   } // starts at 14065FFA9
; ---------------------------------------------------------------------------

loc_14065FFE3:                          ; DATA XREF: .rdata:0000000140061478↑o
;   __except(loc_1407E6E8C) // owned by 14065FFA9
                mov     edi, eax
                mov     r12d, 1
                mov     r15, [rsp+368h+var_2E0]
                mov     r14, [rsp+368h+var_310]
                mov     ebx, [rsp+368h+var_2D8]
                mov     r13, [rsp+368h+var_290]
                jmp     loc_140660104
; ---------------------------------------------------------------------------

loc_14066000C:                          ; CODE XREF: NtSetInformationVirtualMemory:loc_14065FFE1↑j
                mov     rax, [rsp+368h+var_298]
                mov     rax, [rax+0B8h]
                mov     rcx, [rsp+368h+var_2F0]
                cmp     rax, rcx
                jnz     loc_140660199

loc_140660029:                          ; CODE XREF: NtSetInformationVirtualMemory+596↓j
                xor     r8d, r8d
                mov     rdx, r13
                mov     rcx, r15
                call    sub_1406602BC
                test    eax, eax
                jz      loc_14080A0B9
                test    r14d, r14d
                jz      loc_1406601ED
                sub     r14d, 1
                jz      loc_14066027D
                sub     r14d, 1
                jnz     loc_14080A0C3
                mov     r14, [rsp+368h+var_310]
                cmp     r13, r12
                jnz     loc_14080A199
                mov     rax, [rsp+368h+var_2A8]
                mov     [rsp+368h+var_328], rax
                mov     rax, [rsp+368h+var_2D0]
                mov     [rsp+368h+var_330], rax
                mov     eax, [rsp+368h+var_2F4]
                mov     dword ptr [rsp+368h+var_338], eax
                lea     rax, [rsp+368h+var_2E8]
                mov     [rsp+368h+var_340], rax
                mov     eax, [rsp+368h+var_2FC]
                mov     dword ptr [rsp+368h+var_348], eax
                mov     r9, r14
                mov     r8, [r15+8]
                mov     rdx, [r15]
                mov     rcx, [rsp+368h+var_2F0]
                call    sub_140660354
                mov     edi, eax
                mov     [rsp+368h+var_2F4], eax
                test    ebx, ebx
                jnz     loc_1406601BB

loc_1406600C3:                          ; CODE XREF: NtSetInformationVirtualMemory+5A8↓j
                                        ; DATA XREF: .rdata:0000000140061488↑o
;   __try { // __except at loc_1406600E1
                xor     ebx, ebx
                mov     [rsp+368h+var_2FC], ebx
                mov     ecx, [rsp+368h+var_2E8]
                mov     rax, qword ptr [rsp+368h+var_2C8+8]
                mov     [rax], ecx
                mov     r13, [rsp+368h+var_308]
                jmp     short loc_140660104
;   } // starts at 1406600C3
; ---------------------------------------------------------------------------

loc_1406600E1:                          ; DATA XREF: .rdata:0000000140061488↑o
;   __except(loc_1407E6EC6) // owned by 1406600C3
                mov     r12d, 1
                mov     edi, [rsp+368h+var_2F4]
                mov     r15, [rsp+368h+var_2E0]
                mov     r14, [rsp+368h+var_310]
                mov     ebx, [rsp+368h+var_2FC]
                mov     r13, [rsp+368h+var_290]

loc_140660104:                          ; CODE XREF: NtSetInformationVirtualMemory+3E7↑j
                                        ; NtSetInformationVirtualMemory+4BF↑j ...
                test    r12b, bl
                jnz     loc_14080A1A3

loc_14066010D:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA591↓j
                mov     rcx, [rsp+368h+var_2D0]
                test    rcx, rcx
                jnz     loc_14080A1B6

loc_14066011E:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA59C↓j
                cmp     r13, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140660188

loc_140660124:                          ; CODE XREF: NtSetInformationVirtualMemory+577↓j
                lea     rax, [rsp+368h+var_138]
                cmp     r15, rax
                jnz     loc_14080A1C1

loc_140660135:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA5AC↓j
                lea     rax, [rsp+368h+var_238]
                cmp     r14, rax
                jnz     loc_14080A1D1

loc_140660146:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA5BC↓j
                mov     eax, edi
                jmp     loc_14065FD1D
; ---------------------------------------------------------------------------

loc_14066014D:                          ; CODE XREF: NtSetInformationVirtualMemory+340↑j
                and     [rsp+368h+var_338], 0
                lea     rax, [rsp+368h+var_2F0]
                mov     [rsp+368h+var_340], rax
                mov     dword ptr [rsp+368h+var_348], 66506D4Dh
                mov     r8, cs:PsProcessType
                mov     edx, 8
                mov     rcx, r15
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                jns     loc_14065FF6B
                jmp     loc_14065FD1D
; ---------------------------------------------------------------------------

loc_140660188:                          ; CODE XREF: NtSetInformationVirtualMemory+502↑j
                mov     edx, 66506D4Dh
                mov     rcx, [rsp+368h+var_2F0]
                call    ObfDereferenceObjectWithTag
                jmp     short loc_140660124
; ---------------------------------------------------------------------------

loc_140660199:                          ; CODE XREF: NtSetInformationVirtualMemory+403↑j
                lea     eax, [r14-3]
                cmp     eax, r12d
                jbe     loc_14080A0AF
                lea     rdx, [rsp+368h+var_270]
                call    KeStackAttachProcess
                mov     ebx, r12d
                jmp     loc_140660029
; ---------------------------------------------------------------------------

loc_1406601BB:                          ; CODE XREF: NtSetInformationVirtualMemory+49D↑j
                lea     rcx, [rsp+368h+var_270]
                call    KeUnstackDetachProcess
                jmp     loc_1406600C3
; ---------------------------------------------------------------------------

loc_1406601CD:                          ; CODE XREF: NtSetInformationVirtualMemory+1AE↑j
                cmp     r14d, 2
                jz      loc_140809F96
                mov     eax, [rdx]
                mov     [rsp+368h+var_300], eax
                mov     eax, dword ptr [rsp+368h+var_2C8]
                mov     [rsp+368h+var_2FC], eax
                jmp     loc_14065FF5C
; ---------------------------------------------------------------------------

loc_1406601ED:                          ; CODE XREF: NtSetInformationVirtualMemory+422↑j
                cmp     [rsp+368h+var_300], r8d
                jnz     loc_1406602AD
                mov     r9, [rsp+368h+var_298]
                mov     rcx, r9
                call    sub_1402DEE04
                and     eax, 7
                mov     ecx, eax
                and     ecx, 7
                cmp     cl, 5
                sbb     edx, edx
                and     edx, 40h
                add     edx, 40000h
                or      edx, eax
                mov     r8d, edx
                and     r8d, 7
                shl     r8d, 3
                or      r8d, edx
                mov     eax, r8d
                and     eax, 38h
                cmp     al, 28h ; '('
                jb      short loc_140660299

loc_140660238:                          ; CODE XREF: NtSetInformationVirtualMemory+681↓j
                mov     rcx, r9
                call    sub_1402C4F40
                mov     ecx, 4000h
                mov     r9d, 4400h
                cmp     eax, r12d
                cmovg   r9d, ecx
                or      r9d, r8d
                mov     r8, [rsp+368h+var_2F0]
                add     r8, 680h
                mov     rdx, r15
                mov     rcx, r13
                call    sub_140268AA0

loc_14066026C:                          ; CODE XREF: NtSetInformationVirtualMemory+677↓j
                                        ; NtSetInformationVirtualMemory+1AA4E3↓j ...
                mov     edi, eax

loc_14066026E:                          ; CODE XREF: NtSetInformationVirtualMemory+692↓j
                                        ; NtSetInformationVirtualMemory+1AA484↓j ...
                mov     r14, [rsp+368h+var_310]

loc_140660273:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA404↓j
                                        ; NtSetInformationVirtualMemory+1AA43B↓j ...
                mov     r13, [rsp+368h+var_308]
                jmp     loc_140660104
; ---------------------------------------------------------------------------

loc_14066027D:                          ; CODE XREF: NtSetInformationVirtualMemory+42C↑j
                cmp     [rsp+368h+var_300], 5
                ja      short loc_1406602AD
                mov     r9d, [rsp+368h+var_300]
                mov     r8d, r12d

loc_14066028C:                          ; CODE XREF: NtSetInformationVirtualMemory+1AA574↓j
                mov     rdx, r15
                mov     rcx, r13
                call    sub_140711F30
                jmp     short loc_14066026C
; ---------------------------------------------------------------------------

loc_140660299:                          ; CODE XREF: NtSetInformationVirtualMemory+616↑j
                and     r8d, 0FFFFFFEFh
                or      r8d, 28h
                jmp     short loc_140660238
; ---------------------------------------------------------------------------

loc_1406602A3:                          ; CODE XREF: NtSetInformationVirtualMemory+D1↑j
                                        ; NtSetInformationVirtualMemory+1AA3A5↓j ...
                mov     eax, 0C00000F3h
                jmp     loc_14065FD1D
; ---------------------------------------------------------------------------

loc_1406602AD:                          ; CODE XREF: NtSetInformationVirtualMemory+5D2↑j
                                        ; NtSetInformationVirtualMemory+662↑j ...
                mov     edi, 0C00000F3h
                jmp     short loc_14066026E
; } // starts at 14065FC20
NtSetInformationVirtualMemory endp
