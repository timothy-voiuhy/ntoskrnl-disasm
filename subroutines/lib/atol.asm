atol            proc near               ; CODE XREF: atoi+4↑p
                                        ; sub_1403CF7D0+E6339↓p ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1403D156D
                xor     eax, eax
                jmp     short loc_1403D157C
; ---------------------------------------------------------------------------

loc_1403D156D:                          ; CODE XREF: atol+7↑j
                xor     edx, edx
                lea     r9d, [rdx+1]
                lea     r8d, [rdx+0Ah]
                call    sub_1403D1110

loc_1403D157C:                          ; CODE XREF: atol+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
atol            endp

algn_1403D1582:                         ; DATA XREF: .pdata:00000001400E0628↑o
                align 20h
; [00000021 BYTES: COLLAPSED FUNCTION _NLG_Notify. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D15C1:                         ; DATA XREF: .pdata:00000001400E0640↑o
                align 10h
; [00000001 BYTES: COLLAPSED FUNCTION __NLG_Return2. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D15D1  db 1Fh dup(0CCh)        ; DATA XREF: .pdata:00000001400E064C↑o
; Exported entry 2953. _finite
; [0000002A BYTES: COLLAPSED FUNCTION _finite. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1403D161B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0658↑o
; Exported entry 2956. _itoa

; =============== S U B R O U T I N E =======================================


