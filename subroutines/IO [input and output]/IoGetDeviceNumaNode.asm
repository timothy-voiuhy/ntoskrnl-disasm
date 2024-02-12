IoGetDeviceNumaNode proc near           ; CODE XREF: sub_140897028+3D↓p
                                        ; DATA XREF: .rdata:0000000140095A78↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140849F3A SIZE 0000000F BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_1407725AF
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      short loc_1407725AF
                test    dword ptr [rcx+18Ch], 20000h
                jnz     short loc_1407725AF
                cmp     dword ptr [rcx+294h], 0FFFFFFFDh
                jbe     loc_140849F3A
                call    KeQueryHighestNodeNumber
                test    ax, ax
                jnz     short loc_1407725A8
                mov     [rbx], di

loc_14077259A:                          ; CODE XREF: IoGetDeviceNumaNode+D79F4↓j
                xor     eax, eax

loc_14077259C:                          ; CODE XREF: IoGetDeviceNumaNode+5D↓j
                                        ; IoGetDeviceNumaNode+64↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407725A8:                          ; CODE XREF: IoGetDeviceNumaNode+45↑j
                mov     eax, 0C0000225h
                jmp     short loc_14077259C
; ---------------------------------------------------------------------------

loc_1407725AF:                          ; CODE XREF: IoGetDeviceNumaNode+12↑j
                                        ; IoGetDeviceNumaNode+22↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14077259C
IoGetDeviceNumaNode endp
