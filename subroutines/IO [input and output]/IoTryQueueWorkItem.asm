IoTryQueueWorkItem proc near            ; DATA XREF: .rdata:0000000140093D9C↑o
                                        ; .pdata:00000001400DB150↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140495272 SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, r8d
                mov     rdi, rcx
                mov     r8, r9
                call    sub_1402F1894
                mov     rdx, cs:qword_140CFC760
                mov     r9d, 1
                mov     r8d, ebx
                mov     rcx, [rdx+10h]
                mov     rdx, rax
                call    sub_1402BEBBC
                mov     bl, al
                test    al, al
                jz      short loc_14037CCC8

loc_14037CCBA:                          ; CODE XREF: IoTryQueueWorkItem+5D↓j
                                        ; IoTryQueueWorkItem+118601↓j
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14037CCC8:                          ; CODE XREF: IoTryQueueWorkItem+38↑j
                mov     rcx, [rdi+28h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                mov     rcx, [rdi+38h]
                test    rcx, rcx
                jz      short loc_14037CCBA
                jmp     loc_140495272
IoTryQueueWorkItem endp
