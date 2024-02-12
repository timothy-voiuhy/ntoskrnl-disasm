HalMakeBeep     proc near               ; DATA XREF: .pdata:00000001400EEAAC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     esi, ecx
                call    sub_140386084
                test    al, al
                jz      loc_1404BDD04
                mov     dil, 1
                call    sub_140346FBC
                mov     edx, 61h ; 'a'
                in      al, dx          ; PC/XT PPI port B bits:
                                        ; 0: Tmr 2 gate ═╦═► OR 03H=spkr ON
                                        ; 1: Tmr 2 data ═╝  AND 0fcH=spkr OFF
                                        ; 3: 1=read high switches
                                        ; 4: 0=enable RAM parity checking
                                        ; 5: 0=enable I/O channel check
                                        ; 6: 0=hold keyboard clock low
                                        ; 7: 0=enable kbrd
                mov     bl, al
                call    sub_1403F9510
                and     bl, 0FCh
                mov     edx, 61h ; 'a'
                mov     al, bl
                out     dx, al          ; PC/XT PPI port B bits:
                                        ; 0: Tmr 2 gate ═╦═► OR 03H=spkr ON
                                        ; 1: Tmr 2 data ═╝  AND 0fcH=spkr OFF
                                        ; 3: 1=read high switches
                                        ; 4: 0=enable RAM parity checking
                                        ; 5: 0=enable I/O channel check
                                        ; 6: 0=hold keyboard clock low
                                        ; 7: 0=enable kbrd
                call    sub_1403F9510
                test    esi, esi
                jz      short loc_1404BDCED
                xor     edx, edx
                mov     eax, 1234CFh
                div     esi
                mov     ebx, eax
                cmp     eax, 0FFFFh
                jbe     short loc_1404BDCAE
                xor     dil, dil
                jmp     short loc_1404BDCED
; ---------------------------------------------------------------------------

loc_1404BDCAE:                          ; CODE XREF: HalMakeBeep+57↑j
                mov     edx, 43h ; 'C'
                mov     al, 0B6h
                out     dx, al          ; Timer 8253-5 (AT: 8254.2).
                call    sub_1403F9510
                mov     ecx, 42h ; 'B'
                movzx   r8d, bx
                mov     edx, ecx
                call    sub_1404BDD1C
                call    sub_1403F9510
                mov     edx, 61h ; 'a'
                in      al, dx          ; PC/XT PPI port B bits:
                                        ; 0: Tmr 2 gate ═╦═► OR 03H=spkr ON
                                        ; 1: Tmr 2 data ═╝  AND 0fcH=spkr OFF
                                        ; 3: 1=read high switches
                                        ; 4: 0=enable RAM parity checking
                                        ; 5: 0=enable I/O channel check
                                        ; 6: 0=hold keyboard clock low
                                        ; 7: 0=enable kbrd
                mov     bl, al
                call    sub_1403F9510
                or      bl, 3
                mov     edx, 61h ; 'a'
                mov     al, bl
                out     dx, al          ; PC/XT PPI port B bits:
                                        ; 0: Tmr 2 gate ═╦═► OR 03H=spkr ON
                                        ; 1: Tmr 2 data ═╝  AND 0fcH=spkr OFF
                                        ; 3: 1=read high switches
                                        ; 4: 0=enable RAM parity checking
                                        ; 5: 0=enable I/O channel check
                                        ; 6: 0=hold keyboard clock low
                                        ; 7: 0=enable kbrd
                call    sub_1403F9510

loc_1404BDCED:                          ; CODE XREF: HalMakeBeep+45↑j
                                        ; HalMakeBeep+5C↑j
                mov     dl, cs:byte_140C4A020
                or      ecx, 0FFFFFFFFh
                xchg    ecx, cs:dword_140C11080
                test    dl, dl
                jz      short loc_1404BDD01
                sti

loc_1404BDD01:                          ; CODE XREF: HalMakeBeep+AE↑j
                mov     al, dil

loc_1404BDD04:                          ; CODE XREF: HalMakeBeep+18↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalMakeBeep     endp

byte_1404BDD15  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400EEAAC↑o

; =============== S U B R O U T I N E =======================================


sub_1404BDD1C   proc near               ; CODE XREF: HalMakeBeep+76↑p
                                        ; sub_1404CC410+12↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   edi, r8w
                mov     rbx, rdx
                movzx   edx, cx
                mov     al, r8b
                out     dx, al
                call    sub_1403F9510
                shr     di, 8
                movzx   edx, bx
                mov     al, dil
                out     dx, al
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404BDD1C   endp

byte_1404BDD50  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400EEAB8↑o

; =============== S U B R O U T I N E =======================================


