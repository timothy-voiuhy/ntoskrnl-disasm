IoAllocateMdl   proc near               ; CODE XREF: sub_1402F2C28+B5↓p
                                        ; sub_14030FA70+285↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014042CB4C SIZE 00000029 BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_10], r8b
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r15
                sub     rsp, 20h
                mov     r13, [rsp+48h+arg_20]
                xor     eax, eax
                mov     esi, ecx
                mov     ebx, edx
                add     rbx, 0FFFh
                mov     r12d, edx
                mov     r9d, esi
                mov     rdi, rcx
                and     r9d, 0FFFh
                movzx   r15d, ax
                add     rbx, r9
                shr     rbx, 0Ch
                cmp     ebx, 11h
                ja      loc_140234B6A

loc_140234A6C:                          ; DATA XREF: .rdata:00000001400543F0↑o
                                        ; .rdata:0000000140054408↑o ...
                mov     [rsp+48h+arg_0], rbp
                lea     r15d, [rax+8]
                mov     [rsp+48h+arg_8], r14
                mov     r14, gs:20h
                mov     rbp, [r14+830h]
                mov     rcx, rbp
                inc     dword ptr [rbp+14h]
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jz      loc_140234B28

loc_140234A9E:                          ; CODE XREF: IoAllocateMdl+120↓j
                                        ; IoAllocateMdl+13F↓j
                mov     ecx, [r14+24h]
                mov     [rax], ecx

loc_140234AA4:                          ; CODE XREF: IoAllocateMdl+145↓j
                mov     r14, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_0]
                test    rax, rax
                jz      loc_14042CB4C

loc_140234AB7:                          ; DATA XREF: .pdata:00000001400CB5BC↑o
                                        ; .pdata:00000001400CB5C8↑o
                movzx   ecx, word ptr [rax]

loc_140234ABA:                          ; CODE XREF: IoAllocateMdl+170↓j
                mov     [rax+0Ch], cx
                add     bx, 6
                shl     bx, 3
                and     rdi, 0FFFFFFFFFFFFF000h
                and     esi, 0FFFh
                mov     qword ptr [rax], 0
                mov     [rax+8], bx
                mov     [rax+20h], rdi
                mov     [rax+2Ch], esi
                mov     [rax+28h], r12d
                mov     [rax+0Ah], r15w
                test    r13, r13
                jnz     short loc_140234B06

loc_140234AF3:                          ; CODE XREF: IoAllocateMdl:loc_140234B95↓j
                                        ; IoAllocateMdl+1F8150↓j
                mov     rbx, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140234B06:                          ; CODE XREF: IoAllocateMdl+D1↑j
                cmp     [rsp+48h+arg_10], 0
                jnz     loc_14042CB56
                mov     rbx, [rsp+48h+arg_18]
                mov     [r13+8], rax
                add     rsp, 20h
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140234B28:                          ; CODE XREF: IoAllocateMdl+78↑j
                                        ; DATA XREF: .pdata:00000001400CB5C8↑o ...
                inc     dword ptr [rbp+18h]
                mov     rbp, [r14+838h]
                mov     rcx, rbp
                inc     dword ptr [rbp+14h]
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jnz     loc_140234A9E
                mov     edx, [rbp+2Ch]
                mov     rax, [rbp+30h]
                mov     r8d, [rbp+28h]
                mov     ecx, [rbp+24h]
                inc     dword ptr [rbp+18h]
                call    sub_1404079D0
                test    rax, rax
                jnz     loc_140234A9E
                jmp     loc_140234AA4
; ---------------------------------------------------------------------------

loc_140234B6A:                          ; CODE XREF: IoAllocateMdl+46↑j
                                        ; DATA XREF: .pdata:00000001400CB5D4↑o ...
                lea     eax, ds:30h[rbx*8]

loc_140234B71:                          ; CODE XREF: IoAllocateMdl+1F8131↓j
                mov     edx, eax
                mov     ecx, 200h
                mov     r8d, 206C644Dh
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_140234B95
                mov     ecx, gs:1A4h
                jmp     loc_140234ABA
; ---------------------------------------------------------------------------

loc_140234B95:                          ; CODE XREF: IoAllocateMdl+166↑j
                jmp     loc_140234AF3
IoAllocateMdl   endp

; ---------------------------------------------------------------------------
algn_140234B9A:                         ; DATA XREF: .pdata:00000001400CB5E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140234BA0   proc near               ; CODE XREF: sub_1406431F0+B6A↓p
                                        ; sub_140893B3C+389↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014042CB76 SIZE 0000001E BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                movzx   eax, dl
                test    r8d, r8d
                mov     r10d, 1
                mov     ecx, r10d
                mov     rdi, r9
                cmovz   ecx, r8d
                test    dl, dl
                mov     r8d, ecx
                mov     rcx, rbx
                cmovz   r10d, eax
                movzx   edx, r10b
                call    sub_140221A30
                mov     eax, cs:dword_140CFC4EC
                test    al, 1
                jnz     loc_14042CB76

loc_140234BE6:                          ; CODE XREF: sub_140234BA0+1F7FEF↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140234BA0   endp

algn_140234BF2:                         ; DATA XREF: .rdata:0000000140054460↑o
                                        ; .pdata:00000001400CB5EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140234C00   proc near               ; CODE XREF: sub_140233220+56↑p
                                        ; sub_1402F26A0+115↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042CB94 SIZE 000001FB BYTES

                push    rbx
                push    rdi
                sub     rsp, 38h
                mov     rdi, [rcx+5C0h]
                mov     rbx, rcx
                test    rdi, rdi
                jnz     short loc_140234C23
                mov     eax, 0C0000001h

