PsGetJobLock    proc near               ; DATA XREF: .pdata:00000001400D98F0↑o
                lea     rax, [rcx+38h]
                retn
PsGetJobLock    endp

; ---------------------------------------------------------------------------
                align 2
byte_1403643F6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D98F0↑o

; =============== S U B R O U T I N E =======================================


sub_1403643FC   proc near               ; CODE XREF: sub_14060DA00+5E9↓p
                                        ; DATA XREF: .pdata:00000001400D98FC↑o
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, cx
                mov     rax, [rax+rdx*8]
                mov     rax, [rax+1B00h]
                retn
sub_1403643FC   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140364413:                         ; DATA XREF: .pdata:00000001400D98FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140364420   proc near               ; DATA XREF: .pdata:00000001400D9908↑o
                                        ; sub_1407C8B4C+15B↓o
                sub     rsp, 28h
                mov     ecx, 1
                xor     eax, eax
                lock cmpxchg [rdx+0Ch], ecx
                jnz     short loc_140364443
                lea     rcx, [rdx+178h]
                mov     edx, 3
                call    ExQueueWorkItem

loc_140364443:                          ; CODE XREF: sub_140364420+10↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140364420   endp

algn_140364449:                         ; DATA XREF: .pdata:00000001400D9908↑o
                align 10h
; Exported entry 1255. KeQueryRuntimeThread

; =============== S U B R O U T I N E =======================================


