CcUnpinDataForThread proc near          ; DATA XREF: .pdata:000000014011AD14↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                test    cl, 1
                jz      short loc_140869108
                and     rbx, 0FFFFFFFFFFFFFFFEh
                jmp     short loc_140869141
; ---------------------------------------------------------------------------

loc_140869108:                          ; CODE XREF: CcUnpinDataForThread+10↑j
                mov     eax, 2FAh
                cmp     [rcx], ax
                jnz     short loc_140869138
                lea     rdi, [rcx+10h]
                jmp     short loc_140869124
; ---------------------------------------------------------------------------

loc_140869118:                          ; CODE XREF: CcUnpinDataForThread+3A↓j
                mov     rcx, rax
                call    CcUnpinData
                lea     rdi, [rdi+8]

loc_140869124:                          ; CODE XREF: CcUnpinDataForThread+26↑j
                mov     rax, [rdi]
                test    rax, rax
                jnz     short loc_140869118
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_14086914E
; ---------------------------------------------------------------------------

loc_140869138:                          ; CODE XREF: CcUnpinDataForThread+20↑j
                add     rcx, 48h ; 'H'
                call    ExReleaseResourceForThreadLite

loc_140869141:                          ; CODE XREF: CcUnpinDataForThread+16↑j
                xor     r8d, r8d
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1402F78B0

loc_14086914E:                          ; CODE XREF: CcUnpinDataForThread+46↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcUnpinDataForThread endp
