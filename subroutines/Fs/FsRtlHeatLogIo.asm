FsRtlHeatLogIo  proc near               ; DATA XREF: .pdata:000000014011C3D0↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h

                push    rbx
                sub     rsp, 40h
                mov     r9, [rdx+0B8h]
                xor     ebx, ebx
                movzx   edx, byte ptr [r9]
                sub     edx, 3
                jz      short loc_14088E7AC
                sub     edx, 1
                jz      short loc_14088E77A
                cmp     edx, 0Eh
                jz      short loc_14088E74C
                mov     ebx, 0C00000F0h
                jmp     loc_14088E7E9
; ---------------------------------------------------------------------------

loc_14088E74C:                          ; CODE XREF: FsRtlHeatLogIo+20↑j
                test    cs:byte_140C47600, 8
                jz      loc_14088E7E9
                mov     eax, [rcx]
                lea     rdx, qword_140033838
                mov     [rsp+48h+var_10], eax
                mov     rax, [r8+8]
                mov     [rsp+48h+var_18], ebx
                mov     [rsp+48h+var_20], rbx
                mov     [rsp+48h+var_28], rax
                jmp     short loc_14088E7DC
; ---------------------------------------------------------------------------

loc_14088E77A:                          ; CODE XREF: FsRtlHeatLogIo+1B↑j
                test    cs:byte_140C47600, 4
                jz      short loc_14088E7E9
                mov     eax, [rcx]
                lea     rdx, qword_140033828
                mov     [rsp+48h+var_10], eax
                mov     eax, [r9+8]
                mov     [rsp+48h+var_18], eax
                mov     rax, [r9+18h]
                mov     [rsp+48h+var_20], rax
                mov     rax, [r8+8]
                mov     [rsp+48h+var_28], rax
                jmp     short loc_14088E7DC
; ---------------------------------------------------------------------------

loc_14088E7AC:                          ; CODE XREF: FsRtlHeatLogIo+16↑j
                test    cs:byte_140C47600, 2
                jz      short loc_14088E7E9
                mov     ecx, [rcx]
                lea     rdx, qword_140033858
                mov     [rsp+48h+var_10], ecx
                mov     ecx, [r9+8]
                mov     [rsp+48h+var_18], ecx
                mov     rcx, [r9+18h]
                mov     [rsp+48h+var_20], rcx
                mov     rcx, [r8+8]
                mov     [rsp+48h+var_28], rcx

loc_14088E7DC:                          ; CODE XREF: FsRtlHeatLogIo+58↑j
                                        ; FsRtlHeatLogIo+8A↑j
                mov     r9, [r8]
                mov     r8, [rsp+48h+arg_20]
                call    sub_1404F1378

loc_14088E7E9:                          ; CODE XREF: FsRtlHeatLogIo+27↑j
                                        ; FsRtlHeatLogIo+33↑j ...
                mov     eax, ebx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlHeatLogIo  endp

algn_14088E7F2:                         ; DATA XREF: .pdata:000000014011C3D0↑o
                align 20h
; Exported entry 449. FsRtlHeatLogTierMove

; =============== S U B R O U T I N E =======================================


