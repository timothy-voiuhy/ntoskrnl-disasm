WheaRegisterInUsePageOfflineNotification proc near
                                        ; CODE XREF: HvlRegisterWheaErrorNotification+21↑p
                                        ; DATA XREF: .pdata:0000000140124D64↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140CDAFD0, 0
                mov     rdi, rdx
                mov     rsi, rcx
                jnz     short loc_14095EA58
                mov     eax, 0C0000001h
                jmp     loc_14095EB0D
; ---------------------------------------------------------------------------

loc_14095EA58:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+1C↑j
                mov     edx, 20h ; ' '
                mov     ecx, 200h
                mov     r8d, 61656857h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_14095EA7F
                mov     eax, 0C0000017h
                jmp     loc_14095EB0D
; ---------------------------------------------------------------------------

loc_14095EA7F:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+43↑j
                mov     [rax+10h], rsi
                xor     r8d, r8d
                lea     rsi, qword_140CF4518
                mov     [rax+18h], rdi
                mov     rcx, rsi
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rsi], 0
                mov     rdi, rax
                jnb     short loc_14095EAB4
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402F5F10

loc_14095EAB4:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+74↑j
                test    rdi, rdi
                jz      short loc_14095EABD
                or      byte ptr [rdi+1Ah], 1

loc_14095EABD:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+87↑j
                mov     rax, cs:qword_140CF4528
                lea     rcx, qword_140CF4520
                cmp     [rax], rcx
                jz      short loc_14095EAD7
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14095EAD7:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+9E↑j
                mov     [rbx+8], rax
                mov     [rbx], rcx
                mov     [rax], rbx
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     cs:qword_140CF4528, rbx
                lock xadd cs:qword_140CF4518, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14095EB03
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14095EB03:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+C9↑j
                mov     rcx, rsi
                call    sub_140243660
                xor     eax, eax

loc_14095EB0D:                          ; CODE XREF: WheaRegisterInUsePageOfflineNotification+23↑j
                                        ; WheaRegisterInUsePageOfflineNotification+4A↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaRegisterInUsePageOfflineNotification endp
