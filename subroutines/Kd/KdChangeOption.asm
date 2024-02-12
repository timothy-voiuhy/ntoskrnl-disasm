KdChangeOption  proc near               ; DATA XREF: .pdata:00000001400F3138↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                xor     r10d, r10d
                cmp     cs:byte_140C0F430, r10b
                jz      short loc_140510E43
                mov     eax, 0C0000354h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140510E43:                          ; CODE XREF: KdChangeOption+A↑j
                test    ecx, ecx
                jz      short loc_140510E4E
                mov     eax, 0C0000003h
                jmp     short loc_140510E7C
; ---------------------------------------------------------------------------

loc_140510E4E:                          ; CODE XREF: KdChangeOption+15↑j
                cmp     edx, 1
                jnz     short loc_140510E8B
                test    r9d, r9d
                jnz     short loc_140510E8B
                cmp     [rsp+arg_20], r10
                jnz     short loc_140510E8B
                mov     al, cs:byte_140C40742
                test    al, al
                jns     short loc_140510E70
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140510E70:                          ; CODE XREF: KdChangeOption+37↑j
                mov     al, [r8]
                mov     cs:byte_140C40742, al
                mov     eax, r10d

loc_140510E7C:                          ; CODE XREF: KdChangeOption+1C↑j
                mov     rcx, [rsp+arg_28]
                test    rcx, rcx
                jz      short locret_140510E90
                mov     [rcx], r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140510E8B:                          ; CODE XREF: KdChangeOption+21↑j
                                        ; KdChangeOption+26↑j ...
                mov     eax, 0C000000Dh

locret_140510E90:                       ; CODE XREF: KdChangeOption+54↑j
                retn
KdChangeOption  endp

; ---------------------------------------------------------------------------
                align 2
algn_140510E92:                         ; DATA XREF: .pdata:00000001400F3138↑o
                align 20h
; Exported entry 1077. KdEnableDebugger

; =============== S U B R O U T I N E =======================================


