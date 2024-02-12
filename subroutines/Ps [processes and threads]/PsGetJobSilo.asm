PsGetJobSilo    proc near               ; CODE XREF: sub_1405D17AC+10A↓p
                                        ; sub_1405D1B0C+170↓p ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14020006E
                call    sub_140200084
                test    rax, rax
                jz      short loc_140200075
                mov     [rdx], rax
                xor     eax, eax

loc_140200068:                          ; CODE XREF: PsGetJobSilo+23↓j
                                        ; PsGetJobSilo+2A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14020006E:                          ; CODE XREF: PsGetJobSilo+7↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140200068
; ---------------------------------------------------------------------------

loc_140200075:                          ; CODE XREF: PsGetJobSilo+11↑j
                mov     eax, 0C0000509h
                jmp     short loc_140200068
PsGetJobSilo    endp

; ---------------------------------------------------------------------------
byte_14020007C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400C900C↑o

; =============== S U B R O U T I N E =======================================


sub_140200084   proc near               ; CODE XREF: PsGetJobSilo+9↑p
                                        ; sub_140310498+2A↓p ...
                xchg    ax, ax

loc_140200086:                          ; CODE XREF: sub_140200084+1A↓j
                test    rcx, rcx
                jz      short loc_1402000A0
                test    dword ptr [rcx+528h], 40000000h
                jnz     short loc_1402000A0
                mov     rcx, [rcx+430h]
                jmp     short loc_140200086
; ---------------------------------------------------------------------------

loc_1402000A0:                          ; CODE XREF: sub_140200084+5↑j
                                        ; sub_140200084+11↑j
                mov     rax, rcx
                retn
sub_140200084   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402000A5:                         ; DATA XREF: .pdata:00000001400C9018↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402000B0   proc near               ; DATA XREF: .rdata:0000000140042620↑o
                                        ; .pdata:00000001400C9024↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041E2EA SIZE 0000006D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, gs:188h
                lea     rbx, [rcx-48h]
                lea     rcx, [rbx+40h]
                mov     r14, rdx
                call    KeAcquireSpinLockRaiseToDpc
                test    byte ptr [rbx+130h], 1
                movzx   edi, al
                jz      loc_14041E2EA
                cmp     rsi, [rbx+50h]
                jnz     loc_14041E2EA
                cmp     dword ptr [rbx+0F0h], 0
                jnz     short loc_140200144
                lea     rcx, [rsi+460h]
                call    KeAcquireSpinLockAtDpcLevel
                lea     rax, [rbx+0E0h]
                mov     r8, [rax]
                mov     rdx, [rax+8]
                cmp     [r8+8], rax
                jnz     short loc_140200188
                cmp     [rdx], rax
                jnz     short loc_140200188
                mov     [rdx], r8
                lea     rcx, [rsi+460h]
                mov     [r8+8], rdx
                call    KeReleaseSpinLockFromDpcLevel
                and     byte ptr [rbx+130h], 0FEh

