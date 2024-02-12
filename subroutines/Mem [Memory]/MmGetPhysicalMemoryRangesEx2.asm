MmGetPhysicalMemoryRangesEx2 proc near  ; CODE XREF: sub_14037ECBC+85↑p
                                        ; MmGetPhysicalMemoryRanges+8↓p ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h

; FUNCTION CHUNK AT 0000000140847E98 SIZE 00000020 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     [rsp+28h+arg_8], 0
                mov     ebx, edx
                test    edx, 0FFFFFFFCh
                jnz     short loc_14076E2FD
                test    bl, 2
                jnz     loc_140847E98

loc_14076E2C2:                          ; CODE XREF: MmGetPhysicalMemoryRangesEx2+D9C01↓j
                lea     r8, [rsp+28h+arg_8]
                xor     edx, edx
                call    sub_140304080
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14076E2FD
                mov     edx, ebx
                mov     rcx, rax
                call    sub_14076E308
                cmp     [rsp+28h+arg_8], 0
                mov     rbx, rax
                jnz     loc_140847EA6

loc_14076E2EE:                          ; CODE XREF: MmGetPhysicalMemoryRangesEx2+D9C13↓j
                mov     rax, rbx

loc_14076E2F1:                          ; CODE XREF: MmGetPhysicalMemoryRangesEx2+5F↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076E2FD:                          ; CODE XREF: MmGetPhysicalMemoryRangesEx2+17↑j
                                        ; MmGetPhysicalMemoryRangesEx2+34↑j ...
                xor     eax, eax
                jmp     short loc_14076E2F1
MmGetPhysicalMemoryRangesEx2 endp
