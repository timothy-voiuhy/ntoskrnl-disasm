PoFxNotifySurprisePowerOn proc near     ; DATA XREF: .rdata:0000000140098B30↑o
                                        ; .pdata:00000001400DBE94↑o

arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014049AEBC SIZE 00000027 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_14038B88C
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]

loc_14038B82D:                          ; CODE XREF: PoFxNotifySurprisePowerOn:loc_14038B88C↓j
                mov     dl, 1
                call    sub_140370714
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14038B848

loc_14038B83C:                          ; CODE XREF: PoFxNotifySurprisePowerOn+68↓j
                                        ; PoFxNotifySurprisePowerOn+75↓j ...
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14038B848:                          ; CODE XREF: PoFxNotifySurprisePowerOn+2A↑j
                mov     rcx, [rax+38h]
                call    sub_14038B898
                or      ecx, 0FFFFFFFFh
                lock xadd [rdi+0F4h], ecx
                cmp     ecx, 1
                jz      loc_14049AEBC

loc_14038B865:                          ; CODE XREF: PoFxNotifySurprisePowerOn+10F6BE↓j
                test    rbx, rbx
                jz      short loc_14038B88E
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]

loc_14038B875:                          ; CODE XREF: PoFxNotifySurprisePowerOn+80↓j
                test    rcx, rcx
                jz      short loc_14038B83C
                mov     eax, [rcx+2F8h]
                test    eax, 30000h
                jz      short loc_14038B83C
                jmp     loc_14049AED3
; ---------------------------------------------------------------------------

loc_14038B88C:                          ; CODE XREF: PoFxNotifySurprisePowerOn+10↑j
                jmp     short loc_14038B82D
; ---------------------------------------------------------------------------

loc_14038B88E:                          ; CODE XREF: PoFxNotifySurprisePowerOn+58↑j
                xor     ecx, ecx
                jmp     short loc_14038B875
PoFxNotifySurprisePowerOn endp
