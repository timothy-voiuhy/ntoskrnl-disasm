SeSetAuditParameter proc near           ; CODE XREF: sub_1408735F8+B8↓p
                                        ; sub_1408735F8+18B↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047CC36 SIZE 00000099 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                xor     r11d, r11d
                mov     rbx, rcx
                mov     r10d, r11d
                test    rcx, rcx
                jz      loc_14047CC36
                cmp     edx, 23h        ; switch 36 cases
                ja      def_140340981   ; jumptable 0000000140340981 default case, cases 24,25,29-33
                lea     rdi, cs:140000000h
                movsxd  rax, edx
                movzx   eax, ds:(byte_140340A28 - 140000000h)[rdi+rax]
                mov     ecx, ds:(jpt_140340981 - 140000000h)[rdi+rax*4]
                add     rcx, rdi
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_140340987:                          ; CODE XREF: SeSetAuditParameter+41↑j
                                        ; DATA XREF: SeSetAuditParameter:jpt_140340981↓o
                mov     rax, [r9]       ; jumptable 0000000140340981 cases 5,12,14,15,18,22,26,35
                mov     r10d, 8

loc_140340990:                          ; CODE XREF: SeSetAuditParameter+7D↓j
                mov     ecx, r8d
                shl     rcx, 5
                add     rcx, rbx
                mov     [rcx+20h], rax

loc_14034099E:                          ; CODE XREF: SeSetAuditParameter+95↓j
                                        ; SeSetAuditParameter+13C30E↓j ...
                mov     [rcx+18h], edx
                mov     [rcx+1Ch], r10d

loc_1403409A5:                          ; CODE XREF: SeSetAuditParameter+13C319↓j
                                        ; SeSetAuditParameter+13C38A↓j
                mov     eax, r11d

loc_1403409A8:                          ; CODE XREF: SeSetAuditParameter+13C2FB↓j
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403409B4:                          ; CODE XREF: SeSetAuditParameter+41↑j
                                        ; DATA XREF: SeSetAuditParameter:jpt_140340981↓o
                mov     eax, [r9]       ; jumptable 0000000140340981 cases 3,10,21,27
                mov     r10d, 4
                jmp     short loc_140340990
; ---------------------------------------------------------------------------

loc_1403409BF:                          ; CODE XREF: SeSetAuditParameter+41↑j
                                        ; DATA XREF: SeSetAuditParameter:jpt_140340981↓o
                movzx   r10d, word ptr [r9] ; jumptable 0000000140340981 cases 1,2,34
                add     r10d, 10h

loc_1403409C7:                          ; CODE XREF: SeSetAuditParameter+AB↓j
                                        ; SeSetAuditParameter+B8↓j ...
                mov     ecx, r8d
                shl     rcx, 5
                add     rcx, rbx
                mov     [rcx+30h], r9
                jmp     short loc_14034099E
; ---------------------------------------------------------------------------

loc_1403409D7:                          ; CODE XREF: SeSetAuditParameter+41↑j
                                        ; DATA XREF: SeSetAuditParameter:jpt_140340981↓o
                movzx   eax, word ptr [r9] ; jumptable 0000000140340981 cases 23,28
                cmp     ax, 17h
                jz      short loc_1403409F2
                mov     r10d, 10h
                cmp     ax, 2
                jz      short loc_1403409C7
                jmp     loc_14047CC99
; ---------------------------------------------------------------------------

loc_1403409F2:                          ; CODE XREF: SeSetAuditParameter+9F↑j
                mov     r10d, 1Ch
                jmp     short loc_1403409C7
; ---------------------------------------------------------------------------
                align 4
jpt_140340981   dd offset loc_14047CC40 - 140000000h
                                        ; DATA XREF: SeSetAuditParameter+37↑r
                dd offset loc_1403409BF - 140000000h ; jump table for switch statement
                dd offset loc_1403409B4 - 140000000h
                dd offset loc_14047CC5E - 140000000h
                dd offset loc_140340987 - 140000000h
                dd offset loc_14047CC53 - 140000000h
                dd offset loc_14047CC75 - 140000000h
                dd offset loc_14047CCAB - 140000000h
                dd offset loc_14047CC8E - 140000000h
                dd offset loc_1403409D7 - 140000000h
                dd offset def_140340981 - 140000000h
byte_140340A28  db      0,     1,     1,     2
                                        ; DATA XREF: SeSetAuditParameter+2F↑r
                db      3,     4,     0,     5 ; indirect table for switch statement
                db      6,     5,     2,     7
                db      4,     8,     4,     4
                db      5,     5,     4,     5
                db      5,     2,     4,     9
                db    0Ah,   0Ah,     4,     2
                db      9,   0Ah,   0Ah,   0Ah
                db    0Ah,   0Ah,     1,     4
SeSetAuditParameter endp
