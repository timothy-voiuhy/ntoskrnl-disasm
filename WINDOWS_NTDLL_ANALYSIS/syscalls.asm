; ---------------------------------------------------------------------------
algn_18009CFC6:                         ; DATA XREF: .pdata:00000001801782AC↓o
                align 10h
; Exported entry 200. NtAccessCheck
; Exported entry 1786. ZwAccessCheck

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheck
ZwAccessCheck   proc near               ; CODE XREF: RtlCheckTokenMembershipEx+17F↑p
                                        ; RtlCheckTokenCapability+15F↑p ...
                mov     r10, rcx        ; NtAccessCheck
                mov     eax, 0
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009CFE5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009CFE5:                          ; CODE XREF: ZwAccessCheck+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheck   endp

; ---------------------------------------------------------------------------
algn_18009CFE8:                         ; DATA XREF: .pdata:00000001801782B8↓o
                align 10h
; Exported entry 667. NtWorkerFactoryWorkerReady
; Exported entry 2252. ZwWorkerFactoryWorkerReady

; =============== S U B R O U T I N E =======================================


                public ZwWorkerFactoryWorkerReady
ZwWorkerFactoryWorkerReady proc near    ; CODE XREF: sub_180052B30+F1↑p
                                        ; DATA XREF: .rdata:00000001801201CB↓o ...
                mov     r10, rcx        ; NtWorkerFactoryWorkerReady
                mov     eax, 1
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D005
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D005:                          ; CODE XREF: ZwWorkerFactoryWorkerReady+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWorkerFactoryWorkerReady endp

; ---------------------------------------------------------------------------
algn_18009D008:                         ; DATA XREF: .pdata:00000001801782C4↓o
                align 10h
; Exported entry 199. NtAcceptConnectPort
; Exported entry 1785. ZwAcceptConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwAcceptConnectPort
ZwAcceptConnectPort proc near           ; DATA XREF: .rdata:00000001801201D0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAcceptConnectPort
                mov     eax, 2
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D025
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D025:                          ; CODE XREF: ZwAcceptConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAcceptConnectPort endp

; ---------------------------------------------------------------------------
algn_18009D028:                         ; DATA XREF: .pdata:00000001801782D0↓o
                align 10h
; Exported entry 412. NtMapUserPhysicalPagesScatter
; Exported entry 1997. ZwMapUserPhysicalPagesScatter

; =============== S U B R O U T I N E =======================================


                public ZwMapUserPhysicalPagesScatter
ZwMapUserPhysicalPagesScatter proc near ; DATA XREF: .rdata:00000001801201D5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtMapUserPhysicalPagesScatter
                mov     eax, 3
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D045
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D045:                          ; CODE XREF: ZwMapUserPhysicalPagesScatter+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMapUserPhysicalPagesScatter endp

; ---------------------------------------------------------------------------
algn_18009D048:                         ; DATA XREF: .pdata:00000001801782DC↓o
                align 10h
; Exported entry 663. NtWaitForSingleObject
; Exported entry 2248. ZwWaitForSingleObject

; =============== S U B R O U T I N E =======================================


                public ZwWaitForSingleObject
ZwWaitForSingleObject proc near         ; CODE XREF: sub_180055040+7D↑p
                                        ; sub_180057F18+D8↑p ...
                mov     r10, rcx        ; NtWaitForSingleObject
                mov     eax, 4
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D065
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D065:                          ; CODE XREF: ZwWaitForSingleObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForSingleObject endp

; ---------------------------------------------------------------------------
algn_18009D068:                         ; DATA XREF: .pdata:00000001801782E8↓o
                align 10h
; Exported entry 254. NtCallbackReturn
; Exported entry 1840. ZwCallbackReturn

; =============== S U B R O U T I N E =======================================


                public ZwCallbackReturn
ZwCallbackReturn proc near              ; CODE XREF: sub_1800A0DB0+77↓p
                                        ; KiUserCallbackDispatcher+2B↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtCallbackReturn
                mov     eax, 5
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D085
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D085:                          ; CODE XREF: ZwCallbackReturn+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCallbackReturn endp

; ---------------------------------------------------------------------------
algn_18009D088:                         ; DATA XREF: .pdata:00000001801782F4↓o
                align 10h
; Exported entry 530. NtReadFile
; Exported entry 2115. ZwReadFile

; =============== S U B R O U T I N E =======================================


                public ZwReadFile
ZwReadFile      proc near               ; CODE XREF: sub_1800556C4+119↑p
                                        ; sub_180056518+650F3↓p ...
                mov     r10, rcx        ; NtReadFile
                mov     eax, 6
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D0A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D0A5:                          ; CODE XREF: ZwReadFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReadFile      endp

; ---------------------------------------------------------------------------
algn_18009D0A8:                         ; DATA XREF: .pdata:0000000180178300↓o
                align 10h
; Exported entry 340. NtDeviceIoControlFile
; Exported entry 1926. ZwDeviceIoControlFile

; =============== S U B R O U T I N E =======================================


                public ZwDeviceIoControlFile
ZwDeviceIoControlFile proc near         ; CODE XREF: sub_18008B53C+6E↑p
                                        ; sub_180117D04+10B↓p ...
                mov     r10, rcx        ; NtDeviceIoControlFile
                mov     eax, 7
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D0C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D0C5:                          ; CODE XREF: ZwDeviceIoControlFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeviceIoControlFile endp

; ---------------------------------------------------------------------------
algn_18009D0C8:                         ; DATA XREF: .pdata:000000018017830C↓o
                align 10h
; Exported entry 668. NtWriteFile
; Exported entry 2253. ZwWriteFile

; =============== S U B R O U T I N E =======================================


                public ZwWriteFile
ZwWriteFile     proc near               ; CODE XREF: sub_1800554A4+127↑p
                                        ; sub_1800556C4+1D7↑p ...
                mov     r10, rcx        ; NtWriteFile
                mov     eax, 8
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D0E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D0E5:                          ; CODE XREF: ZwWriteFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWriteFile     endp

; ---------------------------------------------------------------------------
algn_18009D0E8:                         ; DATA XREF: .pdata:0000000180178318↓o
                align 10h
; Exported entry 544. NtRemoveIoCompletion
; Exported entry 2129. ZwRemoveIoCompletion

; =============== S U B R O U T I N E =======================================


                public ZwRemoveIoCompletion
ZwRemoveIoCompletion proc near          ; DATA XREF: .rdata:00000001801201F3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRemoveIoCompletion
                mov     eax, 9
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D105
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D105:                          ; CODE XREF: ZwRemoveIoCompletion+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRemoveIoCompletion endp

; ---------------------------------------------------------------------------
algn_18009D108:                         ; DATA XREF: .pdata:0000000180178324↓o
                align 10h
; Exported entry 542. NtReleaseSemaphore
; Exported entry 2127. ZwReleaseSemaphore

; =============== S U B R O U T I N E =======================================


                public ZwReleaseSemaphore
ZwReleaseSemaphore proc near            ; CODE XREF: RtlReleaseResource+60↑p
                                        ; RtlReleaseResource+A2↑p ...
                mov     r10, rcx        ; NtReleaseSemaphore
                mov     eax, 0Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D125
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D125:                          ; CODE XREF: ZwReleaseSemaphore+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReleaseSemaphore endp

; ---------------------------------------------------------------------------
algn_18009D128:                         ; DATA XREF: .pdata:0000000180178330↓o
                align 10h
; Exported entry 552. NtReplyWaitReceivePort
; Exported entry 2137. ZwReplyWaitReceivePort

; =============== S U B R O U T I N E =======================================


                public ZwReplyWaitReceivePort
ZwReplyWaitReceivePort proc near        ; DATA XREF: .rdata:00000001801201FD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplyWaitReceivePort
                mov     eax, 0Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D145
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D145:                          ; CODE XREF: ZwReplyWaitReceivePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplyWaitReceivePort endp

; ---------------------------------------------------------------------------
algn_18009D148:                         ; DATA XREF: .pdata:000000018017833C↓o
                align 10h
; Exported entry 551. NtReplyPort
; Exported entry 2136. ZwReplyPort

; =============== S U B R O U T I N E =======================================


                public ZwReplyPort
ZwReplyPort     proc near               ; DATA XREF: .rdata:0000000180120202↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplyPort
                mov     eax, 0Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D165
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D165:                          ; CODE XREF: ZwReplyPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplyPort     endp

; ---------------------------------------------------------------------------
algn_18009D168:                         ; DATA XREF: .pdata:0000000180178348↓o
                align 10h
; Exported entry 598. NtSetInformationThread
; Exported entry 2183. ZwSetInformationThread

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationThread
ZwSetInformationThread proc near        ; CODE XREF: sub_18000BD78+69↑p
                                        ; sub_18000C0E4+26↑p ...
                mov     r10, rcx        ; NtSetInformationThread
                mov     eax, 0Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D185
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D185:                          ; CODE XREF: ZwSetInformationThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationThread endp

; ---------------------------------------------------------------------------
algn_18009D188:                         ; DATA XREF: .pdata:0000000180178354↓o
                align 10h
; Exported entry 584. NtSetEvent
; Exported entry 2169. ZwSetEvent

; =============== S U B R O U T I N E =======================================


                public ZwSetEvent
ZwSetEvent      proc near               ; CODE XREF: sub_180009AA8+38↑p
                                        ; sub_180009B48+49↑p ...
                mov     r10, rcx        ; NtSetEvent
                mov     eax, 0Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D1A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D1A5:                          ; CODE XREF: ZwSetEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetEvent      endp

; ---------------------------------------------------------------------------
algn_18009D1A8:                         ; DATA XREF: .pdata:0000000180178360↓o
                align 10h
; Exported entry 262. NtClose
; Exported entry 1848. ZwClose

; =============== S U B R O U T I N E =======================================


                public ZwClose
ZwClose         proc near               ; CODE XREF: sub_180008FE4+258↑p
                                        ; sub_180008FE4+2BC↑p ...
                mov     r10, rcx        ; NtClose
                mov     eax, 0Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D1C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D1C5:                          ; CODE XREF: ZwClose+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwClose         endp

; ---------------------------------------------------------------------------
algn_18009D1C8:                         ; DATA XREF: .pdata:000000018017836C↓o
                align 10h
; Exported entry 501. NtQueryObject
; Exported entry 2086. ZwQueryObject

; =============== S U B R O U T I N E =======================================


                public ZwQueryObject
ZwQueryObject   proc near               ; CODE XREF: RtlWow64SuspendProcess+70↓p
                                        ; RtlWow64SuspendThread+D2↓p ...
                mov     r10, rcx        ; NtQueryObject
                mov     eax, 10h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D1E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D1E5:                          ; CODE XREF: ZwQueryObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryObject   endp

; ---------------------------------------------------------------------------
algn_18009D1E8:                         ; DATA XREF: .pdata:0000000180178378↓o
                align 10h
; Exported entry 484. NtQueryInformationFile
; Exported entry 2069. ZwQueryInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationFile
ZwQueryInformationFile proc near        ; CODE XREF: LdrVerifyImageMatchesChecksumEx+25A↑p
                                        ; sub_1800E3FE0+DD↓p ...
                mov     r10, rcx        ; NtQueryInformationFile
                mov     eax, 11h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D205
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D205:                          ; CODE XREF: ZwQueryInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationFile endp

; ---------------------------------------------------------------------------
algn_18009D208:                         ; DATA XREF: .pdata:0000000180178384↓o
                align 10h
; Exported entry 429. NtOpenKey
; Exported entry 2014. ZwOpenKey

; =============== S U B R O U T I N E =======================================


                public ZwOpenKey
ZwOpenKey       proc near               ; CODE XREF: RtlOpenCurrentUser+57↑p
                                        ; RtlOpenCurrentUser+C4↑p ...
                mov     r10, rcx        ; NtOpenKey
                mov     eax, 12h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D225
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D225:                          ; CODE XREF: ZwOpenKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenKey       endp

; ---------------------------------------------------------------------------
algn_18009D228:                         ; DATA XREF: .pdata:0000000180178390↓o
                align 10h
; Exported entry 353. NtEnumerateValueKey
; Exported entry 1939. ZwEnumerateValueKey

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateValueKey
ZwEnumerateValueKey proc near           ; CODE XREF: sub_180045B3C+298↑p
                                        ; sub_1800DEE5C+28F↓p ...
                mov     r10, rcx        ; NtEnumerateValueKey
                mov     eax, 13h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D245
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D245:                          ; CODE XREF: ZwEnumerateValueKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateValueKey endp

; ---------------------------------------------------------------------------
algn_18009D248:                         ; DATA XREF: .pdata:000000018017839C↓o
                align 10h
; Exported entry 358. NtFindAtom
; Exported entry 1944. ZwFindAtom

; =============== S U B R O U T I N E =======================================


                public ZwFindAtom
ZwFindAtom      proc near               ; DATA XREF: .rdata:000000018012022A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFindAtom
                mov     eax, 14h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D265
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D265:                          ; CODE XREF: ZwFindAtom+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFindAtom      endp

; ---------------------------------------------------------------------------
algn_18009D268:                         ; DATA XREF: .pdata:00000001801783A8↓o
                align 10h
; Exported entry 472. NtQueryDefaultLocale
; Exported entry 2057. ZwQueryDefaultLocale

; =============== S U B R O U T I N E =======================================


                public ZwQueryDefaultLocale
ZwQueryDefaultLocale proc near          ; CODE XREF: sub_180033BCC+795↑p
                                        ; sub_180033BCC+7D3↑p ...
                mov     r10, rcx        ; NtQueryDefaultLocale
                mov     eax, 15h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D285
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D285:                          ; CODE XREF: ZwQueryDefaultLocale+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDefaultLocale endp

; ---------------------------------------------------------------------------
algn_18009D288:                         ; DATA XREF: .pdata:00000001801783B4↓o
                align 10h
; Exported entry 497. NtQueryKey
; Exported entry 2082. ZwQueryKey

; =============== S U B R O U T I N E =======================================


                public ZwQueryKey
ZwQueryKey      proc near               ; CODE XREF: sub_1800463A8+2B↑p
                                        ; sub_18007B310+4A880↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQueryKey
                mov     eax, 16h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D2A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D2A5:                          ; CODE XREF: ZwQueryKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryKey      endp

; ---------------------------------------------------------------------------
algn_18009D2A8:                         ; DATA XREF: .pdata:00000001801783C0↓o
                align 10h
; Exported entry 520. NtQueryValueKey
; Exported entry 2105. ZwQueryValueKey

; =============== S U B R O U T I N E =======================================


                public ZwQueryValueKey
ZwQueryValueKey proc near               ; CODE XREF: sub_18003F680+8F↑p
                                        ; sub_18003F7B4+52↑p ...
                mov     r10, rcx        ; NtQueryValueKey
                mov     eax, 17h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D2C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D2C5:                          ; CODE XREF: ZwQueryValueKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryValueKey endp

; ---------------------------------------------------------------------------
algn_18009D2C8:                         ; DATA XREF: .pdata:00000001801783CC↓o
                align 10h
; Exported entry 224. NtAllocateVirtualMemory
; Exported entry 1810. ZwAllocateVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwAllocateVirtualMemory
ZwAllocateVirtualMemory proc near       ; CODE XREF: RtlExtendMemoryZone+61↑p
                                        ; sub_18000787C+61↑p ...
                mov     r10, rcx        ; NtAllocateVirtualMemory
                mov     eax, 18h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D2E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D2E5:                          ; CODE XREF: ZwAllocateVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D2E8:                         ; DATA XREF: .pdata:00000001801783D8↓o
                align 10h
; Exported entry 487. NtQueryInformationProcess
; Exported entry 2072. ZwQueryInformationProcess

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationProcess
ZwQueryInformationProcess proc near     ; CODE XREF: sub_18006003C+7C↑p
                                        ; sub_180060764+72↑p ...
                mov     r10, rcx        ; NtQueryInformationProcess
                mov     eax, 19h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D305
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D305:                          ; CODE XREF: ZwQueryInformationProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationProcess endp

; ---------------------------------------------------------------------------
algn_18009D308:                         ; DATA XREF: .pdata:00000001801783E4↓o
                align 10h
; Exported entry 662. NtWaitForMultipleObjects32
; Exported entry 2247. ZwWaitForMultipleObjects32

; =============== S U B R O U T I N E =======================================


                public ZwWaitForMultipleObjects32
ZwWaitForMultipleObjects32 proc near    ; DATA XREF: .rdata:0000000180120248↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWaitForMultipleObjects32
                mov     eax, 1Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D325
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D325:                          ; CODE XREF: ZwWaitForMultipleObjects32+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForMultipleObjects32 endp

; ---------------------------------------------------------------------------
algn_18009D328:                         ; DATA XREF: .pdata:00000001801783F0↓o
                align 10h
; Exported entry 669. NtWriteFileGather
; Exported entry 2254. ZwWriteFileGather

; =============== S U B R O U T I N E =======================================


                public ZwWriteFileGather
ZwWriteFileGather proc near             ; DATA XREF: .rdata:000000018012024D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWriteFileGather
                mov     eax, 1Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D345
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D345:                          ; CODE XREF: ZwWriteFileGather+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWriteFileGather endp

; ---------------------------------------------------------------------------
algn_18009D348:                         ; DATA XREF: .pdata:00000001801783FC↓o
                align 10h
; Exported entry 595. NtSetInformationProcess
; Exported entry 2180. ZwSetInformationProcess

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationProcess
ZwSetInformationProcess proc near       ; CODE XREF: sub_180047C24+3B8↑p
                                        ; RtlDeleteGrowableFunctionTable+37↑p ...
                mov     r10, rcx        ; NtSetInformationProcess
                mov     eax, 1Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D365
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D365:                          ; CODE XREF: ZwSetInformationProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationProcess endp

; ---------------------------------------------------------------------------
algn_18009D368:                         ; DATA XREF: .pdata:0000000180178408↓o
                align 10h
; Exported entry 293. NtCreateKey
; Exported entry 1879. ZwCreateKey

; =============== S U B R O U T I N E =======================================


                public ZwCreateKey
ZwCreateKey     proc near               ; CODE XREF: sub_18004591C+16D↑p
                                        ; sub_18008A844+5B↑p ...
                mov     r10, rcx        ; NtCreateKey
                mov     eax, 1Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D385
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D385:                          ; CODE XREF: ZwCreateKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateKey     endp

; ---------------------------------------------------------------------------
algn_18009D388:                         ; DATA XREF: .pdata:0000000180178414↓o
                align 10h
; Exported entry 368. NtFreeVirtualMemory
; Exported entry 1954. ZwFreeVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwFreeVirtualMemory
ZwFreeVirtualMemory proc near           ; CODE XREF: sub_1800047B4+53↑p
                                        ; sub_180004F78+2A6↑p ...
                mov     r10, rcx        ; NtFreeVirtualMemory
                mov     eax, 1Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D3A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D3A5:                          ; CODE XREF: ZwFreeVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFreeVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D3A8:                         ; DATA XREF: .pdata:0000000180178420↓o
                align 10h
; Exported entry 386. NtImpersonateClientOfPort
; Exported entry 1971. ZwImpersonateClientOfPort

; =============== S U B R O U T I N E =======================================


                public ZwImpersonateClientOfPort
ZwImpersonateClientOfPort proc near     ; DATA XREF: .rdata:0000000180120261↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtImpersonateClientOfPort
                mov     eax, 1Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D3C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D3C5:                          ; CODE XREF: ZwImpersonateClientOfPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwImpersonateClientOfPort endp

; ---------------------------------------------------------------------------
algn_18009D3C8:                         ; DATA XREF: .pdata:000000018017842C↓o
                align 10h
; Exported entry 541. NtReleaseMutant
; Exported entry 2126. ZwReleaseMutant

; =============== S U B R O U T I N E =======================================


                public ZwReleaseMutant
ZwReleaseMutant proc near               ; CODE XREF: sub_180053750+671E8↓p
                                        ; DATA XREF: .rdata:0000000180120266↓o ...
                mov     r10, rcx        ; NtReleaseMutant
                mov     eax, 20h ; ' '
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D3E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D3E5:                          ; CODE XREF: ZwReleaseMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReleaseMutant endp

; ---------------------------------------------------------------------------
algn_18009D3E8:                         ; DATA XREF: .pdata:0000000180178438↓o
                align 10h
; Exported entry 490. NtQueryInformationToken
; Exported entry 2075. ZwQueryInformationToken

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationToken
ZwQueryInformationToken proc near       ; CODE XREF: RtlFormatCurrentUserKeyPath+46↑p
                                        ; sub_180038B7C+15D↑p ...
                mov     r10, rcx        ; NtQueryInformationToken
                mov     eax, 21h ; '!'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D405
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D405:                          ; CODE XREF: ZwQueryInformationToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationToken endp

; ---------------------------------------------------------------------------
algn_18009D408:                         ; DATA XREF: .pdata:0000000180178444↓o
                align 10h
; Exported entry 556. NtRequestWaitReplyPort
; Exported entry 2141. ZwRequestWaitReplyPort

; =============== S U B R O U T I N E =======================================


                public ZwRequestWaitReplyPort
ZwRequestWaitReplyPort proc near        ; DATA XREF: .rdata:0000000180120270↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRequestWaitReplyPort
                mov     eax, 22h ; '"'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D425
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D425:                          ; CODE XREF: ZwRequestWaitReplyPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRequestWaitReplyPort endp

; ---------------------------------------------------------------------------
algn_18009D428:                         ; DATA XREF: .pdata:0000000180178450↓o
                align 10h
; Exported entry 521. NtQueryVirtualMemory
; Exported entry 2106. ZwQueryVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwQueryVirtualMemory
ZwQueryVirtualMemory proc near          ; CODE XREF: RtlCreateHeap+B77↑p
                                        ; RtlCreateHeap+C65↑p ...
                mov     r10, rcx        ; NtQueryVirtualMemory
                mov     eax, 23h ; '#'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D445
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D445:                          ; CODE XREF: ZwQueryVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D448:                         ; DATA XREF: .pdata:000000018017845C↓o
                align 10h
; Exported entry 448. NtOpenThreadToken
; Exported entry 2033. ZwOpenThreadToken

; =============== S U B R O U T I N E =======================================


                public ZwOpenThreadToken
ZwOpenThreadToken proc near             ; CODE XREF: sub_18000BD78+4B↑p
                                        ; RtlAdjustPrivilege+EF↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtOpenThreadToken
                mov     eax, 24h ; '$'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D465
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D465:                          ; CODE XREF: ZwOpenThreadToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenThreadToken endp

; ---------------------------------------------------------------------------
algn_18009D468:                         ; DATA XREF: .pdata:0000000180178468↓o
                align 10h
; Exported entry 489. NtQueryInformationThread
; Exported entry 2074. ZwQueryInformationThread

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationThread
ZwQueryInformationThread proc near      ; CODE XREF: RtlExitUserThread+29↑p
                                        ; sub_180056518+F2↑p ...
                mov     r10, rcx        ; NtQueryInformationThread
                mov     eax, 25h ; '%'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D485
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D485:                          ; CODE XREF: ZwQueryInformationThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationThread endp

; ---------------------------------------------------------------------------
algn_18009D488:                         ; DATA XREF: .pdata:0000000180178474↓o
                align 10h
; Exported entry 438. NtOpenProcess
; Exported entry 2023. ZwOpenProcess

; =============== S U B R O U T I N E =======================================


                public ZwOpenProcess
ZwOpenProcess   proc near               ; CODE XREF: RtlQueryProcessDebugInformation+135↓p
                                        ; RtlQueryProcessDebugInformation+1D6↓p ...
                mov     r10, rcx        ; NtOpenProcess
                mov     eax, 26h ; '&'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D4A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D4A5:                          ; CODE XREF: ZwOpenProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenProcess   endp

; ---------------------------------------------------------------------------
algn_18009D4A8:                         ; DATA XREF: .pdata:0000000180178480↓o
                align 10h
; Exported entry 591. NtSetInformationFile
; Exported entry 2176. ZwSetInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationFile
ZwSetInformationFile proc near          ; CODE XREF: sub_1800556C4+22C↑p
                                        ; sub_180056C34+150↑p ...
                mov     r10, rcx        ; NtSetInformationFile
                mov     eax, 27h ; '''
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D4C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D4C5:                          ; CODE XREF: ZwSetInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationFile endp

; ---------------------------------------------------------------------------
algn_18009D4C8:                         ; DATA XREF: .pdata:000000018017848C↓o
                align 10h
; Exported entry 413. NtMapViewOfSection
; Exported entry 1998. ZwMapViewOfSection

; =============== S U B R O U T I N E =======================================


                public ZwMapViewOfSection
ZwMapViewOfSection proc near            ; CODE XREF: sub_180008FE4+2B0↑p
                                        ; sub_180014C38+105↑p ...
                mov     r10, rcx        ; NtMapViewOfSection
                mov     eax, 28h ; '('
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D4E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D4E5:                          ; CODE XREF: ZwMapViewOfSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMapViewOfSection endp

; ---------------------------------------------------------------------------
algn_18009D4E8:                         ; DATA XREF: .pdata:0000000180178498↓o
                align 10h
; Exported entry 201. NtAccessCheckAndAuditAlarm
; Exported entry 1787. ZwAccessCheckAndAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckAndAuditAlarm
ZwAccessCheckAndAuditAlarm proc near    ; DATA XREF: .rdata:0000000180120293↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckAndAuditAlarm
                mov     eax, 29h ; ')'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D505
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D505:                          ; CODE XREF: ZwAccessCheckAndAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckAndAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009D508:                         ; DATA XREF: .pdata:00000001801784A4↓o
                align 10h
; Exported entry 653. NtUnmapViewOfSection
; Exported entry 2238. ZwUnmapViewOfSection

; =============== S U B R O U T I N E =======================================


                public ZwUnmapViewOfSection
ZwUnmapViewOfSection proc near          ; CODE XREF: sub_18000F4AC+2FF↑p
                                        ; sub_180014C38+1C0↑p ...
                mov     r10, rcx        ; NtUnmapViewOfSection
                mov     eax, 2Ah ; '*'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D525
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D525:                          ; CODE XREF: ZwUnmapViewOfSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnmapViewOfSection endp

; ---------------------------------------------------------------------------
algn_18009D528:                         ; DATA XREF: .pdata:00000001801784B0↓o
                align 10h
; Exported entry 553. NtReplyWaitReceivePortEx
; Exported entry 2138. ZwReplyWaitReceivePortEx

; =============== S U B R O U T I N E =======================================


                public ZwReplyWaitReceivePortEx
ZwReplyWaitReceivePortEx proc near      ; DATA XREF: .rdata:000000018012029D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplyWaitReceivePortEx
                mov     eax, 2Bh ; '+'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D545
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D545:                          ; CODE XREF: ZwReplyWaitReceivePortEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplyWaitReceivePortEx endp

; ---------------------------------------------------------------------------
algn_18009D548:                         ; DATA XREF: .pdata:00000001801784BC↓o
                align 10h
; Exported entry 638. NtTerminateProcess
; Exported entry 2223. ZwTerminateProcess

; =============== S U B R O U T I N E =======================================


                public ZwTerminateProcess
ZwTerminateProcess proc near            ; CODE XREF: RtlAcquireSRWLockExclusive+1C8↑p
                                        ; RtlUserThreadStart+3D↑p ...
                mov     r10, rcx        ; NtTerminateProcess
                mov     eax, 2Ch ; ','
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D565
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D565:                          ; CODE XREF: ZwTerminateProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTerminateProcess endp

; ---------------------------------------------------------------------------
algn_18009D568:                         ; DATA XREF: .pdata:00000001801784C8↓o
                align 10h
; Exported entry 585. NtSetEventBoostPriority
; Exported entry 2170. ZwSetEventBoostPriority

; =============== S U B R O U T I N E =======================================


                public ZwSetEventBoostPriority
ZwSetEventBoostPriority proc near       ; DATA XREF: .rdata:00000001801202A7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetEventBoostPriority
                mov     eax, 2Dh ; '-'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D585
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D585:                          ; CODE XREF: ZwSetEventBoostPriority+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetEventBoostPriority endp

; ---------------------------------------------------------------------------
algn_18009D588:                         ; DATA XREF: .pdata:00000001801784D4↓o
                align 10h
; Exported entry 531. NtReadFileScatter
; Exported entry 2116. ZwReadFileScatter

; =============== S U B R O U T I N E =======================================


                public ZwReadFileScatter
ZwReadFileScatter proc near             ; DATA XREF: .rdata:00000001801202AC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReadFileScatter
                mov     eax, 2Eh ; '.'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D5A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D5A5:                          ; CODE XREF: ZwReadFileScatter+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReadFileScatter endp

; ---------------------------------------------------------------------------
algn_18009D5A8:                         ; DATA XREF: .pdata:00000001801784E0↓o
                align 10h
; Exported entry 449. NtOpenThreadTokenEx
; Exported entry 2034. ZwOpenThreadTokenEx

; =============== S U B R O U T I N E =======================================


                public ZwOpenThreadTokenEx
ZwOpenThreadTokenEx proc near           ; CODE XREF: RtlCheckTokenMembershipEx+1F2↑p
                                        ; RtlCheckTokenCapability+1CA↑p ...
                mov     r10, rcx        ; NtOpenThreadTokenEx
                mov     eax, 2Fh ; '/'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D5C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D5C5:                          ; CODE XREF: ZwOpenThreadTokenEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenThreadTokenEx endp

; ---------------------------------------------------------------------------
algn_18009D5C8:                         ; DATA XREF: .pdata:00000001801784EC↓o
                align 10h
; Exported entry 440. NtOpenProcessTokenEx
; Exported entry 2025. ZwOpenProcessTokenEx

; =============== S U B R O U T I N E =======================================


                public ZwOpenProcessTokenEx
ZwOpenProcessTokenEx proc near          ; CODE XREF: RtlCheckTokenMembershipEx+210↑p
                                        ; RtlCheckTokenCapability+1EC↑p ...
                mov     r10, rcx        ; NtOpenProcessTokenEx
                mov     eax, 30h ; '0'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D5E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D5E5:                          ; CODE XREF: ZwOpenProcessTokenEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenProcessTokenEx endp

; ---------------------------------------------------------------------------
algn_18009D5E8:                         ; DATA XREF: .pdata:00000001801784F8↓o
                align 10h
; Exported entry 504. NtQueryPerformanceCounter
; Exported entry 2089. ZwQueryPerformanceCounter

; =============== S U B R O U T I N E =======================================


                public ZwQueryPerformanceCounter
ZwQueryPerformanceCounter proc near     ; CODE XREF: sub_18001404C+85↑p
                                        ; RtlQueryPerformanceCounter+76BD1↓p ...
                mov     r10, rcx        ; NtQueryPerformanceCounter
                mov     eax, 31h ; '1'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D605
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D605:                          ; CODE XREF: ZwQueryPerformanceCounter+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryPerformanceCounter endp

; ---------------------------------------------------------------------------
algn_18009D608:                         ; DATA XREF: .pdata:0000000180178504↓o
                align 10h
; Exported entry 350. NtEnumerateKey
; Exported entry 1936. ZwEnumerateKey

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateKey
ZwEnumerateKey  proc near               ; CODE XREF: sub_180081E20+227↑p
                                        ; RtlpNtEnumerateSubKey+76↑p ...
                mov     r10, rcx        ; NtEnumerateKey
                mov     eax, 32h ; '2'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D625
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D625:                          ; CODE XREF: ZwEnumerateKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateKey  endp

; ---------------------------------------------------------------------------
algn_18009D628:                         ; DATA XREF: .pdata:0000000180178510↓o
                align 10h
; Exported entry 426. NtOpenFile
; Exported entry 2011. ZwOpenFile

; =============== S U B R O U T I N E =======================================


                public ZwOpenFile
ZwOpenFile      proc near               ; CODE XREF: sub_18004BA18+10D↑p
                                        ; sub_18004D1A4+FA↑p ...
                mov     r10, rcx        ; NtOpenFile
                mov     eax, 33h ; '3'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D645
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D645:                          ; CODE XREF: ZwOpenFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenFile      endp

; ---------------------------------------------------------------------------
algn_18009D648:                         ; DATA XREF: .pdata:000000018017851C↓o
                align 10h
; Exported entry 329. NtDelayExecution
; Exported entry 1915. ZwDelayExecution

; =============== S U B R O U T I N E =======================================


                public ZwDelayExecution
ZwDelayExecution proc near              ; CODE XREF: sub_180058324+48↑p
                                        ; sub_180074C5C+30C↑p ...
                mov     r10, rcx        ; NtDelayExecution
                mov     eax, 34h ; '4'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D665
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D665:                          ; CODE XREF: ZwDelayExecution+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDelayExecution endp

; ---------------------------------------------------------------------------
algn_18009D668:                         ; DATA XREF: .pdata:0000000180178528↓o
                align 10h
; Exported entry 474. NtQueryDirectoryFile
; Exported entry 2059. ZwQueryDirectoryFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryDirectoryFile
ZwQueryDirectoryFile proc near          ; CODE XREF: sub_180086F3C+189↑p
                                        ; sub_1800E0E2C+188↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQueryDirectoryFile
                mov     eax, 35h ; '5'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D685
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D685:                          ; CODE XREF: ZwQueryDirectoryFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDirectoryFile endp

; ---------------------------------------------------------------------------
algn_18009D688:                         ; DATA XREF: .pdata:0000000180178534↓o
                align 10h
; Exported entry 515. NtQuerySystemInformation
; Exported entry 1080. RtlGetNativeSystemInformation
; Exported entry 2100. ZwQuerySystemInformation

; =============== S U B R O U T I N E =======================================


                public ZwQuerySystemInformation
ZwQuerySystemInformation proc near      ; CODE XREF: sub_180007E1C+21↑p
                                        ; RtlCreateHeap+C08↑p ...
                mov     r10, rcx        ; NtQuerySystemInformation
                                        ; RtlGetNativeSystemInformation
                mov     eax, 36h ; '6'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D6A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D6A5:                          ; CODE XREF: ZwQuerySystemInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySystemInformation endp

; ---------------------------------------------------------------------------
algn_18009D6A8:                         ; DATA XREF: .pdata:0000000180178540↓o
                align 10h
; Exported entry 443. NtOpenSection
; Exported entry 2028. ZwOpenSection

; =============== S U B R O U T I N E =======================================


                public ZwOpenSection
ZwOpenSection   proc near               ; CODE XREF: sub_180008FE4+125↑p
                                        ; sub_1800150E0+72↑p ...
                mov     r10, rcx        ; NtOpenSection
                mov     eax, 37h ; '7'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D6C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D6C5:                          ; CODE XREF: ZwOpenSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenSection   endp

; ---------------------------------------------------------------------------
algn_18009D6C8:                         ; DATA XREF: .pdata:000000018017854C↓o
                align 10h
; Exported entry 518. NtQueryTimer
; Exported entry 2103. ZwQueryTimer

; =============== S U B R O U T I N E =======================================


                public ZwQueryTimer
ZwQueryTimer    proc near               ; DATA XREF: .rdata:00000001801202DE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryTimer
                mov     eax, 38h ; '8'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D6E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D6E5:                          ; CODE XREF: ZwQueryTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryTimer    endp

; ---------------------------------------------------------------------------
algn_18009D6E8:                         ; DATA XREF: .pdata:0000000180178558↓o
                align 10h
; Exported entry 371. NtFsControlFile
; Exported entry 1957. ZwFsControlFile

; =============== S U B R O U T I N E =======================================


                public ZwFsControlFile
ZwFsControlFile proc near               ; CODE XREF: sub_18005D380+B1↑p
                                        ; DATA XREF: .rdata:00000001801202E3↓o ...
                mov     r10, rcx        ; NtFsControlFile
                mov     eax, 39h ; '9'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D705
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D705:                          ; CODE XREF: ZwFsControlFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFsControlFile endp

; ---------------------------------------------------------------------------
algn_18009D708:                         ; DATA XREF: .pdata:0000000180178564↓o
                align 10h
; Exported entry 671. NtWriteVirtualMemory
; Exported entry 2256. ZwWriteVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwWriteVirtualMemory
ZwWriteVirtualMemory proc near          ; CODE XREF: sub_1800D5F60+16C↓p
                                        ; sub_1800D5F60+1D0↓p ...
                mov     r10, rcx        ; NtWriteVirtualMemory
                mov     eax, 3Ah ; ':'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D725
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D725:                          ; CODE XREF: ZwWriteVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWriteVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D728:                         ; DATA XREF: .pdata:0000000180178570↓o
                align 10h
; Exported entry 263. NtCloseObjectAuditAlarm
; Exported entry 1849. ZwCloseObjectAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwCloseObjectAuditAlarm
ZwCloseObjectAuditAlarm proc near       ; DATA XREF: .rdata:00000001801202ED↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCloseObjectAuditAlarm
                mov     eax, 3Bh ; ';'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D745
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D745:                          ; CODE XREF: ZwCloseObjectAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCloseObjectAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009D748:                         ; DATA XREF: .pdata:000000018017857C↓o
                align 10h
; Exported entry 345. NtDuplicateObject
; Exported entry 1931. ZwDuplicateObject

; =============== S U B R O U T I N E =======================================


                public ZwDuplicateObject
ZwDuplicateObject proc near             ; CODE XREF: sub_1800548D0+94↑p
                                        ; RtlReportSilentProcessExit+D9↑p ...
                mov     r10, rcx        ; NtDuplicateObject
                mov     eax, 3Ch ; '<'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D765
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D765:                          ; CODE XREF: ZwDuplicateObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDuplicateObject endp

; ---------------------------------------------------------------------------
algn_18009D768:                         ; DATA XREF: .pdata:0000000180178588↓o
                align 10h
; Exported entry 467. NtQueryAttributesFile
; Exported entry 2052. ZwQueryAttributesFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryAttributesFile
ZwQueryAttributesFile proc near         ; CODE XREF: sub_18001A1F0+98↑p
                                        ; sub_18005F2EC+8A↑p ...
                mov     r10, rcx        ; NtQueryAttributesFile
                mov     eax, 3Dh ; '='
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D785
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D785:                          ; CODE XREF: ZwQueryAttributesFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryAttributesFile endp

; ---------------------------------------------------------------------------
algn_18009D788:                         ; DATA XREF: .pdata:0000000180178594↓o
                align 10h
; Exported entry 261. NtClearEvent
; Exported entry 1847. ZwClearEvent

; =============== S U B R O U T I N E =======================================


                public ZwClearEvent
ZwClearEvent    proc near               ; DATA XREF: .rdata:00000001801202FC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtClearEvent
                mov     eax, 3Eh ; '>'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D7A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D7A5:                          ; CODE XREF: ZwClearEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwClearEvent    endp

; ---------------------------------------------------------------------------
algn_18009D7A8:                         ; DATA XREF: .pdata:00000001801785A0↓o
                align 10h
; Exported entry 534. NtReadVirtualMemory
; Exported entry 2119. ZwReadVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwReadVirtualMemory
ZwReadVirtualMemory proc near           ; CODE XREF: RtlWow64GetSharedInfoProcess+6E↑p
                                        ; RtlQueryProcessDebugInformation+25A↓p ...
                mov     r10, rcx        ; NtReadVirtualMemory
                mov     eax, 3Fh ; '?'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D7C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D7C5:                          ; CODE XREF: ZwReadVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReadVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D7C8:                         ; DATA XREF: .pdata:00000001801785AC↓o
                align 10h
; Exported entry 424. NtOpenEvent
; Exported entry 2009. ZwOpenEvent

; =============== S U B R O U T I N E =======================================


                public ZwOpenEvent
ZwOpenEvent     proc near               ; CODE XREF: sub_1800DD594+54↓p
                                        ; DATA XREF: .rdata:000000018011DF68↓o ...
                mov     r10, rcx        ; NtOpenEvent
                mov     eax, 40h ; '@'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D7E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D7E5:                          ; CODE XREF: ZwOpenEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenEvent     endp

; ---------------------------------------------------------------------------
algn_18009D7E8:                         ; DATA XREF: .pdata:00000001801785B8↓o
                align 10h
; Exported entry 214. NtAdjustPrivilegesToken
; Exported entry 1800. ZwAdjustPrivilegesToken

; =============== S U B R O U T I N E =======================================


                public ZwAdjustPrivilegesToken
ZwAdjustPrivilegesToken proc near       ; CODE XREF: RtlAcquirePrivilege+146↑p
                                        ; RtlAdjustPrivilege+92↑p ...
                mov     r10, rcx        ; NtAdjustPrivilegesToken
                mov     eax, 41h ; 'A'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D805
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D805:                          ; CODE XREF: ZwAdjustPrivilegesToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAdjustPrivilegesToken endp

; ---------------------------------------------------------------------------
algn_18009D808:                         ; DATA XREF: .pdata:00000001801785C4↓o
                align 10h
; Exported entry 346. NtDuplicateToken
; Exported entry 1932. ZwDuplicateToken

; =============== S U B R O U T I N E =======================================


                public ZwDuplicateToken
ZwDuplicateToken proc near              ; CODE XREF: sub_18000BDF8+62↑p
                                        ; RtlCheckTokenMembershipEx+267↑p ...
                mov     r10, rcx        ; NtDuplicateToken
                mov     eax, 42h ; 'B'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D825
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D825:                          ; CODE XREF: ZwDuplicateToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDuplicateToken endp

; ---------------------------------------------------------------------------
algn_18009D828:                         ; DATA XREF: .pdata:00000001801785D0↓o
                align 10h
; Exported entry 275. NtContinue
; Exported entry 1861. ZwContinue

; =============== S U B R O U T I N E =======================================


                public ZwContinue
ZwContinue      proc near               ; CODE XREF: LdrInitializeThunk+13↑p
                                        ; sub_1800A1380+180↓p ...
                mov     r10, rcx        ; NtContinue
                mov     eax, 43h ; 'C'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D845
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D845:                          ; CODE XREF: ZwContinue+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwContinue      endp

; ---------------------------------------------------------------------------
algn_18009D848:                         ; DATA XREF: .pdata:00000001801785DC↓o
                align 10h
; Exported entry 473. NtQueryDefaultUILanguage
; Exported entry 2058. ZwQueryDefaultUILanguage

; =============== S U B R O U T I N E =======================================


                public ZwQueryDefaultUILanguage
ZwQueryDefaultUILanguage proc near      ; DATA XREF: .rdata:000000018012031A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryDefaultUILanguage
                mov     eax, 44h ; 'D'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D865
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D865:                          ; CODE XREF: ZwQueryDefaultUILanguage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDefaultUILanguage endp

; ---------------------------------------------------------------------------
algn_18009D868:                         ; DATA XREF: .pdata:00000001801785E8↓o
                align 10h
; Exported entry 525. NtQueueApcThread
; Exported entry 2110. ZwQueueApcThread

; =============== S U B R O U T I N E =======================================


                public ZwQueueApcThread
ZwQueueApcThread proc near              ; CODE XREF: RtlQueueApcWow64Thread+7↓j
                                        ; DATA XREF: .rdata:000000018012031F↓o ...
                mov     r10, rcx        ; NtQueueApcThread
                mov     eax, 45h ; 'E'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D885
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D885:                          ; CODE XREF: ZwQueueApcThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueueApcThread endp

; ---------------------------------------------------------------------------
algn_18009D888:                         ; DATA XREF: .pdata:00000001801785F4↓o
                align 10h
; Exported entry 672. NtYieldExecution
; Exported entry 2257. ZwYieldExecution

; =============== S U B R O U T I N E =======================================


                public ZwYieldExecution
ZwYieldExecution proc near              ; DATA XREF: .rdata:0000000180120324↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtYieldExecution
                mov     eax, 46h ; 'F'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D8A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D8A5:                          ; CODE XREF: ZwYieldExecution+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwYieldExecution endp

; ---------------------------------------------------------------------------
algn_18009D8A8:                         ; DATA XREF: .pdata:0000000180178600↓o
                align 10h
; Exported entry 209. NtAddAtom
; Exported entry 1795. ZwAddAtom

; =============== S U B R O U T I N E =======================================


                public ZwAddAtom
ZwAddAtom       proc near               ; DATA XREF: .rdata:0000000180120329↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAddAtom
                mov     eax, 47h ; 'G'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D8C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D8C5:                          ; CODE XREF: ZwAddAtom+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAddAtom       endp

; ---------------------------------------------------------------------------
algn_18009D8C8:                         ; DATA XREF: .pdata:000000018017860C↓o
                align 10h
; Exported entry 286. NtCreateEvent
; Exported entry 1872. ZwCreateEvent

; =============== S U B R O U T I N E =======================================


                public ZwCreateEvent
ZwCreateEvent   proc near               ; CODE XREF: sub_180056DCC+2B3↑p
                                        ; sub_180056DCC+2D4↑p ...
                mov     r10, rcx        ; NtCreateEvent
                mov     eax, 48h ; 'H'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D8E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D8E5:                          ; CODE XREF: ZwCreateEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateEvent   endp

; ---------------------------------------------------------------------------
algn_18009D8E8:                         ; DATA XREF: .pdata:0000000180178618↓o
                align 10h
; Exported entry 522. NtQueryVolumeInformationFile
; Exported entry 2107. ZwQueryVolumeInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryVolumeInformationFile
ZwQueryVolumeInformationFile proc near  ; CODE XREF: sub_1800556C4+A4↑p
                                        ; sub_180056518+64B↑p ...
                mov     r10, rcx        ; NtQueryVolumeInformationFile
                mov     eax, 49h ; 'I'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D905
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D905:                          ; CODE XREF: ZwQueryVolumeInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryVolumeInformationFile endp

; ---------------------------------------------------------------------------
algn_18009D908:                         ; DATA XREF: .pdata:0000000180178624↓o
                align 10h
; Exported entry 310. NtCreateSection
; Exported entry 1896. ZwCreateSection

; =============== S U B R O U T I N E =======================================


                public ZwCreateSection
ZwCreateSection proc near               ; CODE XREF: sub_180008FE4+1AC↑p
                                        ; sub_18004BA18+165↑p ...
                mov     r10, rcx        ; NtCreateSection
                mov     eax, 4Ah ; 'J'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D925
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D925:                          ; CODE XREF: ZwCreateSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateSection endp

; ---------------------------------------------------------------------------
algn_18009D928:                         ; DATA XREF: .pdata:0000000180178630↓o
                align 10h
; Exported entry 359. NtFlushBuffersFile
; Exported entry 1945. ZwFlushBuffersFile

; =============== S U B R O U T I N E =======================================


                public ZwFlushBuffersFile
ZwFlushBuffersFile proc near            ; DATA XREF: .rdata:000000018012033D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushBuffersFile
                mov     eax, 4Bh ; 'K'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D945
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D945:                          ; CODE XREF: ZwFlushBuffersFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushBuffersFile endp

; ---------------------------------------------------------------------------
algn_18009D948:                         ; DATA XREF: .pdata:000000018017863C↓o
                align 10h
; Exported entry 249. NtApphelpCacheControl
; Exported entry 1835. ZwApphelpCacheControl

; =============== S U B R O U T I N E =======================================


                public ZwApphelpCacheControl
ZwApphelpCacheControl proc near         ; CODE XREF: sub_180073554+7F↑p
                                        ; DATA XREF: .rdata:0000000180120342↓o ...
                mov     r10, rcx        ; NtApphelpCacheControl
                mov     eax, 4Ch ; 'L'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D965
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D965:                          ; CODE XREF: ZwApphelpCacheControl+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwApphelpCacheControl endp

; ---------------------------------------------------------------------------
algn_18009D968:                         ; DATA XREF: .pdata:0000000180178648↓o
                align 10h
; Exported entry 305. NtCreateProcessEx
; Exported entry 1891. ZwCreateProcessEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateProcessEx
ZwCreateProcessEx proc near             ; CODE XREF: PssNtCaptureSnapshot+29B↓p
                                        ; DATA XREF: .rdata:000000018011DFC0↓o ...
                mov     r10, rcx        ; NtCreateProcessEx
                mov     eax, 4Dh ; 'M'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D985
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D985:                          ; CODE XREF: ZwCreateProcessEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateProcessEx endp

; ---------------------------------------------------------------------------
algn_18009D988:                         ; DATA XREF: .pdata:0000000180178654↓o
                align 10h
; Exported entry 314. NtCreateThread
; Exported entry 1900. ZwCreateThread

; =============== S U B R O U T I N E =======================================


                public ZwCreateThread
ZwCreateThread  proc near               ; DATA XREF: .rdata:000000018011DFA8↓o
                                        ; .rdata:000000018012034C↓o ...
                mov     r10, rcx        ; NtCreateThread
                mov     eax, 4Eh ; 'N'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D9A5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D9A5:                          ; CODE XREF: ZwCreateThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateThread  endp

; ---------------------------------------------------------------------------
algn_18009D9A8:                         ; DATA XREF: .pdata:0000000180178660↓o
                align 10h
; Exported entry 392. NtIsProcessInJob
; Exported entry 1977. ZwIsProcessInJob

; =============== S U B R O U T I N E =======================================


                public ZwIsProcessInJob
ZwIsProcessInJob proc near              ; DATA XREF: .rdata:0000000180120351↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtIsProcessInJob
                mov     eax, 4Fh ; 'O'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D9C5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D9C5:                          ; CODE XREF: ZwIsProcessInJob+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwIsProcessInJob endp

; ---------------------------------------------------------------------------
algn_18009D9C8:                         ; DATA XREF: .pdata:000000018017866C↓o
                align 10h
; Exported entry 464. NtProtectVirtualMemory
; Exported entry 2049. ZwProtectVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwProtectVirtualMemory
ZwProtectVirtualMemory proc near        ; CODE XREF: sub_180003888+6CB↑p
                                        ; sub_180004484+8C↑p ...
                mov     r10, rcx        ; NtProtectVirtualMemory
                mov     eax, 50h ; 'P'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009D9E5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009D9E5:                          ; CODE XREF: ZwProtectVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwProtectVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009D9E8:                         ; DATA XREF: .pdata:0000000180178678↓o
                align 10h
; Exported entry 507. NtQuerySection
; Exported entry 2092. ZwQuerySection

; =============== S U B R O U T I N E =======================================


                public ZwQuerySection
ZwQuerySection  proc near               ; CODE XREF: sub_1800DB4F0+497↓p
                                        ; sub_180115D90+2E↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQuerySection
                mov     eax, 51h ; 'Q'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DA05
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DA05:                          ; CODE XREF: ZwQuerySection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySection  endp

; ---------------------------------------------------------------------------
algn_18009DA08:                         ; DATA XREF: .pdata:0000000180178684↓o
                align 10h
; Exported entry 561. NtResumeThread
; Exported entry 2146. ZwResumeThread

; =============== S U B R O U T I N E =======================================


                public ZwResumeThread
ZwResumeThread  proc near               ; CODE XREF: EtwpCreateEtwThread+46↑p
                                        ; RtlSetProcessDebugInformation+D6↓p ...
                mov     r10, rcx        ; NtResumeThread
                mov     eax, 52h ; 'R'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DA25
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DA25:                          ; CODE XREF: ZwResumeThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwResumeThread  endp

; ---------------------------------------------------------------------------
algn_18009DA28:                         ; DATA XREF: .pdata:0000000180178690↓o
                align 10h
; Exported entry 639. NtTerminateThread
; Exported entry 2224. ZwTerminateThread

; =============== S U B R O U T I N E =======================================


                public ZwTerminateThread
ZwTerminateThread proc near             ; CODE XREF: RtlExitUserThread+49↑p
                                        ; EtwpCreateEtwThread+654F7↓p ...
                mov     r10, rcx        ; NtTerminateThread
                mov     eax, 53h ; 'S'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DA45
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DA45:                          ; CODE XREF: ZwTerminateThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTerminateThread endp

; ---------------------------------------------------------------------------
algn_18009DA48:                         ; DATA XREF: .pdata:000000018017869C↓o
                align 10h
; Exported entry 533. NtReadRequestData
; Exported entry 2118. ZwReadRequestData

; =============== S U B R O U T I N E =======================================


                public ZwReadRequestData
ZwReadRequestData proc near             ; DATA XREF: .rdata:000000018012036A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReadRequestData
                mov     eax, 54h ; 'T'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DA65
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DA65:                          ; CODE XREF: ZwReadRequestData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReadRequestData endp

; ---------------------------------------------------------------------------
algn_18009DA68:                         ; DATA XREF: .pdata:00000001801786A8↓o
                align 10h
; Exported entry 288. NtCreateFile
; Exported entry 1874. ZwCreateFile

; =============== S U B R O U T I N E =======================================


                public ZwCreateFile
ZwCreateFile    proc near               ; CODE XREF: sub_18004BDB8+E3↑p
                                        ; sub_180056C34+107↑p ...
                mov     r10, rcx        ; NtCreateFile
                mov     eax, 55h ; 'U'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DA85
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DA85:                          ; CODE XREF: ZwCreateFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateFile    endp

; ---------------------------------------------------------------------------
algn_18009DA88:                         ; DATA XREF: .pdata:00000001801786B4↓o
                align 10h
; Exported entry 479. NtQueryEvent
; Exported entry 2064. ZwQueryEvent

; =============== S U B R O U T I N E =======================================


                public ZwQueryEvent
ZwQueryEvent    proc near               ; CODE XREF: sub_180115C90+25↓p
                                        ; DATA XREF: .rdata:0000000180120374↓o ...
                mov     r10, rcx        ; NtQueryEvent
                mov     eax, 56h ; 'V'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DAA5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DAA5:                          ; CODE XREF: ZwQueryEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryEvent    endp

; ---------------------------------------------------------------------------
algn_18009DAA8:                         ; DATA XREF: .pdata:00000001801786C0↓o
                align 10h
; Exported entry 670. NtWriteRequestData
; Exported entry 2255. ZwWriteRequestData

; =============== S U B R O U T I N E =======================================


                public ZwWriteRequestData
ZwWriteRequestData proc near            ; DATA XREF: .rdata:0000000180120379↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWriteRequestData
                mov     eax, 57h ; 'W'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DAC5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DAC5:                          ; CODE XREF: ZwWriteRequestData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWriteRequestData endp

; ---------------------------------------------------------------------------
algn_18009DAC8:                         ; DATA XREF: .pdata:00000001801786CC↓o
                align 10h
; Exported entry 422. NtOpenDirectoryObject
; Exported entry 2007. ZwOpenDirectoryObject

; =============== S U B R O U T I N E =======================================


                public ZwOpenDirectoryObject
ZwOpenDirectoryObject proc near         ; CODE XREF: sub_1800D1CE0+D1C↓p
                                        ; sub_1800DB4F0+A9↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtOpenDirectoryObject
                mov     eax, 58h ; 'X'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DAE5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DAE5:                          ; CODE XREF: ZwOpenDirectoryObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenDirectoryObject endp

; ---------------------------------------------------------------------------
algn_18009DAE8:                         ; DATA XREF: .pdata:00000001801786D8↓o
                align 10h
; Exported entry 203. NtAccessCheckByTypeAndAuditAlarm
; Exported entry 1789. ZwAccessCheckByTypeAndAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckByTypeAndAuditAlarm
ZwAccessCheckByTypeAndAuditAlarm proc near
                                        ; DATA XREF: .rdata:0000000180120383↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckByTypeAndAuditAlarm
                mov     eax, 59h ; 'Y'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DB05
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DB05:                          ; CODE XREF: ZwAccessCheckByTypeAndAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckByTypeAndAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009DB08:                         ; DATA XREF: .pdata:00000001801786E4↓o
                align 10h
; Exported entry 517. NtQuerySystemTime
; Exported entry 2102. ZwQuerySystemTime
; [00000005 BYTES: COLLAPSED FUNCTION ZwQuerySystemTime. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_18009DB15:                         ; DATA XREF: .pdata:00000001801786F0↓o
                align 20h
; Exported entry 661. NtWaitForMultipleObjects
; Exported entry 2246. ZwWaitForMultipleObjects

; =============== S U B R O U T I N E =======================================


                public ZwWaitForMultipleObjects
ZwWaitForMultipleObjects proc near      ; CODE XREF: TpTrimPools+234↑p
                                        ; RtlCreateProcessReflection+42E↓p ...
                mov     r10, rcx        ; NtWaitForMultipleObjects
                mov     eax, 5Bh ; '['
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DB35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DB35:                          ; CODE XREF: ZwWaitForMultipleObjects+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForMultipleObjects endp

; ---------------------------------------------------------------------------
algn_18009DB38:                         ; DATA XREF: .pdata:00000001801786FC↓o
                align 20h
; Exported entry 594. NtSetInformationObject
; Exported entry 2179. ZwSetInformationObject

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationObject
ZwSetInformationObject proc near        ; CODE XREF: sub_1800547D4+63↑p
                                        ; sub_180054484+51428↓p ...
                mov     r10, rcx        ; NtSetInformationObject
                mov     eax, 5Ch ; '\'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DB55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DB55:                          ; CODE XREF: ZwSetInformationObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationObject endp

; ---------------------------------------------------------------------------
algn_18009DB58:                         ; DATA XREF: .pdata:0000000180178708↓o
                align 20h
; Exported entry 255. NtCancelIoFile
; Exported entry 1841. ZwCancelIoFile

; =============== S U B R O U T I N E =======================================


                public ZwCancelIoFile
ZwCancelIoFile  proc near               ; DATA XREF: .rdata:0000000180120397↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCancelIoFile
                mov     eax, 5Dh ; ']'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DB75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DB75:                          ; CODE XREF: ZwCancelIoFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelIoFile  endp

; ---------------------------------------------------------------------------
algn_18009DB78:                         ; DATA XREF: .pdata:0000000180178714↓o
                align 20h
; Exported entry 644. NtTraceEvent
; Exported entry 2229. ZwTraceEvent

; =============== S U B R O U T I N E =======================================


                public ZwTraceEvent
ZwTraceEvent    proc near               ; CODE XREF: sub_18004F238+171↑p
                                        ; EtwTraceMessageVa+86↑p ...
                mov     r10, rcx        ; NtTraceEvent
                mov     eax, 5Eh ; '^'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DB95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DB95:                          ; CODE XREF: ZwTraceEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTraceEvent    endp

; ---------------------------------------------------------------------------
algn_18009DB98:                         ; DATA XREF: .pdata:0000000180178720↓o
                align 20h
; Exported entry 454. NtPowerInformation
; Exported entry 2039. ZwPowerInformation

; =============== S U B R O U T I N E =======================================


                public ZwPowerInformation
ZwPowerInformation proc near            ; CODE XREF: sub_180085AA4+3A↑p
                                        ; RtlCheckSystemBootStatusIntegrity+4C↓p ...
                mov     r10, rcx        ; NtPowerInformation
                mov     eax, 5Fh ; '_'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DBB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DBB5:                          ; CODE XREF: ZwPowerInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPowerInformation endp

; ---------------------------------------------------------------------------
algn_18009DBB8:                         ; DATA XREF: .pdata:000000018017872C↓o
                align 20h
; Exported entry 623. NtSetValueKey
; Exported entry 2208. ZwSetValueKey

; =============== S U B R O U T I N E =======================================


                public ZwSetValueKey
ZwSetValueKey   proc near               ; CODE XREF: sub_180080078+89↑p
                                        ; RtlWriteRegistryValue+63↑p ...
                mov     r10, rcx        ; NtSetValueKey
                mov     eax, 60h ; '`'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DBD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DBD5:                          ; CODE XREF: ZwSetValueKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetValueKey   endp

; ---------------------------------------------------------------------------
algn_18009DBD8:                         ; DATA XREF: .pdata:0000000180178738↓o
                align 20h
; Exported entry 258. NtCancelTimer
; Exported entry 1844. ZwCancelTimer

; =============== S U B R O U T I N E =======================================


                public ZwCancelTimer
ZwCancelTimer   proc near               ; DATA XREF: .rdata:00000001801203AB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCancelTimer
                mov     eax, 61h ; 'a'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DBF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DBF5:                          ; CODE XREF: ZwCancelTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelTimer   endp

; ---------------------------------------------------------------------------
algn_18009DBF8:                         ; DATA XREF: .pdata:0000000180178744↓o
                align 20h
; Exported entry 618. NtSetTimer
; Exported entry 2203. ZwSetTimer

; =============== S U B R O U T I N E =======================================


                public ZwSetTimer
ZwSetTimer      proc near               ; DATA XREF: .rdata:00000001801203B0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetTimer
                mov     eax, 62h ; 'b'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DC15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DC15:                          ; CODE XREF: ZwSetTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetTimer      endp

; ---------------------------------------------------------------------------
algn_18009DC18:                         ; DATA XREF: .pdata:0000000180178750↓o
                align 20h
; Exported entry 202. NtAccessCheckByType
; Exported entry 1788. ZwAccessCheckByType

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckByType
ZwAccessCheckByType proc near           ; DATA XREF: .rdata:00000001801203B5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckByType
                mov     eax, 63h ; 'c'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DC35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DC35:                          ; CODE XREF: ZwAccessCheckByType+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckByType endp

; ---------------------------------------------------------------------------
algn_18009DC38:                         ; DATA XREF: .pdata:000000018017875C↓o
                align 20h
; Exported entry 204. NtAccessCheckByTypeResultList
; Exported entry 1790. ZwAccessCheckByTypeResultList

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckByTypeResultList
ZwAccessCheckByTypeResultList proc near ; DATA XREF: .rdata:00000001801203BA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckByTypeResultList
                mov     eax, 64h ; 'd'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DC55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DC55:                          ; CODE XREF: ZwAccessCheckByTypeResultList+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckByTypeResultList endp

; ---------------------------------------------------------------------------
algn_18009DC58:                         ; DATA XREF: .pdata:0000000180178768↓o
                align 20h
; Exported entry 205. NtAccessCheckByTypeResultListAndAuditAlarm
; Exported entry 1791. ZwAccessCheckByTypeResultListAndAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckByTypeResultListAndAuditAlarm
ZwAccessCheckByTypeResultListAndAuditAlarm proc near
                                        ; DATA XREF: .rdata:00000001801203BF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckByTypeResultListAndAuditAlarm
                mov     eax, 65h ; 'e'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DC75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DC75:                          ; CODE XREF: ZwAccessCheckByTypeResultListAndAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckByTypeResultListAndAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009DC78:                         ; DATA XREF: .pdata:0000000180178774↓o
                align 20h
; Exported entry 206. NtAccessCheckByTypeResultListAndAuditAlarmByHandle
; Exported entry 1792. ZwAccessCheckByTypeResultListAndAuditAlarmByHandle

; =============== S U B R O U T I N E =======================================


                public ZwAccessCheckByTypeResultListAndAuditAlarmByHandle
ZwAccessCheckByTypeResultListAndAuditAlarmByHandle proc near
                                        ; DATA XREF: .rdata:00000001801203C4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAccessCheckByTypeResultListAndAuditAlarmByHandle
                mov     eax, 66h ; 'f'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DC95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DC95:                          ; CODE XREF: ZwAccessCheckByTypeResultListAndAuditAlarmByHandle+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAccessCheckByTypeResultListAndAuditAlarmByHandle endp

; ---------------------------------------------------------------------------
algn_18009DC98:                         ; DATA XREF: .pdata:0000000180178780↓o
                align 20h
; Exported entry 207. NtAcquireCrossVmMutant
; Exported entry 1793. ZwAcquireCrossVmMutant

; =============== S U B R O U T I N E =======================================


                public ZwAcquireCrossVmMutant
ZwAcquireCrossVmMutant proc near        ; DATA XREF: .rdata:00000001801203C9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAcquireCrossVmMutant
                mov     eax, 67h ; 'g'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DCB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DCB5:                          ; CODE XREF: ZwAcquireCrossVmMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAcquireCrossVmMutant endp

; ---------------------------------------------------------------------------
algn_18009DCB8:                         ; DATA XREF: .pdata:000000018017878C↓o
                align 20h
; Exported entry 208. NtAcquireProcessActivityReference
; Exported entry 1794. ZwAcquireProcessActivityReference

; =============== S U B R O U T I N E =======================================


                public ZwAcquireProcessActivityReference
ZwAcquireProcessActivityReference proc near
                                        ; DATA XREF: .rdata:00000001801203CE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAcquireProcessActivityReference
                mov     eax, 68h ; 'h'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DCD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DCD5:                          ; CODE XREF: ZwAcquireProcessActivityReference+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAcquireProcessActivityReference endp

; ---------------------------------------------------------------------------
algn_18009DCD8:                         ; DATA XREF: .pdata:0000000180178798↓o
                align 20h
; Exported entry 210. NtAddAtomEx
; Exported entry 1796. ZwAddAtomEx

; =============== S U B R O U T I N E =======================================


                public ZwAddAtomEx
ZwAddAtomEx     proc near               ; DATA XREF: .rdata:00000001801203D3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAddAtomEx
                mov     eax, 69h ; 'i'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DCF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DCF5:                          ; CODE XREF: ZwAddAtomEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAddAtomEx     endp

; ---------------------------------------------------------------------------
algn_18009DCF8:                         ; DATA XREF: .pdata:00000001801787A4↓o
                align 20h
; Exported entry 211. NtAddBootEntry
; Exported entry 1797. ZwAddBootEntry

; =============== S U B R O U T I N E =======================================


                public ZwAddBootEntry
ZwAddBootEntry  proc near               ; DATA XREF: .rdata:00000001801203D8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAddBootEntry
                mov     eax, 6Ah ; 'j'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DD15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DD15:                          ; CODE XREF: ZwAddBootEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAddBootEntry  endp

; ---------------------------------------------------------------------------
algn_18009DD18:                         ; DATA XREF: .pdata:00000001801787B0↓o
                align 20h
; Exported entry 212. NtAddDriverEntry
; Exported entry 1798. ZwAddDriverEntry

; =============== S U B R O U T I N E =======================================


                public ZwAddDriverEntry
ZwAddDriverEntry proc near              ; DATA XREF: .rdata:00000001801203DD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAddDriverEntry
                mov     eax, 6Bh ; 'k'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DD35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DD35:                          ; CODE XREF: ZwAddDriverEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAddDriverEntry endp

; ---------------------------------------------------------------------------
algn_18009DD38:                         ; DATA XREF: .pdata:00000001801787BC↓o
                align 20h
; Exported entry 213. NtAdjustGroupsToken
; Exported entry 1799. ZwAdjustGroupsToken

; =============== S U B R O U T I N E =======================================


                public ZwAdjustGroupsToken
ZwAdjustGroupsToken proc near           ; DATA XREF: .rdata:00000001801203E2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAdjustGroupsToken
                mov     eax, 6Ch ; 'l'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DD55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DD55:                          ; CODE XREF: ZwAdjustGroupsToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAdjustGroupsToken endp

; ---------------------------------------------------------------------------
algn_18009DD58:                         ; DATA XREF: .pdata:00000001801787C8↓o
                align 20h
; Exported entry 215. NtAdjustTokenClaimsAndDeviceGroups
; Exported entry 1801. ZwAdjustTokenClaimsAndDeviceGroups

; =============== S U B R O U T I N E =======================================


                public ZwAdjustTokenClaimsAndDeviceGroups
ZwAdjustTokenClaimsAndDeviceGroups proc near
                                        ; DATA XREF: .rdata:00000001801203E7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAdjustTokenClaimsAndDeviceGroups
                mov     eax, 6Dh ; 'm'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DD75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DD75:                          ; CODE XREF: ZwAdjustTokenClaimsAndDeviceGroups+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAdjustTokenClaimsAndDeviceGroups endp

; ---------------------------------------------------------------------------
algn_18009DD78:                         ; DATA XREF: .pdata:00000001801787D4↓o
                align 20h
; Exported entry 216. NtAlertResumeThread
; Exported entry 1802. ZwAlertResumeThread

; =============== S U B R O U T I N E =======================================


                public ZwAlertResumeThread
ZwAlertResumeThread proc near           ; DATA XREF: .rdata:00000001801203EC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlertResumeThread
                mov     eax, 6Eh ; 'n'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DD95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DD95:                          ; CODE XREF: ZwAlertResumeThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlertResumeThread endp

; ---------------------------------------------------------------------------
algn_18009DD98:                         ; DATA XREF: .pdata:00000001801787E0↓o
                align 20h
; Exported entry 217. NtAlertThread
; Exported entry 1803. ZwAlertThread

; =============== S U B R O U T I N E =======================================


                public ZwAlertThread
ZwAlertThread   proc near               ; DATA XREF: .rdata:00000001801203F1↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlertThread
                mov     eax, 6Fh ; 'o'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DDB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DDB5:                          ; CODE XREF: ZwAlertThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlertThread   endp

; ---------------------------------------------------------------------------
algn_18009DDB8:                         ; DATA XREF: .pdata:00000001801787EC↓o
                align 20h
; Exported entry 218. NtAlertThreadByThreadId
; Exported entry 1804. ZwAlertThreadByThreadId

; =============== S U B R O U T I N E =======================================


                public ZwAlertThreadByThreadId
ZwAlertThreadByThreadId proc near       ; CODE XREF: RtlDeleteCriticalSection+1A3↑p
                                        ; sub_180011840+1DF↑p ...
                mov     r10, rcx        ; NtAlertThreadByThreadId
                mov     eax, 70h ; 'p'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DDD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DDD5:                          ; CODE XREF: ZwAlertThreadByThreadId+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlertThreadByThreadId endp

; ---------------------------------------------------------------------------
algn_18009DDD8:                         ; DATA XREF: .pdata:00000001801787F8↓o
                align 20h
; Exported entry 219. NtAllocateLocallyUniqueId
; Exported entry 1805. ZwAllocateLocallyUniqueId

; =============== S U B R O U T I N E =======================================


                public ZwAllocateLocallyUniqueId
ZwAllocateLocallyUniqueId proc near     ; DATA XREF: .rdata:00000001801203FB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAllocateLocallyUniqueId
                mov     eax, 71h ; 'q'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DDF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DDF5:                          ; CODE XREF: ZwAllocateLocallyUniqueId+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateLocallyUniqueId endp

; ---------------------------------------------------------------------------
algn_18009DDF8:                         ; DATA XREF: .pdata:0000000180178804↓o
                align 20h
; Exported entry 220. NtAllocateReserveObject
; Exported entry 1806. ZwAllocateReserveObject

; =============== S U B R O U T I N E =======================================


                public ZwAllocateReserveObject
ZwAllocateReserveObject proc near       ; DATA XREF: .rdata:0000000180120400↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAllocateReserveObject
                mov     eax, 72h ; 'r'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DE15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DE15:                          ; CODE XREF: ZwAllocateReserveObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateReserveObject endp

; ---------------------------------------------------------------------------
algn_18009DE18:                         ; DATA XREF: .pdata:0000000180178810↓o
                align 20h
; Exported entry 221. NtAllocateUserPhysicalPages
; Exported entry 1807. ZwAllocateUserPhysicalPages

; =============== S U B R O U T I N E =======================================


                public ZwAllocateUserPhysicalPages
ZwAllocateUserPhysicalPages proc near   ; DATA XREF: .rdata:0000000180120405↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAllocateUserPhysicalPages
                mov     eax, 73h ; 's'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DE35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DE35:                          ; CODE XREF: ZwAllocateUserPhysicalPages+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateUserPhysicalPages endp

; ---------------------------------------------------------------------------
algn_18009DE38:                         ; DATA XREF: .pdata:000000018017881C↓o
                align 20h
; Exported entry 222. NtAllocateUserPhysicalPagesEx
; Exported entry 1808. ZwAllocateUserPhysicalPagesEx

; =============== S U B R O U T I N E =======================================


                public ZwAllocateUserPhysicalPagesEx
ZwAllocateUserPhysicalPagesEx proc near ; DATA XREF: .rdata:000000018012040A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAllocateUserPhysicalPagesEx
                mov     eax, 74h ; 't'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DE55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DE55:                          ; CODE XREF: ZwAllocateUserPhysicalPagesEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateUserPhysicalPagesEx endp

; ---------------------------------------------------------------------------
algn_18009DE58:                         ; DATA XREF: .pdata:0000000180178828↓o
                align 20h
; Exported entry 223. NtAllocateUuids
; Exported entry 1809. ZwAllocateUuids

; =============== S U B R O U T I N E =======================================


                public ZwAllocateUuids
ZwAllocateUuids proc near               ; DATA XREF: .rdata:000000018012040F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAllocateUuids
                mov     eax, 75h ; 'u'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DE75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DE75:                          ; CODE XREF: ZwAllocateUuids+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateUuids endp

; ---------------------------------------------------------------------------
algn_18009DE78:                         ; DATA XREF: .pdata:0000000180178834↓o
                align 20h
; Exported entry 225. NtAllocateVirtualMemoryEx
; Exported entry 1811. ZwAllocateVirtualMemoryEx

; =============== S U B R O U T I N E =======================================


                public ZwAllocateVirtualMemoryEx
ZwAllocateVirtualMemoryEx proc near     ; CODE XREF: sub_1800067A0+BC↑p
                                        ; sub_180022BAC+F9↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtAllocateVirtualMemoryEx
                mov     eax, 76h ; 'v'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DE95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DE95:                          ; CODE XREF: ZwAllocateVirtualMemoryEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAllocateVirtualMemoryEx endp

; ---------------------------------------------------------------------------
algn_18009DE98:                         ; DATA XREF: .pdata:0000000180178840↓o
                align 20h
; Exported entry 226. NtAlpcAcceptConnectPort
; Exported entry 1812. ZwAlpcAcceptConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcAcceptConnectPort
ZwAlpcAcceptConnectPort proc near       ; DATA XREF: .rdata:0000000180120419↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcAcceptConnectPort
                mov     eax, 77h ; 'w'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DEB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DEB5:                          ; CODE XREF: ZwAlpcAcceptConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcAcceptConnectPort endp

; ---------------------------------------------------------------------------
algn_18009DEB8:                         ; DATA XREF: .pdata:000000018017884C↓o
                align 20h
; Exported entry 227. NtAlpcCancelMessage
; Exported entry 1813. ZwAlpcCancelMessage

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCancelMessage
ZwAlpcCancelMessage proc near           ; DATA XREF: .rdata:000000018012041E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCancelMessage
                mov     eax, 78h ; 'x'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DED5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DED5:                          ; CODE XREF: ZwAlpcCancelMessage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCancelMessage endp

; ---------------------------------------------------------------------------
algn_18009DED8:                         ; DATA XREF: .pdata:0000000180178858↓o
                align 20h
; Exported entry 228. NtAlpcConnectPort
; Exported entry 1814. ZwAlpcConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcConnectPort
ZwAlpcConnectPort proc near             ; CODE XREF: RtlConnectToSm+11A↑p
                                        ; sub_1800DD2DC+15E↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtAlpcConnectPort
                mov     eax, 79h ; 'y'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DEF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DEF5:                          ; CODE XREF: ZwAlpcConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcConnectPort endp

; ---------------------------------------------------------------------------
algn_18009DEF8:                         ; DATA XREF: .pdata:0000000180178864↓o
                align 20h
; Exported entry 229. NtAlpcConnectPortEx
; Exported entry 1815. ZwAlpcConnectPortEx

; =============== S U B R O U T I N E =======================================


                public ZwAlpcConnectPortEx
ZwAlpcConnectPortEx proc near           ; DATA XREF: .rdata:0000000180120428↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcConnectPortEx
                mov     eax, 7Ah ; 'z'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DF15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DF15:                          ; CODE XREF: ZwAlpcConnectPortEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcConnectPortEx endp

; ---------------------------------------------------------------------------
algn_18009DF18:                         ; DATA XREF: .pdata:0000000180178870↓o
                align 20h
; Exported entry 230. NtAlpcCreatePort
; Exported entry 1816. ZwAlpcCreatePort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCreatePort
ZwAlpcCreatePort proc near              ; DATA XREF: .rdata:000000018012042D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCreatePort
                mov     eax, 7Bh ; '{'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DF35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DF35:                          ; CODE XREF: ZwAlpcCreatePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCreatePort endp

; ---------------------------------------------------------------------------
algn_18009DF38:                         ; DATA XREF: .pdata:000000018017887C↓o
                align 20h
; Exported entry 231. NtAlpcCreatePortSection
; Exported entry 1817. ZwAlpcCreatePortSection

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCreatePortSection
ZwAlpcCreatePortSection proc near       ; DATA XREF: .rdata:0000000180120432↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCreatePortSection
                mov     eax, 7Ch ; '|'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DF55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DF55:                          ; CODE XREF: ZwAlpcCreatePortSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCreatePortSection endp

; ---------------------------------------------------------------------------
algn_18009DF58:                         ; DATA XREF: .pdata:0000000180178888↓o
                align 20h
; Exported entry 232. NtAlpcCreateResourceReserve
; Exported entry 1818. ZwAlpcCreateResourceReserve

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCreateResourceReserve
ZwAlpcCreateResourceReserve proc near   ; DATA XREF: .rdata:0000000180120437↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCreateResourceReserve
                mov     eax, 7Dh ; '}'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DF75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DF75:                          ; CODE XREF: ZwAlpcCreateResourceReserve+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCreateResourceReserve endp

; ---------------------------------------------------------------------------
algn_18009DF78:                         ; DATA XREF: .pdata:0000000180178894↓o
                align 20h
; Exported entry 233. NtAlpcCreateSectionView
; Exported entry 1819. ZwAlpcCreateSectionView

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCreateSectionView
ZwAlpcCreateSectionView proc near       ; DATA XREF: .rdata:000000018012043C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCreateSectionView
                mov     eax, 7Eh ; '~'
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DF95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DF95:                          ; CODE XREF: ZwAlpcCreateSectionView+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCreateSectionView endp

; ---------------------------------------------------------------------------
algn_18009DF98:                         ; DATA XREF: .pdata:00000001801788A0↓o
                align 20h
; Exported entry 234. NtAlpcCreateSecurityContext
; Exported entry 1820. ZwAlpcCreateSecurityContext

; =============== S U B R O U T I N E =======================================


                public ZwAlpcCreateSecurityContext
ZwAlpcCreateSecurityContext proc near   ; DATA XREF: .rdata:0000000180120441↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcCreateSecurityContext
                mov     eax, 7Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DFB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DFB5:                          ; CODE XREF: ZwAlpcCreateSecurityContext+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcCreateSecurityContext endp

; ---------------------------------------------------------------------------
algn_18009DFB8:                         ; DATA XREF: .pdata:00000001801788AC↓o
                align 20h
; Exported entry 235. NtAlpcDeletePortSection
; Exported entry 1821. ZwAlpcDeletePortSection

; =============== S U B R O U T I N E =======================================


                public ZwAlpcDeletePortSection
ZwAlpcDeletePortSection proc near       ; DATA XREF: .rdata:0000000180120446↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcDeletePortSection
                mov     eax, 80h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DFD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DFD5:                          ; CODE XREF: ZwAlpcDeletePortSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcDeletePortSection endp

; ---------------------------------------------------------------------------
algn_18009DFD8:                         ; DATA XREF: .pdata:00000001801788B8↓o
                align 20h
; Exported entry 236. NtAlpcDeleteResourceReserve
; Exported entry 1822. ZwAlpcDeleteResourceReserve

; =============== S U B R O U T I N E =======================================


                public ZwAlpcDeleteResourceReserve
ZwAlpcDeleteResourceReserve proc near   ; DATA XREF: .rdata:000000018012044B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcDeleteResourceReserve
                mov     eax, 81h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009DFF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009DFF5:                          ; CODE XREF: ZwAlpcDeleteResourceReserve+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcDeleteResourceReserve endp

; ---------------------------------------------------------------------------
algn_18009DFF8:                         ; DATA XREF: .pdata:00000001801788C4↓o
                align 20h
; Exported entry 237. NtAlpcDeleteSectionView
; Exported entry 1823. ZwAlpcDeleteSectionView

; =============== S U B R O U T I N E =======================================


                public ZwAlpcDeleteSectionView
ZwAlpcDeleteSectionView proc near       ; DATA XREF: .rdata:0000000180120450↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcDeleteSectionView
                mov     eax, 82h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E015
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E015:                          ; CODE XREF: ZwAlpcDeleteSectionView+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcDeleteSectionView endp

; ---------------------------------------------------------------------------
algn_18009E018:                         ; DATA XREF: .pdata:00000001801788D0↓o
                align 20h
; Exported entry 238. NtAlpcDeleteSecurityContext
; Exported entry 1824. ZwAlpcDeleteSecurityContext

; =============== S U B R O U T I N E =======================================


                public ZwAlpcDeleteSecurityContext
ZwAlpcDeleteSecurityContext proc near   ; DATA XREF: .rdata:0000000180120455↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcDeleteSecurityContext
                mov     eax, 83h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E035
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E035:                          ; CODE XREF: ZwAlpcDeleteSecurityContext+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcDeleteSecurityContext endp

; ---------------------------------------------------------------------------
algn_18009E038:                         ; DATA XREF: .pdata:00000001801788DC↓o
                align 20h
; Exported entry 239. NtAlpcDisconnectPort
; Exported entry 1825. ZwAlpcDisconnectPort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcDisconnectPort
ZwAlpcDisconnectPort proc near          ; DATA XREF: .rdata:000000018012045A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcDisconnectPort
                mov     eax, 84h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E055
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E055:                          ; CODE XREF: ZwAlpcDisconnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcDisconnectPort endp

; ---------------------------------------------------------------------------
algn_18009E058:                         ; DATA XREF: .pdata:00000001801788E8↓o
                align 20h
; Exported entry 240. NtAlpcImpersonateClientContainerOfPort
; Exported entry 1826. ZwAlpcImpersonateClientContainerOfPort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcImpersonateClientContainerOfPort
ZwAlpcImpersonateClientContainerOfPort proc near
                                        ; DATA XREF: .rdata:000000018012045F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcImpersonateClientContainerOfPort
                mov     eax, 85h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E075
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E075:                          ; CODE XREF: ZwAlpcImpersonateClientContainerOfPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcImpersonateClientContainerOfPort endp

; ---------------------------------------------------------------------------
algn_18009E078:                         ; DATA XREF: .pdata:00000001801788F4↓o
                align 20h
; Exported entry 241. NtAlpcImpersonateClientOfPort
; Exported entry 1827. ZwAlpcImpersonateClientOfPort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcImpersonateClientOfPort
ZwAlpcImpersonateClientOfPort proc near ; DATA XREF: .rdata:0000000180120464↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcImpersonateClientOfPort
                mov     eax, 86h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E095
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E095:                          ; CODE XREF: ZwAlpcImpersonateClientOfPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcImpersonateClientOfPort endp

; ---------------------------------------------------------------------------
algn_18009E098:                         ; DATA XREF: .pdata:0000000180178900↓o
                align 20h
; Exported entry 242. NtAlpcOpenSenderProcess
; Exported entry 1828. ZwAlpcOpenSenderProcess

; =============== S U B R O U T I N E =======================================


                public ZwAlpcOpenSenderProcess
ZwAlpcOpenSenderProcess proc near       ; DATA XREF: .rdata:0000000180120469↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcOpenSenderProcess
                mov     eax, 87h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E0B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E0B5:                          ; CODE XREF: ZwAlpcOpenSenderProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcOpenSenderProcess endp

; ---------------------------------------------------------------------------
algn_18009E0B8:                         ; DATA XREF: .pdata:000000018017890C↓o
                align 20h
; Exported entry 243. NtAlpcOpenSenderThread
; Exported entry 1829. ZwAlpcOpenSenderThread

; =============== S U B R O U T I N E =======================================


                public ZwAlpcOpenSenderThread
ZwAlpcOpenSenderThread proc near        ; DATA XREF: .rdata:000000018012046E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcOpenSenderThread
                mov     eax, 88h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E0D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E0D5:                          ; CODE XREF: ZwAlpcOpenSenderThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcOpenSenderThread endp

; ---------------------------------------------------------------------------
algn_18009E0D8:                         ; DATA XREF: .pdata:0000000180178918↓o
                align 20h
; Exported entry 244. NtAlpcQueryInformation
; Exported entry 1830. ZwAlpcQueryInformation

; =============== S U B R O U T I N E =======================================


                public ZwAlpcQueryInformation
ZwAlpcQueryInformation proc near        ; CODE XREF: TpWaitForAlpcCompletion+5A↑p
                                        ; DATA XREF: .rdata:0000000180120473↓o ...
                mov     r10, rcx        ; NtAlpcQueryInformation
                mov     eax, 89h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E0F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E0F5:                          ; CODE XREF: ZwAlpcQueryInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcQueryInformation endp

; ---------------------------------------------------------------------------
algn_18009E0F8:                         ; DATA XREF: .pdata:0000000180178924↓o
                align 20h
; Exported entry 245. NtAlpcQueryInformationMessage
; Exported entry 1831. ZwAlpcQueryInformationMessage

; =============== S U B R O U T I N E =======================================


                public ZwAlpcQueryInformationMessage
ZwAlpcQueryInformationMessage proc near ; DATA XREF: .rdata:0000000180120478↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcQueryInformationMessage
                mov     eax, 8Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E115
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E115:                          ; CODE XREF: ZwAlpcQueryInformationMessage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcQueryInformationMessage endp

; ---------------------------------------------------------------------------
algn_18009E118:                         ; DATA XREF: .pdata:0000000180178930↓o
                align 20h
; Exported entry 246. NtAlpcRevokeSecurityContext
; Exported entry 1832. ZwAlpcRevokeSecurityContext

; =============== S U B R O U T I N E =======================================


                public ZwAlpcRevokeSecurityContext
ZwAlpcRevokeSecurityContext proc near   ; DATA XREF: .rdata:000000018012047D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAlpcRevokeSecurityContext
                mov     eax, 8Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E135
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E135:                          ; CODE XREF: ZwAlpcRevokeSecurityContext+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcRevokeSecurityContext endp

; ---------------------------------------------------------------------------
algn_18009E138:                         ; DATA XREF: .pdata:000000018017893C↓o
                align 20h
; Exported entry 247. NtAlpcSendWaitReceivePort
; Exported entry 1833. ZwAlpcSendWaitReceivePort

; =============== S U B R O U T I N E =======================================


                public ZwAlpcSendWaitReceivePort
ZwAlpcSendWaitReceivePort proc near     ; CODE XREF: CsrClientCallServer+E7↑p
                                        ; sub_180054A50+38↑p ...
                mov     r10, rcx        ; NtAlpcSendWaitReceivePort
                mov     eax, 8Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E155
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E155:                          ; CODE XREF: ZwAlpcSendWaitReceivePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcSendWaitReceivePort endp

; ---------------------------------------------------------------------------
algn_18009E158:                         ; DATA XREF: .pdata:0000000180178948↓o
                align 20h
; Exported entry 248. NtAlpcSetInformation
; Exported entry 1834. ZwAlpcSetInformation

; =============== S U B R O U T I N E =======================================


                public ZwAlpcSetInformation
ZwAlpcSetInformation proc near          ; CODE XREF: sub_1800200D0+34A↑p
                                        ; TpCallbackIndependent+15D↑p ...
                mov     r10, rcx        ; NtAlpcSetInformation
                mov     eax, 8Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E175
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E175:                          ; CODE XREF: ZwAlpcSetInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAlpcSetInformation endp

; ---------------------------------------------------------------------------
algn_18009E178:                         ; DATA XREF: .pdata:0000000180178954↓o
                align 20h
; Exported entry 250. NtAreMappedFilesTheSame
; Exported entry 1836. ZwAreMappedFilesTheSame

; =============== S U B R O U T I N E =======================================


                public ZwAreMappedFilesTheSame
ZwAreMappedFilesTheSame proc near       ; CODE XREF: sub_1800144C0+F8↑p
                                        ; DATA XREF: .rdata:000000018012048C↓o ...
                mov     r10, rcx        ; NtAreMappedFilesTheSame
                mov     eax, 8Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E195
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E195:                          ; CODE XREF: ZwAreMappedFilesTheSame+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAreMappedFilesTheSame endp

; ---------------------------------------------------------------------------
algn_18009E198:                         ; DATA XREF: .pdata:0000000180178960↓o
                align 20h
; Exported entry 251. NtAssignProcessToJobObject
; Exported entry 1837. ZwAssignProcessToJobObject

; =============== S U B R O U T I N E =======================================


                public ZwAssignProcessToJobObject
ZwAssignProcessToJobObject proc near    ; DATA XREF: .rdata:0000000180120491↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtAssignProcessToJobObject
                mov     eax, 8Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E1B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E1B5:                          ; CODE XREF: ZwAssignProcessToJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAssignProcessToJobObject endp

; ---------------------------------------------------------------------------
algn_18009E1B8:                         ; DATA XREF: .pdata:000000018017896C↓o
                align 20h
; Exported entry 252. NtAssociateWaitCompletionPacket
; Exported entry 1838. ZwAssociateWaitCompletionPacket

; =============== S U B R O U T I N E =======================================


                public ZwAssociateWaitCompletionPacket
ZwAssociateWaitCompletionPacket proc near
                                        ; CODE XREF: sub_180011AE0+224↑p
                                        ; sub_180013704+56↑p ...
                mov     r10, rcx        ; NtAssociateWaitCompletionPacket
                mov     eax, 90h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E1D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E1D5:                          ; CODE XREF: ZwAssociateWaitCompletionPacket+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwAssociateWaitCompletionPacket endp

; ---------------------------------------------------------------------------
algn_18009E1D8:                         ; DATA XREF: .pdata:0000000180178978↓o
                align 20h
; Exported entry 253. NtCallEnclave
; Exported entry 1839. ZwCallEnclave

; =============== S U B R O U T I N E =======================================


                public ZwCallEnclave
ZwCallEnclave   proc near               ; CODE XREF: RtlEnclaveCallDispatch+2C↓p
                                        ; sub_1800A0FD0+66↓p ...
                mov     r10, rcx        ; NtCallEnclave
                mov     eax, 91h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E1F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E1F5:                          ; CODE XREF: ZwCallEnclave+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCallEnclave   endp

; ---------------------------------------------------------------------------
algn_18009E1F8:                         ; DATA XREF: .pdata:0000000180178984↓o
                align 20h
; Exported entry 256. NtCancelIoFileEx
; Exported entry 1842. ZwCancelIoFileEx

; =============== S U B R O U T I N E =======================================


                public ZwCancelIoFileEx
ZwCancelIoFileEx proc near              ; DATA XREF: .rdata:00000001801204A0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCancelIoFileEx
                mov     eax, 92h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E215
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E215:                          ; CODE XREF: ZwCancelIoFileEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelIoFileEx endp

; ---------------------------------------------------------------------------
algn_18009E218:                         ; DATA XREF: .pdata:0000000180178990↓o
                align 20h
; Exported entry 257. NtCancelSynchronousIoFile
; Exported entry 1843. ZwCancelSynchronousIoFile

; =============== S U B R O U T I N E =======================================


                public ZwCancelSynchronousIoFile
ZwCancelSynchronousIoFile proc near     ; DATA XREF: .rdata:00000001801204A5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCancelSynchronousIoFile
                mov     eax, 93h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E235
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E235:                          ; CODE XREF: ZwCancelSynchronousIoFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelSynchronousIoFile endp

; ---------------------------------------------------------------------------
algn_18009E238:                         ; DATA XREF: .pdata:000000018017899C↓o
                align 20h
; Exported entry 259. NtCancelTimer2
; Exported entry 1845. ZwCancelTimer2

; =============== S U B R O U T I N E =======================================


                public ZwCancelTimer2
ZwCancelTimer2  proc near               ; CODE XREF: sub_180013B20+14C↑p
                                        ; DATA XREF: .rdata:00000001801204AA↓o ...
                mov     r10, rcx        ; NtCancelTimer2
                mov     eax, 94h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E255
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E255:                          ; CODE XREF: ZwCancelTimer2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelTimer2  endp

; ---------------------------------------------------------------------------
algn_18009E258:                         ; DATA XREF: .pdata:00000001801789A8↓o
                align 20h
; Exported entry 260. NtCancelWaitCompletionPacket
; Exported entry 1846. ZwCancelWaitCompletionPacket

; =============== S U B R O U T I N E =======================================


                public ZwCancelWaitCompletionPacket
ZwCancelWaitCompletionPacket proc near  ; CODE XREF: sub_180011E7C+5F↑p
                                        ; sub_180083F98+12↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtCancelWaitCompletionPacket
                mov     eax, 95h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E275
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E275:                          ; CODE XREF: ZwCancelWaitCompletionPacket+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCancelWaitCompletionPacket endp

; ---------------------------------------------------------------------------
algn_18009E278:                         ; DATA XREF: .pdata:00000001801789B4↓o
                align 20h
; Exported entry 264. NtCommitComplete
; Exported entry 1850. ZwCommitComplete

; =============== S U B R O U T I N E =======================================


                public ZwCommitComplete
ZwCommitComplete proc near              ; DATA XREF: .rdata:00000001801204B4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCommitComplete
                mov     eax, 96h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E295
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E295:                          ; CODE XREF: ZwCommitComplete+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCommitComplete endp

; ---------------------------------------------------------------------------
algn_18009E298:                         ; DATA XREF: .pdata:00000001801789C0↓o
                align 20h
; Exported entry 265. NtCommitEnlistment
; Exported entry 1851. ZwCommitEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwCommitEnlistment
ZwCommitEnlistment proc near            ; DATA XREF: .rdata:00000001801204B9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCommitEnlistment
                mov     eax, 97h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E2B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E2B5:                          ; CODE XREF: ZwCommitEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCommitEnlistment endp

; ---------------------------------------------------------------------------
algn_18009E2B8:                         ; DATA XREF: .pdata:00000001801789CC↓o
                align 20h
; Exported entry 266. NtCommitRegistryTransaction
; Exported entry 1852. ZwCommitRegistryTransaction

; =============== S U B R O U T I N E =======================================


                public ZwCommitRegistryTransaction
ZwCommitRegistryTransaction proc near   ; DATA XREF: .rdata:00000001801204BE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCommitRegistryTransaction
                mov     eax, 98h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E2D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E2D5:                          ; CODE XREF: ZwCommitRegistryTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCommitRegistryTransaction endp

; ---------------------------------------------------------------------------
algn_18009E2D8:                         ; DATA XREF: .pdata:00000001801789D8↓o
                align 20h
; Exported entry 267. NtCommitTransaction
; Exported entry 1853. ZwCommitTransaction

; =============== S U B R O U T I N E =======================================


                public ZwCommitTransaction
ZwCommitTransaction proc near           ; DATA XREF: .rdata:00000001801204C3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCommitTransaction
                mov     eax, 99h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E2F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E2F5:                          ; CODE XREF: ZwCommitTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCommitTransaction endp

; ---------------------------------------------------------------------------
algn_18009E2F8:                         ; DATA XREF: .pdata:00000001801789E4↓o
                align 20h
; Exported entry 268. NtCompactKeys
; Exported entry 1854. ZwCompactKeys

; =============== S U B R O U T I N E =======================================


                public ZwCompactKeys
ZwCompactKeys   proc near               ; DATA XREF: .rdata:00000001801204C8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCompactKeys
                mov     eax, 9Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E315
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E315:                          ; CODE XREF: ZwCompactKeys+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompactKeys   endp

; ---------------------------------------------------------------------------
algn_18009E318:                         ; DATA XREF: .pdata:00000001801789F0↓o
                align 20h
; Exported entry 269. NtCompareObjects
; Exported entry 1855. ZwCompareObjects

; =============== S U B R O U T I N E =======================================


                public ZwCompareObjects
ZwCompareObjects proc near              ; CODE XREF: RtlIsCurrentProcess+19↑p
                                        ; RtlIsCurrentThread+14↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtCompareObjects
                mov     eax, 9Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E335
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E335:                          ; CODE XREF: ZwCompareObjects+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompareObjects endp

; ---------------------------------------------------------------------------
algn_18009E338:                         ; DATA XREF: .pdata:00000001801789FC↓o
                align 20h
; Exported entry 270. NtCompareSigningLevels
; Exported entry 1856. ZwCompareSigningLevels

; =============== S U B R O U T I N E =======================================


                public ZwCompareSigningLevels
ZwCompareSigningLevels proc near        ; CODE XREF: sub_180060648+45↑p
                                        ; sub_180060648+95↑p ...
                mov     r10, rcx        ; NtCompareSigningLevels
                mov     eax, 9Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E355
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E355:                          ; CODE XREF: ZwCompareSigningLevels+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompareSigningLevels endp

; ---------------------------------------------------------------------------
algn_18009E358:                         ; DATA XREF: .pdata:0000000180178A08↓o
                align 20h
; Exported entry 271. NtCompareTokens
; Exported entry 1857. ZwCompareTokens

; =============== S U B R O U T I N E =======================================


                public ZwCompareTokens
ZwCompareTokens proc near               ; DATA XREF: .rdata:00000001801204D7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCompareTokens
                mov     eax, 9Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E375
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E375:                          ; CODE XREF: ZwCompareTokens+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompareTokens endp

; ---------------------------------------------------------------------------
algn_18009E378:                         ; DATA XREF: .pdata:0000000180178A14↓o
                align 20h
; Exported entry 272. NtCompleteConnectPort
; Exported entry 1858. ZwCompleteConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwCompleteConnectPort
ZwCompleteConnectPort proc near         ; DATA XREF: .rdata:00000001801204DC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCompleteConnectPort
                mov     eax, 9Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E395
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E395:                          ; CODE XREF: ZwCompleteConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompleteConnectPort endp

; ---------------------------------------------------------------------------
algn_18009E398:                         ; DATA XREF: .pdata:0000000180178A20↓o
                align 20h
; Exported entry 273. NtCompressKey
; Exported entry 1859. ZwCompressKey

; =============== S U B R O U T I N E =======================================


                public ZwCompressKey
ZwCompressKey   proc near               ; DATA XREF: .rdata:00000001801204E1↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCompressKey
                mov     eax, 9Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E3B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E3B5:                          ; CODE XREF: ZwCompressKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCompressKey   endp

; ---------------------------------------------------------------------------
algn_18009E3B8:                         ; DATA XREF: .pdata:0000000180178A2C↓o
                align 20h
; Exported entry 274. NtConnectPort
; Exported entry 1860. ZwConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwConnectPort
ZwConnectPort   proc near               ; CODE XREF: sub_180008FE4+24C↑p
                                        ; DATA XREF: .rdata:00000001801204E6↓o ...
                mov     r10, rcx        ; NtConnectPort
                mov     eax, 0A0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E3D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E3D5:                          ; CODE XREF: ZwConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwConnectPort   endp

; ---------------------------------------------------------------------------
algn_18009E3D8:                         ; DATA XREF: .pdata:0000000180178A38↓o
                align 20h
; Exported entry 276. NtContinueEx
; Exported entry 1862. ZwContinueEx

; =============== S U B R O U T I N E =======================================


                public ZwContinueEx
ZwContinueEx    proc near               ; CODE XREF: sub_180078830+2F↑p
                                        ; KiUserApcDispatcher+3B↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtContinueEx
                mov     eax, 0A1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E3F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E3F5:                          ; CODE XREF: ZwContinueEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwContinueEx    endp

; ---------------------------------------------------------------------------
algn_18009E3F8:                         ; DATA XREF: .pdata:0000000180178A44↓o
                align 20h
; Exported entry 277. NtConvertBetweenAuxiliaryCounterAndPerformanceCounter
; Exported entry 1863. ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter

; =============== S U B R O U T I N E =======================================


                public ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter
ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter proc near
                                        ; DATA XREF: .rdata:00000001801204F0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtConvertBetweenAuxiliaryCounterAndPerformanceCounter
                mov     eax, 0A2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E415
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E415:                          ; CODE XREF: ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter endp

; ---------------------------------------------------------------------------
algn_18009E418:                         ; DATA XREF: .pdata:0000000180178A50↓o
                align 20h
; Exported entry 278. NtCopyFileChunk
; Exported entry 1864. ZwCopyFileChunk

; =============== S U B R O U T I N E =======================================


                public ZwCopyFileChunk
ZwCopyFileChunk proc near               ; DATA XREF: .rdata:00000001801204F5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCopyFileChunk
                mov     eax, 0A3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E435
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E435:                          ; CODE XREF: ZwCopyFileChunk+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCopyFileChunk endp

; ---------------------------------------------------------------------------
algn_18009E438:                         ; DATA XREF: .pdata:0000000180178A5C↓o
                align 20h
; Exported entry 279. NtCreateCrossVmEvent
; Exported entry 1865. ZwCreateCrossVmEvent

; =============== S U B R O U T I N E =======================================


                public ZwCreateCrossVmEvent
ZwCreateCrossVmEvent proc near          ; DATA XREF: .rdata:00000001801204FA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateCrossVmEvent
                mov     eax, 0A4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E455
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E455:                          ; CODE XREF: ZwCreateCrossVmEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateCrossVmEvent endp

; ---------------------------------------------------------------------------
algn_18009E458:                         ; DATA XREF: .pdata:0000000180178A68↓o
                align 20h
; Exported entry 280. NtCreateCrossVmMutant
; Exported entry 1866. ZwCreateCrossVmMutant

; =============== S U B R O U T I N E =======================================


                public ZwCreateCrossVmMutant
ZwCreateCrossVmMutant proc near         ; DATA XREF: .rdata:00000001801204FF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateCrossVmMutant
                mov     eax, 0A5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E475
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E475:                          ; CODE XREF: ZwCreateCrossVmMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateCrossVmMutant endp

; ---------------------------------------------------------------------------
algn_18009E478:                         ; DATA XREF: .pdata:0000000180178A74↓o
                align 20h
; Exported entry 281. NtCreateDebugObject
; Exported entry 1867. ZwCreateDebugObject

; =============== S U B R O U T I N E =======================================


                public ZwCreateDebugObject
ZwCreateDebugObject proc near           ; CODE XREF: DbgUiConnectToDbg+57↓p
                                        ; DATA XREF: .rdata:0000000180120504↓o ...
                mov     r10, rcx        ; NtCreateDebugObject
                mov     eax, 0A6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E495
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E495:                          ; CODE XREF: ZwCreateDebugObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateDebugObject endp

; ---------------------------------------------------------------------------
algn_18009E498:                         ; DATA XREF: .pdata:0000000180178A80↓o
                align 20h
; Exported entry 282. NtCreateDirectoryObject
; Exported entry 1868. ZwCreateDirectoryObject

; =============== S U B R O U T I N E =======================================


                public ZwCreateDirectoryObject
ZwCreateDirectoryObject proc near       ; DATA XREF: .rdata:0000000180120509↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateDirectoryObject
                mov     eax, 0A7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E4B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E4B5:                          ; CODE XREF: ZwCreateDirectoryObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateDirectoryObject endp

; ---------------------------------------------------------------------------
algn_18009E4B8:                         ; DATA XREF: .pdata:0000000180178A8C↓o
                align 20h
; Exported entry 283. NtCreateDirectoryObjectEx
; Exported entry 1869. ZwCreateDirectoryObjectEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateDirectoryObjectEx
ZwCreateDirectoryObjectEx proc near     ; DATA XREF: .rdata:000000018012050E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateDirectoryObjectEx
                mov     eax, 0A8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E4D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E4D5:                          ; CODE XREF: ZwCreateDirectoryObjectEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateDirectoryObjectEx endp

; ---------------------------------------------------------------------------
algn_18009E4D8:                         ; DATA XREF: .pdata:0000000180178A98↓o
                align 20h
; Exported entry 284. NtCreateEnclave
; Exported entry 1870. ZwCreateEnclave

; =============== S U B R O U T I N E =======================================


                public ZwCreateEnclave
ZwCreateEnclave proc near               ; CODE XREF: LdrCreateEnclave+6B↓p
                                        ; DATA XREF: .rdata:000000018011DFD0↓o ...
                mov     r10, rcx        ; NtCreateEnclave
                mov     eax, 0A9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E4F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E4F5:                          ; CODE XREF: ZwCreateEnclave+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateEnclave endp

; ---------------------------------------------------------------------------
algn_18009E4F8:                         ; DATA XREF: .pdata:0000000180178AA4↓o
                align 20h
; Exported entry 285. NtCreateEnlistment
; Exported entry 1871. ZwCreateEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwCreateEnlistment
ZwCreateEnlistment proc near            ; DATA XREF: .rdata:0000000180120518↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateEnlistment
                mov     eax, 0AAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E515
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E515:                          ; CODE XREF: ZwCreateEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateEnlistment endp

; ---------------------------------------------------------------------------
algn_18009E518:                         ; DATA XREF: .pdata:0000000180178AB0↓o
                align 20h
; Exported entry 287. NtCreateEventPair
; Exported entry 1873. ZwCreateEventPair

; =============== S U B R O U T I N E =======================================


                public ZwCreateEventPair
ZwCreateEventPair proc near             ; DATA XREF: .rdata:000000018012051D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateEventPair
                mov     eax, 0ABh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E535
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E535:                          ; CODE XREF: ZwCreateEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateEventPair endp

; ---------------------------------------------------------------------------
algn_18009E538:                         ; DATA XREF: .pdata:0000000180178ABC↓o
                align 20h
; Exported entry 289. NtCreateIRTimer
; Exported entry 1875. ZwCreateIRTimer

; =============== S U B R O U T I N E =======================================


                public ZwCreateIRTimer
ZwCreateIRTimer proc near               ; DATA XREF: .rdata:0000000180120522↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateIRTimer
                mov     eax, 0ACh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E555
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E555:                          ; CODE XREF: ZwCreateIRTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateIRTimer endp

; ---------------------------------------------------------------------------
algn_18009E558:                         ; DATA XREF: .pdata:0000000180178AC8↓o
                align 20h
; Exported entry 290. NtCreateIoCompletion
; Exported entry 1876. ZwCreateIoCompletion

; =============== S U B R O U T I N E =======================================


                public ZwCreateIoCompletion
ZwCreateIoCompletion proc near          ; CODE XREF: sub_180061814+26D↑p
                                        ; DATA XREF: .rdata:0000000180120527↓o ...
                mov     r10, rcx        ; NtCreateIoCompletion
                mov     eax, 0ADh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E575
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E575:                          ; CODE XREF: ZwCreateIoCompletion+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateIoCompletion endp

; ---------------------------------------------------------------------------
algn_18009E578:                         ; DATA XREF: .pdata:0000000180178AD4↓o
                align 20h
; Exported entry 291. NtCreateJobObject
; Exported entry 1877. ZwCreateJobObject

; =============== S U B R O U T I N E =======================================


                public ZwCreateJobObject
ZwCreateJobObject proc near             ; DATA XREF: .rdata:000000018011DFC8↓o
                                        ; .rdata:000000018012052C↓o ...
                mov     r10, rcx        ; NtCreateJobObject
                mov     eax, 0AEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E595
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E595:                          ; CODE XREF: ZwCreateJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateJobObject endp

; ---------------------------------------------------------------------------
algn_18009E598:                         ; DATA XREF: .pdata:0000000180178AE0↓o
                align 20h
; Exported entry 292. NtCreateJobSet
; Exported entry 1878. ZwCreateJobSet

; =============== S U B R O U T I N E =======================================


                public ZwCreateJobSet
ZwCreateJobSet  proc near               ; DATA XREF: .rdata:0000000180120531↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateJobSet
                mov     eax, 0AFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E5B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E5B5:                          ; CODE XREF: ZwCreateJobSet+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateJobSet  endp

; ---------------------------------------------------------------------------
algn_18009E5B8:                         ; DATA XREF: .pdata:0000000180178AEC↓o
                align 20h
; Exported entry 294. NtCreateKeyTransacted
; Exported entry 1880. ZwCreateKeyTransacted

; =============== S U B R O U T I N E =======================================


                public ZwCreateKeyTransacted
ZwCreateKeyTransacted proc near         ; DATA XREF: .rdata:0000000180120536↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateKeyTransacted
                mov     eax, 0B0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E5D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E5D5:                          ; CODE XREF: ZwCreateKeyTransacted+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateKeyTransacted endp

; ---------------------------------------------------------------------------
algn_18009E5D8:                         ; DATA XREF: .pdata:0000000180178AF8↓o
                align 20h
; Exported entry 295. NtCreateKeyedEvent
; Exported entry 1881. ZwCreateKeyedEvent

; =============== S U B R O U T I N E =======================================


                public ZwCreateKeyedEvent
ZwCreateKeyedEvent proc near            ; DATA XREF: .rdata:000000018012053B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateKeyedEvent
                mov     eax, 0B1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E5F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E5F5:                          ; CODE XREF: ZwCreateKeyedEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateKeyedEvent endp

; ---------------------------------------------------------------------------
algn_18009E5F8:                         ; DATA XREF: .pdata:0000000180178B04↓o
                align 20h
; Exported entry 296. NtCreateLowBoxToken
; Exported entry 1882. ZwCreateLowBoxToken

; =============== S U B R O U T I N E =======================================


                public ZwCreateLowBoxToken
ZwCreateLowBoxToken proc near           ; DATA XREF: .rdata:0000000180120540↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateLowBoxToken
                mov     eax, 0B2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E615
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E615:                          ; CODE XREF: ZwCreateLowBoxToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateLowBoxToken endp

; ---------------------------------------------------------------------------
algn_18009E618:                         ; DATA XREF: .pdata:0000000180178B10↓o
                align 20h
; Exported entry 297. NtCreateMailslotFile
; Exported entry 1883. ZwCreateMailslotFile

; =============== S U B R O U T I N E =======================================


                public ZwCreateMailslotFile
ZwCreateMailslotFile proc near          ; DATA XREF: .rdata:0000000180120545↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateMailslotFile
                mov     eax, 0B3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E635
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E635:                          ; CODE XREF: ZwCreateMailslotFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateMailslotFile endp

; ---------------------------------------------------------------------------
algn_18009E638:                         ; DATA XREF: .pdata:0000000180178B1C↓o
                align 20h
; Exported entry 298. NtCreateMutant
; Exported entry 1884. ZwCreateMutant

; =============== S U B R O U T I N E =======================================


                public ZwCreateMutant
ZwCreateMutant  proc near               ; DATA XREF: .rdata:000000018011DF80↓o
                                        ; .rdata:000000018012054A↓o ...
                mov     r10, rcx        ; NtCreateMutant
                mov     eax, 0B4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E655
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E655:                          ; CODE XREF: ZwCreateMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateMutant  endp

; ---------------------------------------------------------------------------
algn_18009E658:                         ; DATA XREF: .pdata:0000000180178B28↓o
                align 20h
; Exported entry 299. NtCreateNamedPipeFile
; Exported entry 1885. ZwCreateNamedPipeFile

; =============== S U B R O U T I N E =======================================


                public ZwCreateNamedPipeFile
ZwCreateNamedPipeFile proc near         ; DATA XREF: .rdata:000000018012054F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateNamedPipeFile
                mov     eax, 0B5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E675
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E675:                          ; CODE XREF: ZwCreateNamedPipeFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateNamedPipeFile endp

; ---------------------------------------------------------------------------
algn_18009E678:                         ; DATA XREF: .pdata:0000000180178B34↓o
                align 20h
; Exported entry 300. NtCreatePagingFile
; Exported entry 1886. ZwCreatePagingFile

; =============== S U B R O U T I N E =======================================


                public ZwCreatePagingFile
ZwCreatePagingFile proc near            ; DATA XREF: .rdata:0000000180120554↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreatePagingFile
                mov     eax, 0B6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E695
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E695:                          ; CODE XREF: ZwCreatePagingFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreatePagingFile endp

; ---------------------------------------------------------------------------
algn_18009E698:                         ; DATA XREF: .pdata:0000000180178B40↓o
                align 20h
; Exported entry 301. NtCreatePartition
; Exported entry 1887. ZwCreatePartition

; =============== S U B R O U T I N E =======================================


                public ZwCreatePartition
ZwCreatePartition proc near             ; DATA XREF: .rdata:0000000180120559↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreatePartition
                mov     eax, 0B7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E6B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E6B5:                          ; CODE XREF: ZwCreatePartition+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreatePartition endp

; ---------------------------------------------------------------------------
algn_18009E6B8:                         ; DATA XREF: .pdata:0000000180178B4C↓o
                align 20h
; Exported entry 302. NtCreatePort
; Exported entry 1888. ZwCreatePort

; =============== S U B R O U T I N E =======================================


                public ZwCreatePort
ZwCreatePort    proc near               ; DATA XREF: .rdata:000000018012055E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreatePort
                mov     eax, 0B8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E6D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E6D5:                          ; CODE XREF: ZwCreatePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreatePort    endp

; ---------------------------------------------------------------------------
algn_18009E6D8:                         ; DATA XREF: .pdata:0000000180178B58↓o
                align 20h
; Exported entry 303. NtCreatePrivateNamespace
; Exported entry 1889. ZwCreatePrivateNamespace

; =============== S U B R O U T I N E =======================================


                public ZwCreatePrivateNamespace
ZwCreatePrivateNamespace proc near      ; DATA XREF: .rdata:0000000180120563↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreatePrivateNamespace
                mov     eax, 0B9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E6F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E6F5:                          ; CODE XREF: ZwCreatePrivateNamespace+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreatePrivateNamespace endp

; ---------------------------------------------------------------------------
algn_18009E6F8:                         ; DATA XREF: .pdata:0000000180178B64↓o
                align 20h
; Exported entry 304. NtCreateProcess
; Exported entry 1890. ZwCreateProcess

; =============== S U B R O U T I N E =======================================


                public ZwCreateProcess
ZwCreateProcess proc near               ; DATA XREF: .rdata:000000018011DFB8↓o
                                        ; .rdata:0000000180120568↓o ...
                mov     r10, rcx        ; NtCreateProcess
                mov     eax, 0BAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E715
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E715:                          ; CODE XREF: ZwCreateProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateProcess endp

; ---------------------------------------------------------------------------
algn_18009E718:                         ; DATA XREF: .pdata:0000000180178B70↓o
                align 20h
; Exported entry 306. NtCreateProfile
; Exported entry 1892. ZwCreateProfile

; =============== S U B R O U T I N E =======================================


                public ZwCreateProfile
ZwCreateProfile proc near               ; DATA XREF: .rdata:000000018012056D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateProfile
                mov     eax, 0BBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E735
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E735:                          ; CODE XREF: ZwCreateProfile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateProfile endp

; ---------------------------------------------------------------------------
algn_18009E738:                         ; DATA XREF: .pdata:0000000180178B7C↓o
                align 20h
; Exported entry 307. NtCreateProfileEx
; Exported entry 1893. ZwCreateProfileEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateProfileEx
ZwCreateProfileEx proc near             ; DATA XREF: .rdata:0000000180120572↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateProfileEx
                mov     eax, 0BCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E755
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E755:                          ; CODE XREF: ZwCreateProfileEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateProfileEx endp

; ---------------------------------------------------------------------------
algn_18009E758:                         ; DATA XREF: .pdata:0000000180178B88↓o
                align 20h
; Exported entry 308. NtCreateRegistryTransaction
; Exported entry 1894. ZwCreateRegistryTransaction

; =============== S U B R O U T I N E =======================================


                public ZwCreateRegistryTransaction
ZwCreateRegistryTransaction proc near   ; DATA XREF: .rdata:0000000180120577↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateRegistryTransaction
                mov     eax, 0BDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E775
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E775:                          ; CODE XREF: ZwCreateRegistryTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateRegistryTransaction endp

; ---------------------------------------------------------------------------
algn_18009E778:                         ; DATA XREF: .pdata:0000000180178B94↓o
                align 20h
; Exported entry 309. NtCreateResourceManager
; Exported entry 1895. ZwCreateResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwCreateResourceManager
ZwCreateResourceManager proc near       ; DATA XREF: .rdata:000000018012057C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateResourceManager
                mov     eax, 0BEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E795
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E795:                          ; CODE XREF: ZwCreateResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateResourceManager endp

; ---------------------------------------------------------------------------
algn_18009E798:                         ; DATA XREF: .pdata:0000000180178BA0↓o
                align 20h
; Exported entry 311. NtCreateSectionEx
; Exported entry 1897. ZwCreateSectionEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateSectionEx
ZwCreateSectionEx proc near             ; DATA XREF: .rdata:0000000180120581↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateSectionEx
                mov     eax, 0BFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E7B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E7B5:                          ; CODE XREF: ZwCreateSectionEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateSectionEx endp

; ---------------------------------------------------------------------------
algn_18009E7B8:                         ; DATA XREF: .pdata:0000000180178BAC↓o
                align 20h
; Exported entry 312. NtCreateSemaphore
; Exported entry 1898. ZwCreateSemaphore

; =============== S U B R O U T I N E =======================================


                public ZwCreateSemaphore
ZwCreateSemaphore proc near             ; CODE XREF: RtlInitializeResource+B9↑p
                                        ; RtlInitializeResource+E8↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtCreateSemaphore
                mov     eax, 0C0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E7D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E7D5:                          ; CODE XREF: ZwCreateSemaphore+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateSemaphore endp

; ---------------------------------------------------------------------------
algn_18009E7D8:                         ; DATA XREF: .pdata:0000000180178BB8↓o
                align 20h
; Exported entry 313. NtCreateSymbolicLinkObject
; Exported entry 1899. ZwCreateSymbolicLinkObject

; =============== S U B R O U T I N E =======================================


                public ZwCreateSymbolicLinkObject
ZwCreateSymbolicLinkObject proc near    ; DATA XREF: .rdata:000000018012058B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateSymbolicLinkObject
                mov     eax, 0C1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E7F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E7F5:                          ; CODE XREF: ZwCreateSymbolicLinkObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateSymbolicLinkObject endp

; ---------------------------------------------------------------------------
algn_18009E7F8:                         ; DATA XREF: .pdata:0000000180178BC4↓o
                align 20h
; Exported entry 315. NtCreateThreadEx
; Exported entry 1901. ZwCreateThreadEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateThreadEx
ZwCreateThreadEx proc near              ; CODE XREF: sub_180056110+133↑p
                                        ; DATA XREF: .rdata:000000018011DFB0↓o ...
                mov     r10, rcx        ; NtCreateThreadEx
                mov     eax, 0C2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E815
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E815:                          ; CODE XREF: ZwCreateThreadEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateThreadEx endp

; ---------------------------------------------------------------------------
algn_18009E818:                         ; DATA XREF: .pdata:0000000180178BD0↓o
                align 20h
; Exported entry 316. NtCreateTimer
; Exported entry 1902. ZwCreateTimer

; =============== S U B R O U T I N E =======================================


                public ZwCreateTimer
ZwCreateTimer   proc near               ; DATA XREF: .rdata:0000000180120595↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateTimer
                mov     eax, 0C3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E835
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E835:                          ; CODE XREF: ZwCreateTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateTimer   endp

; ---------------------------------------------------------------------------
algn_18009E838:                         ; DATA XREF: .pdata:0000000180178BDC↓o
                align 20h
; Exported entry 317. NtCreateTimer2
; Exported entry 1903. ZwCreateTimer2

; =============== S U B R O U T I N E =======================================


                public ZwCreateTimer2
ZwCreateTimer2  proc near               ; CODE XREF: sub_180061D74+49↑p
                                        ; DATA XREF: .rdata:000000018012059A↓o ...
                mov     r10, rcx        ; NtCreateTimer2
                mov     eax, 0C4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E855
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E855:                          ; CODE XREF: ZwCreateTimer2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateTimer2  endp

; ---------------------------------------------------------------------------
algn_18009E858:                         ; DATA XREF: .pdata:0000000180178BE8↓o
                align 20h
; Exported entry 318. NtCreateToken
; Exported entry 1904. ZwCreateToken

; =============== S U B R O U T I N E =======================================


                public ZwCreateToken
ZwCreateToken   proc near               ; DATA XREF: .rdata:000000018012059F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateToken
                mov     eax, 0C5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E875
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E875:                          ; CODE XREF: ZwCreateToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateToken   endp

; ---------------------------------------------------------------------------
algn_18009E878:                         ; DATA XREF: .pdata:0000000180178BF4↓o
                align 20h
; Exported entry 319. NtCreateTokenEx
; Exported entry 1905. ZwCreateTokenEx

; =============== S U B R O U T I N E =======================================


                public ZwCreateTokenEx
ZwCreateTokenEx proc near               ; DATA XREF: .rdata:00000001801205A4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateTokenEx
                mov     eax, 0C6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E895
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E895:                          ; CODE XREF: ZwCreateTokenEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateTokenEx endp

; ---------------------------------------------------------------------------
algn_18009E898:                         ; DATA XREF: .pdata:0000000180178C00↓o
                align 20h
; Exported entry 320. NtCreateTransaction
; Exported entry 1906. ZwCreateTransaction

; =============== S U B R O U T I N E =======================================


                public ZwCreateTransaction
ZwCreateTransaction proc near           ; DATA XREF: .rdata:00000001801205A9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateTransaction
                mov     eax, 0C7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E8B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E8B5:                          ; CODE XREF: ZwCreateTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateTransaction endp

; ---------------------------------------------------------------------------
algn_18009E8B8:                         ; DATA XREF: .pdata:0000000180178C0C↓o
                align 20h
; Exported entry 321. NtCreateTransactionManager
; Exported entry 1907. ZwCreateTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwCreateTransactionManager
ZwCreateTransactionManager proc near    ; DATA XREF: .rdata:00000001801205AE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateTransactionManager
                mov     eax, 0C8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E8D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E8D5:                          ; CODE XREF: ZwCreateTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateTransactionManager endp

; ---------------------------------------------------------------------------
algn_18009E8D8:                         ; DATA XREF: .pdata:0000000180178C18↓o
                align 20h
; Exported entry 322. NtCreateUserProcess
; Exported entry 1908. ZwCreateUserProcess

; =============== S U B R O U T I N E =======================================


                public ZwCreateUserProcess
ZwCreateUserProcess proc near           ; CODE XREF: sub_180088BC0+272↑p
                                        ; DATA XREF: .rdata:000000018011DF70↓o ...
                mov     r10, rcx        ; NtCreateUserProcess
                mov     eax, 0C9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E8F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E8F5:                          ; CODE XREF: ZwCreateUserProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateUserProcess endp

; ---------------------------------------------------------------------------
algn_18009E8F8:                         ; DATA XREF: .pdata:0000000180178C24↓o
                align 20h
; Exported entry 323. NtCreateWaitCompletionPacket
; Exported entry 1909. ZwCreateWaitCompletionPacket

; =============== S U B R O U T I N E =======================================


                public ZwCreateWaitCompletionPacket
ZwCreateWaitCompletionPacket proc near  ; CODE XREF: TpAllocWait+B5↑p
                                        ; sub_180061D74+61↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtCreateWaitCompletionPacket
                mov     eax, 0CAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E915
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E915:                          ; CODE XREF: ZwCreateWaitCompletionPacket+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateWaitCompletionPacket endp

; ---------------------------------------------------------------------------
algn_18009E918:                         ; DATA XREF: .pdata:0000000180178C30↓o
                align 20h
; Exported entry 324. NtCreateWaitablePort
; Exported entry 1910. ZwCreateWaitablePort

; =============== S U B R O U T I N E =======================================


                public ZwCreateWaitablePort
ZwCreateWaitablePort proc near          ; DATA XREF: .rdata:00000001801205BD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateWaitablePort
                mov     eax, 0CBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E935
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E935:                          ; CODE XREF: ZwCreateWaitablePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateWaitablePort endp

; ---------------------------------------------------------------------------
algn_18009E938:                         ; DATA XREF: .pdata:0000000180178C3C↓o
                align 20h
; Exported entry 325. NtCreateWnfStateName
; Exported entry 1911. ZwCreateWnfStateName

; =============== S U B R O U T I N E =======================================


                public ZwCreateWnfStateName
ZwCreateWnfStateName proc near          ; DATA XREF: .rdata:00000001801205C2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtCreateWnfStateName
                mov     eax, 0CCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E955
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E955:                          ; CODE XREF: ZwCreateWnfStateName+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateWnfStateName endp

; ---------------------------------------------------------------------------
algn_18009E958:                         ; DATA XREF: .pdata:0000000180178C48↓o
                align 20h
; Exported entry 326. NtCreateWorkerFactory
; Exported entry 1912. ZwCreateWorkerFactory

; =============== S U B R O U T I N E =======================================


                public ZwCreateWorkerFactory
ZwCreateWorkerFactory proc near         ; CODE XREF: sub_180061814+2DB↑p
                                        ; DATA XREF: .rdata:00000001801205C7↓o ...
                mov     r10, rcx        ; NtCreateWorkerFactory
                mov     eax, 0CDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E975
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E975:                          ; CODE XREF: ZwCreateWorkerFactory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwCreateWorkerFactory endp

; ---------------------------------------------------------------------------
algn_18009E978:                         ; DATA XREF: .pdata:0000000180178C54↓o
                align 20h
; Exported entry 327. NtDebugActiveProcess
; Exported entry 1913. ZwDebugActiveProcess

; =============== S U B R O U T I N E =======================================


                public ZwDebugActiveProcess
ZwDebugActiveProcess proc near          ; CODE XREF: DbgUiDebugActiveProcess+1D↓p
                                        ; DATA XREF: .rdata:00000001801205CC↓o ...
                mov     r10, rcx        ; NtDebugActiveProcess
                mov     eax, 0CEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E995
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E995:                          ; CODE XREF: ZwDebugActiveProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDebugActiveProcess endp

; ---------------------------------------------------------------------------
algn_18009E998:                         ; DATA XREF: .pdata:0000000180178C60↓o
                align 20h
; Exported entry 328. NtDebugContinue
; Exported entry 1914. ZwDebugContinue

; =============== S U B R O U T I N E =======================================


                public ZwDebugContinue
ZwDebugContinue proc near               ; CODE XREF: DbgUiContinue+19↓j
                                        ; DATA XREF: .rdata:00000001801205D1↓o ...
                mov     r10, rcx        ; NtDebugContinue
                mov     eax, 0CFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E9B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E9B5:                          ; CODE XREF: ZwDebugContinue+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDebugContinue endp

; ---------------------------------------------------------------------------
algn_18009E9B8:                         ; DATA XREF: .pdata:0000000180178C6C↓o
                align 20h
; Exported entry 330. NtDeleteAtom
; Exported entry 1916. ZwDeleteAtom

; =============== S U B R O U T I N E =======================================


                public ZwDeleteAtom
ZwDeleteAtom    proc near               ; DATA XREF: .rdata:00000001801205D6↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteAtom
                mov     eax, 0D0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E9D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E9D5:                          ; CODE XREF: ZwDeleteAtom+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteAtom    endp

; ---------------------------------------------------------------------------
algn_18009E9D8:                         ; DATA XREF: .pdata:0000000180178C78↓o
                align 20h
; Exported entry 331. NtDeleteBootEntry
; Exported entry 1917. ZwDeleteBootEntry

; =============== S U B R O U T I N E =======================================


                public ZwDeleteBootEntry
ZwDeleteBootEntry proc near             ; DATA XREF: .rdata:00000001801205DB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteBootEntry
                mov     eax, 0D1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009E9F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009E9F5:                          ; CODE XREF: ZwDeleteBootEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteBootEntry endp

; ---------------------------------------------------------------------------
algn_18009E9F8:                         ; DATA XREF: .pdata:0000000180178C84↓o
                align 20h
; Exported entry 332. NtDeleteDriverEntry
; Exported entry 1918. ZwDeleteDriverEntry

; =============== S U B R O U T I N E =======================================


                public ZwDeleteDriverEntry
ZwDeleteDriverEntry proc near           ; DATA XREF: .rdata:00000001801205E0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteDriverEntry
                mov     eax, 0D2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EA15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EA15:                          ; CODE XREF: ZwDeleteDriverEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteDriverEntry endp

; ---------------------------------------------------------------------------
algn_18009EA18:                         ; DATA XREF: .pdata:0000000180178C90↓o
                align 20h
; Exported entry 333. NtDeleteFile
; Exported entry 1919. ZwDeleteFile

; =============== S U B R O U T I N E =======================================


                public ZwDeleteFile
ZwDeleteFile    proc near               ; DATA XREF: .rdata:000000018011E000↓o
                                        ; .rdata:00000001801205E5↓o ...
                mov     r10, rcx        ; NtDeleteFile
                mov     eax, 0D3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EA35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EA35:                          ; CODE XREF: ZwDeleteFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteFile    endp

; ---------------------------------------------------------------------------
algn_18009EA38:                         ; DATA XREF: .pdata:0000000180178C9C↓o
                align 20h
; Exported entry 334. NtDeleteKey
; Exported entry 1920. ZwDeleteKey

; =============== S U B R O U T I N E =======================================


                public ZwDeleteKey
ZwDeleteKey     proc near               ; CODE XREF: sub_1800752AC+4D230↓p
                                        ; sub_180080078:loc_1800C79C3↓p ...
                mov     r10, rcx        ; NtDeleteKey
                mov     eax, 0D4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EA55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EA55:                          ; CODE XREF: ZwDeleteKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteKey     endp

; ---------------------------------------------------------------------------
algn_18009EA58:                         ; DATA XREF: .pdata:0000000180178CA8↓o
                align 20h
; Exported entry 335. NtDeleteObjectAuditAlarm
; Exported entry 1921. ZwDeleteObjectAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwDeleteObjectAuditAlarm
ZwDeleteObjectAuditAlarm proc near      ; DATA XREF: .rdata:00000001801205EF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteObjectAuditAlarm
                mov     eax, 0D5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EA75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EA75:                          ; CODE XREF: ZwDeleteObjectAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteObjectAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009EA78:                         ; DATA XREF: .pdata:0000000180178CB4↓o
                align 20h
; Exported entry 336. NtDeletePrivateNamespace
; Exported entry 1922. ZwDeletePrivateNamespace

; =============== S U B R O U T I N E =======================================


                public ZwDeletePrivateNamespace
ZwDeletePrivateNamespace proc near      ; DATA XREF: .rdata:00000001801205F4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeletePrivateNamespace
                mov     eax, 0D6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EA95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EA95:                          ; CODE XREF: ZwDeletePrivateNamespace+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeletePrivateNamespace endp

; ---------------------------------------------------------------------------
algn_18009EA98:                         ; DATA XREF: .pdata:0000000180178CC0↓o
                align 20h
; Exported entry 337. NtDeleteValueKey
; Exported entry 1923. ZwDeleteValueKey

; =============== S U B R O U T I N E =======================================


                public ZwDeleteValueKey
ZwDeleteValueKey proc near              ; CODE XREF: sub_180045B3C+3D4↑p
                                        ; RtlDeleteRegistryValue+37↑p ...
                mov     r10, rcx        ; NtDeleteValueKey
                mov     eax, 0D7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EAB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EAB5:                          ; CODE XREF: ZwDeleteValueKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteValueKey endp

; ---------------------------------------------------------------------------
algn_18009EAB8:                         ; DATA XREF: .pdata:0000000180178CCC↓o
                align 20h
; Exported entry 338. NtDeleteWnfStateData
; Exported entry 1924. ZwDeleteWnfStateData

; =============== S U B R O U T I N E =======================================


                public ZwDeleteWnfStateData
ZwDeleteWnfStateData proc near          ; DATA XREF: .rdata:00000001801205FE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteWnfStateData
                mov     eax, 0D8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EAD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EAD5:                          ; CODE XREF: ZwDeleteWnfStateData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteWnfStateData endp

; ---------------------------------------------------------------------------
algn_18009EAD8:                         ; DATA XREF: .pdata:0000000180178CD8↓o
                align 20h
; Exported entry 339. NtDeleteWnfStateName
; Exported entry 1925. ZwDeleteWnfStateName

; =============== S U B R O U T I N E =======================================


                public ZwDeleteWnfStateName
ZwDeleteWnfStateName proc near          ; DATA XREF: .rdata:0000000180120603↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDeleteWnfStateName
                mov     eax, 0D9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EAF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EAF5:                          ; CODE XREF: ZwDeleteWnfStateName+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDeleteWnfStateName endp

; ---------------------------------------------------------------------------
algn_18009EAF8:                         ; DATA XREF: .pdata:0000000180178CE4↓o
                align 20h
; Exported entry 341. NtDirectGraphicsCall
; Exported entry 1927. ZwDirectGraphicsCall

; =============== S U B R O U T I N E =======================================


                public ZwDirectGraphicsCall
ZwDirectGraphicsCall proc near          ; DATA XREF: .rdata:0000000180120608↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDirectGraphicsCall
                mov     eax, 0DAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EB15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EB15:                          ; CODE XREF: ZwDirectGraphicsCall+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDirectGraphicsCall endp

; ---------------------------------------------------------------------------
algn_18009EB18:                         ; DATA XREF: .pdata:0000000180178CF0↓o
                align 20h
; Exported entry 342. NtDisableLastKnownGood
; Exported entry 1928. ZwDisableLastKnownGood

; =============== S U B R O U T I N E =======================================


                public ZwDisableLastKnownGood
ZwDisableLastKnownGood proc near        ; DATA XREF: .rdata:000000018012060D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDisableLastKnownGood
                mov     eax, 0DBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EB35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EB35:                          ; CODE XREF: ZwDisableLastKnownGood+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDisableLastKnownGood endp

; ---------------------------------------------------------------------------
algn_18009EB38:                         ; DATA XREF: .pdata:0000000180178CFC↓o
                align 20h
; Exported entry 343. NtDisplayString
; Exported entry 1929. ZwDisplayString

; =============== S U B R O U T I N E =======================================


                public ZwDisplayString
ZwDisplayString proc near               ; DATA XREF: .rdata:0000000180120612↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDisplayString
                mov     eax, 0DCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EB55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EB55:                          ; CODE XREF: ZwDisplayString+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDisplayString endp

; ---------------------------------------------------------------------------
algn_18009EB58:                         ; DATA XREF: .pdata:0000000180178D08↓o
                align 20h
; Exported entry 344. NtDrawText
; Exported entry 1930. ZwDrawText

; =============== S U B R O U T I N E =======================================


                public ZwDrawText
ZwDrawText      proc near               ; DATA XREF: .rdata:0000000180120617↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtDrawText
                mov     eax, 0DDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EB75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EB75:                          ; CODE XREF: ZwDrawText+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwDrawText      endp

; ---------------------------------------------------------------------------
algn_18009EB78:                         ; DATA XREF: .pdata:0000000180178D14↓o
                align 20h
; Exported entry 347. NtEnableLastKnownGood
; Exported entry 1933. ZwEnableLastKnownGood

; =============== S U B R O U T I N E =======================================


                public ZwEnableLastKnownGood
ZwEnableLastKnownGood proc near         ; DATA XREF: .rdata:000000018012061C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtEnableLastKnownGood
                mov     eax, 0DEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EB95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EB95:                          ; CODE XREF: ZwEnableLastKnownGood+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnableLastKnownGood endp

; ---------------------------------------------------------------------------
algn_18009EB98:                         ; DATA XREF: .pdata:0000000180178D20↓o
                align 20h
; Exported entry 348. NtEnumerateBootEntries
; Exported entry 1934. ZwEnumerateBootEntries

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateBootEntries
ZwEnumerateBootEntries proc near        ; DATA XREF: .rdata:0000000180120621↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtEnumerateBootEntries
                mov     eax, 0DFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EBB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EBB5:                          ; CODE XREF: ZwEnumerateBootEntries+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateBootEntries endp

; ---------------------------------------------------------------------------
algn_18009EBB8:                         ; DATA XREF: .pdata:0000000180178D2C↓o
                align 20h
; Exported entry 349. NtEnumerateDriverEntries
; Exported entry 1935. ZwEnumerateDriverEntries

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateDriverEntries
ZwEnumerateDriverEntries proc near      ; DATA XREF: .rdata:0000000180120626↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtEnumerateDriverEntries
                mov     eax, 0E0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EBD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EBD5:                          ; CODE XREF: ZwEnumerateDriverEntries+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateDriverEntries endp

; ---------------------------------------------------------------------------
algn_18009EBD8:                         ; DATA XREF: .pdata:0000000180178D38↓o
                align 20h
; Exported entry 351. NtEnumerateSystemEnvironmentValuesEx
; Exported entry 1937. ZwEnumerateSystemEnvironmentValuesEx

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateSystemEnvironmentValuesEx
ZwEnumerateSystemEnvironmentValuesEx proc near
                                        ; DATA XREF: .rdata:000000018012062B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtEnumerateSystemEnvironmentValuesEx
                mov     eax, 0E1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EBF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EBF5:                          ; CODE XREF: ZwEnumerateSystemEnvironmentValuesEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateSystemEnvironmentValuesEx endp

; ---------------------------------------------------------------------------
algn_18009EBF8:                         ; DATA XREF: .pdata:0000000180178D44↓o
                align 20h
; Exported entry 352. NtEnumerateTransactionObject
; Exported entry 1938. ZwEnumerateTransactionObject

; =============== S U B R O U T I N E =======================================


                public ZwEnumerateTransactionObject
ZwEnumerateTransactionObject proc near  ; DATA XREF: .rdata:0000000180120630↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtEnumerateTransactionObject
                mov     eax, 0E2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EC15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EC15:                          ; CODE XREF: ZwEnumerateTransactionObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwEnumerateTransactionObject endp

; ---------------------------------------------------------------------------
algn_18009EC18:                         ; DATA XREF: .pdata:0000000180178D50↓o
                align 20h
; Exported entry 354. NtExtendSection
; Exported entry 1940. ZwExtendSection

; =============== S U B R O U T I N E =======================================


                public ZwExtendSection
ZwExtendSection proc near               ; DATA XREF: .rdata:000000018011E018↓o
                                        ; .rdata:0000000180120635↓o ...
                mov     r10, rcx        ; NtExtendSection
                mov     eax, 0E3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EC35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EC35:                          ; CODE XREF: ZwExtendSection+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwExtendSection endp

; ---------------------------------------------------------------------------
algn_18009EC38:                         ; DATA XREF: .pdata:0000000180178D5C↓o
                align 20h
; Exported entry 355. NtFilterBootOption
; Exported entry 1941. ZwFilterBootOption

; =============== S U B R O U T I N E =======================================


                public ZwFilterBootOption
ZwFilterBootOption proc near            ; DATA XREF: .rdata:000000018012063A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFilterBootOption
                mov     eax, 0E4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EC55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EC55:                          ; CODE XREF: ZwFilterBootOption+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFilterBootOption endp

; ---------------------------------------------------------------------------
algn_18009EC58:                         ; DATA XREF: .pdata:0000000180178D68↓o
                align 20h
; Exported entry 356. NtFilterToken
; Exported entry 1942. ZwFilterToken

; =============== S U B R O U T I N E =======================================


                public ZwFilterToken
ZwFilterToken   proc near               ; DATA XREF: .rdata:000000018012063F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFilterToken
                mov     eax, 0E5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EC75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EC75:                          ; CODE XREF: ZwFilterToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFilterToken   endp

; ---------------------------------------------------------------------------
algn_18009EC78:                         ; DATA XREF: .pdata:0000000180178D74↓o
                align 20h
; Exported entry 357. NtFilterTokenEx
; Exported entry 1943. ZwFilterTokenEx

; =============== S U B R O U T I N E =======================================


                public ZwFilterTokenEx
ZwFilterTokenEx proc near               ; DATA XREF: .rdata:0000000180120644↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFilterTokenEx
                mov     eax, 0E6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EC95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EC95:                          ; CODE XREF: ZwFilterTokenEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFilterTokenEx endp

; ---------------------------------------------------------------------------
algn_18009EC98:                         ; DATA XREF: .pdata:0000000180178D80↓o
                align 20h
; Exported entry 360. NtFlushBuffersFileEx
; Exported entry 1946. ZwFlushBuffersFileEx

; =============== S U B R O U T I N E =======================================


                public ZwFlushBuffersFileEx
ZwFlushBuffersFileEx proc near          ; DATA XREF: .rdata:0000000180120649↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushBuffersFileEx
                mov     eax, 0E7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ECB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ECB5:                          ; CODE XREF: ZwFlushBuffersFileEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushBuffersFileEx endp

; ---------------------------------------------------------------------------
algn_18009ECB8:                         ; DATA XREF: .pdata:0000000180178D8C↓o
                align 20h
; Exported entry 361. NtFlushInstallUILanguage
; Exported entry 1947. ZwFlushInstallUILanguage

; =============== S U B R O U T I N E =======================================


                public ZwFlushInstallUILanguage
ZwFlushInstallUILanguage proc near      ; CODE XREF: RtlpVerifyAndCommitUILanguageSettings+FD↑p
                                        ; RtlpSetInstallLanguage+23D↓p ...
                mov     r10, rcx        ; NtFlushInstallUILanguage
                mov     eax, 0E8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ECD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ECD5:                          ; CODE XREF: ZwFlushInstallUILanguage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushInstallUILanguage endp

; ---------------------------------------------------------------------------
algn_18009ECD8:                         ; DATA XREF: .pdata:0000000180178D98↓o
                align 20h
; Exported entry 362. NtFlushInstructionCache
; Exported entry 1948. ZwFlushInstructionCache

; =============== S U B R O U T I N E =======================================


                public ZwFlushInstructionCache
ZwFlushInstructionCache proc near       ; DATA XREF: .rdata:0000000180120653↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushInstructionCache
                mov     eax, 0E9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ECF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ECF5:                          ; CODE XREF: ZwFlushInstructionCache+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushInstructionCache endp

; ---------------------------------------------------------------------------
algn_18009ECF8:                         ; DATA XREF: .pdata:0000000180178DA4↓o
                align 20h
; Exported entry 363. NtFlushKey
; Exported entry 1949. ZwFlushKey

; =============== S U B R O U T I N E =======================================


                public ZwFlushKey
ZwFlushKey      proc near               ; CODE XREF: RtlApplyRXact+54↓p
                                        ; DATA XREF: .rdata:0000000180120658↓o ...
                mov     r10, rcx        ; NtFlushKey
                mov     eax, 0EAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ED15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ED15:                          ; CODE XREF: ZwFlushKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushKey      endp

; ---------------------------------------------------------------------------
algn_18009ED18:                         ; DATA XREF: .pdata:0000000180178DB0↓o
                align 20h
; Exported entry 364. NtFlushProcessWriteBuffers
; Exported entry 1950. ZwFlushProcessWriteBuffers

; =============== S U B R O U T I N E =======================================


                public ZwFlushProcessWriteBuffers
ZwFlushProcessWriteBuffers proc near    ; DATA XREF: .rdata:000000018012065D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushProcessWriteBuffers
                mov     eax, 0EBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ED35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ED35:                          ; CODE XREF: ZwFlushProcessWriteBuffers+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushProcessWriteBuffers endp

; ---------------------------------------------------------------------------
algn_18009ED38:                         ; DATA XREF: .pdata:0000000180178DBC↓o
                align 20h
; Exported entry 365. NtFlushVirtualMemory
; Exported entry 1951. ZwFlushVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwFlushVirtualMemory
ZwFlushVirtualMemory proc near          ; DATA XREF: .rdata:0000000180120662↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushVirtualMemory
                mov     eax, 0ECh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ED55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ED55:                          ; CODE XREF: ZwFlushVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009ED58:                         ; DATA XREF: .pdata:0000000180178DC8↓o
                align 20h
; Exported entry 366. NtFlushWriteBuffer
; Exported entry 1952. ZwFlushWriteBuffer

; =============== S U B R O U T I N E =======================================


                public ZwFlushWriteBuffer
ZwFlushWriteBuffer proc near            ; DATA XREF: .rdata:0000000180120667↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFlushWriteBuffer
                mov     eax, 0EDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ED75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ED75:                          ; CODE XREF: ZwFlushWriteBuffer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFlushWriteBuffer endp

; ---------------------------------------------------------------------------
algn_18009ED78:                         ; DATA XREF: .pdata:0000000180178DD4↓o
                align 20h
; Exported entry 367. NtFreeUserPhysicalPages
; Exported entry 1953. ZwFreeUserPhysicalPages

; =============== S U B R O U T I N E =======================================


                public ZwFreeUserPhysicalPages
ZwFreeUserPhysicalPages proc near       ; DATA XREF: .rdata:000000018012066C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFreeUserPhysicalPages
                mov     eax, 0EEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009ED95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009ED95:                          ; CODE XREF: ZwFreeUserPhysicalPages+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFreeUserPhysicalPages endp

; ---------------------------------------------------------------------------
algn_18009ED98:                         ; DATA XREF: .pdata:0000000180178DE0↓o
                align 20h
; Exported entry 369. NtFreezeRegistry
; Exported entry 1955. ZwFreezeRegistry

; =============== S U B R O U T I N E =======================================


                public ZwFreezeRegistry
ZwFreezeRegistry proc near              ; DATA XREF: .rdata:0000000180120671↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFreezeRegistry
                mov     eax, 0EFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EDB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EDB5:                          ; CODE XREF: ZwFreezeRegistry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFreezeRegistry endp

; ---------------------------------------------------------------------------
algn_18009EDB8:                         ; DATA XREF: .pdata:0000000180178DEC↓o
                align 20h
; Exported entry 370. NtFreezeTransactions
; Exported entry 1956. ZwFreezeTransactions

; =============== S U B R O U T I N E =======================================


                public ZwFreezeTransactions
ZwFreezeTransactions proc near          ; DATA XREF: .rdata:0000000180120676↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtFreezeTransactions
                mov     eax, 0F0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EDD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EDD5:                          ; CODE XREF: ZwFreezeTransactions+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwFreezeTransactions endp

; ---------------------------------------------------------------------------
algn_18009EDD8:                         ; DATA XREF: .pdata:0000000180178DF8↓o
                align 20h
; Exported entry 372. NtGetCachedSigningLevel
; Exported entry 1958. ZwGetCachedSigningLevel

; =============== S U B R O U T I N E =======================================


                public ZwGetCachedSigningLevel
ZwGetCachedSigningLevel proc near       ; CODE XREF: sub_1800896E8+42↑p
                                        ; DATA XREF: .rdata:000000018012067B↓o ...
                mov     r10, rcx        ; NtGetCachedSigningLevel
                mov     eax, 0F1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EDF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EDF5:                          ; CODE XREF: ZwGetCachedSigningLevel+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetCachedSigningLevel endp

; ---------------------------------------------------------------------------
algn_18009EDF8:                         ; DATA XREF: .pdata:0000000180178E04↓o
                align 20h
; Exported entry 373. NtGetCompleteWnfStateSubscription
; Exported entry 1959. ZwGetCompleteWnfStateSubscription

; =============== S U B R O U T I N E =======================================


                public ZwGetCompleteWnfStateSubscription
ZwGetCompleteWnfStateSubscription proc near
                                        ; CODE XREF: sub_180062830+6D↑p
                                        ; sub_18008B050+13E↑p ...
                mov     r10, rcx        ; NtGetCompleteWnfStateSubscription
                mov     eax, 0F2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EE15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EE15:                          ; CODE XREF: ZwGetCompleteWnfStateSubscription+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetCompleteWnfStateSubscription endp

; ---------------------------------------------------------------------------
algn_18009EE18:                         ; DATA XREF: .pdata:0000000180178E10↓o
                align 20h
; Exported entry 374. NtGetContextThread
; Exported entry 1960. ZwGetContextThread

; =============== S U B R O U T I N E =======================================


                public ZwGetContextThread
ZwGetContextThread proc near            ; CODE XREF: RtlRemoteCall+87↓p
                                        ; sub_18010DAB4+42↓p ...
                mov     r10, rcx        ; NtGetContextThread
                mov     eax, 0F3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EE35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EE35:                          ; CODE XREF: ZwGetContextThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetContextThread endp

; ---------------------------------------------------------------------------
algn_18009EE38:                         ; DATA XREF: .pdata:0000000180178E1C↓o
                align 20h
; Exported entry 375. NtGetCurrentProcessorNumber
; Exported entry 1961. ZwGetCurrentProcessorNumber

; =============== S U B R O U T I N E =======================================


                public ZwGetCurrentProcessorNumber
ZwGetCurrentProcessorNumber proc near   ; CODE XREF: RtlGetCurrentProcessorNumber:loc_1800A1CA3↓j
                                        ; DATA XREF: .rdata:000000018012068A↓o ...
                mov     r10, rcx        ; NtGetCurrentProcessorNumber
                mov     eax, 0F4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EE55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EE55:                          ; CODE XREF: ZwGetCurrentProcessorNumber+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetCurrentProcessorNumber endp

; ---------------------------------------------------------------------------
algn_18009EE58:                         ; DATA XREF: .pdata:0000000180178E28↓o
                align 20h
; Exported entry 376. NtGetCurrentProcessorNumberEx
; Exported entry 1962. ZwGetCurrentProcessorNumberEx

; =============== S U B R O U T I N E =======================================


                public ZwGetCurrentProcessorNumberEx
ZwGetCurrentProcessorNumberEx proc near ; CODE XREF: RtlGetCurrentProcessorNumberEx+54↓j
                                        ; DATA XREF: .rdata:000000018012068F↓o ...
                mov     r10, rcx        ; NtGetCurrentProcessorNumberEx
                mov     eax, 0F5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EE75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EE75:                          ; CODE XREF: ZwGetCurrentProcessorNumberEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetCurrentProcessorNumberEx endp

; ---------------------------------------------------------------------------
algn_18009EE78:                         ; DATA XREF: .pdata:0000000180178E34↓o
                align 20h
; Exported entry 377. NtGetDevicePowerState
; Exported entry 1963. ZwGetDevicePowerState

; =============== S U B R O U T I N E =======================================


                public ZwGetDevicePowerState
ZwGetDevicePowerState proc near         ; DATA XREF: .rdata:0000000180120694↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtGetDevicePowerState
                mov     eax, 0F6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EE95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EE95:                          ; CODE XREF: ZwGetDevicePowerState+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetDevicePowerState endp

; ---------------------------------------------------------------------------
algn_18009EE98:                         ; DATA XREF: .pdata:0000000180178E40↓o
                align 20h
; Exported entry 378. NtGetMUIRegistryInfo
; Exported entry 1964. ZwGetMUIRegistryInfo

; =============== S U B R O U T I N E =======================================


                public ZwGetMUIRegistryInfo
ZwGetMUIRegistryInfo proc near          ; CODE XREF: sub_18006F020+35↑p
                                        ; sub_18006F020+7E↑p ...
                mov     r10, rcx        ; NtGetMUIRegistryInfo
                mov     eax, 0F7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EEB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EEB5:                          ; CODE XREF: ZwGetMUIRegistryInfo+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetMUIRegistryInfo endp

; ---------------------------------------------------------------------------
algn_18009EEB8:                         ; DATA XREF: .pdata:0000000180178E4C↓o
                align 20h
; Exported entry 379. NtGetNextProcess
; Exported entry 1965. ZwGetNextProcess

; =============== S U B R O U T I N E =======================================


                public ZwGetNextProcess
ZwGetNextProcess proc near              ; DATA XREF: .rdata:000000018012069E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtGetNextProcess
                mov     eax, 0F8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EED5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EED5:                          ; CODE XREF: ZwGetNextProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetNextProcess endp

; ---------------------------------------------------------------------------
algn_18009EED8:                         ; DATA XREF: .pdata:0000000180178E58↓o
                align 20h
; Exported entry 380. NtGetNextThread
; Exported entry 1966. ZwGetNextThread

; =============== S U B R O U T I N E =======================================


                public ZwGetNextThread
ZwGetNextThread proc near               ; CODE XREF: sub_18011641C+75↓p
                                        ; sub_18011641C+144↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtGetNextThread
                mov     eax, 0F9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EEF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EEF5:                          ; CODE XREF: ZwGetNextThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetNextThread endp

; ---------------------------------------------------------------------------
algn_18009EEF8:                         ; DATA XREF: .pdata:0000000180178E64↓o
                align 20h
; Exported entry 381. NtGetNlsSectionPtr
; Exported entry 1967. ZwGetNlsSectionPtr

; =============== S U B R O U T I N E =======================================


                public ZwGetNlsSectionPtr
ZwGetNlsSectionPtr proc near            ; CODE XREF: sub_1800805F0+91↑p
                                        ; DATA XREF: .rdata:00000001801206A8↓o ...
                mov     r10, rcx        ; NtGetNlsSectionPtr
                mov     eax, 0FAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EF15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EF15:                          ; CODE XREF: ZwGetNlsSectionPtr+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetNlsSectionPtr endp

; ---------------------------------------------------------------------------
algn_18009EF18:                         ; DATA XREF: .pdata:0000000180178E70↓o
                align 20h
; Exported entry 382. NtGetNotificationResourceManager
; Exported entry 1968. ZwGetNotificationResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwGetNotificationResourceManager
ZwGetNotificationResourceManager proc near
                                        ; DATA XREF: .rdata:00000001801206AD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtGetNotificationResourceManager
                mov     eax, 0FBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EF35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EF35:                          ; CODE XREF: ZwGetNotificationResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetNotificationResourceManager endp

; ---------------------------------------------------------------------------
algn_18009EF38:                         ; DATA XREF: .pdata:0000000180178E7C↓o
                align 20h
; Exported entry 384. NtGetWriteWatch
; Exported entry 1969. ZwGetWriteWatch

; =============== S U B R O U T I N E =======================================


                public ZwGetWriteWatch
ZwGetWriteWatch proc near               ; DATA XREF: .rdata:00000001801206B2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtGetWriteWatch
                mov     eax, 0FCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EF55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EF55:                          ; CODE XREF: ZwGetWriteWatch+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwGetWriteWatch endp

; ---------------------------------------------------------------------------
algn_18009EF58:                         ; DATA XREF: .pdata:0000000180178E88↓o
                align 20h
; Exported entry 385. NtImpersonateAnonymousToken
; Exported entry 1970. ZwImpersonateAnonymousToken

; =============== S U B R O U T I N E =======================================


                public ZwImpersonateAnonymousToken
ZwImpersonateAnonymousToken proc near   ; DATA XREF: .rdata:00000001801206B7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtImpersonateAnonymousToken
                mov     eax, 0FDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EF75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EF75:                          ; CODE XREF: ZwImpersonateAnonymousToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwImpersonateAnonymousToken endp

; ---------------------------------------------------------------------------
algn_18009EF78:                         ; DATA XREF: .pdata:0000000180178E94↓o
                align 20h
; Exported entry 387. NtImpersonateThread
; Exported entry 1972. ZwImpersonateThread

; =============== S U B R O U T I N E =======================================


                public ZwImpersonateThread
ZwImpersonateThread proc near           ; DATA XREF: .rdata:00000001801206BC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtImpersonateThread
                mov     eax, 0FEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EF95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EF95:                          ; CODE XREF: ZwImpersonateThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwImpersonateThread endp

; ---------------------------------------------------------------------------
algn_18009EF98:                         ; DATA XREF: .pdata:0000000180178EA0↓o
                align 20h
; Exported entry 388. NtInitializeEnclave
; Exported entry 1973. ZwInitializeEnclave

; =============== S U B R O U T I N E =======================================


                public ZwInitializeEnclave
ZwInitializeEnclave proc near           ; CODE XREF: LdrInitializeEnclave+69↓p
                                        ; DATA XREF: .rdata:00000001801206C1↓o ...
                mov     r10, rcx        ; NtInitializeEnclave
                mov     eax, 0FFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EFB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EFB5:                          ; CODE XREF: ZwInitializeEnclave+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwInitializeEnclave endp

; ---------------------------------------------------------------------------
algn_18009EFB8:                         ; DATA XREF: .pdata:0000000180178EAC↓o
                align 20h
; Exported entry 389. NtInitializeNlsFiles
; Exported entry 1974. ZwInitializeNlsFiles

; =============== S U B R O U T I N E =======================================


                public ZwInitializeNlsFiles
ZwInitializeNlsFiles proc near          ; CODE XREF: RtlGetLocaleFileMappingAddress+29↑p
                                        ; DATA XREF: .rdata:00000001801206C6↓o ...
                mov     r10, rcx        ; NtInitializeNlsFiles
                mov     eax, 100h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EFD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EFD5:                          ; CODE XREF: ZwInitializeNlsFiles+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwInitializeNlsFiles endp

; ---------------------------------------------------------------------------
algn_18009EFD8:                         ; DATA XREF: .pdata:0000000180178EB8↓o
                align 20h
; Exported entry 390. NtInitializeRegistry
; Exported entry 1975. ZwInitializeRegistry

; =============== S U B R O U T I N E =======================================


                public ZwInitializeRegistry
ZwInitializeRegistry proc near          ; DATA XREF: .rdata:00000001801206CB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtInitializeRegistry
                mov     eax, 101h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009EFF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009EFF5:                          ; CODE XREF: ZwInitializeRegistry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwInitializeRegistry endp

; ---------------------------------------------------------------------------
algn_18009EFF8:                         ; DATA XREF: .pdata:0000000180178EC4↓o
                align 20h
; Exported entry 391. NtInitiatePowerAction
; Exported entry 1976. ZwInitiatePowerAction

; =============== S U B R O U T I N E =======================================


                public ZwInitiatePowerAction
ZwInitiatePowerAction proc near         ; DATA XREF: .rdata:00000001801206D0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtInitiatePowerAction
                mov     eax, 102h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F015
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F015:                          ; CODE XREF: ZwInitiatePowerAction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwInitiatePowerAction endp

; ---------------------------------------------------------------------------
algn_18009F018:                         ; DATA XREF: .pdata:0000000180178ED0↓o
                align 20h
; Exported entry 393. NtIsSystemResumeAutomatic
; Exported entry 1978. ZwIsSystemResumeAutomatic

; =============== S U B R O U T I N E =======================================


                public ZwIsSystemResumeAutomatic
ZwIsSystemResumeAutomatic proc near     ; DATA XREF: .rdata:00000001801206D5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtIsSystemResumeAutomatic
                mov     eax, 103h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F035
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F035:                          ; CODE XREF: ZwIsSystemResumeAutomatic+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwIsSystemResumeAutomatic endp

; ---------------------------------------------------------------------------
algn_18009F038:                         ; DATA XREF: .pdata:0000000180178EDC↓o
                align 20h
; Exported entry 394. NtIsUILanguageComitted
; Exported entry 1979. ZwIsUILanguageComitted

; =============== S U B R O U T I N E =======================================


                public ZwIsUILanguageComitted
ZwIsUILanguageComitted proc near        ; CODE XREF: sub_18003A52C+4A4↑p
                                        ; RtlpGetSystemDefaultUILanguage+85↑p ...
                mov     r10, rcx        ; NtIsUILanguageComitted
                mov     eax, 104h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F055
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F055:                          ; CODE XREF: ZwIsUILanguageComitted+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwIsUILanguageComitted endp

; ---------------------------------------------------------------------------
algn_18009F058:                         ; DATA XREF: .pdata:0000000180178EE8↓o
                align 20h
; Exported entry 395. NtListenPort
; Exported entry 1980. ZwListenPort

; =============== S U B R O U T I N E =======================================


                public ZwListenPort
ZwListenPort    proc near               ; DATA XREF: .rdata:00000001801206DF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtListenPort
                mov     eax, 105h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F075
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F075:                          ; CODE XREF: ZwListenPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwListenPort    endp

; ---------------------------------------------------------------------------
algn_18009F078:                         ; DATA XREF: .pdata:0000000180178EF4↓o
                align 20h
; Exported entry 396. NtLoadDriver
; Exported entry 1981. ZwLoadDriver

; =============== S U B R O U T I N E =======================================


                public ZwLoadDriver
ZwLoadDriver    proc near               ; DATA XREF: .rdata:00000001801206E4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLoadDriver
                mov     eax, 106h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F095
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F095:                          ; CODE XREF: ZwLoadDriver+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadDriver    endp

; ---------------------------------------------------------------------------
algn_18009F098:                         ; DATA XREF: .pdata:0000000180178F00↓o
                align 20h
; Exported entry 397. NtLoadEnclaveData
; Exported entry 1982. ZwLoadEnclaveData

; =============== S U B R O U T I N E =======================================


                public ZwLoadEnclaveData
ZwLoadEnclaveData proc near             ; CODE XREF: sub_1800CD778+18C↓p
                                        ; DATA XREF: .rdata:00000001801206E9↓o ...
                mov     r10, rcx        ; NtLoadEnclaveData
                mov     eax, 107h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F0B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F0B5:                          ; CODE XREF: ZwLoadEnclaveData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadEnclaveData endp

; ---------------------------------------------------------------------------
algn_18009F0B8:                         ; DATA XREF: .pdata:0000000180178F0C↓o
                align 20h
; Exported entry 398. NtLoadKey
; Exported entry 1983. ZwLoadKey

; =============== S U B R O U T I N E =======================================


                public ZwLoadKey
ZwLoadKey       proc near               ; DATA XREF: .rdata:00000001801206EE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLoadKey
                mov     eax, 108h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F0D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F0D5:                          ; CODE XREF: ZwLoadKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadKey       endp

; ---------------------------------------------------------------------------
algn_18009F0D8:                         ; DATA XREF: .pdata:0000000180178F18↓o
                align 20h
; Exported entry 399. NtLoadKey2
; Exported entry 1984. ZwLoadKey2

; =============== S U B R O U T I N E =======================================


                public ZwLoadKey2
ZwLoadKey2      proc near               ; DATA XREF: .rdata:00000001801206F3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLoadKey2
                mov     eax, 109h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F0F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F0F5:                          ; CODE XREF: ZwLoadKey2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadKey2      endp

; ---------------------------------------------------------------------------
algn_18009F0F8:                         ; DATA XREF: .pdata:0000000180178F24↓o
                align 20h
; Exported entry 401. NtLoadKeyEx
; Exported entry 1986. ZwLoadKeyEx

; =============== S U B R O U T I N E =======================================


                public ZwLoadKeyEx
ZwLoadKeyEx     proc near               ; DATA XREF: .rdata:00000001801206F8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLoadKeyEx
                mov     eax, 10Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F115
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F115:                          ; CODE XREF: ZwLoadKeyEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadKeyEx     endp

; ---------------------------------------------------------------------------
algn_18009F118:                         ; DATA XREF: .pdata:0000000180178F30↓o
                align 20h
; Exported entry 402. NtLockFile
; Exported entry 1987. ZwLockFile

; =============== S U B R O U T I N E =======================================


                public ZwLockFile
ZwLockFile      proc near               ; DATA XREF: .rdata:00000001801206FD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLockFile
                mov     eax, 10Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F135
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F135:                          ; CODE XREF: ZwLockFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLockFile      endp

; ---------------------------------------------------------------------------
algn_18009F138:                         ; DATA XREF: .pdata:0000000180178F3C↓o
                align 20h
; Exported entry 403. NtLockProductActivationKeys
; Exported entry 1988. ZwLockProductActivationKeys

; =============== S U B R O U T I N E =======================================


                public ZwLockProductActivationKeys
ZwLockProductActivationKeys proc near   ; DATA XREF: .rdata:0000000180120702↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLockProductActivationKeys
                mov     eax, 10Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F155
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F155:                          ; CODE XREF: ZwLockProductActivationKeys+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLockProductActivationKeys endp

; ---------------------------------------------------------------------------
algn_18009F158:                         ; DATA XREF: .pdata:0000000180178F48↓o
                align 20h
; Exported entry 404. NtLockRegistryKey
; Exported entry 1989. ZwLockRegistryKey

; =============== S U B R O U T I N E =======================================


                public ZwLockRegistryKey
ZwLockRegistryKey proc near             ; DATA XREF: .rdata:0000000180120707↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLockRegistryKey
                mov     eax, 10Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F175
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F175:                          ; CODE XREF: ZwLockRegistryKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLockRegistryKey endp

; ---------------------------------------------------------------------------
algn_18009F178:                         ; DATA XREF: .pdata:0000000180178F54↓o
                align 20h
; Exported entry 405. NtLockVirtualMemory
; Exported entry 1990. ZwLockVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwLockVirtualMemory
ZwLockVirtualMemory proc near           ; CODE XREF: RtlExtendMemoryZone+83↑p
                                        ; RtlLockMemoryZone+53↑p ...
                mov     r10, rcx        ; NtLockVirtualMemory
                mov     eax, 10Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F195
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F195:                          ; CODE XREF: ZwLockVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLockVirtualMemory endp

; ---------------------------------------------------------------------------
algn_18009F198:                         ; DATA XREF: .pdata:0000000180178F60↓o
                align 20h
; Exported entry 406. NtMakePermanentObject
; Exported entry 1991. ZwMakePermanentObject

; =============== S U B R O U T I N E =======================================


                public ZwMakePermanentObject
ZwMakePermanentObject proc near         ; DATA XREF: .rdata:0000000180120711↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtMakePermanentObject
                mov     eax, 10Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F1B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F1B5:                          ; CODE XREF: ZwMakePermanentObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMakePermanentObject endp

; ---------------------------------------------------------------------------
algn_18009F1B8:                         ; DATA XREF: .pdata:0000000180178F6C↓o
                align 20h
; Exported entry 407. NtMakeTemporaryObject
; Exported entry 1992. ZwMakeTemporaryObject

; =============== S U B R O U T I N E =======================================


                public ZwMakeTemporaryObject
ZwMakeTemporaryObject proc near         ; CODE XREF: LdrVerifyImageMatchesChecksumEx+1BA8B↓p
                                        ; LdrVerifyImageMatchesChecksumEx+40264↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtMakeTemporaryObject
                mov     eax, 110h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F1D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F1D5:                          ; CODE XREF: ZwMakeTemporaryObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMakeTemporaryObject endp

; ---------------------------------------------------------------------------
algn_18009F1D8:                         ; DATA XREF: .pdata:0000000180178F78↓o
                align 20h
; Exported entry 408. NtManageHotPatch
; Exported entry 1993. ZwManageHotPatch

; =============== S U B R O U T I N E =======================================


                public ZwManageHotPatch
ZwManageHotPatch proc near              ; DATA XREF: .rdata:000000018012071B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtManageHotPatch
                mov     eax, 111h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F1F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F1F5:                          ; CODE XREF: ZwManageHotPatch+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwManageHotPatch endp

; ---------------------------------------------------------------------------
algn_18009F1F8:                         ; DATA XREF: .pdata:0000000180178F84↓o
                align 20h
; Exported entry 409. NtManagePartition
; Exported entry 1994. ZwManagePartition

; =============== S U B R O U T I N E =======================================


                public ZwManagePartition
ZwManagePartition proc near             ; DATA XREF: .rdata:0000000180120720↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtManagePartition
                mov     eax, 112h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F215
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F215:                          ; CODE XREF: ZwManagePartition+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwManagePartition endp

; ---------------------------------------------------------------------------
algn_18009F218:                         ; DATA XREF: .pdata:0000000180178F90↓o
                align 20h
; Exported entry 410. NtMapCMFModule
; Exported entry 1995. ZwMapCMFModule

; =============== S U B R O U T I N E =======================================


                public ZwMapCMFModule
ZwMapCMFModule  proc near               ; DATA XREF: .rdata:0000000180120725↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtMapCMFModule
                mov     eax, 113h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F235
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F235:                          ; CODE XREF: ZwMapCMFModule+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMapCMFModule  endp

; ---------------------------------------------------------------------------
algn_18009F238:                         ; DATA XREF: .pdata:0000000180178F9C↓o
                align 20h
; Exported entry 411. NtMapUserPhysicalPages
; Exported entry 1996. ZwMapUserPhysicalPages

; =============== S U B R O U T I N E =======================================


                public ZwMapUserPhysicalPages
ZwMapUserPhysicalPages proc near        ; DATA XREF: .rdata:000000018012072A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtMapUserPhysicalPages
                mov     eax, 114h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F255
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F255:                          ; CODE XREF: ZwMapUserPhysicalPages+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMapUserPhysicalPages endp

; ---------------------------------------------------------------------------
algn_18009F258:                         ; DATA XREF: .pdata:0000000180178FA8↓o
                align 20h
; Exported entry 414. NtMapViewOfSectionEx
; Exported entry 1999. ZwMapViewOfSectionEx

; =============== S U B R O U T I N E =======================================


                public ZwMapViewOfSectionEx
ZwMapViewOfSectionEx proc near          ; CODE XREF: sub_180014C38+228↑p
                                        ; DATA XREF: .rdata:000000018011E010↓o ...
                mov     r10, rcx        ; NtMapViewOfSectionEx
                mov     eax, 115h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F275
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F275:                          ; CODE XREF: ZwMapViewOfSectionEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwMapViewOfSectionEx endp

; ---------------------------------------------------------------------------
algn_18009F278:                         ; DATA XREF: .pdata:0000000180178FB4↓o
                align 20h
; Exported entry 415. NtModifyBootEntry
; Exported entry 2000. ZwModifyBootEntry

; =============== S U B R O U T I N E =======================================


                public ZwModifyBootEntry
ZwModifyBootEntry proc near             ; DATA XREF: .rdata:0000000180120734↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtModifyBootEntry
                mov     eax, 116h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F295
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F295:                          ; CODE XREF: ZwModifyBootEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwModifyBootEntry endp

; ---------------------------------------------------------------------------
algn_18009F298:                         ; DATA XREF: .pdata:0000000180178FC0↓o
                align 20h
; Exported entry 416. NtModifyDriverEntry
; Exported entry 2001. ZwModifyDriverEntry

; =============== S U B R O U T I N E =======================================


                public ZwModifyDriverEntry
ZwModifyDriverEntry proc near           ; DATA XREF: .rdata:0000000180120739↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtModifyDriverEntry
                mov     eax, 117h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F2B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F2B5:                          ; CODE XREF: ZwModifyDriverEntry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwModifyDriverEntry endp

; ---------------------------------------------------------------------------
algn_18009F2B8:                         ; DATA XREF: .pdata:0000000180178FCC↓o
                align 20h
; Exported entry 417. NtNotifyChangeDirectoryFile
; Exported entry 2002. ZwNotifyChangeDirectoryFile

; =============== S U B R O U T I N E =======================================


                public ZwNotifyChangeDirectoryFile
ZwNotifyChangeDirectoryFile proc near   ; DATA XREF: .rdata:000000018012073E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtNotifyChangeDirectoryFile
                mov     eax, 118h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F2D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F2D5:                          ; CODE XREF: ZwNotifyChangeDirectoryFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwNotifyChangeDirectoryFile endp

; ---------------------------------------------------------------------------
algn_18009F2D8:                         ; DATA XREF: .pdata:0000000180178FD8↓o
                align 20h
; Exported entry 418. NtNotifyChangeDirectoryFileEx
; Exported entry 2003. ZwNotifyChangeDirectoryFileEx

; =============== S U B R O U T I N E =======================================


                public ZwNotifyChangeDirectoryFileEx
ZwNotifyChangeDirectoryFileEx proc near ; DATA XREF: .rdata:0000000180120743↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtNotifyChangeDirectoryFileEx
                mov     eax, 119h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F2F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F2F5:                          ; CODE XREF: ZwNotifyChangeDirectoryFileEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwNotifyChangeDirectoryFileEx endp

; ---------------------------------------------------------------------------
algn_18009F2F8:                         ; DATA XREF: .pdata:0000000180178FE4↓o
                align 20h
; Exported entry 419. NtNotifyChangeKey
; Exported entry 2004. ZwNotifyChangeKey

; =============== S U B R O U T I N E =======================================


                public ZwNotifyChangeKey
ZwNotifyChangeKey proc near             ; DATA XREF: .rdata:0000000180120748↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtNotifyChangeKey
                mov     eax, 11Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F315
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F315:                          ; CODE XREF: ZwNotifyChangeKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwNotifyChangeKey endp

; ---------------------------------------------------------------------------
algn_18009F318:                         ; DATA XREF: .pdata:0000000180178FF0↓o
                align 20h
; Exported entry 420. NtNotifyChangeMultipleKeys
; Exported entry 2005. ZwNotifyChangeMultipleKeys

; =============== S U B R O U T I N E =======================================


                public ZwNotifyChangeMultipleKeys
ZwNotifyChangeMultipleKeys proc near    ; DATA XREF: .rdata:000000018012074D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtNotifyChangeMultipleKeys
                mov     eax, 11Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F335
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F335:                          ; CODE XREF: ZwNotifyChangeMultipleKeys+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwNotifyChangeMultipleKeys endp

; ---------------------------------------------------------------------------
algn_18009F338:                         ; DATA XREF: .pdata:0000000180178FFC↓o
                align 20h
; Exported entry 421. NtNotifyChangeSession
; Exported entry 2006. ZwNotifyChangeSession

; =============== S U B R O U T I N E =======================================


                public ZwNotifyChangeSession
ZwNotifyChangeSession proc near         ; DATA XREF: .rdata:0000000180120752↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtNotifyChangeSession
                mov     eax, 11Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F355
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F355:                          ; CODE XREF: ZwNotifyChangeSession+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwNotifyChangeSession endp

; ---------------------------------------------------------------------------
algn_18009F358:                         ; DATA XREF: .pdata:0000000180179008↓o
                align 20h
; Exported entry 423. NtOpenEnlistment
; Exported entry 2008. ZwOpenEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwOpenEnlistment
ZwOpenEnlistment proc near              ; DATA XREF: .rdata:0000000180120757↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenEnlistment
                mov     eax, 11Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F375
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F375:                          ; CODE XREF: ZwOpenEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenEnlistment endp

; ---------------------------------------------------------------------------
algn_18009F378:                         ; DATA XREF: .pdata:0000000180179014↓o
                align 20h
; Exported entry 425. NtOpenEventPair
; Exported entry 2010. ZwOpenEventPair

; =============== S U B R O U T I N E =======================================


                public ZwOpenEventPair
ZwOpenEventPair proc near               ; DATA XREF: .rdata:000000018012075C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenEventPair
                mov     eax, 11Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F395
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F395:                          ; CODE XREF: ZwOpenEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenEventPair endp

; ---------------------------------------------------------------------------
algn_18009F398:                         ; DATA XREF: .pdata:0000000180179020↓o
                align 20h
; Exported entry 427. NtOpenIoCompletion
; Exported entry 2012. ZwOpenIoCompletion

; =============== S U B R O U T I N E =======================================


                public ZwOpenIoCompletion
ZwOpenIoCompletion proc near            ; DATA XREF: .rdata:0000000180120761↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenIoCompletion
                mov     eax, 11Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F3B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F3B5:                          ; CODE XREF: ZwOpenIoCompletion+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenIoCompletion endp

; ---------------------------------------------------------------------------
algn_18009F3B8:                         ; DATA XREF: .pdata:000000018017902C↓o
                align 20h
; Exported entry 428. NtOpenJobObject
; Exported entry 2013. ZwOpenJobObject

; =============== S U B R O U T I N E =======================================


                public ZwOpenJobObject
ZwOpenJobObject proc near               ; DATA XREF: .rdata:000000018011DFE8↓o
                                        ; .rdata:0000000180120766↓o ...
                mov     r10, rcx        ; NtOpenJobObject
                mov     eax, 120h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F3D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F3D5:                          ; CODE XREF: ZwOpenJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenJobObject endp

; ---------------------------------------------------------------------------
algn_18009F3D8:                         ; DATA XREF: .pdata:0000000180179038↓o
                align 20h
; Exported entry 430. NtOpenKeyEx
; Exported entry 2015. ZwOpenKeyEx

; =============== S U B R O U T I N E =======================================


                public ZwOpenKeyEx
ZwOpenKeyEx     proc near               ; CODE XREF: sub_1800CB994+1EE↓p
                                        ; sub_1800CED5C+5C↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtOpenKeyEx
                mov     eax, 121h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F3F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F3F5:                          ; CODE XREF: ZwOpenKeyEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenKeyEx     endp

; ---------------------------------------------------------------------------
algn_18009F3F8:                         ; DATA XREF: .pdata:0000000180179044↓o
                align 20h
; Exported entry 431. NtOpenKeyTransacted
; Exported entry 2016. ZwOpenKeyTransacted

; =============== S U B R O U T I N E =======================================


                public ZwOpenKeyTransacted
ZwOpenKeyTransacted proc near           ; DATA XREF: .rdata:0000000180120770↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenKeyTransacted
                mov     eax, 122h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F415
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F415:                          ; CODE XREF: ZwOpenKeyTransacted+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenKeyTransacted endp

; ---------------------------------------------------------------------------
algn_18009F418:                         ; DATA XREF: .pdata:0000000180179050↓o
                align 20h
; Exported entry 432. NtOpenKeyTransactedEx
; Exported entry 2017. ZwOpenKeyTransactedEx

; =============== S U B R O U T I N E =======================================


                public ZwOpenKeyTransactedEx
ZwOpenKeyTransactedEx proc near         ; DATA XREF: .rdata:0000000180120775↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenKeyTransactedEx
                mov     eax, 123h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F435
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F435:                          ; CODE XREF: ZwOpenKeyTransactedEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenKeyTransactedEx endp

; ---------------------------------------------------------------------------
algn_18009F438:                         ; DATA XREF: .pdata:000000018017905C↓o
                align 20h
; Exported entry 433. NtOpenKeyedEvent
; Exported entry 2018. ZwOpenKeyedEvent

; =============== S U B R O U T I N E =======================================


                public ZwOpenKeyedEvent
ZwOpenKeyedEvent proc near              ; DATA XREF: .rdata:000000018012077A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenKeyedEvent
                mov     eax, 124h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F455
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F455:                          ; CODE XREF: ZwOpenKeyedEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenKeyedEvent endp

; ---------------------------------------------------------------------------
algn_18009F458:                         ; DATA XREF: .pdata:0000000180179068↓o
                align 20h
; Exported entry 434. NtOpenMutant
; Exported entry 2019. ZwOpenMutant

; =============== S U B R O U T I N E =======================================


                public ZwOpenMutant
ZwOpenMutant    proc near               ; DATA XREF: .rdata:000000018011DF60↓o
                                        ; .rdata:000000018012077F↓o ...
                mov     r10, rcx        ; NtOpenMutant
                mov     eax, 125h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F475
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F475:                          ; CODE XREF: ZwOpenMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenMutant    endp

; ---------------------------------------------------------------------------
algn_18009F478:                         ; DATA XREF: .pdata:0000000180179074↓o
                align 20h
; Exported entry 435. NtOpenObjectAuditAlarm
; Exported entry 2020. ZwOpenObjectAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwOpenObjectAuditAlarm
ZwOpenObjectAuditAlarm proc near        ; DATA XREF: .rdata:0000000180120784↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenObjectAuditAlarm
                mov     eax, 126h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F495
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F495:                          ; CODE XREF: ZwOpenObjectAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenObjectAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009F498:                         ; DATA XREF: .pdata:0000000180179080↓o
                align 20h
; Exported entry 436. NtOpenPartition
; Exported entry 2021. ZwOpenPartition

; =============== S U B R O U T I N E =======================================


                public ZwOpenPartition
ZwOpenPartition proc near               ; CODE XREF: sub_1800D3E2C+11B↓p
                                        ; DATA XREF: .rdata:0000000180120789↓o ...
                mov     r10, rcx        ; NtOpenPartition
                mov     eax, 127h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F4B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F4B5:                          ; CODE XREF: ZwOpenPartition+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenPartition endp

; ---------------------------------------------------------------------------
algn_18009F4B8:                         ; DATA XREF: .pdata:000000018017908C↓o
                align 20h
; Exported entry 437. NtOpenPrivateNamespace
; Exported entry 2022. ZwOpenPrivateNamespace

; =============== S U B R O U T I N E =======================================


                public ZwOpenPrivateNamespace
ZwOpenPrivateNamespace proc near        ; DATA XREF: .rdata:000000018012078E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenPrivateNamespace
                mov     eax, 128h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F4D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F4D5:                          ; CODE XREF: ZwOpenPrivateNamespace+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenPrivateNamespace endp

; ---------------------------------------------------------------------------
algn_18009F4D8:                         ; DATA XREF: .pdata:0000000180179098↓o
                align 20h
; Exported entry 439. NtOpenProcessToken
; Exported entry 2024. ZwOpenProcessToken

; =============== S U B R O U T I N E =======================================


                public ZwOpenProcessToken
ZwOpenProcessToken proc near            ; CODE XREF: RtlAdjustPrivilege+44↑p
                                        ; sub_180066D9C+58A6C↓p ...
                mov     r10, rcx        ; NtOpenProcessToken
                mov     eax, 129h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F4F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F4F5:                          ; CODE XREF: ZwOpenProcessToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenProcessToken endp

; ---------------------------------------------------------------------------
algn_18009F4F8:                         ; DATA XREF: .pdata:00000001801790A4↓o
                align 20h
; Exported entry 441. NtOpenRegistryTransaction
; Exported entry 2026. ZwOpenRegistryTransaction

; =============== S U B R O U T I N E =======================================


                public ZwOpenRegistryTransaction
ZwOpenRegistryTransaction proc near     ; DATA XREF: .rdata:0000000180120798↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenRegistryTransaction
                mov     eax, 12Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F515
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F515:                          ; CODE XREF: ZwOpenRegistryTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenRegistryTransaction endp

; ---------------------------------------------------------------------------
algn_18009F518:                         ; DATA XREF: .pdata:00000001801790B0↓o
                align 20h
; Exported entry 442. NtOpenResourceManager
; Exported entry 2027. ZwOpenResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwOpenResourceManager
ZwOpenResourceManager proc near         ; DATA XREF: .rdata:000000018012079D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenResourceManager
                mov     eax, 12Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F535
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F535:                          ; CODE XREF: ZwOpenResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenResourceManager endp

; ---------------------------------------------------------------------------
algn_18009F538:                         ; DATA XREF: .pdata:00000001801790BC↓o
                align 20h
; Exported entry 444. NtOpenSemaphore
; Exported entry 2029. ZwOpenSemaphore

; =============== S U B R O U T I N E =======================================


                public ZwOpenSemaphore
ZwOpenSemaphore proc near               ; DATA XREF: .rdata:000000018011DF58↓o
                                        ; .rdata:00000001801207A2↓o ...
                mov     r10, rcx        ; NtOpenSemaphore
                mov     eax, 12Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F555
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F555:                          ; CODE XREF: ZwOpenSemaphore+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenSemaphore endp

; ---------------------------------------------------------------------------
algn_18009F558:                         ; DATA XREF: .pdata:00000001801790C8↓o
                align 20h
; Exported entry 445. NtOpenSession
; Exported entry 2030. ZwOpenSession

; =============== S U B R O U T I N E =======================================


                public ZwOpenSession
ZwOpenSession   proc near               ; DATA XREF: .rdata:00000001801207A7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenSession
                mov     eax, 12Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F575
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F575:                          ; CODE XREF: ZwOpenSession+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenSession   endp

; ---------------------------------------------------------------------------
algn_18009F578:                         ; DATA XREF: .pdata:00000001801790D4↓o
                align 20h
; Exported entry 446. NtOpenSymbolicLinkObject
; Exported entry 2031. ZwOpenSymbolicLinkObject

; =============== S U B R O U T I N E =======================================


                public ZwOpenSymbolicLinkObject
ZwOpenSymbolicLinkObject proc near      ; CODE XREF: sub_1800D1CE0+DB5↓p
                                        ; sub_1800DB4F0+FD↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtOpenSymbolicLinkObject
                mov     eax, 12Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F595
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F595:                          ; CODE XREF: ZwOpenSymbolicLinkObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenSymbolicLinkObject endp

; ---------------------------------------------------------------------------
algn_18009F598:                         ; DATA XREF: .pdata:00000001801790E0↓o
                align 20h
; Exported entry 447. NtOpenThread
; Exported entry 2032. ZwOpenThread

; =============== S U B R O U T I N E =======================================


                public ZwOpenThread
ZwOpenThread    proc near               ; DATA XREF: .rdata:000000018011DFD8↓o
                                        ; .rdata:00000001801207B1↓o ...
                mov     r10, rcx        ; NtOpenThread
                mov     eax, 12Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F5B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F5B5:                          ; CODE XREF: ZwOpenThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenThread    endp

; ---------------------------------------------------------------------------
algn_18009F5B8:                         ; DATA XREF: .pdata:00000001801790EC↓o
                align 20h
; Exported entry 450. NtOpenTimer
; Exported entry 2035. ZwOpenTimer

; =============== S U B R O U T I N E =======================================


                public ZwOpenTimer
ZwOpenTimer     proc near               ; DATA XREF: .rdata:00000001801207B6↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenTimer
                mov     eax, 130h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F5D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F5D5:                          ; CODE XREF: ZwOpenTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenTimer     endp

; ---------------------------------------------------------------------------
algn_18009F5D8:                         ; DATA XREF: .pdata:00000001801790F8↓o
                align 20h
; Exported entry 451. NtOpenTransaction
; Exported entry 2036. ZwOpenTransaction

; =============== S U B R O U T I N E =======================================


                public ZwOpenTransaction
ZwOpenTransaction proc near             ; DATA XREF: .rdata:00000001801207BB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenTransaction
                mov     eax, 131h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F5F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F5F5:                          ; CODE XREF: ZwOpenTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenTransaction endp

; ---------------------------------------------------------------------------
algn_18009F5F8:                         ; DATA XREF: .pdata:0000000180179104↓o
                align 20h
; Exported entry 452. NtOpenTransactionManager
; Exported entry 2037. ZwOpenTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwOpenTransactionManager
ZwOpenTransactionManager proc near      ; DATA XREF: .rdata:00000001801207C0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtOpenTransactionManager
                mov     eax, 132h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F615
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F615:                          ; CODE XREF: ZwOpenTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwOpenTransactionManager endp

; ---------------------------------------------------------------------------
algn_18009F618:                         ; DATA XREF: .pdata:0000000180179110↓o
                align 20h
; Exported entry 453. NtPlugPlayControl
; Exported entry 2038. ZwPlugPlayControl

; =============== S U B R O U T I N E =======================================


                public ZwPlugPlayControl
ZwPlugPlayControl proc near             ; DATA XREF: .rdata:00000001801207C5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPlugPlayControl
                mov     eax, 133h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F635
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F635:                          ; CODE XREF: ZwPlugPlayControl+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPlugPlayControl endp

; ---------------------------------------------------------------------------
algn_18009F638:                         ; DATA XREF: .pdata:000000018017911C↓o
                align 20h
; Exported entry 455. NtPrePrepareComplete
; Exported entry 2040. ZwPrePrepareComplete

; =============== S U B R O U T I N E =======================================


                public ZwPrePrepareComplete
ZwPrePrepareComplete proc near          ; DATA XREF: .rdata:00000001801207CA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrePrepareComplete
                mov     eax, 134h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F655
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F655:                          ; CODE XREF: ZwPrePrepareComplete+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrePrepareComplete endp

; ---------------------------------------------------------------------------
algn_18009F658:                         ; DATA XREF: .pdata:0000000180179128↓o
                align 20h
; Exported entry 456. NtPrePrepareEnlistment
; Exported entry 2041. ZwPrePrepareEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwPrePrepareEnlistment
ZwPrePrepareEnlistment proc near        ; DATA XREF: .rdata:00000001801207CF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrePrepareEnlistment
                mov     eax, 135h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F675
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F675:                          ; CODE XREF: ZwPrePrepareEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrePrepareEnlistment endp

; ---------------------------------------------------------------------------
algn_18009F678:                         ; DATA XREF: .pdata:0000000180179134↓o
                align 20h
; Exported entry 457. NtPrepareComplete
; Exported entry 2042. ZwPrepareComplete

; =============== S U B R O U T I N E =======================================


                public ZwPrepareComplete
ZwPrepareComplete proc near             ; DATA XREF: .rdata:00000001801207D4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrepareComplete
                mov     eax, 136h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F695
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F695:                          ; CODE XREF: ZwPrepareComplete+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrepareComplete endp

; ---------------------------------------------------------------------------
algn_18009F698:                         ; DATA XREF: .pdata:0000000180179140↓o
                align 20h
; Exported entry 458. NtPrepareEnlistment
; Exported entry 2043. ZwPrepareEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwPrepareEnlistment
ZwPrepareEnlistment proc near           ; DATA XREF: .rdata:00000001801207D9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrepareEnlistment
                mov     eax, 137h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F6B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F6B5:                          ; CODE XREF: ZwPrepareEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrepareEnlistment endp

; ---------------------------------------------------------------------------
algn_18009F6B8:                         ; DATA XREF: .pdata:000000018017914C↓o
                align 20h
; Exported entry 459. NtPrivilegeCheck
; Exported entry 2044. ZwPrivilegeCheck

; =============== S U B R O U T I N E =======================================


                public ZwPrivilegeCheck
ZwPrivilegeCheck proc near              ; CODE XREF: sub_180038B7C+10E9↑p
                                        ; sub_180038B7C+7C45F↓p ...
                mov     r10, rcx        ; NtPrivilegeCheck
                mov     eax, 138h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F6D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F6D5:                          ; CODE XREF: ZwPrivilegeCheck+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrivilegeCheck endp

; ---------------------------------------------------------------------------
algn_18009F6D8:                         ; DATA XREF: .pdata:0000000180179158↓o
                align 20h
; Exported entry 460. NtPrivilegeObjectAuditAlarm
; Exported entry 2045. ZwPrivilegeObjectAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwPrivilegeObjectAuditAlarm
ZwPrivilegeObjectAuditAlarm proc near   ; DATA XREF: .rdata:00000001801207E3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrivilegeObjectAuditAlarm
                mov     eax, 139h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F6F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F6F5:                          ; CODE XREF: ZwPrivilegeObjectAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrivilegeObjectAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009F6F8:                         ; DATA XREF: .pdata:0000000180179164↓o
                align 20h
; Exported entry 461. NtPrivilegedServiceAuditAlarm
; Exported entry 2046. ZwPrivilegedServiceAuditAlarm

; =============== S U B R O U T I N E =======================================


                public ZwPrivilegedServiceAuditAlarm
ZwPrivilegedServiceAuditAlarm proc near ; DATA XREF: .rdata:00000001801207E8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPrivilegedServiceAuditAlarm
                mov     eax, 13Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F715
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F715:                          ; CODE XREF: ZwPrivilegedServiceAuditAlarm+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPrivilegedServiceAuditAlarm endp

; ---------------------------------------------------------------------------
algn_18009F718:                         ; DATA XREF: .pdata:0000000180179170↓o
                align 20h
; Exported entry 462. NtPropagationComplete
; Exported entry 2047. ZwPropagationComplete

; =============== S U B R O U T I N E =======================================


                public ZwPropagationComplete
ZwPropagationComplete proc near         ; DATA XREF: .rdata:00000001801207ED↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPropagationComplete
                mov     eax, 13Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F735
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F735:                          ; CODE XREF: ZwPropagationComplete+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPropagationComplete endp

; ---------------------------------------------------------------------------
algn_18009F738:                         ; DATA XREF: .pdata:000000018017917C↓o
                align 20h
; Exported entry 463. NtPropagationFailed
; Exported entry 2048. ZwPropagationFailed

; =============== S U B R O U T I N E =======================================


                public ZwPropagationFailed
ZwPropagationFailed proc near           ; DATA XREF: .rdata:00000001801207F2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPropagationFailed
                mov     eax, 13Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F755
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F755:                          ; CODE XREF: ZwPropagationFailed+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPropagationFailed endp

; ---------------------------------------------------------------------------
algn_18009F758:                         ; DATA XREF: .pdata:0000000180179188↓o
                align 20h
; Exported entry 465. NtPssCaptureVaSpaceBulk
; Exported entry 2050. ZwPssCaptureVaSpaceBulk

; =============== S U B R O U T I N E =======================================


                public ZwPssCaptureVaSpaceBulk
ZwPssCaptureVaSpaceBulk proc near       ; CODE XREF: sub_180115820+B1↓p
                                        ; DATA XREF: .rdata:00000001801207F7↓o ...
                mov     r10, rcx        ; NtPssCaptureVaSpaceBulk
                mov     eax, 13Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F775
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F775:                          ; CODE XREF: ZwPssCaptureVaSpaceBulk+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPssCaptureVaSpaceBulk endp

; ---------------------------------------------------------------------------
algn_18009F778:                         ; DATA XREF: .pdata:0000000180179194↓o
                align 20h
; Exported entry 466. NtPulseEvent
; Exported entry 2051. ZwPulseEvent

; =============== S U B R O U T I N E =======================================


                public ZwPulseEvent
ZwPulseEvent    proc near               ; DATA XREF: .rdata:00000001801207FC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtPulseEvent
                mov     eax, 13Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F795
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F795:                          ; CODE XREF: ZwPulseEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwPulseEvent    endp

; ---------------------------------------------------------------------------
algn_18009F798:                         ; DATA XREF: .pdata:00000001801791A0↓o
                align 20h
; Exported entry 468. NtQueryAuxiliaryCounterFrequency
; Exported entry 2053. ZwQueryAuxiliaryCounterFrequency

; =============== S U B R O U T I N E =======================================


                public ZwQueryAuxiliaryCounterFrequency
ZwQueryAuxiliaryCounterFrequency proc near
                                        ; DATA XREF: .rdata:0000000180120801↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryAuxiliaryCounterFrequency
                mov     eax, 13Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F7B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F7B5:                          ; CODE XREF: ZwQueryAuxiliaryCounterFrequency+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryAuxiliaryCounterFrequency endp

; ---------------------------------------------------------------------------
algn_18009F7B8:                         ; DATA XREF: .pdata:00000001801791AC↓o
                align 20h
; Exported entry 469. NtQueryBootEntryOrder
; Exported entry 2054. ZwQueryBootEntryOrder

; =============== S U B R O U T I N E =======================================


                public ZwQueryBootEntryOrder
ZwQueryBootEntryOrder proc near         ; DATA XREF: .rdata:0000000180120806↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryBootEntryOrder
                mov     eax, 140h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F7D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F7D5:                          ; CODE XREF: ZwQueryBootEntryOrder+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryBootEntryOrder endp

; ---------------------------------------------------------------------------
algn_18009F7D8:                         ; DATA XREF: .pdata:00000001801791B8↓o
                align 20h
; Exported entry 470. NtQueryBootOptions
; Exported entry 2055. ZwQueryBootOptions

; =============== S U B R O U T I N E =======================================


                public ZwQueryBootOptions
ZwQueryBootOptions proc near            ; DATA XREF: .rdata:000000018012080B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryBootOptions
                mov     eax, 141h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F7F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F7F5:                          ; CODE XREF: ZwQueryBootOptions+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryBootOptions endp

; ---------------------------------------------------------------------------
algn_18009F7F8:                         ; DATA XREF: .pdata:00000001801791C4↓o
                align 20h
; Exported entry 471. NtQueryDebugFilterState
; Exported entry 2056. ZwQueryDebugFilterState

; =============== S U B R O U T I N E =======================================


                public ZwQueryDebugFilterState
ZwQueryDebugFilterState proc near       ; CODE XREF: sub_1800509B8+75↑p
                                        ; DbgQueryDebugFilterState↓j
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQueryDebugFilterState
                mov     eax, 142h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F815
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F815:                          ; CODE XREF: ZwQueryDebugFilterState+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDebugFilterState endp

; ---------------------------------------------------------------------------
algn_18009F818:                         ; DATA XREF: .pdata:00000001801791D0↓o
                align 20h
; Exported entry 475. NtQueryDirectoryFileEx
; Exported entry 2060. ZwQueryDirectoryFileEx

; =============== S U B R O U T I N E =======================================


                public ZwQueryDirectoryFileEx
ZwQueryDirectoryFileEx proc near        ; DATA XREF: .rdata:0000000180120815↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryDirectoryFileEx
                mov     eax, 143h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F835
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F835:                          ; CODE XREF: ZwQueryDirectoryFileEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDirectoryFileEx endp

; ---------------------------------------------------------------------------
algn_18009F838:                         ; DATA XREF: .pdata:00000001801791DC↓o
                align 20h
; Exported entry 476. NtQueryDirectoryObject
; Exported entry 2061. ZwQueryDirectoryObject

; =============== S U B R O U T I N E =======================================


                public ZwQueryDirectoryObject
ZwQueryDirectoryObject proc near        ; DATA XREF: .rdata:000000018012081A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryDirectoryObject
                mov     eax, 144h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F855
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F855:                          ; CODE XREF: ZwQueryDirectoryObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDirectoryObject endp

; ---------------------------------------------------------------------------
algn_18009F858:                         ; DATA XREF: .pdata:00000001801791E8↓o
                align 20h
; Exported entry 477. NtQueryDriverEntryOrder
; Exported entry 2062. ZwQueryDriverEntryOrder

; =============== S U B R O U T I N E =======================================


                public ZwQueryDriverEntryOrder
ZwQueryDriverEntryOrder proc near       ; DATA XREF: .rdata:000000018011DF98↓o
                                        ; .rdata:000000018012081F↓o ...
                mov     r10, rcx        ; NtQueryDriverEntryOrder
                mov     eax, 145h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F875
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F875:                          ; CODE XREF: ZwQueryDriverEntryOrder+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryDriverEntryOrder endp

; ---------------------------------------------------------------------------
algn_18009F878:                         ; DATA XREF: .pdata:00000001801791F4↓o
                align 20h
; Exported entry 478. NtQueryEaFile
; Exported entry 2063. ZwQueryEaFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryEaFile
ZwQueryEaFile   proc near               ; DATA XREF: .rdata:0000000180120824↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryEaFile
                mov     eax, 146h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F895
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F895:                          ; CODE XREF: ZwQueryEaFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryEaFile   endp

; ---------------------------------------------------------------------------
algn_18009F898:                         ; DATA XREF: .pdata:0000000180179200↓o
                align 20h
; Exported entry 480. NtQueryFullAttributesFile
; Exported entry 2065. ZwQueryFullAttributesFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryFullAttributesFile
ZwQueryFullAttributesFile proc near     ; DATA XREF: .rdata:0000000180120829↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryFullAttributesFile
                mov     eax, 147h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F8B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F8B5:                          ; CODE XREF: ZwQueryFullAttributesFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryFullAttributesFile endp

; ---------------------------------------------------------------------------
algn_18009F8B8:                         ; DATA XREF: .pdata:000000018017920C↓o
                align 20h
; Exported entry 481. NtQueryInformationAtom
; Exported entry 2066. ZwQueryInformationAtom

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationAtom
ZwQueryInformationAtom proc near        ; DATA XREF: .rdata:000000018012082E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationAtom
                mov     eax, 148h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F8D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F8D5:                          ; CODE XREF: ZwQueryInformationAtom+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationAtom endp

; ---------------------------------------------------------------------------
algn_18009F8D8:                         ; DATA XREF: .pdata:0000000180179218↓o
                align 20h
; Exported entry 482. NtQueryInformationByName
; Exported entry 2067. ZwQueryInformationByName

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationByName
ZwQueryInformationByName proc near      ; DATA XREF: .rdata:0000000180120833↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationByName
                mov     eax, 149h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F8F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F8F5:                          ; CODE XREF: ZwQueryInformationByName+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationByName endp

; ---------------------------------------------------------------------------
algn_18009F8F8:                         ; DATA XREF: .pdata:0000000180179224↓o
                align 20h
; Exported entry 483. NtQueryInformationEnlistment
; Exported entry 2068. ZwQueryInformationEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationEnlistment
ZwQueryInformationEnlistment proc near  ; DATA XREF: .rdata:0000000180120838↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationEnlistment
                mov     eax, 14Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F915
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F915:                          ; CODE XREF: ZwQueryInformationEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationEnlistment endp

; ---------------------------------------------------------------------------
algn_18009F918:                         ; DATA XREF: .pdata:0000000180179230↓o
                align 20h
; Exported entry 485. NtQueryInformationJobObject
; Exported entry 2070. ZwQueryInformationJobObject

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationJobObject
ZwQueryInformationJobObject proc near   ; CODE XREF: sub_18007F388+7F↑p
                                        ; RtlGetSessionProperties+55↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQueryInformationJobObject
                mov     eax, 14Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F935
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F935:                          ; CODE XREF: ZwQueryInformationJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationJobObject endp

; ---------------------------------------------------------------------------
algn_18009F938:                         ; DATA XREF: .pdata:000000018017923C↓o
                align 20h
; Exported entry 486. NtQueryInformationPort
; Exported entry 2071. ZwQueryInformationPort

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationPort
ZwQueryInformationPort proc near        ; DATA XREF: .rdata:0000000180120842↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationPort
                mov     eax, 14Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F955
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F955:                          ; CODE XREF: ZwQueryInformationPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationPort endp

; ---------------------------------------------------------------------------
algn_18009F958:                         ; DATA XREF: .pdata:0000000180179248↓o
                align 20h
; Exported entry 488. NtQueryInformationResourceManager
; Exported entry 2073. ZwQueryInformationResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationResourceManager
ZwQueryInformationResourceManager proc near
                                        ; DATA XREF: .rdata:0000000180120847↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationResourceManager
                mov     eax, 14Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F975
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F975:                          ; CODE XREF: ZwQueryInformationResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationResourceManager endp

; ---------------------------------------------------------------------------
algn_18009F978:                         ; DATA XREF: .pdata:0000000180179254↓o
                align 20h
; Exported entry 491. NtQueryInformationTransaction
; Exported entry 2076. ZwQueryInformationTransaction

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationTransaction
ZwQueryInformationTransaction proc near ; DATA XREF: .rdata:000000018012084C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationTransaction
                mov     eax, 14Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F995
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F995:                          ; CODE XREF: ZwQueryInformationTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationTransaction endp

; ---------------------------------------------------------------------------
algn_18009F998:                         ; DATA XREF: .pdata:0000000180179260↓o
                align 20h
; Exported entry 492. NtQueryInformationTransactionManager
; Exported entry 2077. ZwQueryInformationTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationTransactionManager
ZwQueryInformationTransactionManager proc near
                                        ; DATA XREF: .rdata:0000000180120851↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryInformationTransactionManager
                mov     eax, 14Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F9B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F9B5:                          ; CODE XREF: ZwQueryInformationTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationTransactionManager endp

; ---------------------------------------------------------------------------
algn_18009F9B8:                         ; DATA XREF: .pdata:000000018017926C↓o
                align 20h
; Exported entry 493. NtQueryInformationWorkerFactory
; Exported entry 2078. ZwQueryInformationWorkerFactory

; =============== S U B R O U T I N E =======================================


                public ZwQueryInformationWorkerFactory
ZwQueryInformationWorkerFactory proc near
                                        ; CODE XREF: TpQueryPoolStackInformation+2F↓p
                                        ; DATA XREF: .rdata:0000000180120856↓o ...
                mov     r10, rcx        ; NtQueryInformationWorkerFactory
                mov     eax, 150h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F9D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F9D5:                          ; CODE XREF: ZwQueryInformationWorkerFactory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInformationWorkerFactory endp

; ---------------------------------------------------------------------------
algn_18009F9D8:                         ; DATA XREF: .pdata:0000000180179278↓o
                align 20h
; Exported entry 494. NtQueryInstallUILanguage
; Exported entry 2079. ZwQueryInstallUILanguage

; =============== S U B R O U T I N E =======================================


                public ZwQueryInstallUILanguage
ZwQueryInstallUILanguage proc near      ; CODE XREF: sub_18003A52C+495↑p
                                        ; RtlpGetSystemDefaultUILanguage+7A↑p ...
                mov     r10, rcx        ; NtQueryInstallUILanguage
                mov     eax, 151h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009F9F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009F9F5:                          ; CODE XREF: ZwQueryInstallUILanguage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryInstallUILanguage endp

; ---------------------------------------------------------------------------
algn_18009F9F8:                         ; DATA XREF: .pdata:0000000180179284↓o
                align 20h
; Exported entry 495. NtQueryIntervalProfile
; Exported entry 2080. ZwQueryIntervalProfile

; =============== S U B R O U T I N E =======================================


                public ZwQueryIntervalProfile
ZwQueryIntervalProfile proc near        ; DATA XREF: .rdata:0000000180120860↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryIntervalProfile
                mov     eax, 152h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FA15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FA15:                          ; CODE XREF: ZwQueryIntervalProfile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryIntervalProfile endp

; ---------------------------------------------------------------------------
algn_18009FA18:                         ; DATA XREF: .pdata:0000000180179290↓o
                align 20h
; Exported entry 496. NtQueryIoCompletion
; Exported entry 2081. ZwQueryIoCompletion

; =============== S U B R O U T I N E =======================================


                public ZwQueryIoCompletion
ZwQueryIoCompletion proc near           ; DATA XREF: .rdata:0000000180120865↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryIoCompletion
                mov     eax, 153h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FA35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FA35:                          ; CODE XREF: ZwQueryIoCompletion+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryIoCompletion endp

; ---------------------------------------------------------------------------
algn_18009FA38:                         ; DATA XREF: .pdata:000000018017929C↓o
                align 20h
; Exported entry 498. NtQueryLicenseValue
; Exported entry 2083. ZwQueryLicenseValue

; =============== S U B R O U T I N E =======================================


                public ZwQueryLicenseValue
ZwQueryLicenseValue proc near           ; CODE XREF: sub_18003C9CC+188↑p
                                        ; RtlGetVersion+114↑p ...
                mov     r10, rcx        ; NtQueryLicenseValue
                mov     eax, 154h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FA55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FA55:                          ; CODE XREF: ZwQueryLicenseValue+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryLicenseValue endp

; ---------------------------------------------------------------------------
algn_18009FA58:                         ; DATA XREF: .pdata:00000001801792A8↓o
                align 20h
; Exported entry 499. NtQueryMultipleValueKey
; Exported entry 2084. ZwQueryMultipleValueKey

; =============== S U B R O U T I N E =======================================


                public ZwQueryMultipleValueKey
ZwQueryMultipleValueKey proc near       ; DATA XREF: .rdata:000000018012086F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryMultipleValueKey
                mov     eax, 155h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FA75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FA75:                          ; CODE XREF: ZwQueryMultipleValueKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryMultipleValueKey endp

; ---------------------------------------------------------------------------
algn_18009FA78:                         ; DATA XREF: .pdata:00000001801792B4↓o
                align 20h
; Exported entry 500. NtQueryMutant
; Exported entry 2085. ZwQueryMutant

; =============== S U B R O U T I N E =======================================


                public ZwQueryMutant
ZwQueryMutant   proc near               ; CODE XREF: sub_180115CD0+39↓p
                                        ; sub_180115CD0+5D↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQueryMutant
                mov     eax, 156h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FA95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FA95:                          ; CODE XREF: ZwQueryMutant+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryMutant   endp

; ---------------------------------------------------------------------------
algn_18009FA98:                         ; DATA XREF: .pdata:00000001801792C0↓o
                align 20h
; Exported entry 502. NtQueryOpenSubKeys
; Exported entry 2087. ZwQueryOpenSubKeys

; =============== S U B R O U T I N E =======================================


                public ZwQueryOpenSubKeys
ZwQueryOpenSubKeys proc near            ; DATA XREF: .rdata:0000000180120879↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryOpenSubKeys
                mov     eax, 157h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FAB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FAB5:                          ; CODE XREF: ZwQueryOpenSubKeys+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryOpenSubKeys endp

; ---------------------------------------------------------------------------
algn_18009FAB8:                         ; DATA XREF: .pdata:00000001801792CC↓o
                align 20h
; Exported entry 503. NtQueryOpenSubKeysEx
; Exported entry 2088. ZwQueryOpenSubKeysEx

; =============== S U B R O U T I N E =======================================


                public ZwQueryOpenSubKeysEx
ZwQueryOpenSubKeysEx proc near          ; DATA XREF: .rdata:000000018012087E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryOpenSubKeysEx
                mov     eax, 158h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FAD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FAD5:                          ; CODE XREF: ZwQueryOpenSubKeysEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryOpenSubKeysEx endp

; ---------------------------------------------------------------------------
algn_18009FAD8:                         ; DATA XREF: .pdata:00000001801792D8↓o
                align 20h
; Exported entry 505. NtQueryPortInformationProcess
; Exported entry 2090. ZwQueryPortInformationProcess

; =============== S U B R O U T I N E =======================================


                public ZwQueryPortInformationProcess
ZwQueryPortInformationProcess proc near ; DATA XREF: .rdata:0000000180120883↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryPortInformationProcess
                mov     eax, 159h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FAF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FAF5:                          ; CODE XREF: ZwQueryPortInformationProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryPortInformationProcess endp

; ---------------------------------------------------------------------------
algn_18009FAF8:                         ; DATA XREF: .pdata:00000001801792E4↓o
                align 20h
; Exported entry 506. NtQueryQuotaInformationFile
; Exported entry 2091. ZwQueryQuotaInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwQueryQuotaInformationFile
ZwQueryQuotaInformationFile proc near   ; DATA XREF: .rdata:0000000180120888↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryQuotaInformationFile
                mov     eax, 15Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FB15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FB15:                          ; CODE XREF: ZwQueryQuotaInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryQuotaInformationFile endp

; ---------------------------------------------------------------------------
algn_18009FB18:                         ; DATA XREF: .pdata:00000001801792F0↓o
                align 20h
; Exported entry 508. NtQuerySecurityAttributesToken
; Exported entry 2093. ZwQuerySecurityAttributesToken

; =============== S U B R O U T I N E =======================================


                public ZwQuerySecurityAttributesToken
ZwQuerySecurityAttributesToken proc near
                                        ; CODE XREF: sub_180069740+67↑p
                                        ; sub_180069740+A1↑p ...
                mov     r10, rcx        ; NtQuerySecurityAttributesToken
                mov     eax, 15Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FB35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FB35:                          ; CODE XREF: ZwQuerySecurityAttributesToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySecurityAttributesToken endp

; ---------------------------------------------------------------------------
algn_18009FB38:                         ; DATA XREF: .pdata:00000001801792FC↓o
                align 20h
; Exported entry 509. NtQuerySecurityObject
; Exported entry 2094. ZwQuerySecurityObject

; =============== S U B R O U T I N E =======================================


                public ZwQuerySecurityObject
ZwQuerySecurityObject proc near         ; CODE XREF: sub_180088270+4C↑p
                                        ; sub_180088270+95↑p ...
                mov     r10, rcx        ; NtQuerySecurityObject
                mov     eax, 15Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FB55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FB55:                          ; CODE XREF: ZwQuerySecurityObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySecurityObject endp

; ---------------------------------------------------------------------------
algn_18009FB58:                         ; DATA XREF: .pdata:0000000180179308↓o
                align 20h
; Exported entry 510. NtQuerySecurityPolicy
; Exported entry 2095. ZwQuerySecurityPolicy

; =============== S U B R O U T I N E =======================================


                public ZwQuerySecurityPolicy
ZwQuerySecurityPolicy proc near         ; DATA XREF: .rdata:0000000180120897↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQuerySecurityPolicy
                mov     eax, 15Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FB75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FB75:                          ; CODE XREF: ZwQuerySecurityPolicy+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySecurityPolicy endp

; ---------------------------------------------------------------------------
algn_18009FB78:                         ; DATA XREF: .pdata:0000000180179314↓o
                align 20h
; Exported entry 511. NtQuerySemaphore
; Exported entry 2096. ZwQuerySemaphore

; =============== S U B R O U T I N E =======================================


                public ZwQuerySemaphore
ZwQuerySemaphore proc near              ; CODE XREF: sub_180115E00+25↓p
                                        ; DATA XREF: .rdata:000000018012089C↓o ...
                mov     r10, rcx        ; NtQuerySemaphore
                mov     eax, 15Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FB95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FB95:                          ; CODE XREF: ZwQuerySemaphore+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySemaphore endp

; ---------------------------------------------------------------------------
algn_18009FB98:                         ; DATA XREF: .pdata:0000000180179320↓o
                align 20h
; Exported entry 512. NtQuerySymbolicLinkObject
; Exported entry 2097. ZwQuerySymbolicLinkObject

; =============== S U B R O U T I N E =======================================


                public ZwQuerySymbolicLinkObject
ZwQuerySymbolicLinkObject proc near     ; CODE XREF: sub_1800D1CE0+E1D↓p
                                        ; sub_1800DB4F0+140↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtQuerySymbolicLinkObject
                mov     eax, 15Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FBB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FBB5:                          ; CODE XREF: ZwQuerySymbolicLinkObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySymbolicLinkObject endp

; ---------------------------------------------------------------------------
algn_18009FBB8:                         ; DATA XREF: .pdata:000000018017932C↓o
                align 20h
; Exported entry 513. NtQuerySystemEnvironmentValue
; Exported entry 2098. ZwQuerySystemEnvironmentValue

; =============== S U B R O U T I N E =======================================


                public ZwQuerySystemEnvironmentValue
ZwQuerySystemEnvironmentValue proc near ; DATA XREF: .rdata:00000001801208A6↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQuerySystemEnvironmentValue
                mov     eax, 160h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FBD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FBD5:                          ; CODE XREF: ZwQuerySystemEnvironmentValue+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySystemEnvironmentValue endp

; ---------------------------------------------------------------------------
algn_18009FBD8:                         ; DATA XREF: .pdata:0000000180179338↓o
                align 20h
; Exported entry 514. NtQuerySystemEnvironmentValueEx
; Exported entry 2099. ZwQuerySystemEnvironmentValueEx

; =============== S U B R O U T I N E =======================================


                public ZwQuerySystemEnvironmentValueEx
ZwQuerySystemEnvironmentValueEx proc near
                                        ; DATA XREF: .rdata:00000001801208AB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQuerySystemEnvironmentValueEx
                mov     eax, 161h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FBF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FBF5:                          ; CODE XREF: ZwQuerySystemEnvironmentValueEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySystemEnvironmentValueEx endp

; ---------------------------------------------------------------------------
algn_18009FBF8:                         ; DATA XREF: .pdata:0000000180179344↓o
                align 20h
; Exported entry 516. NtQuerySystemInformationEx
; Exported entry 2101. ZwQuerySystemInformationEx

; =============== S U B R O U T I N E =======================================


                public ZwQuerySystemInformationEx
ZwQuerySystemInformationEx proc near    ; CODE XREF: sub_18005C83C+12A↑p
                                        ; sub_180061E7C+7E↑p ...
                mov     r10, rcx        ; NtQuerySystemInformationEx
                mov     eax, 162h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FC15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FC15:                          ; CODE XREF: ZwQuerySystemInformationEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQuerySystemInformationEx endp

; ---------------------------------------------------------------------------
algn_18009FC18:                         ; DATA XREF: .pdata:0000000180179350↓o
                align 20h
; Exported entry 519. NtQueryTimerResolution
; Exported entry 2104. ZwQueryTimerResolution

; =============== S U B R O U T I N E =======================================


                public ZwQueryTimerResolution
ZwQueryTimerResolution proc near        ; DATA XREF: .rdata:00000001801208B5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueryTimerResolution
                mov     eax, 163h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FC35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FC35:                          ; CODE XREF: ZwQueryTimerResolution+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryTimerResolution endp

; ---------------------------------------------------------------------------
algn_18009FC38:                         ; DATA XREF: .pdata:000000018017935C↓o
                align 20h
; Exported entry 523. NtQueryWnfStateData
; Exported entry 2108. ZwQueryWnfStateData

; =============== S U B R O U T I N E =======================================


                public ZwQueryWnfStateData
ZwQueryWnfStateData proc near           ; CODE XREF: RtlQueryWnfStateData+77↑p
                                        ; RtlQueryWnfStateDataWithExplicitScope+78↑p ...
                mov     r10, rcx        ; NtQueryWnfStateData
                mov     eax, 164h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FC55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FC55:                          ; CODE XREF: ZwQueryWnfStateData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryWnfStateData endp

; ---------------------------------------------------------------------------
algn_18009FC58:                         ; DATA XREF: .pdata:0000000180179368↓o
                align 20h
; Exported entry 524. NtQueryWnfStateNameInformation
; Exported entry 2109. ZwQueryWnfStateNameInformation

; =============== S U B R O U T I N E =======================================


                public ZwQueryWnfStateNameInformation
ZwQueryWnfStateNameInformation proc near
                                        ; CODE XREF: RtlWaitForWnfMetaNotification+7E↑p
                                        ; RtlQueryWnfMetaNotification+2E↑p ...
                mov     r10, rcx        ; NtQueryWnfStateNameInformation
                mov     eax, 165h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FC75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FC75:                          ; CODE XREF: ZwQueryWnfStateNameInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueryWnfStateNameInformation endp

; ---------------------------------------------------------------------------
algn_18009FC78:                         ; DATA XREF: .pdata:0000000180179374↓o
                align 20h
; Exported entry 526. NtQueueApcThreadEx
; Exported entry 2111. ZwQueueApcThreadEx

; =============== S U B R O U T I N E =======================================


                public ZwQueueApcThreadEx
ZwQueueApcThreadEx proc near            ; DATA XREF: .rdata:00000001801208C4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueueApcThreadEx
                mov     eax, 166h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FC95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FC95:                          ; CODE XREF: ZwQueueApcThreadEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueueApcThreadEx endp

; ---------------------------------------------------------------------------
algn_18009FC98:                         ; DATA XREF: .pdata:0000000180179380↓o
                align 20h
; Exported entry 527. NtQueueApcThreadEx2
; Exported entry 2112. ZwQueueApcThreadEx2

; =============== S U B R O U T I N E =======================================


                public ZwQueueApcThreadEx2
ZwQueueApcThreadEx2 proc near           ; DATA XREF: .rdata:00000001801208C9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtQueueApcThreadEx2
                mov     eax, 167h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FCB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FCB5:                          ; CODE XREF: ZwQueueApcThreadEx2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwQueueApcThreadEx2 endp

; ---------------------------------------------------------------------------
algn_18009FCB8:                         ; DATA XREF: .pdata:000000018017938C↓o
                align 20h
; Exported entry 528. NtRaiseException
; Exported entry 2113. ZwRaiseException

; =============== S U B R O U T I N E =======================================


                public ZwRaiseException
ZwRaiseException proc near              ; CODE XREF: RtlUnwindEx+5A2↑p
                                        ; RtlRaiseException:loc_18005124E↑p ...
                mov     r10, rcx        ; NtRaiseException
                mov     eax, 168h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FCD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FCD5:                          ; CODE XREF: ZwRaiseException+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRaiseException endp

; ---------------------------------------------------------------------------
algn_18009FCD8:                         ; DATA XREF: .pdata:0000000180179398↓o
                align 20h
; Exported entry 529. NtRaiseHardError
; Exported entry 2114. ZwRaiseHardError

; =============== S U B R O U T I N E =======================================


                public ZwRaiseHardError
ZwRaiseHardError proc near              ; CODE XREF: sub_18003F2B4+777EF↓p
                                        ; sub_18005FBB4+5DB46↓p ...
                mov     r10, rcx        ; NtRaiseHardError
                mov     eax, 169h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FCF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FCF5:                          ; CODE XREF: ZwRaiseHardError+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRaiseHardError endp

; ---------------------------------------------------------------------------
algn_18009FCF8:                         ; DATA XREF: .pdata:00000001801793A4↓o
                align 20h
; Exported entry 532. NtReadOnlyEnlistment
; Exported entry 2117. ZwReadOnlyEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwReadOnlyEnlistment
ZwReadOnlyEnlistment proc near          ; DATA XREF: .rdata:00000001801208D8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReadOnlyEnlistment
                mov     eax, 16Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FD15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FD15:                          ; CODE XREF: ZwReadOnlyEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReadOnlyEnlistment endp

; ---------------------------------------------------------------------------
algn_18009FD18:                         ; DATA XREF: .pdata:00000001801793B0↓o
                align 20h
; Exported entry 535. NtRecoverEnlistment
; Exported entry 2120. ZwRecoverEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwRecoverEnlistment
ZwRecoverEnlistment proc near           ; DATA XREF: .rdata:00000001801208DD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRecoverEnlistment
                mov     eax, 16Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FD35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FD35:                          ; CODE XREF: ZwRecoverEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRecoverEnlistment endp

; ---------------------------------------------------------------------------
algn_18009FD38:                         ; DATA XREF: .pdata:00000001801793BC↓o
                align 20h
; Exported entry 536. NtRecoverResourceManager
; Exported entry 2121. ZwRecoverResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwRecoverResourceManager
ZwRecoverResourceManager proc near      ; DATA XREF: .rdata:00000001801208E2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRecoverResourceManager
                mov     eax, 16Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FD55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FD55:                          ; CODE XREF: ZwRecoverResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRecoverResourceManager endp

; ---------------------------------------------------------------------------
algn_18009FD58:                         ; DATA XREF: .pdata:00000001801793C8↓o
                align 20h
; Exported entry 537. NtRecoverTransactionManager
; Exported entry 2122. ZwRecoverTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwRecoverTransactionManager
ZwRecoverTransactionManager proc near   ; DATA XREF: .rdata:00000001801208E7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRecoverTransactionManager
                mov     eax, 16Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FD75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FD75:                          ; CODE XREF: ZwRecoverTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRecoverTransactionManager endp

; ---------------------------------------------------------------------------
algn_18009FD78:                         ; DATA XREF: .pdata:00000001801793D4↓o
                align 20h
; Exported entry 538. NtRegisterProtocolAddressInformation
; Exported entry 2123. ZwRegisterProtocolAddressInformation

; =============== S U B R O U T I N E =======================================


                public ZwRegisterProtocolAddressInformation
ZwRegisterProtocolAddressInformation proc near
                                        ; DATA XREF: .rdata:00000001801208EC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRegisterProtocolAddressInformation
                mov     eax, 16Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FD95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FD95:                          ; CODE XREF: ZwRegisterProtocolAddressInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRegisterProtocolAddressInformation endp

; ---------------------------------------------------------------------------
algn_18009FD98:                         ; DATA XREF: .pdata:00000001801793E0↓o
                align 20h
; Exported entry 539. NtRegisterThreadTerminatePort
; Exported entry 2124. ZwRegisterThreadTerminatePort

; =============== S U B R O U T I N E =======================================


                public ZwRegisterThreadTerminatePort
ZwRegisterThreadTerminatePort proc near ; DATA XREF: .rdata:00000001801208F1↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRegisterThreadTerminatePort
                mov     eax, 16Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FDB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FDB5:                          ; CODE XREF: ZwRegisterThreadTerminatePort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRegisterThreadTerminatePort endp

; ---------------------------------------------------------------------------
algn_18009FDB8:                         ; DATA XREF: .pdata:00000001801793EC↓o
                align 20h
; Exported entry 540. NtReleaseKeyedEvent
; Exported entry 2125. ZwReleaseKeyedEvent

; =============== S U B R O U T I N E =======================================


                public ZwReleaseKeyedEvent
ZwReleaseKeyedEvent proc near           ; DATA XREF: .rdata:00000001801208F6↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReleaseKeyedEvent
                mov     eax, 170h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FDD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FDD5:                          ; CODE XREF: ZwReleaseKeyedEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReleaseKeyedEvent endp

; ---------------------------------------------------------------------------
algn_18009FDD8:                         ; DATA XREF: .pdata:00000001801793F8↓o
                align 20h
; Exported entry 543. NtReleaseWorkerFactoryWorker
; Exported entry 2128. ZwReleaseWorkerFactoryWorker

; =============== S U B R O U T I N E =======================================


                public ZwReleaseWorkerFactoryWorker
ZwReleaseWorkerFactoryWorker proc near  ; CODE XREF: sub_180012A98+13C↑p
                                        ; sub_180053C70+1E7↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtReleaseWorkerFactoryWorker
                mov     eax, 171h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FDF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FDF5:                          ; CODE XREF: ZwReleaseWorkerFactoryWorker+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReleaseWorkerFactoryWorker endp

; ---------------------------------------------------------------------------
algn_18009FDF8:                         ; DATA XREF: .pdata:0000000180179404↓o
                align 20h
; Exported entry 545. NtRemoveIoCompletionEx
; Exported entry 2130. ZwRemoveIoCompletionEx

; =============== S U B R O U T I N E =======================================


                public ZwRemoveIoCompletionEx
ZwRemoveIoCompletionEx proc near        ; DATA XREF: .rdata:0000000180120900↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRemoveIoCompletionEx
                mov     eax, 172h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FE15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FE15:                          ; CODE XREF: ZwRemoveIoCompletionEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRemoveIoCompletionEx endp

; ---------------------------------------------------------------------------
algn_18009FE18:                         ; DATA XREF: .pdata:0000000180179410↓o
                align 20h
; Exported entry 546. NtRemoveProcessDebug
; Exported entry 2131. ZwRemoveProcessDebug

; =============== S U B R O U T I N E =======================================


                public ZwRemoveProcessDebug
ZwRemoveProcessDebug proc near          ; CODE XREF: DbgUiDebugActiveProcess+49↓p
                                        ; DbgUiStopDebugging+10↓j
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtRemoveProcessDebug
                mov     eax, 173h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FE35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FE35:                          ; CODE XREF: ZwRemoveProcessDebug+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRemoveProcessDebug endp

; ---------------------------------------------------------------------------
algn_18009FE38:                         ; DATA XREF: .pdata:000000018017941C↓o
                align 20h
; Exported entry 547. NtRenameKey
; Exported entry 2132. ZwRenameKey

; =============== S U B R O U T I N E =======================================


                public ZwRenameKey
ZwRenameKey     proc near               ; DATA XREF: .rdata:000000018012090A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRenameKey
                mov     eax, 174h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FE55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FE55:                          ; CODE XREF: ZwRenameKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRenameKey     endp

; ---------------------------------------------------------------------------
algn_18009FE58:                         ; DATA XREF: .pdata:0000000180179428↓o
                align 20h
; Exported entry 548. NtRenameTransactionManager
; Exported entry 2133. ZwRenameTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwRenameTransactionManager
ZwRenameTransactionManager proc near    ; DATA XREF: .rdata:000000018012090F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRenameTransactionManager
                mov     eax, 175h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FE75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FE75:                          ; CODE XREF: ZwRenameTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRenameTransactionManager endp

; ---------------------------------------------------------------------------
algn_18009FE78:                         ; DATA XREF: .pdata:0000000180179434↓o
                align 20h
; Exported entry 549. NtReplaceKey
; Exported entry 2134. ZwReplaceKey

; =============== S U B R O U T I N E =======================================


                public ZwReplaceKey
ZwReplaceKey    proc near               ; DATA XREF: .rdata:0000000180120914↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplaceKey
                mov     eax, 176h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FE95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FE95:                          ; CODE XREF: ZwReplaceKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplaceKey    endp

; ---------------------------------------------------------------------------
algn_18009FE98:                         ; DATA XREF: .pdata:0000000180179440↓o
                align 20h
; Exported entry 550. NtReplacePartitionUnit
; Exported entry 2135. ZwReplacePartitionUnit

; =============== S U B R O U T I N E =======================================


                public ZwReplacePartitionUnit
ZwReplacePartitionUnit proc near        ; DATA XREF: .rdata:0000000180120919↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplacePartitionUnit
                mov     eax, 177h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FEB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FEB5:                          ; CODE XREF: ZwReplacePartitionUnit+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplacePartitionUnit endp

; ---------------------------------------------------------------------------
algn_18009FEB8:                         ; DATA XREF: .pdata:000000018017944C↓o
                align 20h
; Exported entry 554. NtReplyWaitReplyPort
; Exported entry 2139. ZwReplyWaitReplyPort

; =============== S U B R O U T I N E =======================================


                public ZwReplyWaitReplyPort
ZwReplyWaitReplyPort proc near          ; DATA XREF: .rdata:000000018012091E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtReplyWaitReplyPort
                mov     eax, 178h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FED5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FED5:                          ; CODE XREF: ZwReplyWaitReplyPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwReplyWaitReplyPort endp

; ---------------------------------------------------------------------------
algn_18009FED8:                         ; DATA XREF: .pdata:0000000180179458↓o
                align 20h
; Exported entry 555. NtRequestPort
; Exported entry 2140. ZwRequestPort

; =============== S U B R O U T I N E =======================================


                public ZwRequestPort
ZwRequestPort   proc near               ; DATA XREF: .rdata:0000000180120923↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRequestPort
                mov     eax, 179h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FEF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FEF5:                          ; CODE XREF: ZwRequestPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRequestPort   endp

; ---------------------------------------------------------------------------
algn_18009FEF8:                         ; DATA XREF: .pdata:0000000180179464↓o
                align 20h
; Exported entry 557. NtResetEvent
; Exported entry 2142. ZwResetEvent

; =============== S U B R O U T I N E =======================================


                public ZwResetEvent
ZwResetEvent    proc near               ; DATA XREF: .rdata:0000000180120928↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtResetEvent
                mov     eax, 17Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FF15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FF15:                          ; CODE XREF: ZwResetEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwResetEvent    endp

; ---------------------------------------------------------------------------
algn_18009FF18:                         ; DATA XREF: .pdata:0000000180179470↓o
                align 20h
; Exported entry 558. NtResetWriteWatch
; Exported entry 2143. ZwResetWriteWatch

; =============== S U B R O U T I N E =======================================


                public ZwResetWriteWatch
ZwResetWriteWatch proc near             ; DATA XREF: .rdata:000000018012092D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtResetWriteWatch
                mov     eax, 17Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FF35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FF35:                          ; CODE XREF: ZwResetWriteWatch+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwResetWriteWatch endp

; ---------------------------------------------------------------------------
algn_18009FF38:                         ; DATA XREF: .pdata:000000018017947C↓o
                align 20h
; Exported entry 559. NtRestoreKey
; Exported entry 2144. ZwRestoreKey

; =============== S U B R O U T I N E =======================================


                public ZwRestoreKey
ZwRestoreKey    proc near               ; DATA XREF: .rdata:0000000180120932↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRestoreKey
                mov     eax, 17Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FF55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FF55:                          ; CODE XREF: ZwRestoreKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRestoreKey    endp

; ---------------------------------------------------------------------------
algn_18009FF58:                         ; DATA XREF: .pdata:0000000180179488↓o
                align 20h
; Exported entry 560. NtResumeProcess
; Exported entry 2145. ZwResumeProcess

; =============== S U B R O U T I N E =======================================


                public ZwResumeProcess
ZwResumeProcess proc near               ; CODE XREF: sub_1800D5F60+1E0↓p
                                        ; DATA XREF: .rdata:0000000180120937↓o ...
                mov     r10, rcx        ; NtResumeProcess
                mov     eax, 17Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FF75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FF75:                          ; CODE XREF: ZwResumeProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwResumeProcess endp

; ---------------------------------------------------------------------------
algn_18009FF78:                         ; DATA XREF: .pdata:0000000180179494↓o
                align 20h
; Exported entry 562. NtRevertContainerImpersonation
; Exported entry 2147. ZwRevertContainerImpersonation

; =============== S U B R O U T I N E =======================================


                public ZwRevertContainerImpersonation
ZwRevertContainerImpersonation proc near
                                        ; DATA XREF: .rdata:000000018012093C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRevertContainerImpersonation
                mov     eax, 17Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FF95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FF95:                          ; CODE XREF: ZwRevertContainerImpersonation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRevertContainerImpersonation endp

; ---------------------------------------------------------------------------
algn_18009FF98:                         ; DATA XREF: .pdata:00000001801794A0↓o
                align 20h
; Exported entry 563. NtRollbackComplete
; Exported entry 2148. ZwRollbackComplete

; =============== S U B R O U T I N E =======================================


                public ZwRollbackComplete
ZwRollbackComplete proc near            ; DATA XREF: .rdata:0000000180120941↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRollbackComplete
                mov     eax, 17Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FFB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FFB5:                          ; CODE XREF: ZwRollbackComplete+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRollbackComplete endp

; ---------------------------------------------------------------------------
algn_18009FFB8:                         ; DATA XREF: .pdata:00000001801794AC↓o
                align 20h
; Exported entry 564. NtRollbackEnlistment
; Exported entry 2149. ZwRollbackEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwRollbackEnlistment
ZwRollbackEnlistment proc near          ; DATA XREF: .rdata:0000000180120946↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRollbackEnlistment
                mov     eax, 180h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FFD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FFD5:                          ; CODE XREF: ZwRollbackEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRollbackEnlistment endp

; ---------------------------------------------------------------------------
algn_18009FFD8:                         ; DATA XREF: .pdata:00000001801794B8↓o
                align 20h
; Exported entry 565. NtRollbackRegistryTransaction
; Exported entry 2150. ZwRollbackRegistryTransaction

; =============== S U B R O U T I N E =======================================


                public ZwRollbackRegistryTransaction
ZwRollbackRegistryTransaction proc near ; DATA XREF: .rdata:000000018012094B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRollbackRegistryTransaction
                mov     eax, 181h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_18009FFF5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_18009FFF5:                          ; CODE XREF: ZwRollbackRegistryTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRollbackRegistryTransaction endp

; ---------------------------------------------------------------------------
algn_18009FFF8:                         ; DATA XREF: .pdata:00000001801794C4↓o
                align 20h
; Exported entry 566. NtRollbackTransaction
; Exported entry 2151. ZwRollbackTransaction

; =============== S U B R O U T I N E =======================================


                public ZwRollbackTransaction
ZwRollbackTransaction proc near         ; DATA XREF: .rdata:0000000180120950↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRollbackTransaction
                mov     eax, 182h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0015
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0015:                          ; CODE XREF: ZwRollbackTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRollbackTransaction endp

; ---------------------------------------------------------------------------
algn_1800A0018:                         ; DATA XREF: .pdata:00000001801794D0↓o
                align 20h
; Exported entry 567. NtRollforwardTransactionManager
; Exported entry 2152. ZwRollforwardTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwRollforwardTransactionManager
ZwRollforwardTransactionManager proc near
                                        ; DATA XREF: .rdata:0000000180120955↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtRollforwardTransactionManager
                mov     eax, 183h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0035
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0035:                          ; CODE XREF: ZwRollforwardTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwRollforwardTransactionManager endp

; ---------------------------------------------------------------------------
algn_1800A0038:                         ; DATA XREF: .pdata:00000001801794DC↓o
                align 20h
; Exported entry 568. NtSaveKey
; Exported entry 2153. ZwSaveKey

; =============== S U B R O U T I N E =======================================


                public ZwSaveKey
ZwSaveKey       proc near               ; DATA XREF: .rdata:000000018012095A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSaveKey
                mov     eax, 184h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0055
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0055:                          ; CODE XREF: ZwSaveKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSaveKey       endp

; ---------------------------------------------------------------------------
algn_1800A0058:                         ; DATA XREF: .pdata:00000001801794E8↓o
                align 20h
; Exported entry 569. NtSaveKeyEx
; Exported entry 2154. ZwSaveKeyEx

; =============== S U B R O U T I N E =======================================


                public ZwSaveKeyEx
ZwSaveKeyEx     proc near               ; DATA XREF: .rdata:000000018012095F↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSaveKeyEx
                mov     eax, 185h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0075
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0075:                          ; CODE XREF: ZwSaveKeyEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSaveKeyEx     endp

; ---------------------------------------------------------------------------
algn_1800A0078:                         ; DATA XREF: .pdata:00000001801794F4↓o
                align 20h
; Exported entry 570. NtSaveMergedKeys
; Exported entry 2155. ZwSaveMergedKeys

; =============== S U B R O U T I N E =======================================


                public ZwSaveMergedKeys
ZwSaveMergedKeys proc near              ; DATA XREF: .rdata:0000000180120964↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSaveMergedKeys
                mov     eax, 186h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0095
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0095:                          ; CODE XREF: ZwSaveMergedKeys+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSaveMergedKeys endp

; ---------------------------------------------------------------------------
algn_1800A0098:                         ; DATA XREF: .pdata:0000000180179500↓o
                align 20h
; Exported entry 571. NtSecureConnectPort
; Exported entry 2156. ZwSecureConnectPort

; =============== S U B R O U T I N E =======================================


                public ZwSecureConnectPort
ZwSecureConnectPort proc near           ; DATA XREF: .rdata:0000000180120969↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSecureConnectPort
                mov     eax, 187h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A00B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A00B5:                          ; CODE XREF: ZwSecureConnectPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSecureConnectPort endp

; ---------------------------------------------------------------------------
algn_1800A00B8:                         ; DATA XREF: .pdata:000000018017950C↓o
                align 20h
; Exported entry 572. NtSerializeBoot
; Exported entry 2157. ZwSerializeBoot

; =============== S U B R O U T I N E =======================================


                public ZwSerializeBoot
ZwSerializeBoot proc near               ; DATA XREF: .rdata:000000018012096E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSerializeBoot
                mov     eax, 188h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A00D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A00D5:                          ; CODE XREF: ZwSerializeBoot+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSerializeBoot endp

; ---------------------------------------------------------------------------
algn_1800A00D8:                         ; DATA XREF: .pdata:0000000180179518↓o
                align 20h
; Exported entry 573. NtSetBootEntryOrder
; Exported entry 2158. ZwSetBootEntryOrder

; =============== S U B R O U T I N E =======================================


                public ZwSetBootEntryOrder
ZwSetBootEntryOrder proc near           ; DATA XREF: .rdata:0000000180120973↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetBootEntryOrder
                mov     eax, 189h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A00F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A00F5:                          ; CODE XREF: ZwSetBootEntryOrder+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetBootEntryOrder endp

; ---------------------------------------------------------------------------
algn_1800A00F8:                         ; DATA XREF: .pdata:0000000180179524↓o
                align 20h
; Exported entry 574. NtSetBootOptions
; Exported entry 2159. ZwSetBootOptions

; =============== S U B R O U T I N E =======================================


                public ZwSetBootOptions
ZwSetBootOptions proc near              ; DATA XREF: .rdata:0000000180120978↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetBootOptions
                mov     eax, 18Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0115
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0115:                          ; CODE XREF: ZwSetBootOptions+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetBootOptions endp

; ---------------------------------------------------------------------------
algn_1800A0118:                         ; DATA XREF: .pdata:0000000180179530↓o
                align 20h
; Exported entry 575. NtSetCachedSigningLevel
; Exported entry 2160. ZwSetCachedSigningLevel

; =============== S U B R O U T I N E =======================================


                public ZwSetCachedSigningLevel
ZwSetCachedSigningLevel proc near       ; CODE XREF: sub_1800896E8+4138D↓p
                                        ; DATA XREF: .rdata:000000018012097D↓o ...
                mov     r10, rcx        ; NtSetCachedSigningLevel
                mov     eax, 18Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0135
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0135:                          ; CODE XREF: ZwSetCachedSigningLevel+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetCachedSigningLevel endp

; ---------------------------------------------------------------------------
algn_1800A0138:                         ; DATA XREF: .pdata:000000018017953C↓o
                align 20h
; Exported entry 576. NtSetCachedSigningLevel2
; Exported entry 2161. ZwSetCachedSigningLevel2

; =============== S U B R O U T I N E =======================================


                public ZwSetCachedSigningLevel2
ZwSetCachedSigningLevel2 proc near      ; DATA XREF: .rdata:0000000180120982↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetCachedSigningLevel2
                mov     eax, 18Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0155
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0155:                          ; CODE XREF: ZwSetCachedSigningLevel2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetCachedSigningLevel2 endp

; ---------------------------------------------------------------------------
algn_1800A0158:                         ; DATA XREF: .pdata:0000000180179548↓o
                align 20h
; Exported entry 577. NtSetContextThread
; Exported entry 2162. ZwSetContextThread

; =============== S U B R O U T I N E =======================================


                public ZwSetContextThread
ZwSetContextThread proc near            ; CODE XREF: RtlRemoteCall+142↓p
                                        ; DATA XREF: .rdata:0000000180120987↓o ...
                mov     r10, rcx        ; NtSetContextThread
                mov     eax, 18Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0175
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0175:                          ; CODE XREF: ZwSetContextThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetContextThread endp

; ---------------------------------------------------------------------------
algn_1800A0178:                         ; DATA XREF: .pdata:0000000180179554↓o
                align 20h
; Exported entry 578. NtSetDebugFilterState
; Exported entry 2163. ZwSetDebugFilterState

; =============== S U B R O U T I N E =======================================


                public ZwSetDebugFilterState
ZwSetDebugFilterState proc near         ; CODE XREF: DbgSetDebugFilterState↓j
                                        ; DATA XREF: .rdata:000000018012098C↓o ...
                mov     r10, rcx        ; NtSetDebugFilterState
                mov     eax, 18Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0195
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0195:                          ; CODE XREF: ZwSetDebugFilterState+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetDebugFilterState endp

; ---------------------------------------------------------------------------
algn_1800A0198:                         ; DATA XREF: .pdata:0000000180179560↓o
                align 20h
; Exported entry 579. NtSetDefaultHardErrorPort
; Exported entry 2164. ZwSetDefaultHardErrorPort

; =============== S U B R O U T I N E =======================================


                public ZwSetDefaultHardErrorPort
ZwSetDefaultHardErrorPort proc near     ; DATA XREF: .rdata:0000000180120991↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetDefaultHardErrorPort
                mov     eax, 18Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A01B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A01B5:                          ; CODE XREF: ZwSetDefaultHardErrorPort+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetDefaultHardErrorPort endp

; ---------------------------------------------------------------------------
algn_1800A01B8:                         ; DATA XREF: .pdata:000000018017956C↓o
                align 20h
; Exported entry 580. NtSetDefaultLocale
; Exported entry 2165. ZwSetDefaultLocale

; =============== S U B R O U T I N E =======================================


                public ZwSetDefaultLocale
ZwSetDefaultLocale proc near            ; DATA XREF: .rdata:0000000180120996↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetDefaultLocale
                mov     eax, 190h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A01D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A01D5:                          ; CODE XREF: ZwSetDefaultLocale+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetDefaultLocale endp

; ---------------------------------------------------------------------------
algn_1800A01D8:                         ; DATA XREF: .pdata:0000000180179578↓o
                align 20h
; Exported entry 581. NtSetDefaultUILanguage
; Exported entry 2166. ZwSetDefaultUILanguage

; =============== S U B R O U T I N E =======================================


                public ZwSetDefaultUILanguage
ZwSetDefaultUILanguage proc near        ; DATA XREF: .rdata:000000018012099B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetDefaultUILanguage
                mov     eax, 191h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A01F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A01F5:                          ; CODE XREF: ZwSetDefaultUILanguage+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetDefaultUILanguage endp

; ---------------------------------------------------------------------------
algn_1800A01F8:                         ; DATA XREF: .pdata:0000000180179584↓o
                align 20h
; Exported entry 582. NtSetDriverEntryOrder
; Exported entry 2167. ZwSetDriverEntryOrder

; =============== S U B R O U T I N E =======================================


                public ZwSetDriverEntryOrder
ZwSetDriverEntryOrder proc near         ; DATA XREF: .rdata:000000018011DF90↓o
                                        ; .rdata:00000001801209A0↓o ...
                mov     r10, rcx        ; NtSetDriverEntryOrder
                mov     eax, 192h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0215
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0215:                          ; CODE XREF: ZwSetDriverEntryOrder+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetDriverEntryOrder endp

; ---------------------------------------------------------------------------
algn_1800A0218:                         ; DATA XREF: .pdata:0000000180179590↓o
                align 20h
; Exported entry 583. NtSetEaFile
; Exported entry 2168. ZwSetEaFile

; =============== S U B R O U T I N E =======================================


                public ZwSetEaFile
ZwSetEaFile     proc near               ; DATA XREF: .rdata:00000001801209A5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetEaFile
                mov     eax, 193h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0235
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0235:                          ; CODE XREF: ZwSetEaFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetEaFile     endp

; ---------------------------------------------------------------------------
algn_1800A0238:                         ; DATA XREF: .pdata:000000018017959C↓o
                align 20h
; Exported entry 586. NtSetHighEventPair
; Exported entry 2171. ZwSetHighEventPair

; =============== S U B R O U T I N E =======================================


                public ZwSetHighEventPair
ZwSetHighEventPair proc near            ; DATA XREF: .rdata:00000001801209AA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetHighEventPair
                mov     eax, 194h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0255
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0255:                          ; CODE XREF: ZwSetHighEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetHighEventPair endp

; ---------------------------------------------------------------------------
algn_1800A0258:                         ; DATA XREF: .pdata:00000001801795A8↓o
                align 20h
; Exported entry 587. NtSetHighWaitLowEventPair
; Exported entry 2172. ZwSetHighWaitLowEventPair

; =============== S U B R O U T I N E =======================================


                public ZwSetHighWaitLowEventPair
ZwSetHighWaitLowEventPair proc near     ; DATA XREF: .rdata:00000001801209AF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetHighWaitLowEventPair
                mov     eax, 195h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0275
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0275:                          ; CODE XREF: ZwSetHighWaitLowEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetHighWaitLowEventPair endp

; ---------------------------------------------------------------------------
algn_1800A0278:                         ; DATA XREF: .pdata:00000001801795B4↓o
                align 20h
; Exported entry 588. NtSetIRTimer
; Exported entry 2173. ZwSetIRTimer

; =============== S U B R O U T I N E =======================================


                public ZwSetIRTimer
ZwSetIRTimer    proc near               ; DATA XREF: .rdata:00000001801209B4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetIRTimer
                mov     eax, 196h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0295
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0295:                          ; CODE XREF: ZwSetIRTimer+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetIRTimer    endp

; ---------------------------------------------------------------------------
algn_1800A0298:                         ; DATA XREF: .pdata:00000001801795C0↓o
                align 20h
; Exported entry 589. NtSetInformationDebugObject
; Exported entry 2174. ZwSetInformationDebugObject

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationDebugObject
ZwSetInformationDebugObject proc near   ; DATA XREF: .rdata:00000001801209B9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationDebugObject
                mov     eax, 197h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A02B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A02B5:                          ; CODE XREF: ZwSetInformationDebugObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationDebugObject endp

; ---------------------------------------------------------------------------
algn_1800A02B8:                         ; DATA XREF: .pdata:00000001801795CC↓o
                align 20h
; Exported entry 590. NtSetInformationEnlistment
; Exported entry 2175. ZwSetInformationEnlistment

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationEnlistment
ZwSetInformationEnlistment proc near    ; DATA XREF: .rdata:00000001801209BE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationEnlistment
                mov     eax, 198h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A02D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A02D5:                          ; CODE XREF: ZwSetInformationEnlistment+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationEnlistment endp

; ---------------------------------------------------------------------------
algn_1800A02D8:                         ; DATA XREF: .pdata:00000001801795D8↓o
                align 20h
; Exported entry 592. NtSetInformationJobObject
; Exported entry 2177. ZwSetInformationJobObject

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationJobObject
ZwSetInformationJobObject proc near     ; CODE XREF: sub_18007F388+56↑p
                                        ; TpAllocJobNotification+178↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtSetInformationJobObject
                mov     eax, 199h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A02F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A02F5:                          ; CODE XREF: ZwSetInformationJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationJobObject endp

; ---------------------------------------------------------------------------
algn_1800A02F8:                         ; DATA XREF: .pdata:00000001801795E4↓o
                align 20h
; Exported entry 593. NtSetInformationKey
; Exported entry 2178. ZwSetInformationKey

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationKey
ZwSetInformationKey proc near           ; DATA XREF: .rdata:00000001801209C8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationKey
                mov     eax, 19Ah
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0315
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0315:                          ; CODE XREF: ZwSetInformationKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationKey endp

; ---------------------------------------------------------------------------
algn_1800A0318:                         ; DATA XREF: .pdata:00000001801795F0↓o
                align 20h
; Exported entry 596. NtSetInformationResourceManager
; Exported entry 2181. ZwSetInformationResourceManager

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationResourceManager
ZwSetInformationResourceManager proc near
                                        ; DATA XREF: .rdata:00000001801209CD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationResourceManager
                mov     eax, 19Bh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0335
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0335:                          ; CODE XREF: ZwSetInformationResourceManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationResourceManager endp

; ---------------------------------------------------------------------------
algn_1800A0338:                         ; DATA XREF: .pdata:00000001801795FC↓o
                align 20h
; Exported entry 597. NtSetInformationSymbolicLink
; Exported entry 2182. ZwSetInformationSymbolicLink

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationSymbolicLink
ZwSetInformationSymbolicLink proc near  ; DATA XREF: .rdata:00000001801209D2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationSymbolicLink
                mov     eax, 19Ch
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0355
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0355:                          ; CODE XREF: ZwSetInformationSymbolicLink+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationSymbolicLink endp

; ---------------------------------------------------------------------------
algn_1800A0358:                         ; DATA XREF: .pdata:0000000180179608↓o
                align 20h
; Exported entry 599. NtSetInformationToken
; Exported entry 2184. ZwSetInformationToken

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationToken
ZwSetInformationToken proc near         ; DATA XREF: .rdata:00000001801209D7↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationToken
                mov     eax, 19Dh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0375
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0375:                          ; CODE XREF: ZwSetInformationToken+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationToken endp

; ---------------------------------------------------------------------------
algn_1800A0378:                         ; DATA XREF: .pdata:0000000180179614↓o
                align 20h
; Exported entry 600. NtSetInformationTransaction
; Exported entry 2185. ZwSetInformationTransaction

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationTransaction
ZwSetInformationTransaction proc near   ; DATA XREF: .rdata:00000001801209DC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationTransaction
                mov     eax, 19Eh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0395
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0395:                          ; CODE XREF: ZwSetInformationTransaction+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationTransaction endp

; ---------------------------------------------------------------------------
algn_1800A0398:                         ; DATA XREF: .pdata:0000000180179620↓o
                align 20h
; Exported entry 601. NtSetInformationTransactionManager
; Exported entry 2186. ZwSetInformationTransactionManager

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationTransactionManager
ZwSetInformationTransactionManager proc near
                                        ; DATA XREF: .rdata:00000001801209E1↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetInformationTransactionManager
                mov     eax, 19Fh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A03B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A03B5:                          ; CODE XREF: ZwSetInformationTransactionManager+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationTransactionManager endp

; ---------------------------------------------------------------------------
algn_1800A03B8:                         ; DATA XREF: .pdata:000000018017962C↓o
                align 20h
; Exported entry 602. NtSetInformationVirtualMemory
; Exported entry 2187. ZwSetInformationVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationVirtualMemory
ZwSetInformationVirtualMemory proc near ; CODE XREF: sub_1800475B8+81↑p
                                        ; sub_18006C0F4+F3↑p ...
                mov     r10, rcx        ; NtSetInformationVirtualMemory
                mov     eax, 1A0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A03D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A03D5:                          ; CODE XREF: ZwSetInformationVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationVirtualMemory endp

; ---------------------------------------------------------------------------
algn_1800A03D8:                         ; DATA XREF: .pdata:0000000180179638↓o
                align 20h
; Exported entry 603. NtSetInformationWorkerFactory
; Exported entry 2188. ZwSetInformationWorkerFactory

; =============== S U B R O U T I N E =======================================


                public ZwSetInformationWorkerFactory
ZwSetInformationWorkerFactory proc near ; CODE XREF: sub_180010A00+46↑p
                                        ; sub_180052B30+A98↑p ...
                mov     r10, rcx        ; NtSetInformationWorkerFactory
                mov     eax, 1A1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A03F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A03F5:                          ; CODE XREF: ZwSetInformationWorkerFactory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetInformationWorkerFactory endp

; ---------------------------------------------------------------------------
algn_1800A03F8:                         ; DATA XREF: .pdata:0000000180179644↓o
                align 20h
; Exported entry 604. NtSetIntervalProfile
; Exported entry 2189. ZwSetIntervalProfile

; =============== S U B R O U T I N E =======================================


                public ZwSetIntervalProfile
ZwSetIntervalProfile proc near          ; DATA XREF: .rdata:00000001801209F0↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetIntervalProfile
                mov     eax, 1A2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0415
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0415:                          ; CODE XREF: ZwSetIntervalProfile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetIntervalProfile endp

; ---------------------------------------------------------------------------
algn_1800A0418:                         ; DATA XREF: .pdata:0000000180179650↓o
                align 20h
; Exported entry 605. NtSetIoCompletion
; Exported entry 2190. ZwSetIoCompletion

; =============== S U B R O U T I N E =======================================


                public ZwSetIoCompletion
ZwSetIoCompletion proc near             ; DATA XREF: .rdata:00000001801209F5↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetIoCompletion
                mov     eax, 1A3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0435
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0435:                          ; CODE XREF: ZwSetIoCompletion+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetIoCompletion endp

; ---------------------------------------------------------------------------
algn_1800A0438:                         ; DATA XREF: .pdata:000000018017965C↓o
                align 20h
; Exported entry 606. NtSetIoCompletionEx
; Exported entry 2191. ZwSetIoCompletionEx

; =============== S U B R O U T I N E =======================================


                public ZwSetIoCompletionEx
ZwSetIoCompletionEx proc near           ; DATA XREF: .rdata:00000001801209FA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetIoCompletionEx
                mov     eax, 1A4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0455
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0455:                          ; CODE XREF: ZwSetIoCompletionEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetIoCompletionEx endp

; ---------------------------------------------------------------------------
algn_1800A0458:                         ; DATA XREF: .pdata:0000000180179668↓o
                align 20h
; Exported entry 607. NtSetLdtEntries
; Exported entry 2192. ZwSetLdtEntries

; =============== S U B R O U T I N E =======================================


                public ZwSetLdtEntries
ZwSetLdtEntries proc near               ; DATA XREF: .rdata:00000001801209FF↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetLdtEntries
                mov     eax, 1A5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0475
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0475:                          ; CODE XREF: ZwSetLdtEntries+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetLdtEntries endp

; ---------------------------------------------------------------------------
algn_1800A0478:                         ; DATA XREF: .pdata:0000000180179674↓o
                align 20h
; Exported entry 608. NtSetLowEventPair
; Exported entry 2193. ZwSetLowEventPair

; =============== S U B R O U T I N E =======================================


                public ZwSetLowEventPair
ZwSetLowEventPair proc near             ; DATA XREF: .rdata:0000000180120A04↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetLowEventPair
                mov     eax, 1A6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0495
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0495:                          ; CODE XREF: ZwSetLowEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetLowEventPair endp

; ---------------------------------------------------------------------------
algn_1800A0498:                         ; DATA XREF: .pdata:0000000180179680↓o
                align 20h
; Exported entry 609. NtSetLowWaitHighEventPair
; Exported entry 2194. ZwSetLowWaitHighEventPair

; =============== S U B R O U T I N E =======================================


                public ZwSetLowWaitHighEventPair
ZwSetLowWaitHighEventPair proc near     ; DATA XREF: .rdata:0000000180120A09↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetLowWaitHighEventPair
                mov     eax, 1A7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A04B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A04B5:                          ; CODE XREF: ZwSetLowWaitHighEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetLowWaitHighEventPair endp

; ---------------------------------------------------------------------------
algn_1800A04B8:                         ; DATA XREF: .pdata:000000018017968C↓o
                align 20h
; Exported entry 610. NtSetQuotaInformationFile
; Exported entry 2195. ZwSetQuotaInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwSetQuotaInformationFile
ZwSetQuotaInformationFile proc near     ; DATA XREF: .rdata:0000000180120A0E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetQuotaInformationFile
                mov     eax, 1A8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A04D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A04D5:                          ; CODE XREF: ZwSetQuotaInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetQuotaInformationFile endp

; ---------------------------------------------------------------------------
algn_1800A04D8:                         ; DATA XREF: .pdata:0000000180179698↓o
                align 20h
; Exported entry 611. NtSetSecurityObject
; Exported entry 2196. ZwSetSecurityObject

; =============== S U B R O U T I N E =======================================


                public ZwSetSecurityObject
ZwSetSecurityObject proc near           ; CODE XREF: sub_180088270+422F8↓p
                                        ; sub_180088270+42456↓p ...
                mov     r10, rcx        ; NtSetSecurityObject
                mov     eax, 1A9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A04F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A04F5:                          ; CODE XREF: ZwSetSecurityObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSecurityObject endp

; ---------------------------------------------------------------------------
algn_1800A04F8:                         ; DATA XREF: .pdata:00000001801796A4↓o
                align 20h
; Exported entry 612. NtSetSystemEnvironmentValue
; Exported entry 2197. ZwSetSystemEnvironmentValue

; =============== S U B R O U T I N E =======================================


                public ZwSetSystemEnvironmentValue
ZwSetSystemEnvironmentValue proc near   ; DATA XREF: .rdata:0000000180120A18↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetSystemEnvironmentValue
                mov     eax, 1AAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0515
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0515:                          ; CODE XREF: ZwSetSystemEnvironmentValue+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSystemEnvironmentValue endp

; ---------------------------------------------------------------------------
algn_1800A0518:                         ; DATA XREF: .pdata:00000001801796B0↓o
                align 20h
; Exported entry 613. NtSetSystemEnvironmentValueEx
; Exported entry 2198. ZwSetSystemEnvironmentValueEx

; =============== S U B R O U T I N E =======================================


                public ZwSetSystemEnvironmentValueEx
ZwSetSystemEnvironmentValueEx proc near ; DATA XREF: .rdata:0000000180120A1D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetSystemEnvironmentValueEx
                mov     eax, 1ABh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0535
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0535:                          ; CODE XREF: ZwSetSystemEnvironmentValueEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSystemEnvironmentValueEx endp

; ---------------------------------------------------------------------------
algn_1800A0538:                         ; DATA XREF: .pdata:00000001801796BC↓o
                align 20h
; Exported entry 614. NtSetSystemInformation
; Exported entry 2199. ZwSetSystemInformation

; =============== S U B R O U T I N E =======================================


                public ZwSetSystemInformation
ZwSetSystemInformation proc near        ; CODE XREF: RtlSetFeatureConfigurations+A8↓p
                                        ; sub_180101D18+BE↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtSetSystemInformation
                mov     eax, 1ACh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0555
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0555:                          ; CODE XREF: ZwSetSystemInformation+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSystemInformation endp

; ---------------------------------------------------------------------------
algn_1800A0558:                         ; DATA XREF: .pdata:00000001801796C8↓o
                align 20h
; Exported entry 615. NtSetSystemPowerState
; Exported entry 2200. ZwSetSystemPowerState

; =============== S U B R O U T I N E =======================================


                public ZwSetSystemPowerState
ZwSetSystemPowerState proc near         ; DATA XREF: .rdata:0000000180120A27↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetSystemPowerState
                mov     eax, 1ADh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0575
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0575:                          ; CODE XREF: ZwSetSystemPowerState+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSystemPowerState endp

; ---------------------------------------------------------------------------
algn_1800A0578:                         ; DATA XREF: .pdata:00000001801796D4↓o
                align 20h
; Exported entry 616. NtSetSystemTime
; Exported entry 2201. ZwSetSystemTime

; =============== S U B R O U T I N E =======================================


                public ZwSetSystemTime
ZwSetSystemTime proc near               ; DATA XREF: .rdata:0000000180120A2C↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetSystemTime
                mov     eax, 1AEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0595
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0595:                          ; CODE XREF: ZwSetSystemTime+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetSystemTime endp

; ---------------------------------------------------------------------------
algn_1800A0598:                         ; DATA XREF: .pdata:00000001801796E0↓o
                align 20h
; Exported entry 617. NtSetThreadExecutionState
; Exported entry 2202. ZwSetThreadExecutionState

; =============== S U B R O U T I N E =======================================


                public ZwSetThreadExecutionState
ZwSetThreadExecutionState proc near     ; DATA XREF: .rdata:0000000180120A31↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetThreadExecutionState
                mov     eax, 1AFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A05B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A05B5:                          ; CODE XREF: ZwSetThreadExecutionState+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetThreadExecutionState endp

; ---------------------------------------------------------------------------
algn_1800A05B8:                         ; DATA XREF: .pdata:00000001801796EC↓o
                align 20h
; Exported entry 619. NtSetTimer2
; Exported entry 2204. ZwSetTimer2

; =============== S U B R O U T I N E =======================================


                public ZwSetTimer2
ZwSetTimer2     proc near               ; CODE XREF: sub_180011AE0+1B1↑p
                                        ; sub_180013B20+113↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtSetTimer2
                mov     eax, 1B0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A05D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A05D5:                          ; CODE XREF: ZwSetTimer2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetTimer2     endp

; ---------------------------------------------------------------------------
algn_1800A05D8:                         ; DATA XREF: .pdata:00000001801796F8↓o
                align 20h
; Exported entry 620. NtSetTimerEx
; Exported entry 2205. ZwSetTimerEx

; =============== S U B R O U T I N E =======================================


                public ZwSetTimerEx
ZwSetTimerEx    proc near               ; DATA XREF: .rdata:0000000180120A3B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetTimerEx
                mov     eax, 1B1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A05F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A05F5:                          ; CODE XREF: ZwSetTimerEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetTimerEx    endp

; ---------------------------------------------------------------------------
algn_1800A05F8:                         ; DATA XREF: .pdata:0000000180179704↓o
                align 20h
; Exported entry 621. NtSetTimerResolution
; Exported entry 2206. ZwSetTimerResolution

; =============== S U B R O U T I N E =======================================


                public ZwSetTimerResolution
ZwSetTimerResolution proc near          ; DATA XREF: .rdata:0000000180120A40↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetTimerResolution
                mov     eax, 1B2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0615
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0615:                          ; CODE XREF: ZwSetTimerResolution+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetTimerResolution endp

; ---------------------------------------------------------------------------
algn_1800A0618:                         ; DATA XREF: .pdata:0000000180179710↓o
                align 20h
; Exported entry 622. NtSetUuidSeed
; Exported entry 2207. ZwSetUuidSeed

; =============== S U B R O U T I N E =======================================


                public ZwSetUuidSeed
ZwSetUuidSeed   proc near               ; DATA XREF: .rdata:0000000180120A45↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetUuidSeed
                mov     eax, 1B3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0635
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0635:                          ; CODE XREF: ZwSetUuidSeed+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetUuidSeed   endp

; ---------------------------------------------------------------------------
algn_1800A0638:                         ; DATA XREF: .pdata:000000018017971C↓o
                align 20h
; Exported entry 624. NtSetVolumeInformationFile
; Exported entry 2209. ZwSetVolumeInformationFile

; =============== S U B R O U T I N E =======================================


                public ZwSetVolumeInformationFile
ZwSetVolumeInformationFile proc near    ; DATA XREF: .rdata:0000000180120A4A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSetVolumeInformationFile
                mov     eax, 1B4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0655
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0655:                          ; CODE XREF: ZwSetVolumeInformationFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetVolumeInformationFile endp

; ---------------------------------------------------------------------------
algn_1800A0658:                         ; DATA XREF: .pdata:0000000180179728↓o
                align 20h
; Exported entry 625. NtSetWnfProcessNotificationEvent
; Exported entry 2210. ZwSetWnfProcessNotificationEvent

; =============== S U B R O U T I N E =======================================


                public ZwSetWnfProcessNotificationEvent
ZwSetWnfProcessNotificationEvent proc near
                                        ; CODE XREF: sub_18007CAB4+5F↑p
                                        ; DATA XREF: .rdata:0000000180120A4F↓o ...
                mov     r10, rcx        ; NtSetWnfProcessNotificationEvent
                mov     eax, 1B5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0675
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0675:                          ; CODE XREF: ZwSetWnfProcessNotificationEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSetWnfProcessNotificationEvent endp

; ---------------------------------------------------------------------------
algn_1800A0678:                         ; DATA XREF: .pdata:0000000180179734↓o
                align 20h
; Exported entry 626. NtShutdownSystem
; Exported entry 2211. ZwShutdownSystem

; =============== S U B R O U T I N E =======================================


                public ZwShutdownSystem
ZwShutdownSystem proc near              ; CODE XREF: RtlpVerifyAndCommitUILanguageSettings+3F74E↓p
                                        ; DATA XREF: .rdata:0000000180120A54↓o ...
                mov     r10, rcx        ; NtShutdownSystem
                mov     eax, 1B6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0695
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0695:                          ; CODE XREF: ZwShutdownSystem+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwShutdownSystem endp

; ---------------------------------------------------------------------------
algn_1800A0698:                         ; DATA XREF: .pdata:0000000180179740↓o
                align 20h
; Exported entry 627. NtShutdownWorkerFactory
; Exported entry 2212. ZwShutdownWorkerFactory

; =============== S U B R O U T I N E =======================================


                public ZwShutdownWorkerFactory
ZwShutdownWorkerFactory proc near       ; CODE XREF: TpReleasePool+89↑p
                                        ; DATA XREF: .rdata:0000000180120A59↓o ...
                mov     r10, rcx        ; NtShutdownWorkerFactory
                mov     eax, 1B7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A06B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A06B5:                          ; CODE XREF: ZwShutdownWorkerFactory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwShutdownWorkerFactory endp

; ---------------------------------------------------------------------------
algn_1800A06B8:                         ; DATA XREF: .pdata:000000018017974C↓o
                align 20h
; Exported entry 628. NtSignalAndWaitForSingleObject
; Exported entry 2213. ZwSignalAndWaitForSingleObject

; =============== S U B R O U T I N E =======================================


                public ZwSignalAndWaitForSingleObject
ZwSignalAndWaitForSingleObject proc near
                                        ; DATA XREF: .rdata:0000000180120A5E↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSignalAndWaitForSingleObject
                mov     eax, 1B8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A06D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A06D5:                          ; CODE XREF: ZwSignalAndWaitForSingleObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSignalAndWaitForSingleObject endp

; ---------------------------------------------------------------------------
algn_1800A06D8:                         ; DATA XREF: .pdata:0000000180179758↓o
                align 20h
; Exported entry 629. NtSinglePhaseReject
; Exported entry 2214. ZwSinglePhaseReject

; =============== S U B R O U T I N E =======================================


                public ZwSinglePhaseReject
ZwSinglePhaseReject proc near           ; DATA XREF: .rdata:0000000180120A63↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtSinglePhaseReject
                mov     eax, 1B9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A06F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A06F5:                          ; CODE XREF: ZwSinglePhaseReject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSinglePhaseReject endp

; ---------------------------------------------------------------------------
algn_1800A06F8:                         ; DATA XREF: .pdata:0000000180179764↓o
                align 20h
; Exported entry 630. NtStartProfile
; Exported entry 2215. ZwStartProfile

; =============== S U B R O U T I N E =======================================


                public ZwStartProfile
ZwStartProfile  proc near               ; DATA XREF: .rdata:0000000180120A68↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtStartProfile
                mov     eax, 1BAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0715
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0715:                          ; CODE XREF: ZwStartProfile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwStartProfile  endp

; ---------------------------------------------------------------------------
algn_1800A0718:                         ; DATA XREF: .pdata:0000000180179770↓o
                align 20h
; Exported entry 631. NtStopProfile
; Exported entry 2216. ZwStopProfile

; =============== S U B R O U T I N E =======================================


                public ZwStopProfile
ZwStopProfile   proc near               ; DATA XREF: .rdata:0000000180120A6D↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtStopProfile
                mov     eax, 1BBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0735
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0735:                          ; CODE XREF: ZwStopProfile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwStopProfile   endp

; ---------------------------------------------------------------------------
algn_1800A0738:                         ; DATA XREF: .pdata:000000018017977C↓o
                align 20h
; Exported entry 632. NtSubscribeWnfStateChange
; Exported entry 2217. ZwSubscribeWnfStateChange

; =============== S U B R O U T I N E =======================================


                public ZwSubscribeWnfStateChange
ZwSubscribeWnfStateChange proc near     ; CODE XREF: sub_1800425FC+D0↑p
                                        ; sub_1800626BC+D7↑p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtSubscribeWnfStateChange
                mov     eax, 1BCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0755
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0755:                          ; CODE XREF: ZwSubscribeWnfStateChange+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSubscribeWnfStateChange endp

; ---------------------------------------------------------------------------
algn_1800A0758:                         ; DATA XREF: .pdata:0000000180179788↓o
                align 20h
; Exported entry 633. NtSuspendProcess
; Exported entry 2218. ZwSuspendProcess

; =============== S U B R O U T I N E =======================================


                public ZwSuspendProcess
ZwSuspendProcess proc near              ; CODE XREF: RtlWow64SuspendProcess+132↓p
                                        ; DATA XREF: .rdata:0000000180120A77↓o ...
                mov     r10, rcx        ; NtSuspendProcess
                mov     eax, 1BDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0775
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0775:                          ; CODE XREF: ZwSuspendProcess+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSuspendProcess endp

; ---------------------------------------------------------------------------
algn_1800A0778:                         ; DATA XREF: .pdata:0000000180179794↓o
                align 20h
; Exported entry 634. NtSuspendThread
; Exported entry 2219. ZwSuspendThread

; =============== S U B R O U T I N E =======================================


                public ZwSuspendThread
ZwSuspendThread proc near               ; CODE XREF: sub_1800D5F60+2C6↓p
                                        ; RtlWow64SuspendThread+1C6↓p ...
                mov     r10, rcx        ; NtSuspendThread
                mov     eax, 1BEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0795
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0795:                          ; CODE XREF: ZwSuspendThread+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSuspendThread endp

; ---------------------------------------------------------------------------
algn_1800A0798:                         ; DATA XREF: .pdata:00000001801797A0↓o
                align 20h
; Exported entry 635. NtSystemDebugControl
; Exported entry 2220. ZwSystemDebugControl

; =============== S U B R O U T I N E =======================================


                public ZwSystemDebugControl
ZwSystemDebugControl proc near          ; CODE XREF: sub_18005FBB4+5DA3E↓p
                                        ; sub_1800DB4F0+1EF↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtSystemDebugControl
                mov     eax, 1BFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A07B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A07B5:                          ; CODE XREF: ZwSystemDebugControl+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwSystemDebugControl endp

; ---------------------------------------------------------------------------
algn_1800A07B8:                         ; DATA XREF: .pdata:00000001801797AC↓o
                align 20h
; Exported entry 636. NtTerminateEnclave
; Exported entry 2221. ZwTerminateEnclave

; =============== S U B R O U T I N E =======================================


                public ZwTerminateEnclave
ZwTerminateEnclave proc near            ; CODE XREF: LdrInitializeEnclave+B4↓p
                                        ; sub_1800CD20C+12↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtTerminateEnclave
                mov     eax, 1C0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A07D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A07D5:                          ; CODE XREF: ZwTerminateEnclave+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTerminateEnclave endp

; ---------------------------------------------------------------------------
algn_1800A07D8:                         ; DATA XREF: .pdata:00000001801797B8↓o
                align 20h
; Exported entry 637. NtTerminateJobObject
; Exported entry 2222. ZwTerminateJobObject

; =============== S U B R O U T I N E =======================================


                public ZwTerminateJobObject
ZwTerminateJobObject proc near          ; DATA XREF: .rdata:0000000180120A8B↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtTerminateJobObject
                mov     eax, 1C1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A07F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A07F5:                          ; CODE XREF: ZwTerminateJobObject+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTerminateJobObject endp

; ---------------------------------------------------------------------------
algn_1800A07F8:                         ; DATA XREF: .pdata:00000001801797C4↓o
                align 20h
; Exported entry 640. NtTestAlert
; Exported entry 2225. ZwTestAlert

; =============== S U B R O U T I N E =======================================


                public ZwTestAlert
ZwTestAlert     proc near               ; CODE XREF: sub_180074C5C+41C↑p
                                        ; sub_1800A0CA0+D↓p
                                        ; DATA XREF: ...
                mov     r10, rcx        ; NtTestAlert
                mov     eax, 1C2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0815
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0815:                          ; CODE XREF: ZwTestAlert+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTestAlert     endp

; ---------------------------------------------------------------------------
algn_1800A0818:                         ; DATA XREF: .pdata:00000001801797D0↓o
                align 20h
; Exported entry 641. NtThawRegistry
; Exported entry 2226. ZwThawRegistry

; =============== S U B R O U T I N E =======================================


                public ZwThawRegistry
ZwThawRegistry  proc near               ; DATA XREF: .rdata:0000000180120A95↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtThawRegistry
                mov     eax, 1C3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0835
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0835:                          ; CODE XREF: ZwThawRegistry+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwThawRegistry  endp

; ---------------------------------------------------------------------------
algn_1800A0838:                         ; DATA XREF: .pdata:00000001801797DC↓o
                align 20h
; Exported entry 642. NtThawTransactions
; Exported entry 2227. ZwThawTransactions

; =============== S U B R O U T I N E =======================================


                public ZwThawTransactions
ZwThawTransactions proc near            ; DATA XREF: .rdata:0000000180120A9A↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtThawTransactions
                mov     eax, 1C4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0855
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0855:                          ; CODE XREF: ZwThawTransactions+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwThawTransactions endp

; ---------------------------------------------------------------------------
algn_1800A0858:                         ; DATA XREF: .pdata:00000001801797E8↓o
                align 20h
; Exported entry 643. NtTraceControl
; Exported entry 2228. ZwTraceControl

; =============== S U B R O U T I N E =======================================


                public ZwTraceControl
ZwTraceControl  proc near               ; CODE XREF: sub_1800016FC+B8↑p
                                        ; EtwReplyNotification+23↑p ...
                mov     r10, rcx        ; NtTraceControl
                mov     eax, 1C5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0875
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0875:                          ; CODE XREF: ZwTraceControl+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTraceControl  endp

; ---------------------------------------------------------------------------
algn_1800A0878:                         ; DATA XREF: .pdata:00000001801797F4↓o
                align 20h
; Exported entry 645. NtTranslateFilePath
; Exported entry 2230. ZwTranslateFilePath

; =============== S U B R O U T I N E =======================================


                public ZwTranslateFilePath
ZwTranslateFilePath proc near           ; DATA XREF: .rdata:0000000180120AA4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtTranslateFilePath
                mov     eax, 1C6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0895
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0895:                          ; CODE XREF: ZwTranslateFilePath+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwTranslateFilePath endp

; ---------------------------------------------------------------------------
algn_1800A0898:                         ; DATA XREF: .pdata:0000000180179800↓o
                align 20h
; Exported entry 646. NtUmsThreadYield
; Exported entry 2231. ZwUmsThreadYield

; =============== S U B R O U T I N E =======================================


                public ZwUmsThreadYield
ZwUmsThreadYield proc near              ; CODE XREF: RtlUmsThreadYield+4D↓p
                                        ; DATA XREF: .rdata:0000000180120AA9↓o ...
                mov     r10, rcx        ; NtUmsThreadYield
                mov     eax, 1C7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A08B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A08B5:                          ; CODE XREF: ZwUmsThreadYield+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUmsThreadYield endp

; ---------------------------------------------------------------------------
algn_1800A08B8:                         ; DATA XREF: .pdata:000000018017980C↓o
                align 20h
; Exported entry 647. NtUnloadDriver
; Exported entry 2232. ZwUnloadDriver

; =============== S U B R O U T I N E =======================================


                public ZwUnloadDriver
ZwUnloadDriver  proc near               ; DATA XREF: .rdata:0000000180120AAE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnloadDriver
                mov     eax, 1C8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A08D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A08D5:                          ; CODE XREF: ZwUnloadDriver+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnloadDriver  endp

; ---------------------------------------------------------------------------
algn_1800A08D8:                         ; DATA XREF: .pdata:0000000180179818↓o
                align 20h
; Exported entry 648. NtUnloadKey
; Exported entry 2233. ZwUnloadKey

; =============== S U B R O U T I N E =======================================


                public ZwUnloadKey
ZwUnloadKey     proc near               ; DATA XREF: .rdata:0000000180120AB3↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnloadKey
                mov     eax, 1C9h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A08F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A08F5:                          ; CODE XREF: ZwUnloadKey+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnloadKey     endp

; ---------------------------------------------------------------------------
algn_1800A08F8:                         ; DATA XREF: .pdata:0000000180179824↓o
                align 20h
; Exported entry 649. NtUnloadKey2
; Exported entry 2234. ZwUnloadKey2

; =============== S U B R O U T I N E =======================================


                public ZwUnloadKey2
ZwUnloadKey2    proc near               ; DATA XREF: .rdata:0000000180120AB8↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnloadKey2
                mov     eax, 1CAh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0915
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0915:                          ; CODE XREF: ZwUnloadKey2+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnloadKey2    endp

; ---------------------------------------------------------------------------
algn_1800A0918:                         ; DATA XREF: .pdata:0000000180179830↓o
                align 20h
; Exported entry 650. NtUnloadKeyEx
; Exported entry 2235. ZwUnloadKeyEx

; =============== S U B R O U T I N E =======================================


                public ZwUnloadKeyEx
ZwUnloadKeyEx   proc near               ; DATA XREF: .rdata:0000000180120ABD↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnloadKeyEx
                mov     eax, 1CBh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0935
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0935:                          ; CODE XREF: ZwUnloadKeyEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnloadKeyEx   endp

; ---------------------------------------------------------------------------
algn_1800A0938:                         ; DATA XREF: .pdata:000000018017983C↓o
                align 20h
; Exported entry 651. NtUnlockFile
; Exported entry 2236. ZwUnlockFile

; =============== S U B R O U T I N E =======================================


                public ZwUnlockFile
ZwUnlockFile    proc near               ; DATA XREF: .rdata:0000000180120AC2↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnlockFile
                mov     eax, 1CCh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0955
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0955:                          ; CODE XREF: ZwUnlockFile+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnlockFile    endp

; ---------------------------------------------------------------------------
algn_1800A0958:                         ; DATA XREF: .pdata:0000000180179848↓o
                align 20h
; Exported entry 652. NtUnlockVirtualMemory
; Exported entry 2237. ZwUnlockVirtualMemory

; =============== S U B R O U T I N E =======================================


                public ZwUnlockVirtualMemory
ZwUnlockVirtualMemory proc near         ; CODE XREF: RtlUnlockMemoryZone+7A↑p
                                        ; RtlUnlockModuleSection+5A↑p ...
                mov     r10, rcx        ; NtUnlockVirtualMemory
                mov     eax, 1CDh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0975
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0975:                          ; CODE XREF: ZwUnlockVirtualMemory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnlockVirtualMemory endp

; ---------------------------------------------------------------------------
algn_1800A0978:                         ; DATA XREF: .pdata:0000000180179854↓o
                align 20h
; Exported entry 654. NtUnmapViewOfSectionEx
; Exported entry 2239. ZwUnmapViewOfSectionEx

; =============== S U B R O U T I N E =======================================


                public ZwUnmapViewOfSectionEx
ZwUnmapViewOfSectionEx proc near        ; DATA XREF: .rdata:0000000180120ACC↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtUnmapViewOfSectionEx
                mov     eax, 1CEh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0995
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0995:                          ; CODE XREF: ZwUnmapViewOfSectionEx+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnmapViewOfSectionEx endp

; ---------------------------------------------------------------------------
algn_1800A0998:                         ; DATA XREF: .pdata:0000000180179860↓o
                align 20h
; Exported entry 655. NtUnsubscribeWnfStateChange
; Exported entry 2240. ZwUnsubscribeWnfStateChange

; =============== S U B R O U T I N E =======================================


                public ZwUnsubscribeWnfStateChange
ZwUnsubscribeWnfStateChange proc near   ; CODE XREF: sub_1800630F8+81↑p
                                        ; DATA XREF: .rdata:0000000180120AD1↓o ...
                mov     r10, rcx        ; NtUnsubscribeWnfStateChange
                mov     eax, 1CFh
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A09B5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A09B5:                          ; CODE XREF: ZwUnsubscribeWnfStateChange+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUnsubscribeWnfStateChange endp

; ---------------------------------------------------------------------------
algn_1800A09B8:                         ; DATA XREF: .pdata:000000018017986C↓o
                align 20h
; Exported entry 656. NtUpdateWnfStateData
; Exported entry 2241. ZwUpdateWnfStateData

; =============== S U B R O U T I N E =======================================


                public ZwUpdateWnfStateData
ZwUpdateWnfStateData proc near          ; CODE XREF: RtlPublishWnfStateData+46↑p
                                        ; RtlTestAndPublishWnfStateData+4F↑p ...
                mov     r10, rcx        ; NtUpdateWnfStateData
                mov     eax, 1D0h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A09D5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A09D5:                          ; CODE XREF: ZwUpdateWnfStateData+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwUpdateWnfStateData endp

; ---------------------------------------------------------------------------
algn_1800A09D8:                         ; DATA XREF: .pdata:0000000180179878↓o
                align 20h
; Exported entry 657. NtVdmControl
; Exported entry 2242. ZwVdmControl

; =============== S U B R O U T I N E =======================================


                public ZwVdmControl
ZwVdmControl    proc near               ; DATA XREF: .rdata:0000000180120ADB↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtVdmControl
                mov     eax, 1D1h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A09F5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A09F5:                          ; CODE XREF: ZwVdmControl+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwVdmControl    endp

; ---------------------------------------------------------------------------
algn_1800A09F8:                         ; DATA XREF: .pdata:0000000180179884↓o
                align 20h
; Exported entry 658. NtWaitForAlertByThreadId
; Exported entry 2243. ZwWaitForAlertByThreadId

; =============== S U B R O U T I N E =======================================


                public ZwWaitForAlertByThreadId
ZwWaitForAlertByThreadId proc near      ; CODE XREF: RtlAcquireSRWLockShared+14E↑p
                                        ; RtlAcquireSRWLockExclusive+160↑p ...
                mov     r10, rcx        ; NtWaitForAlertByThreadId
                mov     eax, 1D2h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0A15
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0A15:                          ; CODE XREF: ZwWaitForAlertByThreadId+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForAlertByThreadId endp

; ---------------------------------------------------------------------------
algn_1800A0A18:                         ; DATA XREF: .pdata:0000000180179890↓o
                align 20h
; Exported entry 659. NtWaitForDebugEvent
; Exported entry 2244. ZwWaitForDebugEvent

; =============== S U B R O U T I N E =======================================


                public ZwWaitForDebugEvent
ZwWaitForDebugEvent proc near           ; CODE XREF: DbgUiWaitStateChange+18↓j
                                        ; DATA XREF: .rdata:0000000180120AE5↓o ...
                mov     r10, rcx        ; NtWaitForDebugEvent
                mov     eax, 1D3h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0A35
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0A35:                          ; CODE XREF: ZwWaitForDebugEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForDebugEvent endp

; ---------------------------------------------------------------------------
algn_1800A0A38:                         ; DATA XREF: .pdata:000000018017989C↓o
                align 20h
; Exported entry 660. NtWaitForKeyedEvent
; Exported entry 2245. ZwWaitForKeyedEvent

; =============== S U B R O U T I N E =======================================


                public ZwWaitForKeyedEvent
ZwWaitForKeyedEvent proc near           ; DATA XREF: .rdata:0000000180120AEA↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWaitForKeyedEvent
                mov     eax, 1D4h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0A55
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0A55:                          ; CODE XREF: ZwWaitForKeyedEvent+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForKeyedEvent endp

; ---------------------------------------------------------------------------
algn_1800A0A58:                         ; DATA XREF: .pdata:00000001801798A8↓o
                align 20h
; Exported entry 664. NtWaitForWorkViaWorkerFactory
; Exported entry 2249. ZwWaitForWorkViaWorkerFactory

; =============== S U B R O U T I N E =======================================


                public ZwWaitForWorkViaWorkerFactory
ZwWaitForWorkViaWorkerFactory proc near ; CODE XREF: sub_180052B30+2F2↑p
                                        ; DATA XREF: .rdata:0000000180120AEF↓o ...
                mov     r10, rcx        ; NtWaitForWorkViaWorkerFactory
                mov     eax, 1D5h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0A75
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0A75:                          ; CODE XREF: ZwWaitForWorkViaWorkerFactory+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitForWorkViaWorkerFactory endp

; ---------------------------------------------------------------------------
algn_1800A0A78:                         ; DATA XREF: .pdata:00000001801798B4↓o
                align 20h
; Exported entry 665. NtWaitHighEventPair
; Exported entry 2250. ZwWaitHighEventPair

; =============== S U B R O U T I N E =======================================


                public ZwWaitHighEventPair
ZwWaitHighEventPair proc near           ; DATA XREF: .rdata:0000000180120AF4↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWaitHighEventPair
                mov     eax, 1D6h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0A95
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0A95:                          ; CODE XREF: ZwWaitHighEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitHighEventPair endp

; ---------------------------------------------------------------------------
algn_1800A0A98:                         ; DATA XREF: .pdata:00000001801798C0↓o
                align 20h
; Exported entry 400. NtLoadKey3
; Exported entry 1985. ZwLoadKey3

; =============== S U B R O U T I N E =======================================


                public ZwLoadKey3
ZwLoadKey3      proc near               ; DATA XREF: .rdata:0000000180120AF9↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtLoadKey3
                mov     eax, 1D7h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0AB5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------

loc_1800A0AB5:                          ; CODE XREF: ZwLoadKey3+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwLoadKey3      endp

; ---------------------------------------------------------------------------
algn_1800A0AB8:                         ; DATA XREF: .pdata:00000001801798CC↓o
                align 20h
; Exported entry 666. NtWaitLowEventPair
; Exported entry 2251. ZwWaitLowEventPair

; =============== S U B R O U T I N E =======================================


                public ZwWaitLowEventPair
ZwWaitLowEventPair proc near            ; DATA XREF: .rdata:0000000180120AFE↓o
                                        ; .rdata:off_1801521A8↓o ...
                mov     r10, rcx        ; NtWaitLowEventPair
                mov     eax, 1D8h
                test    byte ptr ds:7FFE0308h, 1
                jnz     short loc_1800A0AD5
                syscall                 ; Low latency system call
                retn
; ---------------------------------------------------------------------------
loc_1800A0AD5:                          ; CODE XREF: ZwWaitLowEventPair+10↑j
                int     2Eh             ; DOS 2+ internal - EXECUTE COMMAND
                                        ; DS:SI -> counted CR-terminated command string
                retn
ZwWaitLowEventPair endp