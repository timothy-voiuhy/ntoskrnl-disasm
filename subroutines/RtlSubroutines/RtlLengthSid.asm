RtlLengthSid    proc near               ; CODE XREF: sub_1405EF2B4+42E↓p
                                        ; sub_140622E10+347↓p ...
                movzx   eax, byte ptr [rcx+1]
                lea     eax, ds:8[rax*4]
                retn
RtlLengthSid    endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14021C21D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA6F8↑o

; =============== S U B R O U T I N E =======================================


sub_14021C224   proc near               ; CODE XREF: ObReferenceObjectByName+167↓p
                                        ; sub_1406266A0+253↓p ...
                push    rbx
                sub     rsp, 20h
                cmp     byte ptr [rcx+1Eh], 0
                mov     rbx, rcx
                jz      short loc_14021C23E
                mov     rdx, rcx
                mov     rcx, [rcx]
                call    sub_14021C260

loc_14021C23E:                          ; CODE XREF: sub_14021C224+D↑j
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14021C251
                call    PsDereferenceSiloContext
                and     qword ptr [rbx+8], 0

loc_14021C251:                          ; CODE XREF: sub_14021C224+21↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C224   endp

algn_14021C258:                         ; DATA XREF: .pdata:00000001400CA704↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021C260   proc near               ; CODE XREF: sub_14021C224+15↑p
                                        ; sub_1405E8C90+100↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                add     rcx, 128h
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, [rbx]
                mov     dword ptr [rbx+20h], 0EEEE1234h
                call    PsDereferenceSiloContext
                xor     eax, eax
                mov     [rbx], rax
                mov     [rbx+1Eh], ax
                call    KeLeaveCriticalRegion
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C260   endp

byte_14021C29B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA710↑o

; =============== S U B R O U T I N E =======================================


