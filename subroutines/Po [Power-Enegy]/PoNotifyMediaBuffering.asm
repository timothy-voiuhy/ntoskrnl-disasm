PoNotifyMediaBuffering proc near        ; DATA XREF: .pdata:00000001400DA2EC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     dil, cl
                xor     bl, bl
                lea     rcx, qword_140C24440
                call    KeAcquireSpinLockAtDpcLevel
                cmp     cs:byte_140C24448, bl
                jnz     short loc_14036C63B
                mov     bl, 1
                mov     cs:byte_140C24448, bl

loc_14036C63B:                          ; CODE XREF: PoNotifyMediaBuffering+21↑j
                lea     rcx, qword_140C24440
                mov     cs:byte_140C24449, dil
                call    KeReleaseSpinLockFromDpcLevel
                test    bl, bl
                jz      short loc_14036C689
                mov     rcx, gs:188h
                call    KeQueryPriorityThread
                cmp     eax, 1Fh
                lea     edx, [rax+1]
                cmovge  edx, eax
                test    dil, dil
                jnz     short loc_14036C67A
                mov     eax, 10h
                cmp     edx, eax
                cmovg   eax, edx
                mov     edx, eax

loc_14036C67A:                          ; CODE XREF: PoNotifyMediaBuffering+5C↑j
                add     edx, 20h ; ' '
                lea     rcx, qword_140C24450
                call    ExQueueWorkItem

loc_14036C689:                          ; CODE XREF: PoNotifyMediaBuffering+40↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoNotifyMediaBuffering endp
