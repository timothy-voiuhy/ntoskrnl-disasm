RtlTestBitEx    proc near               ; DATA XREF: .pdata:00000001400DA418↑o
                mov     rax, [rcx+8]
                bt      [rax], rdx
                setb    al
                retn
RtlTestBitEx    endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036D43D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DA418↑o

; =============== S U B R O U T I N E =======================================


sub_14036D450   proc near               ; DATA XREF: .rdata:000000014008BFCC↑o
                                        ; .pdata:00000001400DA424↑o ...

; FUNCTION CHUNK AT 000000014048E6FC SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 20h
                mov     eax, [rdx+30h]
                mov     rbx, r8
                mov     [r8+20h], eax
                test    eax, eax
                js      loc_14048E6FC

loc_14036D468:                          ; CODE XREF: sub_14036D450+1212B7↓j
                                        ; sub_14036D450+1212C4↓j
                mov     rcx, rdx
                call    IoFreeIrp
                lea     rcx, [rbx+8]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                mov     eax, 0C0000016h
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036D450   endp

algn_14036D48A:                         ; DATA XREF: .rdata:000000014008BFCC↑o
                                        ; .pdata:00000001400DA424↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036D490   proc near               ; CODE XREF: sub_140760148+6F↓p
                                        ; DATA XREF: .pdata:00000001400DA430↑o
                cmp     cs:qword_140C4A2A8, 0
                setnz   al
                retn
sub_14036D490   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036D49D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DA430↑o
; Exported entry 1488. MmProtectDriverSection
; Exported entry 1500. MmSetBankedSection
; Exported entry 1699. PoCancelDeviceNotify
; Exported entry 1753. PoRegisterDeviceNotify

; =============== S U B R O U T I N E =======================================


                public PoRegisterDeviceNotify
PoRegisterDeviceNotify proc near        ; CODE XREF: sub_140760148:loc_1407601D1↓p
                                        ; sub_14063DF30:loc_140805098↓p ...
                mov     eax, 0C00000BBh ; MmProtectDriverSection
                                        ; MmSetBankedSection
                                        ; PoCancelDeviceNotify
                retn
PoRegisterDeviceNotify endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14036D4B7:                         ; DATA XREF: .pdata:00000001400DA43C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14036D4C0   proc near               ; CODE XREF: sub_1406CA460+279↓p
                                        ; sub_140735A30+7B↓p
                                        ; DATA XREF: ...
                cmp     edx, 25h        ; switch 38 cases
                ja      short def_14036D4E1 ; jumptable 000000014036D4E1 default case, cases 0,4,6,7,15,20-23,25,31-33,35,36
                movsxd  rax, edx
                lea     rdx, cs:140000000h
                movzx   eax, ds:(byte_14036D4F8 - 140000000h)[rdx+rax]
                mov     ecx, ds:(jpt_14036D4E1 - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14036D4E7:                          ; CODE XREF: sub_14036D4C0+21↑j
                                        ; DATA XREF: .text:jpt_14036D4E1↓o
                mov     al, 1           ; jumptable 000000014036D4E1 cases 1-3,5,8-14,16-19,24,26-30,34,37
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

def_14036D4E1:                          ; CODE XREF: sub_14036D4C0+3↑j
                                        ; sub_14036D4C0+21↑j
                                        ; DATA XREF: ...
                xor     al, al          ; jumptable 000000014036D4E1 default case, cases 0,4,6,7,15,20-23,25,31-33,35,36
                retn
sub_14036D4C0   endp

; ---------------------------------------------------------------------------
                align 10h
jpt_14036D4E1   dd offset def_14036D4E1 - 140000000h
                                        ; DATA XREF: sub_14036D4C0+17↑r
                dd offset loc_14036D4E7 - 140000000h ; jump table for switch statement
byte_14036D4F8  db      0,     1,     1,     1
                                        ; DATA XREF: sub_14036D4C0+F↑r
                db      0,     1,     0,     0 ; indirect table for switch statement
                db      1,     1,     1,     1
                db      1,     1,     1,     0
                db      1,     1,     1,     1
                db      0,     0,     0,     0
                db      1,     0,     1,     1
                db      1,     1,     1,     0
                db      0,     0,     1,     0
                db      0,     1
byte_14036D51E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA448↑o

; =============== S U B R O U T I N E =======================================


sub_14036D524   proc near               ; CODE XREF: sub_140738A8C+26↓p
                                        ; sub_140738A8C+80↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041E9CE SIZE 00000065 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rcx, qword_140C44A88
                xor     ebx, ebx
                call    KeAcquireSpinLockRaiseToDpc
                movzx   edi, al
                lea     esi, [rbx+1]
                lea     rax, qword_140C44A40
                cmp     cs:qword_140C44A40, rax
                jnz     short loc_14036D568
                lea     rax, qword_140C44A58
                cmp     cs:qword_140C44A58, rax
                cmovz   ebx, esi

loc_14036D568:                          ; CODE XREF: sub_14036D524+31↑j
                lea     rcx, qword_140C44A88
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041E9CE

loc_14036D582:                          ; CODE XREF: sub_14036D524+B14AD↓j
                                        ; sub_14036D524+B14B9↓j ...
                mov     cr8, rdi
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036D524   endp

algn_14036D599:                         ; DATA XREF: .rdata:0000000140044178↑o
                                        ; .pdata:00000001400DA454↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14036D5A0   proc near               ; CODE XREF: IoDeleteDevice+ED↑p
                                        ; sub_14030FA70+9F↑p ...

; FUNCTION CHUNK AT 000000014041EA34 SIZE 00000041 BYTES

                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jnz     loc_14041EA34

loc_14036D5B1:                          ; CODE XREF: sub_14036D5A0+B14AC↓j
                mov     r8d, 20206F49h
                call    ExAllocatePoolWithTag

loc_14036D5BC:                          ; CODE XREF: sub_14036D5A0+B14D0↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036D5A0   endp

algn_14036D5C2:                         ; DATA XREF: .rdata:00000001400442C8↑o
                                        ; .pdata:00000001400DA460↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036D5D0   proc near               ; DATA XREF: .pdata:00000001400DA46C↑o
                                        ; sub_14073A5E8+AF↓o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [r8+10h]
                xor     edi, edi
                mov     rbx, r8
                mov     rsi, rdx
                mov     [rax+48h], rdi
                cmp     [rdx+41h], dil
                jnz     loc_14036D67E

loc_14036D5F9:                          ; CODE XREF: sub_14036D5D0+B6↓j
                mov     rax, [rdx+38h]
                mov     [r8+30h], rax
                mov     eax, [rdx+30h]
                mov     [r8+28h], eax
                lock inc dword ptr [r8+38h]
                cmp     [r8+28h], edi
                jl      short loc_14036D65E

loc_14036D613:                          ; CODE XREF: sub_14036D5D0+99↓j
                                        ; sub_14036D5D0+9F↓j
                mov     rdx, rbx
                call    sub_14036D6E8
                cmp     dword ptr [rbx+20h], 30Dh
                mov     rcx, [rbx+10h]
                jnz     short loc_14036D671
                lea     rdx, [rcx+28h]
                lea     rcx, qword_14000A5D8
                call    sub_140364E18

loc_14036D638:                          ; CODE XREF: sub_14036D5D0+AC↓j
                mov     rcx, rbx
                call    sub_14036D694
                mov     rcx, rsi
                call    IoFreeIrp
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, 0C0000016h
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036D65E:                          ; CODE XREF: sub_14036D5D0+41↑j
                mov     rcx, rsi
                call    sub_14036DD48
                test    rax, rax
                jz      short loc_14036D613
                mov     rdi, [rax+8]
                jmp     short loc_14036D613
; ---------------------------------------------------------------------------

loc_14036D671:                          ; CODE XREF: sub_14036D5D0+56↑j
                mov     edx, [rbx+28h]
                mov     r8, rdi
                call    sub_14037C698
                jmp     short loc_14036D638
; ---------------------------------------------------------------------------

loc_14036D67E:                          ; CODE XREF: sub_14036D5D0+23↑j
                mov     dword ptr [r8+24h], 1
                jmp     loc_14036D5F9
sub_14036D5D0   endp

; ---------------------------------------------------------------------------
byte_14036D68B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA46C↑o

; =============== S U B R O U T I N E =======================================


sub_14036D694   proc near               ; CODE XREF: sub_14036D5D0+6B↑p
                                        ; sub_14073A2B4+79↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                or      eax, 0FFFFFFFFh
                lock xadd [rcx+38h], eax
                cmp     eax, 1
                jnz     short loc_14036D6DB
                mov     rcx, [rcx+10h]
                mov     rcx, [rcx+20h]
                call    IoAllocateWorkItem
                test    rax, rax
                jz      short loc_14036D6DB
                mov     r8, rbx
                lea     rdx, sub_14037E1D0
                mov     rcx, rax
                call    sub_1402F1894
                mov     edx, 1
                mov     rcx, rax
                call    sub_1402F1838

loc_14036D6DB:                          ; CODE XREF: sub_14036D694+14↑j
                                        ; sub_14036D694+26↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036D694   endp

algn_14036D6E2:                         ; DATA XREF: .pdata:00000001400DA478↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036D6E8   proc near               ; CODE XREF: sub_14036D5D0+46↑p
                                        ; sub_14073A5E8+B5BC6↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041EA76 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                lea     rcx, qword_140C44A88
                mov     rbx, rdx
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, [rbx]
                movzx   edi, al
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     short loc_14036D788
                cmp     [rax], rbx
                jnz     short loc_14036D788
                mov     [rax], rcx
                lea     rdx, qword_140C44A58
                mov     [rcx+8], rax
                mov     rax, cs:qword_140C44A60
                dec     cs:dword_140C44A50
                cmp     [rax], rdx
                jnz     short loc_14036D788
                and     [rsp+38h+var_18], 0
                lea     rcx, byte_140C44A68
                mov     [rbx], rdx
                xor     edx, edx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C44A60, rbx
                lea     r8d, [rdx+1]
                call    sub_1402CBA10
                lea     rcx, qword_140C44A88
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041EA76

loc_14036D778:                          ; CODE XREF: sub_14036D6E8+B1390↓j
                                        ; sub_14036D6E8+B139C↓j ...
                mov     cr8, rdi
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14036D788:                          ; CODE XREF: sub_14036D6E8+27↑j
                                        ; sub_14036D6E8+2C↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14036D6E8   endp

; ---------------------------------------------------------------------------
byte_14036D78F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400443A4↑o
                                        ; .pdata:00000001400DA484↑o

; =============== S U B R O U T I N E =======================================


sub_14036D798   proc near               ; CODE XREF: sub_14036F89C+2A9↓p
                                        ; sub_14036F89C+11F76E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041EADA SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ebp, edx
                lea     rcx, qword_140C434B0
                xor     r15d, r15d
                xor     esi, esi
                xor     r14b, r14b
                call    KeAcquireSpinLockRaiseToDpc
                mov     r8d, [rbx+12Ch]
                movzx   edi, al
                cmp     r8d, ebp
                jz      short loc_14036D838
                mov     edx, [rbx+130h]
                mov     ecx, r8d
                call    sub_1402B47E8
                mov     rcx, rbx
                mov     r15d, eax
                call    sub_1402B4798
                mov     ecx, [rbx+184h]
                mov     esi, eax
                mov     [rbx+130h], r8d
                mov     eax, 0CCCCCCCDh
                mov     [rbx+12Ch], ebp
                mov     r14b, 1
                mov     [rbx+rcx*4+134h], r8d
                mov     r9d, [rbx+184h]
                inc     r9d
                mul     r9d
                shr     edx, 4
                lea     r8d, [rdx+rdx*4]
                shl     r8d, 2
                sub     r9d, r8d
                mov     [rbx+184h], r9d

loc_14036D838:                          ; CODE XREF: sub_14036D798+3E↑j
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041EADA

loc_14036D852:                          ; CODE XREF: sub_14036D798+B1344↓j
                                        ; sub_14036D798+B1350↓j ...
                mov     cr8, rdi
                test    r14b, r14b
                jz      short loc_14036D886
                mov     r9, [rbx+30h]
                test    r9, r9
                jz      short loc_14036D886
                mov     edx, [rbx+130h]
                mov     ecx, [rbx+12Ch]
                call    sub_1402B47E8
                cmp     eax, r15d
                jnz     short loc_14036D8A8
                mov     rcx, rbx
                call    sub_1402B4798
                cmp     eax, esi
                jnz     short loc_14036D8A8

loc_14036D886:                          ; CODE XREF: sub_14036D798+C1↑j
                                        ; sub_14036D798+CA↑j ...
                cmp     ebp, 314h
                jz      short loc_14036D8D3

loc_14036D88E:                          ; CODE XREF: sub_14036D798+144↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14036D8A8:                          ; CODE XREF: sub_14036D798+E0↑j
                                        ; sub_14036D798+EC↑j
                mov     r8d, 0Bh
                mov     rdx, r9
                call    sub_1407378F8
                mov     rcx, rbx
                call    sub_1402B4798
                cmp     eax, esi
                jz      short loc_14036D886
                mov     rdx, [rbx+30h]
                mov     r8d, 1Ah
                call    sub_1407378F8
                jmp     short loc_14036D886
; ---------------------------------------------------------------------------

loc_14036D8D3:                          ; CODE XREF: sub_14036D798+F4↑j
                mov     rcx, [rbx+20h]
                call    sub_140380F84
                jmp     short loc_14036D88E
sub_14036D798   endp

; ---------------------------------------------------------------------------
byte_14036D8DE  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400443D0↑o
                                        ; .pdata:00000001400DA490↑o

; =============== S U B R O U T I N E =======================================


sub_14036D8E4   proc near               ; CODE XREF: sub_14038BF34+6D↓p
                                        ; sub_140569FC4+21E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041EB3E SIZE 0000006B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                test    rcx, rcx
                jz      loc_14041EB3E
                mov     rax, [rcx+138h]
                mov     rbx, [rax+28h]

loc_14036D90C:                          ; CODE XREF: sub_14036D8E4+B125C↓j
                test    rbx, rbx
                jz      short loc_14036D97F
                lea     rbp, [rbx+58h]
                mov     rcx, rbp
                call    ExAcquireSpinLockExclusive
                mov     r8d, [rbx+78h]
                movzx   edi, al
                prefetchw byte ptr [rbx+128h]
                mov     eax, [rbx+128h]

loc_14036D931:                          ; CODE XREF: sub_14036D8E4+57↓j
                mov     ecx, eax
                lock cmpxchg [rbx+128h], ecx
                jnz     short loc_14036D931
                test    al, 4
                jnz     short loc_14036D995

loc_14036D941:                          ; CODE XREF: sub_14036D8E4+BE↓j
                dec     r8d
                mov     [rbx+78h], r8d
                prefetchw byte ptr [rbx+128h]
                mov     eax, [rbx+128h]

loc_14036D955:                          ; CODE XREF: sub_14036D8E4+7B↓j
                mov     ecx, eax
                lock cmpxchg [rbx+128h], ecx
                jnz     short loc_14036D955
                test    al, 4
                jnz     short loc_14036D9A6

loc_14036D965:                          ; CODE XREF: sub_14036D8E4+C0↓j
                                        ; sub_14036D8E4+CE↓j ...
                mov     rcx, rbp
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041EB45

loc_14036D97B:                          ; CODE XREF: sub_14036D8E4+B1263↓j
                                        ; sub_14036D8E4+B126F↓j ...
                mov     cr8, rdi

loc_14036D97F:                          ; CODE XREF: sub_14036D8E4+2B↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036D995:                          ; CODE XREF: sub_14036D8E4+5B↑j
                mov     rax, [rbx+50h]
                mov     edx, [rax+338h]
                test    dl, 1
                jz      short loc_14036D941
                jmp     short loc_14036D965
; ---------------------------------------------------------------------------

loc_14036D9A6:                          ; CODE XREF: sub_14036D8E4+7F↑j
                mov     rsi, [rbx+50h]
                xor     ebx, ebx
                cmp     [rsi+33Ch], ebx
                jbe     short loc_14036D965

loc_14036D9B4:                          ; CODE XREF: sub_14036D8E4+EA↓j
                mov     r8d, 2
                mov     edx, ebx
                mov     rcx, rsi
                call    PoFxIdleComponent
                inc     ebx
                cmp     ebx, [rsi+33Ch]
                jnb     short loc_14036D965
                jmp     short loc_14036D9B4
sub_14036D8E4   endp

; ---------------------------------------------------------------------------
byte_14036D9D0  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140044454↑o
                                        ; .pdata:00000001400DA49C↑o

; =============== S U B R O U T I N E =======================================


sub_14036D9D8   proc near               ; CODE XREF: sub_14073A5E8+E1↓p
                                        ; sub_14073D9C8+F8↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041EBAA SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_18], 0
                lea     rcx, byte_140C44A68
                mov     rbx, rdx
                xor     r9d, r9d
                xor     edx, edx
                xor     r8d, r8d
                call    KeWaitForSingleObject
                lea     rcx, qword_140C44A88
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdx, [rbx]
                movzx   edi, al
                mov     rax, [rbx+8]
                cmp     [rdx+8], rbx
                jnz     short loc_14036DA54
                cmp     [rax], rbx
                jnz     short loc_14036DA54
                mov     [rax], rdx
                lea     rcx, qword_140C44A88
                mov     [rdx+8], rax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041EBAA

loc_14036DA41:                          ; CODE XREF: sub_14036D9D8+B11D4↓j
                                        ; sub_14036D9D8+B11E0↓j ...
                mov     cr8, rdi
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14036DA54:                          ; CODE XREF: sub_14036D9D8+41↑j
                                        ; sub_14036D9D8+46↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14036D9D8   endp

; ---------------------------------------------------------------------------
byte_14036DA5B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014004449C↑o
                                        ; .pdata:00000001400DA4A8↑o

; =============== S U B R O U T I N E =======================================


sub_14036DA64   proc near               ; CODE XREF: sub_140738474+2FC↓p
                                        ; sub_14073A5E8+A6↓p ...
                sub     rsp, 28h
                xor     r8d, r8d
                xor     edx, edx
                call    sub_14036DA80
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DA64   endp

algn_14036DA78:                         ; DATA XREF: .pdata:00000001400DA4B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14036DA80   proc near               ; CODE XREF: sub_14036DA64+9↑p
                                        ; sub_140383278+9↓p ...

var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041EC0E SIZE 00000110 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14b, r8b
                mov     r15b, dl
                test    rcx, rcx
                jz      loc_14041EC0E
                mov     rax, [rcx+138h]
                mov     rdi, [rax+28h]

loc_14036DAB2:                          ; CODE XREF: sub_14036DA80+B1190↓j
                lea     rbp, [rdi+58h]
                mov     rcx, rbp
                call    ExAcquireSpinLockExclusive
                mov     r8d, [rdi+78h]
                movzx   esi, al
                prefetchw byte ptr [rdi+128h]
                mov     eax, [rdi+128h]

loc_14036DAD2:                          ; CODE XREF: sub_14036DA80+5C↓j
                mov     ecx, eax
                lock cmpxchg [rdi+128h], ecx
                jnz     short loc_14036DAD2
                test    al, 4
                jnz     short loc_14036DB45

loc_14036DAE2:                          ; CODE XREF: sub_14036DA80+D2↓j
                inc     r8d
                mov     [rdi+78h], r8d
                xor     ebx, ebx
                prefetchw byte ptr [rdi+128h]
                mov     eax, [rdi+128h]

loc_14036DAF8:                          ; CODE XREF: sub_14036DA80+82↓j
                mov     ecx, eax
                lock cmpxchg [rdi+128h], ecx
                jnz     short loc_14036DAF8
                test    al, 4
                jnz     short loc_14036DB59

loc_14036DB08:                          ; CODE XREF: sub_14036DA80+ED↓j
                                        ; sub_14036DA80+107↓j
                mov     rcx, rbp
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14041EC79

loc_14036DB22:                          ; CODE XREF: sub_14036DA80+B11FB↓j
                                        ; sub_14036DA80+B1207↓j ...
                mov     cr8, rsi
                test    rbx, rbx
                jnz     short loc_14036DB8F

loc_14036DB2B:                          ; CODE XREF: sub_14036DA80+1A4↓j
                                        ; sub_14036DA80+B11F4↓j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036DB45:                          ; CODE XREF: sub_14036DA80+60↑j
                mov     rax, [rdi+50h]
                mov     edx, [rax+338h]
                test    dl, 1
                jz      short loc_14036DAE2
                jmp     loc_14041EC15
; ---------------------------------------------------------------------------

loc_14036DB59:                          ; CODE XREF: sub_14036DA80+86↑j
                mov     rbx, [rdi+50h]
                mov     rcx, rbx
                call    sub_1402BD16C
                xor     edi, edi
                cmp     [rbx+33Ch], edi
                jbe     short loc_14036DB08

loc_14036DB6F:                          ; CODE XREF: sub_14036DA80+10D↓j
                mov     r8d, 2
                mov     edx, edi
                mov     rcx, rbx
                call    PoFxActivateComponent
                inc     edi
                cmp     edi, [rbx+33Ch]
                jnb     loc_14036DB08
                jmp     short loc_14036DB6F
; ---------------------------------------------------------------------------

loc_14036DB8F:                          ; CODE XREF: sub_14036DA80+A9↑j
                xor     ebp, ebp
                cmp     [rbx+33Ch], ebp
                jbe     short loc_14036DBFE

loc_14036DB99:                          ; CODE XREF: sub_14036DA80+17C↓j
                mov     rax, [rbx+340h]
                mov     rsi, [rax+rbp*8]
                mov     eax, [rsi+58h]
                test    eax, 3FFFFFFFh
                jz      loc_14041ECF2
                and     [rsp+48h+var_28], 0
                lea     rcx, [rsi+68h]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, [rsi+58h]
                test    eax, eax
                jns     loc_14041ECF2
                test    r15b, r15b
                jnz     short loc_14036DC2F

loc_14036DBD9:                          ; CODE XREF: sub_14036DA80+1B4↓j
                cmp     cs:dword_140CF4D20, 0
                jnz     loc_14041ECDC
                mov     eax, [rbx+338h]
                test    al, al
                js      loc_14041ECDC

loc_14036DBF4:                          ; CODE XREF: sub_14036DA80+B125F↓j
                                        ; sub_14036DA80+B126D↓j
                inc     ebp
                cmp     ebp, [rbx+33Ch]
                jb      short loc_14036DB99

loc_14036DBFE:                          ; CODE XREF: sub_14036DA80+117↑j
                and     [rsp+48h+var_28], 0
                lea     rcx, [rbx+238h]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, edi
                lock xadd [rbx+0F4h], eax
                add     eax, edi
                jnz     loc_14036DB2B
                jmp     loc_14041ED07
; ---------------------------------------------------------------------------

loc_14036DC2F:                          ; CODE XREF: sub_14036DA80+157↑j
                lock or dword ptr [rbx+20h], 1
                jmp     short loc_14036DBD9
sub_14036DA80   endp

; ---------------------------------------------------------------------------
byte_14036DC36  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400444E0↑o
                                        ; .pdata:00000001400DA4C0↑o

; =============== S U B R O U T I N E =======================================


sub_14036DC3C   proc near               ; CODE XREF: sub_14073A5E8+7D↓p
                                        ; sub_14073D9C8+D4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041ED1E SIZE 0000006A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rcx, qword_140C44A88
                mov     rdi, rdx
                call    KeAcquireSpinLockRaiseToDpc
                xor     esi, esi
                movzx   ebx, al
                mov     rax, cs:qword_140C44A48
                lea     rcx, qword_140C44A40
                cmp     cs:qword_140C44A40, rcx
                setz    sil
                cmp     [rax], rcx
                jnz     FatalListEntryError
                mov     [rdi], rcx
                lea     rcx, qword_140C44A88
                mov     [rdi+8], rax
                mov     [rax], rdi
                inc     cs:dword_140C44A50
                mov     cs:qword_140C44A48, rdi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041ED25

loc_14036DCB2:                          ; CODE XREF: sub_14036DC3C+B10EB↓j
                                        ; sub_14036DC3C+B10F7↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DC3C   endp

algn_14036DCC9:                         ; DATA XREF: .rdata:0000000140044504↑o
                                        ; .pdata:00000001400DA4CC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036DCD0   proc near               ; CODE XREF: sub_14073BF0C+8F↓p
                                        ; DATA XREF: .rdata:000000014004477C↑o ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041ED88 SIZE 0000003E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:byte_140CF4D1A, 0
                mov     ebp, r9d
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                jnz     loc_14041ED88

loc_14036DCFD:                          ; CODE XREF: sub_14036DCD0+B10C2↓j
                mov     rdx, rsi
                mov     rcx, rdi
                mov     rax, rbx
                call    sub_1404079D0

loc_14036DD0B:                          ; CODE XREF: sub_14036DCD0+B10F1↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DCD0   endp

algn_14036DD21:                         ; DATA XREF: .rdata:000000014004477C↑o
                                        ; .pdata:00000001400DA4D8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036DD28   proc near               ; CODE XREF: sub_1403B8334+157↓p
                                        ; sub_14073A7F0+180↓p ...

; FUNCTION CHUNK AT 000000014041EDC6 SIZE 00000016 BYTES

                sub     rsp, 28h
                mov     rax, cs:qword_140CF4D30
                test    rax, rax
                jnz     loc_14041EDC6

loc_14036DD3C:                          ; CODE XREF: sub_14036DD28+B10A3↓j
                                        ; sub_14036DD28+B10AF↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DD28   endp

algn_14036DD42:                         ; DATA XREF: .rdata:0000000140044798↑o
                                        ; .pdata:00000001400DA4E4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036DD48   proc near               ; CODE XREF: sub_14036D5D0+91↑p
                                        ; sub_14037AED4+185↓p ...
                movsx   r9d, byte ptr [rcx+42h]
                xor     r8d, r8d
                cmp     [rcx+30h], r8d
                jge     short loc_14036DD80
                lea     eax, [r9-1]
                lea     rax, [rax+rax*8]
                lea     rcx, [rcx+rax*8]
                add     rcx, 0D0h
                test    r9d, r9d
                jz      short loc_14036DD80

loc_14036DD6E:                          ; CODE XREF: sub_14036DD48+36↓j
                test    byte ptr [rcx+3], 2
                jnz     short loc_14036DD84
                inc     r8d
                sub     rcx, 48h ; 'H'
                cmp     r8d, r9d
                jb      short loc_14036DD6E

loc_14036DD80:                          ; CODE XREF: sub_14036DD48+C↑j
                                        ; sub_14036DD48+24↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14036DD84:                          ; CODE XREF: sub_14036DD48+2A↑j
                mov     rax, [rcx+28h]
                retn
sub_14036DD48   endp

; ---------------------------------------------------------------------------
                align 2
algn_14036DD8A:                         ; DATA XREF: .pdata:00000001400DA4F0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036DD90   proc near               ; CODE XREF: sub_14073C170+B2↓p
                                        ; DATA XREF: .pdata:00000001400DA4FC↑o
                sub     rsp, 28h
                add     rcx, 28h ; '('
                call    sub_14036DDAC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DD90   endp

byte_14036DDA3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA4FC↑o

; =============== S U B R O U T I N E =======================================


sub_14036DDAC   proc near               ; CODE XREF: sub_14036DD90+8↑p
                                        ; DATA XREF: .rdata:00000001400447E4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041EDDC SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rdi, rcx
                cmp     cs:dword_140C44D24, ebp
                jnz     loc_14041EDDC
                movzx   esi, word ptr [rcx]
                add     esi, 52h ; 'R'
                lea     ecx, [rsi+70h]
                call    sub_14069ECE4
                mov     rbx, rax
                test    rax, rax
                jz      loc_14041EDE6
                mov     [rax+18h], rbp
                mov     [rax+10h], ebp
                mov     [rax+30h], rbp
                mov     [rax+38h], rbp
                movups  xmm0, cs:xmmword_14000A630
                mov     dword ptr [rax+80h], 0Bh
                mov     [rax+88h], rbp
                movdqu  xmmword ptr [rax+70h], xmm0
                mov     [rax+90h], ebp
                mov     [rax+94h], esi
                mov     [rax+98h], rbp
                mov     rdx, [rdi+8]
                test    rdx, rdx
                jz      short loc_14036DE43
                movzx   r8d, word ptr [rdi]
                lea     rcx, [rax+0A0h]
                call    memmove

loc_14036DE43:                          ; CODE XREF: sub_14036DDAC+85↑j
                movzx   eax, word ptr [rdi]
                mov     rcx, rbx
                shr     rax, 1
                mov     [rbx+rax*2+0A0h], bp
                call    sub_1406A03AC

loc_14036DE59:                          ; CODE XREF: sub_14036DDAC+B1035↓j
                                        ; sub_14036DDAC+B103F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DDAC   endp

byte_14036DE6F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400447E4↑o
                                        ; .pdata:00000001400DA508↑o

; =============== S U B R O U T I N E =======================================


sub_14036DE78   proc near               ; CODE XREF: sub_14073C170+BE↓p
                                        ; DATA XREF: .pdata:00000001400DA514↑o
                sub     rsp, 28h
                cmp     cs:byte_140CF4D1A, 0
                jnz     short loc_14036DE8B

loc_14036DE85:                          ; CODE XREF: sub_14036DE78+18↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036DE8B:                          ; CODE XREF: sub_14036DE78+B↑j
                call    sub_1409D9C04
                jmp     short loc_14036DE85
sub_14036DE78   endp

; ---------------------------------------------------------------------------
algn_14036DE92:                         ; DATA XREF: .pdata:00000001400DA514↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036DE98   proc near               ; CODE XREF: sub_14073D9C8+E7↓p
                                        ; sub_14073D9C8+B48DB↓p
                                        ; DATA XREF: ...

var_68          = qword ptr -68h
var_58          = word ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 80h
                mov     rsi, r8
                mov     rbp, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_14036DF3A
                mov     rax, [rcx+138h]
                mov     rdi, [rax+28h]

