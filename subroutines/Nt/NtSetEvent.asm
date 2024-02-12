NtSetEvent      proc near               ; CODE XREF: sub_140A4DC4C+2A↓p
                                        ; DATA XREF: .rdata:000000014007B66C↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408237FE SIZE 00000074 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, rdx
                mov     r14, rcx
                xor     r12d, r12d
                mov     [rsp+68h+arg_10], r12d
                mov     rax, gs:188h
                movzx   r15d, byte ptr [rax+232h]

loc_1406E6C23:                          ; DATA XREF: .rdata:000000014007B648↑o
;   __try { // __except at loc_1406E6C4C
                test    rdx, rdx
                jz      short loc_1406E6C4A
                test    r15b, r15b
                jz      short loc_1406E6C4A
                mov     rcx, rdx
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                jnb     short loc_1406E6C45

loc_1406E6C3F:                          ; CODE XREF: NtSetEvent+58↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                jmp     short loc_1406E6C4A
; ---------------------------------------------------------------------------

loc_1406E6C45:                          ; CODE XREF: NtSetEvent+4D↑j
                mov     rcx, rax
                jmp     short loc_1406E6C3F
; ---------------------------------------------------------------------------

loc_1406E6C4A:                          ; CODE XREF: NtSetEvent+36↑j
                                        ; NtSetEvent+3B↑j ...
                jmp     short loc_1406E6C4E
;   } // starts at 1406E6C23
; ---------------------------------------------------------------------------

loc_1406E6C4C:                          ; DATA XREF: .rdata:000000014007B648↑o
;   __except(1) // owned by 1406E6C23
                jmp     short loc_1406E6CCC
; ---------------------------------------------------------------------------

loc_1406E6C4E:                          ; CODE XREF: NtSetEvent:loc_1406E6C4A↑j
                mov     r8, cs:ExEventObjectType
                mov     [rsp+68h+arg_18], r12
                mov     [rsp+68h+var_40], r12
                lea     rax, [rsp+68h+arg_18]
                mov     [rsp+68h+var_48], rax
                movzx   r9d, r15b
                mov     edx, 2
                mov     rcx, r14
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                mov     rdi, [rsp+68h+arg_18]
                mov     [rsp+68h+var_30], rdi
                mov     dword ptr [rsp+68h+arg_18], eax
                test    eax, eax
                js      loc_1408237FE
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rdi
                call    KeSetEvent
                mov     [rsp+68h+arg_10], eax

loc_1406E6CB4:                          ; CODE XREF: NtSetEvent+13CC7D↓j
                test    ebx, ebx
                js      short loc_1406E6CBD
                test    rsi, rsi
                jnz     short loc_1406E6CDF

loc_1406E6CBD:                          ; CODE XREF: NtSetEvent+C6↑j
                                        ; NtSetEvent+F6↓j ...
                test    rdi, rdi
                jz      short loc_1406E6CCA
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_1406E6CCA:                          ; CODE XREF: NtSetEvent+D0↑j
                mov     eax, ebx

loc_1406E6CCC:                          ; CODE XREF: NtSetEvent:loc_1406E6C4C↑j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E6CDF:                          ; CODE XREF: NtSetEvent+CB↑j
                test    r15b, r15b
                jnz     short loc_1406E6CE8
                mov     [rsi], eax
                jmp     short loc_1406E6CBD
; ---------------------------------------------------------------------------

loc_1406E6CE8:                          ; CODE XREF: NtSetEvent+F2↑j
                                        ; DATA XREF: .rdata:000000014007B658↑o
;   __try { // __except at loc_1406E6CEC
                mov     [rsi], eax
                jmp     short loc_1406E6CBD
;   } // starts at 1406E6CE8
; ---------------------------------------------------------------------------

loc_1406E6CEC:                          ; DATA XREF: .rdata:000000014007B658↑o
;   __except(1) // owned by 1406E6CE8
                mov     rdi, [rsp+68h+var_30]
                mov     ebx, dword ptr [rsp+68h+arg_18]
                jmp     short loc_1406E6CBD
; } // starts at 1406E6BF0
NtSetEvent      endp

; ---------------------------------------------------------------------------
algn_1406E6CFA:                         ; DATA XREF: .rdata:000000014007B66C↑o
                                        ; .pdata:0000000140104550↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E6D00   proc near               ; CODE XREF: sub_1405E0EFC+1FA↑p
                                        ; sub_1406FC8F0+106↓p ...

var_28          = word ptr -28h
var_26          = word ptr -26h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140823872 SIZE 0000000F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], r9
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                xor     r14d, r14d
                lea     r8, [rax+20h]
                xorps   xmm0, xmm0
                mov     [rax+20h], r14
                mov     edx, 7FFFh
                mov     rbx, rcx
                movups  xmmword ptr [rax-28h], xmm0
                call    sub_14021D514
                test    eax, eax
                js      short loc_1406E6D4B
                mov     rbp, [rsp+48h+arg_18]
                cmp     rbp, 5
                jb      short loc_1406E6D4B
                cmp     word ptr [rbx], 40h ; '@'
                jz      short loc_1406E6D61

