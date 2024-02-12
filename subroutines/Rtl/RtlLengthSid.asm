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


