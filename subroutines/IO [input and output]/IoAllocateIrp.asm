IoAllocateIrp   proc near               ; CODE XREF: sub_1402B0930+4B↑p
                                        ; sub_1403703D0+176↓p ...

; FUNCTION CHUNK AT 000000014044E50C SIZE 0000001D BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CFC624
                mov     r8b, dl
                mov     r9, [rsp+28h]
                mov     dl, cl
                test    eax, eax
                jnz     loc_14044E50C
                xor     ecx, ecx
                call    sub_140235D50

loc_1402B0A53:                          ; CODE XREF: IoAllocateIrp+19DAE7↓j
                                        ; IoAllocateIrp+19DAF4↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateIrp   endp

algn_1402B0A59:                         ; DATA XREF: .rdata:0000000140063C58↑o
                                        ; .pdata:00000001400D04D0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B0A60   proc near               ; CODE XREF: sub_1403703D0+69↓p
                                        ; sub_1406703BC+3A↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     esi, edx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rcx, rbx
                mov     dil, al
                call    IoGetAttachedDevice
                mov     edx, esi
                mov     rcx, rax
                mov     rbx, rax
                call    ObfReferenceObjectWithTag
                mov     dl, dil
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0A60   endp

algn_1402B0AB7:                         ; DATA XREF: .pdata:00000001400D04DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B0AC0   proc near               ; CODE XREF: sub_1402B0230+2BC↑p
                                        ; sub_14067102C+622↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_14064A3A0
                mov     rcx, rbx
                call    sub_1405F98B0
                mov     rcx, [rbx+12E0h]
                test    rcx, rcx
                jz      short loc_1402B0B12
                call    sub_140670CAC
                test    al, al
                jnz     short loc_1402B0AF5
                mov     eax, [rbx+1038h]
                test    al, 20h
                jz      short loc_1402B0B26

loc_1402B0AF5:                          ; CODE XREF: sub_1402B0AC0+29↑j
                lea     rcx, [rbx+0D8h]
                call    sub_14070D0A0
                test    al, al
                jz      short loc_1402B0B12
                xor     edx, edx
                xor     r8d, r8d
                lea     ecx, [rdx+2]
                call    sub_14020C310

loc_1402B0B12:                          ; CODE XREF: sub_1402B0AC0+20↑j
                                        ; sub_1402B0AC0+43↑j ...
                mov     rcx, rbx
                call    sub_1405F9878
                call    sub_14064A360
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B0B26:                          ; CODE XREF: sub_1402B0AC0+33↑j
                mov     rcx, rbx
                call    sub_140722074
                jmp     short loc_1402B0B12
sub_1402B0AC0   endp

; ---------------------------------------------------------------------------
byte_1402B0B30  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D04E8↑o

; =============== S U B R O U T I N E =======================================


sub_1402B0B38   proc near               ; CODE XREF: sub_1405F8E80+691↓p
                                        ; DATA XREF: .rdata:0000000140063ED4↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E52A SIZE 00000015 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                test    dword ptr [rcx+0A0h], 20000h
                mov     rbp, rcx
                jz      loc_1402B0DC2
                mov     rax, gs:188h
                lea     rsi, [rcx+6C0h]
                cmp     [rcx+1088h], rax
                jz      loc_1402B0DDC

loc_1402B0B80:                          ; CODE XREF: sub_1402B0B38+2B3↓j
                mov     edx, [rsi]
                xor     r10d, r10d
                lea     r15d, [r10+20h]

loc_1402B0B89:                          ; CODE XREF: sub_1402B0B38+75↓j
                test    edx, edx
                jz      short loc_1402B0BAF
                mov     rax, [rsi+8]
                lea     r9, [rax+r10*4]
                mov     r8d, [r9]
                cmp     edx, r15d
                jb      loc_1402B0D1F
                add     edx, 0FFFFFFE0h
                not     r8d

loc_1402B0BA7:                          ; CODE XREF: sub_1402B0B38+1F7↓j
                mov     [r9], r8d
                inc     r10d
                jmp     short loc_1402B0B89
; ---------------------------------------------------------------------------

loc_1402B0BAF:                          ; CODE XREF: sub_1402B0B38+53↑j
                lea     rdx, [rbp+58h]
                mov     rcx, rsi
                call    sub_1402B19D4
                lea     rdx, [rbp+70h]
                mov     rcx, rsi
                call    sub_1402B19D4
                mov     r10, [rbp+1088h]
                test    r10, r10
                jnz     loc_1402B0DF0

