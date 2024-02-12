IoWMIAllocateInstanceIds proc near      ; DATA XREF: .pdata:00000001401233FC↑o

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
                xor     edi, edi
                mov     r14, r8
                cmp     cs:qword_140C19E38, rdi
                mov     ebp, edx
                mov     rsi, rcx
                jnz     short loc_140932426
                mov     eax, 0C0000001h
                jmp     loc_14093251B
; ---------------------------------------------------------------------------

loc_140932426:                          ; CODE XREF: IoWMIAllocateInstanceIds+2A↑j
                and     [rsp+38h+var_18], rdi
                lea     rcx, unk_140C19E00
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     rdx, cs:qword_140C19FA8
                jmp     short loc_140932485
; ---------------------------------------------------------------------------

loc_140932448:                          ; CODE XREF: IoWMIAllocateInstanceIds+98↓j
                xor     r9d, r9d
                lea     rcx, [rdx+8]

loc_14093244F:                          ; CODE XREF: IoWMIAllocateInstanceIds+8D↓j
                mov     r10d, [rcx+10h]
                cmp     r10d, 0FFFFFFFFh
                jz      loc_1409324EA
                mov     r8, [rsi]
                sub     r8, [rcx]
                jnz     short loc_14093246D
                mov     r8, [rsi+8]
                sub     r8, [rcx+8]

loc_14093246D:                          ; CODE XREF: IoWMIAllocateInstanceIds+73↑j
                test    r8, r8
                jz      short loc_1409324CB
                inc     r9d
                add     rcx, 14h
                cmp     r9d, 8
                jb      short loc_14093244F
                mov     rdi, rdx
                mov     rdx, [rdx]

loc_140932485:                          ; CODE XREF: IoWMIAllocateInstanceIds+56↑j
                test    rdx, rdx
                jnz     short loc_140932448
                mov     edx, 0A8h
                mov     ecx, 1
                mov     r8d, 69696D57h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140932508
                mov     edx, 0FFh
                lea     rcx, [rax+8]
                lea     r8d, [rdx-5Fh]
                call    memset
                and     qword ptr [rbx], 0
                test    rdi, rdi
                jnz     short loc_1409324E3
                mov     cs:qword_140C19FA8, rbx
                jmp     short loc_1409324E6
; ---------------------------------------------------------------------------

loc_1409324CB:                          ; CODE XREF: IoWMIAllocateInstanceIds+80↑j
                mov     [r14], r10d
                xor     edx, edx
                add     [rcx+10h], ebp
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex

loc_1409324DF:                          ; CODE XREF: IoWMIAllocateInstanceIds+116↓j
                xor     eax, eax
                jmp     short loc_14093251B
; ---------------------------------------------------------------------------

loc_1409324E3:                          ; CODE XREF: IoWMIAllocateInstanceIds+D0↑j
                mov     [rdi], rbx

loc_1409324E6:                          ; CODE XREF: IoWMIAllocateInstanceIds+D9↑j
                lea     rcx, [rbx+8]

loc_1409324EA:                          ; CODE XREF: IoWMIAllocateInstanceIds+67↑j
                movups  xmm0, xmmword ptr [rsi]
                mov     [rcx+10h], ebp
                xor     edx, edx
                movdqu  xmmword ptr [rcx], xmm0
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                and     dword ptr [r14], 0
                jmp     short loc_1409324DF
; ---------------------------------------------------------------------------

loc_140932508:                          ; CODE XREF: IoWMIAllocateInstanceIds+B5↑j
                xor     edx, edx
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                mov     eax, 0C000009Ah

loc_14093251B:                          ; CODE XREF: IoWMIAllocateInstanceIds+31↑j
                                        ; IoWMIAllocateInstanceIds+F1↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMIAllocateInstanceIds endp
