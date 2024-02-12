RtlQueryRegistryValueWithFallback proc near
                                        ; CODE XREF: sub_1406299F0+7D↑p
                                        ; DATA XREF: .rdata:000000014004FFA0↑o ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140802318 SIZE 00000052 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     dword ptr [rax+8], 0
                mov     r15, r8
                mov     rbp, rdx
                mov     r14, rcx
                test    rcx, rcx
                jnz     short loc_140629B53
                test    rdx, rdx
                jz      loc_140802318

loc_140629B53:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+28↑j
                lea     esi, [r9+10h]
                cmp     esi, 10h
                jb      loc_140802360
                mov     edx, esi
                mov     ecx, 1
                mov     r8d, 6D6C7472h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140802322
                mov     ebx, 0C0000034h
                test    r14, r14
                jnz     loc_14080232C

loc_140629B8C:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+1D883B↓j
                test    rbp, rbp
                jz      short loc_140629BC9
                lea     rax, [rsp+48h+arg_0]
                mov     r9, rdi
                mov     [rsp+48h+var_20], rax
                mov     r8d, 2
                mov     rdx, r15
                mov     [rsp+48h+var_28], esi
                mov     rcx, rbp
                call    ZwQueryValueKey
                mov     ebx, eax

loc_140629BB5:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+1D8835↓j
                mov     ecx, 80000000h
                lea     eax, [rbx+rcx]
                test    ecx, eax
                jnz     short loc_140629BEF
                cmp     ebx, 80000005h
                jz      short loc_140629BEF

loc_140629BC9:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+6F↑j
                                        ; RtlQueryRegistryValueWithFallback+ED↓j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140629BD3:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+1D8807↓j
                                        ; RtlQueryRegistryValueWithFallback+1D8845↓j
                mov     eax, ebx

loc_140629BD5:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+1D87FD↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140629BEF:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+9F↑j
                                        ; RtlQueryRegistryValueWithFallback+A7↑j
                mov     ecx, [rdi+8]
                mov     rax, [rsp+48h+arg_30]
                mov     [rax], ecx
                mov     rcx, [rsp+48h+arg_20]
                test    rcx, rcx
                jz      short loc_140629C0B
                mov     eax, [rdi+4]
                mov     [rcx], eax

loc_140629C0B:                          ; CODE XREF: RtlQueryRegistryValueWithFallback+E4↑j
                test    ebx, ebx
                js      short loc_140629BC9
                mov     r8d, [rdi+8]
                lea     rdx, [rdi+0Ch]
                mov     rcx, [rsp+48h+arg_28]
                call    memmove
                jmp     short loc_140629BC9
RtlQueryRegistryValueWithFallback endp
