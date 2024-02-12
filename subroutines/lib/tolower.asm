tolower         proc near               ; DATA XREF: .pdata:00000001400E09C4↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                call    sub_1403D5978
                or      ecx, 0FFFFFFFFh
                movzx   edx, bl
                cmp     ebx, ecx
                cmovz   edx, ecx
                movsxd  rdx, edx
                mov     al, [rax+rdx*2]
                test    al, 1
                lea     eax, [rbx+20h]
                cmovnz  ebx, eax
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
tolower         endp

byte_1403D395F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E09C4↑o
; Exported entry 3061. toupper

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

