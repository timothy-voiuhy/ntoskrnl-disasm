CmUnregisterMachineHiveLoadedNotification proc near
                                        ; DATA XREF: .pdata:000000014011AE1C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

                test    rcx, rcx
                jz      locret_14086B9B1
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     eax, [rcx+20h]
                mov     rbx, rcx
                imul    rdi, rax, 0C8h
                lea     rax, unk_140C00F90
                add     rdi, rax
                jmp     short loc_14086B960
; ---------------------------------------------------------------------------

loc_14086B92C:                          ; CODE XREF: CmUnregisterMachineHiveLoadedNotification+6E↓j
                lea     rcx, unk_140C48340
                mov     byte ptr [rbx+26h], 1
                call    KeResetEvent
                xor     edx, edx
                mov     rcx, rdi
                call    ExReleasePushLockEx
                and     [rsp+38h+var_18], 0
                lea     rcx, unk_140C48340
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject

loc_14086B960:                          ; CODE XREF: CmUnregisterMachineHiveLoadedNotification+2A↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                cmp     byte ptr [rbx+24h], 0
                jnz     short loc_14086B92C
                cmp     byte ptr [rbx+25h], 0
                jz      short loc_14086B993
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_14086B9B3
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_14086B9B3
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     byte ptr [rbx+25h], 0

loc_14086B993:                          ; CODE XREF: CmUnregisterMachineHiveLoadedNotification+74↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExReleasePushLockEx
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi

locret_14086B9B1:                       ; CODE XREF: CmUnregisterMachineHiveLoadedNotification+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14086B9B3:                          ; CODE XREF: CmUnregisterMachineHiveLoadedNotification+7D↑j
                                        ; CmUnregisterMachineHiveLoadedNotification+86↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
CmUnregisterMachineHiveLoadedNotification endp