loc_1402B0BD7:                          ; CODE XREF: sub_1402B0B38+2C4↓j
                                        ; sub_1402B0B38+19DA02↓j
                mov     r9d, [rsi]
                test    r9d, r9d
                jz      loc_1402B0DC2
                mov     rdx, [rsi+8]
                lea     ecx, [r9-1]
                shr     rcx, 5
                xor     edi, edi
                or      r14d, 0FFFFFFFFh
                lea     r8, [rdx+rcx*4]
                cmp     rdx, r8
                jz      short loc_1402B0C1D
                cmp     [rdx], r14d
                jnz     short loc_1402B0C1D
                mov     edi, r15d
                add     rdx, 4

loc_1402B0C0A:                          ; CODE XREF: sub_1402B0B38+E3↓j
                cmp     rdx, r8
                jnb     short loc_1402B0C1D
                cmp     [rdx], r14d
                jnz     short loc_1402B0C1D
                add     rdx, 4
                add     edi, r15d
                jmp     short loc_1402B0C0A
; ---------------------------------------------------------------------------

loc_1402B0C1D:                          ; CODE XREF: sub_1402B0B38+C4↑j
                                        ; sub_1402B0B38+C9↑j ...
                cmp     edi, r9d
                jnb     short loc_1402B0C32
                mov     rax, [rsi+8]

loc_1402B0C26:                          ; CODE XREF: sub_1402B0B38+F8↓j
                bt      [rax], edi
                jnb     short loc_1402B0C32
                inc     edi
                cmp     edi, r9d
                jb      short loc_1402B0C26

loc_1402B0C32:                          ; CODE XREF: sub_1402B0B38+E8↑j
                                        ; sub_1402B0B38+F1↑j
                xor     ebx, ebx
                lea     r11, qword_140011060
                cmp     rdx, r8
                jz      short loc_1402B0C58
                mov     ecx, [rdx]
                mov     eax, edi
                and     eax, 1Fh
                mov     r9d, eax
                mov     eax, [r11+rax*4]
                not     eax
                and     eax, ecx
                jz      loc_1402B0E07

loc_1402B0C58:                          ; CODE XREF: sub_1402B0B38+106↑j
                                        ; sub_1402B0B38+2E5↓j ...
                mov     ecx, [rsi]
                lea     eax, [rbx+rdi]
                cmp     eax, ecx
                jnb     short loc_1402B0C77
                mov     rdx, [rsi+8]

loc_1402B0C65:                          ; CODE XREF: sub_1402B0B38+13D↓j
                bt      [rdx], eax
                jb      short loc_1402B0C77
                cmp     ebx, r14d
                jnb     short loc_1402B0C7A
                inc     eax
                inc     ebx
                cmp     eax, ecx
                jb      short loc_1402B0C65

loc_1402B0C77:                          ; CODE XREF: sub_1402B0B38+127↑j
                                        ; sub_1402B0B38+130↑j ...
                cmp     ebx, r14d

loc_1402B0C7A:                          ; CODE XREF: sub_1402B0B38+135↑j
                                        ; sub_1402B0B38+249↓j ...
                cmova   ebx, r14d
                test    ebx, ebx
                jz      loc_1402B0DC2
                mov     eax, edi
                mov     r8d, ebx
                shl     eax, 9
                shl     r8d, 9
                add     r8d, eax
                and     r8d, 0FFFFF000h
                lea     edx, [rax+0FFFh]
                and     edx, 0FFFFF000h
                cmp     edx, r8d
                jz      short loc_1402B0CC3
                sub     r8d, edx
                lea     rcx, [rbp+0D8h]
                call    sub_1406720C8
                lea     r11, qword_140011060

loc_1402B0CC3:                          ; CODE XREF: sub_1402B0B38+173↑j
                mov     r10d, [rsi]
                add     edi, ebx
                cmp     r10d, edi
                jbe     loc_1402B0DC2
                mov     rdx, [rsi+8]
                lea     ecx, [r10-1]
                shr     rcx, 5
                mov     eax, edi
                shr     rax, 5
                lea     r9, [rdx+rcx*4]
                lea     r8, [rdx+rax*4]
                cmp     r8, r9
                jz      short loc_1402B0D34
                mov     eax, edi
                and     eax, 1Fh
                mov     edx, eax
                mov     eax, [r11+rax*4]
                or      eax, [r8]
                cmp     eax, r14d
                jnz     short loc_1402B0D34
                sub     edi, edx
                add     edi, r15d
                add     r8, 4

