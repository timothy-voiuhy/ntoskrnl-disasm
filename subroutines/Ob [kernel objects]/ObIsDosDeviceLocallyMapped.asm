ObIsDosDeviceLocallyMapped proc near    ; DATA XREF: .pdata:000000014010EB34↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                lea     esi, [rcx-1]
                mov     r14, rdx
                cmp     esi, 19h
                ja      short loc_1407CCD50
                call    sub_1402B95B0
                mov     rcx, gs:188h
                mov     rdi, rax
                dec     word ptr [rcx+1E6h]
                xor     edx, edx
                lea     rcx, [rax+78h]
                call    ExAcquirePushLockSharedEx
                cmp     dword ptr [rdi+rsi*4+0Ch], 0
                lea     rcx, [rdi+78h]
                setnz   al
                xor     edx, edx
                mov     [r14], al
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770
                xor     eax, eax

loc_1407CCD39:                          ; CODE XREF: ObIsDosDeviceLocallyMapped+85↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1407CCD50:                          ; CODE XREF: ObIsDosDeviceLocallyMapped+1E↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407CCD39
ObIsDosDeviceLocallyMapped endp
