CcCopyWriteWontFlush proc near          ; CODE XREF: FsRtlCopyWrite+9A↓p
                                        ; DATA XREF: .pdata:00000001400D476C↑o

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 50h
                mov     rbx, rcx
                cmp     r8d, 1000000h
                jnb     short loc_140310007
                mov     edx, [rcx+50h]
                test    dl, 10h
                jnz     short loc_140310007
                mov     r9, gs:188h
                mov     rcx, r9
                call    sub_140310190
                cmp     eax, 2
                jl      short loc_14030FFED

loc_14030FFC0:                          ; CODE XREF: CcCopyWriteWontFlush+69↓j
                                        ; CcCopyWriteWontFlush+73↓j
                test    eax, eax
                jle     short loc_140310007

loc_14030FFC4:                          ; CODE XREF: CcCopyWriteWontFlush+75↓j
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                mov     rax, cs:qword_140CFC760
                movups  [rsp+58h+var_28], xmm0
                mov     rcx, [rax+8]
                bt      edx, 18h
                jb      short loc_140310017

loc_14030FFE4:                          ; CODE XREF: CcCopyWriteWontFlush+83↓j
                                        ; CcCopyWriteWontFlush+9F↓j
                mov     al, 1

loc_14030FFE6:                          ; CODE XREF: CcCopyWriteWontFlush+85↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030FFED:                          ; CODE XREF: CcCopyWriteWontFlush+2E↑j
                mov     rcx, gs:188h
                cmp     r9, rcx
                jnz     short loc_14030FFC0
                cmp     dword ptr [r9+550h], 0
                jz      short loc_14030FFC0
                jmp     short loc_14030FFC4
; ---------------------------------------------------------------------------

loc_140310007:                          ; CODE XREF: CcCopyWriteWontFlush+10↑j
                                        ; CcCopyWriteWontFlush+18↑j ...
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140354BC0
                test    al, al
                jnz     short loc_14030FFE4
                jmp     short loc_14030FFE6
; ---------------------------------------------------------------------------

loc_140310017:                          ; CODE XREF: CcCopyWriteWontFlush+52↑j
                xor     eax, eax
                xor     r9d, r9d
                mov     [rsp+58h+var_30], rax
                mov     rdx, rbx
                mov     [rsp+58h+var_38], eax
                call    sub_140265630
                test    al, al
                jnz     short loc_14030FFE4
                jmp     short loc_140310007
CcCopyWriteWontFlush endp
