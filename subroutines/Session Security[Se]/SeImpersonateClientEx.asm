SeImpersonateClientEx proc near         ; CODE XREF: sub_1406DB2B8+DF↑p
                                        ; sub_1406DC580+122↑p ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                cmp     byte ptr [rcx+18h], 0
                mov     r10, rdx
                jz      short loc_1406DC72B
                mov     r9b, [rcx+19h]

loc_1406DC701:                          ; CODE XREF: SeImpersonateClientEx+3F↓j
                test    rdx, rdx
                jnz     short loc_1406DC70F
                mov     r10, gs:188h

loc_1406DC70F:                          ; CODE XREF: SeImpersonateClientEx+14↑j
                mov     eax, [rcx+4]
                mov     r8b, 1
                mov     rdx, [rcx+10h]
                mov     rcx, r10
                mov     [rsp+38h+var_18], eax
                call    PsImpersonateClient
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DC72B:                          ; CODE XREF: SeImpersonateClientEx+B↑j
                mov     r9b, [rcx+9]
                jmp     short loc_1406DC701
SeImpersonateClientEx endp
