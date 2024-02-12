NtQuerySystemInformation proc near      ; CODE XREF: sub_1403CD9F4+29↑p
                                        ; sub_1407CC94C+228↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = word ptr  8

; FUNCTION CHUNK AT 00000001407FC030 SIZE 0000000A BYTES

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                mov     r11d, r8d
                mov     [rsp+38h+arg_0], r10w
                mov     rbx, rdx
                cmp     ecx, 4Ah ; 'J'
                jl      short loc_14060D8BE
                cmp     ecx, 53h ; 'S'
                jge     short loc_14060D8BE

def_14060D8E5:                          ; CODE XREF: NtQuerySystemInformation+46↓j
                                        ; NtQuerySystemInformation+65↓j
                                        ; DATA XREF: ...
                mov     r8d, r10d       ; jumptable 000000014060D8E5 default case, cases 9-22,24-41,43-60,62-72,74-82,84-99,101-106,109-120,122-140,142-179,181-209

loc_14060D8A2:                          ; CODE XREF: NtQuerySystemInformation+8B↓j
                mov     [rsp+38h+var_10], r9
                mov     rdx, r10
                mov     r9, rbx
                mov     [rsp+38h+var_18], r11d
                call    sub_14060DA00

loc_14060D8B7:                          ; CODE XREF: NtQuerySystemInformation+1EE7B5↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14060D8BE:                          ; CODE XREF: NtQuerySystemInformation+18↑j
                                        ; NtQuerySystemInformation+1D↑j
                lea     eax, [rcx-8]    ; switch 204 cases
                cmp     eax, 0CBh
                ja      short def_14060D8E5 ; jumptable 000000014060D8E5 default case, cases 9-22,24-41,43-60,62-72,74-82,84-99,101-106,109-120,122-140,142-179,181-209
                lea     r8, cs:140000000h
                cdqe
                movzx   eax, ds:(byte_14060D920 - 140000000h)[r8+rax]
                mov     edx, ds:(jpt_14060D8E5 - 140000000h)[r8+rax*4]
                add     rdx, r8
                jmp     rdx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14060D8EB:                          ; CODE XREF: NtQuerySystemInformation+65↑j
                                        ; DATA XREF: NtQuerySystemInformation:jpt_14060D8E5↓o
                mov     rax, gs:20h     ; jumptable 000000014060D8E5 cases 8,23,42,61,83,100,108,141
                movzx   edx, byte ptr [rax+0D0h]
                mov     [rsp+38h+arg_0], dx

loc_14060D900:                          ; CODE XREF: NtQuerySystemInformation+65↑j
                                        ; DATA XREF: NtQuerySystemInformation:jpt_14060D8E5↓o
                lea     r10, [rsp+38h+arg_0] ; jumptable 000000014060D8E5 case 73
                mov     r8d, 2
                jmp     short loc_14060D8A2
; ---------------------------------------------------------------------------
                align 10h
jpt_14060D8E5   dd offset loc_14060D8EB - 140000000h
                                        ; DATA XREF: NtQuerySystemInformation+5A↑r
                dd offset loc_14060D900 - 140000000h ; jump table for switch statement
                dd offset loc_1407FC030 - 140000000h
                dd offset def_14060D8E5 - 140000000h
byte_14060D920  db 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3
                                        ; DATA XREF: NtQuerySystemInformation+51↑r
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3 ; indirect table for switch statement
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 0, 3, 3, 3, 3, 3, 3, 2, 0, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
                db 3, 3, 3, 3, 2, 2
NtQuerySystemInformation endp
