ntoskrnl_6      proc near               ; CODE XREF: KeDelayExecutionThread+3C2↑p
                                        ; __report_rangecheckfailure+6↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404764F6 SIZE 00000210 BYTES

                push    rdi
                sub     rsp, 40h
                mov     edi, ecx
                test    ecx, 0FFFFFFFEh
                jnz     loc_1404764F6
                mov     rax, gs:20h

loc_14032DA0D:                          ; DATA XREF: .rdata:000000014007CBAC↑o
                                        ; .rdata:000000014007CBC0↑o ...
                mov     [rsp+48h+arg_10], rbx
                cmp     dword ptr [rax+7C18h], 0
                jnz     short loc_14032DA39
                mov     rcx, [rax+8448h]
                cmp     dword ptr [rcx+8], 0
                jnz     short loc_14032DA39
                mov     eax, 40000024h

loc_14032DA2D:                          ; CODE XREF: ntoskrnl_6+27B↓j
                mov     rbx, [rsp+48h+arg_10]

loc_14032DA32:                          ; CODE XREF: ntoskrnl_6+148B0B↓j
                                        ; DATA XREF: .pdata:00000001400D6314↑o ...
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032DA39:                          ; CODE XREF: ntoskrnl_6+29↑j
                                        ; ntoskrnl_6+36↑j
                                        ; DATA XREF: ...
                mov     [rsp+48h+arg_18], rbp
                mov     rbp, gs:188h
                mov     [rsp+48h+var_10], rsi
                mov     [rsp+48h+var_18], r12
                mov     [rsp+48h+var_28], r15
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r12, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140476500

loc_14032DA75:                          ; CODE XREF: ntoskrnl_6+148B12↓j
                                        ; ntoskrnl_6+148B1C↓j ...
                mov     rsi, gs:20h
                cmp     dword ptr [rsi+7C18h], 0
                jnz     short loc_14032DA98
                mov     rax, [rsi+8448h]
                cmp     dword ptr [rax+8], 0
                jz      loc_14032DCA8

loc_14032DA98:                          ; CODE XREF: ntoskrnl_6+95↑j
                xor     edx, edx

loc_14032DA9A:                          ; DATA XREF: .rdata:000000014007CBF8↑o
                                        ; .rdata:000000014007CC08↑o ...
                mov     [rsp+48h+var_20], r14
                mov     rcx, rbp
                call    sub_1402423B0
                mov     r14, gs:20h
                xor     ebx, ebx
                mov     [rsp+48h+arg_0], ebx
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_140476541

loc_14032DAC6:                          ; CODE XREF: ntoskrnl_6+148B56↓j
                                        ; ntoskrnl_6+148B65↓j ...
                lock bts qword ptr [rbp+40h], 0
                jb      loc_140476569
                mov     r14, gs:20h
                mov     [rsp+48h+arg_8], ebx
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_1404765CE

loc_14032DAF0:                          ; CODE XREF: ntoskrnl_6+2ED↓j
                                        ; ntoskrnl_6+148BE3↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_14032DCAF
                mov     r14, [rsi+10h]
                test    r14, r14
                jnz     short loc_14032DB2C
                mov     r8d, 1
                mov     rdx, rbx
                test    r8b, dil
                jnz     loc_14047663A

loc_14032DB18:                          ; CODE XREF: ntoskrnl_6+148C51↓j
                                        ; ntoskrnl_6+148C60↓j
                mov     rcx, rsi
                call    sub_1402897D0
                mov     r14, rax
                test    rax, rax
                jz      loc_14032DC70

loc_14032DB2C:                          ; CODE XREF: ntoskrnl_6+114↑j
                cmp     [rsi+20h], bl
                jnz     loc_140476679
                cli
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CDFD0
                mov     rdx, rax
                sti

loc_14032DB48:                          ; CODE XREF: ntoskrnl_6+148C8D↓j
                movzx   ecx, byte ptr [rbp+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rbp+78h]
                add     rcx, rdx
                test    al, 20h
                jnz     loc_14032DC9D

loc_14032DB64:                          ; CODE XREF: ntoskrnl_6+2B3↓j
                mov     [rbp+20h], rcx
                mov     dl, 1
                mov     rcx, rbp
                call    sub_1402CDEF0
                xor     r8d, r8d
                movsx   edi, al
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1402CDA30
                test    al, al
                jnz     short loc_14032DB96
                mov     r8d, edi
                xor     r9d, r9d
                mov     rdx, rbp
                xor     ecx, ecx
                call    sub_14028DBD0

loc_14032DB96:                          ; CODE XREF: ntoskrnl_6+194↑j
                mov     rcx, rbp
                call    sub_1403261B0
                mov     [rsi+10h], rbx
                cli
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                test    byte ptr [r14+2], 4
                jnz     loc_14032DCE8

loc_14032DBBD:                          ; CODE XREF: ntoskrnl_6+30D↓j
                movzx   ecx, byte ptr [r14+0C3h]

loc_14032DBC5:                          ; CODE XREF: ntoskrnl_6+307↓j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_140476682

loc_14032DBDB:                          ; CODE XREF: ntoskrnl_6+148CAD↓j
                mov     [rsi+8], r14
                movzx   eax, byte ptr [r14+184h]
                cmp     al, 1
                jnz     short loc_14032DC0B
                mov     edx, [r14+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     edx, [r14+1B4h]
                add     eax, edx
                mov     [r14+84h], eax

loc_14032DC0B:                          ; CODE XREF: ntoskrnl_6+1F9↑j
                mov     byte ptr [r14+184h], 2
                mov     rdx, rbp
                mov     rcx, rsi
                mov     byte ptr [rbp+283h], 21h ; '!'
                mov     [rbp+186h], r15b
                call    sub_1402CE090
                mov     r8b, 1
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_1404058F0

loc_14032DC3A:                          ; CODE XREF: ntoskrnl_6+2AB↓j
                mov     r14, [rsp+48h+var_20]

loc_14032DC3F:                          ; CODE XREF: ntoskrnl_6+2BD↓j
                                        ; DATA XREF: .pdata:00000001400D6338↑o ...
                mov     eax, cs:dword_140CFC660
                mov     rsi, [rsp+48h+var_10]
                mov     rbp, [rsp+48h+arg_18]
                test    eax, eax
                jnz     loc_1404766A2

loc_14032DC57:                          ; CODE XREF: ntoskrnl_6+148CB4↓j
                                        ; ntoskrnl_6+148CC0↓j ...
                movzx   ecx, r15b
                mov     cr8, rcx
                mov     r15, [rsp+48h+var_28]
                mov     eax, ebx
                mov     r12, [rsp+48h+var_18]
                jmp     loc_14032DA2D
; ---------------------------------------------------------------------------

loc_14032DC70:                          ; CODE XREF: ntoskrnl_6+136↑j
                                        ; DATA XREF: .pdata:00000001400D6350↑o ...
                lock and [rsi+30h], rbx
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140476655

loc_14032DC8E:                          ; CODE XREF: ntoskrnl_6+148C69↓j
                                        ; ntoskrnl_6+148C78↓j ...
                mov     rcx, rbp
                call    sub_1403261B0
                mov     ebx, 40000024h
                jmp     short loc_14032DC3A
; ---------------------------------------------------------------------------

loc_14032DC9D:                          ; CODE XREF: ntoskrnl_6+16E↑j
                lock btr dword ptr [rbp+78h], 5
                jmp     loc_14032DB64
; ---------------------------------------------------------------------------

loc_14032DCA8:                          ; CODE XREF: ntoskrnl_6+A2↑j
                                        ; DATA XREF: .pdata:00000001400D635C↑o ...
                mov     ebx, 40000024h
                jmp     short loc_14032DC3F
; ---------------------------------------------------------------------------

loc_14032DCAF:                          ; CODE XREF: ntoskrnl_6+107↑j
                                        ; DATA XREF: .pdata:00000001400D6368↑o ...
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_1404765F6
                nop

loc_14032DCC0:                          ; CODE XREF: ntoskrnl_6+2E1↓j
                                        ; ntoskrnl_6+148C0B↓j ...
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_14032DCC0
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jz      loc_14032DAF0
                jmp     loc_14047661E
; ---------------------------------------------------------------------------

loc_14032DCE8:                          ; CODE XREF: ntoskrnl_6+1C7↑j
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1402D0980
                mov     cl, 1
                test    al, al
                jnz     loc_14032DBC5
                jmp     loc_14032DBBD
ntoskrnl_6      endp

; ---------------------------------------------------------------------------
algn_14032DD02:                         ; DATA XREF: .pdata:00000001400D6374↑o
                align 10h
; Exported entry 297. ExReleaseFastMutexUnsafeAndLeaveCriticalRegion

; =============== S U B R O U T I N E =======================================


