RtlCrc64        proc near               ; DATA XREF: .pdata:00000001400D72C8↑o
                sub     rsp, 28h
                lea     r9, off_140004FA0
                call    sub_140340CB0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCrc64        endp

algn_140340CA6:                         ; DATA XREF: .pdata:00000001400D72C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140340CB0   proc near               ; CODE XREF: RtlCrc64+B↑p
                                        ; sub_14056EFE4+4A↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047D4D2 SIZE 0000006A BYTES

                mov     [rsp+arg_18], r9
                push    rbx
                push    r12
                push    r13
                push    r14
                sub     rsp, 18h
                mov     r10, r9
                xor     r13d, r13d
                mov     r9, [r9+20h]
                mov     r12, rdx
                mov     rbx, r9
                mov     [rsp+38h+arg_0], r9
                xor     rbx, r8
                mov     r14, rcx
                mov     r8, rcx
                neg     r8
                and     r8d, 7
                jnz     loc_14047D4D2

loc_140340CEB:                          ; CODE XREF: sub_140340CB0+13C861↓j
                mov     rax, r12
                mov     rcx, r12
                and     eax, 1Fh
                sub     rcx, rax
                cmp     rcx, 40h ; '@'
                jb      loc_14034114C

loc_140340D01:                          ; DATA XREF: .rdata:0000000140080538↑o
                                        ; .rdata:000000014008054C↑o ...
                mov     [rsp+38h+arg_8], rbp
                mov     r12d, eax
                mov     [rsp+38h+var_28], rsi
                mov     rbp, r13
                mov     [rsp+38h+var_30], rdi
                mov     rsi, r13
                mov     [rsp+38h+var_38], r15
                mov     rdi, r13
                lea     r15, [r14-20h]
                add     r15, rcx
                cmp     r14, r15
                jnb     loc_140340F56
                mov     rax, [r10+10h]
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_140340D40:                          ; CODE XREF: sub_140340CB0+296↓j
                prefetcht1 byte ptr [r14+100h]
                mov     r8, [r14]
                mov     r9, [r14+8]
                xor     r8, rbx
                mov     r10, [r14+10h]
                xor     r9, rdi
                mov     r11, [r14+18h]
                xor     r10, rsi
                xor     r11, rbp
                movzx   ecx, r8b
                shr     r8, 8
                mov     rbx, [rax+rcx*8+3800h]
                movzx   ecx, r9b
                shr     r9, 8
                mov     rdi, [rax+rcx*8+3800h]
                movzx   ecx, r10b
                shr     r10, 8
                mov     rsi, [rax+rcx*8+3800h]
                movzx   ecx, r11b
                shr     r11, 8
                mov     rbp, [rax+rcx*8+3800h]
                movzx   ecx, r8b
                shr     r8, 8
                xor     rbx, [rax+rcx*8+3000h]
                movzx   ecx, r9b
                shr     r9, 8
                xor     rdi, [rax+rcx*8+3000h]
                movzx   ecx, r10b
                shr     r10, 8
                xor     rsi, [rax+rcx*8+3000h]
                movzx   ecx, r11b
                shr     r11, 8
                xor     rbp, [rax+rcx*8+3000h]
                movzx   ecx, r8b
                shr     r8, 8
                xor     rbx, [rax+rcx*8+2800h]
                movzx   ecx, r9b
                shr     r9, 8
                xor     rdi, [rax+rcx*8+2800h]
                movzx   ecx, r10b
                shr     r10, 8
                xor     rsi, [rax+rcx*8+2800h]
                movzx   ecx, r11b
                shr     r11, 8
                xor     rbp, [rax+rcx*8+2800h]
                movzx   ecx, r8b
                shr     r8, 8
                xor     rbx, [rax+rcx*8+2000h]
                movzx   ecx, r9b
                shr     r9, 8
                xor     rdi, [rax+rcx*8+2000h]
                movzx   ecx, r10b
                shr     r10, 8
                xor     rsi, [rax+rcx*8+2000h]
                movzx   ecx, r11b
                shr     r11, 8
                xor     rbp, [rax+rcx*8+2000h]
                movzx   ecx, r8b
                shr     r8, 8
                xor     rbx, [rax+rcx*8+1800h]
                movzx   ecx, r9b
                shr     r9, 8
                xor     rdi, [rax+rcx*8+1800h]
                movzx   ecx, r10b
                shr     r10, 8
                xor     rsi, [rax+rcx*8+1800h]
                movzx   ecx, r11b
                shr     r11, 8
                xor     rbp, [rax+rcx*8+1800h]
                movzx   ecx, r8b
                shr     r8, 8
                movzx   edx, r8b
                xor     rbx, [rax+rcx*8+1000h]
                movzx   ecx, r9b
                shr     r9, 8
                xor     rdi, [rax+rcx*8+1000h]
                movzx   ecx, r10b
                shr     r10, 8
                xor     rsi, [rax+rcx*8+1000h]
                movzx   ecx, r11b
                xor     rbp, [rax+rcx*8+1000h]
                shr     r11, 8
                mov     rdx, [rax+rdx*8+800h]
                add     r14, 20h ; ' '
                shr     r8, 8
                xor     rdx, [rax+r8*8]
                xor     rbx, rdx
                movzx   edx, r9b
                shr     r9, 8
                mov     rdx, [rax+rdx*8+800h]
                xor     rdx, [rax+r9*8]
                xor     rdi, rdx
                movzx   edx, r10b
                shr     r10, 8
                mov     rdx, [rax+rdx*8+800h]
                xor     rdx, [rax+r10*8]
                xor     rsi, rdx
                movzx   edx, r11b
                shr     r11, 8
                mov     rdx, [rax+rdx*8+800h]
                xor     rdx, [rax+r11*8]
                xor     rbp, rdx
                cmp     r14, r15
                jb      loc_140340D40
                mov     r9, [rsp+38h+arg_0]
                mov     r10, [rsp+38h+arg_18]