loc_14036DEC8:                          ; CODE XREF: sub_14036DE98+A4↓j
                mov     dl, 1
                mov     rcx, rdi
                call    sub_14036DF44
                xor     edx, edx
                mov     dword ptr [rdi+9Ch], 1
                lea     rcx, [rsp+88h+var_58]
                lea     r8d, [rdx+48h]
                call    memset
                mov     rax, [rdi+1A0h]
                lea     rdx, [rsp+88h+var_58]
                mov     [rsp+88h+var_50], rax
                mov     r9, rbp
                mov     rax, [rdi+1A8h]
                mov     rcx, rbx
                mov     [rsp+88h+var_48], rax
                mov     [rsp+88h+var_58], 1Bh
                mov     [rsp+88h+var_68], rsi
                call    sub_1402B0804
                lea     r11, [rsp+88h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036DF3A:                          ; CODE XREF: sub_14036DE98+23↑j
                xor     edi, edi
                jmp     short loc_14036DEC8
sub_14036DE98   endp

; ---------------------------------------------------------------------------
byte_14036DF3E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA520↑o

; =============== S U B R O U T I N E =======================================


sub_14036DF44   proc near               ; CODE XREF: sub_14036DE98+35↑p
                                        ; sub_140738474+33E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r14d, r14d
                mov     bpl, dl
                mov     [rsp+48h+arg_0], r14
                mov     rbx, rcx
                prefetchw byte ptr [rcx+128h]
                mov     eax, [rcx+128h]

loc_14036DF75:                          ; CODE XREF: sub_14036DF44+40↓j
                mov     r8d, eax
                or      r8d, r14d
                lock cmpxchg [rcx+128h], r8d
                jnz     short loc_14036DF75
                test    al, 1
                jnz     loc_14036E0C7
                prefetchw byte ptr [rcx+128h]
                mov     eax, [rcx+128h]

loc_14036DF9B:                          ; CODE XREF: sub_14036DF44+64↓j
                mov     ecx, eax
                or      ecx, r14d
                lock cmpxchg [rbx+128h], ecx
                jnz     short loc_14036DF9B
                or      r15d, 0FFFFFFFFh
                test    al, 2
                jnz     short loc_14036DFD2
                lea     rdx, [rsp+48h+arg_0]
                mov     rcx, rbx
                call    sub_14073DB1C
                cmp     eax, 0C0000056h
                jz      loc_14036E09C
                lock or dword ptr [rbx+128h], 2

loc_14036DFD2:                          ; CODE XREF: sub_14036DF44+6C↑j
                mov     rax, gs:188h
                add     [rax+1E4h], r15w
                xor     edx, edx
                lea     rcx, qword_140C24708
                call    ExAcquirePushLockSharedEx
                mov     rdi, cs:qword_140C245F0
                lea     r13, qword_140C245F0
                mov     rsi, r14
                jmp     short loc_14036E016
; ---------------------------------------------------------------------------

loc_14036E004:                          ; CODE XREF: sub_14036DF44+D5↓j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14056DD24
                test    al, al
                jnz     short loc_14036E01D
                mov     rdi, [rdi]

loc_14036E016:                          ; CODE XREF: sub_14036DF44+BE↑j
                cmp     rdi, r13
                jnz     short loc_14036E004
                jmp     short loc_14036E03A
; ---------------------------------------------------------------------------

loc_14036E01D:                          ; CODE XREF: sub_14036DF44+CD↑j
                lea     r8, [rbx+80h]
                mov     r9b, 1
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14074AE64
                mov     rsi, rdi
                test    rdi, rdi
                jnz     short loc_14036E03F

loc_14036E03A:                          ; CODE XREF: sub_14036DF44+D7↑j
                test    bpl, bpl
                jz      short loc_14036E066

loc_14036E03F:                          ; CODE XREF: sub_14036DF44+F4↑j
                mov     [rbx+90h], rsi
                lock or dword ptr [rbx+128h], 1
                lea     rax, [rbx+68h]
                mov     [rbx+60h], r14w
                mov     [rax+8], rax
                mov     [rax], rax
                mov     byte ptr [rbx+62h], 6
                mov     [rbx+64h], r14d

loc_14036E066:                          ; CODE XREF: sub_14036DF44+F9↑j
                mov     eax, 11h
                lock cmpxchg cs:qword_140C24708, r14
                jz      short loc_14036E082
                lea     rcx, qword_140C24708
                call    ExfReleasePushLockShared

loc_14036E082:                          ; CODE XREF: sub_14036DF44+130↑j
                lea     rcx, qword_140C24708
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14036E09C:                          ; CODE XREF: sub_14036DF44+80↑j
                mov     rcx, [rsp+48h+arg_0]
                test    rcx, rcx
                jz      short loc_14036E0C7
                mov     eax, r15d
                lock xadd [rcx+114h], eax
                add     eax, r15d
                jnz     short loc_14036E0C7
                add     rcx, 118h
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_14036E0C7:                          ; CODE XREF: sub_14036DF44+44↑j
                                        ; sub_14036DF44+160↑j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036DF44   endp

byte_14036E0DF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA52C↑o

; =============== S U B R O U T I N E =======================================


sub_14036E0E8   proc near               ; CODE XREF: sub_14073DB1C+26↓p
                                        ; DATA XREF: .rdata:0000000140044A70↑o ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041EDF0 SIZE 0000000A BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+20h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                xor     r14d, r14d
                lea     rax, [r11+18h]
                mov     [r11-20h], rax
                mov     rsi, rdx
                lea     rax, [r11+8]
                mov     [r11+8], r14d
                mov     [r11-28h], rax
                lea     rdx, qword_14000A690
                mov     rbp, rcx
                mov     [r11-30h], r14
                mov     rcx, [rcx+20h]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [r11-38h], r14d
                mov     [r11+18h], r14d
                mov     edi, r14d
                movzx   ebx, r14w
                call    IoGetDevicePropertyData
                cmp     eax, 0C0000023h
                jz      short loc_14036E160

loc_14036E148:                          ; CODE XREF: sub_14036E0E8+AA↓j
                test    eax, eax
                jns     short loc_14036E194

loc_14036E14C:                          ; CODE XREF: sub_14036E0E8+80↓j
                                        ; sub_14036E0E8+E4↓j ...
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14036E160:                          ; CODE XREF: sub_14036E0E8+5E↑j
                cmp     [rsp+58h+arg_0], 0FFFEh
                jnb     short loc_14036E14C
                mov     edx, [rsp+58h+arg_0]
                mov     ecx, 200h
                mov     r8d, 4D584650h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14041EDF0
                movzx   ebx, word ptr [rsp+58h+arg_0]
                mov     eax, r14d
                jmp     short loc_14036E148
; ---------------------------------------------------------------------------

loc_14036E194:                          ; CODE XREF: sub_14036E0E8+62↑j
                lea     rcx, [rsp+58h+arg_10]
                movzx   eax, bx
                mov     [rsp+58h+var_20], rcx
                lea     rdx, qword_14000A690
                lea     rcx, [rsp+58h+arg_0]
                xor     r9d, r9d
                mov     [rsp+58h+var_28], rcx
                xor     r8d, r8d
                mov     rcx, [rbp+20h]
                mov     [rsp+58h+var_30], rdi
                mov     [rsp+58h+var_38], eax
                call    IoGetDevicePropertyData
                test    eax, eax
                js      loc_14036E14C
                mov     [rsi+2], bx
                sub     bx, 2
                mov     [rsi], bx
                mov     [rsi+8], rdi
                jmp     loc_14036E14C
sub_14036E0E8   endp

; ---------------------------------------------------------------------------
byte_14036E1E6  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140044A70↑o
                                        ; .pdata:00000001400DA538↑o

; =============== S U B R O U T I N E =======================================


sub_14036E1EC   proc near               ; CODE XREF: sub_1407346D8+995↓p
                                        ; sub_14073E3EC+22D↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

                mov     rax, rsp
                mov     [rax+10h], rdx
                mov     [rax+18h], r8
                mov     [rax+20h], r9
                push    rbx
                push    rsi
                sub     rsp, 58h
                and     qword ptr [rax-30h], 0
                lea     r8, [rax-38h]
                and     qword ptr [rax-38h], 0
                lea     rdx, [rax-30h]
                mov     rsi, rcx
                call    sub_14036E270
                mov     ebx, eax
                test    eax, eax
                js      short loc_14036E252
                mov     r8, [rsp+68h+arg_8]
                lea     r9, [rsp+68h+arg_10]
                mov     rdx, [rsp+68h+var_38]
                xor     ebx, ebx
                mov     rcx, [rsp+68h+var_30]
                call    _vsnwprintf
                test    eax, eax
                js      short loc_14036E25C
                cdqe
                cmp     rax, [rsp+68h+var_38]
                ja      short loc_14036E25C

loc_14036E24C:                          ; CODE XREF: sub_14036E1EC+7A↓j
                add     ax, ax
                mov     [rsi], ax

loc_14036E252:                          ; CODE XREF: sub_14036E1EC+33↑j
                mov     eax, ebx
                add     rsp, 58h
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14036E25C:                          ; CODE XREF: sub_14036E1EC+55↑j
                                        ; sub_14036E1EC+5E↑j
                mov     rax, [rsp+68h+var_38]
                mov     ebx, 80000005h
                jmp     short loc_14036E24C
sub_14036E1EC   endp

; ---------------------------------------------------------------------------
algn_14036E268:                         ; DATA XREF: .pdata:00000001400DA544↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036E270   proc near               ; CODE XREF: sub_14036E1EC+2A↑p
                                        ; sub_1407A6D60+BE↓p ...
                sub     rsp, 28h
                and     qword ptr [rdx], 0
                mov     r10, r8
                and     qword ptr [r8], 0
                mov     r11, rdx
                call    sub_14021D8BC
                test    eax, eax
                js      short loc_14036E2A1
                test    rcx, rcx
                jz      short loc_14036E2A1
                mov     rdx, [rcx+8]
                movzx   ecx, word ptr [rcx+2]
                shr     rcx, 1
                mov     [r10], rcx
                mov     [r11], rdx

loc_14036E2A1:                          ; CODE XREF: sub_14036E270+19↑j
                                        ; sub_14036E270+1E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036E270   endp

algn_14036E2A7:                         ; DATA XREF: .pdata:00000001400DA550↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14036E2B0   proc near               ; CODE XREF: sub_14073E3EC+1FD↓p
                                        ; sub_14073E6A8+CD↓p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_8           = qword ptr  50h
arg_18          = qword ptr  60h
arg_20          = byte ptr  68h

; FUNCTION CHUNK AT 000000014041EDFA SIZE 000000DB BYTES

                mov     [rsp-40h+arg_18], r9
                mov     [rsp-40h+arg_8], rdx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 68h
                mov     r13, rcx
                mov     r12d, r8d
                xor     r8d, r8d
                mov     r11, r9
                mov     ecx, r8d
                mov     r14d, r8d
                mov     [rbp+var_20], rcx
                mov     ebx, r8d
                mov     r10d, 0C000000Dh
                mov     r9d, 100h
                test    r13, r13
                jz      loc_14041EDFA

loc_14036E2FB:                          ; CODE XREF: sub_14036E2B0+B0B53↓j
                movzx   ecx, word ptr [r13+0]
                test    cl, 1
                jnz     loc_14036E427
                movzx   eax, word ptr [r13+2]
                test    al, 1
                jnz     loc_14036E427
                cmp     cx, ax
                ja      loc_14036E427
                mov     edx, 0FFFEh
                cmp     ax, dx
                ja      loc_14036E427
                mov     rdx, [r13+8]
                test    rdx, rdx
                jz      loc_14041EE08

loc_14036E33A:                          ; CODE XREF: sub_14036E2B0+B0B60↓j
                mov     r14, rax
                mov     [rbp+var_20], rdx
                shr     r14, 1
                mov     rcx, rdx

loc_14036E347:                          ; CODE XREF: sub_14036E2B0+B0B4D↓j
                                        ; sub_14036E2B0+B0B6C↓j
                test    ebx, ebx
                js      loc_14036E409
                mov     [rbp+var_18], rcx
                mov     r15, rcx
                mov     [rbp+var_10], r14
                mov     rsi, r14
                mov     [rbp+var_28], r8
                mov     rdi, r8
                test    r9d, r12d
                jnz     loc_14041EE21

loc_14036E36D:                          ; CODE XREF: sub_14036E2B0+B0B86↓j
                mov     ebx, r8d
                test    r12d, 0FFFFE000h
                jnz     loc_14041EE3B
                test    r14, r14
                jz      loc_14041EE88
                mov     [rbp+var_10], r8
                lea     r9, [rbp+arg_20]
                mov     r8, r11
                mov     rdx, r14
                call    _vsnwprintf
                test    eax, eax
                js      loc_14041EEA5
                movsxd  rdi, eax
                cmp     rdi, r14
                ja      loc_14041EEA5
                mov     [rbp+var_28], rdi

loc_14036E3B1:                          ; CODE XREF: sub_14036E2B0+B0C01↓j
                mov     rcx, [rbp+var_20]
                sub     rsi, rdi
                mov     [rbp+var_10], rsi
                lea     r15, [rcx+rdi*2]
                mov     [rbp+var_18], r15
                test    ebx, ebx
                js      loc_14041EE3E
                bt      r12d, 9
                jb      loc_14041EEB6

loc_14036E3D7:                          ; CODE XREF: sub_14036E2B0+B0B95↓j
                                        ; sub_14036E2B0+B0B9E↓j ...
                xor     edx, edx
                test    r13, r13
                jz      short loc_14036E3E6
                add     di, di
                mov     [r13+0], di

loc_14036E3E6:                          ; CODE XREF: sub_14036E2B0+12C↑j
                mov     ecx, 80000000h
                lea     eax, [rbx+rcx]
                test    ecx, eax
                jz      short loc_14036E41D

loc_14036E3F2:                          ; CODE XREF: sub_14036E2B0+173↓j
                mov     rax, [rbp+arg_8]
                test    rax, rax
                jz      short loc_14036E409
                add     si, si
                mov     [rax], dx
                mov     [rax+2], si
                mov     [rax+8], r15

loc_14036E409:                          ; CODE XREF: sub_14036E2B0+99↑j
                                        ; sub_14036E2B0+149↑j ...
                mov     eax, ebx
                add     rsp, 68h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036E41D:                          ; CODE XREF: sub_14036E2B0+140↑j
                cmp     ebx, 80000005h
                jz      short loc_14036E3F2
                jmp     short loc_14036E409
; ---------------------------------------------------------------------------

loc_14036E427:                          ; CODE XREF: sub_14036E2B0+53↑j
                                        ; sub_14036E2B0+60↑j ...
                mov     ebx, r10d
                jmp     short loc_14036E409
sub_14036E2B0   endp

; ---------------------------------------------------------------------------
byte_14036E42C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140044C28↑o
                                        ; .pdata:00000001400DA55C↑o

; =============== S U B R O U T I N E =======================================


sub_14036E434   proc near               ; CODE XREF: sub_14073E3EC+14B↓p
                                        ; sub_14077A300+11E↓p ...
                sub     rsp, 28h
                mov     r9d, 1
                mov     rax, rcx
                cmp     [rcx+4], r9d
                jnz     short loc_14036E462
                mov     ecx, [rcx+8]
                mov     edx, [rax+0Ch]
                add     rcx, rax
                call    sub_14036E470
                test    al, al
                jz      short loc_14036E462

loc_14036E459:                          ; CODE XREF: sub_14036E434+31↓j
                mov     al, r9b
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E462:                          ; CODE XREF: sub_14036E434+11↑j
                                        ; sub_14036E434+23↑j
                xor     r9b, r9b
                jmp     short loc_14036E459
sub_14036E434   endp

; ---------------------------------------------------------------------------
algn_14036E467:                         ; DATA XREF: .pdata:00000001400DA568↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036E470   proc near               ; CODE XREF: sub_14036E434+1C↑p
                                        ; sub_14050E604+87↓p ...
                xor     r8d, r8d
                cmp     edx, 2
                jb      short loc_14036E488
                mov     eax, edx
                shr     rax, 1
                cmp     [rcx+rax*2-2], r8w
                jnz     short loc_14036E488
                mov     r8b, 1

loc_14036E488:                          ; CODE XREF: sub_14036E470+6↑j
                                        ; sub_14036E470+13↑j
                mov     al, r8b
                retn
sub_14036E470   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036E48D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA574↑o

; =============== S U B R O U T I N E =======================================


sub_14036E494   proc near               ; CODE XREF: sub_140392E5C+19↓p
                                        ; sub_14050E788+3F↓p ...
                xor     eax, eax
                cmp     edx, 4
                jb      short loc_14036E4B5
                mov     r8d, edx
                shr     r8, 1
                cmp     [rcx+r8*2-2], ax
                jnz     short loc_14036E4B5
                cmp     [rcx+r8*2-4], ax
                jnz     short loc_14036E4B5

loc_14036E4B1:                          ; CODE XREF: sub_14036E494+2B↓j
                mov     al, 1

locret_14036E4B3:                       ; CODE XREF: sub_14036E494+24↓j
                                        ; sub_14036E494+29↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036E4B5:                          ; CODE XREF: sub_14036E494+5↑j
                                        ; sub_14036E494+13↑j ...
                cmp     edx, 2
                jnz     short locret_14036E4B3
                cmp     [rcx], ax
                jnz     short locret_14036E4B3
                jmp     short loc_14036E4B1
sub_14036E494   endp

; ---------------------------------------------------------------------------
algn_14036E4C1:                         ; DATA XREF: .pdata:00000001400DA580↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036E4C8   proc near               ; CODE XREF: sub_1407346D8+1C4↓p
                                        ; sub_14073E818+1F7↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     qword ptr [rdx+8], 0
                mov     rbx, rdx
                mov     rdi, rcx
                jz      short loc_14036E520
                movzx   ecx, word ptr [rdx+2]
                call    sub_140704930
                mov     [rdi+8], rax
                test    rax, rax
                jz      short loc_14036E51E
                movzx   r8d, word ptr [rbx+2]
                mov     rcx, rax
                mov     rdx, [rbx+8]
                call    memmove

loc_14036E502:                          ; CODE XREF: sub_14036E4C8+5D↓j
                movzx   eax, word ptr [rbx]
                mov     [rdi], ax
                movzx   eax, word ptr [rbx+2]
                mov     [rdi+2], ax
                mov     al, 1

loc_14036E512:                          ; CODE XREF: sub_14036E4C8:loc_14036E51E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E51E:                          ; CODE XREF: sub_14036E4C8+27↑j
                jmp     short loc_14036E512
; ---------------------------------------------------------------------------

loc_14036E520:                          ; CODE XREF: sub_14036E4C8+15↑j
                and     qword ptr [rcx+8], 0
                jmp     short loc_14036E502
sub_14036E4C8   endp

; ---------------------------------------------------------------------------
algn_14036E527:                         ; DATA XREF: .pdata:00000001400DA58C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036E530   proc near               ; CODE XREF: sub_140368390+9D1↑p
                                        ; sub_140369CB0+51↑p ...
                mov     r10, rcx
                mov     rax, 0DE5DF13F878608F5h
                mov     r9d, 1FEh
                nop     dword ptr [rax+00h]
                nop     word ptr [rax+rax+00000000h]

loc_14036E550:                          ; CODE XREF: sub_14036E530+89↓j
                ror     rax, 2
                lea     edx, [r9+1]
                add     rax, [r10+rdx*8]
                ror     rax, 3
                mov     ecx, r9d
                add     rax, [r10+rcx*8]
                lea     ecx, [r9-1]
                ror     rax, 5
                add     rax, [r10+rcx*8]
                lea     ecx, [r9-2]
                ror     rax, 7
                add     rax, [r10+rcx*8]
                lea     ecx, [r9-3]
                ror     rax, 0Bh
                xor     rax, [r10+rcx*8]
                lea     ecx, [r9-4]
                ror     rax, 0Dh
                add     rax, [r10+rcx*8]
                lea     ecx, [r9-5]
                ror     rax, 11h
                add     rax, [r10+rcx*8]
                lea     ecx, [r9-6]
                add     r9d, 0FFFFFFF8h
                ror     rax, 13h
                add     rax, [r10+rcx*8]
                lea     ecx, [r9+2]
                test    ecx, ecx
                jnz     short loc_14036E550
                retn
sub_14036E530   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036E5BD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA598↑o

; =============== S U B R O U T I N E =======================================


sub_14036E5C4   proc near               ; CODE XREF: sub_140735D48+2B1↓p
                                        ; sub_14073D9C8+141↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     sil, r8b
                mov     ecx, 0Ah
                mov     edi, edx
                call    KeAcquireQueuedSpinLock
                mov     r9b, al

loc_14036E5E8:                          ; CODE XREF: sub_14036E5C4+45↓j
                test    rbx, rbx
                jz      short loc_14036E60B
                mov     rcx, [rbx+138h]
                mov     edx, [rcx+20h]
                test    sil, sil
                jnz     short loc_14036E629
                mov     eax, edi
                not     eax
                and     edx, eax

loc_14036E602:                          ; CODE XREF: sub_14036E5C4+67↓j
                mov     [rcx+20h], edx
                mov     rbx, [rbx+18h]
                jmp     short loc_14036E5E8
; ---------------------------------------------------------------------------

loc_14036E60B:                          ; CODE XREF: sub_14036E5C4+27↑j
                mov     dl, r9b
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036E629:                          ; CODE XREF: sub_14036E5C4+36↑j
                or      edx, edi
                jmp     short loc_14036E602
sub_14036E5C4   endp

; ---------------------------------------------------------------------------
byte_14036E62D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA5A4↑o

; =============== S U B R O U T I N E =======================================


sub_14036E634   proc near               ; CODE XREF: sub_1407680F0+122↓p
                                        ; sub_1407680F0+300↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048E71A SIZE 00000109 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                mov     r8, rdx
                mov     rbx, rcx
                mov     ebp, 2
                test    rcx, rcx
                jz      loc_14048E80A
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                test    rdx, rdx
                jz      loc_14048E71A
                test    dword ptr [rdx+18Ch], 20000h
                jnz     loc_14048E71A
                add     rdx, 28h ; '('
                mov     rcx, r8
                call    sub_140740B10
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036E634   endp

byte_14036E6A4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008C320↑o
                                        ; .pdata:00000001400DA5B0↑o

; =============== S U B R O U T I N E =======================================


sub_14036E6AC   proc near               ; CODE XREF: sub_14036ECD0+41A↓p
                                        ; DATA XREF: .pdata:00000001400DA5BC↑o

var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 48h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                mov     eax, [rcx+20h]
                mov     [rsp+48h+var_28], eax
                mov     rax, [rcx+10h]
                xor     ecx, ecx
                mov     [rsp+48h+var_24], 1
                mov     [rsp+48h+var_20], 5
                test    rax, rax
                jz      short loc_14036E6EC
                mov     rax, [rax+138h]
                mov     rcx, [rax+28h]

loc_14036E6EC:                          ; CODE XREF: sub_14036E6AC+33↑j
                mov     eax, [rcx+12Ch]
                sub     eax, 313h
                cmp     eax, 1
                jbe     short loc_14036E722
                lea     r8, [rsp+48h+var_28]
                lea     rdx, sub_14076D620
                call    sub_140719A30
                xor     eax, eax

loc_14036E70F:                          ; CODE XREF: sub_14036E6AC+7B↓j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E722:                          ; CODE XREF: sub_14036E6AC+4E↑j
                mov     eax, 0C0000056h
                jmp     short loc_14036E70F
; } // starts at 14036E6AC
sub_14036E6AC   endp

