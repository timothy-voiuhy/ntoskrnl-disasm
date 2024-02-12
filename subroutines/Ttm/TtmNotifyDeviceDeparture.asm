TtmNotifyDeviceDeparture proc near      ; DATA XREF: .pdata:0000000140120B94↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+18h], 0
                mov     esi, ecx
                and     qword ptr [rax+20h], 0
                lea     rcx, [rax+18h]
                mov     rdi, rdx
                xor     bl, bl
                call    sub_1409006B4
                test    eax, eax
                jns     short loc_1408FD637
                mov     r9d, eax
                lea     rcx, aTtmnotifydevic ; "TtmNotifyDeviceDeparture"
                mov     r8d, eax
                mov     edx, 270h
                call    sub_1409041B4
                jmp     short loc_1408FD68A
; ---------------------------------------------------------------------------

loc_1408FD637:                          ; CODE XREF: TtmNotifyDeviceDeparture+2C↑j
                mov     rcx, [rsp+28h+arg_10]
                lea     r9, [rsp+28h+arg_18]
                mov     r8, rdi
                mov     edx, esi
                call    sub_1408FE438
                mov     bl, al
                test    al, al
                jz      short loc_1408FD679
                mov     rax, [rsp+28h+arg_18]
                mov     edx, [rax+258h]
                test    dl, 4
                jnz     short loc_1408FD679
                mov     rcx, [rsp+28h+arg_10]
                or      edx, 4
                mov     [rax+258h], edx
                mov     edx, 1
                call    sub_140900830

loc_1408FD679:                          ; CODE XREF: TtmNotifyDeviceDeparture+5F↑j
                                        ; TtmNotifyDeviceDeparture+6F↑j
                lea     rcx, unk_140C1E080
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_1408FD68A:                          ; CODE XREF: TtmNotifyDeviceDeparture+45↑j
                mov     r8b, bl
                mov     rdx, rdi
                mov     ecx, esi
                call    sub_1409035A4
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
TtmNotifyDeviceDeparture endp
