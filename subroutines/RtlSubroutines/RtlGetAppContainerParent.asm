RtlGetAppContainerParent proc near      ; CODE XREF: sub_140915D48+30A↓p
                                        ; DATA XREF: .pdata:0000000140121FEC↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                and     qword ptr [rdx], 0
                mov     rsi, rdx
                and     dword ptr [rax+10h], 0
                lea     rdx, [rax+10h]
                mov     rbp, rcx
                call    RtlGetAppContainerSidType
                test    eax, eax
                js      short loc_14091504B
                cmp     [rsp+38h+arg_8], 1
                jnz     short loc_14091504B
                mov     edx, 28h ; '('
                mov     ecx, 208h
                mov     r8d, 62507452h
                call    ExAllocatePoolWithQuotaTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140914FF9
                mov     eax, 0C000009Ah
                jmp     short loc_140915050
; ---------------------------------------------------------------------------

loc_140914FF9:                          ; CODE XREF: RtlGetAppContainerParent+50↑j
                mov     r8b, 8
                lea     rdx, qword_14000AA08
                mov     rcx, rbx
                call    RtlInitializeSid
                mov     edi, eax
                test    eax, eax
                js      short loc_14091503D
                xor     dil, dil
                lea     r14, [rbx+8]

loc_140915018:                          ; CODE XREF: RtlGetAppContainerParent+94↓j
                movzx   edx, dil
                mov     rcx, rbp
                call    RtlSubAuthoritySid
                inc     dil
                mov     ecx, [rax]
                mov     [r14], ecx
                lea     r14, [r14+4]
                cmp     dil, 8
                jb      short loc_140915018
                mov     [rsi], rbx
                xor     edi, edi
                jmp     short loc_140915047
; ---------------------------------------------------------------------------

loc_14091503D:                          ; CODE XREF: RtlGetAppContainerParent+6F↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140915047:                          ; CODE XREF: RtlGetAppContainerParent+9B↑j
                mov     eax, edi
                jmp     short loc_140915050
; ---------------------------------------------------------------------------

loc_14091504B:                          ; CODE XREF: RtlGetAppContainerParent+2C↑j
                                        ; RtlGetAppContainerParent+33↑j
                mov     eax, 0C000000Dh

loc_140915050:                          ; CODE XREF: RtlGetAppContainerParent+57↑j
                                        ; RtlGetAppContainerParent+A9↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetAppContainerParent endp