; ---------------------------------------------------------------------------
algn_14036E729:                         ; DATA XREF: .pdata:00000001400DA5BC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036E730   proc near               ; CODE XREF: sub_140738474+60↓p
                                        ; DATA XREF: .rdata:000000014008CA44↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014048E824 SIZE 00000063 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rcx, qword_140C434B0
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdx, cs:qword_140C434A0
                lea     r8, qword_140C434A0
                mov     rsi, [rdi+8]
                movzx   ebx, al
                cmp     rdx, r8
                jnz     short loc_14036E7D4

loc_14036E768:                          ; CODE XREF: sub_14036E730+AB↓j
                                        ; sub_14036E730+EF↓j
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048E824

loc_14036E782:                          ; CODE XREF: sub_14036E730+1200F6↓j
                                        ; sub_14036E730+120102↓j ...
                mov     cr8, rbx
                mov     rbx, [rsi]

loc_14036E789:                          ; CODE XREF: sub_14036E730+A2↓j
                cmp     rbx, rdi
                jnz     short loc_14036E7A6
                cmp     rsi, [rdi+8]
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                setnz   al
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E7A6:                          ; CODE XREF: sub_14036E730+5C↑j
                mov     rax, [rbx+10h]
                mov     dl, 1
                mov     rcx, [rax+138h]
                mov     rcx, [rcx+28h]
                call    sub_1407448B8
                mov     rcx, [rbx+10h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                and     qword ptr [rbx+10h], 0
                mov     rbx, [rbx]
                jmp     short loc_14036E789
; ---------------------------------------------------------------------------

loc_14036E7D4:                          ; CODE XREF: sub_14036E730+36↑j
                                        ; sub_14036E730+ED↓j
                cmp     byte ptr [rdx+1Ch], 0
                mov     rcx, [rdx]
                jnz     short loc_14036E768
                mov     eax, [rdx+18h]
                cmp     eax, 9
                jl      short loc_14036E817
                cmp     eax, 0Ah
                jg      short loc_14036E824

loc_14036E7EA:                          ; CODE XREF: sub_14036E730+F9↓j
                mov     rax, [rdx+8]
                cmp     [rcx+8], rdx
                jnz     short loc_14036E82B
                cmp     [rax], rdx
                jnz     short loc_14036E82B
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     rax, [rdi+8]
                cmp     [rax], rdi
                jnz     short loc_14036E82B
                mov     [rdx], rdi
                mov     [rdx+8], rax
                mov     [rax], rdx
                mov     [rdi+8], rdx

loc_14036E817:                          ; CODE XREF: sub_14036E730+B3↑j
                                        ; sub_14036E730+F7↓j
                mov     rdx, rcx
                cmp     rcx, r8
                jnz     short loc_14036E7D4
                jmp     loc_14036E768
; ---------------------------------------------------------------------------

loc_14036E824:                          ; CODE XREF: sub_14036E730+B8↑j
                cmp     eax, 0Eh
                jnz     short loc_14036E817
                jmp     short loc_14036E7EA
; ---------------------------------------------------------------------------

loc_14036E82B:                          ; CODE XREF: sub_14036E730+C2↑j
                                        ; sub_14036E730+C7↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14036E730   endp

; ---------------------------------------------------------------------------
algn_14036E832:                         ; DATA XREF: .rdata:000000014008CA44↑o
                                        ; .pdata:00000001400DA5C8↑o
                align 20h
; Exported entry 890. IoInvalidateDeviceRelations

; =============== S U B R O U T I N E =======================================


                public IoInvalidateDeviceRelations
IoInvalidateDeviceRelations proc near   ; CODE XREF: sub_140733CB0+49↓p
                                        ; sub_1407441FC+1C9↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048E888 SIZE 0000011D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                xor     esi, esi
                mov     rbx, rcx
                mov     ebp, 2
                test    rcx, rcx
                jz      loc_14048E98C
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14048E899
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_14048E899
                mov     ecx, edx
                test    edx, edx
                jz      short loc_14036E8A4
                sub     ecx, 1
                jz      short loc_14036E8E5
                sub     ecx, 1
                jz      short loc_14036E8DE
                sub     ecx, 3
                jnz     loc_14048E888

loc_14036E8A4:                          ; CODE XREF: IoInvalidateDeviceRelations+4F↑j
                neg     edx
                sbb     edx, edx
                add     edx, 9

loc_14036E8AB:                          ; CODE XREF: IoInvalidateDeviceRelations+A3↓j
                                        ; IoInvalidateDeviceRelations+AA↓j ...
                mov     [rsp+48h+var_18], rsi
                xor     r9d, r9d
                mov     [rsp+48h+var_20], rsi
                xor     r8d, r8d
                mov     rcx, rbx
                mov     [rsp+48h+var_28], rsi
                call    sub_14036E8F4

loc_14036E8C8:                          ; CODE XREF: IoInvalidateDeviceRelations+12004B↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E8DE:                          ; CODE XREF: IoInvalidateDeviceRelations+59↑j
                mov     edx, 5
                jmp     short loc_14036E8AB
; ---------------------------------------------------------------------------

loc_14036E8E5:                          ; CODE XREF: IoInvalidateDeviceRelations+54↑j
                mov     edx, 14h
                jmp     short loc_14036E8AB
IoInvalidateDeviceRelations endp

; ---------------------------------------------------------------------------
byte_14036E8EC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008CA6C↑o
                                        ; .pdata:00000001400DA5D4↑o

; =============== S U B R O U T I N E =======================================


sub_14036E8F4   proc near               ; CODE XREF: IoInvalidateDeviceRelations+83↑p
                                        ; IoInvalidateDeviceState+6F↓p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014048E9A6 SIZE 00000249 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], rsi
                mov     [rax+10h], edx
                mov     [rax+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, r9
                mov     r13b, r8b
                mov     r14d, edx
                mov     r15, rcx
                movups  xmm0, cs:xmmword_14000A340
                movdqu  xmmword ptr [rax-38h], xmm0
                xor     r12d, r12d
                mov     [rsp+68h+var_48], r12d
                cmp     cs:dword_140C44D24, r12d
                jnz     loc_14048E9A6
                lea     edx, [r12+60h]
                mov     ecx, 200h
                mov     r8d, 32706E50h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+68h+var_40], rax
                test    rax, rax
                jz      loc_14048E9B0
                test    r15, r15
                jz      loc_14036EC22

loc_14036E96B:                          ; CODE XREF: sub_14036E8F4+33E↓j
                mov     edx, 746C6644h
                mov     rcx, r15
                call    ObfReferenceObjectWithTag
                mov     [rdi+10h], r15
                mov     [rdi+18h], r14d
                mov     [rdi+1Ch], r13b
                mov     [rdi+20h], rsi
                mov     rax, [rsp+68h+arg_20]
                mov     [rdi+28h], rax
                mov     rax, [rsp+68h+arg_28]
                mov     [rdi+30h], rax
                mov     esi, 1
                mov     [rdi+48h], esi
                mov     [rdi+4Ch], r12b
                mov     [rdi+58h], r12b
                and     [rdi+50h], r12
                test    r14d, r14d
                jz      loc_14036ECB6
                cmp     r14d, 6
                jz      short loc_14036EA09
                cmp     r14d, 8
                jg      loc_14036EB8A

loc_14036E9CD:                          ; CODE XREF: sub_14036E8F4+2AE↓j
                                        ; sub_14036E8F4+2BE↓j
                mov     al, sil

loc_14036E9D0:                          ; CODE XREF: sub_14036E8F4+3C4↓j
                test    al, al
                jz      short loc_14036EA09
                mov     eax, gs:32ACh
                test    eax, 10001h
                jnz     short loc_14036EA09
                mov     rax, gs:188h
                mov     rcx, [rax+5A0h]
                test    rcx, rcx
                jnz     loc_14048E9BA
                call    sub_1402F21F8
                test    al, al
                jnz     loc_14036EC74

loc_14036EA09:                          ; CODE XREF: sub_14036E8F4+CD↑j
                                        ; sub_14036E8F4+DE↑j ...
                movups  xmm0, [rsp+68h+var_38]
                movdqu  xmmword ptr [rdi+38h], xmm0
                test    r15, r15
                jz      loc_14048E9C8
                mov     rax, [r15+138h]
                mov     rcx, [rax+28h]

loc_14036EA27:                          ; CODE XREF: sub_14036E8F4+1200D6↓j
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r14d
                call    sub_14036F1C8
                mov     eax, [rdi+18h]
                mov     dword ptr [rsp+68h+var_40], eax
                lea     rcx, qword_140C24CC8
                call    KeAcquireSpinLockRaiseToDpc
                movzx   r13d, al
                mov     eax, cs:dword_140C24CD0
                add     eax, esi
                mov     cs:dword_140C24CD0, eax
                cmp     eax, esi
                jnz     short loc_14036EA68
                mov     ecx, 4
                call    sub_14037A8A4

loc_14036EA68:                          ; CODE XREF: sub_14036E8F4+168↑j
                lea     rcx, qword_140C24CC8
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_14048E9CF

loc_14036EA82:                          ; CODE XREF: sub_14036E8F4+1200DE↓j
                mov     r15b, 0Fh

loc_14036EA85:                          ; CODE XREF: sub_14036E8F4+1200EE↓j
                                        ; sub_14036E8F4+1200F7↓j
                or      r12, 0FFFFFFFFFFFFFFFFh

loc_14036EA89:                          ; CODE XREF: sub_14036E8F4+120103↓j
                                        ; sub_14036E8F4+120133↓j ...
                mov     cr8, r13
                lea     rcx, qword_140C1E9D0
                call    KeAcquireSpinLockRaiseToDpc
                movzx   r13d, al
                mov     r8, 0FFFFF78000000008h
                mov     r8, [r8]
                add     cs:dword_140C1E9D8, esi
                mov     edx, dword ptr [rsp+68h+var_40]
                lea     r9, qword_140C1E9A0
                add     [r9+rdx*4+40h], esi
                cmp     cs:byte_140C1EA48, 0
                jnz     loc_14048EA3B

loc_14036EACD:                          ; CODE XREF: sub_14036E8F4+120155↓j
                                        ; sub_14036E8F4+120162↓j
                lea     rcx, qword_140C1E9D0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EA5B