sub_14021C2A4   proc near               ; CODE XREF: sub_1405E8C90+F0↓p
                                        ; sub_140625F30+117↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     dword ptr [rcx+20h], 0BBBB1234h
                mov     rbx, rdx
                mov     rax, gs:188h
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                lea     rcx, [rdx+128h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                mov     edx, 746C6644h
                mov     dword ptr [rdi+20h], 0DDDD1234h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     [rdi], rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     word ptr [rdi+1Eh], 1
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C2A4   endp

algn_14021C302:                         ; DATA XREF: .pdata:00000001400CA71C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14021C308   proc near               ; CODE XREF: sub_1405C2D54+5EE↓p
                                        ; sub_1405DBB4C+3A7↓p ...

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140427FEE SIZE 00000011 BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 38h
                shr     rdx, 1
                xor     ebp, ebp
                mov     rdi, rcx
                mov     esi, ebp
                mov     ecx, 0C000000Dh
                lea     rax, [rdx-1]
                cmp     rax, 7FFFFFFEh
                cmova   esi, ecx
                test    esi, esi
                js      loc_140427FEE
                lea     rbx, [rdx-1]
                mov     rcx, rdi
                mov     rdx, rbx
                lea     r9, [rsp+58h+arg_18]
                mov     esi, ebp
                call    _vsnwprintf
                test    eax, eax
                js      short loc_14021C373
                cdqe
                cmp     rax, rbx
                jz      short loc_14021C36D
                ja      short loc_14021C373

loc_14021C361:                          ; CODE XREF: sub_14021C308+69↓j
                                        ; sub_14021C308+74↓j ...
                mov     eax, esi
                add     rsp, 38h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C36D:                          ; CODE XREF: sub_14021C308+55↑j
                mov     [rdi+rbx*2], bp
                jmp     short loc_14021C361
; ---------------------------------------------------------------------------

loc_14021C373:                          ; CODE XREF: sub_14021C308+4E↑j
                                        ; sub_14021C308+57↑j
                mov     [rdi+rbx*2], bp
                mov     esi, 80000005h
                jmp     short loc_14021C361
sub_14021C308   endp

; ---------------------------------------------------------------------------
byte_14021C37E  db 12h dup(0CCh)        ; DATA XREF: .rdata:000000014004F7AC↑o
                                        ; .pdata:00000001400CA728↑o

; =============== S U B R O U T I N E =======================================


sub_14021C390   proc near               ; CODE XREF: sub_140356BF4+D↓p
                                        ; NtQueryInformationToken+16F5↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                xor     ebx, ebx
                mov     rdi, rdx
                xor     r10d, r10d
                mov     r11, rcx
                mov     r8d, 1
                nop     dword ptr [rax+rax+00h]

loc_14021C3B0:                          ; CODE XREF: sub_14021C390+72↓j
                test    [r11+40h], r8
                jz      short loc_14021C3F8
                lea     rcx, [rbx+rbx*2]
                movsxd  rax, r10d
                mov     dword ptr [rsp+arg_10], eax
                lea     r9, [rdi+rcx*4]
                shr     rax, 20h
                mov     edx, 0
                mov     dword ptr [rsp+arg_10+4], eax
                mov     rax, [rsp+arg_10]
                mov     [r9], rax
                test    [r11+50h], r8
                mov     rax, [r11+48h]
                setnz   dl
                and     rax, r8
                neg     rax
                sbb     ecx, ecx
                and     ecx, 2
                or      edx, ecx
                mov     [r9+8], edx
                inc     ebx

loc_14021C3F8:                          ; CODE XREF: sub_14021C390+24↑j
                inc     r10d
                rol     r8, 1
                cmp     r10d, 24h ; '$'
                jbe     short loc_14021C3B0
                mov     rdi, [rsp+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C390   endp

algn_14021C412:                         ; DATA XREF: .pdata:00000001400CA734↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14021C418   proc near               ; CODE XREF: sub_140218580+B4A↑p
                                        ; sub_140373194+615↓p ...
                test    rcx, rcx
                jnz     short loc_14021C41F
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C41F:                          ; CODE XREF: sub_14021C418+3↑j
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402F8510
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C418   endp

byte_14021C43D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA740↑o
; Exported entry 2489. SeAuditingAnyFileEventsWithContextEx

; =============== S U B R O U T I N E =======================================


                public SeAuditingAnyFileEventsWithContextEx
SeAuditingAnyFileEventsWithContextEx proc near
                                        ; CODE XREF: SeAuditingAnyFileEventsWithContext+7↓p
                                        ; DATA XREF: .pdata:00000001400CA74C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rbx, rdx
                test    r8, r8
                jz      short loc_14021C47B
                mov     r8b, 1
                mov     r9, rdx
                movzx   edx, r8b
                mov     ecx, 81h
                call    sub_140629580
                mov     [rdi], al

loc_14021C47B:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+13↑j
                mov     r8b, 1
                mov     r9, rbx
                movzx   edx, r8b
                mov     ecx, 74h ; 't'
                call    sub_140629580
                test    al, al
                jnz     short loc_14021C4B3
                mov     edx, 33h ; '3'
                mov     r8, rbx
                lea     ecx, [rdx-30h]
                call    sub_140629600
                test    al, al
                jnz     short loc_14021C4B3

loc_14021C4A7:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+65↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C4B3:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+41↑j
                                        ; SeAuditingAnyFileEventsWithContextEx+55↑j
                mov     al, 1
                jmp     short loc_14021C4A7
SeAuditingAnyFileEventsWithContextEx endp

; ---------------------------------------------------------------------------
algn_14021C4B7:                         ; DATA XREF: .pdata:00000001400CA74C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021C4C0   proc near               ; CODE XREF: sub_1406294B0+45↓p
                                        ; sub_1406294B0+7C↓p ...
                add     ecx, 0FFFFFF9Ch
                lea     rax, unk_140C1D340
                cmp     byte ptr [rax+rcx*2], 0
                jnz     short loc_14021C4DB

loc_14021C4D0:                          ; CODE XREF: sub_14021C4C0+1D↓j
                cmp     byte ptr [rax+rcx*2+1], 0
                jnz     short loc_14021C4E3

loc_14021C4D7:                          ; CODE XREF: sub_14021C4C0+26↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C4DB:                          ; CODE XREF: sub_14021C4C0+E↑j
                test    dl, dl
                jz      short loc_14021C4D0

loc_14021C4DF:                          ; CODE XREF: sub_14021C4C0+28↓j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C4E3:                          ; CODE XREF: sub_14021C4C0+15↑j
                test    r8b, r8b
                jz      short loc_14021C4D7
                jmp     short loc_14021C4DF
sub_14021C4C0   endp

; ---------------------------------------------------------------------------
algn_14021C4EA:                         ; DATA XREF: .pdata:00000001400CA758↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021C4F0   proc near               ; CODE XREF: sub_14020A3DC:loc_14020A484↑p
                                        ; sub_14021C610+AB↓p ...

var_28          = byte ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

                sub     rsp, 48h
                mov     r10b, [rsp+48h+arg_20]
                mov     al, r10b
                neg     al
                mov     al, [rsp+48h+arg_30]
                sbb     r11, r11
                mov     [rsp+48h+var_18], al
                mov     al, [rsp+48h+arg_28]
                and     r11d, 110h
                add     r11, 0E8h
                mov     [rsp+48h+var_20], al
                add     rcx, r11
                mov     [rsp+48h+var_28], r10b
                call    sub_14021C53C
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021C4F0   endp

byte_14021C535  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA764↑o

; =============== S U B R O U T I N E =======================================


sub_14021C53C   proc near               ; CODE XREF: sub_14021C4F0+3A↑p
                                        ; sub_140248760+A6A↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

; FUNCTION CHUNK AT 0000000140428000 SIZE 00000033 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     dil, r9b
                mov     rbx, r8
                mov     rsi, rdx
                mov     rbp, rcx
                test    r9b, r9b
                jnz     short loc_14021C56C
                cmp     [rsp+28h+arg_30], r9b
                jnz     loc_140428000

loc_14021C56C:                          ; CODE XREF: sub_14021C53C+23↑j
                                        ; sub_14021C53C+20BAC7↓j ...
                test    rsi, rsi
                jnz     short loc_14021C5E7

loc_14021C571:                          ; CODE XREF: sub_14021C53C+C0↓j
                cmp     [rsp+28h+arg_28], 0
                jnz     short loc_14021C5C8

loc_14021C578:                          ; CODE XREF: sub_14021C53C+9D↓j
                mov     rdx, rbx
                mov     rcx, rbp
                call    RtlSidHashLookup
                test    rax, rax
                jnz     short loc_14021C5A0

loc_14021C588:                          ; CODE XREF: sub_14021C53C+A4↓j
                                        ; sub_14021C53C+20BADE↓j ...
                xor     al, al

loc_14021C58A:                          ; CODE XREF: sub_14021C53C+75↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14021C5A0:                          ; CODE XREF: sub_14021C53C+4A↑j
                cmp     [rsp+28h+arg_20], 0
                jz      short loc_14021C5B3

loc_14021C5A7:                          ; CODE XREF: sub_14021C53C+7B↓j
                                        ; sub_14021C53C+8A↓j
                mov     ecx, [rax+8]
                test    cl, 4
                jz      short loc_14021C5DD

loc_14021C5AF:                          ; CODE XREF: sub_14021C53C+83↓j
                                        ; sub_14021C53C+88↓j ...
                mov     al, 1
                jmp     short loc_14021C58A
; ---------------------------------------------------------------------------

loc_14021C5B3:                          ; CODE XREF: sub_14021C53C+69↑j
                cmp     rax, [rbp+8]
                jnz     short loc_14021C5A7
                mov     ecx, [rax+8]
                test    cl, 10h
                jz      short loc_14021C5AF
                test    dil, dil
                jnz     short loc_14021C5AF
                jmp     short loc_14021C5A7
; ---------------------------------------------------------------------------

loc_14021C5C8:                          ; CODE XREF: sub_14021C53C+3A↑j
                mov     rcx, cs:qword_140C54398
                mov     rdx, rbx
                call    RtlEqualSid
                test    al, al
                jz      short loc_14021C578
                jmp     short loc_14021C5AF
; ---------------------------------------------------------------------------

loc_14021C5DD:                          ; CODE XREF: sub_14021C53C+71↑j
                test    dil, dil
                jz      short loc_14021C588
                jmp     loc_140428025
; ---------------------------------------------------------------------------

loc_14021C5E7:                          ; CODE XREF: sub_14021C53C+33↑j
                mov     rcx, cs:qword_140C54378
                mov     rdx, rbx
                call    RtlEqualSid
                test    al, al
                cmovnz  rbx, rsi
                jmp     loc_14021C571
sub_14021C53C   endp

; ---------------------------------------------------------------------------
algn_14021C601:                         ; DATA XREF: .rdata:000000014004FCC8↑o
                                        ; .pdata:00000001400CA770↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021C610   proc near               ; CODE XREF: sub_140218580+7A2↑p
                                        ; sub_14024A710+F4↓p ...

var_28          = byte ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140428034 SIZE 00000025 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                cmp     word ptr [rdx+2], 0
                movzx   ebp, r9b
                mov     rsi, rcx
                jge     loc_14021C6C2
                mov     eax, [rdx+4]
                test    eax, eax
                jz      loc_14021C6CB
                lea     rbx, [rdx+rax]

loc_14021C645:                          ; CODE XREF: sub_14021C610+B6↓j
                                        ; sub_14021C610+BD↓j
                test    bpl, bpl
                jnz     loc_140428034

loc_14021C64E:                          ; CODE XREF: sub_14021C610+20BA27↓j
                                        ; sub_14021C610+20BA44↓j
                mov     rdx, rbx
                lea     rcx, [rsi+0E8h]
                call    RtlSidHashLookup
                test    rax, rax
                jnz     short loc_14021C67A

loc_14021C662:                          ; CODE XREF: sub_14021C610+8F↓j
                                        ; sub_14021C610+20BA3E↓j
                xor     al, al

loc_14021C664:                          ; CODE XREF: sub_14021C610+86↓j
                                        ; sub_14021C610+B0↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021C67A:                          ; CODE XREF: sub_14021C610+50↑j
                cmp     rax, [rsi+0F0h]
                jnz     short loc_14021C698
                mov     ecx, [rax+8]
                test    cl, 10h
                jnz     short loc_14021C698

loc_14021C68B:                          ; CODE XREF: sub_14021C610+8D↓j
                cmp     dword ptr [rsi+80h], 0
                jnz     short loc_14021C6A1
                mov     al, 1
                jmp     short loc_14021C664
; ---------------------------------------------------------------------------

loc_14021C698:                          ; CODE XREF: sub_14021C610+71↑j
                                        ; sub_14021C610+79↑j
                mov     eax, [rax+8]
                test    al, 4
                jnz     short loc_14021C68B
                jmp     short loc_14021C662
; ---------------------------------------------------------------------------

loc_14021C6A1:                          ; CODE XREF: sub_14021C610+82↑j
                mov     [rsp+48h+var_18], bpl
                xor     r9d, r9d
                mov     [rsp+48h+var_20], 0
                mov     r8, rbx
                xor     edx, edx
                mov     [rsp+48h+var_28], 1
                mov     rcx, rsi
                call    sub_14021C4F0
                jmp     short loc_14021C664
; ---------------------------------------------------------------------------

loc_14021C6C2:                          ; CODE XREF: sub_14021C610+20↑j
                mov     rbx, [rdx+8]
                jmp     loc_14021C645
; ---------------------------------------------------------------------------

loc_14021C6CB:                          ; CODE XREF: sub_14021C610+2B↑j
                xor     ebx, ebx
                jmp     loc_14021C645
sub_14021C610   endp

; ---------------------------------------------------------------------------
algn_14021C6D2:                         ; DATA XREF: .rdata:000000014004FCF0↑o
                                        ; .pdata:00000001400CA77C↑o
                align 20h
; Exported entry 2397. RtlSidHashLookup

; =============== S U B R O U T I N E =======================================