loc_140340F56:                          ; CODE XREF: sub_140340CB0+7A↑j
                mov     r8, [r10+8]
                mov     rdx, [r14]
                xor     rdx, rbx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                xor     rdx, [r14+8]
                xor     rdx, rdi
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                xor     rdx, [r14+10h]
                xor     rdx, rsi
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                mov     r15, [rsp+38h+var_38]
                mov     rdi, [rsp+38h+var_30]
                mov     rsi, [rsp+38h+var_28]
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                xor     rdx, [r14+18h]
                xor     rdx, rbp
                mov     rbp, [rsp+38h+arg_8]
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rdx, [r8+rax*8]
                xor     rdx, rcx
                movzx   eax, dl
                shr     rdx, 8
                mov     rcx, [r8+rax*8]
                xor     rcx, rdx
                movzx   eax, cl
                shr     rcx, 8
                mov     rbx, [r8+rax*8]
                xor     rbx, rcx
                add     r14, 20h ; ' '

loc_14034114C:                          ; CODE XREF: sub_140340CB0+4B↑j
                                        ; DATA XREF: .pdata:00000001400D72E0↑o ...
                test    r12, r12
                jnz     short loc_140341164

loc_140341151:                          ; CODE XREF: sub_140340CB0+13C887↓j
                xor     r9, rbx
                mov     rax, r9
                add     rsp, 18h
                pop     r14
                pop     r13
                pop     r12
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140341164:                          ; CODE XREF: sub_140340CB0+49F↑j
                mov     r8, [r10+8]
                jmp     loc_14047D516
sub_140340CB0   endp

; ---------------------------------------------------------------------------
byte_14034116D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D72EC↑o

; =============== S U B R O U T I N E =======================================


sub_140341174   proc near               ; CODE XREF: sub_14067EC44+E9F↓p
                                        ; DATA XREF: .rdata:0000000140080578↑o ...

; FUNCTION CHUNK AT 000000014047D53C SIZE 00000013 BYTES

                sub     rsp, 28h
                movzx   r9d, dx
                test    rcx, rcx
                jz      short loc_1403411AD
                cmp     byte ptr [rcx+9], 0
                jge     short loc_1403411AD
                xor     r8d, r8d

loc_14034118A:                          ; CODE XREF: sub_140341174+37↓j
                mov     ecx, r8d
                call    sub_1406F7A6C
                mov     rdx, rax
                test    rax, rax
                jz      short loc_1403411A4
                mov     eax, [rax]
                test    al, 4
                jnz     loc_14047D53C

loc_1403411A4:                          ; CODE XREF: sub_140341174+24↑j
                                        ; sub_140341174+13C3CD↓j
                inc     r8d
                cmp     r8d, 6
                jl      short loc_14034118A

loc_1403411AD:                          ; CODE XREF: sub_140341174+B↑j
                                        ; sub_140341174+11↑j
                xor     edx, edx

loc_1403411AF:                          ; CODE XREF: sub_140341174+53↓j
                mov     ecx, edx
                call    sub_1406F7A6C
                test    rax, rax
                jz      short loc_1403411C2
                cmp     [rax+2], r9w
                jz      short loc_1403411CD

loc_1403411C2:                          ; CODE XREF: sub_140341174+45↑j
                inc     edx
                cmp     edx, 6
                jl      short loc_1403411AF
                xor     eax, eax
                jmp     short loc_1403411CF
; ---------------------------------------------------------------------------

loc_1403411CD:                          ; CODE XREF: sub_140341174+4C↑j
                mov     eax, edx

loc_1403411CF:                          ; CODE XREF: sub_140341174+57↑j
                                        ; sub_140341174+13C3D6↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140341174   endp

byte_1403411D5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140080578↑o
                                        ; .pdata:00000001400D72F8↑o

; =============== S U B R O U T I N E =======================================


sub_1403411DC   proc near               ; CODE XREF: sub_14067EC44+8BC↓p
                                        ; PsWow64IsMachineSupported+10↓p ...
                mov     edx, 3A64h
                mov     eax, 14Ch
                cmp     cx, dx
                cmovnz  ax, cx
                retn
sub_1403411DC   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403411EF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7304↑o

; =============== S U B R O U T I N E =======================================


sub_1403411F8   proc near               ; CODE XREF: sub_14025B390+4C4↑p
                                        ; sub_140540D24+CB↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047D550 SIZE 00000066 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:20h
                mov     rdi, rcx
                mov     rbx, [rax+7FF8h]
                test    rbx, rbx
                jz      loc_14047D550
                xor     r9d, r9d
                lea     rcx, [rbx+30A0h]
                mov     r8, rdi
                lea     edx, [r9+3]
                call    sub_140292240
                mov     rcx, rax
                mov     rdx, 7FFFFFFFF8h
                shr     rcx, 9
                and     rcx, rdx
                mov     rdx, 0FFFFF68000000000h
                add     rcx, rdx
                mov     [rbx+3038h], rcx

loc_14034125C:                          ; CODE XREF: sub_1403411F8+13C3B9↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403411F8   endp

algn_140341268:                         ; DATA XREF: .rdata:00000001400805DC↑o
                                        ; .pdata:00000001400D7310↑o
                align 10h
; Exported entry 1998. RtlAreBitsSet

; =============== S U B R O U T I N E =======================================