loc_140200144:                          ; CODE XREF: sub_1402000B0+53↑j
                                        ; sub_1402000B0+21E23E↓j
                lea     rcx, [rbx+40h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041E2F3

loc_14020015B:                          ; CODE XREF: sub_1402000B0+21E245↓j
                                        ; sub_1402000B0+21E251↓j ...
                mov     cr8, rdi
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140200188:                          ; CODE XREF: sub_1402000B0+73↑j
                                        ; sub_1402000B0+78↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402000B0   endp

; ---------------------------------------------------------------------------
algn_14020018F:                         ; DATA XREF: .rdata:0000000140042620↑o
                                        ; .pdata:00000001400C9024↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402001A0   proc near               ; CODE XREF: sub_1406AEF4C:loc_1406AF033↓p
                                        ; DATA XREF: .rdata:off_140008BB8↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                test    r9d, r9d
                jz      locret_1402004F4
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12d, [rsp+78h+arg_28]
                lea     eax, [r9-1]
                mov     r11b, [rax+rdx]
                mov     ebp, r12d
                mov     rax, [rsp+78h+arg_30]
                mov     r15d, r9d
                mov     rdi, [rsp+78h+arg_20]
                mov     r13, rdx
                mov     r14, rcx
                not     ebp
                mov     [rax], r11b
                mov     eax, r9d
                and     eax, 7
                mov     [rsp+78h+arg_18], eax
                jz      loc_1402004F6
                mov     r9d, r12d
                mov     r8, rdi
                mov     edx, 9
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, ebp
                mov     edx, 8
                mov     r9d, ebx
                mov     rcx, r14
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r12d
                mov     edx, 7
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                mov     ebp, eax
                mov     r8, rdi
                xor     ebp, ebx
                mov     edx, 6
                mov     r9d, ebp
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, [rsp+78h+arg_0]
                mov     r14d, eax
                xor     r14d, esi
                mov     r8, rdi
                mov     r9d, r14d
                mov     edx, 5
                call    sub_14030A300
                mov     rcx, [rsp+78h+arg_0]
                mov     esi, eax
                xor     esi, ebp
                mov     r8, rdi
                mov     r9d, esi
                mov     edx, 4
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, r14d
                mov     edx, 3
                mov     r14, [rsp+78h+arg_0]
                mov     r9d, ebx
                mov     rcx, r14
                call    sub_14030A300
                mov     ebp, eax
                mov     r8, rdi
                xor     ebp, esi
                mov     edx, 2
                mov     r9d, ebp
                mov     rcx, r14
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, ebx
                mov     edx, 1
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                xor     ebp, eax
                mov     r8, rdi
                mov     r9d, ebp
                xor     edx, edx
                mov     rcx, r14
                call    sub_14030A300
                mov     r12d, [rsp+78h+arg_18]
                lea     rcx, [rsp+78h+var_50]
                and     [rsp+78h+var_50], 0
                mov     ebx, eax
                mov     r8d, r12d
                mov     rdx, r13
                xor     ebx, esi
                call    memmove
                mov     rsi, [rsp+78h+var_50]
                xor     ebp, esi
                mov     rcx, rsi
                shr     rcx, 20h
                xor     ecx, ebx
                mov     dword ptr [rsp+78h+var_58], ebp
                mov     dword ptr [rsp+78h+var_58+4], ecx
                mov     r8d, 8
                lea     rcx, [rsp+78h+var_58]
                mov     [rsp+78h+var_50], rsi
                add     rcx, r12
                sub     r8d, r12d
                xor     edx, edx
                mov     ebx, r12d
                call    memset
                mov     rcx, [rsp+78h+arg_10]
                lea     rdx, [rsp+78h+var_58]
                mov     r8d, r12d
                call    memmove
                mov     r8, [rsp+78h+arg_10]
                mov     r12d, dword ptr [rsp+78h+var_58+4]
                mov     ebp, dword ptr [rsp+78h+var_58]

loc_14020037B:                          ; CODE XREF: sub_1402001A0+35F↓j
                shr     r15d, 3
                lea     rax, [rbx+r8]
                mov     [rsp+78h+var_58], rax
                test    r15d, r15d
                jz      loc_1402004DD
                mov     ecx, r15d
                sub     r13, r8
                mov     [rsp+78h+var_48], rcx

loc_14020039C:                          ; CODE XREF: sub_1402001A0+337↓j
                mov     rbx, [rax+r13]
                mov     r8, rdi
                xor     ebp, ebx
                xor     edx, edx
                mov     r9d, ebp
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, rbx
                mov     r8, rdi
                shr     rcx, 20h
                mov     edx, 1
                xor     eax, ecx
                mov     rcx, r14
                xor     r12d, eax
                mov     r9d, r12d
                call    sub_14030A300
                mov     rcx, [rsp+78h+arg_0]
                mov     r14d, eax
                xor     r14d, ebp
                mov     r8, rdi
                mov     r9d, r14d
                mov     edx, 2
                call    sub_14030A300
                mov     rcx, [rsp+78h+arg_0]
                mov     r15d, eax
                xor     r15d, r12d
                mov     r8, rdi
                mov     r9d, r15d
                mov     edx, 3
                call    sub_14030A300
                mov     rcx, [rsp+78h+arg_0]
                mov     ebp, eax
                xor     ebp, r14d
                mov     r8, rdi
                mov     r9d, ebp
                mov     edx, 4
                call    sub_14030A300
                mov     r12d, eax
                mov     r8, rdi
                xor     r12d, r15d
                mov     edx, 5
                mov     r15, [rsp+78h+arg_0]
                mov     r9d, r12d
                mov     rcx, r15
                call    sub_14030A300
                mov     r14d, eax
                mov     r8, rdi
                xor     r14d, ebp
                mov     edx, 6
                mov     r9d, r14d
                mov     rcx, r15
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                mov     edx, 7
                mov     rcx, r15
                call    sub_14030A300
                xor     r14d, eax
                mov     r8, rdi
                mov     r9d, r14d
                mov     edx, 8
                mov     rcx, r15
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                mov     edx, 9
                mov     rcx, r15
                call    sub_14030A300
                xor     r12d, dword ptr [rsp+78h+var_50+4]
                mov     ebp, eax
                mov     rax, [rsp+78h+var_58]
                xor     ebp, r14d
                xor     ebp, esi
                mov     [rsp+78h+var_50], rbx
                mov     rsi, rbx
                mov     [rax], ebp
                mov     [rax+4], r12d
                add     rax, 8
                mov     [rsp+78h+var_58], rax
                sub     [rsp+78h+var_48], 1
                mov     r14, r15
                jnz     loc_14020039C

loc_1402004DD:                          ; CODE XREF: sub_1402001A0+1EB↑j
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp

locret_1402004F4:                       ; CODE XREF: sub_1402001A0+3↑j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402004F6:                          ; CODE XREF: sub_1402001A0+65↑j
                xor     esi, esi
                mov     [rsp+78h+var_50], rsi
                xor     ebx, ebx
                jmp     loc_14020037B
sub_1402001A0   endp

; ---------------------------------------------------------------------------
algn_140200504:                         ; DATA XREF: .pdata:00000001400C9030↑o
                align 10h
; Exported entry 1861. PsGetSiloContext

; =============== S U B R O U T I N E =======================================


