IoSetIoPriorityHintIntoFileObject proc near
                                        ; DATA XREF: .pdata:00000001400F27C0↑o

arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     ebx, edx
                cmp     edx, 5
                jb      short loc_14050644A
                mov     eax, 0C000000Dh
                jmp     short loc_140506463
; ---------------------------------------------------------------------------

loc_14050644A:                          ; CODE XREF: IoSetIoPriorityHintIntoFileObject+11↑j
                lea     rdx, [rsp+28h+arg_10]
                call    sub_14021AEE0
                test    eax, eax
                js      short loc_140506463
                mov     rcx, [rsp+28h+arg_10]
                lea     edx, [rbx+1]
                mov     [rcx+50h], edx

loc_140506463:                          ; CODE XREF: IoSetIoPriorityHintIntoFileObject+18↑j
                                        ; IoSetIoPriorityHintIntoFileObject+26↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetIoPriorityHintIntoFileObject endp
