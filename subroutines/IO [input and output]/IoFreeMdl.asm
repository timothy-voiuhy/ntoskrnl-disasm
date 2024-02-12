IoFreeMdl       proc near               ; CODE XREF: sub_14023D030+E3↓p
                                        ; sub_14023D030+483↓p ...

; FUNCTION CHUNK AT 000000014042C9E4 SIZE 00000015 BYTES

                push    rbx
                sub     rsp, 20h
                movzx   eax, word ptr [rcx+0Ah]
                mov     rbx, rcx
                test    al, 20h
                jnz     loc_140234851

loc_1402347C5:                          ; CODE XREF: IoFreeMdl+B1↓j
                test    al, 8
                jz      short loc_140234814
                movzx   ecx, word ptr [rbx+0Ch]
                mov     eax, cs:dword_140CFC404
                cmp     ecx, eax
                jnb     loc_14042C9E4
                lfence
                lea     rdx, qword_140CFDCC0
                mov     rdx, [rdx+rcx*8]

loc_1402347E9:                          ; CODE XREF: IoFreeMdl+1F8236↓j
                test    rdx, rdx
                jz      loc_14042C9EB

loc_1402347F2:                          ; CODE XREF: IoFreeMdl+1F8244↓j
                mov     rcx, [rdx+830h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     short loc_140234825

loc_140234805:                          ; CODE XREF: IoFreeMdl+89↓j
                mov     rdx, rbx
                call    ExpInterlockedPushEntrySList
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140234814:                          ; CODE XREF: IoFreeMdl+17↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140234825:                          ; CODE XREF: IoFreeMdl+53↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+838h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_140234805
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, rbx
                call    sub_1404079D0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140234851:                          ; CODE XREF: IoFreeMdl+F↑j
                mov     rcx, [rcx+18h]
                mov     rdx, rbx
                call    MmUnmapLockedPages
                movzx   eax, word ptr [rbx+0Ah]
                jmp     loc_1402347C5
IoFreeMdl       endp

; ---------------------------------------------------------------------------
algn_140234866:                         ; DATA XREF: .rdata:0000000140054338↑o
                                        ; .pdata:00000001400CB58C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140234870   proc near               ; CODE XREF: sub_14024CB10+203↓p
                                        ; sub_1403954FC+9↓p ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042C9FA SIZE 00000152 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movzx   r12d, r8b
                movzx   r15d, dl
                mov     rsi, rcx
                xor     bpl, bpl
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r13, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042C9FA

loc_1402348B9:                          ; CODE XREF: sub_140234870+1F818C↓j
                                        ; sub_140234870+1F8196↓j ...
                mov     rbx, gs:28h
                add     rbx, 0A0h
                mov     rdi, [rbx+8]
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042CA3B

loc_1402348E6:                          ; CODE XREF: sub_140234870+1F81CF↓j
                                        ; sub_140234870+1F81DE↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14042CA5F
                mov     rdx, rbx
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     loc_1402349D7

loc_140234902:                          ; CODE XREF: sub_140234870+16F↓j
                                        ; sub_140234870+1F81FB↓j
                mov     eax, [rsi+4]
                sub     eax, 1
                mov     [rsi+4], eax
                js      loc_14042CA70
                test    eax, eax
                jz      loc_1402349AA

loc_140234919:                          ; CODE XREF: sub_140234870+14C↓j
                mov     rbx, gs:28h
                add     rbx, 0A0h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14042CAB2
                prefetchw byte ptr [rbx]
                mov     rax, [rbx]
                xor     edi, edi
                test    rax, rax
                jnz     loc_1402349EC
                mov     rcx, [rbx+8]
                mov     rax, rbx
                lock cmpxchg [rcx], rdi
                jnz     loc_1402349E4

loc_140234959:                          ; CODE XREF: sub_140234870+185↓j
                                        ; sub_140234870+1F8250↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042CAC5

loc_140234972:                          ; CODE XREF: sub_140234870+1F8259↓j
                                        ; sub_140234870+1F8268↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042CAE9

loc_140234980:                          ; CODE XREF: sub_140234870+1F827B↓j
                                        ; sub_140234870+1F8287↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_140234988:                          ; CODE XREF: sub_140234870+165↓j
                mov     rbx, [rsp+58h+arg_0]
                movzx   eax, bpl
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402349AA:                          ; CODE XREF: sub_140234870+A3↑j
                test    r15b, r15b
                jnz     short loc_1402349C2
                mov     rax, [rsi+138h]
                mov     ecx, [rax+20h]
                test    cl, 7
                jz      loc_140234919

loc_1402349C2:                          ; CODE XREF: sub_140234870+13D↑j
                movzx   r8d, r14b
                movzx   edx, r12b
                mov     rcx, rsi
                call    sub_1402F0A40
                movzx   ebp, al
                jmp     short loc_140234988
; ---------------------------------------------------------------------------

loc_1402349D7:                          ; CODE XREF: sub_140234870+8C↑j
                mov     rcx, rbx
                call    sub_14025FC20
                jmp     loc_140234902
; ---------------------------------------------------------------------------

loc_1402349E4:                          ; CODE XREF: sub_140234870+E3↑j
                mov     rcx, rbx
                call    sub_140313680

loc_1402349EC:                          ; CODE XREF: sub_140234870+D1↑j
                mov     [rbx], rdi
                lock xor qword ptr [rax+8], 1
                jmp     loc_140234959
sub_140234870   endp

; ---------------------------------------------------------------------------
algn_1402349FA:                         ; DATA XREF: .rdata:00000001400543C4↑o
                                        ; .pdata:00000001400CB598↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140234A00   proc near               ; CODE XREF: NtSetInformationFile+611↓p
                                        ; sub_14063FB00+770↓p ...
                mov     rax, gs:188h
                inc     qword ptr [rax+390h]
                inc     dword ptr gs:2EE4h
                retn
sub_140234A00   endp

; ---------------------------------------------------------------------------
                align 2
algn_140234A1A:                         ; DATA XREF: .pdata:00000001400CB5A4↑o
                align 20h
; Exported entry 734. IoAllocateMdl

; =============== S U B R O U T I N E =======================================