loc_1402B0D0C:                          ; CODE XREF: sub_1402B0B38+1E5↓j
                cmp     r8, r9
                jnb     short loc_1402B0D34
                cmp     [r8], r14d
                jnz     short loc_1402B0D34
                add     r8, 4
                add     edi, r15d
                jmp     short loc_1402B0D0C
; ---------------------------------------------------------------------------

loc_1402B0D1F:                          ; CODE XREF: sub_1402B0B38+63↑j
                mov     ecx, edx
                mov     eax, 1
                shl     eax, cl
                xor     edx, edx
                dec     eax
                xor     r8d, eax
                jmp     loc_1402B0BA7
; ---------------------------------------------------------------------------

loc_1402B0D34:                          ; CODE XREF: sub_1402B0B38+1B6↑j
                                        ; sub_1402B0B38+1C9↑j ...
                cmp     edi, r10d
                jnb     short loc_1402B0D49
                mov     rax, [rsi+8]

loc_1402B0D3D:                          ; CODE XREF: sub_1402B0B38+20F↓j
                bt      [rax], edi
                jnb     short loc_1402B0D49
                inc     edi
                cmp     edi, r10d
                jb      short loc_1402B0D3D

loc_1402B0D49:                          ; CODE XREF: sub_1402B0B38+1FF↑j
                                        ; sub_1402B0B38+208↑j
                xor     ebx, ebx
                cmp     r8, r9
                jz      short loc_1402B0D64
                mov     ecx, [r8]
                mov     eax, edi
                and     eax, 1Fh
                mov     edx, eax
                mov     eax, [r11+rax*4]
                not     eax
                and     eax, ecx
                jz      short loc_1402B0D94

loc_1402B0D64:                          ; CODE XREF: sub_1402B0B38+216↑j
                                        ; sub_1402B0B38+271↓j ...
                mov     ecx, [rsi]
                lea     eax, [rbx+rdi]
                cmp     eax, ecx
                jnb     loc_1402B0C77
                mov     rdx, [rsi+8]

loc_1402B0D75:                          ; CODE XREF: sub_1402B0B38+255↓j
                bt      [rdx], eax
                jb      loc_1402B0C77
                cmp     ebx, r14d
                jnb     loc_1402B0C7A
                inc     eax
                inc     ebx
                cmp     eax, ecx
                jb      short loc_1402B0D75
                jmp     loc_1402B0C77
; ---------------------------------------------------------------------------

loc_1402B0D94:                          ; CODE XREF: sub_1402B0B38+22A↑j
                mov     ebx, r15d
                sub     ebx, edx
                cmp     ebx, r14d
                jnb     loc_1402B0C7A
                add     r8, 4

loc_1402B0DA6:                          ; CODE XREF: sub_1402B0B38+283↓j
                cmp     r8, r9
                jnb     short loc_1402B0D64
                cmp     dword ptr [r8], 0
                jnz     short loc_1402B0D64
                add     r8, 4
                add     ebx, r15d
                cmp     ebx, r14d
                jb      short loc_1402B0DA6
                jmp     loc_1402B0C7A
; ---------------------------------------------------------------------------

loc_1402B0DC2:                          ; CODE XREF: sub_1402B0B38+25↑j
                                        ; sub_1402B0B38+A5↑j ...
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402B0DDC:                          ; CODE XREF: sub_1402B0B38+42↑j
                lea     rdx, [rcx+690h]
                mov     rcx, rsi
                call    sub_1402B19D4
                jmp     loc_1402B0B80
; ---------------------------------------------------------------------------

loc_1402B0DF0:                          ; CODE XREF: sub_1402B0B38+99↑j
                mov     rax, gs:188h
                cmp     r10, rax
                jz      loc_1402B0BD7
                jmp     loc_14044E52A
; ---------------------------------------------------------------------------

loc_1402B0E07:                          ; CODE XREF: sub_1402B0B38+11A↑j
                mov     ebx, r15d
                sub     ebx, r9d
                cmp     ebx, r14d
                jnb     loc_1402B0C7A
                add     rdx, 4

