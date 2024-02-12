NtMakePermanentObject proc near         ; DATA XREF: .rdata:000000014008B694↑o
                                        ; .pdata:000000014010812C↑o ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140833B68 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rdi, rcx
                mov     rcx, cs:qword_140D2E7C8
                mov     bl, [rax+232h]
                mov     dl, bl
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_140833B68
                and     [rsp+38h+var_10], 0
                lea     rax, [rsp+38h+arg_8]
                and     [rsp+38h+arg_8], 0
                mov     r9b, bl
                xor     r8d, r8d
                mov     [rsp+38h+var_18], rax
                xor     edx, edx
                mov     rcx, rdi
                call    ObReferenceObjectByHandle
                mov     esi, eax
                test    eax, eax
                js      short loc_140730FFC
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+38h+arg_8]
                xor     edx, edx
                lea     rcx, [rbx-20h]
                call    ExAcquirePushLockExclusiveEx
                or      byte ptr [rbx-15h], 10h
                lea     rcx, [rbx-20h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+38h+arg_8]
                call    PsDereferenceSiloContext
                mov     eax, esi

loc_140730FFC:                          ; CODE XREF: NtMakePermanentObject+61↑j
                                        ; NtMakePermanentObject+102C1D↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtMakePermanentObject endp