loc_14036EAE7:                          ; CODE XREF: sub_14036E8F4+12016A↓j
                                        ; sub_14036E8F4+120177↓j ...
                mov     cr8, r13
                lea     rcx, qword_140C434B0
                call    KeAcquireSpinLockRaiseToDpc
                movzx   r13d, al
                mov     rax, cs:qword_140C434A8
                lea     rcx, qword_140C434A0
                cmp     [rax], rcx
                jnz     loc_14048EAC0
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140C434A8, rdi
                mov     rax, [rsp+68h+arg_30]
                test    rax, rax
                jnz     loc_14036ECBD

loc_14036EB34:                          ; CODE XREF: sub_14036E8F4+3CF↓j
                cmp     r14d, 7
                jz      loc_14036EC37
                cmp     r14d, 0Ah
                jz      loc_14036EC37
                cmp     cs:byte_140C43458, 0
                jz      short loc_14036EBB7

loc_14036EB51:                          ; CODE XREF: sub_14036E8F4+2CA↓j
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EB2A

loc_14036EB6B:                          ; CODE XREF: sub_14036E8F4+120239↓j
                                        ; sub_14036E8F4+120246↓j ...
                mov     cr8, r13

loc_14036EB6F:                          ; CODE XREF: sub_14036E8F4+329↓j
                                        ; sub_14036E8F4+37B↓j
                mov     eax, [rsp+68h+var_48]

loc_14036EB73:                          ; CODE XREF: sub_14036E8F4+1200B7↓j
                                        ; sub_14036E8F4+1200C1↓j
                mov     rsi, [rsp+68h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036EB8A:                          ; CODE XREF: sub_14036E8F4+D3↑j
                cmp     r14d, 0Ah
                jle     loc_14036EA09
                cmp     r14d, 0Eh
                jz      loc_14036EA09
                cmp     r14d, 10h
                jle     loc_14036E9CD
                cmp     r14d, 12h
                jle     loc_14036ECB6
                jmp     loc_14036E9CD
; ---------------------------------------------------------------------------

loc_14036EBB7:                          ; CODE XREF: sub_14036E8F4+25B↑j
                cmp     cs:byte_140C44D38, 0
                jz      short loc_14036EB51
                mov     cs:byte_140C43458, sil
                lea     rcx, word_140C43460
                call    KeResetEvent
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EAC7

loc_14036EBED:                          ; CODE XREF: sub_14036E8F4+1201D6↓j
                                        ; sub_14036E8F4+1201E3↓j ...
                mov     cr8, r13
                lea     rax, sub_14036ECD0
                mov     cs:qword_140C43490, rax
                and     cs:qword_140C43498, 0
                and     cs:qword_140C43480, 0
                mov     edx, esi
                lea     rcx, qword_140C43480
                call    ExQueueWorkItem
                jmp     loc_14036EB6F
; ---------------------------------------------------------------------------

loc_14036EC22:                          ; CODE XREF: sub_14036E8F4+71↑j
                mov     rax, cs:qword_140C44D00
                mov     r15, [rax+20h]
                mov     [rsp+68h+arg_0], r15
                jmp     loc_14036E96B
; ---------------------------------------------------------------------------

loc_14036EC37:                          ; CODE XREF: sub_14036E8F4+244↑j
                                        ; sub_14036E8F4+24E↑j
                mov     cs:byte_140C43458, sil
                lea     rcx, word_140C43460
                call    KeResetEvent
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EB8C

loc_14036EC64:                          ; CODE XREF: sub_14036E8F4+12029B↓j
                                        ; sub_14036E8F4+1202A8↓j ...
                mov     cr8, r13
                xor     ecx, ecx
                call    sub_14036ECD0
                jmp     loc_14036EB6F
; ---------------------------------------------------------------------------

loc_14036EC74:                          ; CODE XREF: sub_14036E8F4+10F↑j
                                        ; DATA XREF: .rdata:000000014008CA98↑o
;   __try { // __except at loc_14036EC9D
                mov     rax, gs:30h
                test    rax, rax
                jz      short loc_14036EC98
                mov     rax, gs:30h
                movups  xmm0, xmmword ptr [rax+1710h]
                movdqu  [rsp+68h+var_38], xmm0

loc_14036EC98:                          ; CODE XREF: sub_14036E8F4+38C↑j
                jmp     loc_14036EA09
;   } // starts at 14036EC74
; ---------------------------------------------------------------------------

loc_14036EC9D:                          ; DATA XREF: .rdata:000000014008CA98↑o
;   __except(1) // owned by 14036EC74
                mov     esi, 1
                mov     r14d, [rsp+68h+arg_8]
                mov     r15, [rsp+68h+arg_0]
                mov     rdi, [rsp+68h+var_40]
                jmp     loc_14036EA09
; ---------------------------------------------------------------------------

loc_14036ECB6:                          ; CODE XREF: sub_14036E8F4+C3↑j
                                        ; sub_14036E8F4+2B8↑j
                xor     al, al
                jmp     loc_14036E9D0
; ---------------------------------------------------------------------------

loc_14036ECBD:                          ; CODE XREF: sub_14036E8F4+23A↑j
                add     [rdi+48h], esi
                mov     [rax], rdi
                jmp     loc_14036EB34
; } // starts at 14036E8F4
sub_14036E8F4   endp

; ---------------------------------------------------------------------------
algn_14036ECC8:                         ; DATA XREF: .rdata:000000014008CAAC↑o
                                        ; .pdata:00000001400DA5E0↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14036ECD0   proc near               ; CODE XREF: sub_14036E8F4+376↑p
                                        ; DATA XREF: .rdata:000000014008CAE8↑o ...

var_90          = byte ptr -90h
var_88          = byte ptr -88h
var_80          = byte ptr -80h
var_70          = byte ptr -70h
var_6F          = byte ptr -6Fh
var_6E          = byte ptr -6Eh
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014048EBF0 SIZE 00000131 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_28], rax
                xor     edi, edi
                xor     eax, eax
                xorps   xmm1, xmm1
                mov     [rbp+57h+var_68], rdi
                movups  [rbp+57h+var_60], xmm1
                mov     [rbp+57h+var_40], rax
                mov     r12b, dil
                movups  [rbp+57h+var_50], xmm1
                mov     [rbp+57h+var_70], dil
                lea     ebx, [rdi+1]
                xorps   xmm0, xmm0
                mov     ecx, ebx
                movups  [rbp+57h+var_38], xmm0
                mov     rax, gs:188h
                mov     r13b, dil
                xchg    rax, cs:qword_140CECAC0
                mov     r15b, dil
                call    sub_14067926C

loc_14036ED46:                          ; CODE XREF: sub_14036ECD0+358↓j
                                        ; sub_14036ECD0+3D2↓j ...
                lea     rcx, qword_140C434B0
                mov     [rbp+57h+var_6E], dil
                mov     r14d, edi
                mov     [rbp+57h+var_6F], bl
                call    KeAcquireSpinLockRaiseToDpc
                mov     rsi, cs:qword_140C434A0
                lea     rcx, qword_140C434A0
                mov     bl, al
                cmp     rsi, rcx
                jz      loc_14036EEE2
                cmp     [rsi+8], rcx
                jnz     loc_14048ED1A
                mov     rax, [rsi]
                cmp     [rax+8], rsi
                jnz     loc_14048ED1A
                mov     cs:qword_140C434A0, rax
                mov     [rax+8], rcx
                mov     byte ptr [rsi+4Ch], 1

loc_14036ED9B:                          ; CODE XREF: sub_14036ECD0+366↓j
                mov     dl, bl
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLock
                test    rsi, rsi
                jz      loc_14036F03B
                mov     rcx, qword ptr cs:xmmword_14000A340
                sub     rcx, [rsi+38h]
                jnz     short loc_14036EDCA
                mov     rcx, qword ptr cs:xmmword_14000A340+8
                sub     rcx, [rsi+40h]

loc_14036EDCA:                          ; CODE XREF: sub_14036ECD0+ED↑j
                test    rcx, rcx
                jnz     loc_14048EBF0

loc_14036EDD3:                          ; CODE XREF: sub_14036ECD0+11FF41↓j
                mov     rax, gs:188h
                or      ecx, 0FFFFFFFFh
                add     [rax+1E4h], cx
                xor     edx, edx
                lea     rcx, [rsi+50h]
                call    ExAcquirePushLockExclusiveEx
                mov     r15b, [rsi+58h]
                lea     rcx, [rsi+50h]
                xor     edx, edx
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                mov     edx, [rsi+18h]
                mov     ecx, 2
                call    sub_140576C5C
                mov     [rsi+8], rsi
                mov     [rsi], rsi
                cmp     cs:dword_140C44D24, edi
                jnz     loc_14048EC16
                test    r15b, r15b
                jnz     loc_14048EC21
                mov     rcx, [rsi+10h]
                test    rcx, rcx
                jz      loc_14048EC2C
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]

loc_14036EE46:                          ; CODE XREF: sub_14036ECD0+11FF5F↓j
                cmp     dword ptr [rdx+12Ch], 314h
                jz      loc_14048EC34
                test    rcx, rcx
                jz      loc_14048EC3F
                mov     rax, [rcx+138h]
                mov     rbx, [rax+28h]

loc_14036EE6A:                          ; CODE XREF: sub_14036ECD0+11FF72↓j
                test    rbx, rbx
                jz      loc_14048EC47
                mov     edx, 65706E50h
                call    ObfReferenceObjectWithTag
                mov     edx, [rsi+18h]
                xor     r9d, r9d
                mov     rcx, rbx
                lea     r15d, [r9+1]
                mov     r8d, r15d
                call    sub_14036F1C8

loc_14036EE92:                          ; CODE XREF: sub_14036ECD0+11FF7D↓j
                mov     ecx, [rsi+18h]
                cmp     ecx, 0Ch
                jg      loc_14036F10B
                jz      loc_14036F132
                cmp     ecx, 5
                jle     loc_14036F0A7
                cmp     ecx, 6
                jz      loc_14048EC7A
                cmp     ecx, 7
                jz      loc_14036F0CD
                jle     loc_14036F1B7
                cmp     ecx, 0Ah
                jg      loc_14036EF62

loc_14036EECE:                          ; CODE XREF: sub_14036ECD0+452↓j
                mov     rcx, rsi
                call    sub_140744804

loc_14036EED6:                          ; CODE XREF: sub_14036ECD0+4CC↓j
                mov     r14d, eax
                mov     [rbp+57h+var_6F], dil
                jmp     loc_14036EF76
; ---------------------------------------------------------------------------

loc_14036EEE2:                          ; CODE XREF: sub_14036ECD0+9F↑j
                test    r12b, r12b
                jnz     loc_14036F033
                test    r13b, r13b
                jnz     loc_14036F033
                test    r15b, r15b
                jnz     loc_14036F033
                xor     r8d, r8d
                mov     cs:byte_140C43458, dil
                xor     edx, edx
                lea     rcx, word_140C43460
                call    KeSetEvent
                mov     dl, bl
                lea     rcx, qword_140C434B0
                call    KeReleaseSpinLock
                xchg    rdi, cs:qword_140CECAC0
                mov     ecx, 1
                call    sub_140679140
                mov     rcx, [rbp+57h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036EF62:                          ; CODE XREF: sub_14036ECD0+1F8↑j
                cmp     ecx, 0Bh
                jnz     loc_14036F1B7
                mov     rcx, rsi
                call    sub_14078BC78

loc_14036EF73:                          ; CODE XREF: sub_14036ECD0+3F8↓j
                                        ; sub_14036ECD0+41F↓j ...
                mov     r14d, eax

loc_14036EF76:                          ; CODE XREF: sub_14036ECD0+20D↑j
                                        ; sub_14036ECD0+400↓j ...
                test    rbx, rbx
                jz      short loc_14036EF9D
                mov     edx, [rsi+18h]
                mov     r9d, r14d
                mov     r8d, 2
                mov     rcx, rbx
                call    sub_14036F1C8
                mov     rcx, [rsi+10h]
                mov     edx, 65706E50h
                call    ObfDereferenceObjectWithTag

loc_14036EF9D:                          ; CODE XREF: sub_14036ECD0+2A9↑j
                                        ; sub_14036ECD0+11FF4C↓j ...
                mov     edx, [rsi+18h]
                mov     ecx, 3
                call    sub_140576C5C
                mov     ecx, 1
                mov     r15d, ecx

loc_14036EFB2:                          ; CODE XREF: sub_14036ECD0+34C↓j
                mov     rbx, [rsi]
                cmp     [rbx+8], rsi
                jnz     loc_14048ED1A
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     loc_14048ED1A
                mov     [rsi], rax
                mov     [rax+8], rsi
                mov     edx, [rbx+18h]
                call    sub_140576C5C
                mov     rax, [rbx+30h]
                test    rax, rax
                jnz     loc_14036F13F

loc_14036EFE8:                          ; CODE XREF: sub_14036ECD0+472↓j
                mov     rcx, [rbx+28h]
                test    rcx, rcx
                jnz     loc_14036F0FC

loc_14036EFF5:                          ; CODE XREF: sub_14036ECD0+436↓j
                cmp     rbx, rsi
                jnz     short loc_14036F00C
                mov     r15d, edi
                cmp     [rbp+57h+var_6F], dil
                jz      short loc_14036F00C
                mov     rcx, [rbx+10h]
                call    PsDereferenceSiloContext

loc_14036F00C:                          ; CODE XREF: sub_14036ECD0+328↑j
                                        ; sub_14036ECD0+331↑j
                mov     rcx, rbx
                call    sub_14036F330
                mov     ecx, 1
                test    r15d, r15d
                jnz     short loc_14036EFB2
                mov     ebx, ecx
                mov     r15b, [rbp+57h+var_70]
                cmp     [rbp+57h+var_6E], dil
                jz      loc_14036ED46
                jmp     loc_14048ED05
; ---------------------------------------------------------------------------

loc_14036F033:                          ; CODE XREF: sub_14036ECD0+215↑j
                                        ; sub_14036ECD0+21E↑j ...
                mov     rsi, rdi
                jmp     loc_14036ED9B
; ---------------------------------------------------------------------------

loc_14036F03B:                          ; CODE XREF: sub_14036ECD0+DC↑j
                test    r12b, r12b
                jnz     short loc_14036F049
                test    r13b, r13b
                jz      loc_14036F17E

loc_14036F049:                          ; CODE XREF: sub_14036ECD0+36E↑j
                mov     rcx, cs:qword_140C44D00
                mov     al, cs:byte_140C44D3A
                mov     dword ptr [rbp+57h+var_68], 3
                mov     byte ptr [rbp+57h+var_68+4], al
                mov     rcx, [rcx+20h]
                call    ObfReferenceObject
                mov     rcx, cs:qword_140C44D00
                lea     r8, [rbp+57h+var_68]
                neg     r13b
                mov     [rsp+0B0h+var_80], dil
                mov     [rsp+0B0h+var_88], dil
                sbb     r9d, r9d
                mov     [rsp+0B0h+var_90], r12b
                not     r9d
                xor     edx, edx
                and     r9d, 3
                call    sub_140738474
                mov     r12b, dil
                mov     r13b, dil

loc_14036F09D:                          ; CODE XREF: sub_14036ECD0+4BA↓j
                mov     ebx, 1
                jmp     loc_14036ED46
; ---------------------------------------------------------------------------

loc_14036F0A7:                          ; CODE XREF: sub_14036ECD0+1D7↑j
                jnz     short loc_14036F0D5
                mov     rax, [rsi+10h]
                test    rax, rax
                jz      loc_14048EC72
                mov     rax, [rax+138h]
                mov     rcx, [rax+28h]

loc_14036F0C1:                          ; CODE XREF: sub_14036ECD0+11FFA5↓j
                xor     edx, edx
                call    sub_140744908
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F0CD:                          ; CODE XREF: sub_14036ECD0+1E9↑j
                mov     r13b, r15b
                jmp     loc_14036EF76
; ---------------------------------------------------------------------------

loc_14036F0D5:                          ; CODE XREF: sub_14036ECD0:loc_14036F0A7↑j
                test    ecx, ecx
                jz      short loc_14036F0F4
                sub     ecx, 1
                jz      short loc_14036F147
                sub     ecx, 1
                jnz     loc_14048EC52
                mov     rcx, rsi
                call    sub_14036E6AC
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F0F4:                          ; CODE XREF: sub_14036ECD0+407↑j
                mov     r12b, r15b
                jmp     loc_14036EF76
; ---------------------------------------------------------------------------

loc_14036F0FC:                          ; CODE XREF: sub_14036ECD0+31F↑j
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     loc_14036EFF5
; ---------------------------------------------------------------------------

loc_14036F10B:                          ; CODE XREF: sub_14036ECD0+1C8↑j
                cmp     ecx, 12h
                jg      short loc_14036F154
                jz      loc_14036F1AE
                sub     ecx, 0Dh
                jz      loc_14048EC88
                sub     ecx, 1
                jz      loc_14036EECE
                sub     ecx, 1
                jz      short loc_14036F1A1
                sub     ecx, 1
                jnz     short loc_14036F18F

loc_14036F132:                          ; CODE XREF: sub_14036ECD0+1CE↑j
                mov     rcx, rsi
                call    sub_140732F00
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F13F:                          ; CODE XREF: sub_14036ECD0+312↑j
                mov     [rax], r14d
                jmp     loc_14036EFE8
; ---------------------------------------------------------------------------

loc_14036F147:                          ; CODE XREF: sub_14036ECD0+40C↑j
                                        ; sub_14036ECD0+11FF85↓j ...
                mov     rcx, rsi
                call    sub_140730B28
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F154:                          ; CODE XREF: sub_14036ECD0+43E↑j
                cmp     ecx, 13h
                jz      loc_14048ECBB
                cmp     ecx, 14h
                jz      loc_14048ECB4
                jle     short loc_14036F1B7
                cmp     ecx, 18h
                jg      loc_14048ECA6
                mov     rcx, rsi
                call    sub_14072F4A8
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F17E:                          ; CODE XREF: sub_14036ECD0+373↑j
                call    sub_1403C3628
                mov     r15b, dil
                mov     [rbp+57h+var_70], dil
                jmp     loc_14036F09D
; ---------------------------------------------------------------------------

loc_14036F18F:                          ; CODE XREF: sub_14036ECD0+460↑j
                cmp     ecx, 1
                jnz     short loc_14036F1B7
                mov     rcx, rsi
                call    sub_1407D26FC
                jmp     loc_14036EED6
; ---------------------------------------------------------------------------

loc_14036F1A1:                          ; CODE XREF: sub_14036ECD0+45B↑j
                mov     rcx, rsi
                call    sub_140730944
                jmp     loc_14036EF73
; ---------------------------------------------------------------------------

loc_14036F1AE:                          ; CODE XREF: sub_14036ECD0+440↑j
                mov     [rbp+57h+var_70], r15b
                jmp     loc_14036EF76
; ---------------------------------------------------------------------------

loc_14036F1B7:                          ; CODE XREF: sub_14036ECD0+1EF↑j
                                        ; sub_14036ECD0+295↑j ...
                mov     r14d, 0C0000001h
                jmp     loc_14036EF76
; } // starts at 14036ECD0
sub_14036ECD0   endp

