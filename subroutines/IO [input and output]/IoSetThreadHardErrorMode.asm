IoSetThreadHardErrorMode proc near      ; CODE XREF: sub_14020F78C+2A↓p
                                        ; FsRtlGetVirtualDiskNestingLevel+87↓p ...
                mov     rax, gs:188h
                test    cl, cl
                jnz     short loc_140204160
                lock bts dword ptr [rax+510h], 4

loc_140204156:                          ; CODE XREF: IoSetThreadHardErrorMode+29↓j
                setb    al
                test    al, al
                setz    al
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140204160:                          ; CODE XREF: IoSetThreadHardErrorMode+B↑j
                lock btr dword ptr [rax+510h], 4
                jmp     short loc_140204156
IoSetThreadHardErrorMode endp