sub_1404BDD58   proc near               ; CODE XREF: HalPerformEndOfInterrupt+14DDFD↑p
                                        ; DATA XREF: .pdata:00000001400EEAC4↑o
                test    rcx, rcx
                jz      short locret_1404BDDC4
                push    rbx
                sub     rsp, 20h
                cmp     dword ptr [rcx+6Ch], 0
                jnz     short loc_1404BDDBF
                mov     rbx, [rcx+0A0h]
                test    rbx, rbx
                jz      short loc_1404BDDBF
                cmp     dword ptr [rbx+8], 0
                jnz     short loc_1404BDDBF
                mov     ecx, [rbx+40h]
                lea     edx, [rcx+1]
                call    sub_140379078
                test    rax, rax
                jz      short loc_1404BDDBF
                mov     ecx, [rax+10h]
                call    sub_140378DD0
                mov     r9, rax
                test    dword ptr [rax+0DCh], 400h
                jz      short loc_1404BDDBF
                mov     r8d, [rbx+30h]
                mov     rax, [rax+0C8h]
                and     r8d, 3FFFFFFFh
                mov     edx, [rbx+0Ch]
                mov     rcx, [r9+10h]
                call    sub_1404079D0

loc_1404BDDBF:                          ; CODE XREF: sub_1404BDD58+E↑j
                                        ; sub_1404BDD58+1A↑j ...
                add     rsp, 20h
                pop     rbx

locret_1404BDDC4:                       ; CODE XREF: sub_1404BDD58+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404BDD58   endp

byte_1404BDDC6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400EEAC4↑o

; =============== S U B R O U T I N E =======================================


sub_1404BDDCC   proc near               ; CODE XREF: HalPerformEndOfInterrupt+34↑p
                                        ; DATA XREF: .pdata:00000001400EEAD0↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rax, [rcx+0A0h]
                and     [rsp+38h+arg_0], 0
                mov     ebx, [rax+40h]
                mov     ecx, ebx
                lea     edx, [rbx+1]
                call    sub_140379078
                mov     ecx, [rax+10h]
                mov     dword ptr [rsp+38h+arg_0], ecx
                mov     r8d, [rax+14h]
                sub     r8d, [rax+1Ch]
                add     r8d, ebx
                mov     dword ptr [rsp+38h+arg_0+4], r8d
                sub     ebx, [rax+1Ch]
                mov     edx, ebx
                imul    rbx, rdx, 38h ; '8'
                add     rbx, [rax+28h]
                call    sub_140378DD0
                lea     rcx, qword_140C49D80
                mov     rsi, rax
                call    sub_140378FF0
                movzx   edi, al
                mov     eax, [rbx]
                cmp     eax, 1
                jnz     short loc_1404BDE3F
                mov     dword ptr [rbx], 2
                jmp     short loc_1404BDE4A
; ---------------------------------------------------------------------------

loc_1404BDE3F:                          ; CODE XREF: sub_1404BDDCC+69↑j
                cmp     eax, 2
                jnz     short loc_1404BDE4A
                mov     dword ptr [rbx], 1

loc_1404BDE4A:                          ; CODE XREF: sub_1404BDDCC+71↑j
                                        ; sub_1404BDDCC+76↑j
                mov     r8, rbx
                lea     rdx, [rsp+38h+arg_0]
                mov     rcx, rsi
                call    sub_140378C7C
                test    eax, eax
                jns     short loc_1404BDE82
                movsxd  rax, dword ptr [rsp+38h+arg_0+4]
                mov     r9, rsi
                movsxd  r8, dword ptr [rsi+0D8h]
                mov     edx, 205h
                mov     ecx, 5Ch ; '\'
                mov     [rsp+38h+var_18], rax
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1404BDE82:                          ; CODE XREF: sub_1404BDDCC+90↑j
                lea     rcx, qword_140C49D80
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1404BDEE2
                test    al, 1
                jz      short loc_1404BDEE2
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404BDEE2
                cmp     dil, 0Fh
                ja      short loc_1404BDEE2
                cmp     al, 2
                jb      short loc_1404BDEE2
                mov     r10, gs:20h
                lea     ecx, [rdi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404BDEE2
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404BDEE2:                          ; CODE XREF: sub_1404BDDCC+CA↑j
                                        ; sub_1404BDDCC+CE↑j ...
                mov     cr8, rdi
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404BDDCC   endp

algn_1404BDEF7:                         ; DATA XREF: .pdata:00000001400EEAD0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404BDF00   proc near               ; DATA XREF: .pdata:00000001400EEADC↑o
                                        ; .data:off_140C00A48↓o
                sub     rsp, 28h
                mov     rcx, cs:qword_140C50778
                mov     rax, [rcx+60h]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404BDF00   endp

byte_1404BDF1E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400EEADC↑o
; Exported entry 645. HalRegisterDynamicProcessor

; =============== S U B R O U T I N E =======================================