; ---------------------------------------------------------------------------
algn_14036F1C2:                         ; DATA XREF: .rdata:000000014008CAE8↑o
                                        ; .pdata:00000001400DA5EC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036F1C8   proc near               ; CODE XREF: sub_14036E8F4+13C↑p
                                        ; sub_14036ECD0+1BD↑p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h

; FUNCTION CHUNK AT 000000014048ED22 SIZE 00000129 BYTES

                sub     rsp, 38h
                mov     r11d, 8
                mov     r10d, r9d
                cmp     edx, r11d
                jz      short loc_14036F229
                jle     short loc_14036F201
                cmp     edx, 0Ah
                jle     short loc_14036F207
                cmp     edx, 10h
                jz      loc_14036F283
                cmp     edx, 0Ch
                jz      loc_14036F283
                cmp     edx, 0Eh
                jz      short loc_14036F207
                cmp     edx, 14h
                jg      loc_14036F2AD

loc_14036F201:                          ; CODE XREF: sub_14036F1C8+12↑j
                                        ; sub_14036F1C8+51↓j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036F207:                          ; CODE XREF: sub_14036F1C8+17↑j
                                        ; sub_14036F1C8+2E↑j
                xor     r9d, r9d
                test    r8d, r8d
                jz      short loc_14036F245
                cmp     r8d, 1
                jz      short loc_14036F253
                cmp     r8d, 2
                jnz     short loc_14036F201
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EDED
; ---------------------------------------------------------------------------

loc_14036F229:                          ; CODE XREF: sub_14036F1C8+10↑j
                xor     r9d, r9d
                test    r8d, r8d
                jz      short loc_14036F261
                cmp     r8d, 1
                jnz     short loc_14036F26F
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EE1E
; ---------------------------------------------------------------------------

loc_14036F245:                          ; CODE XREF: sub_14036F1C8+45↑j
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EDC1
; ---------------------------------------------------------------------------

loc_14036F253:                          ; CODE XREF: sub_14036F1C8+4B↑j
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EDD7
; ---------------------------------------------------------------------------

loc_14036F261:                          ; CODE XREF: sub_14036F1C8+67↑j
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EE0C
; ---------------------------------------------------------------------------

loc_14036F26F:                          ; CODE XREF: sub_14036F1C8+6D↑j
                cmp     r8d, 2
                jnz     short loc_14036F201
                test    cs:byte_140C1313B, r11b
                jz      short loc_14036F201
                jmp     loc_14048EE30
; ---------------------------------------------------------------------------

loc_14036F283:                          ; CODE XREF: sub_14036F1C8+1C↑j
                                        ; sub_14036F1C8+25↑j
                xor     r9d, r9d
                test    r8d, r8d
                jz      short loc_14036F2D6
                cmp     r8d, 1
                jz      short loc_14036F2E8
                cmp     r8d, 2
                jnz     loc_14036F201
                test    cs:byte_140C1313B, 10h
                jz      loc_14036F201
                jmp     loc_14048EDBA
; ---------------------------------------------------------------------------

loc_14036F2AD:                          ; CODE XREF: sub_14036F1C8+33↑j
                cmp     edx, 18h
                jg      loc_14036F201
                xor     r9d, r9d
                test    r8d, r8d
                jz      short loc_14036F2FA
                cmp     r8d, 1
                jnz     short loc_14036F30C
                test    cs:byte_140C13139, 20h
                jz      loc_14036F201
                jmp     loc_14048ED3B
; ---------------------------------------------------------------------------

loc_14036F2D6:                          ; CODE XREF: sub_14036F1C8+C1↑j
                test    cs:byte_140C1313B, 10h
                jz      loc_14036F201
                jmp     loc_14048ED8E
; ---------------------------------------------------------------------------

loc_14036F2E8:                          ; CODE XREF: sub_14036F1C8+C7↑j
                test    cs:byte_140C1313B, 10h
                jz      loc_14036F201
                jmp     loc_14048EDA4
; ---------------------------------------------------------------------------

loc_14036F2FA:                          ; CODE XREF: sub_14036F1C8+F4↑j
                test    cs:byte_140C13139, 20h
                jz      loc_14036F201
                jmp     loc_14048ED22
; ---------------------------------------------------------------------------

loc_14036F30C:                          ; CODE XREF: sub_14036F1C8+FA↑j
                cmp     r8d, 2
                jnz     loc_14036F201
                test    cs:byte_140C13139, 20h
                jz      loc_14036F201
                jmp     loc_14048ED54
sub_14036F1C8   endp

; ---------------------------------------------------------------------------
algn_14036F328:                         ; DATA XREF: .rdata:000000014008CB04↑o
                                        ; .pdata:00000001400DA5F8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036F330   proc near               ; CODE XREF: sub_14036ECD0+33F↑p
                                        ; sub_140380F84+17F↓p ...
                sub     rsp, 28h
                or      eax, 0FFFFFFFFh
                lock xadd [rcx+48h], eax
                cmp     eax, 1
                jnz     short loc_14036F34B
                mov     edx, 32706E50h
                call    ExFreePoolWithTag

loc_14036F34B:                          ; CODE XREF: sub_14036F330+F↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036F330   endp

algn_14036F351:                         ; DATA XREF: .pdata:00000001400DA604↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036F358   proc near               ; CODE XREF: sub_14036F89C+340↓p
                                        ; sub_140745968+4B↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048EE4C SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rcx, qword_140C434B0
                call    KeAcquireSpinLockRaiseToDpc
                mov     r8d, [rbx+130h]
                mov     edx, r8d
                mov     r9d, [rbx+12Ch]
                mov     ecx, r9d
                movzx   edi, al
                call    sub_1402B47E8
                mov     rcx, rbx
                mov     ebp, eax
                call    sub_1402B4798
                mov     ecx, [rbx+184h]
                mov     esi, eax
                mov     [rbx+12Ch], r8d
                mov     eax, 0CCCCCCCDh
                mov     [rbx+rcx*4+134h], r9d
                lea     rcx, qword_140C434B0
                mov     r8d, [rbx+184h]
                inc     r8d
                mul     r8d
                shr     edx, 4
                lea     eax, [rdx+rdx*4]
                shl     eax, 2
                sub     r8d, eax
                mov     [rbx+184h], r8d
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EE4C

loc_14036F3F7:                          ; CODE XREF: sub_14036F358+11FAF6↓j
                                        ; sub_14036F358+11FB02↓j ...
                mov     cr8, rdi
                mov     r9, [rbx+30h]
                test    r9, r9
                jz      short loc_14036F44E
                mov     edx, [rbx+130h]
                mov     ecx, [rbx+12Ch]
                call    sub_1402B47E8
                cmp     eax, ebp
                jnz     short loc_14036F425
                mov     rcx, rbx
                call    sub_1402B4798
                cmp     eax, esi
                jz      short loc_14036F44E

loc_14036F425:                          ; CODE XREF: sub_14036F358+BF↑j
                mov     r8d, 0Bh
                mov     rdx, r9
                call    sub_1407378F8
                mov     rcx, rbx
                call    sub_1402B4798
                cmp     eax, esi
                jz      short loc_14036F44E
                mov     rdx, [rbx+30h]
                mov     r8d, 1Ah
                call    sub_1407378F8

loc_14036F44E:                          ; CODE XREF: sub_14036F358+AA↑j
                                        ; sub_14036F358+CB↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036F358   endp

byte_14036F464  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008CCDC↑o
                                        ; .pdata:00000001400DA610↑o

; =============== S U B R O U T I N E =======================================


sub_14036F46C   proc near               ; CODE XREF: sub_140747320+AA↓p
                                        ; IoReportDetectedDevice+AA608↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048EEB0 SIZE 000000C9 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rsi, qword_140C434B0
                mov     rcx, rsi
                xor     bpl, bpl
                call    KeAcquireSpinLockRaiseToDpc
                movzx   edi, al
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      loc_14048EF14
                add     rax, 8
                mov     rcx, [rax]
                jmp     short loc_14036F4B4
; ---------------------------------------------------------------------------

loc_14036F4AE:                          ; CODE XREF: sub_14036F46C+4B↓j
                mov     rax, rcx
                mov     rcx, [rcx]

loc_14036F4B4:                          ; CODE XREF: sub_14036F46C+40↑j
                cmp     rcx, rbx
                jnz     short loc_14036F4AE
                mov     rcx, [rbx]
                mov     [rax], rcx
                mov     rdx, [rbx+10h]
                cmp     qword ptr [rdx+8], 0
                jz      short loc_14036F4D7

loc_14036F4CA:                          ; CODE XREF: sub_14036F46C+69↓j
                test    rcx, rcx
                jz      short loc_14036F4D9
                mov     rax, rcx
                mov     rcx, [rcx]
                jmp     short loc_14036F4CA
; ---------------------------------------------------------------------------

loc_14036F4D7:                          ; CODE XREF: sub_14036F46C+5C↑j
                xor     eax, eax

loc_14036F4D9:                          ; CODE XREF: sub_14036F46C+61↑j
                mov     rcx, rsi
                mov     [rdx+18h], rax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048EEB0

loc_14036F4F3:                          ; CODE XREF: sub_14036F46C+11FA46↓j
                                        ; sub_14036F46C+11FA52↓j ...
                mov     cr8, rdi
                lea     rax, [rbx+270h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14036F60F
                cmp     [rcx], rax
                jnz     loc_14036F60F
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     rcx, rbx
                call    sub_140745B60
                mov     bpl, 1

loc_14036F52A:                          ; CODE XREF: sub_14036F46C+11FB08↓j
                lea     rsi, [rbx+0B0h]
                mov     rdi, [rsi]

loc_14036F534:                          ; CODE XREF: sub_14036F46C+153↓j
                cmp     rdi, rsi
                jnz     short loc_14036F574
                lea     rsi, [rbx+0C0h]
                mov     rdi, [rsi]

loc_14036F543:                          ; CODE XREF: sub_14036F46C+19E↓j
                cmp     rdi, rsi
                jnz     short loc_14036F5C4
                and     qword ptr [rbx+10h], 0
                mov     al, bpl
                and     qword ptr [rbx+8], 0
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+18h], 0
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14036F574:                          ; CODE XREF: sub_14036F46C+CB↑j
                lea     rcx, [rdi-18h]
                mov     rdi, [rdi]
                mov     rdx, [rcx]
                mov     rax, [rcx+8]
                cmp     [rdx+8], rcx
                jnz     loc_14036F60F
                cmp     [rax], rcx
                jnz     short loc_14036F60F
                mov     [rax], rdx
                mov     [rdx+8], rax
                lea     rax, [rcx+18h]
                mov     r8, [rax]
                mov     rdx, [rax+8]
                cmp     [r8+8], rax
                jnz     short loc_14036F60F
                cmp     [rdx], rax
                jnz     short loc_14036F60F
                mov     [rdx], r8
                mov     [r8+8], rdx
                mov     edx, 72775044h
                call    ExFreePoolWithTag
                jmp     loc_14036F534
; ---------------------------------------------------------------------------

loc_14036F5C4:                          ; CODE XREF: sub_14036F46C+DA↑j
                mov     rax, [rdi]
                mov     rcx, rdi
                mov     rdi, rax
                mov     rdx, [rcx+8]
                cmp     [rax+8], rcx
                jnz     short loc_14036F60F
                cmp     [rdx], rcx
                jnz     short loc_14036F60F
                mov     [rdx], rax
                mov     [rax+8], rdx
                lea     rax, [rcx+18h]
                mov     r8, [rax]
                mov     rdx, [rax+8]
                cmp     [r8+8], rax
                jnz     short loc_14036F60F
                cmp     [rdx], rax
                jnz     short loc_14036F60F
                mov     [rdx], r8
                mov     [r8+8], rdx
                mov     edx, 72775044h
                call    ExFreePoolWithTag
                jmp     loc_14036F543
; ---------------------------------------------------------------------------

loc_14036F60F:                          ; CODE XREF: sub_14036F46C+9D↑j
                                        ; sub_14036F46C+A6↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14036F46C   endp

; ---------------------------------------------------------------------------
byte_14036F616  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014008CD5C↑o
                                        ; .pdata:00000001400DA61C↑o

; =============== S U B R O U T I N E =======================================


sub_14036F61C   proc near               ; CODE XREF: sub_140747320+14F↓p
                                        ; DATA XREF: .rdata:000000014008CD84↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048EF7A SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rdi, rcx
                cmp     cs:dword_140C44D24, ebp
                jnz     loc_14048EF7A
                movzx   esi, word ptr [rcx+28h]
                add     esi, 52h ; 'R'
                lea     ecx, [rsi+70h]
                call    sub_14069ECE4
                mov     rbx, rax
                test    rax, rax
                jz      loc_14048EF84
                movups  xmm0, cs:xmmword_14001DEF0
                mov     [rax+18h], rbp
                mov     [rax+10h], ebp
                movdqu  xmmword ptr [rax+70h], xmm0
                mov     [rax+30h], rbp
                mov     [rax+38h], rbp
                mov     dword ptr [rax+80h], 0Ah
                mov     [rax+88h], rbp
                mov     [rax+90h], ebp
                mov     [rax+94h], esi
                mov     [rax+98h], rbp
                mov     rdx, [rdi+30h]
                test    rdx, rdx
                jz      short loc_14036F6B5
                movzx   r8d, word ptr [rdi+28h]
                lea     rcx, [rax+0A0h]
                call    memmove

