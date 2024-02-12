ntoskrnl_23     proc near               ; CODE XREF: sub_1407D22F0+53↑p
                                        ; DATA XREF: .pdata:000000014010F0D4↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C1D998
                test    rax, rax
                jz      short loc_1407D239B
                call    sub_1404079D0

loc_1407D2395:                          ; CODE XREF: ntoskrnl_23+21↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407D239B:                          ; CODE XREF: ntoskrnl_23+E↑j
                and     qword ptr [rcx], 0
                xor     eax, eax
                jmp     short loc_1407D2395
ntoskrnl_23     endp

; ---------------------------------------------------------------------------
byte_1407D23A3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010F0D4↑o

; =============== S U B R O U T I N E =======================================


sub_1407D23AC   proc near               ; CODE XREF: sub_1407917B8+A90D3↓p
                                        ; sub_1408924E8+33↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    MmIsThisAnNtAsSystem
                mov     dl, al
                mov     r9b, al
                neg     dl
                mov     dl, al
                sbb     r10w, r10w
                and     r10w, 40h
                add     r10w, 20h ; ' '
                mov     [rbx+6], r10w
                neg     dl
                mov     [rbx], r10w
                mov     dx, 80h
                sbb     r8w, r8w
                and     r8w, 40h
                add     r8w, 40h ; '@'
                mov     [rbx+4], r8w
                neg     al
                sbb     ecx, ecx
                and     ecx, 0FA00h
                add     ecx, 600h
                neg     r9b
                sbb     ax, ax
                and     ax, dx
                add     ax, dx
                mov     [rbx+8], ax
                mov     [rbx+1Ch], ecx
                movzx   eax, word ptr [rbx+4]
                mov     [rbx+2], ax
                mov     eax, 0CCCCCCCDh
                mul     dword ptr [rbx+1Ch]
                mov     dword ptr [rbx+0Ch], 118h
                shr     edx, 0Ah
                mov     [rbx+1Ch], edx
                mov     eax, cs:dword_140C457BC
                lea     ecx, [rax+rax*8]
                lea     ecx, ds:0D0h[rcx*8]
                mov     [rbx+10h], ecx
                mov     eax, cs:dword_140C457B8
                mov     dword ptr [rbx+18h], 0B8h
                lea     ecx, [rax+rax*8]
                lea     ecx, ds:0D0h[rcx*8]
                mov     [rbx+14h], ecx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407D23AC   endp

algn_1407D2467:                         ; DATA XREF: .pdata:000000014010F0E0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407D2470   proc near               ; CODE XREF: sub_140A5C16C+204↓p
                                        ; DATA XREF: .rdata:00000001400ADB18↑o ...

; FUNCTION CHUNK AT 0000000140864908 SIZE 0000000B BYTES

                sub     rsp, 28h
                xor     ecx, ecx
                lea     rax, qword_140C48360
                mov     cs:dword_140C5097C, ecx
                lea     rdx, a425000    ; "425000"
                mov     cs:qword_140C48358, rcx
                mov     cs:qword_140C48370, rcx
                mov     cs:qword_140C48378, rcx
                lea     rcx, unk_140CF4310
                mov     cs:qword_140C48368, rax
                mov     cs:qword_140C48360, rax
                call    RtlInitUnicodeString
                mov     rax, 0FFFFF78000000014h
                mov     rax, [rax]
                mov     cs:qword_140C48380, rax
                lea     rax, xmmword_140CDB650
                test    al, 0Fh
                jnz     loc_140864908
                xorps   xmm0, xmm0
                movaps  cs:xmmword_140CDB650, xmm0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407D2470   endp

algn_1407D24EC:                         ; DATA XREF: .rdata:00000001400ADB18↑o
                                        ; .pdata:000000014010F0EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407D2500   proc near               ; DATA XREF: .rdata:00000001400ADB38↑o
                                        ; .pdata:000000014010F0F8↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140864914 SIZE 0000003C BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r9, cs:qword_14000E718
                sub     r9, [rcx]
                jnz     short loc_1407D2521
                mov     r9, cs:qword_14000E720
                sub     r9, [rcx+8]

loc_1407D2521:                          ; CODE XREF: sub_1407D2500+14↑j
                xor     ebx, ebx
                test    r9, r9
                jnz     short loc_1407D256D
                cmp     r8d, 4
                jnz     short loc_1407D256D
                test    rdx, rdx
                jz      short loc_1407D256D
                mov     edi, [rdx]
                lea     rcx, qword_140C23AE0
                cmp     edi, r8d
                cmova   edi, ebx
                call    sub_1402B44BC
                cmp     edi, cs:dword_140CFB228
                jnz     loc_140864914

loc_1407D2553:                          ; CODE XREF: sub_1407D2500+92437↓j
                lea     rcx, qword_140C23AE0
                call    sub_1402B4220

loc_1407D255F:                          ; CODE XREF: sub_1407D2500+72↓j
                                        ; sub_1407D2500+9244B↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407D256D:                          ; CODE XREF: sub_1407D2500+26↑j
                                        ; sub_1407D2500+2C↑j ...
                mov     ebx, 0C000000Dh
                jmp     short loc_1407D255F
sub_1407D2500   endp

; ---------------------------------------------------------------------------
algn_1407D2574:                         ; DATA XREF: .rdata:00000001400ADB38↑o
                                        ; .pdata:000000014010F0F8↑o
                align 20h
; Exported entry 1056. IoWMISetNotificationCallback

; =============== S U B R O U T I N E =======================================


