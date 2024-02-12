ObCreateObject  proc near               ; CODE XREF: sub_14030D258+3C8↑p
                                        ; sub_1405D17AC+7E↑p ...

var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h

                sub     rsp, 58h
                and     [rsp+58h+var_10], 0
                mov     rax, [rsp+58h+arg_40]
                mov     [rsp+58h+var_18], rax
                mov     eax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], eax
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], eax
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], eax
                call    sub_14061EDD0
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObCreateObject  endp

byte_14067E673  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010116C↑o

; =============== S U B R O U T I N E =======================================


sub_14067E67C   proc near               ; CODE XREF: sub_1406F6704+D7↓p
                                        ; sub_1406F68D4+3C4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408119C4 SIZE 00000039 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, ecx
                mov     rsi, r8
                mov     r14, rdx
                mov     r8d, 6E496C41h
                mov     ecx, 200h
                lea     r9, ds:0[rbp*2]
                add     r9, rbp
                lea     rdi, ds:38h[r9*8]
                mov     rdx, rdi
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_1408119CE
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                and     qword ptr [rbx], 0
                xor     edi, edi
                mov     [rbx+8], ebp
                mov     [rbx+28h], r14
                mov     [rbx+30h], rsi
                test    ebp, ebp
                jz      short loc_14067E72A
                lea     rsi, [rbx+38h]

loc_14067E6F5:                          ; CODE XREF: sub_14067E67C+AC↓j
                mov     rdx, rsi
                mov     [rsi+10h], rbx
                lea     rcx, sub_140312E50
                call    IoAllocateMiniCompletionPacket
                mov     [rsi+8], rax
                test    rax, rax
                jz      loc_1408119D5
                mov     rax, [rbx+20h]
                inc     edi
                mov     [rsi], rax
                mov     [rbx+20h], rsi
                add     rsi, 18h
                cmp     edi, ebp
                jb      short loc_14067E6F5

loc_14067E72A:                          ; CODE XREF: sub_14067E67C+73↑j
                mov     rax, rbx

loc_14067E72D:                          ; CODE XREF: sub_14067E67C+193354↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14067E67C   endp

algn_14067E749:                         ; DATA XREF: .rdata:0000000140066024↑o
                                        ; .pdata:0000000140101178↑o
                align 10h
; Exported entry 735. IoAllocateMiniCompletionPacket

; =============== S U B R O U T I N E =======================================