loc_140234C1B:                          ; CODE XREF: sub_140234C00+104↓j
                add     rsp, 38h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140234C23:                          ; CODE XREF: sub_140234C00+14↑j
                                        ; DATA XREF: .rdata:0000000140054488↑o ...
                mov     [rsp+48h+arg_8], rbp
                mov     rbp, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+48h+arg_10], rsi

loc_140234C34:                          ; DATA XREF: .rdata:00000001400544A0↑o
                                        ; .rdata:00000001400544B4↑o ...
                mov     [rsp+48h+var_18], r12
                mov     [rsp+48h+var_28], r15
                xor     r15d, r15d
                test    dword ptr [rcx+78h], 200h
                lea     r12d, [rbp+3]
                jnz     loc_140234D09

loc_140234C52:                          ; CODE XREF: sub_140234C00+1A8↓j
                mov     rsi, cr8
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                mov     r12, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14042CCA6

loc_140234C6D:                          ; CODE XREF: sub_140234C00+1F80A8↓j
                                        ; sub_140234C00+1F80B2↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                lea     rcx, dword_140C1DF40
                movzx   edx, sil
                jnz     loc_14042CCE7
                call    sub_140234420

loc_140234C8A:                          ; CODE XREF: sub_140234C00+1F80ED↓j
                mov     rcx, rbx
                mov     [rbx+5C0h], r15
                call    sub_1402899F0
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14042CCF2
                mov     cs:dword_140C1DF40, r15d

loc_140234CAD:                          ; CODE XREF: sub_140234C00+1F8104↓j
                mov     rcx, gs:20h
                mov     r15, [rsp+48h+var_28]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042CD09

loc_140234CCB:                          ; CODE XREF: sub_140234C00+1F810D↓j
                                        ; sub_140234C00+1F811C↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042CD2D

loc_140234CD9:                          ; CODE XREF: sub_140234C00+1F812F↓j
                                        ; sub_140234C00+1F813B↓j ...
                movzx   eax, sil
                mov     cr8, rax
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140251C20
                mov     edx, 746E6F43h
                mov     rcx, rdi
                call    ObDereferenceObjectDeferDeleteWithTag
                mov     rsi, [rsp+48h+arg_10]
                xor     eax, eax
                mov     rbp, [rsp+48h+arg_8]
                jmp     loc_140234C1B
; ---------------------------------------------------------------------------

loc_140234D09:                          ; CODE XREF: sub_140234C00+4C↑j
                                        ; DATA XREF: .pdata:00000001400CB628↑o ...
                mov     [rsp+48h+var_20], r14
                mov     rcx, cr8
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042CB94

loc_140234D24:                          ; CODE XREF: sub_140234C00+1F7F96↓j
                                        ; sub_140234C00+1F7F9F↓j ...
                mov     rsi, gs:20h
                cli
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402CDFD0
                sti
                mov     r14, gs:20h
                mov     [rsp+48h+arg_0], r15d
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_14042CBD3

loc_140234D5B:                          ; CODE XREF: sub_140234C00+1DD↓j
                                        ; sub_140234C00+1F7FD8↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      short loc_140234DAD
                lock btr dword ptr [rbx], 12h
                mov     [rbx+68h], r15
                lock btr dword ptr [rbx+78h], 9
                lock and [rsi+30h], r15
                mov     rcx, gs:20h
                mov     r14, [rsp+48h+var_20]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042CC3F

loc_140234D96:                          ; CODE XREF: sub_140234C00+1F8043↓j
                                        ; sub_140234C00+1F8052↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042CC63

loc_140234DA4:                          ; CODE XREF: sub_140234C00+1F8065↓j
                                        ; sub_140234C00+1F8074↓j ...
                mov     cr8, r15
                jmp     loc_140234C52
; ---------------------------------------------------------------------------

loc_140234DAD:                          ; CODE XREF: sub_140234C00+162↑j
                                        ; DATA XREF: .rdata:00000001400544D8↑o ...
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_14042CBFB
                nop     dword ptr [rax]

loc_140234DC0:                          ; CODE XREF: sub_140234C00+1D1↓j
                                        ; sub_140234C00+1F8000↓j ...
                lea     rcx, [rsp+48h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_140234DC0
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jz      loc_140234D5B
                jmp     loc_14042CC23
sub_140234C00   endp

; ---------------------------------------------------------------------------
algn_140234DE8:                         ; DATA XREF: .pdata:00000001400CB64C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140234DF0   proc near               ; CODE XREF: sub_1403F1520+31↓p
                                        ; DATA XREF: .pdata:00000001400CB658↑o

; FUNCTION CHUNK AT 000000014042CD90 SIZE 00000011 BYTES

                mov     eax, ecx
                test    rdx, rdx
                jnz     loc_14042CD90
                mov     rcx, gs:188h
                add     [rcx+3A8h], rax

loc_140234E0B:                          ; CODE XREF: sub_140234DF0+1F7FAC↓j
                add     gs:2EF8h, rax
                retn
sub_140234DF0   endp

; ---------------------------------------------------------------------------
                align 2
algn_140234E16:                         ; DATA XREF: .pdata:00000001400CB658↑o
                align 20h
; Exported entry 1619. NtSetInformationFile

; =============== S U B R O U T I N E =======================================


