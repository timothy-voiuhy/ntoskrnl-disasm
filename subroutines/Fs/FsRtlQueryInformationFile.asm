FsRtlQueryInformationFile proc near     ; DATA XREF: .pdata:000000014011C370↑o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_8           = byte ptr -8
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                mov     [r11+20h], r14
                push    r15
                sub     rsp, 60h
                mov     esi, r9d
                mov     r14d, r8d
                mov     r15, rdx
                mov     rdi, rcx
                xor     ebx, ebx
                mov     [r11-38h], rbx
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+68h+var_20], xmm0
                mov     [r11-10h], rax
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [r11-20h]
                call    KeInitializeEvent
                nop

loc_14088DA78:                          ; DATA XREF: .rdata:00000001400B5874↑o
;   __try { // __finally(loc_14088DBD3)
                mov     eax, [rdi+50h]
                bt      eax, 0Bh
                jnb     short loc_14088DA8B
                mov     edi, 0C0000010h
                jmp     loc_14088DB95
; ---------------------------------------------------------------------------

loc_14088DA8B:                          ; CODE XREF: FsRtlQueryInformationFile+4F↑j
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+68h+var_30], rax
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    IoAllocateIrpEx
                mov     rbx, rax
                mov     [rsp+68h+var_38], rax
                test    rax, rax
                jnz     short loc_14088DABD
                mov     edi, 0C000009Ah
                jmp     loc_14088DB95
; ---------------------------------------------------------------------------

loc_14088DABD:                          ; CODE XREF: FsRtlQueryInformationFile+81↑j
                lea     rcx, [rax+0B8h]
                mov     rax, [rcx]
                mov     word ptr [rax-48h], 405h
                mov     [rax-18h], rdi
                mov     [rbx+18h], r15
                mov     [rax-40h], r14d
                mov     [rax-38h], esi
                mov     rax, gs:188h
                mov     rbx, [rsp+68h+var_38]
                mov     [rbx+98h], rax
                or      dword ptr [rbx+10h], 4
                mov     byte ptr [rbx+40h], 0
                mov     rax, [rcx]
                lea     rcx, sub_14034FD50
                mov     [rax-10h], rcx
                lea     rcx, [rsp+68h+var_20]
                mov     [rax-8], rcx
                mov     byte ptr [rax-45h], 0
                mov     byte ptr [rax-45h], 40h ; '@'
                mov     byte ptr [rax-45h], 0C0h
                mov     byte ptr [rax-45h], 0E0h
                mov     rdx, rbx
                mov     rcx, [rsp+68h+var_30]
                call    IofCallDriver
                cmp     eax, 103h
                jnz     short loc_14088DB85
                lea     rax, [rsp+68h+var_20]
                mov     [rsp+68h+var_28], rax
                and     [rsp+68h+var_40], 0
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_28]
                lea     ecx, [r9+1]
                call    FsRtlCancellableWaitForMultipleObjects
                cmp     eax, 0C000004Bh
                jnz     short loc_14088DB85
                mov     rcx, rbx
                call    IoCancelIrp
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+68h+var_20]
                call    KeWaitForSingleObject

loc_14088DB85:                          ; CODE XREF: FsRtlQueryInformationFile+102↑j
                                        ; FsRtlQueryInformationFile+133↑j
                mov     edi, [rbx+30h]
                mov     ecx, [rbx+38h]
                mov     rax, [rsp+68h+arg_20]
                mov     [rax], ecx
;   } // starts at 14088DA78

loc_14088DB95:                          ; CODE XREF: FsRtlQueryInformationFile+56↑j
                                        ; FsRtlQueryInformationFile+88↑j
                                        ; DATA XREF: ...
                test    rbx, rbx
                jz      short loc_14088DBB5
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14088DBAD
                call    sub_14088DC10
                and     qword ptr [rbx+8], 0

loc_14088DBAD:                          ; CODE XREF: FsRtlQueryInformationFile+171↑j
                mov     rcx, rbx
                call    IoFreeIrp

loc_14088DBB5:                          ; CODE XREF: FsRtlQueryInformationFile+168↑j
                mov     eax, edi
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088DA30
; ---------------------------------------------------------------------------

loc_14088DBD3:                          ; DATA XREF: .rdata:00000001400B5874↑o
                                        ; .pdata:000000014011C370↑o ...
;   __finally // owned by 14088DA78
                push    rbx
                push    rbp
                sub     rsp, 38h
                mov     rbp, rdx
                mov     rbx, [rbp+30h]
                test    rbx, rbx
                jz      short loc_14088DC02
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14088DBF9
                call    sub_14088DC10
                and     qword ptr [rbx+8], 0

loc_14088DBF9:                          ; CODE XREF: FsRtlQueryInformationFile+1BD↑j
                mov     rcx, rbx
                call    IoFreeIrp
                nop

loc_14088DC02:                          ; CODE XREF: FsRtlQueryInformationFile+1B4↑j
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlQueryInformationFile endp
