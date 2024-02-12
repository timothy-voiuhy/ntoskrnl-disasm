PsUpdateDiskCounters proc near          ; DATA XREF: .pdata:00000001400D7A54↑o

arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     r10, [rcx+8B8h]
                test    r10, r10
                jz      short locret_1403493C9
                test    rdx, rdx
                jz      short loc_1403493A6
                lock xadd [r10], rdx

loc_1403493A6:                          ; CODE XREF: PsUpdateDiskCounters+F↑j
                test    r8, r8
                jnz     short loc_1403493D3

loc_1403493AB:                          ; CODE XREF: PsUpdateDiskCounters+49↓j
                test    r9d, r9d
                jz      short loc_1403493B9
                mov     eax, r9d
                lock xadd [r10+10h], rax

loc_1403493B9:                          ; CODE XREF: PsUpdateDiskCounters+1E↑j
                mov     eax, [rsp+arg_20]
                test    eax, eax
                jnz     short loc_1403493DB

loc_1403493C1:                          ; CODE XREF: PsUpdateDiskCounters+51↓j
                mov     eax, [rsp+arg_28]
                test    eax, eax
                jnz     short loc_1403493CB

locret_1403493C9:                       ; CODE XREF: PsUpdateDiskCounters+A↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403493CB:                          ; CODE XREF: PsUpdateDiskCounters+37↑j
                lock xadd [r10+20h], rax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403493D3:                          ; CODE XREF: PsUpdateDiskCounters+19↑j
                lock xadd [r10+8], r8
                jmp     short loc_1403493AB
; ---------------------------------------------------------------------------

loc_1403493DB:                          ; CODE XREF: PsUpdateDiskCounters+2F↑j
                lock xadd [r10+18h], rax
                jmp     short loc_1403493C1
PsUpdateDiskCounters endp