loc_14036F6B5:                          ; CODE XREF: sub_14036F61C+86↑j
                movzx   eax, word ptr [rdi+28h]
                mov     rcx, rbx
                shr     rax, 1
                mov     [rbx+rax*2+0A0h], bp
                call    sub_1406A03AC

loc_14036F6CC:                          ; CODE XREF: sub_14036F61C+11F963↓j
                                        ; sub_14036F61C+11F96D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036F61C   endp

algn_14036F6E2:                         ; DATA XREF: .rdata:000000014008CD84↑o
                                        ; .pdata:00000001400DA628↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14036F6E8   proc near               ; CODE XREF: sub_140731BB4+46↓p
                                        ; sub_140745F30+285↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014048EF8E SIZE 00000030 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, [rsp+78h+arg_20]
                mov     r13d, r8d
                mov     r12d, edx
                mov     r15, rcx
                test    rsi, rsi
                jnz     loc_14036F800

loc_14036F71B:                          ; CODE XREF: sub_14036F6E8+11C↓j
                xor     ebp, ebp
                xor     edi, edi
                lea     ecx, [rbp+0Ah]
                call    KeAcquireQueuedSpinLock
                xor     ebx, ebx
                lea     r14d, [rbp+1]
                mov     r10b, al
                test    r12d, r12d
                jle     loc_14036F7CC
                mov     esi, [rsp+78h+arg_18]
                mov     r14, r15
                mov     bpl, al

loc_14036F746:                          ; CODE XREF: sub_14036F6E8+BF↓j
                and     [rsp+78h+var_48], 0
                lea     r8, [rsp+78h+var_48]
                movsxd  rax, ebx
                lea     r11, [r15+rax*8]
                mov     rcx, r11
                call    sub_14036F850
                mov     r9d, 1
                mov     rcx, r11
                mov     edi, eax
                call    sub_14036F820
                test    r13d, r13d
                jnz     loc_14036F809
                test    edi, edi
                jnz     short loc_14036F79E
                mov     dl, bpl
                lea     ebp, [rdi+0Ah]
                mov     ecx, ebp
                call    KeReleaseQueuedSpinLock
                mov     rcx, [r14]
                mov     edx, esi
                call    sub_140745BFC
                mov     ecx, ebp
                call    KeAcquireQueuedSpinLock
                mov     bpl, al

loc_14036F79E:                          ; CODE XREF: sub_14036F6E8+93↑j
                                        ; sub_14036F6E8+123↓j
                inc     ebx
                add     r14, 8
                cmp     ebx, r12d
                jl      short loc_14036F746

loc_14036F7A9:                          ; CODE XREF: sub_14036F6E8+125↓j
                mov     rsi, [rsp+78h+arg_20]
                mov     r14d, 1
                mov     [rsp+78h+arg_8], bpl
                mov     r10b, [rsp+78h+arg_8]
                mov     rbp, [rsp+78h+var_48]

loc_14036F7CC:                          ; CODE XREF: sub_14036F6E8+4B↑j
                test    r13d, r13d
                jnz     short loc_14036F80F

loc_14036F7D1:                          ; CODE XREF: sub_14036F6E8+129↓j
                                        ; sub_14036F6E8+11F8B0↓j ...
                mov     dl, r10b
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rbx, [rsp+78h+arg_0]
                test    r13d, r13d
                cmovz   edi, r14d
                mov     eax, edi
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14036F800:                          ; CODE XREF: sub_14036F6E8+2D↑j
                and     qword ptr [rsi], 0
                jmp     loc_14036F71B
; ---------------------------------------------------------------------------

loc_14036F809:                          ; CODE XREF: sub_14036F6E8+8B↑j
                test    edi, edi
                jz      short loc_14036F79E
                jmp     short loc_14036F7A9
; ---------------------------------------------------------------------------

loc_14036F80F:                          ; CODE XREF: sub_14036F6E8+E7↑j
                test    edi, edi
                jz      short loc_14036F7D1
                jmp     loc_14048EF8E
sub_14036F6E8   endp

; ---------------------------------------------------------------------------
algn_14036F818:                         ; DATA XREF: .rdata:000000014008CDB0↑o
                                        ; .pdata:00000001400DA634↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14036F820   proc near               ; CODE XREF: sub_14036F6E8+83↑p
                                        ; sub_14036F6E8+11F8C3↓p
                                        ; DATA XREF: ...
                mov     rdx, [rcx]

loc_14036F823:                          ; CODE XREF: sub_14036F820+21↓j
                test    rdx, rdx
                jz      short locret_14036F843
                mov     rax, [rdx+138h]
                mov     ecx, [rax+20h]
                test    r9d, r9d
                jz      short loc_14036F845
                or      ecx, 4

loc_14036F83A:                          ; CODE XREF: sub_14036F820+28↓j
                mov     [rax+20h], ecx
                mov     rdx, [rdx+18h]
                jmp     short loc_14036F823
; ---------------------------------------------------------------------------

locret_14036F843:                       ; CODE XREF: sub_14036F820+6↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036F845:                          ; CODE XREF: sub_14036F820+15↑j
                and     ecx, 0FFFFFFFBh
                jmp     short loc_14036F83A
sub_14036F820   endp

; ---------------------------------------------------------------------------
algn_14036F84A:                         ; DATA XREF: .pdata:00000001400DA640↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036F850   proc near               ; CODE XREF: sub_14036F6E8+73↑p
                                        ; sub_1402F0A40+172744↓p
                                        ; DATA XREF: ...
                xor     eax, eax
                mov     edx, eax
                mov     r9d, eax
                mov     r10d, eax

loc_14036F85A:                          ; CODE XREF: sub_14036F850+31↓j
                test    r9d, r9d
                jnz     short loc_14036F883
                mov     rdx, [rcx]

loc_14036F862:                          ; CODE XREF: sub_14036F850+24↓j
                test    rdx, rdx
                jz      short loc_14036F876
                mov     r9d, [rdx+4]
                test    r9d, r9d
                jnz     short loc_14036F876
                mov     rdx, [rdx+18h]
                jmp     short loc_14036F862
; ---------------------------------------------------------------------------

loc_14036F876:                          ; CODE XREF: sub_14036F850+15↑j
                                        ; sub_14036F850+1E↑j
                inc     r10d
                add     rcx, 8
                cmp     r10d, 1
                jb      short loc_14036F85A

loc_14036F883:                          ; CODE XREF: sub_14036F850+D↑j
                test    r8, r8
                jz      short loc_14036F88B
                mov     [r8], rdx

loc_14036F88B:                          ; CODE XREF: sub_14036F850+36↑j
                test    r9d, r9d
                setnz   al
                retn
sub_14036F850   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036F893  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA64C↑o

; =============== S U B R O U T I N E =======================================


sub_14036F89C   proc near               ; CODE XREF: sub_140747C3C+49↓p
                                        ; DATA XREF: .rdata:000000014008D1C0↑o ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014048EFBE SIZE 000000BA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13, [rcx+20h]
                mov     r15d, edx
                mov     rbx, rcx
                xor     esi, esi
                call    sub_140722E9C
                mov     rdi, [rcx+8]
                test    rdi, rdi
                jnz     loc_14048EFBE

loc_14036F8D7:                          ; CODE XREF: sub_14036F89C+11F77B↓j
                mov     eax, [rbx+12Ch]
                cmp     eax, 30Fh
                jz      loc_14036FBCD
                cmp     eax, 30Eh
                jz      loc_14036FBCD

loc_14036F8F3:                          ; CODE XREF: sub_14036F89C+34B↓j
                add     eax, 0FFFFFCFFh ; switch 20 cases
                cmp     eax, 13h
                ja      short def_14036F918 ; jumptable 000000014036F918 default case, cases 769-787
                lea     rdx, cs:140000000h
                cdqe
                movzx   eax, ds:(byte_14036FC08 - 140000000h)[rdx+rax]
                mov     ecx, ds:(jpt_14036F918 - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

def_14036F918:                          ; CODE XREF: sub_14036F89C+5F↑j
                                        ; sub_14036F89C+7C↑j
                                        ; DATA XREF: ...
                mov     bpl, 1          ; jumptable 000000014036F918 default case, cases 769-787

loc_14036F921:                          ; CODE XREF: sub_14036F89C+11F783↓j
                mov     rax, [r13+18h]
                jmp     short loc_14036F92D
; ---------------------------------------------------------------------------

loc_14036F927:                          ; CODE XREF: sub_14036F89C+94↓j
                mov     rax, [rax+18h]
                inc     esi

loc_14036F92D:                          ; CODE XREF: sub_14036F89C+89↑j
                test    rax, rax
                jnz     short loc_14036F927
                xor     edi, edi
                xor     r12d, r12d
                test    esi, esi
                jz      loc_14036F9CE
                lea     eax, ds:10h[rsi*8]
                mov     r14d, 65647050h
                mov     r8d, r14d
                mov     edx, eax
                mov     ecx, 200h
                mov     esi, eax
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14036F9CE
                mov     r8d, r14d
                lea     ecx, [r12+1]
                mov     edx, esi
                call    ExAllocatePoolWithTag
                xor     edx, edx
                mov     r12, rax
                mov     rcx, rdi
                test    rax, rax
                jz      loc_14048F024
                mov     r8d, esi
                call    memset
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, r12
                call    memset
                mov     rsi, [r13+18h]
                mov     r14, rdi
                mov     r15, r12
                jmp     short loc_14036F9C4
; ---------------------------------------------------------------------------

loc_14036F9A6:                          ; CODE XREF: sub_14036F89C+12B↓j
                mov     rcx, rsi
                call    ObfReferenceObject
                mov     [r14], rsi
                lea     r14, [r14+8]
                mov     rax, [rsi+8]
                mov     [r15], rax
                lea     r15, [r15+8]
                mov     rsi, [rsi+18h]

loc_14036F9C4:                          ; CODE XREF: sub_14036F89C+108↑j
                test    rsi, rsi
                jnz     short loc_14036F9A6
                mov     r15d, [rsp+58h+arg_8]

loc_14036F9CE:                          ; CODE XREF: sub_14036F89C+9D↑j
                                        ; sub_14036F89C+C7↑j ...
                mov     esi, 0Ah
                mov     ecx, esi
                call    KeAcquireQueuedSpinLock
                mov     r8b, al
                mov     rdx, rdi
                mov     r9d, 0FFFFFFFBh
                test    rdi, rdi
                jz      short loc_14036FA15
                mov     rcx, [rdi]
                jmp     short loc_14036FA10
; ---------------------------------------------------------------------------

loc_14036F9F0:                          ; CODE XREF: sub_14036F89C+177↓j
                mov     rcx, [rcx+138h]
                and     [rcx+20h], r9d
                mov     rax, [rdx]
                lea     rdx, [rdx+8]
                mov     rcx, [rax+138h]
                or      dword ptr [rcx+20h], 8
                mov     rcx, [rdx]

loc_14036FA10:                          ; CODE XREF: sub_14036F89C+152↑j
                test    rcx, rcx
                jnz     short loc_14036F9F0

loc_14036FA15:                          ; CODE XREF: sub_14036F89C+14D↑j
                mov     rax, [r13+138h]
                mov     dl, r8b
                mov     rcx, rsi
                and     [rax+20h], r9d
                mov     rax, [r13+138h]
                or      dword ptr [rax+20h], 8
                call    KeReleaseQueuedSpinLock
                test    bpl, bpl
                jz      short loc_14036FA6C
                mov     edx, 2
                mov     rcx, r13
                call    sub_140747FC0
                cmp     dword ptr [rbx+12Ch], 310h
                jz      loc_14036FBEC

loc_14036FA58:                          ; CODE XREF: sub_14036F89C+359↓j
                mov     edx, [rbx+18Ch]
                mov     rcx, rbx
                shr     edx, 4
                and     edx, 1
                call    sub_140747E14

loc_14036FA6C:                          ; CODE XREF: sub_14036F89C+19D↑j
                mov     eax, [rbx+18Ch]
                test    al, 10h
                jnz     short loc_14036FA8C
                mov     eax, [rbx+238h]
                mov     edx, 3
                sub     eax, edx
                cmp     eax, 1
                jbe     loc_14048F030

loc_14036FA8C:                          ; CODE XREF: sub_14036F89C+1D8↑j
                                        ; sub_14036F89C+11F79D↓j
                xor     ebp, ebp
                mov     r14, rdi
                test    rdi, rdi
                jz      short loc_14036FB06
                cmp     [rdi], rbp
                jz      short loc_14036FAF2
                mov     rsi, r12
                sub     rsi, rdi

loc_14036FAA1:                          ; CODE XREF: sub_14036F89C+24F↓j
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rcx, [r14]
                mov     rdx, [rcx+138h]
                and     dword ptr [rdx+20h], 0FFFFFFF7h
                mov     rcx, [r14]
                mov     rdx, [rcx+138h]
                mov     ecx, 0Ah
                or      dword ptr [rdx+20h], 10h
                mov     dl, al
                call    KeReleaseQueuedSpinLock
                mov     rcx, [rsi+r14]
                call    sub_14073BFEC
                mov     rcx, [r14]
                call    PsDereferenceSiloContext
                lea     r14, [r14+8]
                cmp     [r14], rbp
                jnz     short loc_14036FAA1
                mov     esi, 0Ah

loc_14036FAF2:                          ; CODE XREF: sub_14036F89C+1FD↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_14036FB06:                          ; CODE XREF: sub_14036F89C+1F8↑j
                mov     rcx, rsi
                call    KeAcquireQueuedSpinLock
                mov     rdx, [r13+138h]
                mov     rcx, rsi
                and     dword ptr [rdx+20h], 0FFFFFFF7h
                mov     rdx, [r13+138h]
                or      dword ptr [rdx+20h], 10h
                mov     dl, al
                call    KeReleaseQueuedSpinLock
                mov     eax, [rbx+18Ch]
                mov     edx, 312h
                test    al, 10h
                jnz     short loc_14036FB42
                mov     edx, 314h

loc_14036FB42:                          ; CODE XREF: sub_14036F89C+29F↑j
                mov     rcx, rbx
                call    sub_14036D798
                test    r15d, r15d
                jz      short loc_14036FB83
                test    dword ptr [rbx+18Ch], 6000h
                jnz     loc_14048F03E

loc_14036FB5F:                          ; CODE XREF: sub_14036F89C+11F7AB↓j
                                        ; sub_14036F89C+11F7D7↓j
                mov     rcx, rbx
                call    sub_14074AC04
                mov     eax, [rsp+58h+arg_10]
                test    eax, eax
                jnz     short loc_14036FB75
                mov     eax, [rbx+188h]

loc_14036FB75:                          ; CODE XREF: sub_14036F89C+2D1↑j
                mov     r8d, eax
                mov     edx, r15d
                mov     rcx, rbx
                call    sub_140748CA0

loc_14036FB83:                          ; CODE XREF: sub_14036F89C+2B1↑j
                                        ; sub_14036F89C+11F7BE↓j ...
                mov     eax, [rbx+18Ch]
                test    al, 10h
                jnz     short loc_14036FB95
                mov     rcx, r13
                call    sub_140678E2C

loc_14036FB95:                          ; CODE XREF: sub_14036F89C+2EF↑j
                mov     r8b, 1
                mov     edx, r15d
                mov     rcx, rbx
                call    sub_140747D98
                mov     rdx, [rbx+30h]
                test    rdx, rdx
                jz      short loc_14036FBB7
                mov     r8d, 17h
                call    sub_1407378F8

loc_14036FBB7:                          ; CODE XREF: sub_14036F89C+30E↑j
                                        ; sub_14036F89C+33B↓j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036FBCD:                          ; CODE XREF: sub_14036F89C+46↑j
                                        ; sub_14036F89C+51↑j
                cmp     dword ptr [rbx+130h], 311h
                jz      short loc_14036FBB7
                mov     rcx, rbx
                call    sub_14036F358
                mov     eax, [rbx+12Ch]
                jmp     loc_14036F8F3
; ---------------------------------------------------------------------------

loc_14036FBEC:                          ; CODE XREF: sub_14036F89C+1B6↑j
                lea     rcx, [rbx+28h]
                call    sub_1407457EC
                jmp     loc_14036FA58
; ---------------------------------------------------------------------------
                align 4
jpt_14036F918   dd offset def_14036F918 - 140000000h
                                        ; DATA XREF: sub_14036F89C+72↑r
                dd offset loc_14048F01C - 140000000h ; jump table for switch statement
                dd offset def_14036F918 - 140000000h
byte_14036FC08  db      0,     0,     0,     0
                                        ; DATA XREF: sub_14036F89C+6A↑r
                db      2,     0,     0,     2 ; indirect table for switch statement
                db      2,     2,     2,     2
                db      2,     2,     2,     0
                db      0,     0,     0,     1
sub_14036F89C   endp

byte_14036FC1C  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008D1C0↑o
                                        ; .pdata:00000001400DA658↑o

; =============== S U B R O U T I N E =======================================


sub_14036FC24   proc near               ; CODE XREF: sub_1407335AC+58↓p
                                        ; sub_140747FC0+7F↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     dl, al

loc_14036FC39:                          ; CODE XREF: sub_14036FC24+2C↓j
                test    rbx, rbx
                jz      short loc_14036FC52
                mov     eax, [rbx+30h]
                test    al, 40h
                jz      short loc_14036FC4C
                cmp     qword ptr [rbx+38h], 0
                jnz     short loc_14036FC52

loc_14036FC4C:                          ; CODE XREF: sub_14036FC24+1F↑j
                mov     rbx, [rbx+18h]
                jmp     short loc_14036FC39
; ---------------------------------------------------------------------------

loc_14036FC52:                          ; CODE XREF: sub_14036FC24+18↑j
                                        ; sub_14036FC24+26↑j
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036FC24   endp

byte_14036FC66  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA664↑o

; =============== S U B R O U T I N E =======================================


sub_14036FC6C   proc near               ; CODE XREF: sub_1407496E4+200↓p
                                        ; sub_1407496E4+20D↓p ...
                test    rcx, rcx
                jz      short loc_14036FC7C
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short loc_14036FC7C
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14036FC7C:                          ; CODE XREF: sub_14036FC6C+3↑j
                                        ; sub_14036FC6C+C↑j
                lea     rax, dword_14098D654
                retn
sub_14036FC6C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036FC85  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DA670↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1Fh

sub_14036FC8C   proc near               ; CODE XREF: sub_1407496E4+255↓p
                                        ; DATA XREF: .rdata:000000014008D4D8↑o ...

var_B0          = qword ptr -0B0h
var_A0          = byte ptr -0A0h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = byte ptr  58h
arg_50          = byte ptr  60h

; FUNCTION CHUNK AT 000000014048F078 SIZE 00000020 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1Fh+var_10], rax
                or      rcx, 0FFFFFFFFFFFFFFFFh
                xor     r11d, r11d
                mov     r10, rdx
                mov     edx, 0Ah
                test    r9, r9
                jz      loc_14048F078
                mov     rax, rcx

