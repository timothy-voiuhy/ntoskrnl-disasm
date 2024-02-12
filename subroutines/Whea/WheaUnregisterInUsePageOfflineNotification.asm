WheaUnregisterInUsePageOfflineNotification proc near
                                        ; CODE XREF: HvlUnregisterWheaErrorNotification+22↑p
                                        ; DATA XREF: .pdata:0000000140124D7C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rcx
                cmp     cs:byte_140CDAFD0, 1
                jz      short loc_14095EBDC
                mov     eax, 0C0000001h
                jmp     loc_14095EC65
; ---------------------------------------------------------------------------

loc_14095EBDC:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+20↑j
                lea     rbp, qword_140CF4518
                xor     r8d, r8d
                mov     rcx, rbp
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rbp+0], 0
                mov     rdi, rax
                jnb     short loc_14095EC0A
                mov     r8, rbp
                mov     rdx, rax
                mov     rcx, rbp
                call    sub_1402F5F10

loc_14095EC0A:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+4A↑j
                test    rdi, rdi
                jz      short loc_14095EC13
                or      byte ptr [rdi+1Ah], 1

loc_14095EC13:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+5D↑j
                mov     rcx, cs:qword_140CF4520
                lea     rdx, qword_140CF4520
                cmp     rcx, rdx
                jz      short loc_14095EC37

loc_14095EC26:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+85↓j
                mov     rax, [rcx]
                cmp     rsi, [rcx+10h]
                jz      short loc_14095EC7B
                mov     rcx, rax
                cmp     rax, rdx
                jnz     short loc_14095EC26

loc_14095EC37:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+74↑j
                                        ; WheaUnregisterInUsePageOfflineNotification+ED↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140CF4518, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14095EC52
                mov     rcx, rbp
                call    ExfTryToWakePushLock

loc_14095EC52:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+98↑j
                mov     rcx, rbp
                call    sub_140243660
                neg     bl
                sbb     eax, eax
                not     eax
                and     eax, 0C0000008h

loc_14095EC65:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+27↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14095EC7B:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+7D↑j
                cmp     [rax+8], rcx
                jnz     short loc_14095EC9F
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     short loc_14095EC9F
                mov     [rdx], rax
                mov     [rax+8], rdx
                mov     edx, 61656857h
                call    ExFreePoolWithTag
                mov     bl, 1
                jmp     short loc_14095EC37
; ---------------------------------------------------------------------------

loc_14095EC9F:                          ; CODE XREF: WheaUnregisterInUsePageOfflineNotification+CF↑j
                                        ; WheaUnregisterInUsePageOfflineNotification+D8↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
WheaUnregisterInUsePageOfflineNotification endp
