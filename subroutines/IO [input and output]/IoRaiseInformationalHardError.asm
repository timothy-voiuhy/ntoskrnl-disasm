IoRaiseInformationalHardError proc near ; CODE XREF: sub_1405505F0+5A↓p
                                        ; FsRtlLogCcFlushError+146↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r15d, r15d
                mov     rdi, r8
                cmp     cs:byte_140C50450, r15b
                mov     r14, rdx
                mov     esi, ecx
                jz      short loc_140506081
                test    r8, r8
                jz      short loc_1405060A3
                mov     eax, [r8+510h]
                test    al, 10h
                jz      short loc_1405060B7

loc_140506081:                          ; CODE XREF: IoRaiseInformationalHardError+2F↑j
                                        ; IoRaiseInformationalHardError+75↓j ...
                xor     al, al

loc_140506083:                          ; CODE XREF: IoRaiseInformationalHardError+37F↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405060A3:                          ; CODE XREF: IoRaiseInformationalHardError+34↑j
                mov     rax, gs:188h
                mov     ecx, [rax+510h]
                test    cl, 10h
                jnz     short loc_140506081

loc_1405060B7:                          ; CODE XREF: IoRaiseInformationalHardError+3F↑j
                cmp     esi, 0C000021Dh
                jz      short loc_140506081
                cmp     esi, 0C0000144h
                jz      short loc_140506081
                cmp     esi, 40000018h
                jz      short loc_140506081
                test    rdi, rdi
                jnz     short loc_1405060DD
                cmp     cs:dword_140C45E5C, 19h
                jge     short loc_140506081

loc_1405060DD:                          ; CODE XREF: IoRaiseInformationalHardError+92↑j
                cmp     cs:dword_140C45E7C, 19h
                jg      short loc_140506081
                mov     r12d, 72456F49h
                mov     ebp, 200h
                mov     r8d, r12d
                mov     ecx, ebp
                mov     edx, 28h ; '('
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140506081
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rbx], xmm0
                movups  xmmword ptr [rbx+10h], xmm0
                mov     [rbx+20h], rax
                mov     [rbx+10h], esi
                test    r14, r14
                jz      short loc_140506166
                movzx   eax, word ptr [r14]
                test    ax, ax
                jz      short loc_140506166
                mov     edx, eax
                mov     r8d, r12d
                mov     ecx, ebp
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_140506304
                movzx   ecx, word ptr [r14]
                mov     [rbx+18h], cx
                mov     rcx, rax
                movzx   edx, word ptr [r14]
                mov     [rbx+1Ah], dx
                mov     [rbx+20h], rax
                movzx   r8d, word ptr [r14]
                mov     rdx, [r14+8]
                call    memmove

loc_140506166:                          ; CODE XREF: IoRaiseInformationalHardError+E2↑j
                                        ; IoRaiseInformationalHardError+EB↑j
                test    rdi, rdi
                jz      short loc_1405061D5
                mov     edx, 58h ; 'X'
                mov     r8d, 4350414Bh
                mov     ecx, ebp
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_1405062F4
                lock inc cs:dword_140C45E7C
                mov     [rsp+58h+var_20], rbx
                lea     rax, sub_140893630
                mov     [rsp+58h+var_28], r15b
                lea     r9, sub_140718840
                mov     [rsp+58h+var_30], rax
                xor     r8d, r8d
                mov     rdx, rdi
                mov     [rsp+58h+var_38], r15
                mov     rcx, rsi
                call    KeInitializeApc
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    KeInsertQueueApc
                jmp     loc_1405063BD
; ---------------------------------------------------------------------------

loc_1405061D5:                          ; CODE XREF: IoRaiseInformationalHardError+129↑j
                lea     r14, qword_140C45E50
                mov     rcx, r14
                call    KeAcquireSpinLockRaiseToDpc
                cmp     cs:dword_140C45E5C, 19h
                movzx   edi, al
                jge     loc_140506294
                mov     rdx, cs:qword_140C458F8
                test    rdx, rdx
                jz      short loc_140506231
                mov     eax, [rdx+10h]
                cmp     [rbx+10h], eax
                jnz     short loc_140506231
                mov     rcx, [rbx+20h]
                test    rcx, rcx
                jnz     short loc_140506217
                cmp     [rdx+20h], r15
                jz      short loc_140506294

loc_140506217:                          ; CODE XREF: IoRaiseInformationalHardError+1CF↑j
                movzx   eax, word ptr [rbx+18h]
                cmp     ax, [rdx+18h]
                jnz     short loc_140506231
                mov     rdx, [rdx+20h]
                mov     r8d, eax
                call    memcmp
                test    eax, eax
                jz      short loc_140506294

loc_140506231:                          ; CODE XREF: IoRaiseInformationalHardError+1BE↑j
                                        ; IoRaiseInformationalHardError+1C6↑j ...
                mov     rsi, cs:qword_140C45E40
                lea     r12, qword_140C45E40
                cmp     rsi, r12
                jz      short loc_14050627D
                mov     ebp, [rbx+10h]

loc_140506247:                          ; CODE XREF: IoRaiseInformationalHardError+23B↓j
                cmp     ebp, [rsi+10h]
                jnz     short loc_140506275
                mov     rcx, [rbx+20h]
                test    rcx, rcx
                jnz     short loc_14050625B
                cmp     [rsi+20h], r15
                jz      short loc_140506294

loc_14050625B:                          ; CODE XREF: IoRaiseInformationalHardError+213↑j
                movzx   eax, word ptr [rbx+18h]
                cmp     ax, [rsi+18h]
                jnz     short loc_140506275
                mov     rdx, [rsi+20h]
                mov     r8d, eax
                call    memcmp
                test    eax, eax
                jz      short loc_140506294

loc_140506275:                          ; CODE XREF: IoRaiseInformationalHardError+20A↑j
                                        ; IoRaiseInformationalHardError+223↑j
                mov     rsi, [rsi]
                cmp     rsi, r12
                jnz     short loc_140506247

loc_14050627D:                          ; CODE XREF: IoRaiseInformationalHardError+202↑j
                mov     rax, cs:qword_140C45E48
                cmp     [rax], r12
                jz      loc_140506313
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140506294:                          ; CODE XREF: IoRaiseInformationalHardError+1AE↑j
                                        ; IoRaiseInformationalHardError+1D5↑j ...
                mov     rcx, r14
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405062F0
                test    al, 1
                jz      short loc_1405062F0
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405062F0
                cmp     dil, 0Fh
                ja      short loc_1405062F0
                cmp     al, 2
                jb      short loc_1405062F0
                mov     r9, gs:20h
                lea     ecx, [rdi+1]
                or      r10, 0FFFFFFFFFFFFFFFFh
                shl     r10, cl
                movzx   eax, r10w
                mov     r8, [r9+84B8h]
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405062F0
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405062F0:                          ; CODE XREF: IoRaiseInformationalHardError+264↑j
                                        ; IoRaiseInformationalHardError+268↑j ...
                mov     cr8, rdi

loc_1405062F4:                          ; CODE XREF: IoRaiseInformationalHardError+143↑j
                mov     rcx, [rbx+20h]
                test    rcx, rcx
                jz      short loc_140506304
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140506304:                          ; CODE XREF: IoRaiseInformationalHardError+FC↑j
                                        ; IoRaiseInformationalHardError+2BB↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_140506081
; ---------------------------------------------------------------------------

loc_140506313:                          ; CODE XREF: IoRaiseInformationalHardError+247↑j
                mov     [rbx], r12
                lea     rcx, unk_140C45E58
                mov     [rbx+8], rax
                xor     edx, edx
                mov     [rax], rbx
                mov     cs:qword_140C45E48, rbx
                mov     dword ptr [rsp+58h+var_38], r15d
                lea     r8d, [rdx+1]
                call    sub_1402CBA10
                cmp     cs:byte_140C45E78, r15b
                jnz     short loc_14050635C
                mov     edx, 1
                mov     cs:byte_140C45E78, 1
                lea     rcx, qword_140C45E20
                call    ExQueueWorkItem

loc_14050635C:                          ; CODE XREF: IoRaiseInformationalHardError+302↑j
                mov     rcx, r14
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405063B9
                test    al, 1
                jz      short loc_1405063B9
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405063B9
                cmp     dil, 0Fh
                ja      short loc_1405063B9
                cmp     al, 2
                jb      short loc_1405063B9
                mov     r11, gs:20h
                lea     ecx, [rdi+1]
                or      r10, 0FFFFFFFFFFFFFFFFh
                shl     r10, cl
                movzx   edx, r10w
                mov     r9, [r11+84B8h]
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_1405063B9
                mov     rcx, r11
                call    sub_1403F2EC4

loc_1405063B9:                          ; CODE XREF: IoRaiseInformationalHardError+32C↑j
                                        ; IoRaiseInformationalHardError+330↑j ...
                mov     cr8, rdi

loc_1405063BD:                          ; CODE XREF: IoRaiseInformationalHardError+190↑j
                mov     al, 1
                jmp     loc_140506083
IoRaiseInformationalHardError endp