loc_1406E6D4B:                          ; CODE XREF: sub_1406E6D00+38↑j
                                        ; sub_1406E6D00+43↑j ...
                xor     al, al

loc_1406E6D4D:                          ; CODE XREF: sub_1406E6D00+149↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E6D61:                          ; CODE XREF: sub_1406E6D00+49↑j
                movzx   eax, word ptr [rbx+2]
                mov     ecx, 1
                jmp     short loc_1406E6D78
; ---------------------------------------------------------------------------

loc_1406E6D6C:                          ; CODE XREF: sub_1406E6D00+7B↓j
                cmp     ax, 2Ch ; ','
                jz      short loc_1406E6D7D
                inc     ecx
                movzx   eax, word ptr [rbx+rcx*2]

loc_1406E6D78:                          ; CODE XREF: sub_1406E6D00+6A↑j
                test    ax, ax
                jnz     short loc_1406E6D6C

loc_1406E6D7D:                          ; CODE XREF: sub_1406E6D00+70↑j
                mov     eax, ecx
                cmp     word ptr [rbx+rax*2], 2Ch ; ','
                jnz     short loc_1406E6D4B
                lea     esi, [rcx+1]
                movzx   eax, word ptr [rbx+rsi*2]
                mov     r8d, esi
                cmp     ax, 23h ; '#'
                jnz     loc_140823872

loc_1406E6D9A:                          ; CODE XREF: sub_1406E6D00+13CB76↓j
                lea     ecx, [rsi+1]
                jmp     short loc_1406E6DA7
; ---------------------------------------------------------------------------

loc_1406E6D9F:                          ; CODE XREF: sub_1406E6D00+AE↓j
                cmp     dx, 3Bh ; ';'
                jz      short loc_1406E6DB0
                inc     ecx

loc_1406E6DA7:                          ; CODE XREF: sub_1406E6D00+9D↑j
                movzx   edx, word ptr [rbx+rcx*2]
                test    dx, dx
                jnz     short loc_1406E6D9F

loc_1406E6DB0:                          ; CODE XREF: sub_1406E6D00+A3↑j
                cmp     word ptr [rbx+rcx*2], 3Bh ; ';'
                mov     edi, r14d
                cmovz   edi, ecx
                inc     r8
                lea     rcx, [rsp+48h+var_28]
                lea     rdx, [rbx+r8*2]
                call    RtlInitUnicodeStringEx
                test    eax, eax
                js      loc_1406E6D4B
                test    edi, edi
                jz      short loc_1406E6DEF
                movzx   eax, di
                sub     ax, si
                add     ax, ax
                sub     ax, 2
                mov     [rsp+48h+var_28], ax
                mov     [rsp+48h+var_26], ax

loc_1406E6DEF:                          ; CODE XREF: sub_1406E6D00+D6↑j
                lea     r8, [rsp+48h+arg_18]
                mov     edx, 0Ah
                lea     rcx, [rsp+48h+var_28]
                call    RtlUnicodeStringToInteger
                test    eax, eax
                js      loc_1406E6D4B
                test    edi, edi
                jz      short loc_1406E6E47
                lea     edx, [rdi+1]
                movzx   ecx, word ptr [rbx+rdx*2]
                test    cx, cx
                jz      short loc_1406E6E47
                lea     eax, [rbp-1]
                lea     r8d, [rdx+1]

loc_1406E6E22:                          ; CODE XREF: sub_1406E6D00+134↓j
                cmp     cx, 3Bh ; ';'
                jz      short loc_1406E6E38

loc_1406E6E28:                          ; CODE XREF: sub_1406E6D00+13E↓j
                                        ; sub_1406E6D00+145↓j
                inc     edx
                inc     r8d
                movzx   ecx, word ptr [rbx+rdx*2]
                test    cx, cx
                jnz     short loc_1406E6E22
                jmp     short loc_1406E6E47
; ---------------------------------------------------------------------------

loc_1406E6E38:                          ; CODE XREF: sub_1406E6D00+126↑j
                cmp     word ptr [rbx+r8*2], 28h ; '('
                jnz     short loc_1406E6E28
                cmp     word ptr [rbx+rax*2], 29h ; ')'
                jnz     short loc_1406E6E28

loc_1406E6E47:                          ; CODE XREF: sub_1406E6D00+10D↑j
                                        ; sub_1406E6D00+119↑j ...
                mov     al, 1
                jmp     loc_1406E6D4D
sub_1406E6D00   endp

; ---------------------------------------------------------------------------
algn_1406E6E4E:                         ; DATA XREF: .rdata:000000014007B6C4↑o
                                        ; .pdata:000000014010455C↑o
                align 20h
; Exported entry 2430. RtlUnicodeStringToInteger

; =============== S U B R O U T I N E =======================================


