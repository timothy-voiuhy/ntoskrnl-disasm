IoUnregisterFsRegistrationChange proc near
                                        ; DATA XREF: .pdata:000000014011CA18↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, rdx
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C459A0
                call    ExAcquireResourceExclusiveLite
                mov     rcx, cs:qword_140C45AF0
                lea     rax, qword_140C45AF0
                jmp     short loc_1408955DD
; ---------------------------------------------------------------------------

loc_1408955CE:                          ; CODE XREF: IoUnregisterFsRegistrationChange+50↓j
                cmp     [rcx+10h], rbx
                jnz     short loc_1408955DA
                cmp     [rcx+18h], rdi
                jz      short loc_140895610

loc_1408955DA:                          ; CODE XREF: IoUnregisterFsRegistrationChange+42↑j
                mov     rcx, [rcx]

loc_1408955DD:                          ; CODE XREF: IoUnregisterFsRegistrationChange+3C↑j
                cmp     rcx, rax
                jnz     short loc_1408955CE

loc_1408955E2:                          ; CODE XREF: IoUnregisterFsRegistrationChange+A0↓j
                lea     rcx, unk_140C459A0
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140895610:                          ; CODE XREF: IoUnregisterFsRegistrationChange+48↑j
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_140895632
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     short loc_140895632
                mov     [rdx], rax
                mov     [rax+8], rdx
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1408955E2
; ---------------------------------------------------------------------------

loc_140895632:                          ; CODE XREF: IoUnregisterFsRegistrationChange+87↑j
                                        ; IoUnregisterFsRegistrationChange+90↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
IoUnregisterFsRegistrationChange endp
