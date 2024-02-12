RtlNtStatusToDosError proc near         ; CODE XREF: sub_1407967E4+216↓p
                                        ; sub_14078DAA8+8C062↓p ...

arg_0           = dword ptr  8

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], ecx
                sub     rsp, 28h
                mov     rax, gs:188h
                test    dword ptr [rax+74h], 400h
                jnz     short loc_1406EC1EB
                cmp     byte ptr [rax+24Ah], 1
                jz      short loc_1406EC1EB
                mov     rdx, [rax+0F0h]
                test    rdx, rdx
                jz      short loc_1406EC1EB

loc_1406EC1DF:                          ; DATA XREF: .rdata:000000014007D510↑o
;   __try { // __except at loc_1406EC1E7
                mov     [rdx+1250h], ecx
                jmp     short loc_1406EC1EB
;   } // starts at 1406EC1DF
; ---------------------------------------------------------------------------

loc_1406EC1E7:                          ; DATA XREF: .rdata:000000014007D510↑o
;   __except(1) // owned by 1406EC1DF
                mov     ecx, [rsp+28h+arg_0]

loc_1406EC1EB:                          ; CODE XREF: RtlNtStatusToDosError+18↑j
                                        ; RtlNtStatusToDosError+21↑j ...
                call    RtlNtStatusToDosErrorNoTeb
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406EC1B0
RtlNtStatusToDosError endp