loc_1402B0E1A:                          ; CODE XREF: sub_1402B0B38+2FE↓j
                cmp     rdx, r8
                jnb     loc_1402B0C58
                cmp     dword ptr [rdx], 0
                jnz     loc_1402B0C58
                add     rdx, 4
                add     ebx, r15d
                cmp     ebx, r14d
                jb      short loc_1402B0E1A
                jmp     loc_1402B0C7A
sub_1402B0B38   endp

; ---------------------------------------------------------------------------
byte_1402B0E3D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140063ED4↑o
                                        ; .pdata:00000001400D04F4↑o

; =============== S U B R O U T I N E =======================================


sub_1402B0E44   proc near               ; CODE XREF: sub_140671E04+B0↓p
                                        ; sub_140671EF4+58↓p ...

arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                mov     [r11+8], rcx
                sub     rsp, 38h
                mov     rcx, [rdx]
                lea     rdx, [r11+10h]
                mov     rax, [rsp+38h+arg_28]
                mov     [r11+10h], r8
                lea     r8, [r11+8]
                mov     [r11+8], r9
                mov     r9d, [rsp+38h+arg_20]
                mov     [r11-18h], rax
                call    ZwProtectVirtualMemory
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0E44   endp

byte_1402B0E7B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0500↑o

; =============== S U B R O U T I N E =======================================


sub_1402B0E84   proc near               ; CODE XREF: sub_140671EF4+71↓p
                                        ; DATA XREF: .pdata:00000001400D050C↑o

var_28          = qword ptr -28h
var_18          = byte ptr -18h

                mov     rax, rsp
                sub     rsp, 48h
                and     dword ptr [rax+8], 0
                lea     r9, [rsp+48h+var_18]
                mov     rcx, [rcx]
                mov     [rax-18h], rdx
                xor     edx, edx
                mov     [rax-10h], r8
                mov     dword ptr [rax-20h], 4
                lea     rax, [rax+8]
                mov     [rsp+48h+var_28], rax
                lea     r8d, [rdx+1]
                call    ZwSetInformationVirtualMemory
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0E84   endp

byte_1402B0EC0  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D050C↑o

; =============== S U B R O U T I N E =======================================


sub_1402B0EC8   proc near               ; CODE XREF: sub_1406723E4+F5↓p
                                        ; sub_1406753A0+98↓p ...
                mov     rax, rsp
                mov     [rax+8], rcx
                sub     rsp, 28h
                mov     rcx, [rdx]
                lea     rdx, [rax+10h]
                mov     [rax+10h], r8
                lea     r8, [rax+8]
                mov     [rax+8], r9
                mov     r9d, 1
                call    ZwUnlockVirtualMemory
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0EC8   endp

algn_1402B0EF7:                         ; DATA XREF: .pdata:00000001400D0518↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B0F00   proc near               ; CODE XREF: sub_140671E04+88↓p
                                        ; DATA XREF: .pdata:00000001400D0524↑o

var_18          = dword ptr -18h
arg_20          = dword ptr  28h
arg_30          = qword ptr  38h

                mov     r11, rsp
                mov     [r11+20h], r9
                sub     rsp, 58h
                mov     eax, [rsp+58h+arg_20]
                mov     r9d, 2
                mov     [r11-10h], r9d
                mov     [rsp+58h+var_18], eax
                lea     rax, [r11+20h]
                mov     [r11-20h], r9d
                xor     r9d, r9d
                mov     [r11-28h], rax
                lea     rax, [r11+10h]
                mov     [r11+10h], r8
                mov     r8, [rsp+58h+arg_30]
                mov     [r11-30h], rax
                and     qword ptr [r11-38h], 0
                and     qword ptr [r8], 0
                mov     rdx, [rdx]
                call    ZwMapViewOfSection
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0F00   endp

algn_1402B0F5A:                         ; DATA XREF: .pdata:00000001400D0524↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B0F60   proc near               ; CODE XREF: sub_140671E04+39↓p
                                        ; sub_1407CEA00+1F↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     r8d, edx
                mov     rdx, rcx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0F60   endp

algn_1402B0F7A:                         ; DATA XREF: .pdata:00000001400D0530↑o
                align 20h
; Exported entry 2014. RtlClearAllBits

; =============== S U B R O U T I N E =======================================


