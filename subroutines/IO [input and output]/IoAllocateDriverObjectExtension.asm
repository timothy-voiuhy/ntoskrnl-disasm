IoAllocateDriverObjectExtension proc near
                                        ; DATA XREF: .rdata:0000000140094E44↑o
                                        ; .pdata:00000001400DB3CC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404961D2 SIZE 0000003A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [r9], 0
                xor     sil, sil
                mov     rdi, r9
                mov     rbp, rdx
                mov     r14, rcx
                cmp     r8d, 0FFFFFFEFh
                ja      loc_140496202
                mov     r15d, r8d
                mov     ecx, 200h
                mov     r8d, 76697244h
                lea     rdx, [r15+10h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140496202
                lea     r8, [r15+10h]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r15d, 0Ah
                mov     [rbx+8], rbp
                mov     ecx, r15d
                call    KeAcquireQueuedSpinLock
                mov     rcx, [r14+30h]
                mov     r9b, al
                mov     r8, [rcx+28h]
                mov     rdx, r8
                test    r8, r8
                jnz     loc_1404961D2

loc_14037F6EC:                          ; CODE XREF: IoAllocateDriverObjectExtension+116B89↓j
                mov     [rbx], r8
                mov     sil, 1
                mov     rax, [r14+30h]
                mov     [rax+28h], rbx

loc_14037F6FA:                          ; CODE XREF: IoAllocateDriverObjectExtension+116B83↓j
                mov     dl, r9b
                mov     rcx, r15
                call    KeReleaseQueuedSpinLock
                test    sil, sil
                jz      loc_1404961EE
                lea     rax, [rbx+10h]
                mov     [rdi], rax
                xor     eax, eax

loc_14037F717:                          ; CODE XREF: IoAllocateDriverObjectExtension+116B9D↓j
                                        ; IoAllocateDriverObjectExtension+116BA7↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateDriverObjectExtension endp
