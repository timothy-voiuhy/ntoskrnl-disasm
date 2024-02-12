FsRtlInitExtraCreateParameterLookasideList proc near
                                        ; CODE XREF: sub_140A400D0+37F↓p
                                        ; DATA XREF: .pdata:000000014010E8D0↑o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = word ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 48h
                add     r8, 48h ; 'H'
                xor     eax, eax
                test    dl, 2
                jnz     short loc_1407CA195
                mov     [rsp+48h+var_10], eax
                xor     edx, edx
                mov     [rsp+48h+var_18], ax
                mov     [rsp+48h+var_20], r9d
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r8
                xor     r8d, r8d
                call    sub_140358360

loc_1407CA18F:                          ; CODE XREF: FsRtlInitExtraCreateParameterLookasideList+54↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407CA195:                          ; CODE XREF: FsRtlInitExtraCreateParameterLookasideList+D↑j
                mov     [rsp+48h+var_18], ax
                xor     edx, edx
                mov     [rsp+48h+var_20], r9d
                mov     r9d, 200h
                mov     [rsp+48h+var_28], r8
                xor     r8d, r8d
                call    ExInitializeNPagedLookasideList
                jmp     short loc_1407CA18F
FsRtlInitExtraCreateParameterLookasideList endp
