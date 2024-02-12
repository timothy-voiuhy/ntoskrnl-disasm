RtlTimeToElapsedTimeFields proc near    ; DATA XREF: .pdata:0000000140121DAC↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = word ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                lea     r8, [rax+10h]
                xor     edi, edi
                lea     rdx, [rax+18h]
                mov     [rax+18h], edi
                mov     [rax+10h], edi
                call    sub_140346D74
                mov     r10d, [rsp+28h+arg_8]
                mov     r11d, 88888889h
                movzx   ecx, [rsp+28h+arg_10]
                mov     eax, 10624DD3h
                mul     r10d
                mov     [rbx+4], cx
                mov     r9d, edx
                mov     [rbx], edi
                shr     r9d, 6
                imul    eax, r9d, 0FFFFFC18h
                add     r10d, eax
                mov     eax, r11d
                mul     r9d
                mov     eax, r11d
                mov     [rbx+0Ch], r10w
                mov     r8d, edx
                shr     r8d, 5
                mul     r8d
                shr     edx, 5
                movsx   eax, dx
                imul    ecx, eax, 3Ch ; '<'
                movzx   eax, r8w
                mov     [rbx+6], dx
                sub     ax, cx
                mov     [rbx+8], ax
                movsx   eax, r8w
                imul    ecx, eax, 3Ch ; '<'
                sub     r9w, cx
                mov     [rbx+0Ah], r9w
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTimeToElapsedTimeFields endp
