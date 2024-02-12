RtlFindClearRuns proc near              ; CODE XREF: RtlFindLongestRunClear+17↓p
                                        ; DATA XREF: .rdata:000000014009BE24↑o ...

var_58          = dword ptr -58h
var_54          = dword ptr -54h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404A1732 SIZE 00000024 BYTES

                mov     [rsp+arg_18], r9b
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 18h
                mov     r15, rdx
                mov     edi, 0
                mov     r12d, r8d
                movzx   r10d, r9b
                mov     r8d, [rcx]
                mov     edx, r8d
                mov     r9, [rcx+8]
                and     edx, 7
                mov     eax, r8d
                mov     [rsp+58h+var_54], r8d
                setnz   dil
                mov     [rsp+58h+var_58], edx
                shr     eax, 3
                add     edi, eax
                mov     eax, 0
                mov     r14d, eax
                mov     r11d, eax
                mov     r13d, eax
                jz      short loc_1403648DD
                lea     esi, [rdi-1]
                xor     ebx, ebx
                lea     rbp, cs:140000000h
                nop     dword ptr [rax+rax+00h]

loc_1403648B0:                          ; CODE XREF: RtlFindClearRuns+95↓j
                movzx   r10d, byte ptr [r9]
                lea     r9, [r9+1]
                cmp     eax, esi
                jz      loc_14036499F

loc_1403648C0:                          ; CODE XREF: RtlFindClearRuns+161↓j
                                        ; RtlFindClearRuns+175↓j
                test    r10b, r10b
                jnz     short loc_140364937
                add     r11d, 8

loc_1403648C9:                          ; CODE XREF: RtlFindClearRuns+15A↓j
                                        ; RtlFindClearRuns+2F7↓j
                mov     r15, [rsp+58h+arg_8]
                inc     eax
                add     ebx, 8
                cmp     eax, edi
                jb      short loc_1403648B0
                movzx   r10d, [rsp+58h+arg_18]

loc_1403648DD:                          ; CODE XREF: RtlFindClearRuns+5D↑j
                test    r11d, r11d
                jz      short loc_140364922
                cmp     r14d, r12d
                jnb     loc_140364B5B

loc_1403648EB:                          ; CODE XREF: RtlFindClearRuns+324↓j
                cmp     r14d, r12d
                lea     eax, [r14+1]
                cmovnb  eax, r14d
                mov     r14d, eax
                lea     edx, [rax-2]
                test    r10b, r10b
                jz      short loc_140364915
                movsxd  rcx, edx
                lea     r8, [rcx+1]
                lea     r8, [r15+r8*8]

loc_14036490C:                          ; CODE XREF: RtlFindClearRuns+316↓j
                test    rcx, rcx
                jns     loc_140364B3C

loc_140364915:                          ; CODE XREF: RtlFindClearRuns+BF↑j
                                        ; RtlFindClearRuns+300↓j
                movsxd  rcx, edx
                mov     [r15+rcx*8+0Ch], r11d
                mov     [r15+rcx*8+8], r13d

loc_140364922:                          ; CODE XREF: RtlFindClearRuns+A0↑j
                                        ; RtlFindClearRuns+32A↓j ...
                mov     eax, r14d

loc_140364925:                          ; CODE XREF: RtlFindClearRuns+13CF03↓j
                add     rsp, 18h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140364937:                          ; CODE XREF: RtlFindClearRuns+83↑j
                movzx   r8d, r10b
                movzx   ebp, byte ptr [r8+rbp+1DAF0h]
                add     r11d, ebp
                jnz     short loc_1403649BA

loc_140364949:                          ; CODE XREF: RtlFindClearRuns+188↓j
                                        ; RtlFindClearRuns+203↓j
                lea     rcx, cs:140000000h
                mov     r13d, ebx
                movzx   r11d, byte ptr [r8+rcx+1DBF0h]
                mov     r8, rbp
                sub     r13d, r11d
                lea     rcx, qword_14001A878
                sub     rcx, r11
                lea     rbp, cs:140000000h
                add     r13d, 8
                movzx   edx, byte ptr [rcx]
                movzx   ecx, byte ptr [r8+rbp+1DAE0h]
                or      cl, dl
                or      r10b, cl
                cmp     r10b, 0FFh
                jnz     loc_140364A50

loc_140364992:                          ; CODE XREF: RtlFindClearRuns+22B↓j
                mov     edx, [rsp+58h+var_58]
                mov     r8d, [rsp+58h+var_54]
                jmp     loc_1403648C9
; ---------------------------------------------------------------------------

loc_14036499F:                          ; CODE XREF: RtlFindClearRuns+7A↑j
                test    edx, edx
                jz      loc_1403648C0
                mov     ecx, r8d
                and     ecx, 7
                or      r10b, [rcx+rbp+1A870h]
                jmp     loc_1403648C0
; ---------------------------------------------------------------------------

loc_1403649BA:                          ; CODE XREF: RtlFindClearRuns+107↑j
                cmp     r14d, r12d
                jb      short loc_1403649CE
                lea     ecx, [r14-1]
                cmp     [r15+rcx*8+4], r11d
                jnb     loc_140364949

