MmForceSectionClosedEx proc near        ; DATA XREF: .pdata:00000001400F459C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                test    edx, 0FFFFFFF8h
                mov     ebx, edx
                mov     rsi, rcx
                setz    r8b
                test    dl, 3
                setnz   al
                test    al, r8b
                jz      short loc_14052B2BB
                test    bl, 1
                jz      short loc_14052B27C
                mov     edx, ebx
                and     edx, 0FFFFFFFDh
                call    sub_14034A920
                mov     edi, eax
                jmp     short loc_14052B281
; ---------------------------------------------------------------------------

loc_14052B27C:                          ; CODE XREF: MmForceSectionClosedEx+2C↑j
                mov     edi, 1

loc_14052B281:                          ; CODE XREF: MmForceSectionClosedEx+3A↑j
                test    bl, 2
                jz      short loc_14052B295
                and     ebx, 0FFFFFFFEh
                mov     rcx, rsi
                mov     edx, ebx
                call    sub_14034A920
                jmp     short loc_14052B29A
; ---------------------------------------------------------------------------

loc_14052B295:                          ; CODE XREF: MmForceSectionClosedEx+44↑j
                mov     eax, 1

loc_14052B29A:                          ; CODE XREF: MmForceSectionClosedEx+53↑j
                cmp     edi, 2
                jz      short loc_14052B2B7
                cmp     eax, 2
                jz      short loc_14052B2B7
                mov     al, 1

loc_14052B2A6:                          ; CODE XREF: MmForceSectionClosedEx+79↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14052B2B7:                          ; CODE XREF: MmForceSectionClosedEx+5D↑j
                                        ; MmForceSectionClosedEx+62↑j
                xor     al, al
                jmp     short loc_14052B2A6
; ---------------------------------------------------------------------------

loc_14052B2BB:                          ; CODE XREF: MmForceSectionClosedEx+27↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rbx
                mov     edx, 43000h
                lea     ecx, [r9+1Ah]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
MmForceSectionClosedEx endp
