IoFreeIrp       proc near               ; CODE XREF: sub_1402177E0+3AD↑p
                                        ; sub_14023D030+242↑p ...
                sub     rsp, 28h
                mov     eax, cs:dword_140CFC758
                test    eax, eax
                jnz     short loc_14023D8C9
                call    sub_14023D8E0

loc_14023D8C3:                          ; CODE XREF: IoFreeIrp+1E↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023D8C9:                          ; CODE XREF: IoFreeIrp+C↑j
                call    sub_1409C71E0
                jmp     short loc_14023D8C3
IoFreeIrp       endp

; ---------------------------------------------------------------------------
algn_14023D8D0:                         ; DATA XREF: .pdata:00000001400CB9E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14023D8E0   proc near               ; CODE XREF: IoFreeIrp+E↑p
                                        ; sub_14025D100+4C5↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014042EEEE SIZE 0000004D BYTES

                push    rbx
                sub     rsp, 30h
                xor     eax, eax
                mov     rbx, rcx
                cmp     word ptr [rcx], 6
                jnz     loc_14042EEEE
                mov     [rcx], ax
                movzx   eax, byte ptr [rcx+47h]
                test    al, 40h
                jnz     loc_14023DA9C

loc_14023D904:                          ; CODE XREF: sub_14023D8E0+1CD↓j
                and     al, 21h
                cmp     al, 21h ; '!'
                jz      loc_14042EF09
                movzx   ecx, word ptr [rbx+4]
                mov     eax, cs:dword_140CFC404
                cmp     ecx, eax
                jnb     loc_14042EF17
                lfence
                lea     r10, qword_140CFDCC0
                mov     r10, [r10+rcx*8]

loc_14023D92E:                          ; CODE XREF: sub_14023D8E0+1F1640↓j
                movzx   eax, byte ptr [rbx+47h]
                test    al, 8
                jnz     loc_14042EF25

loc_14023D93A:                          ; CODE XREF: sub_14023D8E0+1F1656↓j
                test    al, 4
                jz      loc_14023DA32
                mov     eax, cs:dword_140C45910
                mov     r11d, 0D0h
                movsx   edx, byte ptr cs:dword_140C457B8
                movsx   r8d, byte ptr cs:dword_140C457BC
                test    al, 3
                jz      short loc_14023D982
                movzx   r9d, word ptr [rbx+2]
                movzx   eax, dx
                shl     ax, 3
                lea     ecx, [rax+rdx]
                shl     cx, 3
                add     cx, r11w
                cmp     r9w, cx
                jnz     loc_14023DA05

loc_14023D982:                          ; CODE XREF: sub_14023D8E0+7F↑j
                                        ; sub_14023D8E0+13D↓j ...
                movzx   r9d, word ptr [rbx+2]
                movzx   eax, dx
                shl     ax, 3

loc_14023D98E:                          ; DATA XREF: .rdata:0000000140055594↑o
                                        ; .rdata:00000001400555AC↑o ...
                mov     [rsp+38h+arg_0], rdi
                lea     ecx, [rax+rdx]
                shl     cx, 3
                add     cx, r11w
                cmp     r9w, cx
                jnb     loc_14023DA43
                movzx   eax, r8w
                shl     ax, 3
                lea     ecx, [rax+r8]
                shl     cx, 3
                add     cx, r11w
                cmp     r9w, cx
                jb      loc_14023DA4D
                mov     edi, 810h
                lea     ecx, [rdi+8]

loc_14023D9CE:                          ; CODE XREF: sub_14023D8E0+16B↓j
                                        ; sub_14023D8E0+175↓j
                mov     [rbx+38h], r9
                mov     rdi, [rdi+r10]
                inc     dword ptr [rdi+1Ch]
                movzx   eax, word ptr [rdi+10h]
                cmp     [rdi], ax
                jnb     short loc_14023DA5A

loc_14023D9E2:                          ; CODE XREF: sub_14023D8E0+18B↓j
                movzx   eax, byte ptr [rbx+47h]
                test    al, 1
                jnz     loc_14023DA8A

loc_14023D9EE:                          ; CODE XREF: sub_14023D8E0+1B7↓j
                mov     rdx, rbx
                mov     rcx, rdi
                call    ExpInterlockedPushEntrySList
                mov     rdi, [rsp+38h+arg_0]

loc_14023D9FE:                          ; CODE XREF: sub_14023D8E0+1F1632↓j
                                        ; DATA XREF: .pdata:00000001400CBA00↑o ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023DA05:                          ; CODE XREF: sub_14023D8E0+9C↑j
                movzx   eax, r8w
                shl     ax, 3
                lea     ecx, [rax+r8]
                shl     cx, 3
                add     cx, r11w
                cmp     r9w, cx
                jz      loc_14023D982
                mov     eax, 118h
                cmp     r9w, ax
                jz      loc_14023D982

loc_14023DA32:                          ; CODE XREF: sub_14023D8E0+5C↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023DA43:                          ; CODE XREF: sub_14023D8E0+C2↑j
                                        ; DATA XREF: .pdata:00000001400CBA0C↑o ...
                mov     edi, 820h
                lea     ecx, [rdi+8]
                jmp     short loc_14023D9CE
; ---------------------------------------------------------------------------

loc_14023DA4D:                          ; CODE XREF: sub_14023D8E0+E0↑j
                mov     edi, 800h
                lea     ecx, [rdi+8]
                jmp     loc_14023D9CE
; ---------------------------------------------------------------------------

loc_14023DA5A:                          ; CODE XREF: sub_14023D8E0+100↑j
                inc     dword ptr [rdi+20h]
                mov     rdi, [r10+rcx]
                inc     dword ptr [rdi+1Ch]
                movzx   eax, word ptr [rdi+10h]
                cmp     [rdi], ax
                jb      loc_14023D9E2
                inc     dword ptr [rdi+20h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rdi, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14023DA89:                         ; DATA XREF: .pdata:00000001400CBA18↑o
                                        ; .pdata:00000001400CBA24↑o
                align 2

loc_14023DA8A:                          ; CODE XREF: sub_14023D8E0+108↑j
                                        ; DATA XREF: .pdata:00000001400CBA24↑o ...
                xor     al, 1
                mov     rcx, rbx
                mov     [rbx+47h], al
                call    sub_14034132C
                jmp     loc_14023D9EE
; ---------------------------------------------------------------------------

loc_14023DA9C:                          ; CODE XREF: sub_14023D8E0+1E↑j
                                        ; DATA XREF: .pdata:00000001400CBA30↑o ...
                mov     r8b, 1
                mov     edx, 0FFFFFFFFh
                call    sub_1402F0FC8
                movzx   eax, byte ptr [rbx+47h]
                jmp     loc_14023D904
sub_14023D8E0   endp

; ---------------------------------------------------------------------------
algn_14023DAB2:                         ; DATA XREF: .pdata:00000001400CBA3C↑o
                align 20h
; Exported entry 267. ExQueryDepthSList

; =============== S U B R O U T I N E =======================================


