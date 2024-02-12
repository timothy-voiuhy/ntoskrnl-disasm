CcRemapBcb      proc near               ; DATA XREF: .rdata:000000014007A9C0↑o
                                        ; .pdata:00000001400D5AA4↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404730A2 SIZE 00000073 BYTES

                sub     rsp, 38h
                and     rcx, 0FFFFFFFFFFFFFFFEh
                mov     edx, 2FAh
                movzx   eax, word ptr [rcx]
                cmp     ax, dx
                jz      loc_1404730A2
                mov     edx, 2FDh
                cmp     ax, dx
                jz      short loc_1403257D4

loc_140325793:                          ; CODE XREF: CcRemapBcb+68↓j
                                        ; CcRemapBcb+14D93A↓j
                cmp     word ptr [rcx+10h], 1
                jb      loc_1404730F3
                mov     rdx, [rcx+8]
                cmp     dword ptr [rdx+4], 1
                jb      loc_1404730D1
                mov     eax, 1
                lock xadd [rcx+10h], eax
                inc     eax
                test    ax, ax
                jz      loc_1404730AF
                cmp     ax, 1
                jz      short loc_1403257DA

loc_1403257C7:                          ; CODE XREF: CcRemapBcb+71↓j
                or      rcx, 1
                mov     rax, rcx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403257D4:                          ; CODE XREF: CcRemapBcb+21↑j
                mov     rcx, [rcx+38h]
                jmp     short loc_140325793
; ---------------------------------------------------------------------------

loc_1403257DA:                          ; CODE XREF: CcRemapBcb+55↑j
                lock inc dword ptr [rdx+220h]
                jmp     short loc_1403257C7
CcRemapBcb      endp

; ---------------------------------------------------------------------------
algn_1403257E3:                         ; DATA XREF: .rdata:000000014007A9C0↑o
                                        ; .pdata:00000001400D5AA4↑o
                align 10h
; Exported entry 309. ExReleaseRundownProtectionCacheAware

; =============== S U B R O U T I N E =======================================


