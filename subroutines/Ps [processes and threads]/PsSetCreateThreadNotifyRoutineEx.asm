PsSetCreateThreadNotifyRoutineEx proc near
                                        ; DATA XREF: .rdata:000000014009F38C↑o
                                        ; .pdata:000000014010CA1C↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140853DA6 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                test    ecx, ecx
                jnz     loc_140853DA6
                lea     ebx, [rcx+1]

loc_140798E88:                          ; CODE XREF: PsSetCreateThreadNotifyRoutineEx+BAF4A↓j
                mov     edx, 20h ; ' '
                mov     rcx, rdi
                call    sub_1403AF6A0
                test    eax, eax
                jz      short loc_140798EAF
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_1407992E4

loc_140798EA3:                          ; CODE XREF: PsSetCreateThreadNotifyRoutineEx+44↓j
                                        ; PsSetCreateThreadNotifyRoutineEx+BAF40↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140798EAF:                          ; CODE XREF: PsSetCreateThreadNotifyRoutineEx+27↑j
                mov     eax, 0C0000022h
                jmp     short loc_140798EA3
PsSetCreateThreadNotifyRoutineEx endp
