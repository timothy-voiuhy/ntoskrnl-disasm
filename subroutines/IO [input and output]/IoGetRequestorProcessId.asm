IoGetRequestorProcessId proc near       ; DATA XREF: .pdata:00000001400DFFEC↑o
                sub     rsp, 28h
                call    IoGetRequestorProcess
                test    rax, rax
                jz      short loc_1403CF62A
                mov     eax, [rax+440h]

loc_1403CF624:                          ; CODE XREF: IoGetRequestorProcessId:loc_1403CF62A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CF62A:                          ; CODE XREF: IoGetRequestorProcessId+C↑j
                jmp     short loc_1403CF624
IoGetRequestorProcessId endp
