MmGetSystemRoutineAddress proc near     ; CODE XREF: sub_1403C57C8+116↑p
                                        ; DATA XREF: .rdata:00000001400874CC↑o ...

var_18          = xmmword ptr -18h

; FUNCTION CHUNK AT 000000014082D094 SIZE 00000018 BYTES

                push    rbx
                sub     rsp, 30h
                xorps   xmm0, xmm0
                mov     rbx, rcx
                movups  [rsp+38h+var_18], xmm0
                mov     rdx, rcx

loc_140717934:                          ; CODE XREF: MmGetSystemRoutineAddress+115787↓j
                mov     r8b, 1
                lea     rcx, [rsp+38h+var_18]
                call    RtlUnicodeStringToAnsiString
                test    eax, eax
                js      loc_14082D094
                mov     rdx, qword ptr [rsp+38h+var_18+8]
                mov     rcx, cs:qword_140CFC470
                call    RtlFindExportedRoutineByName
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140717987

loc_140717962:                          ; CODE XREF: MmGetSystemRoutineAddress+7B↓j
                lea     rcx, [rsp+38h+var_18]
                call    RtlFreeUnicodeString
                test    rbx, rbx
                jz      short loc_14071797D
                mov     rcx, rbx
                call    sub_14035C07C
                test    eax, eax
                js      short loc_14071799D

loc_14071797D:                          ; CODE XREF: MmGetSystemRoutineAddress+4F↑j
                mov     rax, rbx

loc_140717980:                          ; CODE XREF: MmGetSystemRoutineAddress+7F↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140717987:                          ; CODE XREF: MmGetSystemRoutineAddress+40↑j
                mov     rdx, qword ptr [rsp+38h+var_18+8]
                mov     rcx, cs:qword_140CFC500
                call    RtlFindExportedRoutineByName
                mov     rbx, rax
                jmp     short loc_140717962
; ---------------------------------------------------------------------------

loc_14071799D:                          ; CODE XREF: MmGetSystemRoutineAddress+5B↑j
                xor     eax, eax
                jmp     short loc_140717980
MmGetSystemRoutineAddress endp
