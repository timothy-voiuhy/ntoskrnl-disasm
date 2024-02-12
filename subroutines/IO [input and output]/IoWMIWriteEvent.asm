IoWMIWriteEvent proc near               ; CODE XREF: sub_1405787B8+52↓p
                                        ; sub_140578840+6C↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140495BF0 SIZE 000000D3 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                cmp     cs:qword_140C19E38, rdi
                jz      loc_140495BF0
                mov     ebx, [rcx+2Ch]
                test    ebx, 60000h
                jnz     loc_140495BFA

loc_14037E84A:                          ; CODE XREF: IoWMIWriteEvent+117431↓j
                mov     edx, 20h ; ' '
                mov     ecx, 200h
                mov     r8d, 77696D57h
                call    ExAllocatePoolWithTag
                mov     rbp, rax
                test    rax, rax
                jz      loc_140495CB9
                mov     ebx, [rsi+4]
                lea     rcx, qword_140C19FA0
                call    KeAcquireSpinLockRaiseToDpc
                mov     ecx, ebx
                movzx   r14d, al
                call    sub_14030F770
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14037E891
                lock inc dword ptr [rax+30h]

loc_14037E891:                          ; CODE XREF: IoWMIWriteEvent+7B↑j
                lea     rcx, qword_140C19FA0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140495C54

loc_14037E8AB:                          ; CODE XREF: IoWMIWriteEvent+117446↓j
                                        ; IoWMIWriteEvent+117452↓j ...
                mov     cr8, r14
                mov     eax, [rsi+8]
                lea     r8, qword_140C19E60
                mov     [rsi+28h], eax
                lea     rcx, off_140C02D00
                mov     rdx, rbp
                mov     [rbp+10h], rbx
                mov     [rbp+18h], rsi
                call    ExInterlockedInsertTailList
                mov     eax, 1
                lock xadd cs:dword_140C19E68, eax
                inc     eax
                cmp     eax, 1
                jnz     short loc_14037E8F5
                mov     edx, eax
                lea     rcx, qword_140C19E40
                call    ExQueueWorkItem

loc_14037E8F5:                          ; CODE XREF: IoWMIWriteEvent+D5↑j
                                        ; IoWMIWriteEvent+1174AE↓j
                mov     eax, edi

loc_14037E8F7:                          ; CODE XREF: IoWMIWriteEvent+1173E5↓j
                                        ; IoWMIWriteEvent+117406↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMIWriteEvent endp
