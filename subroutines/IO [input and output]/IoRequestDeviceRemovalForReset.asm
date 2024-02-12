IoRequestDeviceRemovalForReset proc near
                                        ; DATA XREF: .pdata:000000014011D120↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     r14d, edx
                mov     rbp, rcx
                mov     edi, 0E0h
                mov     r8d, 45706E50h
                mov     edx, edi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                xor     ebx, ebx
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1408A1D7A

loc_1408A1D70:                          ; CODE XREF: IoRequestDeviceRemovalForReset+D1↓j
                mov     edi, 0C000009Ah
                jmp     loc_1408A1E11
; ---------------------------------------------------------------------------

loc_1408A1D7A:                          ; CODE XREF: IoRequestDeviceRemovalForReset+3E↑j
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rsi
                call    memset
                lea     rcx, [rsi+40h]
                mov     r8, rsi
                lea     rdx, sub_1403645C0
                call    KeInitializeDpc
                xor     edx, edx
                mov     rcx, rsi
                call    KeInitializeTimerEx
                lea     rax, sub_1408A2150
                mov     [rsi+98h], rsi
                mov     edx, 52706E50h
                mov     [rsi+90h], rax
                mov     rcx, rbp
                mov     [rsi+80h], rbx
                call    ObfReferenceObjectWithTag
                lea     rcx, [rsi+0C8h]
                mov     [rsi+0B8h], rbp
                xorps   xmm0, xmm0
                mov     [rsi+0A0h], rbx
                mov     [rsi+0C0h], ebx
                mov     edx, 200h
                mov     [rsi+0D8h], r14d
                movups  xmmword ptr [rcx], xmm0
                call    sub_14074119C
                test    eax, eax
                js      loc_1408A1D70
                mov     rcx, rsi
                call    sub_1408A20CC
                mov     edi, eax

loc_1408A1E11:                          ; CODE XREF: IoRequestDeviceRemovalForReset+45↑j
                mov     r8d, edi
                mov     edx, r14d
                mov     rcx, rbp
                call    sub_1408B3770
                test    edi, edi
                jns     short loc_1408A1E32
                test    rsi, rsi
                jz      short loc_1408A1E62
                mov     rcx, rsi
                call    sub_1408A2050
                jmp     short loc_1408A1E62
; ---------------------------------------------------------------------------

loc_1408A1E32:                          ; CODE XREF: IoRequestDeviceRemovalForReset+F1↑j
                test    rbp, rbp
                jz      short loc_1408A1E42
                mov     rax, [rbp+138h]
                mov     rbx, [rax+28h]

loc_1408A1E42:                          ; CODE XREF: IoRequestDeviceRemovalForReset+105↑j
                test    cs:byte_140C1313B, 8
                jz      short loc_1408A1E62
                movzx   r9d, word ptr [rbx+28h]
                mov     rax, [rbx+30h]
                shr     r9w, 1
                mov     [rsp+38h+var_18], rax
                call    sub_14050CD48

loc_1408A1E62:                          ; CODE XREF: IoRequestDeviceRemovalForReset+F6↑j
                                        ; IoRequestDeviceRemovalForReset+100↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRequestDeviceRemovalForReset endp
