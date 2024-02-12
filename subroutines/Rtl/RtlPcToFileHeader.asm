RtlPcToFileHeader proc near             ; CODE XREF: sub_1402A9F34+30↑p
                                        ; sub_1403DBB08+60F↓p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 40h
                mov     r8, qword ptr cs:xmmword_140E00020+8
                xor     eax, eax
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                mov     rbx, rdx
                movups  [rsp+48h+var_28], xmm0
                cmp     rcx, r8
                jb      short loc_140354EE2
                mov     eax, dword ptr cs:qword_140E00030
                add     rax, r8
                cmp     rcx, rax
                jb      short loc_140354EFB

loc_140354EE2:                          ; CODE XREF: RtlPcToFileHeader+22↑j
                lea     rdx, [rsp+48h+var_28]
                call    sub_1402AD640

loc_140354EEC:                          ; CODE XREF: RtlPcToFileHeader+57↓j
                mov     rax, qword ptr [rsp+48h+var_28+8]
                mov     [rbx], rax
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140354EFB:                          ; CODE XREF: RtlPcToFileHeader+30↑j
                movaps  xmm0, cs:xmmword_140E00020
                movups  [rsp+48h+var_28], xmm0
                jmp     short loc_140354EEC
RtlPcToFileHeader endp
