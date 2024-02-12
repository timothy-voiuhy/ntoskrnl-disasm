IoApplyPriorityInfoThread proc near     ; DATA XREF: .rdata:000000014006F228↑o
                                        ; .pdata:00000001400D3704↑o

var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140466290 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     dword ptr [rcx+4], 0FFFFh
                mov     rbx, r8
                mov     rsi, rdx
                mov     rdi, rcx
                jz      loc_140466290
                mov     edx, [rcx+0Ch]
                mov     rcx, rbx
                call    sub_1402FA570
                mov     edx, [rdi+8]
                mov     dword ptr [rsp+38h+var_18+0Ch], eax
                cmp     edx, 0FFFFFFFFh
                jz      short loc_1402FA855
                mov     rcx, rbx
                call    sub_1402FA864
                mov     dword ptr [rsp+38h+var_18+8], eax

loc_1402FA808:                          ; CODE XREF: IoApplyPriorityInfoThread+9A↓j
                mov     edx, [rdi+4]
                cmp     edx, 0FFFFFFFFh
                jz      short loc_1402FA83B
                movsx   eax, byte ptr [rbx+233h]
                mov     rcx, rbx
                mov     dword ptr [rsp+38h+var_18+4], eax
                call    KeSetActualBasePriorityThread

loc_1402FA823:                          ; CODE XREF: IoApplyPriorityInfoThread+80↓j
                test    rsi, rsi
                jnz     short loc_1402FA842

loc_1402FA828:                          ; CODE XREF: IoApplyPriorityInfoThread+93↓j
                xor     eax, eax

loc_1402FA82A:                          ; CODE XREF: IoApplyPriorityInfoThread+16BAD5↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402FA83B:                          ; CODE XREF: IoApplyPriorityInfoThread+4E↑j
                or      dword ptr [rsp+38h+var_18+4], 0FFFFFFFFh
                jmp     short loc_1402FA823
; ---------------------------------------------------------------------------

loc_1402FA842:                          ; CODE XREF: IoApplyPriorityInfoThread+66↑j
                mov     dword ptr [rsp+38h+var_18], 10h
                movups  xmm0, [rsp+38h+var_18]
                movdqu  xmmword ptr [rsi], xmm0
                jmp     short loc_1402FA828
; ---------------------------------------------------------------------------

loc_1402FA855:                          ; CODE XREF: IoApplyPriorityInfoThread+3A↑j
                or      dword ptr [rsp+38h+var_18+8], 0FFFFFFFFh
                jmp     short loc_1402FA808
IoApplyPriorityInfoThread endp
