IoOpenDeviceInterfaceRegistryKey proc near
                                        ; CODE XREF: IoWMISuggestInstanceName+EB↓p
                                        ; DATA XREF: .rdata:00000001400AB718↑o ...

var_38          = dword ptr -38h
var_30          = byte ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140860E8C SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                xor     r14d, r14d
                mov     rsi, r8
                mov     [rax+8], r14
                mov     ebp, edx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_140860E8C
                cmp     [rcx+8], r14
                jz      loc_140860E8C
                cmp     [rcx], r14w
                jz      loc_140860E8C
                mov     r8, rcx
                xor     edx, edx
                lea     rcx, [rax+8]
                call    sub_1406CC09C
                mov     edi, eax
                test    eax, eax
                js      short loc_1407CB7D6
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                mov     rdx, [rsp+58h+arg_0]
                lea     r8d, [r14+32h]
                mov     rcx, cs:qword_140CF4378
                mov     [rsp+58h+var_20], r14
                mov     [rsp+58h+var_28], rsi
                mov     [rsp+58h+var_30], 1
                mov     [rsp+58h+var_38], ebp
                call    sub_1405E0494
                mov     edi, eax
                test    eax, eax
                js      short loc_1407CB7BC
                test    rsi, rsi
                jz      short loc_1407CB7BC
                mov     rcx, [rsi]
                call    sub_14070663C

loc_1407CB7BC:                          ; CODE XREF: IoOpenDeviceInterfaceRegistryKey+9D↑j
                                        ; IoOpenDeviceInterfaceRegistryKey+A2↑j
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1407CB7D6:                          ; CODE XREF: IoOpenDeviceInterfaceRegistryKey+51↑j
                                        ; IoOpenDeviceInterfaceRegistryKey+95781↓j
                mov     rcx, [rsp+58h+arg_0]
                mov     rdx, rbx
                call    sub_1406CA2D4
                mov     rbx, [rsp+58h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoOpenDeviceInterfaceRegistryKey endp