loc_14036FCC7:                          ; CODE XREF: sub_14036FC8C+43↓j
                inc     rax
                cmp     [r9+rax*2], r11w
                jnz     short loc_14036FCC7
                lea     r8d, ds:2[rax*2]

loc_14036FCD9:                          ; CODE XREF: sub_14036FC8C+11F3EF↓j
                mov     rax, [rbp+1Fh+arg_20]
                lea     rbx, aNull      ; "NULL"
                test    r9, r9
                mov     [rbp+1Fh+var_88], r8d
                mov     [rbp+1Fh+var_84], r11d
                cmovz   r9, rbx
                mov     [rbp+1Fh+var_90], r9
                test    rax, rax
                jz      loc_14048F080
                mov     r8, rcx

loc_14036FD03:                          ; CODE XREF: sub_14036FC8C+7F↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FD03
                lea     r9d, ds:2[r8*2]

loc_14036FD15:                          ; CODE XREF: sub_14036FC8C+11F3F7↓j
                test    rax, rax
                mov     [rbp+1Fh+var_78], r9d
                mov     [rbp+1Fh+var_74], r11d
                cmovz   rax, rbx
                mov     [rbp+1Fh+var_68], 10h
                mov     [rbp+1Fh+var_80], rax
                mov     rax, [rbp+1Fh+arg_28]
                mov     [rbp+1Fh+var_70], rax
                mov     rax, [rbp+1Fh+arg_30]
                test    rax, rax
                jz      loc_14048F088
                mov     r8, rcx

loc_14036FD48:                          ; CODE XREF: sub_14036FC8C+C4↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FD48
                lea     r9d, ds:2[r8*2]

loc_14036FD5A:                          ; CODE XREF: sub_14036FC8C+11F3FF↓j
                test    rax, rax
                mov     [rbp+1Fh+var_58], r9d
                mov     [rbp+1Fh+var_54], r11d
                cmovz   rax, rbx
                mov     [rbp+1Fh+var_60], rax
                mov     rax, [rbp+1Fh+arg_38]
                test    rax, rax
                jz      loc_14048F090
                mov     r8, rcx

loc_14036FD7D:                          ; CODE XREF: sub_14036FC8C+F9↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FD7D
                lea     r9d, ds:2[r8*2]

loc_14036FD8F:                          ; CODE XREF: sub_14036FC8C+11F407↓j
                test    rax, rax
                mov     [rbp+1Fh+var_48], r9d
                mov     [rbp+1Fh+var_44], r11d
                cmovz   rax, rbx
                mov     [rbp+1Fh+var_50], rax
                mov     rax, [rbp+1Fh+arg_40]
                test    rax, rax
                jz      short loc_14036FDBF

loc_14036FDAB:                          ; CODE XREF: sub_14036FC8C+127↓j
                inc     rcx
                cmp     [rax+rcx*2], r11w
                jnz     short loc_14036FDAB
                lea     edx, ds:2[rcx*2]
                test    rax, rax

loc_14036FDBF:                          ; CODE XREF: sub_14036FC8C+11D↑j
                cmovz   rax, rbx
                mov     [rbp+1Fh+var_38], edx
                mov     [rbp+1Fh+var_40], rax
                lea     rcx, qword_140C021E0
                lea     rax, [rbp+1Fh+arg_48]
                mov     [rbp+1Fh+var_34], r11d
                mov     [rbp+1Fh+var_30], rax
                mov     r9d, 9
                lea     rax, [rbp+1Fh+arg_50]
                mov     [rbp+1Fh+var_28], 4
                mov     [rbp+1Fh+var_20], rax
                xor     r8d, r8d
                lea     rax, [rsp+0D0h+var_A0]
                mov     [rbp+1Fh+var_18], 4
                mov     rdx, r10
                mov     [rsp+0D0h+var_B0], rax
                call    sub_1403700F8
                mov     rcx, [rbp+1Fh+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_0]
                add     rsp, 0D0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14036FC8C
sub_14036FC8C   endp

byte_14036FE2E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014008D4D8↑o
                                        ; .pdata:00000001400DA67C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=30h

sub_14036FE34   proc near               ; CODE XREF: sub_1407499A0+3BF↓p
                                        ; DATA XREF: .rdata:000000014008D504↑o ...

var_110         = qword ptr -110h
var_100         = byte ptr -100h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = byte ptr  58h
arg_50          = qword ptr  60h
arg_58          = byte ptr  68h
arg_60          = qword ptr  70h
arg_68          = qword ptr  78h
arg_70          = byte ptr  80h
arg_78          = byte ptr  88h
arg_80          = qword ptr  90h

; FUNCTION CHUNK AT 000000014048F098 SIZE 00000040 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+30h+var_10], rax
                or      rcx, 0FFFFFFFFFFFFFFFFh
                xor     r11d, r11d
                mov     r10, rdx
                mov     edx, 0Ah
                test    r9, r9
                jz      loc_14048F098
                mov     rax, rcx

loc_14036FE6F:                          ; CODE XREF: sub_14036FE34+43↓j
                inc     rax
                cmp     [r9+rax*2], r11w
                jnz     short loc_14036FE6F
                lea     r8d, ds:2[rax*2]

loc_14036FE81:                          ; CODE XREF: sub_14036FE34+11F267↓j
                mov     rax, [rbp+30h+arg_20]
                lea     rbx, aNull      ; "NULL"
                test    r9, r9
                mov     [rsp+130h+var_E8], r8d
                mov     [rsp+130h+var_E4], r11d
                cmovz   r9, rbx
                mov     [rsp+130h+var_F0], r9
                test    rax, rax
                jz      loc_14048F0A0
                mov     r8, rcx

loc_14036FEAE:                          ; CODE XREF: sub_14036FE34+82↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FEAE
                lea     r9d, ds:2[r8*2]

loc_14036FEC0:                          ; CODE XREF: sub_14036FE34+11F26F↓j
                test    rax, rax
                mov     [rsp+130h+var_D8], r9d
                mov     [rsp+130h+var_D4], r11d
                cmovz   rax, rbx
                mov     [rsp+130h+var_C8], 10h
                mov     [rsp+130h+var_E0], rax
                mov     rax, [rbp+30h+arg_28]
                mov     [rsp+130h+var_D0], rax
                mov     rax, [rbp+30h+arg_30]
                test    rax, rax
                jz      loc_14048F0A8
                mov     r8, rcx

loc_14036FEF8:                          ; CODE XREF: sub_14036FE34+CC↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FEF8
                lea     r9d, ds:2[r8*2]

loc_14036FF0A:                          ; CODE XREF: sub_14036FE34+11F277↓j
                test    rax, rax
                mov     [rsp+130h+var_B8], r9d
                mov     [rsp+130h+var_B4], r11d
                cmovz   rax, rbx
                mov     [rsp+130h+var_C0], rax
                mov     rax, [rbp+30h+arg_38]
                test    rax, rax
                jz      loc_14048F0B0
                mov     r8, rcx

loc_14036FF30:                          ; CODE XREF: sub_14036FE34+104↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FF30
                lea     r9d, ds:2[r8*2]

loc_14036FF42:                          ; CODE XREF: sub_14036FE34+11F27F↓j
                mov     r8, [rbp+30h+arg_40]
                test    rax, rax
                mov     [rbp+30h+var_A8], r9d
                cmovz   rax, rbx
                mov     [rbp+30h+var_A4], r11d
                mov     [rbp+30h+var_B0], rax
                test    r8, r8
                jz      loc_14048F0B8
                mov     rax, rcx

loc_14036FF68:                          ; CODE XREF: sub_14036FE34+13C↓j
                inc     rax
                cmp     [r8+rax*2], r11w
                jnz     short loc_14036FF68
                lea     r9d, ds:2[rax*2]

loc_14036FF7A:                          ; CODE XREF: sub_14036FE34+11F287↓j
                test    r8, r8
                mov     [rbp+30h+var_98], r9d
                lea     rax, [rbp+30h+arg_48]
                mov     [rbp+30h+var_94], r11d
                cmovz   r8, rbx
                mov     [rbp+30h+var_90], rax
                mov     [rbp+30h+var_A0], r8
                mov     r8, [rbp+30h+arg_50]
                mov     [rbp+30h+var_88], 4
                test    r8, r8
                jz      loc_14048F0C0
                mov     rax, rcx

loc_14036FFB3:                          ; CODE XREF: sub_14036FE34+187↓j
                inc     rax
                cmp     [r8+rax*2], r11w
                jnz     short loc_14036FFB3
                lea     r9d, ds:2[rax*2]

loc_14036FFC5:                          ; CODE XREF: sub_14036FE34+11F28F↓j
                lea     rax, [rbp+30h+arg_58]
                mov     [rbp+30h+var_78], r9d
                test    r8, r8
                mov     [rbp+30h+var_70], rax
                mov     rax, [rbp+30h+arg_60]
                cmovz   r8, rbx
                mov     [rbp+30h+var_74], r11d
                mov     [rbp+30h+var_80], r8
                mov     [rbp+30h+var_68], 4
                test    rax, rax
                jz      loc_14048F0C8
                mov     r8, rcx

loc_14036FFFE:                          ; CODE XREF: sub_14036FE34+1D2↓j
                inc     r8
                cmp     [rax+r8*2], r11w
                jnz     short loc_14036FFFE
                lea     r9d, ds:2[r8*2]

loc_140370010:                          ; CODE XREF: sub_14036FE34+11F297↓j
                mov     r8, [rbp+30h+arg_68]
                test    rax, rax
                mov     [rbp+30h+var_58], r9d
                cmovz   rax, rbx
                mov     [rbp+30h+var_54], r11d
                mov     [rbp+30h+var_60], rax
                test    r8, r8
                jz      loc_14048F0D0
                mov     rax, rcx

loc_140370036:                          ; CODE XREF: sub_14036FE34+20A↓j
                inc     rax
                cmp     [r8+rax*2], r11w
                jnz     short loc_140370036
                lea     r9d, ds:2[rax*2]

loc_140370048:                          ; CODE XREF: sub_14036FE34+11F29F↓j
                lea     rax, [rbp+30h+arg_70]
                mov     [rbp+30h+var_48], r9d
                mov     [rbp+30h+var_40], rax
                test    r8, r8
                lea     rax, [rbp+30h+arg_78]
                mov     [rbp+30h+var_44], r11d
                cmovz   r8, rbx
                mov     [rbp+30h+var_30], rax
                mov     rax, [rbp+30h+arg_80]
                mov     [rbp+30h+var_50], r8
                mov     [rbp+30h+var_38], 4
                mov     [rbp+30h+var_28], 4
                test    rax, rax
                jz      short loc_1403700A1

loc_14037008D:                          ; CODE XREF: sub_14036FE34+261↓j
                inc     rcx
                cmp     [rax+rcx*2], r11w
                jnz     short loc_14037008D
                lea     edx, ds:2[rcx*2]
                test    rax, rax

loc_1403700A1:                          ; CODE XREF: sub_14036FE34+257↑j
                cmovz   rax, rbx
                mov     [rbp+30h+var_18], edx
                mov     [rbp+30h+var_20], rax
                lea     rcx, qword_140C021E0
                lea     rax, [rsp+130h+var_100]
                mov     [rbp+30h+var_14], r11d
                mov     r9d, 0Fh
                mov     [rsp+130h+var_110], rax
                xor     r8d, r8d
                mov     rdx, r10
                call    sub_1403700F8
                mov     rcx, [rbp+30h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+130h+arg_0]
                add     rsp, 130h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14036FE34
sub_14036FE34   endp

byte_1403700F0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008D504↑o
                                        ; .pdata:00000001400DA688↑o

; =============== S U B R O U T I N E =======================================


sub_1403700F8   proc near               ; CODE XREF: sub_14036D028+9C↑p
                                        ; sub_14036FC8C+17F↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014048F0D8 SIZE 00000012 BYTES

                push    rbx
                sub     rsp, 40h
                mov     r10, [rcx+8]
                mov     ebx, r9d
                mov     rax, [rsp+48h+arg_20]
                test    r10, r10
                jnz     loc_14048F0D8
                and     [rax], r10
                xor     r11d, r11d
                xor     r9d, r9d

loc_14037011C:                          ; CODE XREF: sub_1403700F8+11EFED↓j
                mov     [rsp+48h+var_10], rax
                mov     [rax+8], r9d
                xor     r9d, r9d
                mov     [rsp+48h+var_18], ebx
                and     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], r8
                xor     r8d, r8d
                mov     [rax+0Ch], r11d
                mov     rcx, [rcx]
                call    EtwWriteEx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403700F8   endp

algn_14037014D:                         ; DATA XREF: .rdata:000000014008D520↑o
                                        ; .pdata:00000001400DA694↑o
                align 20h
; Exported entry 2414. RtlTimeToTimeFields

; =============== S U B R O U T I N E =======================================


