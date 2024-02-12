RtlContractHashTable proc near          ; DATA XREF: .rdata:00000001400452EC↑o
                                        ; .rdata:0000000140045320↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041F114 SIZE 0000001E BYTES

                push    rbx
                sub     rsp, 20h
                mov     edx, [rcx+8]
                mov     rbx, rcx
                mov     [rsp+28h+arg_0], 0
                cmp     edx, 80h
                jnz     short loc_140202495

loc_14020248C:                          ; CODE XREF: RtlContractHashTable+29↓j
                xor     al, al
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140202495:                          ; CODE XREF: RtlContractHashTable+1A↑j
                cmp     dword ptr [rcx+1Ch], 0
                ja      short loc_14020248C
                mov     eax, [rcx+0Ch]
                test    eax, eax
                jz      loc_14020255E
                dec     eax

loc_1402024A8:                          ; CODE XREF: RtlContractHashTable+F4↓j
                dec     edx
                mov     [rcx+0Ch], eax
                call    sub_14020350C
                mov     edx, [rbx+0Ch]
                mov     rcx, rbx
                mov     r9, rax
                call    sub_14020350C
                dec     dword ptr [rbx+8]
                mov     r10, rax
                cmp     [r9], r9
                jnz     short loc_14020253A

loc_1402024CB:                          ; CODE XREF: RtlContractHashTable+CD↓j
                                        ; RtlContractHashTable+D2↓j
                mov     rdx, r10

loc_1402024CE:                          ; CODE XREF: RtlContractHashTable+C8↓j
                mov     rcx, [r9]
                cmp     rcx, r9
                jnz     short loc_1402024F7
                mov     edx, [rbx+8]
                mov     eax, 1
                sub     edx, 0FFFFFF80h
                bsr     ecx, edx
                shl     eax, cl
                lea     r8d, [rcx-7]
                cmp     eax, edx
                jz      short loc_140202569

loc_1402024EE:                          ; CODE XREF: RtlContractHashTable+134↓j
                mov     al, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402024F7:                          ; CODE XREF: RtlContractHashTable+64↑j
                cmp     [rcx+8], r9
                jnz     FatalListEntryError_1
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     FatalListEntryError_1
                mov     [r9], rax
                mov     [rax+8], r9
                mov     r8, [rdx]
                cmp     r8, r10
                jnz     short loc_140202544

loc_14020251D:                          ; CODE XREF: RtlContractHashTable+DC↓j
                                        ; RtlContractHashTable+EA↓j
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     FatalListEntryError_1
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rax+8], rcx
                mov     [rdx], rcx
                jmp     short loc_1402024CE
; ---------------------------------------------------------------------------

loc_14020253A:                          ; CODE XREF: RtlContractHashTable+59↑j
                cmp     [rax], r10
                jz      short loc_1402024CB
                dec     dword ptr [rbx+18h]
                jmp     short loc_1402024CB
; ---------------------------------------------------------------------------

loc_140202544:                          ; CODE XREF: RtlContractHashTable+AB↑j
                mov     r11, [rcx+10h]

loc_140202548:                          ; CODE XREF: RtlContractHashTable+EC↓j
                cmp     [r8+10h], r11
                jnb     short loc_14020251D
                mov     rax, [r8]
                mov     rdx, r8
                mov     r8, rax
                cmp     rax, r10
                jz      short loc_14020251D
                jmp     short loc_140202548
; ---------------------------------------------------------------------------

loc_14020255E:                          ; CODE XREF: RtlContractHashTable+30↑j
                shr     dword ptr [rcx+10h], 1
                mov     eax, [rcx+10h]
                jmp     loc_1402024A8
; ---------------------------------------------------------------------------

loc_140202569:                          ; CODE XREF: RtlContractHashTable+7C↑j
                                        ; DATA XREF: .rdata:00000001400452EC↑o ...
                mov     [rsp+28h+arg_8], rsi
                xor     edx, edx
                mov     rsi, [rbx+20h]
                mov     rcx, [rsi+r8*8]

loc_140202578:                          ; DATA XREF: .rdata:0000000140045300↑o
                                        ; .rdata:0000000140045310↑o ...
                mov     [rsp+28h+arg_10], rdi
                lea     rdi, [rsi+r8*8]
                call    ExFreePoolWithTag
                mov     qword ptr [rdi], 0
                cmp     dword ptr [rbx+8], 80h
                mov     rdi, [rsp+28h+arg_10]
                jz      loc_14041F11B

loc_14020259F:                          ; CODE XREF: RtlContractHashTable+21CCBD↓j
                                        ; DATA XREF: .pdata:00000001400C927C↑o ...
                mov     rsi, [rsp+28h+arg_8]
                jmp     loc_1402024EE
RtlContractHashTable endp