loc_1403649CE:                          ; CODE XREF: RtlFindClearRuns+17D↑j
                cmp     r14d, r12d
                lea     ecx, [r14+1]
                cmovnb  ecx, r14d
                cmp     [rsp+58h+arg_18], 0
                mov     r14d, ecx
                mov     r12d, ecx
                lea     r15d, [rcx-2]
                jz      short loc_140364A21
                mov     rdx, [rsp+58h+arg_8]
                movsxd  r14, r15d
                lea     rdx, [rdx+r14*8]
                add     rdx, 8
                nop     word ptr [rax+rax+00h]

loc_140364A00:                          ; CODE XREF: RtlFindClearRuns+1DC↓j
                test    r14, r14
                js      short loc_140364A1E
                cmp     [rdx-4], r11d
                jnb     short loc_140364A1E
                mov     rcx, [rdx-8]
                dec     r15d
                dec     r14
                mov     [rdx], rcx
                sub     rdx, 8
                jmp     short loc_140364A00
; ---------------------------------------------------------------------------

loc_140364A1E:                          ; CODE XREF: RtlFindClearRuns+1C3↑j
                                        ; RtlFindClearRuns+1C9↑j
                mov     r14d, r12d

loc_140364A21:                          ; CODE XREF: RtlFindClearRuns+1A8↑j
                cmp     [rsp+58h+arg_18], 0
                movsxd  rcx, r15d
                mov     r15, [rsp+58h+arg_8]
                mov     [r15+rcx*8+0Ch], r11d
                mov     [r15+rcx*8+8], r13d
                jz      loc_1404A1732

loc_140364A3E:                          ; CODE XREF: RtlFindClearRuns+13CEFA↓j
                mov     r12d, [rsp+58h+arg_10]
                jmp     loc_140364949
; ---------------------------------------------------------------------------
                align 10h

loc_140364A50:                          ; CODE XREF: RtlFindClearRuns+14C↑j
                                        ; RtlFindClearRuns+2E2↓j
                movzx   r8d, r10b
                cmp     r14d, r12d
                jb      short loc_140364A71
                movzx   ecx, byte ptr [r8+rbp+17A10h]
                lea     edx, [r14-1]
                cmp     [r15+rdx*8+4], ecx
                jnb     loc_140364992

loc_140364A71:                          ; CODE XREF: RtlFindClearRuns+217↑j
                movzx   r12d, byte ptr [r8+rbp+17A10h]
                xor     r15d, r15d
                movzx   ebp, byte ptr [r12+rbp+1DAE0h]
                test    r10b, bpl
                jz      short loc_140364A96

loc_140364A8B:                          ; CODE XREF: RtlFindClearRuns+254↓j
                add     bpl, bpl
                inc     r15d
                test    r10b, bpl
                jnz     short loc_140364A8B

loc_140364A96:                          ; CODE XREF: RtlFindClearRuns+249↑j
                cmp     r14d, [rsp+58h+arg_10]
                lea     ecx, [r14+1]
                cmovnb  ecx, r14d
                mov     r14d, ecx
                mov     [rsp+58h+arg_0], ecx
                add     r14d, 0FFFFFFFEh
                cmp     [rsp+58h+arg_18], 0
                jz      short loc_140364AE3
                mov     rdx, [rsp+58h+arg_8]
                add     rdx, 8
                movsxd  r8, r14d
                lea     rdx, [rdx+r8*8]

loc_140364AC5:                          ; CODE XREF: RtlFindClearRuns+2A1↓j
                test    r8, r8
                js      short loc_140364AE3
                cmp     [rdx-4], r12d
                jnb     short loc_140364AE3
                mov     rcx, [rdx-8]
                dec     r14d
                dec     r8
                mov     [rdx], rcx
                sub     rdx, 8
                jmp     short loc_140364AC5
; ---------------------------------------------------------------------------

loc_140364AE3:                          ; CODE XREF: RtlFindClearRuns+273↑j
                                        ; RtlFindClearRuns+288↑j ...
                cmp     [rsp+58h+arg_18], 0
                mov     rdx, [rsp+58h+arg_8]
                movsxd  rcx, r14d
                mov     r14d, [rsp+58h+arg_0]
                lea     rdx, [rdx+rcx*8]
                lea     ecx, [rbx+r15]
                mov     [rdx+0Ch], r12d
                mov     r12d, [rsp+58h+arg_10]
                mov     [rdx+8], ecx
                jz      loc_1404A1748

loc_140364B0F:                          ; CODE XREF: RtlFindClearRuns+13CF11↓j
                mov     r15, [rsp+58h+arg_8]
                or      r10b, bpl
                lea     rbp, cs:140000000h
                cmp     r10b, 0FFh
                jnz     loc_140364A50
                mov     edx, [rsp+58h+var_58]
                lea     rbp, cs:140000000h
                mov     r8d, [rsp+58h+var_54]
                jmp     loc_1403648C9
; ---------------------------------------------------------------------------

loc_140364B3C:                          ; CODE XREF: RtlFindClearRuns+CF↑j
                cmp     [r8-4], r11d
                jnb     loc_140364915
                mov     rax, [r8-8]
                dec     edx
                dec     rcx
                mov     [r8], rax
                sub     r8, 8
                jmp     loc_14036490C
; ---------------------------------------------------------------------------

loc_140364B5B:                          ; CODE XREF: RtlFindClearRuns+A5↑j
                lea     eax, [r14-1]
                cmp     [r15+rax*8+4], r11d
                jb      loc_1403648EB
                jmp     loc_140364922
RtlFindClearRuns endp
