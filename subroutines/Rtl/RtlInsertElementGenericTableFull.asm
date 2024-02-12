RtlInsertElementGenericTableFull proc near
                                        ; CODE XREF: RtlInsertElementGenericTable+48↑p
                                        ; DATA XREF: .rdata:000000014007B038↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001404739A6 SIZE 00000016 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 20h
                cmp     [rsp+28h+arg_28], 1
                mov     rdi, r9
                mov     r14d, r8d
                mov     r15, rdx
                mov     rsi, rcx
                jz      loc_1403269DA
                lea     edx, [r14+28h]
                cmp     edx, r14d
                jb      loc_1404739AD
                mov     rax, [rcx+30h]
                call    sub_1404079D0
                mov     rbx, rax
                test    rax, rax
                jz      loc_1404739AD
                and     qword ptr [rax+8], 0
                lea     rcx, [rax+18h]
                and     qword ptr [rax+10h], 0
                mov     [rax], rax
                lea     rax, [rsi+8]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     FatalListEntryError_25
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                inc     dword ptr [rsi+24h]
                cmp     [rsp+28h+arg_28], 0
                jz      short loc_1403269E7
                cmp     [rsp+28h+arg_28], 2
                mov     rax, [rsp+28h+arg_20]
                jz      short loc_1403269E1
                mov     [rax+10h], rbx

loc_14032698C:                          ; CODE XREF: RtlInsertElementGenericTableFull+F5↓j
                mov     [rbx], rax

loc_14032698F:                          ; CODE XREF: RtlInsertElementGenericTableFull+FA↓j
                mov     r8, r14
                lea     rcx, [rbx+28h]
                mov     rdx, r15
                call    memmove

loc_14032699E:                          ; CODE XREF: RtlInsertElementGenericTableFull+EF↓j
                mov     rcx, rbx
                call    RtlSplay
                mov     [rsi], rax
                test    rdi, rdi
                jnz     short loc_1403269CE

loc_1403269AE:                          ; CODE XREF: RtlInsertElementGenericTableFull+E8↓j
                lea     rax, [rbx+28h]

loc_1403269B2:                          ; CODE XREF: RtlInsertElementGenericTableFull+14D0C7↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     r14, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403269CE:                          ; CODE XREF: RtlInsertElementGenericTableFull+BC↑j
                cmp     [rsp+28h+arg_28], 1
                setnz   al
                mov     [rdi], al
                jmp     short loc_1403269AE
; ---------------------------------------------------------------------------

loc_1403269DA:                          ; CODE XREF: RtlInsertElementGenericTableFull+2A↑j
                mov     rbx, [rsp+28h+arg_20]
                jmp     short loc_14032699E
; ---------------------------------------------------------------------------

loc_1403269E1:                          ; CODE XREF: RtlInsertElementGenericTableFull+96↑j
                mov     [rax+8], rbx
                jmp     short loc_14032698C
; ---------------------------------------------------------------------------

loc_1403269E7:                          ; CODE XREF: RtlInsertElementGenericTableFull+8A↑j
                mov     [rsi], rbx
                jmp     short loc_14032698F
RtlInsertElementGenericTableFull endp
