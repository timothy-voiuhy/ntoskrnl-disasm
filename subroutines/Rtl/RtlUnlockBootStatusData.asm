RtlUnlockBootStatusData proc near       ; CODE XREF: sub_14077D848+C0↑p
                                        ; sub_140799DE8+43↓p ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = byte ptr -18h
var_8           = byte ptr -8
arg_8           = byte ptr  10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 60h
                xorps   xmm0, xmm0
                xor     esi, esi
                movups  xmmword ptr [rax-18h], xmm0
                mov     [rax+10h], si
                mov     rbx, rcx
                call    sub_1403F7DD4
                mov     eax, cs:dword_140C1DC70
                test    eax, eax
                jz      loc_14078B529
                dec     eax
                mov     dil, sil
                cmp     cs:byte_140C1DC89, sil
                mov     cs:dword_140C1DC70, eax
                jz      short loc_14078B4B9
                test    rbx, rbx
                jz      short loc_14078B49B
                cmp     cs:byte_140C1DC88, sil
                jnz     short loc_14078B4B9
                test    eax, eax
                jnz     short loc_14078B4B9
                jmp     short loc_14078B4A2
; ---------------------------------------------------------------------------

loc_14078B49B:                          ; CODE XREF: RtlUnlockBootStatusData+4A↑j
                mov     rbx, cs:qword_140C1DC80

loc_14078B4A2:                          ; CODE XREF: RtlUnlockBootStatusData+59↑j
                mov     cs:dword_140C1DC70, esi
                mov     dil, 1
                mov     cs:qword_140C1DC80, rsi
                mov     cs:byte_140C1DC89, sil

loc_14078B4B9:                          ; CODE XREF: RtlUnlockBootStatusData+45↑j
                                        ; RtlUnlockBootStatusData+53↑j ...
                test    rbx, rbx
                jz      short loc_14078B529
                mov     [rsp+68h+var_20], esi
                lea     rax, [rsp+68h+arg_8]
                mov     [rsp+68h+var_28], rsi
                xor     r9d, r9d
                mov     [rsp+68h+var_30], 2
                xor     r8d, r8d
                mov     [rsp+68h+var_38], rax
                xor     edx, edx
                lea     rax, [rsp+68h+var_18]
                mov     [rsp+68h+var_40], 9C040h
                mov     rcx, rbx
                mov     [rsp+68h+var_48], rax
                call    ZwFsControlFile
                test    dil, dil
                jz      short loc_14078B529
                mov     rcx, cs:qword_140C1DC78
                test    rcx, rcx
                jz      short loc_14078B51A
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     cs:qword_140C1DC78, rsi

loc_14078B51A:                          ; CODE XREF: RtlUnlockBootStatusData+CA↑j
                mov     rcx, rbx
                mov     cs:byte_140C1DC89, sil
                call    ZwClose

loc_14078B529:                          ; CODE XREF: RtlUnlockBootStatusData+2D↑j
                                        ; RtlUnlockBootStatusData+7C↑j ...
                call    sub_1403F7E04
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUnlockBootStatusData endp
