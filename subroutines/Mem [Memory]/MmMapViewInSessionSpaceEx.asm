MmMapViewInSessionSpaceEx proc near     ; CODE XREF: MmMapViewInSessionSpace+15↑p
                                        ; DATA XREF: .pdata:000000014010641C↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rax, gs:188h
                mov     r10, rdx
                mov     rdx, [rax+0B8h]
                test    dword ptr [rdx+464h], 10000h
                jz      short loc_140712E17
                and     [rsp+48h+var_18], 0
                mov     rax, [rsp+48h+arg_20]
                mov     rdx, [rdx+558h]
                mov     [rsp+48h+var_20], rax
                add     rdx, 0C0h
                mov     [rsp+48h+var_28], r9
                mov     r9, r8
                mov     r8, r10
                call    sub_14065FA54

loc_140712E11:                          ; CODE XREF: MmMapViewInSessionSpaceEx+5C↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140712E17:                          ; CODE XREF: MmMapViewInSessionSpaceEx+21↑j
                mov     eax, 0C0000019h
                jmp     short loc_140712E11
MmMapViewInSessionSpaceEx endp
