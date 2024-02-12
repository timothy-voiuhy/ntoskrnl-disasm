KeInvalidateRangeAllCaches proc near    ; CODE XREF: sub_140519CD0+89↑p
                                        ; sub_140541A3C:loc_140541A5A↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                cmp     edx, cs:dword_140CFB14C
                mov     edi, edx
                mov     rbp, rcx
                jb      short loc_14051B27B
                call    KeInvalidateAllCaches
                jmp     loc_14051B359
; ---------------------------------------------------------------------------

loc_14051B27B:                          ; CODE XREF: KeInvalidateRangeAllCaches+1F↑j
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_14051B2CB
                test    al, 1
                jz      short loc_14051B2CB
                cmp     bl, 0Fh
                ja      short loc_14051B2CB
                mov     rax, gs:20h
                mov     rdx, rsi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14051B2CB:                          ; CODE XREF: KeInvalidateRangeAllCaches+44↑j
                                        ; KeInvalidateRangeAllCaches+48↑j ...
                and     [rsp+48h+var_18], 0
                xor     r9d, r9d
                mov     rcx, gs:20h
                xor     r8d, r8d
                and     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], 7
                lea     edx, [r9+1]
                call    sub_14028ECD0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14051B348
                test    al, 1
                jz      short loc_14051B348
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14051B348
                cmp     bl, 0Fh
                ja      short loc_14051B348
                cmp     al, 2
                jb      short loc_14051B348
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rsi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, si
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14051B348
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14051B348:                          ; CODE XREF: KeInvalidateRangeAllCaches+B0↑j
                                        ; KeInvalidateRangeAllCaches+B4↑j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     edx, edi
                mov     rcx, rbp
                call    KeInvalidateRangeAllCachesNoIpi

loc_14051B359:                          ; CODE XREF: KeInvalidateRangeAllCaches+26↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInvalidateRangeAllCaches endp
