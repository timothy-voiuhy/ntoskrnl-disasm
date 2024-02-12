; Section 7. (virtual address 00181000)
; Virtual size                  : 00003520 (  13600.)
; Section size in file          : 00003600 (  13824.)
; Offset to raw data for section: 00174600
; Flags C0000040: Data Readable Writable
; Alignment     : default
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read/Write
_mrdata         segment para public 'DATA' use64
                assume cs:_mrdata
                ;org 180181000h
off_180181000   dq offset sub_18008C1F0 ; DATA XREF: RtlInitializeNtUserPfn+8A↑o
                                        ; RtlResetNtUserPfn+4A↑o ...
off_180181008   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC40↑r
off_180181010   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC60↑r
off_180181018   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC80↑r
off_180181020   dq offset sub_18008C1F0 ; DATA XREF: NtdllDefWindowProc_A↑r
off_180181028   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CCC0↑r
off_180181030   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CCE0↑r
off_180181038   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD00↑r
off_180181040   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD20↑r
off_180181048   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD40↑r
off_180181050   dq offset sub_18008C1F0 ; DATA XREF: NtdllDialogWndProc_A↑r
off_180181058   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD80↑r
off_180181060   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDA0↑r
off_180181068   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDC0↑r
off_180181070   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDE0↑r
off_180181078   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE00↑r
off_180181080   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE20↑r
off_180181088   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE40↑r
off_180181090   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE60↑r
off_180181098   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE80↑r
off_1801810A0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CEA0↑r
off_1801810A8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CEC0↑r
off_1801810B0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CEE0↑r
off_1801810B8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF00↑r
off_1801810C0   dq offset sub_18008C1F0 ; DATA XREF: RtlInitializeNtUserPfn+9C↑o
                                        ; RtlResetNtUserPfn+56↑o ...
off_1801810C8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC50↑r
off_1801810D0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC70↑r
off_1801810D8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CC90↑r
off_1801810E0   dq offset sub_18008C1F0 ; DATA XREF: NtdllDefWindowProc_W↑r
off_1801810E8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CCD0↑r
off_1801810F0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CCF0↑r
off_1801810F8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD10↑r
off_180181100   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD30↑r
off_180181108   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD50↑r
off_180181110   dq offset sub_18008C1F0 ; DATA XREF: NtdllDialogWndProc_W↑r
off_180181118   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CD90↑r
off_180181120   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDB0↑r
off_180181128   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDD0↑r
off_180181130   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CDF0↑r
off_180181138   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE10↑r
off_180181140   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE30↑r
off_180181148   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE50↑r
off_180181150   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE70↑r
off_180181158   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CE90↑r
off_180181160   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CEB0↑r
off_180181168   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CED0↑r
off_180181170   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CEF0↑r
off_180181178   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF10↑r
off_180181180   dq offset sub_18008C1F0 ; DATA XREF: RtlInitializeNtUserPfn+B0↑o
                                        ; RtlResetNtUserPfn+39↑o ...
off_180181188   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF30↑r
off_180181190   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF40↑r
off_180181198   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF50↑r
off_1801811A0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF60↑r
off_1801811A8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF70↑r
off_1801811B0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF80↑r
off_1801811B8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CF90↑r
off_1801811C0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CFA0↑r
off_1801811C8   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CFB0↑r
off_1801811D0   dq offset sub_18008C1F0 ; DATA XREF: sub_18009CFC0↑r
byte_1801811D8  db 0                    ; DATA XREF: RtlInitializeNtUserPfn+36↑r
                                        ; RtlInitializeNtUserPfn+C6↑w ...
                align 20h
__guard_check_icall_fptr dq offset _guard_check_icall_nop
                                        ; DATA XREF: RtlInitializeNtUserPfn+23↑r
                                        ; RtlInitializeNtUserPfn+DE↑r ...
                align 10h
qword_1801811F0 dq 0                    ; DATA XREF: LdrGetProcedureAddressForCaller+3CA↑r
                                        ; sub_1800318A0+1A4↑r ...
qword_1801811F8 dq 0                    ; DATA XREF: sub_18006BCA8+2C3↑w
qword_180181200 dq 0                    ; DATA XREF: LdrShutdownProcess+CE↑r
                                        ; sub_18006BCA8+2E3↑w
qword_180181208 dq 0                    ; DATA XREF: sub_18006BCA8+314↑w
                                        ; sub_1800D0740+2E↑r ...
qword_180181210 dq 0                    ; DATA XREF: sub_18006B8C4+50↑r
                                        ; sub_18006BCA8+283↑w
qword_180181218 dq 0                    ; DATA XREF: sub_18006BCA8+2A3↑w
                                        ; sub_1800D1CE0+2098↑r
qword_180181220 dq 0                    ; DATA XREF: sub_180074C5C+3F1↑r
                                        ; sub_1800D1CE0+18D0↑r ...
qword_180181228 dq 0                    ; DATA XREF: KiUserApcDispatcher+6E↑r
                                        ; .rdata:000000018011DE58↑o
qword_180181230 dq 0                    ; DATA XREF: KiUserExceptionDispatcher+1↑r
                                        ; .rdata:000000018011DE48↑o
qword_180181238 dq 0                    ; DATA XREF: sub_1800DC660↑r
                                        ; .rdata:000000018011DE88↑o
qword_180181240 dq 0                    ; DATA XREF: sub_18006B71C+ED↑r
                                        ; sub_18006BCA8+273↑w
qword_180181248 dq 0                    ; DATA XREF: sub_18005F8E8+69↑r
                                        ; sub_18006BCA8+30D↑w
qword_180181250 dq 0                    ; DATA XREF: sub_18006B8C4+94↑r
                                        ; sub_18006BCA8+293↑w
qword_180181258 dq 0                    ; DATA XREF: sub_18006A4C8+2A1↑r
                                        ; sub_18006BCA8+2D3↑w
qword_180181260 dq 0                    ; DATA XREF: DbgUiRemoteBreakin+38↑r
                                        ; .rdata:000000018011DE68↑o
qword_180181268 dq 0                    ; DATA XREF: sub_18003DC0C+141↑r
                                        ; sub_18006B8C4+BD↑r ...
qword_180181270 dq 0                    ; DATA XREF: sub_1800DC680↑r
                                        ; .rdata:000000018011DE78↑o
qword_180181278 dq 0                    ; DATA XREF: sub_18000787C+13↑r
                                        ; sub_18000787C+D1↑r ...
qword_180181280 dq 0                    ; DATA XREF: sub_1800134FC+2A↑r
                                        ; sub_1800D5954+56↑w
qword_180181288 dq 0                    ; DATA XREF: sub_18000787C+E8↑w
                                        ; sub_18000EED4+21↑r ...
qword_180181290 dq 0                    ; DATA XREF: sub_1800134FC+8↑r
                                        ; sub_1800134FC:loc_180013510↑r ...
qword_180181298 dq 0                    ; DATA XREF: sub_1800150E0:loc_180015112↑r
                                        ; LdrGetKnownDllSectionHandle+2E↑r ...
byte_1801812A0  db 0                    ; DATA XREF: LdrGetProcedureAddressForCaller+36B↑r
                                        ; sub_1800318A0+6DC↑r ...
byte_1801812A1  db 0                    ; DATA XREF: sub_1800D96A4+2B↑r
                                        ; sub_1800D9768+21E↑w ...
byte_1801812A2  db 0                    ; DATA XREF: sub_1800D0EAC+4BA↑w
                                        ; sub_1800D9768+225↑w ...
                align 4
dword_1801812A4 dd 0                    ; DATA XREF: LdrShutdownProcess+115↑r
                                        ; sub_1800D1CE0:loc_1800D3342↑r ...
qword_1801812A8 dq 0                    ; DATA XREF: sub_1800D95C0+7F↑r
                                        ; sub_1800D9768+20D↑w
qword_1801812B0 dq 0                    ; DATA XREF: RtlDeleteFunctionTable+DA↑o
                                        ; RtlInstallFunctionTableCallback+1A1↑r ...
qword_1801812B8 dq 0                    ; DATA XREF: RtlDeleteFunctionTable+BC↑o
                                        ; RtlInstallFunctionTableCallback+16C↑r ...
qword_1801812C0 dq 0                    ; DATA XREF: RtlDeleteFunctionTable+34↑r
                                        ; RtlDeleteFunctionTable+3B↑o ...
qword_1801812C8 dq 0                    ; DATA XREF: RtlAddFunctionTable+231↑r
                                        ; RtlAddFunctionTable+276↑w ...
qword_1801812D0 dq 0                    ; DATA XREF: RtlDeleteFunctionTable+B2↑o
                                        ; RtlAddFunctionTable+1C7↑r ...
qword_1801812D8 dq 0                    ; DATA XREF: RtlDeleteFunctionTable+D0↑o
                                        ; RtlAddFunctionTable+1FC↑r ...
; void *Base
Base            dq 0                    ; DATA XREF: RtlSetProtectedPolicy:loc_180080C93↑r
                                        ; RtlSetProtectedPolicy+126↑r ...
; size_t NumOfElements
NumOfElements   dd 0                    ; DATA XREF: RtlSetProtectedPolicy:loc_180080D43↑r
                                        ; RtlSetProtectedPolicy+158↑w ...
dword_1801812EC dd 0                    ; DATA XREF: RtlSetProtectedPolicy+AE↑r
                                        ; RtlSetProtectedPolicy+13D↑w
; Exported entry 179. LdrSystemDllInitBlock
                public LdrSystemDllInitBlock
LdrSystemDllInitBlock db 0F0h           ; DATA XREF: sub_1800D5954+2A↑o
                                        ; RtlQueryProcessDebugInformation+253↑o ...
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
qword_180181300 dq 0                    ; DATA XREF: sub_1800D1CE0+11DC↑r

dword_180181388 dd 0                    ; DATA XREF: sub_18000F9AC+CB↑r
                                        ; sub_1800D0354+1D↑r ...
byte_18018138C  db 0                    ; DATA XREF: sub_1800323F0+19D↑r
                                        ; LdrControlFlowGuardEnforced+F↑r
                align 10h
xmmword_180181390 xmmword 0             ; DATA XREF: sub_1800334E8+D↑r
                                        ; sub_1800516C0+5C↑r ...
qword_1801813A0 dq 0                    ; DATA XREF: sub_1800516C0+6A↑r
                                        ; sub_1800D1CE0+3AC↑r ...
qword_1801813A8 dq 0                    ; DATA XREF: sub_1800323F0+194↑r
                                        ; LdrControlFlowGuardEnforced↑r ...

qword_1801813D0 dq 0                    ; DATA XREF: sub_1800D438C:loc_1800D43F8↑r
                db    0
                
dword_1801813E8 dd 1                    ; DATA XREF: sub_180012224+18↑r
                                        ; sub_180012224+39↑w ...
                align 10h
off_1801813F0   dq offset unk_18016D6A8 ; DATA XREF: sub_180078A14+23↑o
                                        ; sub_180078A14:loc_180078B28↑o ...
off_1801813F8   dq offset off_1801813F8 ; DATA XREF: .mrdata:off_1801813F8↓o
                                        ; .mrdata:0000000180181400↓o
                dq offset off_1801813F8
                dq offset unk_18016D6A0
off_180181410   dq offset off_180181410 ; DATA XREF: .mrdata:off_180181410↓o
                                        ; .mrdata:0000000180181418↓o
                dq offset off_180181410
dword_180181420 dd 0                    ; DATA XREF: RtlLookupFunctionEntry+163↑o
                                        ; RtlLookupFunctionEntry+279↑r ...
                db    0
byte_180181425  db 0                    ; DATA XREF: RtlLookupFunctionEntry+2E0↑r
                                        ; sub_180078C2C+31↑r ...
                align 8
qword_180181428 dq 0FFFFFFFFFFFFFFFFh   ; DATA XREF: RtlLookupFunctionEntry+17B↑r
                                        ; sub_180078C2C+7C↑r ...
qword_180181430 dq 0                    ; DATA XREF: RtlLookupFunctionEntry:loc_180032E47↑r
                                        ; sub_180078C2C+91↑r ...
                align 100h
; Exported entry 108. KiUserInvertedFunctionTable
                public KiUserInvertedFunctionTable
KiUserInvertedFunctionTable dd 1        ; DATA XREF: sub_180013F10+19↑r
                                        ; sub_180013F10+40↑o ...
dword_180181504 dd 200h                 ; DATA XREF: sub_180013F10+22↑r
dword_180181508 dd 0                    ; DATA XREF: sub_180013F10+34↑w
                                        ; sub_180013F10+B9↑w ...
byte_18018150C  db 0                    ; DATA XREF: sub_180032F40:loc_18003308D↑r
                                        ; sub_180013F10:loc_1800ACB68↑w
                align 10h
xmmword_180181510 xmmword 0             ; DATA XREF: RtlQueueWorkItem+30E↑r
                                        ; RtlQueryInformationActivationContext+3DD↑r ...
qword_180181520 dq 0                    ; DATA XREF: RtlQueueWorkItem:loc_18000BA7B↑r
                                        ; RtlQueueWorkItem+31D↑r ...
                align 10h
unk_180181530   db    0                 ; DATA XREF: sub_180013F10+4D↑o
                db    0

                db    0
                db    0
; uintptr_t _security_cookie
__security_cookie dq 2B992DDFA232h      ; DATA XREF: RtlLargeIntegerToChar+16↑r
                                        ; sub_1800010E8+1F↑r ...
qword_180184518 dq 0FFFFD466D2205DCDh   ; DATA XREF: __report_gsfailure+117↑r
                align 1000h
_mrdata         ends
