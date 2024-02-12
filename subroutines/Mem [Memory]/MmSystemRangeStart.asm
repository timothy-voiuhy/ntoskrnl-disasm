MmSystemRangeStart dq 0FFFF800000000000h
                                        ; DATA XREF: .data:0000000140C00CF0↓o
                                        ; .data:0000000140C01670↓o
qword_140021670 dq 2B6109100h           ; DATA XREF: RtlSecondsSince1970ToTime+E↓r
                                        ; RtlTimeToSecondsSince1970+19↓r
aDefaultcape:                           ; DATA XREF: PAGEDATA:0000000140D2D6F8↓o
                text "UTF-16LE", 'DefaultCape',0
aDefaultcap:                            ; DATA XREF: PAGEDATA:0000000140D2D708↓o
                text "UTF-16LE", 'DefaultCap',0
                align 8
aLeapseconds:                           ; DATA XREF: .rdata:0000000140006210↑o
                text "UTF-16LE", 'LeapSeconds',0
aEnabled_0:                             ; DATA XREF: .rdata:0000000140006200↑o
                text "UTF-16LE", 'Enabled',0
aKvfHotpatchsim:                        ; DATA XREF: .data:0000000140C05138↓o
                text "UTF-16LE", 'KVF_HotPatchSimulation',0
                align 20h
aProductversion:                        ; DATA XREF: .rdata:0000000140008AF8↑o
                text "UTF-16LE", 'ProductVersion',0
                align 20h
aOriginalfilena:                        ; DATA XREF: .rdata:0000000140008B48↑o
                text "UTF-16LE", 'OriginalFilename',0
                align 8
aInternalname:                          ; DATA XREF: .rdata:0000000140008B58↑o
                text "UTF-16LE", 'InternalName',0
                align 8
aLegalcopyright:                        ; DATA XREF: .rdata:0000000140008B68↑o
                text "UTF-16LE", 'LegalCopyright',0
                align 8
aFiledescriptio:                        ; DATA XREF: .rdata:0000000140008B08↑o
                text "UTF-16LE", 'FileDescription',0
aCompanyname:                           ; DATA XREF: .rdata:0000000140008B18↑o
                text "UTF-16LE", 'CompanyName',0
aProductname:                           ; DATA XREF: .rdata:0000000140008B28↑o
                text "UTF-16LE", 'ProductName',0
aFileversion:                           ; DATA XREF: .rdata:0000000140008B38↑o
                text "UTF-16LE", 'FileVersion',0
aStringfileinfo_0:                      ; DATA XREF: .rdata:off_140008AC8↑o
                text "UTF-16LE", '\StringFileInfo\000004B0\',0
                align 8
aStringfileinfo_1:                      ; DATA XREF: .rdata:0000000140008AD0↑o
                text "UTF-16LE", '\StringFileInfo\000004E4\',0
                align 20h
aStringfileinfo_2:                      ; DATA XREF: .rdata:0000000140008AD8↑o
                text "UTF-16LE", '\StringFileInfo\040904B0\',0
                align 8
aStringfileinfo_3:                      ; DATA XREF: .rdata:0000000140008AE0↑o
                text "UTF-16LE", '\StringFileInfo\040904E4\',0
                align 10h
aRegistryUser_3:                        ; DATA XREF: .rdata:off_140006220↑o
                text "UTF-16LE", '\REGISTRY\USER',0
                align 10h
xmmword_1400218F0 xmmword 1000000010000000100000001h
                                        ; DATA XREF: sub_1407BAC4C:loc_1407BB1D5↓r
xmmword_140021900 xmmword 5000000050000000500000005h
                                        ; DATA XREF: sub_1407BAC4C+25C↓r
xmmword_140021910 xmmword 0FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEh
                                        ; DATA XREF: sub_140797B1C+2DE↓r
qword_140021920 dq 100001030575445h, 0BB8A052B88040E86h
                                        ; DATA XREF: sub_140209DB8+48↓o
                                        ; sub_140363A0C+49↓o ...
                db 6
byte_140021931  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1407D3F48+912ED↓o
                dd 400000h
                align 4
                dd 800081h
aTimerhardware  db 'TimerHardware',0
aClocktimer     db 'ClockTimer',0
aPerformancecou db 8,'PerformanceCounter',0
aAlwaysontimer  db 8,'AlwaysOnTimer',0
aVpptphysicalti db 8,'VpptPhysicalTimer',0
aAlwaysoncounte db 8,'AlwaysOnCounter',0
aWatchdog       db 8,'Watchdog',0
aAuxiliarycount db 8,'AuxiliaryCounter',0
                db 8, 6
word_1400219BE  dw 50Bh                 ; DATA XREF: sub_14038D5F0+10E8A4↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 2Fh, 0, 80h, 0, 54h, 69h, 6Dh
aErrtcfailures  db 'erRtcFailures',0
aRtcfailuresdur db 'RtcFailuresDuringRuntime',0
                db 8
                db 6
byte_1400219F9  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14038D5F0+10E840↓o
                dd 400000h
                align 4
                dd 80002Eh
aTimerrtcfailur db 'TimerRtcFailures',0
aRtcfailuresdur_0 db 'RtcFailuresDuringResume',0
                db 8, 6
byte_140021A33  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1407D1390+92C7C↓o
                db 0
                dd 400000h
                align 2
                dw 4Bh
                db  80h
                align 2
aTimertscsync   db 'TimerTscSync',0
aTscadjustavail db 'TscAdjustAvailable',0
                dw 384h, 614Dh, 6978h
aMumcomputedspr db 'mumComputedSpread',0
aMaximumwaves   db 0Ah
                db 'MaximumWaves',0
                db 8, 6
word_140021A8A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408692F0+4DC↓o
                dd 400000h
                dd 80003900h
                db    0
aCmpsavebootcon db 'CmpSaveBootControlSetFailed',0
aStatus_0       db 'status',0
                dd 61500E88h
aRtaPrivtags    db 'rtA_PrivTags',0
                db 0Ah, 6
byte_140021ACF  db 0Bh                  ; DATA XREF: sub_1408692F0+4A8↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 48h, 80h, 6D43h
aPsavebootcontr db 'pSaveBootControlSetSucceeded',0
aOpenkeysinvali db 'openKeysInvalidated',0
aPartaPrivtags  db 8,'PartA_PrivTags',0
                db 0Ah, 6
byte_140021B23  db 0Bh, 4, 2, 8, 0      ; DATA XREF: sub_1405F75C0+20032B↓o
                dq 1E000000000000h, 6F4C657669480080h, 69466D6F72466461h
                dq 757461747300656Ch
                db 73h, 0, 88h, 0Eh, 6
byte_140021B4D  db 0Bh, 4, 1            ; DATA XREF: sub_1405F75C0+20015B↓o
                dq 8, 657669480080001Fh, 6D6F724664616F4Ch, 6C696600656C6946h
                dq 616006874615065h
byte_140021B78  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14086A9A0+325↓o
                dd 400000h
                dw 2A00h, 8000h, 4E00h
aTreplacekeysuc db 'tReplaceKeySucceeded',0
aPartaPrivtags_0 db 'PartA_PrivTags',0
                db 0Ah, 6
word_140021BAE  dw 50Bh                 ; DATA XREF: sub_14086A9A0+2BB↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 30h, 0, 80h, 0, 4Eh, 74h, 52h
aEplacekeyfaile db 'eplaceKeyFailed',0
aStatus_1       db 'Status',0
                db 88h
                dq 505F41747261500Eh, 73676154766972h
                db 0Ah, 6
word_140021BEA  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140A3A450+6B↓o
                dd 400000h
                dd 8000F900h
                db    0
aBootloaderdiag db 'BootLoaderDiagnosticInformation',0
aOriginalbootst db 'OriginalBootStatusState',0
                db 4, 4Eh, 65h, 77h, 42h, 2 dup(6Fh)
aTstatusstate   db 'tStatusState',0
                db 4, 43h, 6Fh
aNfigurationloa db 'nfigurationLoaded',0
                dw 4604h, 616Ch, 7367h
                db    0
aConfigurationc db 8,'ConfigurationComparisonStatus',0
                db  88h
                db 0Eh, 43h, 75h, 2 dup(72h), 65h, 6Eh
aTconfiguration db 'tConfigurationLoadStatus',0
                db 88h, 0Eh, 4Ch, 6Bh, 67h, 43h, 6Fh
aNfigurationloa_0 db 'nfigurationLoadStatus',0
                dw 0E88h
aUsagesubscript db 'UsageSubscriptionLoadStatus',0
                dd 61500E88h
aRtaPrivtags_0  db 'rtA_PrivTags',0
                db 0Ah, 6
byte_140021CEF  db 0Bh                  ; DATA XREF: sub_1406504F0+129↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 2Bh, 80h, 6553h
aRversilosymbol db 'rverSiloSymbolicLinkTrustCheckFailed',0
                db 6
word_140021D26  dw 50Bh                 ; DATA XREF: sub_1406504F0+D1↓o
                db    0
                db 2 dup(0), 1, 2 dup(0), 20h, 0
                db    0
                db 46h, 0, 80h, 0, 53h, 65h, 72h
aVersilosymboli db 'verSiloSymbolicLinkTrustCheckFailed(Aggregate)',0
aPartaPrivtags_1 db 'PartA_PrivTags',0
                dw 60Ah
unk_140021D78   db  0Bh                 ; DATA XREF: sub_14066B110+1A107B↓o
                db 5, 0, 8, 4 dup(0)
                db    0
                db 2 dup(0), 2Dh, 1, 80h, 0, 43h
aMloadkeyfailed db 'mLoadKeyFailed',0
aStatus_2       db 'Status',0
                dw 0E88h
aHiveloadfailur db 'HiveLoadFailure',0
                db  98h
                db 6, 55h, 6Eh, 72h, 65h, 63h, 6Fh
aVerableloadfai db 'verableLoadFailureCount',0
                db    6
aRecoverableloa db 'RecoverableLoadFailureCount',0
                db 6, 55h, 6Eh
aRecoverablelin db 'recoverableLinkFailureCount',0
                dd 726E5506h
aEcoverableload db 'ecoverableLoadFailureLocations',0
                db 0D8h
                db    3
aType_2         db 'Type',0
aStatus_3       db 7,'Status',0
aPoint          db 8,'Point',0
aRecoverableloa_0 db 8,'RecoverableLoadFailureLocations',0
                dw 3D8h
aType_3         db 'Type',0
aStatus_4       db 7,'Status',0
aPoint_0        db 8,'Point',0
aUnrecoverablel db 8,'UnrecoverableLinkFailureLocations',0
                db 0D8h
                dq 73757461745302h, 800746E696F5008h
                db 6
                db 0Bh, 5, 0, 8, 3 dup(0)
                                        ; DATA XREF: sub_14066B110+329↓o
                dq 80004700004000h
aCmloadkeysucce db 'CmLoadKeySucceeded(Aggregate)',0
aCount_0        db 'Count',0
                dd 80808089h
                dq 7375746174537180h, 41747261500E8800h, 676154766972505Fh
                db 73h, 0, 0Ah, 6
dword_140021F04 dd 800050Bh             ; DATA XREF: sub_14066B110+1A0EBA↓o
                db    0
                align 4
                dd 54000040h
                db    1
                db 80h, 0, 43h, 6Dh, 4Ch, 6Fh, 61h
aDkeyfailedAggr db 'dKeyFailed(Aggregate)',0
aCount_1        db 'Count',0
                dd 80808089h
                db  80h
aQstatus        db 'qStatus',0
                db 88h, 0Eh, 48h, 69h, 76h, 65h, 4Ch
aOadfailure     db 'oadFailure',0
                db 98h, 6, 55h, 6Eh, 72h
aEcoverableload_0 db 'ecoverableLoadFailureCount',0
                db 6, 52h, 65h, 63h, 6Fh
aVerableloadfai_0 db 'verableLoadFailureCount',0
                db    6
aUnrecoverablel_0 db 'UnrecoverableLinkFailureCount',0
                db 6
aUnrecoverablel_1 db 'UnrecoverableLoadFailureLocations',0
                dw 3D8h, 7954h, 6570h
                dq 7375746174530700h, 746E696F500800h
aRecoverableloa_1 db 8,'RecoverableLoadFailureLocations',0
                db 0D8h, 3, 54h, 79h, 70h, 65h, 0
aStatus_5       db 7,'Status',0
aPoint_1        db 8,'Point',0
aUnrecoverablel_2 db 8,'UnrecoverableLinkFailureLocations',0
                dw 2D8h, 7453h, 7461h
                dq 6E696F5008007375h, 4174726150080074h, 676154766972505Fh
                db 73h, 0, 0Ah, 6
dword_140022064 dd 800050Bh             ; DATA XREF: sub_14062A170+E84↓o
                db    0
                align 4
                dd 5E000040h
                db    0
                db 80h, 0, 43h, 6Dh, 4Ch, 6Fh, 61h
aDappkeysucceed db 'dAppKeySucceeded(Aggregate)',0
aCount_2        db 'Count',0
                dw 8089h, 8080h, 7180h
aStatus_6       db 'Status',0
                db 88h
                db  0Eh
aHivealreadyloa db 'HiveAlreadyLoaded',0
                db 84h, 3, 50h, 61h, 72h
aTaPrivtags     db 'tA_PrivTags',0
                db 0Ah, 6
word_1400220CE  dw 50Bh                 ; DATA XREF: sub_14062A170+C13↓o
                db    0
                db 8, 4 dup(0), 40h, 0
                db    0
                db 57h, 1, 80h, 0, 43h, 6Dh, 4Ch
aOadappkeyfaile db 'oadAppKeyFailed(Aggregate)',0
aCount_3        db 'Count',0
                db 89h, 4 dup(80h), 71h, 53h
aTatus          db 'tatus',0
                dw 0E88h
aHiveloadfailur_0 db 'HiveLoadFailure',0
                db  98h
                db 6, 55h, 6Eh, 72h, 65h, 63h, 6Fh
aVerableloadfai_1 db 'verableLoadFailureCount',0
                db    6
aRecoverableloa_2 db 'RecoverableLoadFailureCount',0
                db 6, 55h, 6Eh
aRecoverablelin_0 db 'recoverableLinkFailureCount',0
                dd 726E5506h
aEcoverableload_1 db 'ecoverableLoadFailureLocations',0
                db 0D8h
                db    3
aType_4         db 'Type',0
aStatus_7       db 7,'Status',0
aPoint_2        db 8,'Point',0
aRecoverableloa_3 db 8,'RecoverableLoadFailureLocations',0
                dw 3D8h
aType_5         db 'Type',0
aStatus_8       db 7,'Status',0
aPoint_3        db 8,'Point',0
aUnrecoverablel_3 db 8,'UnrecoverableLinkFailureLocations',0
                db 0D8h
                dq 73757461745302h, 800746E696F5008h, 72505F4174726150h
                dq 0A00736761547669h
                db 6
byte_140022231  db 0Bh, 5, 0, 8, 3 dup(0)
                                        ; DATA XREF: sub_14062A170+D92↓o
                dq 80013000000000h
aCmloadappkeyfa db 'CmLoadAppKeyFailed',0
aStatus_9       db 'Status',0
                dw 0E88h, 6948h, 6576h
aLoadfailure    db 'LoadFailure',0
                dd 6E550698h
aRecoverableloa_4 db 'recoverableLoadFailureCount',0
                dd 63655206h
aOverableloadfa db 'overableLoadFailureCount',0
                db 6, 55h, 6Eh, 72h, 65h, 63h, 6Fh
aVerablelinkfai db 'verableLinkFailureCount',0
                db    6
aUnrecoverablel_4 db 'UnrecoverableLoadFailureLocations',0
                db 0D8h, 3, 54h, 79h, 70h
                db  65h ; e
                align 2
aStatus_10      db 7,'Status',0
aPoint_4        db 8,'Point',0
aRecoverableloa_5 db 8,'RecoverableLoadFailureLocations',0
                dw 3D8h, 7954h, 6570h
                dq 7375746174530700h, 746E696F500800h
aUnrecoverablel_5 db 8,'UnrecoverableLinkFailureLocations',0
                db 0D8h, 2, 53h, 74h, 61h
                dq 696F500800737574h
                db 6Eh, 74h, 0, 8, 6
                db 0Bh, 5, 0            ; DATA XREF: sub_14062A170+AB6↓o
                db    8
                db 4 dup(0), 40h, 2 dup(0)
                db  4Dh ; M
                align 2
                dw 80h, 6D43h, 6F4Ch
aAdappkeyfailed db 'adAppKeyFailedNoInfo(Aggregate)',0
aCount_4        db 'Count',0
                dw 8089h
                dq 7461745371808080h, 7261500E88007375h, 54766972505F4174h
                db 61h, 67h, 73h, 0, 0Ah, 6
word_1400223C6  dw 50Bh                 ; DATA XREF: sub_1405FAAE0+1FD6EE↓o
                db    0
                db 2, 6 dup(0)
                db    0
                db 60h, 0, 80h, 0, 53h, 65h, 63h
aUritydescripto db 'urityDescriptorChanging',0
aKeypath_1      db 'KeyPath',0
                db  16h
aOriginalsd     db 'OriginalSD',0
                dd 666E490Eh
aOrmationtochan db 'ormationToChange',0
aChangesd       db 8,'ChangeSD',0
                db 0Eh, 52h, 65h, 73h, 75h
aLtingsd        db 'ltingSD',0
                db 0Eh, 6
word_140022432  dw 40Bh, 2 dup(0)       ; DATA XREF: sub_1405F8E80+230↓o
                db    0
                db 4 dup(0), 3Fh, 0, 80h
                db    0
aHiveflushcontr db 'HiveFlushControlDataGenerated',0
aControlflags   db 'controlFlags',0
aLogfilestatus  db 8,'logFileStatus',0
                db 8, 6
byte_14002247D  db 0Bh, 4, 1            ; DATA XREF: sub_1405F8E80+71↓o
                dq 0
                dq 657669480080002Bh, 6F6D006873756C46h, 746E696F50746E75h
                dq 6150656C69661600h, 67616C6616006874h
                db 73h, 0, 8, 6
dword_1400224B4 dd 2040Bh               ; DATA XREF: sub_1405F8E80+566↓o
                dq 1700000000000000h, 4665766948008000h, 617473006873756Ch
                db 74h, 75h, 73h, 0, 88h, 0Eh, 6
byte_1400224D7  db 0Bh                  ; DATA XREF: sub_1405F9760+35↓o
                dq 204h, 6948008000230000h, 506873756C466576h, 6168700065736168h
                dq 7461747304006573h
                db 75h, 73h, 0, 88h, 0Eh, 6
                dw 40Bh                 ; DATA XREF: sub_1405F97FC+2B↓o
                dq 1, 7669480080001A00h, 68506873756C4665h, 7361687000657361h
                db 65h, 0, 4, 6
dword_14002252C dd 102050Bh             ; DATA XREF: sub_1406E0A14+141CAB↓o
                dq 2500000000000000h, 7250706D43008000h, 67694C6572617065h
                dq 7468676965577468h, 746361736E617254h
                db 69h, 6Fh, 6Eh, 0, 6
                db 0Bh, 5, 1            ; DATA XREF: sub_1406E0A14+141C69↓o
                dq 1, 50706D4300800025h, 694C657261706572h
                db 67h, 68h, 74h, 57h, 65h, 69h
                dd 54746867h
aRansaction     db 'ransaction',0
                db 6
word_14002258E  dw 50Bh                 ; DATA XREF: sub_14076FB94+D8DD5↓o
                db    2
                db 1, 6 dup(0)
                db    0
                db 2Ah, 0, 80h, 0, 43h, 6Dh, 70h
aTranslightweig db 'TransLightWeightRollback',0
aUowcount       db 'UowCount',0
                dw 608h
dword_1400225C4 dd 101050Bh             ; DATA XREF: sub_14076FB94+D8DAD↓o
                db 4 dup(0)
                dd 20000000h
                db    0
                db 80h, 0, 43h, 6Dh, 70h, 54h, 72h
aAnslightweight db 'ansLightWeightRollback',0
                db 6
unk_1400225F0   db  0Bh                 ; DATA XREF: sub_1406E08E4+141D4E↓o
                db 5, 2, 1, 4 dup(0)
                db    0
                db 2 dup(0), 37h, 0, 80h, 0, 43h
aMpcommitprepar db 'mpCommitPreparedLightWeightTransaction',0
aUowCount       db 'UoW Count',0
                db 8, 6
byte_140022633  db 0Bh, 5, 2 dup(1), 0  ; DATA XREF: sub_1406E08E4+141D1B↓o
                dq 2C000000000000h, 6D6F43706D430080h, 617065725074696Dh
                dq 746867694C646572h, 7254746867696557h
                db 61h, 6Eh, 73h, 61h
                dd 6F697463h
                db 6Eh, 0, 6
byte_14002266B  db 0Bh, 5, 0, 4, 0      ; DATA XREF: sub_140638CB0+1CB6A9↓o
                                        ; sub_14064BF70+1BAF28↓o
                db    0
                db 5 dup(0), 37h, 0
                db  80h
                align 2
aBouncebufferne db 'BounceBufferNeeded',0
aCount_5        db 'Count',0
                db 89h, 4 dup(80h)
aQreason        db 'qReason',0
                dq 637542657A695304h
                db 6Bh, 65h, 74h, 0, 0Ah, 6
word_1400226AE  dw 50Bh                 ; DATA XREF: sub_14067102C+19C8F1↓o
                db 4 dup(0)
                dd 400000h
                dq 7669480080014D00h, 616548666C655365h
                db 6Ch, 65h, 64h
                dd 65684300h
aCkregistryretu db 'ckRegistryReturnCode',0
                dd 69480E88h
aVeloadfailure  db 'veLoadFailure',0
                dw 698h
                dd 65726E55h
                dd 65766F63h
                dq 616F4C656C626172h
                db 64h, 46h
                dd 756C6961h
aRecount        db 'reCount',0
                dw 5206h
aEcoverableload_2 db 'ecoverableLoadFailureCount',0
                db 6, 55h, 6Eh, 72h, 65h
                db 63h, 6Fh
                dd 61726576h
aBlelinkfailure db 'bleLinkFailureCount',0
                dw 5506h, 726Eh, 6365h
aOverableloadfa_0 db 'overableLoadFailureLocations',0
                db 0D8h, 3, 54h
                db  79h ; y
                db 70h, 65h, 0, 7, 53h, 74h, 61h
                db  74h ; t
                db 75h, 73h, 0, 8, 50h, 6Fh, 69h
                db  6Eh ; n
                db 74h, 0, 8, 52h, 65h, 63h, 6Fh
aVerableloadfai_2 db 'verableLoadFailureLocations',0
                dd 795403D8h
                db  70h ; p
                db 65h, 0, 7, 53h, 74h, 61h, 74h
                db  75h ; u
                db 73h, 0, 8, 50h, 6Fh, 69h, 6Eh
                db  74h ; t
                align 2
aUnrecoverablel_6 db 8,'UnrecoverableLinkFailureLocations',0
                db 0D8h, 2, 53h
aTatus_0        db 'tatus',0
aPoint_5        db 8,'Point',0
aPartaPrivtags_2 db 8,'PartA_PrivTags',0
                db 0Ah, 6
byte_140022807  db 0Bh                  ; DATA XREF: sub_1406716E0+19C3C2↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 36h, 80h, 6948h
aVereorganizati db 'veReorganizationFailed',0
aStatus_11      db 'status',0
                dw 0E88h
aPartaPrivtags_3 db 'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140022849  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1406716E0+19C861↓o
                dd 400000h
                align 4
                dd 80004Ah
aHivereorganize db 'HiveReorganized',0
                db 6Ch, 61h
                dd 65527473h
aOrganizetime   db 'organizeTime',0
aOldsize        db 0Ah
                db 'oldSize',0
aNewsize        db 8,'newSize',0
aPartaPrivtags_4 db 8,'PartA_PrivTags',0
                db 0Ah, 6
byte_14002289F  db 0Bh                  ; DATA XREF: sub_1406716E0+19C75D↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 5Ch, 80h, 6948h
                dq 6167726F65526576h, 6E6F6974617A696Eh, 6465746C75736552h
                dq 7265666669446E49h
                db 65h, 6Eh, 74h, 4Bh
                dd 6F437965h
                dq 4B646C6F00746E75h, 746E756F437965h, 4379654B77656E08h
                dq 61500800746E756Fh, 766972505F417472h
aTags           db 'Tags',0
                db 0Ah, 6
byte_140022907  db 0Bh                  ; DATA XREF: sub_1406716E0+19C5FD↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 161h, 80h, 6948h
aVereorganizati_0 db 'veReorganizationValidationFailed',0
aCheckregistryr db 'checkRegistryReturnCode',0
                db 88h, 0Eh, 68h, 69h, 76h, 65h, 4Ch
aOadfailure_0   db 'oadFailure',0
                db 98h, 6, 55h, 6Eh, 72h
aEcoverableload_3 db 'ecoverableLoadFailureCount',0
                db 6, 52h, 65h, 63h, 6Fh
aVerableloadfai_3 db 'verableLoadFailureCount',0
                db    6
aUnrecoverablel_7 db 'UnrecoverableLinkFailureCount',0
                db 6
aUnrecoverablel_8 db 'UnrecoverableLoadFailureLocations',0
                dw 3D8h, 7954h, 6570h
                dq 7375746174530700h, 746E696F500800h
aRecoverableloa_6 db 8,'RecoverableLoadFailureLocations',0
                db 0D8h, 3, 54h, 79h, 70h, 65h, 0
aStatus_12      db 7,'Status',0
aPoint_6        db 8,'Point',0
                db 8
                db 55h, 6Eh, 72h, 65h, 63h, 6Fh, 76h
                dd 62617265h
aLelinkfailurel db 'leLinkFailureLocations',0
                dw 2D8h, 7453h, 7461h
                dq 6E696F5008007375h, 4174726150080074h, 676154766972505Fh
                db 73h
dword_140022A71 dd 0B060A00h            ; DATA XREF: sub_1406D45F0+14AA39↓o
                db 3, 0, 8
                db    0
                align 4
                dd 53000020h
                db    0
                db 80h, 0, 48h, 69h, 76h, 65h, 4Ch
aOadfileinacces db 'oadFileInaccessible',0
aStatus_13      db 'Status',0
                db 88h, 0Eh, 53h, 65h, 63h
aUritydescripto_0 db 'urityDescriptor',0
                dq 4449537265735501h, 5F41747261501300h, 7367615476697250h
                db 0, 0Ah, 6
byte_140022AD3  db 0Bh, 5, 3 dup(0)     ; DATA XREF: DoScreenSave_0+19DF9C↓o
                db 0
                dd 200000h
                align 2
                dw 5Ah
                db  80h
                align 2
aTruncatedprima db 'TruncatedPrimaryHiveRecovered',0
aHivelengthfrom db 'hiveLengthFromHeader',0
aHivelengthondi db 8,'hiveLengthOnDisk',0
aPartaPrivtags_5 db 8,'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140022B39  db 0Bh, 4, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_1408764D4+64↓o
                dq 80002800000000h
aTransactionabo db 'TransactionAborted',0
aKeypath_2      db 'keyPath',0
                db 16h, 72h, 65h, 61h, 73h
                dq 2050B0608006E6Fh
                db 1, 2 dup(0)
                dd 0
                align 8
                db  19h
                align 2
                dw 80h, 6D43h, 5470h
aRansmgrcommitu db 'ransMgrCommitUoW',0
                db 6, 0Bh, 5, 2 dup(1), 2 dup(0)
                dq 8000190000000000h, 6E617254706D4300h, 6D6D6F4372674D73h
aItuow          db 'itUoW',0
                db 6
                db 0Bh                  ; DATA XREF: sub_140767BC0+135↓o
                db    5
                db 2, 1, 5 dup(0)
                db    0
                align 2
                dw 16h, 80h, 6D43h
aPtransmgrcommi db 'pTransMgrCommit',0
                db 6
                db 0Bh, 5, 2 dup(1), 3 dup(0)
                                        ; DATA XREF: sub_140767BC0+78↓o
                dq 80001600000000h, 736E617254706D43h, 696D6D6F4372674Dh
                db 74h, 0, 6
byte_140022BFB  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_14076F19C+D93D4↓o
                dq 1E000000000000h, 676F4C706D430080h, 696F706B63656843h
                dq 757461745300746Eh
                db 73h, 0, 88h, 0Eh, 6
byte_140022C25  db 0Bh, 5, 0            ; DATA XREF: sub_140876A24+122↓o
                dq 1, 43676F4C0080001Dh, 72656E6961746E6Fh, 61655274696D694Ch
aChed           db 'ched',0
                db 6
word_140022C4E  dw 50Bh                 ; DATA XREF: sub_140762608+E0D8C↓o
                dq 100h, 6464410080002700h, 61746E6F43676F4Ch, 636F4C0072656E69h
                dq 5308006E6F697461h, 0E88007375746174h
                db 6
byte_140022C81  db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_140762608+E0CFA↓o
                dq 80002700000000h, 6F43676F4C646441h, 72656E6961746Eh
                dq 6E6F697461636F4Ch, 7375746174530800h
                db 0, 88h, 0Eh, 6
dword_140022CB4 dd 50Bh                 ; DATA XREF: sub_140877B9C+5A↓o
                db 2 dup(0)
                dd 0
                db 0
                dd 800024h
aUnsupportedope db 'UnsupportedOperation',0
                dq 6F6974617265704Fh
                dd 608006Eh
dword_140022CE4 dd 50Bh                 ; DATA XREF: sub_140877E2C+55↓o
                db 2 dup(0)
                dd 400000h
                dw 4600h
                dq 7075736E55008000h, 704F646574726F70h
                db 65h
                dd 69746172h
aOnAggregate    db 'on(Aggregate)',0
aOperation      db 'Operation',0
aCount_6        db 8,'Count',0
                dd 72615008h
                db 74h, 41h, 5Fh
                dd 76697250h
aTags_0         db 'Tags',0
                db 0Ah, 6
word_140022D36  dw 50Bh                 ; DATA XREF: sub_140878064+55↓o
                db 4 dup(0)
                dd 400000h
                dq 7669480080004800h, 69614664616F4C65h
                db 6Ch, 65h, 64h, 54h
                dd 6575516Fh
aRylogfilesize  db 'ryLogFileSize',0
aFiletype       db 'fileType',0
                db 4
aStatus_14      db 'status',0
                db 88h
                dq 505F41747261500Eh
                db 72h, 69h, 76h, 54h, 61h, 67h, 73h
dword_140022D87 dd 0B060A00h            ; DATA XREF: sub_14066B73C+131↓o
                db 5, 4 dup(0)
                db    0
                db 4 dup(0), 8Ah, 0, 80h
                db    0
aLogfileswap    db 'LogFileSwap',0
aSwapreason     db 'swapReason',0
                db    4
aHivelength     db 'hiveLength',0
aVolumelogsizec db 8,'volumeLogSizeCap',0
aEffectivelogsi db 8,'effectiveLogSizeCap',0
aLogdatalength  db 8,'logDataLength',0
aLogfilesize    db 8,'logFileSize',0
aLogentries     db 8,'logEntries',0
aTimesincelasts db 8,'timeSinceLastSwap',0
                dw 609h
unk_140022E20   db  0Bh                 ; DATA XREF: sub_1405E7548+217↓o
                db 5, 0, 8, 4 dup(0)
                db  40h ; @
                db 2 dup(0), 39h, 0, 80h, 0, 48h
aIveloadapphive db 'iveLoadAppHiveImpersonationRequired',0
aPartaPrivtags_6 db 'PartA_PrivTags',0
                db 0Ah, 6
byte_140022E65  db 0Bh, 5, 0            ; DATA XREF: sub_14087E2D0+3E5↓o
                db 3 dup(0)
                dd 400000h
                align 10h
                db  3Ch ; <
                align 2
                dw 80h, 6D43h, 6153h
aVemergedkeysat db 'veMergedKeysAttemptToSaveMasterHive',0
aPartaPrivtags_7 db 'PartA_PrivTags',0
                db 0Ah, 6
byte_140022EAD  db 0Bh, 5, 0            ; DATA XREF: sub_14087F880+195↓o
                db    1
                db 4 dup(0), 40h, 2 dup(0)
                db  3Bh ; ;
                align 2
                dw 80h, 7355h, 6761h
aEsubscriptionu db 'eSubscriptionUpdateCorruptedBuffer',0
aPartaPrivtags_8 db 'PartA_PrivTags',0
                dw 60Ah
dword_140022EF4 dd 100050Bh             ; DATA XREF: sub_14087F524+208↓o
                db    0
                align 4
                dd 3E000040h
                db    0
                db 80h, 0, 46h, 65h, 61h, 74h, 75h
aReconfiguratio db 'reConfigurationUpdateCorruptedBuffer',0
aPartaPrivtags_9 db 'PartA_PrivTags',0
                db 0Ah, 6
word_140022F3E  dw 50Bh                 ; DATA XREF: sub_1408804F4+C0↓o
                db 4 dup(0)
                dd 200000h
                db    0
                db 36h, 0, 80h, 0, 43h, 6Fh, 6Dh
aMitDeleteUowFa db 'mit delete UOW failed',0
aStatus_15      db 'Status',0
                db 88h, 0Eh, 50h
aArtaPrivtags   db 'artA_PrivTags',0
                dw 60Ah
unk_140022F80   db  0Bh                 ; DATA XREF: sub_1408823EC+349↓o
                db 5, 0, 8, 4 dup(0)
                db    0
                db 2 dup(0), 51h, 0, 80h, 0, 48h
aIveloadlogsfou db 'iveLoadLogsFound',0
aValidlogs      db 'validLogs',0
                db 4, 6Ch, 6Fh, 67h, 31h
                db 54h, 79h, 70h
                dd 6C040065h
aOg2type        db 'og2Type',0
                db 4
aLog1sequence   db 'log1Sequence',0
aLog2sequence   db 8,'log2Sequence',0
                db 8, 6
byte_140022FDD  db 0Bh, 5, 0            ; DATA XREF: sub_1408823EC+595↓o
                dq 400000000008h, 6576694800800028h, 4D676F4C64616F4Ch
                db 69h, 73h
                dd 6374616Dh
                dw 68h
aPartaPrivtags_10 db 'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140023011  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408823EC+464↓o
                dd 400000h
                align 4
                dd 800031h
aLogsequencenum db 'LogSequenceNumberGapDetected',0
aPartaPrivtags_11 db 'PartA_PrivTags',0
                db 0Ah, 6
word_14002304E  dw 50Bh                 ; DATA XREF: sub_1408834A0+84↓o
                db    0
                db 8, 6 dup(0)
                db    0
                db 2Ch, 0, 80h, 0, 48h, 69h, 76h
aEloadlogunread db 'eLoadLogUnreadable',0
aLogtype        db 'logType',0
                db 4, 73h, 74h, 61h, 74h
                db 75h, 73h, 0, 88h, 0Eh, 6
                dw 50Bh                 ; DATA XREF: sub_140883144+88↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 3Fh, 0, 80h, 0, 55h, 6Eh, 63h
aLassifiedreade db 'lassifiedReadError',0
aCount_7        db 'Count',0
                db 89h, 4 dup(80h), 71h, 53h
aTatus_1        db 'tatus',0
                dw 0E88h
aPartaPrivtags_12 db 'PartA_PrivTags',0
                db 0Ah
                db 6
byte_1400230D1  db 0Bh, 5, 0, 8, 3 dup(0)
                                        ; DATA XREF: sub_140883240+4F↓o
                dq 80003E00000000h
aHiveloadlogine db 'HiveLoadLogIneligible',0
aLogtype_0      db 'logType',0
                dw 6D04h
aInimumsequence db 'inimumSequence',0
aSequence       db 8,'sequence',0
                db 8, 6
byte_14002311B  db 0Bh, 5, 0, 8, 0      ; DATA XREF: sub_140883308+13D↓o
                db    0
                db 5 dup(0), 89h, 0
                db  80h
                align 2
aHiveloadloginv db 'HiveLoadLogInvalid',0
aLogtype_1      db 'logType',0
                db 4, 73h, 69h
aGnature        db 'gnature',0
aSequence1      db 8,'sequence1',0
aSequence2      db 8,'sequence2',0
aTimestamp      db 8,'timestamp',0
aExpectedtimest db 0Ah
                db 'expectedTimestamp',0
aType_6         db 0Ah
                db 'type',0
aLength         db 8,'length',0
aChecksum       db 8,'checksum',0
aExpectedchecks db 8,'expectedChecksum',0
                dw 608h
unk_1400231B0   db  0Bh                 ; DATA XREF: sub_14077B76C+D34FA↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 4Ah, 0, 80h, 0, 43h
aMpaddremovecon db 'mpAddRemoveContainerToCLFSLog',0
aAddoperation   db 'AddOperation',0
                db 84h, 3, 53h, 74h, 61h
                dq 6F430E8800737574h, 4E72656E6961746Eh
                db 61h, 6Dh, 65h, 0, 16h, 6
word_140023206  dw 20Bh                 ; DATA XREF: sub_1405D2230+2175A0↓o
                dq 0
                dq 6B6E550080002000h, 74436F496E776F6Eh, 746E6F436F49006Ch
                dq 65646F436C6F72h
                db 8, 6
word_140023232  dw 40Bh, 1, 0           ; DATA XREF: sub_1405D2230+217553↓o
                dq 8000190000000000h, 49006C74436F4900h, 6C6F72746E6F436Fh
aCode           db 'Code',0
                db 8, 6
byte_140023257  db 0Bh                  ; DATA XREF: sub_1405D2230+217674↓o
                dq 204h, 6F490080001B0000h, 6C706D6F436C7443h, 7461745300657465h
                db 75h, 73h, 0, 88h, 0Eh, 6
                dw 20Bh                 ; DATA XREF: sub_1405D2230+21750B↓o
                dq 0
                db    0
                db 36h, 0, 80h, 0, 49h, 4Fh, 43h
aTlCalledFromIn db 'TL Called from inside Container',0
aIocontrolcode  db 'IoControlCode',0
                dw 608h
byte_1400232C0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140883FC0+48↓o
                dd 0
                dw 1100h, 8000h, 4400h
aRiverunload    db 'riverUnload',0
                db 6
byte_1400232DD  db 0Bh, 5, 0            ; DATA XREF: sub_1405D28C4+17F↓o
                db 3 dup(0)
                dd 0
                align 8
                dq 74736F5000800044h, 746172656D756E45h, 666E490079654B65h
                dq 6E6F6974616D726Fh, 4514007373616C43h, 65746172656D756Eh
                dq 6E6F435F79654B64h, 615072656E696174h
                db 74h, 68h, 0, 16h, 6
byte_14002332D  db 0Bh, 2, 0            ; DATA XREF: sub_1408856A0+193↓o
                dq 0
                db  32h ; 2
                align 2
                dw 80h, 7250h, 5165h
aUerykeynamefai db 'ueryKeyNameFailed',0
aContainerpath  db 'ContainerPath',0
                dq 73757461745316h
                db 88h, 0Eh, 6
byte_14002336B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140884B3C+1ED↓o
                db 0
                dd 0
                align 2
                dw 1Dh
                dq 616F4C6572500080h, 7362410079654B64h, 7461506574756C6Fh
                db 68h, 0, 16h, 6
                dd 50Bh                 ; DATA XREF: sub_1408856A0+1B6↓o
                db 2 dup(0)
                dd 0
                dw 3300h
                db    0
                db 80h, 0, 50h, 72h, 65h, 51h, 75h
aErykeynamesucc db 'eryKeyNameSuccess',0
aContainerpath_0 db 'ContainerPath',0
                dq 73757461745316h
                db 88h, 0Eh, 6
byte_1400233D3  db 0Bh, 2, 3 dup(0)     ; DATA XREF: sub_1405D28C4+687↓o
                db    0
                db 5 dup(0), 74h, 0
                db  80h
                align 2
aPostenumeratek db 'PostEnumerateKeyFailed',0
aInformationcla db 'InformationClass',0
                dw 4514h, 756Eh, 656Dh
aRatedkeyContai db 'ratedKey_ContainerPath',0
                db 16h
aFullenumerated db 'FullEnumeratedKey_ContainerPath',0
                dq 73757461745316h
                db 88h, 0Eh, 6
byte_140023453  db 0Bh, 2, 3 dup(0)     ; DATA XREF: sub_140884B3C+A65↓o
                dq 1E000000000000h, 616F4C6572500080h, 6C69614679654B64h
                dq 7574617453006465h
                db 73h, 0, 88h, 0Eh, 6
byte_14002347D  db 0Bh, 5, 0            ; DATA XREF: sub_1405D3540+386↓o
                db 3 dup(0)
                dd 0
                align 8
                db  37h ; 7
                align 2
                dw 80h, 6F50h, 7473h
aOpenorcreatere db 'OpenOrCreateReparseDetected',0
aHostpath       db 'HostPath',0
                db 16h, 53h, 74h
aAtus           db 'atus',0
                db 88h, 0Eh, 6
byte_1400234C0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1405D463C+2157D3↓o
                dd 0
                dw 3200h, 8000h, 5000h
aOstquerykey    db 'ostQueryKey',0
aInformationcla_0 db 'InformationClass',0
                db 14h, 43h, 6Fh
aNtainerpath    db 'ntainerPath',0
                db 16h, 6
                dw 20Bh                 ; DATA XREF: sub_1405D463C+2158F2↓o
                dq 0
                db    0
                db 2Fh, 0, 80h, 0, 50h, 6Fh, 73h
aTquerykeyfaile db 'tQueryKeyFailed',0
aContainerpath_1 db 'ContainerPath',0
                dw 5316h
aTatus_2        db 'tatus',0
                dw 0E88h
                db 6
byte_140023539  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140884A68+94↓o
                dd 0
                align 4
                dd 800015h
aFlushkeySucces db 'FlushKey Success',0
                db 6
word_14002355A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140884A68+57↓o
                dd 0
                dd 80001600h
                dq 654B6873756C4600h, 7373617079422079h
                db 65h, 64h, 0, 6
dword_14002357C dd 50Bh                 ; DATA XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+460↓o
                db 2 dup(0)
                dd 0
                dw 3300h
                db    0
                db 80h, 0, 50h, 72h, 65h, 4Fh, 70h
aEnorcreateglob db 'enOrCreateGlobalReparse',0
aNewpath        db 'NewPath',0
                dq 73757461745316h
                db 88h, 0Eh, 6
byte_1400235BB  db 0Bh, 2, 3 dup(0)     ; DATA XREF: sub_1408856A0+C3↓o
                dq 23000000000000h, 6575516572500080h, 6D614E79654B7972h
                dq 6961746E6F430065h, 6874615072656Eh
                db 16h, 6
word_1400235EA  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1405D463C+215864↓o
                dd 0
                dd 80005300h
                db    0
aPostquerykeyfi db 'PostQueryKeyFinished',0
aContainerpath_2 db 'ContainerPath',0
                dd 666E4916h
                db 6Fh, 72h, 6Dh, 61h, 74h, 69h
                dd 6C436E6Fh
                dw 7361h, 73h, 5014h
aOstinfoReturns db 'ostInfo->ReturnStatus',0
                dw 0E88h
                db 6
byte_140023649  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140884B3C+97E↓o
                dd 0
                align 4
                dd 80003Ch
aPreloadkeysucc db 'PreLoadKeySuccess',0
aAbsolutepath   db 'AbsolutePath',0
                db 16h
aHostmountpath  db 'HostMountPath',0
                dw 5316h
aTatus_3        db 'tatus',0
                dw 0E88h
                db 6
byte_140023691  db 0Bh, 2, 5 dup(0)     ; DATA XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+170↓o
                dq 80002800000000h
aPreopenorcreat db 'PreOpenOrCreateFailed',0
aKey_1          db 'Key',0
                dw 5316h, 6174h, 7574h
                db 73h, 0, 88h, 0Eh, 6
byte_1400236C5  db 0Bh, 2, 0            ; DATA XREF: sub_1405D3540+279↓o
                align 10h
                db  2Eh ; .
                align 2
                dw 80h, 6F50h, 7473h
aOpenorcreatefa db 'OpenOrCreateFailed',0
aHostpath_0     db 'HostPath',0
                dd 61745316h
                db 74h, 75h, 73h, 0, 88h, 0Eh, 6
byte_1400236FF  db 0Bh                  ; DATA XREF: sub_140374DD0+2E5↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 6Ah, 80h, 6544h
aNyexclusiveopl db 'nyExclusiveOplockForWritableMappedSection',0
aCount_8        db 'Count',0
                dq 654E718080808089h, 6B636F6C704F7478h, 4F14006574617453h
                dq 6174536B636F6C70h, 7472615014006574h, 6154766972505F41h
                db 67h, 73h, 0, 0Ah, 6
byte_140023775  db 0Bh, 5, 0            ; DATA XREF: sub_14021A330+348↓o
                db 3 dup(0)
                dd 400000h
                align 20h
                db 67h, 0, 80h, 0, 44h, 65h
                dd 6853796Eh
aArableoplockfo db 'arableOplockForWritableMappedSection',0
aCount_9        db 'Count',0
                db 89h, 2 dup(80h)
                dq 7269736544718080h, 6B636F6C704F6465h, 6B636F6C704F1400h
                dq 5014006574617453h, 6972505F41747261h
                db 76h, 54h, 61h
                dd 0A007367h
                db 6
byte_1400237E8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: FsRtlCheckOplockForFsFilterCallback+1AE↓o
                dd 400000h
                dw 6A00h, 8000h, 4200h
aReakoplockonwr db 'reakOplockOnWritableMappedSection',0
aCount_10       db 'Count',0
                dq 7953718080808089h, 80065707954636Eh, 746F725065676150h
                dq 14006E6F69746365h, 74536B636F6C704Fh, 7261501400657461h
                db 74h, 41h, 5Fh, 50h
                dd 54766972h
                db 61h, 67h, 73h, 0, 0Ah, 6
word_14002385E  dw 50Bh                 ; DATA XREF: sub_140A74F70+18106↓o
                db 4 dup(0)
                dd 400000h
                dq 6D75490080004300h, 5000737574617453h, 6972505F41747261h
                dq 490A007367615476h, 676E696E6E755273h, 616E456D75490D00h
                dq 746E656D656C62h, 696C6F506D754908h
                db 63h, 79h, 0, 8, 6
byte_1400238AD  db 0Bh, 5, 0            ; DATA XREF: sub_140A74F70+18047↓o
                db 3 dup(0)
                dd 400000h
                align 8
                db  30h ; 0
                align 2
                dw 80h, 6645h, 5269h
aUntimeservices db 'untimeServices',0
aVersion_3      db 'Version',0
                dd 67615016h
aEprotection    db 'eProtection',0
                db 0Dh
                db 6
                db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140899090+2AF↓o
                dd 200000h
                align 4
                dd 800042h
aOpenvmmemorypa db 'OpenVMMemoryPartitionFailure',0
                db 6Fh, 70h, 65h
                dq 697469747261506Eh
                db 6Fh
                dd 6961466Eh
                db 6Ch, 65h, 64h
                dq 617453746E038400h
                db 74h, 75h, 73h, 0, 88h, 0Eh, 6
byte_140023937  db 0Bh                  ; DATA XREF: sub_1408981A0+12D↓o
                db 5, 4 dup(0)
                dd 200000h
                align 2
                dw 4Dh, 80h, 7257h
aItedeferreddum db 'iteDeferredDumpDataEnded',0
aTotalbytes     db 'totalBytes',0
aWritedeferredd db 0Ah
                db 'writeDeferredDumpDataDuration_ms',0
                dw 60Ah
byte_140023990  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140899090+1D0↓o
                dd 200000h
                dw 5600h, 8000h, 4100h
aLlocationfromv db 'llocationFromVMMemoryPartitionFailure',0
aAllocationfrom db 'allocationFromPartitionFailed',0
                dd 746E0384h
aStatus_16      db 'Status',0
                db 88h
                db 0Eh, 6
word_1400239F2  dw 50Bh, 2, 0           ; DATA XREF: sub_140897A18+6EF↓o
                db 2 dup(0)
                dd 6B000020h
                dw 8000h
                db    0
aCapturedumpend db 'CaptureDumpEnded',0
aNtstatus_0     db 'ntStatus',0
                db 88h, 0Eh, 64h, 65h, 66h
aErdumpfilewrit db 'erDumpFileWrite',0
                db  84h
                db 3, 61h, 62h, 6Fh, 72h, 74h, 49h
aFmemorypressur db 'fMemoryPressure',0
                db  84h
                db 3, 74h, 6Fh, 74h, 61h, 6Ch, 44h
aUmpcreationdur db 'umpCreationDuration_ms',0
                db 0Ah
                db 6
byte_140023A69  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140509570+129↓o
                dd 200000h
                align 4
                dd 800084h
aCorralprocesso db 'CorralProcessors',0
aCorralduration db 'corralDuration_ms',0
aDisableinterru db 0Ah
                db 'disableInterruptsDuration_ms',0
aSavesupervisor db 0Ah
                db 'saveSupervisorStateDuration_ms',0
aSuspendclockti db 0Ah
                db 'suspendClockTimerDuration_ms',0
                db 0Ah
                db 6
byte_140023AF9  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14050A278+129↓o
                dd 200000h
                align 4
                dd 800089h
aUncorralproces db 'UncorralProcessors',0
aUncorraldurati db 'uncorralDuration_ms',0
aEnableinterrup db 0Ah
                db 'enableInterruptsDuration_ms',0
aRestoresupervi db 0Ah
                db 'restoreSupervisorStateDuration_ms',0
aResumeclocktim db 0Ah
                db 'resumeClockTimerDuration_ms',0
                db 0Ah, 6
word_140023B8E  dw 50Bh                 ; DATA XREF: sub_140897A18+353↓o
                db 1, 4 dup(0)
                dd 2000h
                db 2Fh, 0, 80h, 0, 43h, 61h, 70h
aTuredumpstarte db 'tureDumpStarted',0
aBufferallocati_0 db 'bufferAllocationScheme',0
                db 8
                db 6
byte_140023BC9  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140897A18+5DC↓o
                dd 200000h
                align 4
                dd 80003Dh
aWritedumpdatae db 'WriteDumpDataEnded',0
aTotalbytes_0   db 'totalBytes',0
aWritedumpdatad db 0Ah
                db 'writeDumpDataDuration_ms',0
                db 0Ah, 6
word_140023C12  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140509A58+E6↓o
                dd 200000h
                dd 80003C00h
                db    0
aMarkimportantd db 'MarkImportantDumpData',0
aMarkimportantd_0 db 'markImportantDumpDataDuration_ms',0
                db 0Ah, 6
word_140023C5A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140509F3C+101↓o
                dd 200000h
                dd 80006200h
                db    0
aPopulatebitmap db 'PopulateBitmapForDump',0
aPopulatebitmap_0 db 'populateBitmapForDumpDuration_ms',0
aRemovesystemca db 0Ah
                db 'removeSystemCacheFromDumpDuration_ms',0
                dw 60Ah
byte_140023CC8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1405091F0+DB↓o
                dd 200000h
                dw 3600h, 8000h, 4800h
aVlcollectlived db 'vlCollectLiveDump',0
aHvlcollectlive db 'hvlCollectLiveDumpDuration_ms',0
                db 0Ah, 6
word_140023D0A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140508F80+DB↓o
                dd 200000h
                dd 80003400h
                db    0
aDumpdatabuffer db 'DumpDataBuffering',0
aDumpdatabuffer_0 db 'dumpDataBufferingDuration_ms',0
                db 0Ah, 6
word_140023D4A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1405090C0+D6↓o
                dd 200000h
                dd 80004200h
                db    0
aGenerateiptsec db 'GenerateIptSecondaryData',0
aGenerateiptsec_0 db 'generateIptSecondaryDataDuration_ms',0
                dw 60Ah
byte_140023D98  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140509430+E6↓o
                dd 200000h
                dw 4000h, 8000h, 4300h
aAptureprocesso db 'aptureProcessorContext',0
aCaptureprocess db 'captureProcessorContextDuration_ms',0
                dw 60Ah
dword_140023DE4 dd 50Bh                 ; DATA XREF: sub_140509B98+E6↓o
                db 2 dup(0)
                dd 200000h
                dw 3A00h
                db    0
                db 80h, 0, 4Dh, 61h, 72h, 6Bh, 52h
aEquireddumpdat db 'equiredDumpData',0
aMarkrequireddu db 'markRequiredDumpDataDuration_ms',0
                db 0Ah, 6
word_140023E2A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_14089833C+62B↓o
                dd 200000h
                dd 80007D00h
                db    0
aCapturedumpmem db 'CaptureDumpMemoryAllocationEnded',0
aAllocatedpagec db 'allocatedPageCount',0
aAddhypervisorp db 0Ah
                db 'addHypervisorPages',0
                db 84h, 3, 68h, 76h, 50h, 61h, 67h
aEcount         db 'eCount',0
aSkpagecount    db 0Ah
                db 'skPageCount',0
aMemallocdurati db 0Ah
                db 'memAllocDuration_ms',0
                db 0Ah, 6
byte_140023EB3  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1409AE44C+3DB↓o
                db 0
                dd 200000h
                db 2 dup(0), 1
                db  80h
                align 2
aCapturedumpmem_0 db 'CaptureDumpMemoryEstimateEnded',0
aMemoryestimate db 'memoryEstimateDuration_ms',0
aSystemquiesced db 0Ah
                db 'systemQuiescedDuration_ms',0
aEndmirroringph db 0Ah
                db 'endMirroringPhaseEndIntervalDuration_ms',0
aTotalmirrorphy db 0Ah
                db 'totalMirrorPhysicalMemoryCallbackDuration_ms',0
aTotalmirrorphy_0 db 0Ah
                db 'totalMirrorPhysicalMemoryCallbackBytes_ms',0
aHvlcalculateli db 0Ah
                db 'hvlCalculateLiveDumpSizeDuration_ms',0
                db 0Ah, 6
byte_140023FBF  db 0Bh                  ; DATA XREF: sub_1409ADB24+278↓o
                db 5, 4 dup(0)
                dd 200000h
                align 2
                dw 116h, 80h, 6143h
aPturedumpmemor db 'ptureDumpMemoryCaptureEnded',0
aMemorycaptured db 'memoryCaptureDuration_ms',0
aSystemquiesced_0 db 0Ah
                db 'systemQuiescedDuration_ms',0
aEndmirroringph_0 db 0Ah
                db 'endMirroringPhaseEndIntervalDuration_ms',0
aTotalmirrorphy_1 db 0Ah
                db 'totalMirrorPhysicalMemoryCallbackDuration_ms',0
aTotalmirrorphy_2 db 0Ah
                db 'totalMirrorPhysicalMemoryCallbackBytes_ms',0
aHvlcollectlive_0 db 0Ah
                db 'hvlCollectLivedumpDuration_ms',0
aDumpdatabuffer_1 db 0Ah
                db 'dumpDataBufferingDuration_ms',0
                db 0Ah
                db 6
byte_1400240E1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1409AE44C+215↓o
                dd 200000h
                align 4
                dd 800040h
aQueryhvldumpsi db 'QueryHvlDumpSizeFailure',0
aHvlquerydumpsi db 'hvlQueryDumpSizeFailed',0
                db 84h
                dq 7574617453746E03h
                db 73h, 0, 88h, 0Eh, 6
byte_14002412D  db 0Bh, 5, 0            ; DATA XREF: sub_14089B06C+112↓o
                db 3 dup(0)
                dd 200000h
                align 8
                db  53h ; S
                align 2
                dw 80h, 6E45h, 6D75h
aEratevariables db 'erateVariables',0
aInformationcla_1 db 'informationClass',0
aRequiredlength db 8,'requiredLength',0
aStatus_17      db 8,'status',0
                dq 7265746C69660E88h, 64656469766F7250h
                db 0, 84h, 3, 6
dword_14002418C dd 50Bh                 ; DATA XREF: sub_14089B354+138↓o
                db 2 dup(0)
                dd 200000h
                dw 7700h
                db    0
                db 80h, 0, 51h, 75h, 65h, 72h, 79h
aVariables_0    db 'Variables',0
aAttributes     db 'attributes',0
aMaximumvariabl db 8,'maximumVariableStorageSize',0
aRemainingvaria db 0Ah
                db 'remainingVariableStorageSize',0
aMaximumvariabl_0 db 0Ah
                db 'maximumVariableSize',0
aStatus_18      db 0Ah
                db 'status',0
                db 88h, 0Eh, 6
byte_14002420F  db 0Bh                  ; DATA XREF: sub_14089B1CC+13A↓o
                db 5, 4 dup(0)
                dd 200000h
                align 2
                dw 4Ch, 80h, 6547h
aTvariable      db 'tVariable',0
aVariablename   db 'variableName',0
                db 1
aVendorguid     db 'vendorGuid',0
                db 0Fh, 76h, 61h, 6Ch, 75h
aElength        db 'eLength',0
aAttributes_0   db 8,'attributes',0
aStatus_19      db 8,'status',0
                db 88h, 0Eh, 6
byte_140024267  db 0Bh                  ; DATA XREF: sub_14089B4DC+119↓o
                db 5, 4 dup(0)
                dd 200000h
                align 2
                dw 4Ch, 80h, 6553h
aTvariable_0    db 'tVariable',0
aVariablename_0 db 'variableName',0
                db 1
aVendorguid_0   db 'vendorGuid',0
                db 0Fh, 76h, 61h, 6Ch, 75h
aElength_0      db 'eLength',0
aAttributes_1   db 8,'attributes',0
aStatus_20      db 8,'status',0
                db 88h, 0Eh, 6
byte_1400242BF  db 0Bh                  ; DATA XREF: sub_140A54474+9F5↓o
                db    4
                db 6 dup(0), 40h
                db    0
                align 2
                dw 9Ah, 80h, 734Fh
aLoadertime     db 'loaderTime',0
aStarttime      db 'StartTime',0
aEndtime        db 0Ah
                db 'EndTime',0
aPreloadendtime db 0Ah
                db 'PreloadEndTime',0
aTcbloaderstart db 0Ah
                db 'TcbLoaderStartTime',0
aLoadvsmtime    db 0Ah
                db 'LoadVsmTime',0
aLaunchvsmtime  db 0Ah
                db 'LaunchVsmTime',0
aLoadhypervisor db 0Ah
                db 'LoadHypervisorTime',0
aLaunchhypervis db 0Ah
                db 'LaunchHypervisorTime',0
aFrequency      db 0Ah
                db 'Frequency',0
                db 0Ah, 6
byte_140024365  db 0Bh, 5, 0            ; DATA XREF: sub_14077187C+D7B23↓o
                db 3 dup(0)
                dd 400000h
                align 10h
                db  4Bh ; K
                align 2
                dw 80h, 6E50h, 4370h
aOmpareinterrup db 'ompareInterruptInformation',0
aReason         db 'Reason',0
                dw 5302h, 7A69h, 3165h
                dq 32657A69530800h, 4965636976654408h, 4965636E6174736Eh
                db 64h, 0, 16h, 6
dword_1400243BC dd 50Bh                 ; DATA XREF: sub_14077187C+D7A2C↓o
                db 2 dup(0)
                dd 400000h
                dw 3D00h
                db    0
                db 80h, 0, 50h, 6Eh, 70h, 43h, 6Fh
aMpareinterrupt db 'mpareInterruptInformation',0
aReason_0       db 'Reason',0
                db 2, 44h, 65h, 76h, 69h, 63h, 65h
aInstanceid     db 'InstanceId',0
                db 16h, 6
byte_140024405  db 0Bh, 5, 0            ; DATA XREF: sub_14077187C+D7AC3↓o
                db 3 dup(0)
                dd 400000h
                align 10h
                db  4Bh ; K
                align 2
                dw 80h, 6E50h, 4370h
aOmpareinterrup_0 db 'ompareInterruptInformation',0
aReason_1       db 'Reason',0
                dw 5302h, 7A69h, 3165h
                dq 32657A69530800h, 4965636976654408h, 4965636E6174736Eh
                db 64h, 0, 16h, 6
dword_14002445C dd 50Bh                 ; DATA XREF: sub_140761060+E1974↓o
                db 2 dup(0)
                dd 400000h
                dw 4900h
                db    0
                db 80h, 0, 41h, 2 dup(67h), 72h, 65h
aGateinterruptc db 'gateInterruptConnection',0
aCount_11       db 'Count',0
                dw 8089h
                dq 6E6E6F4371808080h, 384006465746365h, 72505F4174726150h
                dq 0A00736761547669h
                db 6
byte_1400244B1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408B3378+BB↓o
                dd 400000h
                align 4
                dd 800053h
aDriverblocked  db 'DriverBlocked',0
aPartaPrivtags_13 db 'PartA_PrivTags',0
aFilename_1     db 0Ah
                db 'FileName',0
                db 1
aEntryguid      db 'EntryGuid',0
                dw 500Fh, 6C6Fh, 6369h
aYblockreason   db 'yBlockReason',0
aStatus_21      db 8,'Status',0
                db 88h, 0Eh, 6
byte_140024510  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408B38D0+5F↓o
                dd 400000h
                dw 5200h, 8000h, 5300h
aEcuredeviceenu db 'ecureDeviceEnumerated',0
aDeviceinstance_0 db 'DeviceInstanceId',0
                db 16h
aSecuredevicest db 'SecureDeviceState',0
aUnprotectstatu db 8,'UnprotectStatus',0
                db 88h, 0Eh, 6
word_14002456E  dw 50Bh                 ; DATA XREF: sub_1407A3A74+B240E↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 21h, 0, 80h, 0, 44h, 6Dh, 61h
aGuardsystempol db 'GuardSystemPolicy',0
aPolicy_0       db 'Policy',0
                db 8, 6
byte_14002459B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_14076B904+75↓o
                db 0
                dd 400000h
                align 2
                dw 58h
                db  80h
                align 2
aAggregatedmagu db 'AggregateDmaGuardDevicePolicy',0
aCount_12       db 'Count',0
                dw 8089h
                db  80h
                db 2 dup(80h), 71h, 44h, 65h, 76h, 69h
aCeinstanceid   db 'ceInstanceId',0
                db 16h, 50h, 6Fh
aLicy           db 'licy',0
aPartaPrivtags_14 db 8,'PartA_PrivTags',0
                db 0Ah, 6
byte_1400245FF  db 0Bh                  ; DATA XREF: sub_1408B3480+52↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 40h, 80h, 6D44h
aAguardiommudev db 'aGuardIommuDeviceProperties',0
aDeviceinstance_1 db 'DeviceInstanceId',0
                db 16h, 50h, 72h
aOperties       db 'operties',0
                db 8, 6
byte_14002464B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1408B3544+18F↓o
                db 0
                dd 400000h
                align 2
                dw 0B9h
                db  80h
                align 2
aRebalanceresul db 'RebalanceResult',0
aDeviceinstance_2 db 'DeviceInstanceId',0
                db 16h, 53h, 65h, 72h, 76h
aIcename        db 'iceName',0
                db  16h
aDevicecount    db 'DeviceCount',0
aSubtreerootins db 8,'SubtreeRootInstanceId',0
                dd 62755316h
aTreeincludesro db 'treeIncludesRoot',0
                db 84h, 3, 52h, 65h, 62h, 61h, 6Ch
aAnceduetodynam db 'anceDueToDynamicPartitioning',0
                db 84h, 3, 52h
aEason          db 'eason',0
aFailure        db 8,'Failure',0
aDurationinms   db 8,'DurationInMs',0
aEndtime_0      db 0Ah
                db 'EndTime',0
                dw 60Ah
                db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408B3294+5C↓o
                dd 400000h
                dw 4B00h, 8000h, 4400h
aOckdeviceenume db 'ockDeviceEnumerated',0
aDeviceinstance_3 db 'DeviceInstanceId',0
                db 16h, 44h, 6Fh
aCkstatus       db 'ckStatus',0
aEnumerationres db 8,'EnumerationResult',0
                db 88h, 0Eh, 6
byte_140024767  db 0Bh                  ; DATA XREF: sub_1408B3770+115↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 5Eh, 80h, 6552h
aQuestdevicerem db 'questDeviceRemovalForReset',0
aDeviceinstance_4 db 'DeviceInstanceId',0
                dd 72655316h
aVicename       db 'viceName',0
                db 16h, 44h, 65h, 76h, 4Eh, 6Fh, 64h
aEstate         db 'eState',0
aFlags_0        db 8,'Flags',0
aResult         db 8,'Result',0
                dw 0E88h
                db 6
byte_1400247D1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408B2FC0+198↓o
                dd 400000h
                align 4
                dd 800087h
aDeviceremovalf db 'DeviceRemovalForResetComplete',0
aDeviceinstance_5 db 'DeviceInstanceId',0
                db 16h
aServicename    db 'ServiceName',0
                dd 76654416h
aNodestate      db 'NodeState',0
aStatus_22      db 8,'Status',0
                dw 0E88h, 6552h, 7274h
aYcount         db 'yCount',0
aRetryinterval  db 8,'RetryInterval',0
aVetotype       db 9,'VetoType',0
aVetoname       db 8,'VetoName',0
                dw 616h
dword_140024864 dd 50Bh                 ; DATA XREF: sub_14074ACD8+7F↓o
                db 2 dup(0)
                dd 800000h
                dw 6D00h
                db    0
                db 80h, 0, 41h, 2 dup(67h), 72h, 65h
aGatecleardevno db 'gateClearDevNodeProblem',0
aCount_13       db 'Count',0
                dw 8089h
                db  80h
                db 2 dup(80h), 71h, 44h, 65h, 76h, 69h
aCeinstanceid_0 db 'ceInstanceId',0
                db 16h, 53h, 65h
aRvicename      db 'rviceName',0
                dw 4C16h, 7361h, 5074h
aRoblem         db 'roblem',0
aLastproblemsta db 8,'LastProblemStatus',0
                dw 0E88h
                db 6
byte_1400248DD  db 0Bh, 5, 0            ; DATA XREF: sub_140748DA8+98↓o
                db 3 dup(0)
                dd 800000h
                align 8
                db  84h
                align 2
                dw 80h, 6741h, 7267h
aEgatesetdevnod db 'egateSetDevNodeProblem',0
aCount_14       db 'Count',0
                db 89h, 2 dup(80h)
                db  80h
                db 80h, 71h, 44h, 65h, 76h, 69h, 63h
aEinstanceid    db 'eInstanceId',0
                dd 72655316h
aVicename_0     db 'viceName',0
                db 16h, 50h, 72h, 6Fh, 62h, 6Ch, 65h
                dq 6C626F725008006Dh, 7375746174536D65h, 507473614C0E8800h
                dq 8006D656C626F72h, 626F72507473614Ch, 75746174536D656Ch
                db 73h, 0, 88h, 0Eh, 6
byte_14002496D  db 0Bh, 5, 0            ; DATA XREF: sub_14074A0D0+25B↓o
                db 3 dup(0)
                dd 800000h
                align 8
                dq 6976654400800131h, 6769666E6F436563h, 505F417472615000h
                dq 73676154766972h, 79636167654C0Ah
aDeviceinstance_6 db 0Dh,'DeviceInstanceId',0
                dw 4416h, 6972h, 6576h
aRflightids     db 'rFlightIds',0
                db 16h, 46h, 69h, 72h, 73h
aThardwareid    db 'tHardwareId',0
                dd 73614C01h
aTcompatibleid  db 'tCompatibleId',0
                dw 4301h
aLassguid       db 'lassGuid',0
                db 1, 44h, 72h, 69h, 76h, 65h, 72h
aInfname_0      db 'InfName',0
                db    1
aDriverprovider db 'DriverProvider',0
                db    1
aDriverdate_1   db 'DriverDate',0
                dd 69724401h
aVerversion     db 'verVersion',0
                db 1, 44h, 72h, 69h, 76h
aErsubmissionid db 'erSubmissionId',0
                db 1
aExtensiondrive db 'ExtensionDrivers',0
                db 1, 49h, 6Eh, 62h, 6Fh, 78h, 44h
aRiver          db 'river',0
                dw 384h
aSetupmode      db 'SetupMode',0
                dw 384h, 654Eh, 6465h
aReboot_1       db 'Reboot',0
                db 84h
                db    3
aRebootrequired db 'RebootRequiredReason',0
                dw 5315h
aTatuscode      db 'tatusCode',0
                dw 0E88h, 6E49h, 7473h
aAlldate        db 'allDate',0
                db 11h, 6
word_140024AAA  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408B3194+63↓o
                dd 400000h
                dd 80005300h
                db    0
aDeviceremovepr db 'DeviceRemoveProcessVeto',0
aDeviceinstance_7 db 'DeviceInstanceId',0
                dw 5616h, 7465h, 656Fh
aDdeviceinstanc db 'dDeviceInstanceId',0
                dw 5016h, 6F72h, 6563h
aSsname         db 'ssName',0
                db 16h
                db 6
byte_140024B09  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1403F25A4+9B↓o
                dd 400000h
                align 4
                dd 800045h
aUsercetappcomp db 'UserCetAppcompatOptionsUpdated',0
aAppcompatoptio db 'AppcompatOptions',0
aPartaPrivtags_15 db 8,'PartA_PrivTags',0
                db 0Ah, 6
word_140024B5A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408BCB1C+1A0↓o
                dd 400000h
                dd 80008D00h
                db    0
aExternalnmical db 'ExternalNmiCallbackRegistered',0
aDrivername     db 'DriverName',0
                dw 4416h, 6972h, 6576h
aRbase          db 'rBase',0
                dw 4415h
aRiversize      db 'riverSize',0
aImagechecksum  db 8,'ImageChecksum',0
                db 14h, 49h, 6Dh, 61h, 67h, 65h, 54h
aImedatestamp   db 'imeDateStamp',0
                db 14h, 4Eh, 6Dh
aIcallbackaddre db 'iCallbackAddress',0
                db 15h, 50h, 61h, 72h, 74h, 41h, 5Fh
aPrivtags       db 'PrivTags',0
                db 0Ah, 6
byte_140024BF3  db 0Bh, 5, 0, 8, 0      ; DATA XREF: sub_140328E24+14B7E5↓o
                db    0
                db 2 dup(0), 40h, 2 dup(0), 48h, 0
                db  80h
                align 2
aCommitsavedpro db 'CommitSavedProcessInSwapTrigger',0
aImagefilename  db 'ImageFileName',0
                dq 6150080064695002h, 766972505F417472h
aTags_1         db 'Tags',0
                db 0Ah, 6
byte_140024C47  db 0Bh                  ; DATA XREF: sub_14052BA50+7B↓o
                db    5
                align 2
                dw 4, 2 dup(0)
                db    0
                align 2
                dw 59h, 80h, 7250h
aOcesscommitrel db 'ocessCommitRelease',0
aImagefilename_0 db 'ImageFileName',0
                db 2, 50h, 69h, 64h, 0, 8, 43h
aOmmitpagesrele db 'ommitPagesReleased',0
aResetpagesnotr db 0Ah
                db 'ResetPagesNotReleased',0
                dw 60Ah
dword_140024CAC dd 400050Bh             ; DATA XREF: sub_14052B8D4+E7↓o
                db    0
                db 6 dup(0), 48h
                db    0
                db 80h, 0, 50h, 72h, 6Fh, 63h, 65h
aSscommitreacqu db 'ssCommitReacquireFail',0
aImagefilename_1 db 'ImageFileName',0
                dd 64695002h
                db    0
aCommitpagesrel db 8,'CommitPagesReleased',0
                dw 60Ah
unk_140024D00   db  0Bh                 ; DATA XREF: sub_14052B8D4+AA↓o
                db 5, 0, 4, 4 dup(0)
                db    0
                db 2 dup(0), 48h, 0, 80h, 0, 50h
aRocesscommitre db 'rocessCommitReacquireSkip',0
aImagefilename_2 db 'ImageFileName',0
                dq 6F43080064695002h, 6567615074696D6Dh, 657361656C655273h
                db 64h, 0, 0Ah, 6
dword_140024D54 dd 400050Bh             ; DATA XREF: sub_14052B8D4+68↓o
                db    0
                db 6 dup(0), 44h
                db    0
                db 80h, 0, 50h, 72h, 6Fh, 63h, 65h
aSscommitreacqu_0 db 'ssCommitReacquire',0
aImagefilename_3 db 'ImageFileName',0
                dq 6F43080064695002h, 6567615074696D6Dh, 657361656C655273h
                db 64h, 0, 0Ah, 6
dword_140024DA4 dd 400050Bh             ; DATA XREF: sub_14052BB70+76↓o
                db    0
                db 6 dup(0), 5Ah
                db    0
                db 80h, 0, 50h, 72h, 6Fh, 63h, 65h
aSsresetpagesco db 'ssResetPagesCommitRelease',0
aImagefilename_4 db 'ImageFileName',0
                db    2
                db 50h, 69h, 64h, 0, 8, 52h, 65h
aSetpagesreleas db 'setPagesReleased',0
aNewcommitdebt  db 0Ah
                db 'NewCommitDebt',0
                db 0Ah, 6
word_140024E0A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408C8334+E8↓o
                dd 400000h
                dd 8000B200h
                db    0
aProcessreserve db 'ProcessReserveMemFailed',0
aAppsessionguid db 'AppSessionGuid',0
                db  0Fh
aSizeofrangebyt db 'SizeOfRangeBytes',0
aVirtualsizebyt db 0Ah
                db 'VirtualSizeBytes',0
aPeakvirtualsiz db 0Ah
                db 'PeakVirtualSizeBytes',0
aHighestuseradd db 0Ah
                db 'HighestUserAddress',0
aAlignment      db 0Ah
                db 'Alignment',0
aLoweststarting db 0Ah
                db 'LowestStartingAddress',0
aHighestendinga db 0Ah
                db 'HighestEndingAddress',0
                dw 60Ah
byte_140024EC8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408C8DD4+7E↓o
                dd 400000h
                dw 5600h, 8000h, 4900h
aMagefilemapfai db 'mageFileMapFailure',0
aFailurereason  db 'FailureReason',0
                db 2, 46h, 69h, 6Ch, 65h, 4Eh, 61h
                dq 636568431600656Dh, 695408006D75736Bh, 706D617473656Dh
                dq 505F417472615008h, 73676154766972h
                db 0Ah, 6
word_140024F2A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408C96AC+81↓o
                dd 400000h
                dd 80005500h
                db    0
aHvcidriverload db 'HvciDriverLoadFail',0
aFailurereason_0 db 'FailureReason',0
                dw 4202h, 7361h, 4E65h
                dq 6568431600656D61h, 5408006D75736B63h, 706D617473656D69h
                dq 5F41747261500800h, 7367615476697250h
                db 0, 0Ah, 6
byte_140024F8B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140A56658+2DA38↓o
                db 0
                dd 400000h
                align 2
                dw 5Dh
                db  80h
                align 2
aHvcidriverload_0 db 'HvciDriverLoadFail',0
aRecordFailurer db 'Record->FailureReason',0
                db 2, 42h, 61h, 73h, 65h
aName           db 'Name',0
                db 16h, 43h, 68h
aEcksum         db 'ecksum',0
aTimestamp_0    db 8,'Timestamp',0
aPartaPrivtags_16 db 8,'PartA_PrivTags',0
                dw 60Ah
dword_140024FF4 dd 101050Bh             ; DATA XREF: sub_14053B5F8+5D↓o
                db    0
                db 6 dup(0), 5Eh
                db    0
                db 80h, 0, 43h, 6Fh, 6Eh, 74h, 69h
aNuetrimpasses  db 'nueTrimPasses',0
aNumpasses      db 'NumPasses',0
aPagestrimmed   db 8,'PagesTrimmed',0
aPagestotrim    db 0Ah
                db 'PagesToTrim',0
aDesiredfreegoa db 0Ah
                db 'DesiredFreeGoal',0
                db 0Ah
                dd 69617641h
aLablepages     db 'lablePages',0
                db 0Ah, 6
word_14002505E  dw 50Bh                 ; DATA XREF: sub_14021FD10+20938D↓o
                dq 100h, 4173570080007100h, 726F5700676E6967h, 54746553676E696Bh
                dq 616D490400657079h, 614E656C69466567h, 79654B0200656Dh
                dq 457265626D754E08h, 64656E696D6178h, 756F43646567410Ah
                db 6Eh, 74h
                dd 65520A00h
aMovedcount     db 'movedCount',0
aClearedcount   db 0Ah
                db 'ClearedCount',0
aAgeflags       db 0Ah
                db 'AgeFlags',0
                db 8, 6
byte_1400250DB  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_14020A278+217CFA↓o
                dq 9A000000000000h, 6D69725473570080h, 676E696B726F5700h
                db 53h, 65h, 74h
                dd 65707954h
                align 20h
                db 4, 49h, 6Dh, 61h, 67h, 65h
                dd 656C6946h
aName_0         db 'Name',0
                db 2
                dq 6D754E080079654Bh, 696D617845726562h, 6761500A0064656Eh
                dq 656D6D6972547365h, 6C696176410A0064h, 65676150656C6261h
                dq 6669646F4D0A0073h, 7365676150646569h, 696669646F4D0A00h
                db 65h, 64h
                dd 65676150h
                dw 6966h
                db 6Ch, 65h, 50h, 61h
                dd 736567h
aMintrimage     db 0Ah
                db 'MinTrimAge',0
aTrimflags      db 8,'TrimFlags',0
                db 8
                db 6
byte_140025181  db 0Bh, 5, 2, 1, 3 dup(0)
                                        ; DATA XREF: sub_140209ED4+217F6D↓o
                dq 80004D00000000h
aProcessworking db 'ProcessWorkingSets',0
aAvailablepages db 'AvailablePages',0
aModifiedpages  db 0Ah
                db 'ModifiedPages',0
aModifiedpagefi db 0Ah
                db 'ModifiedPagefilePages',0
                db 0Ah, 6
word_1400251DA  dw 50Bh, 101h, 0        ; DATA XREF: sub_140209E68+217EFF↓o
                db 0
                dd 0
                db 9Bh, 0, 80h
                db    0
aProcessworking_0 db 'ProcessWorkingSets',0
aTrimreason     db 'TrimReason',0
                db 4
aAgepercent     db 'AgePercent',0
                db 6, 57h, 6Fh, 72h, 6Bh
aIngsetrequestf db 'ingSetRequestFlags',0
aPagestotrim_0  db 8,'PagesToTrim',0
aDesiredfreegoa_0 db 0Ah
                db 'DesiredFreeGoal',0
aAvailablepages_0 db 0Ah
                db 'AvailablePages',0
aModifiedpages_0 db 0Ah
                db 'ModifiedPages',0
aModifiedpagefi_0 db 0Ah
                db 'ModifiedPagefilePages',0
                db 0Ah
                db 6
byte_140025281  db 0Bh, 5, 0, 20h, 3 dup(0)
                                        ; DATA XREF: sub_1408CD69C+207↓o
                db 0
                dd 57000000h
                align 2
                dw 80h
aRegistereduser db 'RegisteredUserSidPatchRundown',0
aBasechecksum   db 'BaseCheckSum',0
                db 14h, 42h, 61h, 73h, 65h
aTimedatestamp  db 'TimeDateStamp',0
                dw 5014h
aAtchpath       db 'atchPath',0
                db 16h, 55h, 73h, 65h, 72h, 53h, 69h
                db 64h
dword_1400252E1 dd 0B061300h            ; DATA XREF: sub_1408CD69C+D3↓o
                db 5, 0, 20h
                db    0
                db 6 dup(0), 47h
                db    0
                db 80h, 0, 52h, 65h, 67h, 69h, 73h
aTeredpatchrund db 'teredPatchRundown',0
aBasechecksum_0 db 'BaseCheckSum',0
                db 14h
aBasetimedatest db 'BaseTimeDateStamp',0
                dw 5014h, 7461h, 6863h
aPath_0         db 'Path',0
                db 16h, 6
byte_140025337  db 0Bh                  ; DATA XREF: sub_1408CD4C8+15F↓o
                db    5
                align 2
                dw 20h, 0
                dw 4000h
                db    0
                align 2
                dw 9Fh, 80h, 6D49h
aAgehotpatchloc db 'ageHotPatchLockedPagesFound',0
aProcessid      db 'ProcessId',0
                dw 588h
aStartvirtualad db 'StartVirtualAddress',0
                dd 73614C15h
aTvirtualaddres db 'tVirtualAddress',0
                dq 68436567616D4915h, 14006D75536B6365h
aImagetimedates db 'ImageTimeDateStamp',0
                db 14h, 4Eh, 75h, 6Dh, 62h
aEroflockedpage db 'erOfLockedPages',0
aPartaPrivtags_17 db 8,'PartA_PrivTags',0
                db 0Ah, 6
word_1400253E2  dw 50Bh, 2000h, 0       ; DATA XREF: sub_1408CC9A0+3A9↓o
                dq 8000560000000000h, 5064616F6C6E5500h
                db 61h
                dd 46686374h
aOruser         db 'orUser',0
aProcessid_0    db 'ProcessId',0
                dw 588h
aStatus_23      db 'Status',0
                db 88h
                db  0Eh
aBasechecksum_1 db 'BaseCheckSum',0
                dw 4214h
aAsetimedatesta db 'aseTimeDateStamp',0
                db 14h, 55h, 73h, 65h, 72h, 53h, 69h
                db 64h, 0, 13h, 6
dword_140025444 dd 2000050Bh            ; DATA XREF: sub_1408CD69C+6F3↓o
                db    0
                db 6 dup(0), 0AEh
                db    0
                db 80h, 0, 41h, 63h, 74h, 69h, 76h
aEuserpatchrund db 'eUserPatchRundown',0
aProcessid_1    db 'ProcessId',0
                dd 72500588h
aOcessname      db 'ocessName',0
                dw 4902h, 616Dh, 6567h
                db  4Bh ; K
                db 65h, 79h, 0, 15h, 42h, 61h, 73h
aEchecksum      db 'eCheckSum',0
                dw 4214h, 7361h, 5465h
aImedatestamp_0 db 'imeDateStamp',0
                db 14h, 50h, 61h
aTchchecksum    db 'tchCheckSum',0
                dd 74615014h
aChtimedatestam db 'chTimeDateStamp',0
                dq 6150686374615014h, 6374615016006874h, 746172656E654768h
                dq 61704808006E6F69h, 6F437972746E4574h
                db 75h, 6Eh, 74h, 0, 8, 6
word_1400254FE  dw 50Bh                 ; DATA XREF: sub_1408CD69C+503↓o
                db    0
                db 20h, 6 dup(0)
                db    0
                db 6Ch, 0, 80h, 0, 41h, 63h, 74h
aIvekernelpatch db 'iveKernelPatchRundown',0
aBasechecksum_2 db 'BaseCheckSum',0
                db 14h, 42h, 61h, 73h, 65h
aTimedatestamp_0 db 'TimeDateStamp',0
                dw 5014h
aAtchchecksum   db 'atchCheckSum',0
                db 14h, 50h, 61h
aTchtimedatesta db 'tchTimeDateStamp',0
                db 14h, 50h, 61h, 74h, 63h, 68h, 50h
                db 61h, 74h, 68h, 0, 16h, 6
word_140025576  dw 50Bh                 ; DATA XREF: sub_1408CD69C+3B2↓o
                db    0
                db 20h, 6 dup(0)
                db    0
                db 8Ah, 0, 80h, 0, 41h, 63h, 74h
aIvesecurekerne db 'iveSecureKernelPatchRundown',0
aBasechecksum_3 db 'BaseCheckSum',0
                db 14h, 42h, 61h, 73h, 65h, 54h, 69h
aMedatestamp    db 'meDateStamp',0
                dd 74615014h
aChchecksum     db 'chCheckSum',0
                db 14h, 50h, 61h, 74h, 63h
aHtimedatestamp db 'hTimeDateStamp',0
                db 14h
aPatchminsequen db 'PatchMinSequenceNumber',0
aPatchpath      db 8,'PatchPath',0
                dw 616h
dword_14002560C dd 2000050Bh            ; DATA XREF: sub_1408CD120+21D↓o
                db    0
                align 4
                dd 67000040h
                db    0
                db 80h, 0, 4Bh, 65h, 72h, 6Eh, 65h
aLhotpatchopera db 'lHotPatchOperationStatus',0
aStatus_24      db 'Status',0
                dq 6843657361420E88h, 14006D75536B6365h
aBasetimedatest_0 db 'BaseTimeDateStamp',0
                dw 5014h, 7461h, 6863h
aPath_1         db 'Path',0
                db 16h, 50h, 61h
aRtaPrivtags_1  db 'rtA_PrivTags',0
                db 0Ah, 6
byte_14002567F  db 0Bh                  ; DATA XREF: sub_1408CD120+115↓o
                db    5
                align 2
                dw 20h, 0
                dw 4000h
                db    0
                align 2
                dw 7Fh, 80h, 6D49h
aAgehotpatchope db 'ageHotPatchOperationStatus',0
aProcessid_2    db 'ProcessId',0
                db 88h, 5, 50h
aRocessname     db 'rocessName',0
                db 2, 53h, 74h, 61h, 74h
                db  75h ; u
                db 73h, 0, 88h, 0Eh, 42h, 61h, 73h
aEchecksum_0    db 'eCheckSum',0
                dw 4214h, 7361h, 5465h
aImedatestamp_1 db 'imeDateStamp',0
                db 14h, 50h, 61h
aTchpath        db 'tchPath',0
                dq 505F417472615016h, 73676154766972h
                db 0Ah, 6
word_14002570A  dw 50Bh, 2000h, 0       ; DATA XREF: sub_1408CCE38+26E↓o
                db    0
                align 2
                dw 40h, 2C00h, 8001h
                db    0
aImagehotpatcho db 'ImageHotPatchOperation',0
aProcessid_3    db 'ProcessId',0
                dw 588h, 7250h, 636Fh
aEssname        db 'essName',0
                db    2
aStatus_25      db 'Status',0
                db  88h
                db 0Eh, 49h, 6Dh, 61h, 67h, 65h, 4Bh
                db  65h ; e
                db 79h, 0, 15h, 42h, 61h, 73h, 65h
aChecksum_0     db 'CheckSum',0
                db 14h, 42h, 61h, 73h, 65h, 54h, 69h
aMedatestamp_0  db 'meDateStamp',0
                dd 646C4F14h
aPatchgeneratio db 'PatchGeneration',0
aOldpatchchecks db 8,'OldPatchCheckSum',0
                dw 4F14h, 646Ch, 6150h
aTchtimedatesta_0 db 'tchTimeDateStamp',0
                db 14h, 4Fh, 6Ch, 64h, 50h, 61h, 74h
aChpath         db 'chPath',0
                db 16h
aNewpatchgenera db 'NewPatchGeneration',0
aNewpatchchecks db 8,'NewPatchCheckSum',0
                db 14h, 4Eh, 65h
aWpatchtimedate db 'wPatchTimeDateStamp',0
                dd 77654E14h
aPatchpath_0    db 'PatchPath',0
                dw 4816h, 6170h, 4574h
aNtrycount      db 'ntryCount',0
aEntrydeleted   db 8,'EntryDeleted',0
aPartaPrivtags_18 db 0Dh,'PartA_PrivTags',0
                db 0Ah, 6
word_140025842  dw 50Bh, 2000h, 0       ; DATA XREF: sub_1408CC9A0+2CF↓o
                dq 8000460000000000h, 5064616F6C6E5500h, 6F72500068637461h
                dq 8800644973736563h, 73757461745305h, 6843657361420E88h
                dq 14006D75536B6365h, 656D695465736142h, 6D61745365746144h
                db 70h, 0, 14h, 6
dword_140025894 dd 2000050Bh            ; DATA XREF: sub_1408CC9A0+198↓o
                db    0
                db 6 dup(0), 5Fh
                db    0
                db 80h, 0, 4Ch, 6Fh, 61h, 64h, 50h
aAtchforuser    db 'atchForUser',0
aProcessid_4    db 'ProcessId',0
                dw 588h
aStatus_26      db 'Status',0
                db 88h
                db  0Eh
aBasechecksum_4 db 'BaseCheckSum',0
                dw 4214h
aAsetimedatesta_0 db 'aseTimeDateStamp',0
                db 14h, 50h, 61h, 74h, 63h, 68h, 50h
                dq 6573551600687461h
aRsid           db 'rSid',0
                db 13h, 6
byte_1400258FF  db 0Bh                  ; DATA XREF: sub_1408CC9A0+87↓o
                db    5
                align 2
                dw 20h, 2 dup(0)
                db    0
                align 2
                dw 4Fh, 80h, 6F4Ch
aAdpatch        db 'adPatch',0
aProcessid_5    db 'ProcessId',0
                dw 588h, 7453h, 7461h
                db  75h ; u
                db 73h, 0, 88h, 0Eh, 42h, 61h, 73h
aEchecksum_1    db 'eCheckSum',0
                dw 4214h, 7361h, 5465h
aImedatestamp_2 db 'imeDateStamp',0
                db 14h, 50h, 61h
aTchpath_0      db 'tchPath',0
                db 16h, 6
word_14002595A  dw 50Bh, 2000h, 0       ; DATA XREF: sub_1408CD120+2CD↓o
                db    0
                align 2
                dw 40h, 6D00h, 8000h
                db    0
aSecurekernelho db 'SecureKernelHotPatchOperationStatus',0
aStatus_27      db 'Status',0
                dd 61420E88h
aSechecksum     db 'seCheckSum',0
                db 14h, 42h, 61h, 73h, 65h
aTimedatestamp_1 db 'TimeDateStamp',0
                dw 5014h
aAtchpath_0     db 'atchPath',0
                db 16h, 50h, 61h, 72h, 74h, 41h, 5Fh
aPrivtags_0     db 'PrivTags',0
                db 0Ah, 6
byte_1400259D3  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1407722F0+D788E↓o
                db 0
                dd 400000h
                align 2
                dw 77h
                db  80h
                align 2
aNonretpolinesy db 'NonRetpolineSystemImageLoadedAggregate',0
aCount_15       db 'Count',0
                db 89h
                dq 7361427180808080h, 656D614E6C6C4465h, 436567616D491600h
                dq 6D75536B636568h
aImagetimedates_0 db 8,'ImageTimeDateStamp',0
aPartaPrivtags_19 db 8,'PartA_PrivTags',0
                db 0Ah, 6
word_140025A56  dw 50Bh                 ; DATA XREF: sub_1408D8AC4+21A↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 4Ch, 1, 80h, 0, 50h, 72h, 6Fh
aCesscommitfail db 'cessCommitFailure',0
aAppsessionguid_0 db 'AppSessionGuid',0
                db 0Fh, 46h, 61h, 69h, 6Ch, 65h, 64h
aSizepages      db 'SizePages',0
aLocation       db 0Ah
                db 'Location',0
aProcesspagefil db 8,'ProcessPageFileLimitPages',0
aProcesspagefil_0 db 0Ah
                db 'ProcessPageFileUsagePages',0
aProcesscommitl db 0Ah
                db 'ProcessCommitLimitPages',0
aProcesscommitu db 0Ah
                db 'ProcessCommitUsedPages',0
aJobprivatecomm db 0Ah
                db 'JobPrivateCommitLimitPages',0
aJobtotalcommit db 0Ah
                db 'JobTotalCommitLimitPages',0
aJobprivatecomm_0 db 0Ah
                db 'JobPrivateCommitUsedPages',0
aJobsharedcommi db 0Ah
                db 'JobSharedCommitUsedPages',0
aPartitioncommi db 0Ah
                db 'PartitionCommitLimitPages',0
aPartitioncommi_0 db 0Ah
                db 'PartitionCommitUsagePages',0
                db 0Ah, 6
word_140025BAE  dw 50Bh                 ; DATA XREF: sub_1407B5DB0+A4C61↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 6Ah, 0, 80h, 0, 53h, 79h, 73h
aTemimagepinadd db 'temImagePinAddressDroppedAggregate',0
aCount_16       db 'Count',0
                db 89h, 4 dup(80h), 71h, 43h
aAllerid        db 'allerId',0
aAbovedispatch  db 8,'AboveDispatch',0
aKdenabled      db 0Dh,'KdEnabled',0
aPartaPrivtags_20 db 0Dh,'PartA_PrivTags',0
                dw 60Ah
dword_140025C24 dd 50Bh                 ; DATA XREF: sub_1407B5EB4+A4D9A↓o
                db 2 dup(0)
                dd 400000h
                dw 0CE00h
                db    0
                db 80h, 0, 53h, 79h, 73h, 74h, 65h
aMimagepinaddre db 'mImagePinAddressAggregate',0
aCount_17       db 'Count',0
                db  89h
                db 4 dup(80h), 71h, 43h, 61h
aLlerid         db 'llerId',0
aPteinvalid     db 8,'PteInvalid',0
aPtewriteable   db 0Dh,'PteWriteable',0
aPteexecutable  db 0Dh,'PteExecutable',0
aAlreadylocked  db 0Dh,'AlreadyLocked',0
aIrqlstate      db 0Dh,'IrqlState',0
aKdstate        db 8,'KdState',0
aBootphase      db 8,'BootPhase',0
aImagename      db 8,'ImageName',0
                db 16h, 49h, 6Dh, 61h, 67h, 65h, 43h
aHecksum        db 'heckSum',0
                db  14h
aImagetimedates_1 db 'ImageTimeDateStamp',0
                dd 72615014h
aTaPrivtags_0   db 'tA_PrivTags',0
                db 0Ah, 6
word_140025CFE  dw 50Bh                 ; DATA XREF: sub_140554888+61↓o
                db    0
                db 2, 6 dup(0)
                db    0
                db 27h, 0, 80h, 0, 53h, 74h, 6Fh
aRewritecomplet db 'reWriteCompleteFailure',0
aStatus_28      db 'Status',0
                dw 0E88h
                db 6
byte_140025D31  db 0Bh, 5, 0, 2, 3 dup(0)
                                        ; DATA XREF: sub_140554D00+12F↓o
                dq 80007800004000h
aStorecorruptio db 'StoreCorruptionFixed',0
aSourcepointer  db 'SourcePointer',0
                db 15h, 43h, 6Fh, 6Dh, 70h
aRessedsize     db 'ressedSize',0
                db 14h, 54h, 6Fh, 74h, 61h
aLfixed         db 'lFixed',0
aSourcepagefram db 8,'SourcePageFrame1',0
aSourcepagefram_0 db 0Ah
                db 'SourcePageFrame2',0
aPartaPrivtags_21 db 0Ah
                db 'PartA_PrivTags',0
                db 0Ah, 6
byte_140025DB5  db 0Bh, 5, 0            ; DATA XREF: sub_140554818+4B↓o
                dq 2, 726F745300800016h, 6C69466567615065h
aEfull          db 'eFull',0
                db 6
byte_140025DD7  db 0Bh                  ; DATA XREF: sub_140554B88+11D↓o
                db    5
                align 2
                dw 2, 2 dup(0)
                db    0
                align 2
                dw 78h, 80h, 7453h
aOrewriteissuer db 'oreWriteIssueRetry',0
aContainerkey   db 'ContainerKey',0
                dq 4179654B62755315h, 1500737365726464h
aStorepagefileo db 'StorePageFileOffset',0
                dd 74655214h
aRycount        db 'ryCount',0
aWaitallowed    db 8,'WaitAllowed',0
aTotalwritefail db 8,'TotalWriteFailures',0
                db 8, 6
byte_140025E5B  db 0Bh, 5, 0, 2, 0      ; DATA XREF: sub_1405549E4+15A↓o
                db    0
                db 5 dup(0), 83h, 0
                db  80h
                align 2
aStorewriteissu db 'StoreWriteIssueFailure',0
aStatus_29      db 'Status',0
                db  88h
                db 0Eh, 43h, 6Fh, 6Eh, 74h, 61h, 69h
aNerkey         db 'nerKey',0
                db 15h
aSubkeyaddress  db 'SubKeyAddress',0
                dw 5315h
aTorepagefileof db 'torePageFileOffset',0
                db 14h, 52h, 65h, 74h, 72h
aYcount_0       db 'yCount',0
aWaitallowed_0  db 8,'WaitAllowed',0
aTotalwritefail_0 db 8,'TotalWriteFailures',0
                db 8, 6
word_140025EEA  dw 50Bh, 200h, 0        ; DATA XREF: sub_14038D2D8+10E7C8↓o
                dq 8000380000400000h, 746F4E6567615000h
aStorecandidate db 'StoreCandidate',0
aStatus_30      db 'Status',0
                dw 0E88h
aStorepagefileo_0 db 'StorePageFileOffset',0
                db 14h, 6
word_140025F2E  dw 50Bh                 ; DATA XREF: sub_140554924+80↓o
                db 0, 2, 5 dup(0)
                dd 330000h
                db 80h, 0, 53h, 74h, 6Fh
aRewritedisable db 'reWriteDisabled',0
aDisablecount   db 'DisableCount',0
aPageswritten   db 8,'PagesWritten',0
                db 8, 6
byte_140025F6D  db 0Bh, 5, 0            ; DATA XREF: sub_14035907C+12EEA7↓o
                dq 10h, 6D45735700800045h, 72746E6F43797470h, 696B726F57006C6Fh
                dq 707954746553676Eh, 6567616D49040065h, 656D614E656C6946h
                dq 43080079654B0200h, 6C466C6F72746E6Fh
                db 61h, 67h, 73h
dword_140025FBB dd 0B060800h            ; DATA XREF: sub_14055F878+246↓o
                db 5
                dq 4000h, 6D654D0080007A00h, 6948746F4879726Fh
                db 6Eh, 74h, 0, 52h, 61h
                dd 4365676Eh
aOunt           db 'ount',0
aTotalnumberofp db 8,'TotalNumberOfPages',0
                dw 4615h, 7269h, 7473h
aRangepfn       db 'RangePfn',0
                db 15h, 46h, 69h, 72h, 73h, 74h, 52h
aAngenumberofpa db 'angeNumberOfPages',0
                dw 4614h, 7269h, 7473h
aRangepagesize  db 'RangePageSize',0
aRangearray     db 8,'RangeArray',0
                dw 655h
dword_140026044 dd 4000050Bh            ; DATA XREF: sub_14055F878+12A↓o
                dq 7B00000000000000h, 726F6D654D008000h, 6E6948646C6F4379h
                db 74h
                dd 6E615200h
aGecount        db 'geCount',0
aTotalnumberofp_0 db 8,'TotalNumberOfPages',0
                db 15h, 46h, 69h, 72h, 73h, 74h, 52h
aAngepfn        db 'angePfn',0
                db  15h
aFirstrangenumb db 'FirstRangeNumberOfPages',0
                db 14h, 46h, 69h, 72h, 73h, 74h, 52h
aAngepagesize   db 'angePageSize',0
aRangearray_0   db 8,'RangeArray',0
                db 55h, 6
byte_1400260CB  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140A46920+38F87↓o
                db 0
                dd 200000h
                align 2
                dw 0E5h
                dq 6369737968500080h, 427265776F506C61h, 6572506E6F747475h
                dd 6E497373h
aFoatboot       db 'foAtBoot',0
aLastpresstime  db 'LastPressTime',0
                db 11h, 4Ch, 61h, 73h, 74h
aPressbootid    db 'PressBootId',0
aCumulativepres db 8,'CumulativePressCount',0
                dw 4C08h
                dd 52747361h
aEleasetime     db 'eleaseTime',0
                db 11h, 4Ch, 61h, 73h, 74h
aReleasebootid  db 'ReleaseBootId',0
aCumulativerele db 8,'CumulativeReleaseCount',0
aErrorcount     db 8,'ErrorCount',0
aLastpowerwatch db 8,'LastPowerWatchdogStage',0
aPowerwatchdoga db 8,'PowerWatchdogArmed',0
                dw 5304h
aHutdowninprogr db 'hutdownInProgress',0
                dw 604h
dword_1400261BC dd 50Bh                 ; DATA XREF: sub_140569884+5D6↓o
                db 2 dup(0)
                dd 400000h
                dw 5300h
                db    0
                db 80h, 0, 49h, 6Eh, 76h, 61h, 6Ch
aIdwatchdogblam db 'idWatchdogBlamedChildCount',0
aChilddevice    db 'ChildDevice',0
aChilddevicecou db 8,'ChildDeviceCount',0
aPartaPrivtags_22 db 8,'PartA_PrivTags',0
                db 0Ah, 6
byte_14002621B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140569884+671↓o
                db 0
                dd 400000h
                align 2
                dw 53h
                db  80h
                align 2
aInvalidwatchdo db 'InvalidWatchdogBlamedChildCount',0
aChilddevice_0  db 'ChildDevice',0
aChilddevicecou_0 db 8,'ChildDeviceCount',0
aPartaPrivtags_23 db 8,'PartA_PrivTags',0
                db 0Ah, 6
word_14002627A  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_14071FAA0+10A↓o
                dd 400000h
                dd 80007200h
                db    0
aPpmqosenabledi db 'PpmQosEnableDisableStats',0
aElapsedtimesec db 'elapsedTimeSeconds',0
aEnabledtimesec db 8,'enabledTimeSeconds',0
aDisablereasont db 8,'disableReasonTimesSeconds',0
                db '(',9,0
aPartaPrivtags_24 db 'PartA_PrivTags',0
                dw 60Ah
byte_1400262F8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1407CF340+94059↓o
                dd 400000h
                dw 4100h, 8000h, 5000h
aReviousshutdow db 'reviousShutdownWasThermalShutdown',0
aThermalzone    db 'thermalZone',0
                dw 7401h
aEmperature     db 'emperature',0
                db 8, 6
byte_140026345  db 0Bh, 5, 0            ; DATA XREF: sub_1408EB088+254↓o
                db 3 dup(0)
                dd 400000h
                align 10h
                db  0Fh
                db 2, 80h, 0, 52h, 65h, 73h, 69h
aLiencyphaseexi db 'liencyPhaseExit',0
aCssessionid    db 'CsSessionId',0
aFlags_1        db 0Ah
                db 'Flags',0
aEnerydrain     db 8,'EneryDrain',0
aEnerydrainv2va db 8,'EneryDrainV2Value',0
aEnerydrainv2fl db 9,'EneryDrainV2Flags',0
aEsstateonentry db 9,'EsStateOnEntry',0
aEsreasononentr db 8,'EsReasonOnEntry',0
aEsupdatecount  db 8,'EsUpdateCount',0
aDsreason       db 8,'DsReason',0
aTotaltimeinus  db 8,'TotalTimeInUs',0
aTotalswdripsti db 0Ah
                db 'TotalSwDripsTimeInUs',0
aTotalhwdripsti db 0Ah
                db 'TotalHwDripsTimeInUs',0
aTotaldstimeinu db 0Ah
                db 'TotalDsTimeInUs',0
aMaxactivationc db 0Ah
                db 'MaxActivationConcurrency',0
aMinactivationi db 8,'MinActivationIntervalInUs',0
aMaxactivationi db 0Ah
                db 'MaxActivationIntervalInUs',0
aTotalactivatio db 0Ah
                db 'TotalActivationIntervalInUs',0
aActivationinte db 0Ah
                db 'ActivationIntervalCount',0
aMindeviceconst db 8,'MinDeviceConstraintIntervalInUs',0
aMaxdeviceconst db 0Ah
                db 'MaxDeviceConstraintIntervalInUs',0
aTotaldevicecon db 0Ah
                db 'TotalDeviceConstraintIntervalInUs',0
aDeviceconstrai db 0Ah
                db 'DeviceConstraintIntervalCount',0
aDeepsleepblock db 8,'DeepSleepBlockerDurationsInUs',0
                db '*',0Ah,0
                db 6
byte_140026560  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1403F7B50+BA↓o
                dd 200000h
                dw 5C00h, 8000h, 4500h
aLapsedtimebsdw db 'lapsedTimeBsdWrite',0
aRtlbsditemtype db 'RtlBsdItemType',0
aElapsedtimeinb db 8,'ElapsedTimeInBsdWriteInMs',0
aStatus_31      db 0Ah
                db 'Status',0
                db 88h, 0Eh, 50h
aArtaPrivtags_0 db 'artA_PrivTags',0
                dw 60Ah
byte_1400265C8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408E9684+61↓o
                dd 400000h
                dw 5E00h, 8000h, 4400h
aIrecteddripsca db 'irectedDripsCandidateDevice',0
aCssessionid_0  db 'CsSessionId',0
aDeviceobject   db 0Ah
                db 'DeviceObject',0
                dw 2595h
aInstancepath   db 'InstancePath',0
                db 16h, 43h, 75h
aRrentpowerstat db 'rrentPowerState',0
                db 8, 6
word_140026632  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1407CA7D4+5F↓o
                dd 400000h
                dd 80003900h
                db    0
aPodirecteddrip db 'PoDirectedDripsInitialization',0
aInitialization db 'InitializationResult',0
                db 88h, 0Eh, 6
byte_140026677  db 0Bh                  ; DATA XREF: sub_1408ED2E4+48↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 2Eh, 80h, 6D55h
aPoalpcmessagep db 'poALPCMessageProcessingError',0
aNtstatus_1     db 'NtStatus',0
                dw 0E88h
                db 6
byte_1400266B1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408EDBDC+96↓o
                dd 400000h
                align 4
                dd 800051h
aInputsuppressi db 'InputSuppressionMonitorOnRequestUserInput',0
aCssessionid_1  db 'CsSessionId',0
aMonitorrequest db 0Ah
                db 'MonitorRequestReason',0
                db 8, 6
word_14002670E  dw 50Bh                 ; DATA XREF: sub_1408EC104+7F↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 86h, 0, 80h, 0, 4Dh, 6Fh, 6Eh
aItoronwithlidc db 'itorOnWithLidClosed',0
aLidstate       db 'lidState',0
                db 84h, 3, 65h
aXternalmonitor db 'xternalMonitorConnectedState',0
                db 84h, 3, 6Dh
aOnitorrequestr db 'onitorRequestReasonCode',0
aIspowersourcec db 8,'isPowerSourceConnected',0
                dq 7373655373430384h, 60A0064496E6F69h
byte_1400267A0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408E9D4C+275↓o
                dd 400000h
                dw 1B00h, 8001h, 4200h
aAtterytriggerm db 'atteryTriggerMet',0
aDischargepolic db 'dischargePolicyIndex',0
aActivebatteryc db 8,'activeBatteryCount',0
aRemainingperce db 8,'remainingPercentage',0
aRemainingmilli db 8,'remainingMilliPercent',0
aIsaconline     db 8,'isAcOnline',0
aBatteryactioni db 8,'batteryActionInternalFlags',0
aIspoweractionc db 8,'isPowerActionCallIgnored',0
aIspowerpolicye db 8,'isPowerPolicyEnabled',0
aPowerpolicyact db 8,'powerPolicyAction',0
aPowerpolicybat db 8,'powerPolicyBatteryLevel',0
aPowerpolicyeve db 8,'powerPolicyEventCode',0
aPowerpolicymin db 8,'powerPolicyMinState',0
                db 8, 6
byte_1400268C7  db 0Bh                  ; DATA XREF: sub_14038BA68+F9↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 0D6h, 80h, 7452h
aCwakeinfo      db 'cWakeInfo',0
aWokesystem     db 'wokeSystem',0
aRejectreason   db 0Dh,'rejectReason',0
                db 4, 75h, 6Eh, 63h, 65h
aRtain          db 'rtain',0
aSpurious       db 0Dh,'spurious',0
aFixedwakesourc db 0Dh,'fixedWakeSource',0
aAcalarmsignale db 8,'acAlarmSignaled',0
aDcalarmsignale db 0Dh,'dcAlarmSignaled',0
aRtcsignaled    db 0Dh,'rtcSignaled',0
aAcprogrammedti db 0Dh,'acProgrammedTime',0
                dw 6411h, 5063h, 6F72h
aGrammedtime    db 'grammedTime',0
                dd 69737511h
aNgactime       db 'ngAcTime',0
aWaketime       db 0Dh,'wakeTime',0
                db 11h, 61h, 64h, 6Ah, 75h
aStedwaketime   db 'stedWakeTime',0
                db 11h, 66h, 75h
aLlwake         db 'llWake',0
                db 0Dh
                db 6
                db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408EB5A0+162↓o
                dd 400000h
                align 4
                dd 800133h
aDozetos4deferr db 'DozeToS4Deferral',0
aDeferred       db 'Deferred',0
aDozedeferralde db 0Dh,'DozeDeferralDeniedReasons',0
                db 14h, 44h, 6Fh
aZedeferralstar db 'zeDeferralStartTime',0
                dd 72754315h
aRentinterruptt db 'rentInterruptTime',0
                dw 4515h, 7261h, 696Ch
aEstwaketimerdu db 'estWakeTimerDueTime',0
                dd 7A6F4415h
aEdeferralmaxse db 'eDeferralMaxSeconds',0
aWaketimerreque db 8,'WakeTimerRequester',0
                db    1
aWaketimerreaso db 'WakeTimerReason',0
                db 1, 52h, 74h, 63h, 57h, 61h, 6Bh
aEpolicyac      db 'ePolicyAc',0
                dw 5204h, 6374h, 6157h
aKepolicydc     db 'kePolicyDc',0
                db 4, 50h, 6Ch, 61h, 74h
aFormrole       db 'formRole',0
                db 3, 49h, 73h, 41h, 6Fh, 61h, 63h
                db    0
aWakealarmprese db 0Dh,'WakeAlarmPresent',0
                db 3, 41h, 63h, 4Fh, 6Eh
aLinewakecapabi db 'LineWakeCapability',0
                db 3, 52h, 74h, 63h, 57h
aAkecapability  db 'akeCapability',0
                dw 603h
byte_140026AE8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14077E4AC+D1EBA↓o
                dd 0
                dw 9B00h, 8000h, 4200h
aAtterytriggerf db 'atteryTriggerFlagsUpdated',0
aActionname     db 'actionName',0
                db 2, 62h, 61h
aTterytriggerse db 'tteryTriggerSetFlag',0
                dd 61620384h
aTterytriggersy db 'tteryTriggerSystemFlag',0
                db 84h
                db    3
aBatterytrigger db 'batteryTriggerUserFlag',0
                dq 6E4F634173690384h, 72038400656E696Ch, 676E696E69616D65h
                dq 726550696C6C694Dh
aCent           db 'cent',0
                db 8, 6
byte_140026B8F  db 0Bh                  ; DATA XREF: sub_1408EDA80+53↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 0C0h, 80h, 6E49h
aPutsuppression db 'putSuppressionAction',0
aIslidstateigno db 'isLidStateIgnored',0
                db 84h
                db    3
aIslidclosed    db 'isLidClosed',0
                db 84h, 3, 69h
aSpowerstatedc  db 'sPowerStateDc',0
                dw 384h
aIsdisplayoff   db 'isDisplayOff',0
                db 84h, 3, 69h
aSnoexternalmon db 'sNoExternalMonitorPresent',0
                dw 384h, 7369h, 6E49h
aPutsuppression_0 db 'putSuppressionOptedIn',0
                dw 384h
aInputsuppressi_0 db 'inputSuppressionFinalAction',0
aCssessionid_2  db 8,'CsSessionId',0
                db 0Ah, 6
byte_140026C5B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1408E9944+A6↓o
                db 0
                dd 400000h
                align 2
                dw 12Eh
                db  80h
                align 2
aBatterycommons db 'BatteryCommonStatusAtAlarmTrigger',0
aAction         db 'action',0
                db 2, 69h, 73h, 41h, 63h
aOnline         db 'Online',0
                db 84h
                db    3
aRemainingmilli_0 db 'remainingMilliPercent',0
aPowerstate     db 8,'powerState',0
aIspowerpolicye_0 db 8,'isPowerPolicyEnabled',0
                db 84h, 3, 70h, 6Fh, 77h, 65h, 72h
aPolicybatteryl db 'PolicyBatteryLevel',0
aPowerpolicymin_0 db 8,'powerPolicyMinSystemState',0
aPowerpolicyact_0 db 8,'powerPolicyActionType',0
aPowerpolicyfla db 8,'powerPolicyFlags',0
                db 14h
aPowerpolicyeve_0 db 'powerPolicyEventCode',0
aTriggerbattery db 8,'triggerBatteryFlags',0
                dw 7414h, 6972h, 6767h
aErbatterylevel db 'erBatteryLevel',0
aTriggerbattery_0 db 8,'triggerBatteryIgnoreStatus',0
                db 8, 6
byte_140026D95  db 0Bh, 5, 0            ; DATA XREF: sub_1408E9944+279↓o
                db 3 dup(0)
                dd 400000h
                align 20h
                db  88h
                align 2
                dw 80h, 6142h, 7474h
aErystatusatala db 'eryStatusAtAlarmTrigger',0
aAction_0       db 'action',0
                db 2
aBatterynumber  db 'batteryNumber',0
aFullchargecapa db 8,'fullChargeCapacity',0
aCurrentcapacit db 8,'currentCapacity',0
aBatterymillipe db 8,'batteryMilliPercentCapacity',0
aDefaultalert1  db 8,'defaultAlert1',0
                db 8
                db 6
byte_140026E29  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14056FF88+56↓o
                dd 400000h
                align 4
                dd 800021h
aForceidlereset db 'ForceIdleResetReason',0
aReason_2       db 'Reason',0
                db 8, 6
word_140026E56  dw 50Bh                 ; DATA XREF: sub_1408ED94C+6A↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 3Eh, 0, 80h, 0, 42h, 61h, 63h
aKgroundactivit db 'kgroundActivityPolicyUpdate',0
aPreviouspolicy db 'PreviousPolicy',0
aNewpolicy      db 8,'NewPolicy',0
                dw 608h
byte_140026EA0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408EDD58+48↓o
                dd 400000h
                dw 2700h, 8000h, 5300h
aLeepcheckpoint db 'leepCheckpointInitFailed',0
aStatus_32      db 'Status',0
                db 88h, 0Eh, 6
byte_140026ED3  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1407D1718+3A↓o
                db 0
                dd 0
                align 2
                dw 42h
                db  80h
                align 2
aPopdiagtraceex db 'PopDiagTraceExternalDisplayState',0
aIsexternalmoni db 'IsExternalMonitorConnected',0
                dw 384h
                db 6
byte_140026F21  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408EB4EC+34↓o
                dd 0
                align 4
                dd 800064h
aUserinitiatedd db 'UserInitiatedDisplayBurstStatus',0
aLidopen        db 'LidOpen',0
                dq 6E72657478450384h, 6F74696E6F4D6C61h, 7463656E6E6F4372h
                db 65h, 64h, 0
                dd 73490384h
aDisplayburstsu db 'DisplayBurstSuppressed',0
                dw 384h
                db 6
byte_140026F91  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140573738+4D↓o
                dd 800000h
                align 4
                dd 800059h
aWinloadfataler db 'WinloadFatalError',0
aErrorbootid    db 'errorBootId',0
aRepeatcount    db 8,'repeatCount',0
aOthererrorcoun db 8,'otherErrorCount',0
aErrorcode      db 8,'errorCode',0
aErrorstatus    db 8,'errorStatus',0
                db 0Ah, 6
word_140026FF6  dw 50Bh                 ; DATA XREF: sub_1407CBC90+60↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 3Fh, 0, 80h, 0, 43h, 6Fh, 6Eh
aNectivityinsta db 'nectivityInStandbyUpdate',0
aState_0        db 'State',0
aReason_3       db 8,'Reason',0
aPartaPrivtags_25 db 8,'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140027041  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14070E2A0+11C4B2↓o
                                        ; sub_140793F04+A7FF9↓o
                dd 800000h
                align 4
                dd 800164h
aOsstatechange  db 'OSStateChange',0
aStatetransitio db 'StateTransition',0
                dw 5306h
aTatetransition db 'tateTransitionSub',0
                dw 5306h, 6174h, 6574h
aDurationms     db 'DurationMS',0
aBootid_0       db 0Ah
                db 'BootId',0
aBoottimeutc    db 8,'BootTimeUTC',0
                db  11h
aUptimedeltams  db 'UptimeDeltaMS',0
aTotaldurationm db 0Ah
                db 'TotalDurationMS',0
aTotaluptimems  db 0Ah
                db 'TotalUptimeMS',0
aLaststatetrans db 0Ah
                db 'LastStateTransition',0
                dd 73614C06h
aTstatetransiti db 'tStateTransitionSub',0
                dd 65764506h
aNtsequence     db 'ntSequence',0
aActualtransiti db 8,'ActualTransitions',0
aTransitionstoo db 8,'TransitionsToOn',0
aBatterycapacit db 8,'BatteryCapacity',0
aBatterycharge  db 8,'BatteryCharge',0
aEnergychangev2 db 8,'EnergyChangeV2',0
aEnergychangev2_0 db 9,'EnergyChangeV2Flags',0
aAcpoweronline  db 8,'AcPowerOnline',0
aBatterydischar db 0Dh,'BatteryDischarging',0
aPartaPrivtags_26 db 0Dh,'PartA_PrivTags',0
                db 0Ah
                db 6
byte_1400271B1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14038A774+1A5↓o
                dd 400000h
                align 4
                dd 80006Fh
aThermalrequest db 'ThermalRequestActiveActivity',0
aTargetdevicena db 'targetDeviceName',0
                dw 7016h
aOlicydeviceser db 'olicyDeviceService',0
                db 1, 74h, 6Fh, 74h, 61h
aLtime          db 'lTime',0
aActivetime     db 8,'activeTime',0
aPartaPrivtags_27 db 8,'PartA_PrivTags',0
                dw 60Ah
dword_14002722C dd 50Bh                 ; DATA XREF: sub_14038A2B4+11E↓o
                db 2 dup(0)
                dd 400000h
                dw 6800h
                db    0
                db 80h, 0, 54h, 68h, 65h, 72h, 6Dh
aAlzoneactiveac db 'alZoneActiveActivity',0
aThermalzonenam db 'thermalZoneName',0
                db 16h, 7Ah, 6Fh
aNedescription  db 'neDescription',0
                dw 7401h
aOtaltime       db 'otalTime',0
aActivetimes    db 8,'activeTimes',0
aHpartaPrivtags db 'HPartA_PrivTags',0
                dw 60Ah
byte_1400272A0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14038A588+15B↓o
                dd 400000h
                dw 7300h, 8000h, 5400h
aHermalrequestp db 'hermalRequestPassiveHistogram',0
aTargetdevicena_0 db 'targetDeviceName',0
                db 16h
aPolicydevicese db 'policyDeviceService',0
                dd 72687401h
aOttlehistogram db 'ottleHistogram',0
                db 28h
                dq 74656B6375620015h, 6C6F687365726854h
                db 64h, 73h, 0, 24h, 15h, 0, 6
byte_14002731F  db 0Bh                  ; DATA XREF: sub_140573B2C+B0↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 47h, 80h, 6D53h
aBioschange     db 'biosChange',0
                db 4Fh, 6Ch
                dd 62615464h
aLeaddr         db 'leAddr',0
aOldtablelen    db 0Ah
                db 'OldTableLen',0
aNewtableaddr   db 8,'NewTableAddr',0
aNewtablelen    db 0Ah
                db 'NewTableLen',0
                db 8, 6
word_140027372  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140573CF4+49↓o
                dd 400000h
                dd 80003100h
                db    0
aThermalstandby db 'ThermalStandbyInitiated',0
aFirstthermalst db 'firstThermalStandby',0
                db 0Dh, 6
                db 0Bh                  ; DATA XREF: sub_1405738D8+48↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 1Dh, 80h, 7243h
a3tripped       db '3Tripped',0
aGenerationid   db 'generationId',0
                dw 608h
byte_1400273D8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14057383C+48↓o
                dd 400000h
                dw 1F00h, 8000h, 4300h
                dd 694D3372h
aTigated        db 'tigated',0
aGenerationid_0 db 'generationId',0
                db 8, 6
byte_140027403  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140573C24+59↓o
                db 0
                dd 400000h
                align 2
                dw 4Fh
                db  80h
                align 2
aThermalstandby_0 db 'ThermalStandbyComplete',0
aCompletionreas db 'completionReason',0
aStandbytime    db 8,'standbyTime',0
                db 8
                db 66h, 69h
                dd 54747372h
aHermalstandby  db 'hermalStandby',0
                db 0Dh, 6
                dw 50Bh                 ; DATA XREF: sub_14038A124+112↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 6Bh, 0, 80h, 0, 54h, 68h, 65h
aRmalzonepassiv db 'rmalZonePassiveHistogram',0
aThermalzonenam_0 db 'thermalZoneName',0
                db 16h, 7Ah, 6Fh, 6Eh, 65h, 44h, 65h
aScription      db 'scription',0
                dw 7401h, 7268h, 746Fh
aTlehistogram   db 'tleHistogram',0
                db 28h, 15h, 0
aBucketthreshol db 'bucketThresholds',0
                db 24h, 15h, 0, 6
byte_1400274D5  db 0Bh, 5, 0            ; DATA XREF: sub_140573EBC+160↓o
                db 3 dup(0)
                dd 400000h
                align 20h
                dq 656E6F5A0080008Fh, 7070697254337243h, 72656E6567006465h
                dq 64496E6F697461h
                db 8, 70h, 6Fh, 6Ch
                dd 44796369h
aRiver_0        db 'river',0
                dw 384h
aPassiveengaged db 'passiveEngaged',0
                db 84h
                db    3
aActiveengaged  db 'activeEngaged',0
                db 84h
                db    3
aTemperature    db 'temperature',0
aTrippointtempe db 8,'tripPointTemperature',0
aZonename       db 8,'zoneName',0
                db 1, 7Ah, 6Fh
aNedescription_0 db 'neDescription',0
                dw 601h
byte_140027570  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140573D90+CF↓o
                dd 400000h
                dw 3A00h
                dd 5A008000h
aOnecr3mitigate db 'oneCr3Mitigated',0
aGenerationid_1 db 'generationId',0
aTemperature_0  db 8,'temperature',0
aZonename_0     db 8,'zoneName',0
                db 1, 6
word_1400275B6  dw 50Bh                 ; DATA XREF: sub_1402BB8E8+140↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 42h, 0, 80h, 0, 50h, 6Fh, 46h
aXdefaultpepwor db 'xDefaultPepWorkerOrphaned',0
aNumextradevice db 'NumExtraDevices',0
aPartaPrivtags_28 db 8,'PartA_PrivTags',0
                dw 60Ah
dword_140027604 dd 50Bh                 ; DATA XREF: sub_1402BB8E8+196737↓o
                db 2 dup(0)
                dd 400000h
                dw 3300h
                db 0, 80h
                dd 466F5000h
aXdefaultpepwor_0 db 'xDefaultPepWorkerRecovered',0
aNumextradevice_0 db 'NumExtraDevices',0
                db 8, 6
byte_140027643  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140573974+9A↓o
                db 0
                dd 400000h
                align 2
                dw 0B7h
                db  80h
                align 2
aPowerreconfign db 'PowerReconfigNotification',0
aTimestamputc   db 'timeStampUTC',0
                db 11h, 62h, 61h, 2 dup(74h), 65h, 72h
                db 79h, 43h, 6Fh, 75h, 6Eh
                dd 62080074h
aAtterycapacity db 'atteryCapacity',0
aBatterycharge_0 db 8,'batteryCharge',0
aAcpoweronline_0 db 8,'acPowerOnline',0
aWeakcharger    db 0Dh,'weakCharger',0
aBatterydischar_0 db 0Dh,'batteryDischarging',0
aBatteryusbweak db 0Dh,'batteryUsbWeakCharger',0
aBatterychargin db 0Dh,'batteryChargingState',0
                db 8, 6
word_140027706  dw 50Bh                 ; DATA XREF: sub_1405721D4+279↓o
                db 4 dup(0)
                dd 400000h
                dd 8000C000h
                dd 706F5000h
aDiagfxdeviceac db 'DiagFxDeviceAccounting',0
aScenarioid     db 'ScenarioId',0
aInstancepath_0 db 0Ah
                db 'InstancePath',0
                db  16h
aCsactivetime   db 'CsActiveTime',0
aCsactivetimebu db 0Ah
                db 'CsActiveTimeBuckets',0
                db 2Ah, 5, 0, 43h, 73h
aActivetimeperb db 'ActiveTimePerBucket',0
                dd 4300052Ah
aSactivetimeuna db 'sActiveTimeUnattributed',0
aDeviceclassnam db 0Ah
                db 'DeviceClassName',0
                db 16h, 44h, 65h, 76h, 69h, 63h, 65h
aClassguid_2    db 'ClassGuid',0
                dw 4616h, 6972h, 6E65h
aDlyname        db 'dlyName',0
                db 16h, 6
word_1400277D2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1405727EC+C4↓o
                dd 400000h
                dd 80008200h
                db    0
aPopdiagfxgloba db 'PopDiagFxGlobalDeviceAccounting',0
aScenarioid_0   db 'ScenarioId',0
aCsactivetime_0 db 0Ah
                db 'CsActiveTime',0
aCsactivetimebu_0 db 0Ah
                db 'CsActiveTimeBuckets',0
                db 2Ah
                db    5
                align 2
aCsactivetimepe db 'CsActiveTimePerBucket',0
                dd 4300052Ah
aSunattributedt db 'sUnattributedTime',0
                dw 60Ah
byte_140027860  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140571AF8+15E↓o
                dd 400000h
                dw 7200h, 8000h, 4400h
aRipshistogram  db 'ripsHistogram',0
aCssessionid_3  db 'csSessionId',0
                dw 430Ah, 4473h, 7275h
                dq 4D6E496E6F697461h
                db 69h, 6Eh
                dd 73657475h
                dw 600h
aDripspercentag db 'DripsPercentage',0
                dq 3274656B63754204h, 656B637542040073h, 7542040073363174h
                dq 4006D3174656B63h, 614D74656B637542h
                db 78h, 69h, 6Dh, 0, 4, 6
word_1400278DE  dw 50Bh                 ; DATA XREF: sub_1408EB7F0+296↓o
                db 4 dup(0)
                dd 400000h
                dq 706F50008000CE00h, 6F43784667616944h, 41746E656E6F706Dh
                db 2 dup(63h), 6Fh, 75h, 6Eh
                dd 676E6974h
                align 2
aScenarioid_1   db 'ScenarioId',0
aInstancepath_1 db 0Ah
                db 'InstancePath',0
                db 16h, 43h, 6Fh, 6Dh, 70h
aOnent          db 'onent',0
aCsactivetime_1 db 8,'CsActiveTime',0
aCsactivetimebu_1 db 0Ah
                db 'CsActiveTimeBuckets',0
                db 2Ah, 5, 0, 43h, 73h, 41h, 63h
aTivetimeperbuc db 'tiveTimePerBucket',0
                dw 52Ah, 4300h, 4173h
aCtivetimeunatt db 'ctiveTimeUnattributed',0
aDeviceclassnam_0 db 0Ah
                db 'DeviceClassName',0
                db 16h
aDeviceclassgui db 'DeviceClassGuid',0
                dq 6C646E6569724616h, 61600656D614E79h
byte_1400279B8  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14038C614+4B↓o
                dd 0
                dw 9700h, 8000h, 4500h
aNergysaverenga db 'nergySaverEngagementChanged',0
aEngagementreas db 'engagementReason',0
aDuration       db 8,'duration',0
aBatterydelta   db 0Ah
                db 'batteryDelta',0
aAcpoweronline_1 db 7,'acPowerOnline',0
aEnergysavermod db 0Dh,'energySaverMode',0
aBatterythresho db 8,'batteryThreshold',0
aUseraway       db 8,'userAway',0
aPartaPrivtags_29 db 0Dh,'PartA_PrivTags',0
                db 0Ah, 6
byte_140027A5B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1403CD6CC+43↓o
                db 0
                dd 0
                align 2
                dw 4Bh
                db  80h
                align 2
aEnergysaverset db 'EnergySaverSettingChanged',0
aEnergysavermod_0 db 'energySaverMode',0
aBatterythresho_0 db 8,'batteryThreshold',0
aUseraway_0     db 8,'userAway',0
                db 0Dh, 6
                dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408EA35C+198↓o
                dd 400000h
                dd 80009F00h
                db    0
aCsenterreason  db 'CsEnterReason',0
aCssessionid_4  db 'CsSessionId',0
aMonitorrequest_0 db 0Ah
                db 'MonitorRequestReason',0
aLidopenstate   db 8,'LidOpenState',0
aExternalmonito db 8,'ExternalMonitorConnectedState',0
aBatteryremaini db 8,'BatteryRemainingCapacityOnEnter',0
aBatteryfullcap db 8,'BatteryFullCapacityOnEnter',0
                db 8, 6
byte_140027B5D  db 0Bh, 5, 0            ; DATA XREF: sub_1408EA5D4+A5C↓o
                db 3 dup(0)
                dd 400000h
                align 8
                db  9Ah
                db 2, 80h, 0, 43h, 73h, 45h, 78h
aItreason       db 'itReason',0
aCssessionid_5  db 'CsSessionId',0
aEnergydrain    db 0Ah
                db 'EnergyDrain',0
aActiveresidenc db 8,'ActiveResidency',0
aNondripstimeac db 0Ah
                db 'NonDripsTimeActivated',0
aFirstdripsentr db 0Ah
                db 'FirstDripsEntry',0
aDripsresidency db 0Ah
                db 'DripsResidency',0
aDuration_0     db 0Ah
                db 'Duration',0
aDripstransitio db 0Ah
                db 'DripsTransitions',0
aFullchargecapa_0 db 8,'FullChargeCapacityRatio',0
                db    4
aAudioplayed    db 'AudioPlayed',0
aMonitorrequest_1 db 8,'MonitorRequestReason',0
aAudioplayback  db 8,'AudioPlayback',0
aNonactivatedcp db 0Ah
                db 'NonActivatedCpuActivity',0
aPowerstateac   db 0Ah
                db 'PowerStateAc',0
aTotalhwdripsre db 8,'TotalHwDripsResidency',0
aExitlatency    db 0Ah
                db 'ExitLatency',0
aDisconnectedst db 0Ah
                db 'DisconnectedStandby',0
aAoaccompliantn db 8,'AoAcCompliantNic',0
aNonattributedc db 8,'NonAttributedCpuActivity',0
aLidopenstate_0 db 0Ah
                db 'LidOpenState',0
aExternalmonito_0 db 8,'ExternalMonitorConnectedState',0
aBatteryremaini_0 db 8,'BatteryRemainingCapacityOnExit',0
aBatteryfullcha db 8,'BatteryFullChargeCapacityOnExit',0
aEtwpoolallocat db 8,'EtwPoolAllocationStatus',0
                db 88h, 0Eh, 49h
aNputsuppressio db 'nputSuppressionCount',0
aNonresiliencyt db 8,'NonResiliencyTime',0
aResiliencydrip db 0Ah
                db 'ResiliencyDripsTime',0
aResiliencyhwdr db 0Ah
                db 'ResiliencyHwDripsTime',0
aGdiontime      db 0Ah
                db 'GdiOnTime',0
aDwisyncflushti db 0Ah
                db 'DwiSyncFlushTime',0
aMonitorpoweron db 0Ah
                db 'MonitorPowerOnTime',0
aAggregatorinte db 0Ah
                db 'AggregatorIntent',0
                db 4
aAggregatoracti db 'AggregatorAction',0
                db 4, 6
byte_140027E03  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1408EC498+6B↓o
                db 0
                dd 400000h
                align 2
                dw 111h
                db  80h
                align 2
aManualpowerbut db 'ManualPowerButtonBugcheck',0
aTimeout_0      db 'Timeout',0
aCumulativepres_0 db 8,'CumulativePressCount',0
aCumulativerele_0 db 8,'CumulativeReleaseCount',0
aSpuriousevent  db 8,'SpuriousEvent',0
                db 84h, 3, 43h, 75h, 2 dup(6Dh), 75h
aLativelogger   db 'lativeLogger',0
aProcessedpress db 0Ah
                db 'ProcessedPressCount',0
aProcessedrelea db 8,'ProcessedReleaseCount',0
aProcessedlogge db 8,'ProcessedLogger',0
aLidstate_0     db 0Ah
                db 'LidState',0
aBugcheckenable db 8,'BugcheckEnabled',0
                db 84h, 3, 4Dh
aAnualbugcheckr db 'anualBugcheckRegistryConfig',0
aOnesettingbugc db 8,'OneSettingBugcheckRegistryConfig',0
                dw 608h
byte_140027F20  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408EC498+1B0↓o
                dd 800000h
                dw 1900h, 8001h, 5300h
aPuriousmanualp db 'puriousManualPowerButtonBugcheck',0
aTimeout_1      db 'Timeout',0
aCumulativepres_1 db 8,'CumulativePressCount',0
aCumulativerele_1 db 8,'CumulativeReleaseCount',0
aSpuriousevent_0 db 8,'SpuriousEvent',0
                dw 384h
aCummulativelog db 'CummulativeLogger',0
aProcessedpress_0 db 0Ah
                db 'ProcessedPressCount',0
aProcessedrelea_0 db 8,'ProcessedReleaseCount',0
aProcessedlogge_0 db 8,'ProcessedLogger',0
aLidstate_1     db 0Ah
                db 'LidState',0
aBugcheckenable_0 db 8,'BugcheckEnabled',0
                dw 384h, 614Dh, 756Eh
aAlbugcheckregi db 'alBugcheckRegistryConfig',0
aOnesettingbugc_0 db 8,'OneSettingBugcheckRegistryConfig',0
                db 8, 6
byte_140028045  db 0Bh, 5, 0            ; DATA XREF: sub_14037B08C+119C5D↓o
                db 3 dup(0)
                dd 400000h
                align 10h
                dq 72496F5000800085h, 6873696E694670h, 5464657370616C45h
                dq 6174530800656D69h, 0A00656D69547472h, 69546873696E6946h
                dq 766972440A00656Dh, 6374615701007265h, 656D6954676F6468h
                dq 776F50080074756Fh, 5465746174537265h, 776F500800657079h
                dq 65746174537265h, 7461745370724908h, 7261500E88007375h
                dq 54766972505F4174h
                db 61h, 67h, 73h, 0, 0Ah, 6
word_1400280D6  dw 50Bh                 ; DATA XREF: sub_140780398+A6↓o
                db 4 dup(0)
                dd 0
                db    0
                db 3Dh, 0, 80h, 0, 53h, 70h, 6Fh
aIlbatteryestim db 'ilBatteryEstimation',0
aIsspoiledindef db 'isSpoiledIndefinate',0
aSpoilertype    db 0Dh,'spoilerType',0
                db 8, 6
byte_14002811F  db 0Bh                  ; DATA XREF: sub_1408EED8C+115↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 63h, 80h, 6142h
aTterychargeper db 'tteryChargePercentageChange',0
aRemainingperce_0 db 'RemainingPercentage',0
aPercentagechan db 8,'PercentageChange',0
aAcdcstate      db 7,'AcDcState',0
aElapsedtimems  db 8,'ElapsedTimeMs',0
                db 8, 6
word_14002818E  dw 50Bh                 ; DATA XREF: sub_1408EF104+134↓o
                db 4 dup(0)
                dd 0
                db    0
                db 48h, 0, 80h, 0, 43h, 68h, 61h
aRgetimeestimat db 'rgeTimeEstimate',0
aCapacity       db 'capacity',0
aEstimate       db 0Ah
                db 'estimate',0
aMaxrate        db 0Ah
                db 'maxRate',0
aPath_2         db 0Ah
                db 'path',0
                dw 284h, 6172h, 6574h
                dq 65746174730A00h
                db 8, 6
word_1400281E2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408EDFD4+3C3↓o
                dd 0
                dd 80024100h
                db    0
aBatteryenergyc db 'BatteryEnergyChange',0
aDevicename     db 'deviceName',0
                db  16h
aEnergycounterm db 'energyCountermW',0
aIsenergycounte db 0Ah
                db 'isEnergyCounterUnavailable',0
                db 2, 69h, 73h
aCapacityrelati db 'CapacityRelative',0
                db 2, 69h, 73h, 46h, 2 dup(63h), 55h
aNavailable     db 'navailable',0
                db 2, 69h, 73h, 43h, 61h
aPacityunavaila db 'pacityUnavailable',0
                dw 6502h, 656Eh, 6772h
aYchangemw      db 'yChangemW',0
aLaststateofcha db 9,'lastStateOfCharge',0
aLaststateofcha_0 db 8,'lastStateOfChargeFccAdjusted',0
aLastfullcharge db 8,'lastFullChargedCapacity',0
aActivebatteryc_0 db 8,'activeBatteryCount',0
aIspoweronlineb db 8,'isPowerOnlineBatteryFlag',0
                dw 6902h, 4473h, 7369h
aChargingbatter db 'chargingBatteryFlag',0
                dd 43736902h
aHargingbattery db 'hargingBatteryFlag',0
                db 2, 69h, 73h, 43h, 72h
aIticalbatteryf db 'iticalBatteryFlag',0
                dw 6902h, 4273h, 7461h
aTerychargelimi db 'teryChargeLimitingFlag',0
                db 2
aIsbatterycharg db 'isBatteryChargingStatePowerSupplyPresentFlag',0
                db 2, 69h, 73h
aBatterychargin_0 db 'BatteryChargingStateAdequateFlag',0
                db 2, 70h, 65h, 72h, 63h, 65h, 6Eh
aTcapacity      db 'tCapacity',0
aMillipercentca db 8,'milliPercentCapacity',0
aStateofcharge  db 8,'stateOfCharge',0
aFullchargedcap db 8,'fullChargedCapacity',0
aInstantaneousv db 8,'instantaneousVoltage',0
aInstantaneousr db 8,'instantaneousRate',0
                db 7, 6
byte_14002842F  db 0Bh                  ; DATA XREF: sub_14077E604+D2008↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 1F4h, 80h, 6F43h
aMpositebattery db 'mpositeBatteryEnergyChange',0
aEnergycounterm_0 db 'energyCountermW',0
aIsenergycounte_0 db 0Ah
                db 'isEnergyCounterUnavailable',0
                db 2
aIscapacityrela db 'isCapacityRelative',0
                db 2, 69h, 73h, 46h, 63h
aCunavailable   db 'cUnavailable',0
                db 2, 69h, 73h
aCapacityunavai db 'CapacityUnavailable',0
                dd 656E6502h
aRgychangemw    db 'rgyChangemW',0
aActivebatteryc_1 db 9,'activeBatteryCount',0
aIspoweronlineb_0 db 8,'isPowerOnlineBatteryFlag',0
                dw 6902h, 4473h, 7369h
aChargingbatter_0 db 'chargingBatteryFlag',0
                dd 43736902h
aHargingbattery_0 db 'hargingBatteryFlag',0
                db 2, 69h, 73h, 43h, 72h
aIticalbatteryf_0 db 'iticalBatteryFlag',0
                dw 6902h, 4273h, 7461h
aTerychargelimi_0 db 'teryChargeLimitingFlag',0
                db 2
aIsbatterycharg_0 db 'isBatteryChargingStatePowerSupplyPresentFlag',0
                db 2, 69h, 73h
aBatterychargin_1 db 'BatteryChargingStateAdequateFlag',0
                db 2, 70h, 65h, 72h, 63h, 65h, 6Eh
aTcapacity_0    db 'tCapacity',0
aMillipercentca_0 db 8,'milliPercentCapacity',0
aStateofcharge_0 db 8,'stateOfCharge',0
aFullchargedcap_0 db 8,'fullChargedCapacity',0
aInstantaneousv_0 db 8,'instantaneousVoltage',0
aInstantaneousr_0 db 8,'instantaneousRate',0
                db 7, 6
byte_14002862F  db 0Bh                  ; DATA XREF: sub_14077E6B0+D22E4↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 1A9h, 80h, 6557h
aAkcharger      db 'akCharger',0
aIskerneldetect db 'isKernelDetectedWeakCharger',0
aActivebatteryc_2 db 0Dh,'activeBatteryCount',0
aIspoweronlineb_1 db 8,'isPowerOnlineBatteryFlag',0
                dd 44736902h
aIschargingbatt db 'ischargingBatteryFlag',0
                dw 6902h
aSchargingbatte db 'sChargingBatteryFlag',0
                db 2, 69h, 73h
aCriticalbatter db 'CriticalBatteryFlag',0
                dd 42736902h
aAtterychargeli db 'atteryChargeLimitingFlag',0
                db 2, 69h, 73h, 42h, 61h, 2 dup(74h)
aErychargingsta db 'eryChargingStatePowerSupplyPresentFlag',0
                db 2
aIsbatterycharg_1 db 'isBatteryChargingStateAdequateFlag',0
                db 2, 70h, 65h, 72h, 63h
aEntcapacity    db 'entCapacity',0
aMillipercentca_1 db 8,'milliPercentCapacity',0
aStateofcharge_1 db 8,'stateOfCharge',0
aFullchargedcap_1 db 8,'fullChargedCapacity',0
aInstantaneousv_1 db 8,'instantaneousVoltage',0
aInstantaneousr_1 db 8,'instantaneousRate',0
aWnfpublishstat db 7,'wnfPublishStatus',0
                db 88h, 0Eh, 50h, 61h, 72h, 74h, 41h
aPrivtags_1     db '_PrivTags',0
                dw 60Ah
dword_1400287E4 dd 50Bh                 ; DATA XREF: sub_14077E6B0+D2549↓o
                db 2 dup(0)
                dd 400000h
                dw 0A700h
                db    1
                db 80h, 0, 42h, 61h, 2 dup(74h), 65h
aRydischarging  db 'ryDischarging',0
aIskerneldetect_0 db 'isKernelDetectedBatteryDischarging',0
aActivebatteryc_3 db 0Dh,'activeBatteryCount',0
aIspoweronlineb_2 db 8,'isPowerOnlineBatteryFlag',0
                db 2
aIsdischargingb db 'isDischargingBatteryFlag',0
                db 2, 69h, 73h, 43h, 68h, 61h, 72h
aGingbatteryfla db 'gingBatteryFlag',0
                db    2
aIscriticalbatt db 'isCriticalBatteryFlag',0
                db 2
aIsbatterycharg_2 db 'isBatteryChargeLimitingFlag',0
                dd 42736902h
aAtterycharging db 'atteryChargingStatePowerSupplyPresentFlag',0
                dw 6902h, 4273h, 7461h
aTerychargingst db 'teryChargingStateAdequateFlag',0
                dw 7002h
aErcentcapacity db 'ercentCapacity',0
aMillipercentca_2 db 8,'milliPercentCapacity',0
aStateofcharge_2 db 8,'stateOfCharge',0
aFullchargedcap_2 db 8,'fullChargedCapacity',0
aInstantaneousv_2 db 8,'instantaneousVoltage',0
aInstantaneousr_2 db 8,'instantaneousRate',0
aWnfpublishstat_0 db 7,'wnfPublishStatus',0
                db 88h, 0Eh, 6
byte_140028997  db 0Bh                  ; DATA XREF: sub_14077DDF0+D1BC3↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 4Fh, 80h, 6142h
aTterychargelim db 'tteryChargeLimitingMode',0
aIsbatterycharg_3 db 'IsBatteryChargeLimitingMode',0
                dd 6E770384h
aFpublishstatus db 'fPublishStatus',0
                db 88h
                db 0Eh, 6
                dw 50Bh, 2 dup(0)       ; DATA XREF: sub_14077DDF0+D1F42↓o
                dd 400000h
                dd 8001DA00h
                db    0
aCompositebatte db 'CompositeBattery',0
aActivebatteryc_4 db 'activeBatteryCount',0
aIspoweronlineb_3 db 8,'isPowerOnlineBatteryFlag',0
                db 2
aIsdischargingb_0 db 'isDischargingBatteryFlag',0
                db 2, 69h, 73h, 43h, 68h, 61h, 72h
aGingbatteryfla_0 db 'gingBatteryFlag',0
                db    2
aIscriticalbatt_0 db 'isCriticalBatteryFlag',0
                db 2
aIsbatterycharg_4 db 'isBatteryChargeLimitingFlag',0
                dd 42736902h
aAtterycharging_0 db 'atteryChargingStatePowerSupplyPresentFlag',0
                dw 6902h, 4273h, 7461h
aTerychargingst_0 db 'teryChargingStateAdequateFlag',0
                dw 7002h
aErcentcapacity_0 db 'ercentCapacity',0
aMillipercentca_3 db 8,'milliPercentCapacity',0
aStateofcharge_3 db 8,'stateOfCharge',0
aFullchargedcap_3 db 8,'fullChargedCapacity',0
aInstantaneousv_3 db 8,'instantaneousVoltage',0
aInstantaneousr_3 db 8,'instantaneousRate',0
aGlobalbatteryc db 7,'globalBatteryCount',0
aActivebatteryc_5 db 8,'activeBatteryCount',0
aIscapacityrela_0 db 8,'isCapacityRelativeBatteryFlag',0
                db 2, 64h, 65h, 73h, 69h, 67h, 6Eh
aEdcapacity     db 'edCapacity',0
aWnfpublishstat_1 db 8,'wnfPublishStatus',0
                db 88h, 0Eh, 6
                db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14077DDF0+D2013↓o
                dd 0
                dw 2800h, 8000h, 5000h
aOwerstatechang db 'owerStateChange',0
aWnfpublishstat_2 db 'wnfPublishStatus',0
                db 88h, 0Eh, 6
                dd 50Bh                 ; DATA XREF: sub_14077E1FC+D1ECD↓o
                db 2 dup(0)
                dd 0
                dw 3800h
                db    0
                db 80h, 0, 42h, 61h, 2 dup(74h), 65h
aRychargelevel  db 'ryChargeLevel',0
aBatterylevel   db 'batteryLevel',0
                db 2, 77h, 6Eh, 66h, 50h
aUblishstatus   db 'ublishStatus',0
                db 88h, 0Eh, 6
                db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14077E1FC+D1F36↓o
                dd 400000h
                dw 3700h, 8000h, 4200h
aAtterystatenot db 'atteryStateNotification',0
aBatterylow     db 'batteryLow',0
aBatterylevel_0 db 0Dh,'batteryLevel',0
                db 8, 6
byte_140028C93  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_14057BCD0+1E7↓o
                db 0
                dd 400000h
                align 2
                dw 72h
                db  80h
                align 2
aPopdripswakesp db 'PopDripsWakeSpuriousBuckets',0
aCssessionid_6  db 'CsSessionId',0
aSpuriouswakebu db 0Ah
                db 'SpuriousWakeBucketCounts',0
aHspuriouswakeb db 'HSpuriousWakeBucketTimesMs',0
aJpartaPrivtags db 'JPartA_PrivTags',0
                db 0Ah
                db 6
byte_140028D11  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408F6020+2AB↓o
                dd 400000h
                align 4
                dd 80023Eh
aPodripswakesou db 'PoDripsWakeSource',0
aCssessionid_7  db 'CsSessionId',0
aType_7         db 0Ah
                db 'Type',0
aReason1        db 8,'Reason1',0
                db 16h, 52h, 65h
aAson2          db 'ason2',0
                dw 5216h
aEason3         db 'eason3',0
                db 16h
aCount_18       db 'Count',0
aIdleminduratio db 8,'IdleMinDurationInUs',0
aIdlemaxduratio db 0Ah
                db 'IdleMaxDurationInUs',0
aIdletotaldurat db 0Ah
                db 'IdleTotalDurationInUs',0
aCpuwakemasks   db 0Ah
                db 'CpuWakeMasks',0
                db 0D8h, 2, 47h
aRoup           db 'roup',0
                db 6, 4Dh, 61h
                db  73h ; s
                db 6Bh, 0, 0Ah, 49h, 64h, 6Ch, 65h
aIntervalcountb db 'IntervalCountBucketLimitsInMs',0
                db '*',0Ah,0
aIdleintervalco db 'IdleIntervalCountBuckets',0
                db '(',9,0
aPeriodinterval db 'PeriodIntervalCountBucketLimitsInMs',0
                db 2Ah, 0Ch, 0, 50h, 65h, 72h, 69h
aOdintervalcoun db 'odIntervalCountBuckets',0
                db 28h
                dq 7367616C46000Bh
aActivetotaltim db 8,'ActiveTotalTimeUs',0
aActivebucketco db 0Ah
                db 'ActiveBucketCounts',0
                db 28h
                db    5
                align 2
aActivebucketti db 'ActiveBucketTimesUs',0
                dw 52Ah
                db    0
aActivatortotal db 'ActivatorTotalTimeUs',0
aActivatorbucke db 0Ah
                db 'ActivatorBucketCounts',0
                db 28h, 5, 0
aActivatorbucke_0 db 'ActivatorBucketTimesUs',0
                db 2Ah
                db    5
                align 2
aDevicetotaltim db 'DeviceTotalTimeUs',0
aDevicebucketco db 0Ah
                db 'DeviceBucketCounts',0
                db  28h ; (
                db 5, 0, 44h, 65h, 76h, 69h, 63h
aEbuckettimesus db 'eBucketTimesUs',0
                db 2Ah
                db    5
                align 2
aExcesstotaltim db 'ExcessTotalTimeUs',0
aExcessbucketco db 0Ah
                db 'ExcessBucketCounts',0
                db  28h ; (
                db 3, 0, 45h, 78h, 63h, 65h, 73h
aSbuckettimesus db 'sBucketTimesUs',0
                db 2Ah
                db 3, 0, 6
byte_140028F5B  db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_1405D7978+2130E0↓o
                db 0
                dd 400000h
                align 2
                dw 25h
                dq 69446B636F4C0080h, 6D695479616C7073h, 7265764F74756F65h
                dq 6974634165646972h
                db 76h, 65h, 0, 6
dword_140028F8C dd 50Bh                 ; DATA XREF: sub_14067622C+78↓o
                db 2 dup(0)
                dd 0
                dw 5200h
                db    0
                db 80h, 0, 50h, 6Fh, 77h, 65h, 72h
aRequeststats   db 'RequestStats',0
aAction_1       db 'Action',0
                dd 776F5002h
aErrequester    db 'erRequester',0
                dd 776F5001h
aErrequestid    db 'erRequestId',0
aPowerrequester db 7,'PowerRequesterType',0
                db 8, 6
word_140028FEA  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408F7ADC+1B6↓o
                dd 0
                dd 80005F00h
                db    0
aPowerrequestst db 'PowerRequestStats',0
aAction_2       db 'Action',0
                dw 5002h, 776Fh, 7265h
aRequestername  db 'RequesterName',0
                dw 4101h
aCcruedtimesec  db 'ccruedTimeSec',0
aRunning        db 0Ah
                db 'Running',0
aScenarioinstan db 0Dh,'ScenarioInstanceId',0
                db 0Ah, 6
byte_140029055  db 0Bh, 5, 0            ; DATA XREF: sub_1408F8A70+1FE↓o
                db 3 dup(0)
                dd 400000h
                align 20h
                db  81h
                align 2
                dw 80h, 7242h, 616Fh
aDcasttreeerror db 'dcastTreeErrorRecord',0
aScenarioid_2   db 'ScenarioId',0
aRootdeviceid   db 0Ah
                db 'RootDeviceId',0
aBroadcasttreei db 8,'BroadcastTreeId',0
aFlags_2        db 8,'Flags',0
aErrordeviceid  db 8,'ErrorDeviceId',0
aReasoncode     db 8,'ReasonCode',0
aCount_19       db 8,'Count',0
aPartaPrivtags_30 db 8,'PartA_PrivTags',0
                db 0Ah, 6
word_1400290E2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1408F8E84+3D5↓o
                dd 400000h
                dd 8000E100h
                db    0
aDevicediagnost db 'DeviceDiagnostics',0
aScenarioid_3   db 'ScenarioId',0
                dw 4604h
aRiendlyname    db 'riendlyName',0
                dd 72614816h
aDwareid        db 'dwareId',0
                db  16h
aDeviceclassnam_1 db 'DeviceClassName',0
                db 16h, 44h, 65h, 76h, 69h, 63h, 65h
aClassguid_3    db 'ClassGuid',0
                dw 4216h, 6F72h, 6461h
aCasttreeid     db 'castTreeId',0
aDfxtransitionc db 8,'DfxTransitionCount',0
aPs4transitionc db 8,'Ps4TransitionCount',0
aFlags_3        db 8,'Flags',0
aInstancepath_2 db 8,'InstancePath',0
                dq 6972616E65635316h, 440A00325664496Fh, 64496563697665h
                dq 6563697672655308h, 61501600656D614Eh, 766972505F417472h
aTags_2         db 'Tags',0
                db 0Ah, 6
byte_1400291CF  db 0Bh                  ; DATA XREF: sub_1408F8864+15F↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 0AEh, 80h, 6553h
aSsionstatistic db 'ssionStatistics',0
aScenarioid_4   db 'ScenarioId',0
aEnabledmitigat db 0Ah
                db 'EnabledMitigations',0
aAllowedmitigat db 8,'AllowedMitigations',0
aEngagedmitigat db 8,'EngagedMitigations',0
aPnpdisengageti db 8,'PnpDisengageTime',0
aRequestcountst db 0Ah
                db 'RequestCountsTotal',0
                db 28h, 1Ah, 0
aRequestblockin db 'RequestBlockingTimes',0
                db 2Ah, 1Ah, 0
aPartaPrivtags_31 db 'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140029289  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408F8A70+AE↓o
                dd 400000h
                align 4
                dd 8000FCh
aBroadcasttrees db 'BroadcastTreeStatistics',0
aScenarioid_5   db 'ScenarioId',0
aRootdeviceid_0 db 0Ah
                db 'RootDeviceId',0
aDevicemarkedco db 8,'DeviceMarkedCount',0
aBroadcasttreei_0 db 8,'BroadcastTreeId',0
aFlags_4        db 8,'Flags',0
aMitigatedactiv db 8,'MitigatedActiveTimeBuckets',0
                db  28h ; (
                db 5, 0, 4Dh, 69h, 74h, 69h, 67h
aAtedactivetime db 'atedActiveTimePerBucket',0
                db  2Ah ; *
                db 5, 0, 46h, 61h, 69h, 6Ch, 75h
aRereasoncounts db 'reReasonCounts',0
                db '(',9,0
aPowereddowntim db 'PoweredDownTimeBuckets',0
                db 28h, 5, 0, 50h, 6Fh, 77h, 65h
aReddowntimeper db 'redDownTimePerBucket',0
                db 2Ah, 5, 0
aPartaPrivtags_32 db 'PartA_PrivTags',0
                db 0Ah
                db 6
byte_140029391  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14057EE94+6A↓o
                dd 0
                align 4
                dd 800052h
aPlpowerplanepr db 'PlPowerPlaneProfile',0
aMessageversion db 'MessageVersion',0
                db 6, 50h, 6Fh, 77h, 65h
aRplaneid       db 'rPlaneId',0
                db 16h, 44h, 65h, 76h, 69h, 63h, 65h
aCount_20       db 'Count',0
aDevicepowermw  db 8,'DevicePowerMw',0
                db 7, 6
byte_1400293EF  db 0Bh                  ; DATA XREF: sub_14057EE94+140↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 8Ch, 80h, 6C50h
aPowerplanedevi db 'PowerPlaneDeviceProfile',0
aMessageversion_0 db 'MessageVersion',0
                db 6
aDeviceid       db 'DeviceId',0
                db 16h, 50h, 6Fh, 77h, 65h, 72h, 50h
aLaneid         db 'laneId',0
                db 16h
aComponentcount db 'ComponentCount',0
aPowerdrawmw    db 8,'PowerDrawMw',0
aDxpower        db 7,'DxPower',0
                db 0D8h, 2, 45h
aXclusivepowerm db 'xclusivePowerMw',0
aPeakpowermw    db 8,'PeakPowerMw',0
                db 8, 6
byte_140029487  db 0Bh                  ; DATA XREF: sub_14057EE94+2C3↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 81h, 80h, 6C50h
aPowerplanecomp db 'PowerPlaneComponentProfile',0
aMessageversion_1 db 'MessageVersion',0
                dw 4306h, 6D6Fh, 6F70h
aNentguid       db 'nentGuid',0
                db 0Fh, 44h, 65h, 76h, 69h, 63h, 65h
                dq 65776F5016006449h, 6449656E616C5072h, 65776F5078461600h
                dq 6C63784502D80072h, 776F506576697375h, 65500800774D7265h
                dq 4D7265776F506B61h
                db 77h, 0, 8, 6
dword_140029514 dd 50Bh                 ; DATA XREF: sub_1407B3DCC+1E8↓o
                db 2 dup(0)
                dd 0
                dw 7700h
                db    0
                db 80h, 0, 50h, 6Ch, 55h, 6Eh, 72h
aEgisterdevice  db 'egisterDevice',0
aMessageversion_2 db 'MessageVersion',0
                db 6, 44h, 65h
aViceid         db 'viceId',0
                db 16h
aDevicepowerdel db 'DevicePowerDeltaMw',0
aDevicepowermw_0 db 7,'DevicePowerMw',0
aSystempowerdel db 7,'SystemPowerDeltaMw',0
aSystempowermw  db 7,'SystemPowerMw',0
                db 7, 6
byte_140029597  db 0Bh                  ; DATA XREF: sub_1408FB1BC+2E↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 39h, 80h, 6C50h
aUnregistercomp db 'UnregisterComponent',0
aMessageversion_3 db 'MessageVersion',0
                db 6, 43h, 6Fh, 6Dh, 70h
aOnentguid      db 'onentGuid',0
                dw 60Fh
dword_1400295DC dd 50Bh                 ; DATA XREF: sub_1403BE598+71↓o
                db 2 dup(0)
                dd 0
                dw 5700h
                db    0
                db 80h, 0, 50h, 6Ch, 52h, 65h, 67h
aIsterdevice    db 'isterDevice',0
aMessageversion_4 db 'MessageVersion',0
                db 6, 44h, 65h, 76h, 69h
aCeid           db 'ceId',0
                db 16h, 50h, 6Fh
aWerprofileregi db 'werProfileRegistered',0
aComponentcount_0 db 0Dh,'ComponentCount',0
                db 8, 6
byte_14002963F  db 0Bh                  ; DATA XREF: sub_1403BE488+E8↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 69h, 80h, 6C50h
aRegistercompon db 'RegisterComponent',0
aMessageversion_5 db 'MessageVersion',0
                db 6, 43h, 6Fh, 6Dh, 70h, 6Fh, 6Eh
aEntguid        db 'entGuid',0
                db  0Fh
aPowerprofilere db 'PowerProfileRegistered',0
aIdlestatecount db 0Dh,'IdleStateCount',0
aDeviceid_0     db 8,'DeviceId',0
                dw 616h
dword_1400296B4 dd 50Bh                 ; DATA XREF: sub_14057EA38+55↓o
                db 2 dup(0)
                dd 0
                dw 6000h
                db    0
                db 80h, 0, 50h, 6Ch, 50h, 75h, 62h
aLishsystempowe db 'lishSystemPowerChange',0
aMessageversion_6 db 'MessageVersion',0
                db 6, 50h, 6Fh
aWerplaneid     db 'werPlaneId',0
                db 16h, 53h, 79h, 73h, 74h
aEmpowerdeltamw db 'emPowerDeltaMw',0
aSystempowermw_0 db 7,'SystemPowerMw',0
                dw 607h
byte_140029720  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14039D3AC+104F3A↓o
                dd 0
                dw 9400h, 8000h, 5000h
aLnotifydeviced db 'lNotifyDeviceDState',0
aMessageversion_7 db 'MessageVersion',0
                db 6, 44h, 65h, 76h, 69h
aCeid_0         db 'ceId',0
                db 16h, 54h, 72h
aAnsactionstate db 'ansactionState',0
                db 2
aDxstate        db 'DxState',0
                db    2
aDevicepowerdel_0 db 'DevicePowerDeltaMw',0
aDevicepowermw_1 db 7,'DevicePowerMw',0
aSystempowerdel_0 db 7,'SystemPowerDeltaMw',0
aSystempowermw_1 db 7,'SystemPowerMw',0
                dw 607h
byte_1400297C0  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1403A4A68+101843↓o
                dd 0
                dw 0A300h, 8000h, 5000h
aLnotifydevicef db 'lNotifyDeviceFState',0
aMessageversion_8 db 'MessageVersion',0
                db 6, 43h, 6Fh, 6Dh, 70h
aOnentguid_0    db 'onentGuid',0
                dw 540Fh, 6172h, 736Eh
aActionstate    db 'actionState',0
                dd 53784602h
aTate           db 'tate',0
aDevicepowerdel_1 db 8,'DevicePowerDeltaMw',0
aDevicepowermw_2 db 7,'DevicePowerMw',0
aSystempowerdel_1 db 7,'SystemPowerDeltaMw',0
aSystempowermw_2 db 7,'SystemPowerMw',0
aDeviceid_1     db 7,'DeviceId',0
                db 16h, 6
byte_14002986F  db 0Bh                  ; DATA XREF: sub_14057EB50+147↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 77h, 80h, 6C50h
aRegisterfxdevi db 'RegisterFxDevice',0
aMessageversion_9 db 'MessageVersion',0
                db    6
aDeviceid_2     db 'DeviceId',0
                dw 4416h, 7665h, 6369h
aEpowerdeltamw  db 'ePowerDeltaMw',0
aDevicepowermw_3 db 7,'DevicePowerMw',0
aSystempowerdel_2 db 7,'SystemPowerDeltaMw',0
aSystempowermw_3 db 7,'SystemPowerMw',0
                db 7, 6
word_1400298F2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_14057E860+BC↓o
                dd 0
                dd 80008300h
                db    0
aPlregisterunre db 'PlRegisterUnregisteredFxDevice',0
aMessageversion_10 db 'MessageVersion',0
                db 6
aDeviceid_3     db 'DeviceId',0
                db 16h, 44h, 65h, 76h, 69h, 63h, 65h
aPowerdeltamw   db 'PowerDeltaMw',0
aDevicepowermw_4 db 7,'DevicePowerMw',0
aSystempowerdel_3 db 7,'SystemPowerDeltaMw',0
aSystempowermw_4 db 7,'SystemPowerMw',0
                db 7
                db 6
byte_140029981  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14057ECE4+13A↓o
                dd 0
                align 4
                dd 80003Fh
aPlregisterpowe db 'PlRegisterPowerPlaneStatus',0
aMessageversion_11 db 'MessageVersion',0
                dw 5006h, 7261h, 6973h
aNgstatus       db 'ngStatus',0
                db 88h, 0Eh, 6
dword_1400299CC dd 50Bh                 ; DATA XREF: sub_1408FB58C+178↓o
                db 2 dup(0)
                dd 400000h
                dw 100h
                db    1
                db 80h, 0, 54h, 68h, 65h, 72h, 6Dh
aAlzoneenumerat db 'alZoneEnumeration',0
aDeviceinstance_8 db 'deviceInstance',0
                db 1, 61h, 63h, 74h, 69h, 76h, 65h
aTrippoint0     db 'TripPoint0',0
aActivetrippoin db 8,'activeTripPoint1',0
aCriticaltrippo db 8,'criticalTripPoint',0
aPassivetrippoi db 8,'passiveTripPoint',0
aThermalstandby_1 db 8,'thermalstandbyTripPoint',0
aS4transitiontr db 8,'s4TransitionTripPoint',0
aSamplingperiod db 8,'samplingPeriod',0
aThermalconstan db 8,'thermalConstant1',0
aThermalconstan_0 db 8,'thermalConstant2',0
aZonedescriptio db 8,'zoneDescription',0
                db 1
aSuggestedpolli db 'suggestedPollingPeriod',0
                db 8
                db 6
byte_140029AD9  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1408FB484+7F↓o
                dd 800000h
                align 4
                dd 80004Ch
aThermalusermod db 'ThermalUsermodeEvent',0
aTrippoint      db 'tripPoint',0
aTemperature_1  db 8,'temperature',0
aMitigationtype db 8,'mitigationType',0
aInitiator      db 8,'initiator',0
                db 16h
                db 6
byte_140029B31  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1407C98B8+43↓o
                dd 400000h
                align 4
                dd 800012h
aFanenumerated  db 'FanEnumerated',0
                db 6
byte_140029B4F  db 0Bh                  ; DATA XREF: sub_1408FB268+17A↓o
                db 5, 4 dup(0)
                dd 800000h
                align 2
                dw 0B3h, 80h, 6854h
aErmalcriticale db 'ermalCriticalEvent',0
aPolicydriver   db 'policyDriver',0
                db  84h
                db 3, 70h, 61h, 2 dup(73h), 69h, 76h
aEengaged       db 'eEngaged',0
                db 84h, 3, 61h, 63h, 74h, 69h, 76h
aEengaged_0     db 'eEngaged',0
                db 84h, 3, 6Dh, 69h, 74h, 69h, 67h
aAtiontype      db 'ationType',0
aTemperature_2  db 8,'temperature',0
aTrippointtempe_0 db 8,'tripPointTemperature',0
aTemperatureabo db 8,'temperatureAboveTripPoint',0
                dq 614E656E6F7A0384h, 656E6F7A0100656Dh, 7470697263736544h
                db 69h, 6Fh, 6Eh, 0, 1, 6
                dw 50Bh                 ; DATA XREF: sub_14058048C+31E↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 70h, 1, 80h, 0, 53h, 63h, 65h
aNarioblockerda db 'narioBlockerData',0
aCssessionid_8  db 'CsSessionId',0
aParentguid     db 0Ah
                db 'ParentGuid',0
                db 0Fh, 42h, 6Ch, 6Fh, 63h, 6Bh, 65h
aRguid          db 'rGuid',0
                dw 460Fh
aRiendlyname_0  db 'riendlyName',0
                dd 6F6C4216h
aCkertype       db 'ckerType',0
aActivetime_0   db 8,'ActiveTime',0
aActivetimebuck db 0Ah
                db 'ActiveTimeBuckets',0
                db  28h ; (
                db 5, 0, 41h, 63h, 74h, 69h, 76h
aEtimeperbucket db 'eTimePerBucket',0
                db 2Ah
                db    5
                align 2
aUnattributedac db 'UnattributedActiveTimeBuckets',0
                db  28h ; (
                db 5, 0, 55h, 6Eh, 61h, 2 dup(74h)
aRibutedactivet db 'ributedActiveTimePerBucket',0
                db 2Ah, 5, 0, 4Eh, 6Fh
aNactivetime    db 'nActiveTime',0
aNonactivetimeb db 0Ah
                db 'NonActiveTimeBuckets',0
                dw 528h, 4E00h, 6E6Fh
aActivetimeperb_0 db 'ActiveTimePerBucket',0
                dd 5500052Ah
aNattributednon db 'nattributedNonActiveTimeBuckets',0
                db  28h ; (
                db 5, 0, 55h, 6Eh, 61h, 2 dup(74h)
aRibutednonacti db 'ributedNonActiveTimePerBucket',0
                dw 52Ah
                dq 505F417472615000h, 73676154766972h
                db 0Ah, 6
word_140029D8A  dw 50Bh, 100h, 0        ; DATA XREF: sub_1409040E4+9E↓o
                db    0
                db 4 dup(0), 31h, 0, 80h
                db    0
aTtmEnterproxim db 'TTM_EnterProximity',0
aSessionid      db 'SessionId',0
aScenariocount  db 8,'ScenarioCount',0
                db 8, 6
byte_140029DC7  db 0Bh                  ; DATA XREF: sub_1409041B4+D3↓o
                dq 20005h, 5454008000400000h, 726F7272455F4Dh, 496E6F6973736553h
                dq 74636E7546080064h, 6E694C02006E6F69h, 7574617453080065h
                dq 74530E88006E4973h, 74754F73757461h
                db 88h, 0Eh, 6
byte_140029E13  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_140903BF4+C0↓o
                db    0
                db 5 dup(0), 4Eh, 0
                db  80h
                align 2
aTtmDevicesetin db 'TTM_DeviceSetInputWakeCapability',0
aSessionid_0    db 'SessionId',0
aTerminalid     db 8,'TerminalId',0
aDeviceid_4     db 8,'DeviceId',0
aEnable         db 8,'Enable',0
                db 0Dh, 6
                db 0Bh, 5, 0            ; DATA XREF: sub_1409033E4+A6↓o
                dq 1, 5F4D54540080004Dh, 7341656369766544h, 655464656E676973h
                dd 6E696D72h
aAlevent        db 'alEvent',0
aSessionid_1    db 'SessionId',0
aDeviceid_5     db 8,'DeviceId',0
aAssignedtermin db 8,'AssignedTerminalId',0
                db 8, 6
word_140029EC6  dw 50Bh                 ; DATA XREF: sub_140906084+C4↓o
                db    0
                db 1, 6 dup(0)
                db    0
                db 80h, 0, 80h, 0, 2 dup(54h), 4Dh
aTerminaltimeou db '_TerminalTimeouts',0
aSessionid_2    db 'SessionId',0
aTerminalid_0   db 8,'TerminalId',0
aDimtimeoutseco db 8,'DimTimeoutSeconds',0
aOfftimeoutseco db 8,'OffTimeoutSeconds',0
aSanitizeddimin db 8,'SanitizedDimIntTime',0
aSanitizedoffin db 0Ah
                db 'SanitizedOffIntTime',0
                db 0Ah, 6
                dw 50Bh, 100h, 0        ; DATA XREF: sub_140905F74+C0↓o
                dq 8000560000000000h, 7265545F4D545400h, 7369446C616E696Dh
                db 70h, 6Ch, 61h
                dd 61745379h
aTechangedevent db 'teChangedEvent',0
aSessionid_3    db 'SessionId',0
aTerminalid_1   db 8,'TerminalId',0
aDisplaystate   db 8,'DisplayState',0
aReason_4       db 8,'Reason',0
                dw 608h
dword_140029FB4 dd 100050Bh             ; DATA XREF: sub_140903158+F1↓o
                dq 5C00000000000000h, 445F4D5454008000h
                db 65h, 76h, 69h, 63h
                dd 72724165h
aIved           db 'ived',0
aSessionid_4    db 'SessionId',0
aProvider_0     db 8,'Provider',0
aToken_1        db 8,'Token',0
                db  15h
aDeviceid_6     db 'DeviceId',0
aProviderdevice db 8,'ProviderDeviceType',0
                dw 5314h
aTatusout       db 'tatusOut',0
                db 88h, 0Eh, 6
                dd 100050Bh             ; DATA XREF: sub_140905358+56↓o
                db    0
                db 6 dup(0), 40h
                db    0
                db 80h, 0, 2 dup(54h), 4Dh, 5Fh, 53h
aEssionmonitorc db 'essionMonitorControl',0
                db 53h, 65h, 73h
                db 73h, 69h
                dd 64496E6Fh
                dw 800h
aReason_5       db 'Reason',0
                db 8
                dd 65707954h
                dd 74530800h
aAtus_0         db 'atus',0
                db 88h, 0Eh, 6
unk_14002A068   db  0Bh                 ; DATA XREF: sub_140904EF4+43↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 29h, 0, 80h, 0, 54h
aTmSessioncsexi db 'TM_SessionCsExitComplete',0
aSessionid_5    db 'SessionId',0
                db 8, 6
byte_14002A09D  db 0Bh, 5, 0            ; DATA XREF: sub_1409049CC+A0↓o
                dq 1, 5F4D545400800027h, 6572436575657551h
                db 61h, 74h
                dd 53006465h
aEssionid       db 'essionId',0
aQueue          db 8,'Queue',0
                dw 615h
                db  0Bh                 ; DATA XREF: sub_140905D24+4F↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 39h, 0, 80h, 0, 54h
aTmTerminalclea db 'TM_TerminalCleanup',0
aSessionid_6    db 'SessionId',0
aTerminalid_2   db 8,'TerminalId',0
aTerminal_0     db 8,'Terminal',0
                db 15h, 6
                db 0Bh, 5, 0            ; DATA XREF: sub_14090487C+ED↓o
                dq 1
                db 72h, 0
                dd 54540080h
aMProximitypowe db 'M_ProximityPowerPress',0
aSessionid_7    db 'SessionId',0
aEscaped        db 8,'Escaped',0
                db 84h
                db    3
aSpansincelastp db 'SpanSinceLastPress',0
aPowerpresscoun db 0Ah
                db 'PowerPressCount',0
aScenariocount_0 db 8,'ScenarioCount',0
aEscapecount    db 8,'EscapeCount',0
                db 8, 6
byte_14002A193  db 0Bh, 5, 2 dup(1), 0  ; DATA XREF: sub_1409029E8+E7↓o
                dq 44000000000000h
                db 80h, 0, 54h
                dd 445F4D54h
aEvicecallout   db 'eviceCallout',0
aSessionid_8    db 'SessionId',0
aProvider_1     db 8,'Provider',0
aToken_2        db 8,'Token',0
                db 15h
aCallouttag     db 'CalloutTag',0
                db 17h, 44h, 61h, 74h, 61h
                db 0, 8, 6
byte_14002A1E3  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_140904CBC+4F↓o
                db    0
                db 5 dup(0), 3Fh, 0
                db  80h
                align 2
aTtmQueuehandle db 'TTM_QueueHandleClosed',0
aQueue_0        db 'Queue',0
                dw 5015h
aRocessid       db 'rocessId',0
                db 15h, 53h
                dd 65747379h
aMhandlecount   db 'mHandleCount',0
                db 0Ah, 6
word_14002A22E  dw 50Bh                 ; DATA XREF: sub_140906598+1F6↓o
                db    0
                db 1, 6 dup(0)
                db    0
                db 3Ch, 1, 80h, 0, 2 dup(54h), 4Dh
aTerminalrundow db '_TerminalRundown',0
aSessionid_9    db 'SessionId',0
aTerminalid_3   db 8,'TerminalId',0
aTerminalstate  db 8,'TerminalState',0
aDisplaystate_0 db 8,'DisplayState',0
aDisplaystatere db 8,'DisplayStateReason',0
                db 8, 46h
                dd 65746C69h
aRedinput       db 'redInput',0
aPendingonoff   db 8,'PendingOnOff',0
aPendingonoffre db 8,'PendingOnOffReason',0
aDimtimeoutseco_0 db 8,'DimTimeoutSeconds',0
                dd 66664F0Ah
                dq 5374756F656D6954h
                db 65h
                dd 646E6F63h
                db 73h, 0, 0Ah
aZerotime       db 'ZeroTime',0
aPrxmspansincel db 0Ah
                db 'PrxmSpanSinceLastPress',0
aPrxmpowerpress db 0Ah
                db 'PrxmPowerPressCount',0
                dw 5008h
                dq 616E6563536D7872h
aRiocount       db 'rioCount',0
aPrxmescapecoun db 8,'PrxmEscapeCount',0
aPrxmdisplaysta db 8,'PrxmDisplayState',0
aPrxmdisplaysta_0 db 8,'PrxmDisplayStateReason',0
                db 8, 6
word_14002A376  dw 50Bh                 ; DATA XREF: sub_140904598+A4↓o
                db    1
                db 1, 6 dup(0)
                db    0
                db 48h, 0, 80h, 0, 2 dup(54h), 4Dh
aInitiatemodern db '_InitiateModernStandbyTransitionStart',0
aSessionid_10   db 'SessionId',0
aEnter_0        db 8,'Enter',0
                db 84h
                dq 6E6F7361655203h
                db 8, 6
word_14002A3CA  dw 50Bh, 100h, 0        ; DATA XREF: sub_140906368+C9↓o
                db    0
                db 4 dup(0), 43h, 0, 80h
                db    0
aTtmTerminaloff db 'TTM_TerminalOffRequest',0
aSessionid_11   db 'SessionId',0
aTerminalid_4   db 8,'TerminalId',0
aReason_6       db 8,'Reason',0
aPathtag        db 8,'PathTag',0
                db 17h
                db 6
byte_14002A419  db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_140902DD4+111↓o
                dq 80007800004000h
aTtmDevicecallo db 'TTM_DeviceCalloutWatchdogCrashSkipped',0
aSessionid_12   db 'SessionId',0
aPoweraction    db 8,'PowerAction',0
aCode_0         db 8,'Code',0
aParameter1     db 8,'Parameter1',0
                db 0Ah
                db 50h, 61h, 72h, 61h, 6Dh
                dd 72657465h
                db 32h, 0, 0Ah, 50h, 61h, 72h, 61h
aMeter3         db 'meter3',0
aParameter4     db 0Ah
                db 'Parameter4',0
                db 0Ah, 6
byte_14002A49D  db 0Bh, 5, 0            ; DATA XREF: sub_14090572C+62↓o
                db    1
                align 8
                db  49h ; I
                align 2
                dw 80h, 5454h, 5F4Dh
aSessionpowerre db 'SessionPowerRequestCreated',0
                db 53h, 65h, 2 dup(73h), 69h
                dd 64496E6Fh
                dd 6F500800h
aWerrequestid   db 'werRequestId',0
aTracking       db 7,'Tracking',0
                db 84h
                db 3, 6
word_14002A4F2  dw 50Bh, 100h, 0        ; DATA XREF: sub_140906480+C9↓o
                db    0
                db 4 dup(0), 42h, 0, 80h
                db    0
aTtmTerminalonr db 'TTM_TerminalOnRequest',0
                db 53h
                db 65h, 2 dup(73h), 69h, 6Fh, 6Eh, 49h
                dd 54080064h
aErminalid      db 'erminalId',0
aReason_7       db 8,'Reason',0
aPathtag_0      db 8,'PathTag',0
                dw 617h
unk_14002A540   db  0Bh                 ; DATA XREF: sub_140904BF8+4C↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 2Fh, 0, 80h, 0, 54h
aTmQueueeventen db 'TM_QueueEventEnqueued',0
aQueue_1        db 'Queue',0
                dd 65764515h
                dq 657079541500746Eh
                db 0, 8, 6
byte_14002A57B  db 0Bh, 5, 2 dup(1), 0  ; DATA XREF: sub_140905440+A4↓o
                dq 39000000000000h, 65535F4D54540080h, 776F506E6F697373h
                dq 6F72746E6F437265h
aLstart         db 'lStart',0
aSessionid_13   db 'SessionId',0
aOn             db 8,'On',0
                db 84h, 3, 52h
aEason_0        db 'eason',0
                dw 608h
unk_14002A5C0   db  0Bh                 ; DATA XREF: sub_140903090+4F↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 37h, 0, 80h, 0, 54h
aTmConsoleuserp db 'TM_ConsoleUserPresent',0
aSessionid_14   db 'SessionId',0
aReason_8       db 8,'Reason',0
                dd 61745308h
                dd 737574h
                db 88h, 0Eh, 6
byte_14002A603  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1409057F0+62↓o
                db    0
                db 5 dup(0), 4Eh, 0
                db  80h
                align 2
aTtmSessionpowe db 'TTM_SessionPowerRequestDeleted',0
aSessionid_15   db 'SessionId',0
                db 8, 50h, 6Fh, 77h, 65h
                db 72h, 52h, 65h, 71h, 75h, 65h
                dd 64497473h
                dw 700h, 6157h, 5673h
aAlidentry      db 'alidEntry',0
                dw 384h
                db 6
byte_14002A65D  db 0Bh, 5, 0            ; DATA XREF: sub_140903D04+A6↓o
                dq 1, 5F4D545400800042h, 6F54656369766544h, 6C616E696D726554h
                db 41h, 73h
                dd 6E676973h
                dw 6465h
                dq 6E6F697373655300h, 6D72655408006449h, 80064496C616E69h
                dq 6449656369766544h
                db 0, 8, 6
byte_14002A6AB  db 0Bh, 5, 2 dup(1), 0  ; DATA XREF: sub_140902F40+4B↓o
                dq 29000000000000h, 6C435F4D54540080h
                db 65h, 61h, 6Eh, 75h, 70h, 43h
                dd 65727275h
aNtsession      db 'ntSession',0
aSessionid_16   db 'SessionId',0
                dw 608h
unk_14002A6E0   db  0Bh                 ; DATA XREF: sub_140905EE0+43↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 24h, 0, 80h, 0, 54h
aTmTerminaldest db 'TM_TerminalDestroyed',0
                db 54h, 65h, 72h
                db 6Dh
                dd 6C616E69h
                align 2
                dw 615h
                db  0Bh                 ; DATA XREF: sub_140905030+9E↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 45h, 0, 80h, 0, 54h
aTmDeviceassign db 'TM_DeviceAssignmentPolicySet',0
aSessionid_17   db 'SessionId',0
aAutoassigntote db 8,'AutoAssignToTerminal0',0
                dw 384h
                db 6
byte_14002A761  db 0Bh, 5               ; DATA XREF: sub_14090430C+BD↓o
                dd 100h
                align 8
                dq 80004700000000h
aTtmExitproximi db 'TTM_ExitProximity',0
aSessionid_18   db 'SessionId',0
aScenariocount_1 db 8,'ScenarioCount',0
aEscapecount_0  db 8,'EscapeCount',0
aEscaped_0      db 8,'Escaped',0
                db 84h
dword_14002A7B2 dd 50B0603h             ; DATA XREF: sub_1409055DC+80↓o
                dw 100h
                dq 8E00000000000000h, 535F4D5454008000h, 6F506E6F69737365h
                dq 6575716552726577h, 6E65736572507473h
                db 74h, 0, 53h, 65h, 2 dup(73h)
                dd 496E6F69h
                dw 64h, 5008h, 776Fh
aErrequestid_0  db 'erRequestId',0
aProcessid_6    db 7,'ProcessId',0
                db 8
                dq 7165527265776F50h
                db 75h, 65h, 73h, 74h, 48h, 61h
                dd 656C646Eh
                dw 1500h, 6F43h, 6572h
aWindowhandle   db 'WindowHandle',0
                db 15h, 43h, 6Fh
                dq 7474410800746E75h, 64657475626972h, 696B636172540384h
                db 6Eh, 67h, 0, 84h, 3, 6
                dw 50Bh                 ; DATA XREF: sub_1409036BC+EF↓o
                db    0
                db 1, 6 dup(0)
                db    0
                db 79h, 0, 80h, 0, 2 dup(54h), 4Dh
aDeviceenumerat_0 db '_DeviceEnumeratedTerminalEvent',0
aSessionid_19   db 'SessionId',0
aDeviceid_7     db 8,'DeviceId',0
aAssignedtermin_0 db 8,'AssignedTerminalId',0
aProvider_2     db 8,'Provider',0
aProviderspecif db 8,'ProviderSpecificType',0
aIdentity       db 8,'Identity',0
                db 1, 6
byte_14002A8D3  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1409037FC+D4↓o
                db    0
                db 5 dup(0), 54h, 0
                db  80h
                align 2
aTtmDevicefromt db 'TTM_DeviceFromTerminalRemoved',0
aSessionid_20   db 'SessionId',0
aTerminalid_5   db 8,'TerminalId',0
aProvider_3     db 8,'Provider',0
aToken_3        db 8,'Token',0
                db 15h
aDeviceid_8     db 'DeviceId',0
                db 8, 6
byte_14002A933  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1409051CC+62↓o
                dq 54000000000000h, 65535F4D54540080h, 776F506E6F697373h
                db 65h, 72h, 52h, 65h
                dd 73657571h
aTupdated       db 'tUpdated',0
aSessionid_21   db 'SessionId',0
aPowerrequestid db 8,'PowerRequestId',0
aWasupdatesucce db 7,'WasUpdateSuccessful',0
                db 84h, 3, 6
byte_14002A993  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_140904D84+4F↓o
                db    0
                db 5 dup(0), 39h, 0
                db  80h
                align 2
aTtmQueuehandle_0 db 'TTM_QueueHandleCreated',0
aQueue_2        db 'Queue',0
                db 15h
aProcessid_7    db 'ProcessId',0
                dw 4F15h, 6570h, 526Eh
aEason_1        db 'eason',0
                dw 608h
unk_14002A9D8   db  0Bh                 ; DATA XREF: sub_14090468C+9E↓o
                db 5, 2, 1, 4 dup(0)
                db    0
                db 2 dup(0), 40h, 0, 80h, 0, 54h
aTmInitiatemode db 'TM_InitiateModernStandbyTransitionStop',0
aSessionid_22   db 'SessionId',0
aStatus_33      db 8,'Status',0
                db 88h, 0Eh, 6
dword_14002AA24 dd 100050Bh             ; DATA XREF: sub_14090475C+C7↓o
                dq 4100000000000000h, 505F4D5454008000h
                db 72h
                dd 6D69786Fh
aItyblockedrequ db 'ityBlockedRequest',0
aSessionid_23   db 'SessionId',0
aOn_0           db 8,'On',0
                db 84h, 3, 52h
aEason_2        db 'eason',0
aPathtag_1      db 8,'PathTag',0
                db 17h
                db 6
byte_14002AA71  db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_140904AA0+4C↓o
                dq 80002F00000000h
aTtmQueueeventd db 'TTM_QueueEventDequeued',0
aQueue_3        db 'Queue',0
                db 15h, 45h, 76h
                dq 7079541500746E65h
                db 65h, 0, 8, 6
dword_14002AAAC dd 100050Bh             ; DATA XREF: sub_1409034D4+9E↓o
                db    0
                db 6 dup(0), 39h
                db    0
                db 80h, 0, 2 dup(54h), 4Dh, 5Fh, 44h
aEvicedepartedt db 'eviceDepartedTerminalEvent',0
                db 53h, 65h, 2 dup(73h), 69h
                dd 64496E6Fh
                dd 65440800h
aViceid_0       db 'viceId',0
                db 8
                db 6
byte_14002AAF1  db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_1409032A4+EF↓o
                dq 80007600000000h
aTtmDevicearriv db 'TTM_DeviceArrivedTerminalEvent',0
aSessionid_24   db 'SessionId',0
                db 8
                dd 69766544h
aCeid_1         db 'ceId',0
aAssignedtermin_1 db 8,'AssignedTerminalId',0
aProvider_4     db 8,'Provider',0
aProviderspecif_0 db 8,'ProviderSpecificType',0
aIdentity_0     db 8,'Identity',0
                db 1, 6
byte_14002AB73  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1409067F0+212↓o
                db    0
                db 5 dup(0), 31h, 1
                db  80h
                align 2
aTtmTerminalsta db 'TTM_TerminalStateMachine',0
aSessionid_25   db 'SessionId',0
aTerminalid_6   db 8,'TerminalId',0
aPreviousdispla db 8,'PreviousDisplayState',0
aPreviouszeroti db 8,'PreviousZeroTime',0
aNowtime        db 0Ah
                db 'NowTime',0
aDimtimeoutspan db 0Ah
                db 'DimTimeoutSpan',0
                dw 4F0Ah, 6666h
                db 54h
                dd 6F656D69h
aUtspan         db 'utSpan',0
aDisplayrequest db 0Ah
                db 'DisplayRequestActive',0
                db  84h
                db 3, 44h, 69h, 73h, 70h, 6Ch, 61h
aYrequestended  db 'yRequestEnded',0
                dw 384h
aOnoffrequest   db 'OnOffRequest',0
aOnoffrequestre db 8,'OnOffRequestReason',0
aDisplaystate_1 db 8,'DisplayState',0
aDisplaystatech db 8,'DisplayStateChanged',0
                dd 69440384h
aSplaystatechan db 'splayStateChangedReason',0
aZerotime_0     db 8,'ZeroTime',0
aNextevaluation db 0Ah
                db 'NextEvaluationSpan',0
                dw 60Ah
unk_14002ACB0   db  0Bh                 ; DATA XREF: sub_140904E4C+4B↓o
                db 5, 0, 1, 4 dup(0)
                db    0
                db 2 dup(0), 23h, 0, 80h, 0, 54h
aTmSessionactiv db 'TM_SessionActivate',0
aSessionid_26   db 'SessionId',0
                db 8, 6
byte_14002ACDF  db 0Bh                  ; DATA XREF: sub_140906198+56↓o
                db    5
                align 2
                dw 1, 2 dup(0)
                db    0
                align 2
                dw 52h, 80h, 5454h
aMTerminalhandl db 'M_TerminalHandleClosed',0
aSessionid_27   db 'SessionId',0
aTerminalid_7   db 8,'TerminalId',0
aProcessid_8    db 8,'ProcessId',0
                dq 486D657473795315h, 756F43656C646E61h
                db 6Eh, 74h, 0, 0Ah, 6
byte_14002AD3D  db 0Bh, 5, 0            ; DATA XREF: sub_140905290+4F↓o
                db    1
                align 8
                db  43h ; C
                align 2
                dw 80h, 5454h, 5F4Dh
aSessiondisplay db 'SessionDisplayRequiredReference',0
aSessionid_28   db 'SessionId',0
aCount_21       db 8,'Count',0
aStatus_34      db 8,'Status',0
                db 88h, 0Eh, 6
dword_14002AD8C dd 102050Bh             ; DATA XREF: sub_140902B24+196↓o
                db    0
                align 4
                dd 65000040h
                db    0
                db 80h, 0, 2 dup(54h), 4Dh, 5Fh, 44h
aEvicecallout_0 db 'eviceCallout',0
                db 53h, 65h, 73h
aSionid         db 'sionId',0
aProvider_5     db 8,'Provider',0
aProviderdevice_0 db 8,'ProviderDeviceType',0
                db 14h, 54h, 6Fh
                dq 6C614315006E656Bh
                db 6Ch, 6Fh, 75h, 74h, 54h
                dd 17006761h
aStatus_35      db 'Status',0
                dq 6974617275440E88h
                db 6Fh, 6Eh, 0, 0Ah, 6
byte_14002ADFD  db 0Bh, 5, 0            ; DATA XREF: sub_140904B64+43↓o
                db    1
                align 8
                db  1Eh
                align 2
                dw 80h, 5454h, 5F4Dh
aQueuedestroyed db 'QueueDestroyed',0
aQueue_4        db 'Queue',0
                db 15h, 6
                db 0Bh                  ; DATA XREF: sub_140905104+4F↓o
                dq 10005h, 5454008000450000h, 6F69737365535F4Dh
aNdisplayrequir db 'nDisplayRequiredDereference',0
aSessionid_29   db 'SessionId',0
aCount_22       db 8,'Count',0
aStatus_36      db 8,'Status',0
                db 88h, 0Eh, 6
qword_14002AE78 dq 102050Bh, 5400800065000000h, 63697665445F4D54h
                                        ; DATA XREF: sub_140902B24+93↓o
                db 65h, 43h, 61h, 6Ch
                dd 74756F6Ch
                db    0
aSessionid_30   db 'SessionId',0
aProvider_6     db 8,'Provider',0
aProviderdevice_1 db 8,'ProviderDeviceType',0
                db 14h, 54h, 6Fh, 6Bh, 65h, 6Eh, 0
                dq 74756F6C6C614315h, 6174531700676154h, 75440E8800737574h
                dq 0A006E6F69746172h
                db 6
byte_14002AEE9  db 0Bh, 5, 2 dup(1), 3 dup(0)
                                        ; DATA XREF: sub_140904420+4B↓o
                dq 80002600000000h, 74696E495F4D5454h
                db 43h, 75h, 72h
                dd 746E6572h
aSession_2      db 'Session',0
aSessionid_31   db 'SessionId',0
                db 8, 6
byte_14002AF1B  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1409035A4+70↓o
                dq 41000000000000h
                db  80h
                align 2
aTtmDevicedepar db 'TTM_DeviceDeparted',0
aSessionid_32   db 'SessionId',0
aProvider_7     db 8,'Provider',0
aToken_4        db 8,'Token',0
                dq 4665636976654415h, 6038400646E756Fh
qword_14002AF68 dq 100050Bh, 5400800025000000h, 69737365535F4D54h
                                        ; DATA XREF: sub_140904F88+4B↓o
                dd 65446E6Fh
aActivate       db 'activate',0
aSessionid_33   db 'SessionId',0
                db 8
                db 6
byte_14002AF99  db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_140905B10+4F↓o
                dq 80003A00000000h
aTtmSessionwork db 'TTM_SessionWorkerPass',0
aSessionid_34   db 'SessionId',0
aWorktodo       db 8,'WorkToDo',0
aIteration      db 8,'Iteration',0
                db 8, 6
byte_14002AFDF  db 0Bh                  ; DATA XREF: sub_140905C6C+88↓o
                dq 10205h, 54540080002A0000h
                dd 65535F4Dh
aSsionworker    db 'ssionWorker',0
aSessionid_35   db 'SessionId',0
aStatus_37      db 8,'Status',0
                dw 0E88h
                db 6
byte_14002B015  db 0Bh, 5, 0            ; DATA XREF: sub_140905DEC+A4↓o
                dq 1
                db 39h
                dd 54008000h
aTmTerminalcrea db 'TM_TerminalCreated',0
aSessionid_36   db 'SessionId',0
aTerminalid_8   db 8,'TerminalId',0
aTerminal_1     db 8,'Terminal',0
                db 15h, 6
                dw 50Bh, 100h, 0        ; DATA XREF: sub_140903FB4+D7↓o
                dq 8000570000000000h
                db 0, 2 dup(54h), 4Dh, 5Fh, 54h
                dd 696D7265h
aNaldisplaypowe db 'nalDisplayPowerRequest',0
aSessionid_37   db 'SessionId',0
aTerminalid_9   db 8,'TerminalId',0
                dd 71655208h
aUestid         db 'uestId',0
aActive_2       db 7,'Active',0
aStatus_38      db 0Dh,'Status',0
                dw 0E88h
                db 6
                db 0Bh, 5, 0            ; DATA XREF: sub_1409058B4+9E↓o
                dq 1, 5F4D545400800030h, 506E6F6973736553h, 746174537265776Fh
                db 65h, 43h, 68h, 61h, 6Eh, 67h, 65h
                dd 73655300h
aSionid_0       db 'sionId',0
aOn_1           db 8,'On',0
                dw 384h
                db 6
                db 0Bh, 5, 2, 1, 3 dup(0)
                                        ; DATA XREF: sub_1409044C8+9E↓o
                dq 80002F00000000h, 74696E495F4D5454h, 53746E6572727543h
                db 65h, 2 dup(73h)
                dd 6E6F69h
aSessionid_38   db 'SessionId',0
aStatus_39      db 8,'Status',0
                db 88h, 0Eh, 6
dword_14002B134 dd 101050Bh             ; DATA XREF: sub_140905BD8+43↓o
                db    0
                db 6 dup(0), 21h
                db    0
                db 80h, 0, 2 dup(54h), 4Dh, 5Fh, 53h
aEssionworker   db 'essionWorker',0
aSessionid_39   db 'SessionId',0
                db 8
dword_14002B160 dd 50B06h               ; DATA XREF: sub_140903930+78↓o
                dd 1
                dq 80006000000000h, 697665445F4D5454h, 7475706E496563h
                dq 496E6F6973736553h, 69766F7250080064h, 6B6F540800726564h
                dq 75706E4915006E65h, 8007367616C4674h, 6F46656369766544h
                dq 6957038400646E75h, 61756C6176456C6Ch
                dq 6B61570384006574h
                db 65h, 0, 84h, 3, 6
                db 0Bh, 5, 1            ; DATA XREF: sub_140903DF4+9E↓o
                dq 1, 5F4D545400800026h, 6863746170736944h, 7373655300697041h
                dq 4C080064496E6F69h
aEvel           db 'evel',0
                db 8, 6
byte_14002B1FF  db 0Bh                  ; DATA XREF: sub_140905534+4B↓o
                db    5
                db 2, 1, 5 dup(0)
                db    0
                align 2
                dw 2Bh, 80h, 5454h
aMSessionpowerc db 'M_SessionPowerControlStop',0
aSessionid_40   db 'SessionId',0
                db 8, 6
word_14002B236  dw 50Bh                 ; DATA XREF: sub_140903EC4+A6↓o
                dq 102h, 4D54540080002F00h, 637461707369445Fh, 7365530069704168h
                dq 80064496E6F6973h, 5308006C6576654Ch, 0E88007375746174h
                db 6
byte_14002B271  db 0Bh, 5, 2, 1, 3 dup(0)
                                        ; DATA XREF: sub_140902FE8+4B↓o
                dq 80002900000000h
aTtmCleanupcurr db 'TTM_CleanupCurrentSession',0
aSessionid_41   db 'SessionId',0
                db 8, 6
word_14002B2A6  dw 50Bh                 ; DATA XREF: sub_140905988+48↓o
                db    0
                db 1, 6 dup(0)
                db    0
                db 0A6h, 0, 80h, 0, 2 dup(54h), 4Dh
aSessionrundown db '_SessionRundown',0
aSessionid_42   db 'SessionId',0
                dw 5308h
                dd 69737365h
aOnstate        db 'onState',0
aRefcnt         db 8,'RefCnt',0
aTerminalcnt    db 7,'TerminalCnt',0
aDevicecnt      db 8,'DeviceCnt',0
                db 8, 41h, 63h, 74h, 69h, 76h, 61h
                dd 65526574h
aAson           db 'ason',0
aDeactivatereas db 8,'DeactivateReason',0
aDisplaycount   db 8,'DisplayCount',0
                dq 79616C7073694408h
                db 44h, 69h, 6Dh, 54h, 69h, 6Dh
                dd 74756F65h
                dw 800h, 6944h, 7073h
aLayofftimeout  db 'layOffTimeout',0
                dw 608h
qword_14002B358 dq 100050Bh, 5400800078000000h, 63697665445F4D54h, 6E776F646E755265h
                                        ; DATA XREF: sub_140903A9C+48↓o
                db 0
                dd 73736553h
aIonid          db 'ionId',0
aTerminalid_10  db 8,'TerminalId',0
aProvider_8     db 8,'Provider',0
aToken_5        db 8,'Token',0
                dq 4965636976654415h
                db 64h, 0, 8, 50h
                dd 69766F72h
aDerdevicetype  db 'derDeviceType',0
                dw 4C14h
aAstinputtime   db 'astInputTime',0
aDevicestate    db 0Ah
                db 'DeviceState',0
                dw 614h
dword_14002B3DC dd 100050Bh             ; DATA XREF: sub_140906280+56↓o
                db    0
                db 6 dup(0), 4Ch
                db    0
                db 80h, 0, 2 dup(54h), 4Dh, 5Fh, 54h
aErminalhandlec db 'erminalHandleCreated',0
aSessionid_43   db 'SessionId',0
aTerminalid_11  db 8,'TerminalId',0
aProcessid_9    db 8,'ProcessId',0
                dw 4F15h
aPenreason      db 'penReason',0
                dw 608h
dword_14002B434 dd 50Bh                 ; DATA XREF: sub_14062778C+1D92A7↓o
                db 2 dup(0)
                dd 400000h
                dw 9200h
                dq 6165726854008000h, 6961466E65704F64h, 6F46726F4664656Ch
                db 72h, 63h, 65h, 64h, 41h, 63h
                dd 73736563h
aCheck          db 'Check',0
aTargetthreadid db 'TargetThreadId',0
aTargetprocessi db 8,'TargetProcessId',0
aDesiredaccess  db 8,'DesiredAccess',0
                db 14h
aObjectattribut db 'ObjectAttributes',0
                db 14h, 50h, 72h, 6Fh, 62h, 65h, 4Dh
                dq 636341040065646Fh, 65646F4D737365h, 505F417472615004h
                dq 73676154766972h
                db 0Ah, 6
word_14002B4D2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140656690+57A↓o
                dd 400000h
                dd 80008300h
                db 0, 50h
                dd 65636F72h
aSsopenfailedfo db 'ssOpenFailedForForcedAccessCheck',0
aTargetprocessi_0 db 'TargetProcessId',0
aDesiredaccess_0 db 8,'DesiredAccess',0
                dw 4F14h
aBjectattribute db 'bjectAttributes',0
                dq 6F4D65626F725014h, 6563634104006564h, 40065646F4D7373h
                dq 72505F4174726150h, 0A00736761547669h
                db 6
byte_14002B561  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14091CD44+F4↓o
                dd 200000h
                align 4
                dd 800069h
aRtlcapabilityc db 'RtlCapabilityCheckLatency',0
aLatency        db 'Latency',0
aIsadmin        db 9,'IsAdmin',0
                db 84h, 3, 49h, 73h, 49h
aNteractiveuser db 'nteractiveUser',0
                db 84h
                db    3
aIsadmincapabil db 'IsAdminCapability',0
                db 84h, 3, 48h, 61h, 73h
aCapability     db 'Capability',0
                db 84h, 3, 6
word_14002B5D6  dw 50Bh                 ; DATA XREF: SeCheckForCriticalAceRemoval+1FDBFC↓o
                db 4 dup(0)
                dd 200000h
                db    0
                db 20h, 0, 80h, 0, 43h, 72h, 69h
aTicalacechange db 'ticalAceChanged',0
aProcess_0      db 'Process',0
                db 16h, 6
word_14002B602  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_140597558+B5↓o
                dd 400000h
                dd 80008C00h
                db    0
aLimitedtononli db 'LimitedToNonLimitedTokenSessionImpersonation',0
aPrimarytokense db 'primaryTokenSessionFlags',0
aImpersonationt db 8,'impersonationTokenSessionFlags',0
aProcesspath    db 8,'processPath',0
                dd 6F727016h
aCesscommandlin db 'cessCommandLine',0
                db 16h, 6
word_14002B69A  dw 50Bh, 100h, 0        ; DATA XREF: sub_1405A43D8+99↓o
                dq 80004D0000000000h, 616C536C6C694600h, 65737261705374h
                dq 49737365636F7250h, 6567615005880064h, 481500746E756F43h
                dq 7070614D61704776h, 704702D800676E69h, 15006E705315006Eh
                dq 7367616C4670614Dh
                db 0, 14h, 6
byte_14002B6F3  db 0Bh, 5, 0, 8, 0      ; DATA XREF: sub_1405A40AC+D6↓o
                db    0
                db 5 dup(0), 77h, 0
                db  80h
                align 2
aAccessfault    db 'AccessFault',0
aProcessid_10   db 'ProcessId',0
                db  88h
                db 5, 42h, 61h, 73h, 65h, 53h, 79h
aStemvpn        db 'stemVpn',0
                db  15h
aBasegpn        db 'BaseGpn',0
                db 15h, 50h, 61h, 67h, 65h, 43h, 6Fh
                db  75h ; u
                db 6Eh, 74h, 0, 15h, 46h, 61h, 75h
aLttypeflags    db 'ltTypeFlags',0
                dd 6C6C4114h
aOwedpromotionf db 'owedPromotionFlags',0
                db 14h, 44h, 65h, 73h, 69h
aRednumanode    db 'redNumaNode',0
                db 14h, 6
word_14002B776  dw 50Bh                 ; DATA XREF: sub_1405A44D8+A8↓o
                db    0
                db 2, 6 dup(0)
                db    0
                db 49h, 0, 80h, 0, 54h, 62h, 46h
aLushslatinvali db 'lushSlatInvalidate',0
                db 50h, 72h, 6Fh, 63h, 65h
                dd 64497373h
                dd 53058800h
aTartvpn        db 'tartVpn',0
                dq 7047747261745315h, 65626D754E15006Eh, 7365676150664F72h
                db 0, 15h, 6
byte_14002B7CB  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1405A42E0+55↓o
                db    0
                db 5 dup(0), 3Eh, 0
                db  80h
                align 2
aFillslatlargep db 'FillSlatLargePage',0
aProcessid_11   db 'ProcessId',0
                dw 588h
aBasegpn_0      db 'BaseGpn',0
                dq 6E70536573614215h, 616C4670614D1500h
                db 67h, 73h, 0, 14h, 6
byte_14002B815  db 0Bh, 5, 0            ; DATA XREF: sub_1405A41EC+90↓o
                dq 4, 646C6F430080003Ch, 6F725000746E6948h, 8800644973736563h
                dq 6E70476573614205h, 7953657361421500h, 6E70566D657473h
                dq 756F436567615015h
                db 6Eh, 74h, 0, 15h, 6
                db 0Bh, 5, 0            ; DATA XREF: EtwTelemetryCoverageReport+12DDDE↓o
                db    1
                align 8
                db  68h ; h
                align 2
                dw 80h, 6F43h, 76h
aRoundid        db 'RoundId',0
aFailuresinroun db 8,'FailuresInRound',0
aSincelastflush db 8,'SinceLastFlushMS',0
aSincelastreset db 8,'SinceLastResetMS',0
aRecorded       db 8,'Recorded',0
aAlreadyset     db 0Dh,'AlreadySet',0
aCoverageid     db 0Dh,'CoverageId',0
                db 2
                db 6
dword_14002B8D1 dd 200050Bh             ; DATA XREF: sub_140716174+116675↓o
                align 8
                dq 80005500000000h, 520077654E766F43h, 8006449646E756Fh
                dq 736572756C696146h, 646E756F526E49h
aSincelastflush_0 db 8,'SinceLastFlushMS',0
aSincelastreset_0 db 8,'SinceLastResetMS',0
aCoverageid_0   db 8,'CoverageId',0
                db 2, 6
word_14002B932  dw 50Bh, 100h, 0        ; DATA XREF: sub_140716174+116762↓o
                dq 8000680000000000h, 756F5200766F4300h, 614608006449646Eh
                dq 6E49736572756C69h, 530800646E756F52h
                db 69h, 6Eh, 63h
                dd 73614C65h
aTflushms       db 'tFlushMS',0
                dq 614C65636E695308h
                db 73h, 74h, 52h, 65h
                dd 4D746573h
                dq 726F636552080053h, 726C410D00646564h, 74655379646165h
                dq 67617265766F430Dh
                db 65h, 49h, 64h, 0, 2, 6
word_14002B9A6  dw 50Bh                 ; DATA XREF: sub_140721320+159↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 52h, 0, 80h, 0, 43h, 6Fh, 76h
                db  53h ; S
                db 75h, 6Dh, 0, 52h, 6Fh, 75h, 6Eh
                db  64h ; d
                db 49h, 64h, 0, 8, 46h, 61h, 69h
aLuresinround   db 'luresInRound',0
aSincelastflush_1 db 8,'SinceLastFlushMS',0
aSincelastreset_1 db 8,'SinceLastResetMS',0
aEntries        db 8,'Entries',0
                dw 642h
dword_14002BA04 dd 50Bh                 ; DATA XREF: sub_1407A8F3C+AE51A↓o
                db 2 dup(0)
                dd 400000h
                dw 4700h
                db    0
                db 80h, 0, 4Ch, 65h, 61h, 70h, 53h
aEconddataupdat db 'econdDataUpdate',0
aUpdatereason   db 'UpdateReason',0
                db 8, 45h, 6Eh
                dd 656C6261h
aDnew           db 'dNew',0
aCountnew       db 8,'CountNew',0
aCountold       db 8,'CountOld',0
                db 8, 6
byte_14002BA57  db 0Bh                  ; DATA XREF: sub_140937C04+4F↓o
                db 5, 4 dup(0)
                dd 400000h
                align 2
                dw 2Dh, 80h, 654Ch
aApseconddatapa db 'apSecondDataParseFailed',0
aFailureresult  db 'FailureResult',0
                dw 608h
byte_14002BA90  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140937E58+61↓o
                dd 400000h
                dw 2900h, 8000h, 5400h
aImezonebiascha db 'imeZoneBiasChange',0
aNewbias        db 'NewBias',0
aOldbias        db 7,'OldBias',0
                db 7, 6
byte_14002BAC5  db 0Bh, 5, 0            ; DATA XREF: sub_1407A98F4+ADC71↓o
                db 3 dup(0)
                dd 0
                align 10h
                db  7Ah ; z
                align 2
                dw 80h, 6954h, 656Dh
aZoneinformatio db 'ZoneInformationRefresh',0
aExitreason     db 'ExitReason',0
aCurrenttimezon db 8,'CurrentTimeZoneBias',0
aNewtimezoneid  db 7,'NewTimeZoneId',0
                dw 284h
aTimezoneinfoca db 'TimeZoneInfoCacheUpdated',0
                db 84h, 3, 46h, 69h, 72h, 73h, 74h
aRefresh        db 'Refresh',0
                db 84h, 3, 6
                db 0Bh, 5, 3 dup(0)     ; DATA XREF: sub_140A43E38+3AE5B↓o
                db 0
                dd 800000h
                align 2
                dw 8Ah
                dq 6D65747379530080h, 614D007472617453h, 6973726556726F6Ah
                dq 6F6E694D08006E6Fh, 6E6F697372655672h, 4E646C6975420800h
                dq 5308007265626D75h, 6E65764565746174h, 5108006570795474h
                dq 7672655308004546h, 6B636150656369h, 646F4D746F6F4206h
                dq 54746F6F42080065h, 626E490900656D69h, 4D080065646F4D76h
                dq 4C64657275736165h, 3840068636E7561h
                db 6
byte_14002BBE1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_140A43E38+3AFE5↓o
                dd 400000h
                align 4
                dd 800029h
aHvinfo         db 'HvInfo',0
aHypervisorleve db 'HypervisorLevel',0
aCpumanager     db 7,'CpuManager',0
                db 84h, 3, 6
word_14002BC16  dw 50Bh                 ; DATA XREF: sub_140939144+8F↓o
                db 3 dup(0)
                dd 40000000h
                align 20h
                dq 7379530080003100h, 64747568536D6574h, 74617453006E776Fh
                dq 7954746E65764565h, 7475685308006570h, 656D69546E776F64h
                db 0, 9, 6
byte_14002BC53  db 0Bh, 5, 0, 1, 0      ; DATA XREF: sub_1405F98CC+1FE4C7↓o
                dq 13F000020000000h, 6174537070410080h, 65676E6168436574h
                dq 7461745370704100h, 65676E61684365h, 756F697665725004h
                dq 400657461745373h
aUtcreplaceTarg db 'UTCReplace_TargetAppId',0
                db 0Fh
aUtcreplaceTarg_0 db 'UTCReplace_TargetAppVer',0
                db    4
aUtcreplaceTarg_1 db 'UTCReplace_TargetAppType',0
                dw 5504h, 4354h, 6552h
aPlaceLicensety db 'place_LicenseType',0
                dw 4104h, 7070h, 6553h
aSsionguid      db 'ssionGuid',0
                dw 540Fh, 7261h, 6567h
aTasid          db 'tAsId',0
aStatedurationm db 8,'StateDurationMS',0
aUptimedeltams_0 db 0Ah
                db 'UptimeDeltaMS',0
aTotaldurationm_0 db 0Ah
                db 'TotalDurationMS',0
aTotaluptimems_0 db 0Ah
                db 'TotalUptimeMS',0
                dw 540Ah
                dq 707375536C61746Fh
                db 65h
                dd 6465646Eh
                db 4Dh, 53h, 0
aUtcreplaceComm db 0Ah
                db 'UTCReplace_CommandLineHash',0
                dd 65764504h
aNtsequence_0   db 'ntSequence',0
aProcesssequenc db 0Ah
                db 'ProcessSequence',0
                db 0Ah, 6
word_14002BD9E  dw 50Bh                 ; DATA XREF: sub_140779EE0+17D↓o
                db    0
                db 3, 4 dup(0), 20h, 0
                db    0
                db 2Ch, 2, 80h, 0, 41h, 2 dup(70h)
aStatechange    db 'StateChange',0
aAppstatechange db 'AppStateChange',0
                db 4, 50h, 72h, 65h, 76h
aIousstate      db 'iousState',0
                dw 5504h, 4354h, 6552h
aPlaceTargetapp db 'place_TargetAppId',0
                dw 550Fh, 4354h, 6552h
aPlaceTargetapp_0 db 'place_TargetAppVer',0
                db 4, 55h, 54h, 43h, 52h
aEplaceTargetap db 'eplace_TargetAppType',0
                db 4, 55h, 54h
aCreplaceLicens db 'CReplace_LicenseType',0
                db 4, 41h, 70h
aPsessionguid   db 'pSessionGuid',0
                db 0Fh, 54h, 61h
aRgetasid       db 'rgetAsId',0
aStatedurationm_0 db 8,'StateDurationMS',0
aUptimedeltams_1 db 0Ah
                db 'UptimeDeltaMS',0
aTotaldurationm_1 db 0Ah
                db 'TotalDurationMS',0
aTotaluptimems_1 db 0Ah
                db 'TotalUptimeMS',0
aTotalsuspended db 0Ah
                db 'TotalSuspendedMS',0
aUtcreplaceComm_0 db 0Ah
                db 'UTCReplace_CommandLineHash',0
                db 4
aEventsequence  db 'EventSequence',0
aProcesssequenc_0 db 0Ah
                db 'ProcessSequence',0
aInstanceid_0   db 0Ah
                db 'InstanceId',0
                db 8, 50h, 72h, 6Fh, 63h
                db 65h
                dd 74537373h
aArtkey         db 'artKey',0
aExitstatus     db 0Ah
                db 'ExitStatus',0
aCrashed        db 8,'Crashed',0
                db 4, 48h, 61h, 6Eh, 67h, 43h, 6Fh
                db  75h ; u
                db 6Eh, 74h, 0, 4, 47h, 68h, 6Fh
aStcount        db 'stCount',0
                db    4
aHitprefilterue db 'HitPrefilterUE',0
                db    4
aHandlecount    db 'HandleCount',0
aCommitcharge   db 8,'CommitCharge',0
aCommitchargepe db 0Ah
                db 'CommitChargePeak',0
aCpucyclecount  db 0Ah
                db 'CPUCycleCount',0
aReadcount      db 0Ah
                db 'ReadCount',0
aWritecount     db 8,'WriteCount',0
aReadsizeinkb   db 8,'ReadSizeInKB',0
aWritesizeinkb  db 8,'WriteSizeInKB',0
aHardfaultcount db 8,'HardFaultCount',0
aSharedcommitch db 8,'SharedCommitCharge',0
                db 0Ah, 6
word_14002BFD6  dw 50Bh                 ; DATA XREF: sub_1405F8884+529↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 25h, 4, 80h, 0, 41h, 2 dup(70h)
aStatechangesum db 'StateChangeSummary',0
aLaunchcount    db 'LaunchCount',0
                db 89h
                db  80h
                db 3 dup(80h), 71h, 53h, 75h, 73h
aPendcount      db 'pendCount',0
                dw 8089h, 8080h, 7180h
aResumecount    db 'ResumeCount',0
                dd 80808089h
                db  80h
aQterminatecoun db 'qTerminateCount',0
                db 89h, 4 dup(80h), 71h, 43h
aRashcount      db 'rashCount',0
                dw 8089h, 8080h, 7180h
aHeartbeatcount db 'HeartbeatCount',0
                db 89h
                db  80h
                db 3 dup(80h), 71h, 48h, 65h, 61h
aRtbeatsuspende db 'rtbeatSuspendedCount',0
                db 89h, 2 dup(80h)
                dq 65636F7250718080h, 6974617275447373h, 6D75535F534D6E6Fh
                db 0, 89h, 2 dup(80h)
                dd 52718080h
aUnningduration db 'unningDurationMS_Sum',0
                db 89h, 2 dup(80h)
                db  80h
                db 80h, 71h, 48h, 61h, 6Eh, 67h, 43h
aOuntSum        db 'ount_Sum',0
                db 89h, 4 dup(80h), 71h, 47h
aHostcountSum   db 'hostCount_Sum',0
                dw 8089h
                db  80h
                db 2 dup(80h), 71h, 48h, 61h, 6Eh, 64h
aLecountatexitS db 'leCountAtExit_Sum',0
                dw 8089h, 8080h, 7180h
aCommitchargeat db 'CommitChargeAtExit_Sum',0
                db 89h
                db  80h
                db 3 dup(80h), 71h, 43h, 6Fh, 6Dh
aMitchargepeaka db 'mitChargePeakAtExit_Sum',0
                db  89h
                db 4 dup(80h), 71h, 52h, 65h
aAdcountatexitS db 'adCountAtExit_Sum',0
                dw 8089h, 8080h, 7180h
aReadsizeinkbat db 'ReadSizeInKBAtExit_Sum',0
                db 89h
                db  80h
                db 3 dup(80h), 71h, 57h, 72h, 69h
aTecountatexitS db 'teCountAtExit_Sum',0
                dw 8089h, 8080h, 7180h
aWritesizeinkba db 'WriteSizeInKBAtExit_Sum',0
                db  89h
                db 4 dup(80h), 71h, 43h, 79h
aClecountatexit db 'cleCountAtExit_Sum',0
                db 89h, 4 dup(80h)
aQexitstatusneg db 'qExitStatusNegativeCount',0
                db 89h, 4 dup(80h), 71h, 45h
aXitstatuszeroc db 'xitStatusZeroCount',0
                db 89h, 4 dup(80h)
aQexitstatusone db 'qExitStatusOneCount',0
                dd 80808089h
                db  80h
aQhitprefilteru db 'qHitPrefilterUECount',0
                dw 8089h
                db  80h
                db 2 dup(80h), 71h, 48h, 61h, 72h, 64h
aFaultcountatex db 'FaultCountAtExit_Sum',0
                db 89h, 2 dup(80h)
                db  80h
                db 80h, 71h, 55h, 54h, 43h, 4Dh, 65h
aTadataImagefil db 'tadata_ImageFileName',0
                db 96h, 80h, 0A0h
                db  80h
                db 80h, 0, 55h, 54h, 43h, 4Dh, 65h
aTadataPackagen db 'tadata_PackageName',0
                db 81h, 80h, 0A0h, 2 dup(80h)
                db    0
aUtcmetadataPra db 'UTCMetadata_PRAID',0
                db 81h, 80h, 0A0h, 2 dup(80h)
                db    0
aUtcmetadataIma db 'UTCMetadata_ImageChecksum',0
                db 88h, 80h, 0A0h, 2 dup(80h)
                db    0
aUtcmetadataIma_0 db 'UTCMetadata_ImageTimeDateStamp',0
                db  88h
                db 80h, 0A0h, 2 dup(80h), 0, 55h, 54h
aCmetadataComma db 'CMetadata_Commandline',0
                dw 8096h
                db 0A0h
                db 2 dup(80h), 0, 45h, 78h, 74h, 72h
aAinfoflags     db 'aInfoFlags',0
                db 15h, 55h, 54h, 43h, 52h
aEplaceTargetap_0 db 'eplace_TargetAppId_FromEventData',0
                db 4, 55h, 54h, 43h, 52h, 65h, 70h
aLaceTargetappv db 'lace_TargetAppVer_FromEventData',0
                db    4
aUtcreplaceTarg_2 db 'UTCReplace_TargetAppType_FromEventData',0
                db    4
aUtcreplaceLice db 'UTCReplace_LicenseType_FromEventData',0
                dw 5504h
aTcreplaceComma db 'TCReplace_CommandLineHash_FromEventData',0
                dq 6E6961746E6F4304h, 61500F0064497265h, 766972505F417472h
aTags_3         db 'Tags',0
                db 0Ah, 6
byte_14002C407  db 0Bh                  ; DATA XREF: sub_1405F9924+1EB↓o
                db    5
                align 2
                dw 3, 2 dup(0)
                db    0
                align 2
                dw 0EEh, 80h, 7250h
aOcessstarted   db 'ocessStarted',0
aInstancestartt db 'InstanceStartTime',0
aInstanceid_1   db 9,'InstanceId',0
aParentpid      db 8,'ParentPid',0
aSessionid_44   db 8,'SessionId',0
aImagefilename_5 db 8,'ImageFileName',0
                db  16h
aProcessstartke db 'ProcessStartKey',0
aProcesssequenc_1 db 0Ah
                db 'ProcessSequence',0
aCreateinterrup db 0Ah
                db 'CreateInterruptTime',0
aSessioncreatet db 0Ah
                db 'SessionCreateTime',0
aImagechecksum_0 db 0Ah
                db 'ImageChecksum',0
aImagetimedates_2 db 8,'ImageTimeDateStamp',0
aPackagename    db 8,'PackageName',0
                dw 5001h, 4152h, 4449h
                dq 6953726573550100h, 616D6D6F43130064h, 1600656E694C646Eh
                db 6
byte_14002C501  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14099AAF8+CF01↓o
                dd 400000h
                align 4
                dd 800043h
aSystemtimechan db 'SystemTimeChange',0
aNewtime        db 'NewTime',0
aOldtime        db 9,'OldTime',0
aChangereason   db 9,'ChangeReason',0
aProcess_1      db 8,'Process',0
                db 16h, 50h, 49h, 44h, 0, 8, 6
byte_14002C550  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1406D96E0+1479BE↓o
                dd 800000h
                dw 2400h, 8000h, 4500h
aTwoutofloggers db 'twOutOfLoggerSlots',0
aMaxloggers     db 'MaxLoggers',0
                dw 608h
byte_14002C580  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1405D00B0+A2A↓o
                dd 400000h
                dw 5100h, 9000h, 5200h
aEdirectiontrus db 'edirectionTrustPolicy',0
aPartaPrivtags_33 db 'PartA_PrivTags',0
aType_8         db 0Ah
                db 'Type',0
aMode           db 8,'Mode',0
aImpersonating  db 8,'Impersonating',0
                dq 656C75646F4D0384h
                db 20h, 32h, 0, 16h, 6
byte_14002C5DD  db 0Bh, 5, 0            ; DATA XREF: sub_14093D488+206↓o
                db 3 dup(0)
                dd 400000h
                align 8
                db  5Dh ; ]
                align 2
                dw 0C0h, 7250h, 686Fh
aIbitlowilimage db 'ibitLowILImageMap',0
aMode_0         db 'mode',0
aProcesspath_0  db 8,'processPath',0
                dd 6F727016h
aCesscommandlin_0 db 'cessCommandLine',0
                dq 737365636F727016h, 79654B7472617453h, 4E6567616D691500h
                db 61h, 6Dh, 65h, 0, 16h, 6
word_14002C646  dw 50Bh                 ; DATA XREF: sub_14093D788+245↓o
                db 4 dup(0)
                dd 400000h
                db    0
                db 8Ch, 0, 0C0h, 0, 50h, 72h, 6Fh
aHibitnonmicros db 'hibitNonMicrosoftBinaries',0
aMode_1         db 'mode',0
aProcesspath_1  db 8,'processPath',0
                dd 6F727016h
aCesscommandlin_1 db 'cessCommandLine',0
                db  16h
aProcessstartke_0 db 'processStartKey',0
                db 15h, 69h, 6Dh, 61h, 67h, 65h, 4Eh
                db  61h ; a
                db 6Dh, 65h, 0, 16h, 72h, 65h, 71h
aUiredsignature db 'uiredSignatureLevel',0
                dd 67697304h
aNaturelevel    db 'natureLevel',0
                db 4, 6
word_14002C6DE  dw 50Bh                 ; DATA XREF: sub_1405CFB74+37F↓o
                db 4 dup(0)
                dd 400000h
                dq 6E6F4300C000AA00h, 746F72506C6F7274h, 73556E6F69746365h
                dq 655265646F4D7265h
aTurnmismatch   db 'turnMismatch',0
aMode_2         db 'mode',0
aProcesspath_2  db 8,'processPath',0
                db 16h
aProcesscommand db 'processCommandLine',0
                db 16h, 70h, 72h, 6Fh, 63h
aEssstartkey    db 'essStartKey',0
                dd 6E6F6315h
aTrolpcimagenam db 'trolPcImageName',0
                db  16h
aRspcontentsima db 'rspContentsImageName',0
                dw 7316h
aTrictmode      db 'trictMode',0
aPartaPrivtags_34 db 0Dh,'PartA_PrivTags',0
                dw 60Ah
dword_14002C794 dd 50Bh                 ; DATA XREF: sub_1405D0C08+2C0↓o
                db 2 dup(0)
                dd 400000h
                dw 0A100h
                db    0
                db 0C0h, 0, 55h, 73h, 65h, 72h, 43h
aEtsetcontextip db 'etSetContextIpValidationFailure',0
aLogmode        db 'logMode',0
aProcesspath_3  db 8,'processPath',0
                db 16h, 70h, 72h
aOcesscommandli db 'ocessCommandLine',0
                db 16h, 70h, 72h, 6Fh, 63h, 65h, 73h
aSstartkey      db 'sStartKey',0
                dw 7415h, 7261h, 6567h
aTipimagename   db 'tIpImageName',0
                db 16h, 73h, 74h
aRictmode       db 'rictMode',0
aContinuetype   db 0Dh,'continueType',0
aPartaPrivtags_35 db 8,'PartA_PrivTags',0
                db 0Ah
                db 6
byte_14002C841  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_1405CF7B4+265↓o
                dd 400000h
                align 4
                dd 0C000BFh
aBlocknoncetbin db 'BlockNonCetBinaries',0
aLogmode_0      db 'logMode',0
aProcesspath_4  db 8,'processPath',0
                db 16h, 70h, 72h, 6Fh, 63h, 65h, 73h
aScommandline   db 'sCommandLine',0
                db 16h, 70h, 72h
aOcessstartkey  db 'ocessStartKey',0
                dw 6D15h
aAppedimagename db 'appedImageName',0
                db 16h
aImagecetshadow db 'imageCetShadowStacksReady',0
aImageehcontinu db 0Dh,'imageEHContinuationTablePresent',0
aNonehcontmode  db 0Dh,'nonEhcontMode',0
aPartaPrivtags_36 db 0Dh,'PartA_PrivTags',0
                dw 60Ah
dword_14002C90C dd 50Bh                 ; DATA XREF: sub_1405D00B0+994↓o
                db 2 dup(0)
                dd 400000h
                dw 0BF00h
                db    0
                db 90h
                dw 5200h, 6465h, 7269h
aEctiontrustpol db 'ectionTrustPolicy',0
aPartaPrivtags_37 db 'PartA_PrivTags',0
aType_9         db 0Ah
                db 'Type',0
aMode_3         db 8,'Mode',0
aImpersonating_0 db 8,'Impersonating',0
                dd 6F4D0384h
aDule2          db 'dule 2',0
                db 16h
aOffset2        db 'Offset 2',0
aModule3        db 0Ah
                db 'Module 3',0
                db 16h, 4Fh, 2 dup(66h), 73h
aEt3            db 'et 3',0
aModule4        db 0Ah
                db 'Module 4',0
                db 16h
aOffset4        db 'Offset 4',0
aModule5        db 0Ah
                db 'Module 5',0
                db 16h, 4Fh, 2 dup(66h), 73h
aEt5            db 'et 5',0
aModule6        db 0Ah
                db 'Module 6',0
                db 16h
aOffset6        db 'Offset 6',0
aModule7        db 0Ah
                db 'Module 7',0
                db 16h, 4Fh, 2 dup(66h), 73h
aEt7            db 'et 7',0
                db 0Ah, 6
byte_14002C9D7  db 0Bh                  ; DATA XREF: sub_14093DD04+197↓o
                db 5, 4 dup(0)
                dd 200000h
                align 2
                dw 66h, 0C0h, 6547h
aNericmitigatio db 'nericMitigationForProcess',0
aMitigationid   db 'mitigationId',0
aMode_4         db 8,'mode',0
aProcesspath_5  db 8,'processPath',0
                dw 7016h, 6F72h, 6563h
aSscommandline  db 'ssCommandLine',0
                dw 7016h
aRocessstartkey db 'rocessStartKey',0
                db 15h
                db 6
                db 0Bh, 5, 0, 1, 3 dup(0)
                                        ; DATA XREF: sub_14072EF04+10425E↓o
                dq 0C0006400002000h
aDeniedtokencre db 'DeniedTokenCreation',0
aFullimagefilen db 'FullImageFileName',0
                dw 5016h
aArentcommandli db 'arentCommandLine',0
                db 16h, 43h, 68h, 69h, 6Ch, 64h, 49h
aMagepathname   db 'magePathName',0
                db 16h, 43h, 68h
aIldcommandline db 'ildCommandLine',0
                db 16h
                db 6
byte_14002CAB9  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14072EF04+10439B↓o
                dd 400000h
                align 4
                dd 0C0008Ch
aProhibitchildp db 'ProhibitChildProcessCreation',0
aMode_5         db 'mode',0
aParentimagepat db 8,'parentImagePathName',0
                db 16h
aParentcommandl db 'parentCommandLine',0
                dw 7016h, 7261h, 6E65h
aTprocessstartk db 'tProcessStartKey',0
                db 15h, 63h, 68h, 69h, 6Ch, 64h, 49h
aMagepathname_0 db 'magePathName',0
                db 16h, 63h, 68h
aIldcommandline_0 db 'ildCommandLine',0
dword_14002CB4F dd 50B0616h             ; DATA XREF: sub_1406B1C18+168971↓o
                db 2 dup(0), 8, 2 dup(0)
                dq 80004500002000h
aKernelcallback db 'KernelCallbackTiming',0
aPartaPrivtags_38 db 'PartA_PrivTags',0
aDurationinms_0 db 0Ah
                db 'DurationInMS',0
aProviderguid   db 9,'ProviderGuid',0
                db 0Fh, 6
word_14002CBA2  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1409412F8+175↓o
                dd 400000h
                dd 80003F00h
                db    0
aAdminaccessreq db 'AdminAccessRequired',0
aMode_6         db 'mode',0
aFullprocessima db 8,'fullProcessImageName',0
                dq 61486B6361747316h
                db 73h, 68h, 0, 8, 6
byte_14002CBED  db 0Bh, 5, 0            ; DATA XREF: sub_1409412F8+202↓o
                db 3 dup(0)
                dd 400000h
                align 8
                db  3Ch ; <
                align 2
                dw 80h, 694Ch, 6B6Eh
aEdtokenquery   db 'edTokenQuery',0
aMode_7         db 'mode',0
aFullprocessima_0 db 8,'fullProcessImageName',0
                dq 61486B6361747316h
                db 73h, 68h, 0, 8, 6
byte_14002CC35  db 0Bh, 5, 0            ; DATA XREF: sub_1409412F8+C0↓o
                db 3 dup(0)
                dd 400000h
                align 20h
                db  60h ; `
                align 2
                dw 80h, 6441h, 696Dh
aNaccessmaxallo db 'nAccessMaxAllowedDiffers',0
aMode_8         db 'mode',0
aFullprocessima_1 db 8,'fullProcessImageName',0
                dd 61747316h
aCkhash         db 'ckHash',0
aAdminlessacces db 8,'adminlessAccessGranted',0
                db 8
                db 6
byte_14002CCA1  db 0Bh, 5, 4 dup(0)     ; DATA XREF: sub_14070D6EC+11C957↓o
                dd 200000h
                align 4
                dd 800031h
aFirmwaretablea db 'FirmwareTableAccessDenied',0
aProvidersignat db 'ProviderSignature',0
                db 8, 6
word_14002CCDE  dw 40Bh                 ; DATA XREF: sub_14099B070+9837↓o
                dq 40000000000000h, 7269460080006D00h, 6F6F42657261776Dh
                dq 6552006174614474h, 0A00646E45746573h, 67616D4964616F4Ch
                dq 0A00747261745365h, 616D497472617453h, 74726174536567h
aExitbootservic db 0Ah
                db 'ExitBootServicesEntry',0
aExitbootservic_0 db 0Ah
                db 'ExitBootServicesExit',0
                db 0Ah, 6
byte_14002CD57  db 0Bh                  ; DATA XREF: sub_14094CFC0+11D↓o
                db 5, 4 dup(0)
                dd 0
                align 2
                dw 267h, 80h, 6552h
aFreshtimezonei db 'freshTimeZoneInfoCutoverFail',0
aExitreason_0   db 'ExitReason',0
                db    4
aRefreshfailure db 'RefreshFailures',0
aLasttimezonebi db 8,'LastTimeZoneBias',0
aLasttimezoneid db 7,'LastTimeZoneId',0
aRealtimeisuniv db 7,'RealTimeIsUniversal',0
                db  84h
                db 3, 46h, 69h, 72h, 73h, 74h, 54h
aImerefresh     db 'imeRefresh',0
                db 84h, 3, 53h, 74h, 61h
aNdardboundaryi db 'ndardBoundaryInLocalTime',0
aTimezonekeynam_0 db 0Ah
                db 'TimeZoneKeyName',0
                dw 4401h, 6E79h, 6D61h
aIcdaylighttime db 'icDaylightTimeDisabled',0
                db 84h
                db    3
aBias_0         db 'Bias',0
aStandardbias_0 db 7,'StandardBias',0
aDaylightbias_0 db 7,'DaylightBias',0
aStandardstart_0 db 7,'StandardStart',0
                db 98h, 8, 53h, 74h, 61h, 6Eh, 64h
aArdstartyear   db 'ardStartYear',0
                db 6, 53h, 74h
aAndardstartmon db 'andardStartMonth',0
                db 6, 53h, 74h, 61h, 6Eh, 64h, 61h
aRdstartday     db 'rdStartDay',0
                db 6, 53h, 74h, 61h, 6Eh
aDardstarthour  db 'dardStartHour',0
                dw 5306h
aTandardstartmi db 'tandardStartMinute',0
                db 6, 53h, 74h, 61h, 6Eh
aDardstartsecon db 'dardStartSecond',0
                db    6
aStandardstartm db 'StandardStartMilliseconds',0
                db 6, 53h, 74h, 61h, 6Eh
aDardstartweekd db 'dardStartWeekday',0
                db 6, 44h, 61h, 79h, 6Ch, 69h, 67h
aHtstart        db 'htStart',0
                db  98h
aDaylightstarty db 8,'DaylightStartYear',0
                dd 79614406h
aLightstartmont db 'lightStartMonth',0
                db    6
aDaylightstartd db 'DaylightStartDay',0
                dw 4406h, 7961h, 696Ch
aGhtstarthour   db 'ghtStartHour',0
                db 6, 44h, 61h
aYlightstartmin db 'ylightStartMinute',0
                dw 4406h, 7961h, 696Ch
aGhtstartsecond db 'ghtStartSecond',0
                db 6
aDaylightstartm db 'DaylightStartMilliseconds',0
                dw 4406h, 7961h, 696Ch
aGhtstartweekda db 'ghtStartWeekday',0
                db 2 dup(6)
word_14002CFCA  dw 50Bh, 2 dup(0)       ; DATA XREF: sub_1407A99E8+14B↓o
                dd 0
                dd 80029000h
                db    0
aRefreshtimezon db 'RefreshTimeZoneInfoSuccess',0
aRefreshfailure_0 db 'RefreshFailures',0
aActivetimezone db 8,'ActiveTimeZoneBias',0
aActivetimezone_0 db 7,'ActiveTimeZoneId',0
aRealtimeisuniv_0 db 7,'RealTimeIsUniversal',0
                db 84h
                db    3
aFirsttimerefre db 'FirstTimeRefresh',0
                dw 384h, 7453h, 6E61h
aDardboundaryin db 'dardBoundaryInLocalTime',0
aDaylightbounda db 0Ah
                db 'DaylightBoundaryInLocalTime',0
aNextcutoverinl db 0Ah
                db 'NextCutoverInLocalTime',0
aTimezonekeynam_1 db 0Ah
                db 'TimeZoneKeyName',0
                dw 4401h
aYnamicdaylight db 'ynamicDaylightTimeDisabled',0
                db 84h, 3, 42h, 69h, 61h
                db  73h ; s
                align 2
aStandardbias_1 db 7,'StandardBias',0
aDaylightbias_1 db 7,'DaylightBias',0
aStandardstart_1 db 7,'StandardStart',0
                db 98h, 8, 53h
aTandardstartye db 'tandardStartYear',0
                db 6, 53h, 74h, 61h, 6Eh, 64h, 61h
aRdstartmonth   db 'rdStartMonth',0
                db 6, 53h, 74h
aAndardstartday db 'andardStartDay',0
                db 6
aStandardstarth db 'StandardStartHour',0
                dw 5306h, 6174h, 646Eh
aArdstartminute db 'ardStartMinute',0
                db 6
aStandardstarts db 'StandardStartSecond',0
                dd 61745306h
aNdardstartmill db 'ndardStartMilliseconds',0
                db 6
aStandardstartw db 'StandardStartWeekday',0
                db 6, 44h, 61h
aYlightstart    db 'ylightStart',0
                dd 61440898h
aYlightstartyea db 'ylightStartYear',0
                db    6
aDaylightstartm_0 db 'DaylightStartMonth',0
                dd 79614406h
aLightstartday  db 'lightStartDay',0
                dw 4406h
aAylightstartho db 'aylightStartHour',0
                db 6, 44h, 61h, 79h, 6Ch, 69h, 67h
aHtstartminute  db 'htStartMinute',0
                dw 4406h
aAylightstartse db 'aylightStartSecond',0
                db 6, 44h, 61h, 79h, 6Ch
aIghtstartmilli db 'ightStartMilliseconds',0
                dw 4406h
aAylightstartwe db 'aylightStartWeekday',0
                db 2 dup(6)
word_14002D266  dw 50Bh                 ; DATA XREF: sub_1403B4A1C+EE↓o
                db 4 dup(0)
                dd 0
                db    0
                db 42h, 2, 80h, 0, 54h, 69h, 6Dh
aEzoneinformati db 'eZoneInformationAtBoot',0
aRefreshfailure_1 db 'RefreshFailures',0
aActivetimezone_1 db 8,'ActiveTimeZoneBias',0
aActivetimezone_2 db 7,'ActiveTimeZoneId',0
aRealtimeisuniv_1 db 7,'RealTimeIsUniversal',0
                dw 384h, 654Eh, 7478h
aCutoverinlocal db 'CutoverInLocalTime',0
aTimezonekeynam_2 db 0Ah
                db 'TimeZoneKeyName',0
                dd 6E794401h
aAmicdaylightti db 'amicDaylightTimeDisabled',0
                db 84h, 3, 42h, 69h, 61h, 73h, 0
aStandardbias_2 db 7,'StandardBias',0
aDaylightbias_2 db 7,'DaylightBias',0
aStandardstart_2 db 7,'StandardStart',0
                db 98h, 8, 53h, 74h, 61h
aNdardstartyear db 'ndardStartYear',0
                db 6
aStandardstartm_0 db 'StandardStartMonth',0
                db 6, 53h, 74h, 61h, 6Eh
aDardstartday   db 'dardStartDay',0
                db 6, 53h, 74h
aAndardstarthou db 'andardStartHour',0
                db    6
aStandardstartm_1 db 'StandardStartMinute',0
                db 6, 53h, 74h
aAndardstartsec db 'andardStartSecond',0
                dw 5306h, 6174h, 646Eh
aArdstartmillis db 'ardStartMilliseconds',0
                db 6, 53h, 74h
aAndardstartwee db 'andardStartWeekday',0
                db 6, 44h, 61h, 79h, 6Ch
aIghtstart      db 'ightStart',0
                dw 898h, 6144h, 6C79h
aIghtstartyear  db 'ightStartYear',0
                dw 4406h
aAylightstartmo db 'aylightStartMonth',0
                dw 4406h, 7961h, 696Ch
aGhtstartday    db 'ghtStartDay',0
                dd 79614406h
aLightstarthour db 'lightStartHour',0
                db 6
aDaylightstartm_1 db 'DaylightStartMinute',0
                dd 79614406h
aLightstartseco db 'lightStartSecond',0
                db 6, 44h, 61h, 79h, 6Ch, 69h, 67h
aHtstartmillise db 'htStartMilliseconds',0
                dd 79614406h
aLightstartweek db 'lightStartWeekday',0
                dw 606h
dword_14002D4B4 dd 50Bh                 ; DATA XREF: sub_14094D1A8+4D↓o
                db 2 dup(0)
                dd 0
                dw 8E00h
                db    0
                db 80h, 0, 52h, 65h, 66h, 72h, 65h
aShtimezoneinfo db 'shTimeZoneInfoQueryFail',0
aFailureStatus  db 'Failure status',0
                db 88h
                db  0Eh
aRefreshfailure_2 db 'RefreshFailures',0
aLasttimezonebi_0 db 8,'LastTimeZoneBias',0
aLasttimezoneid_0 db 7,'LastTimeZoneId',0
aRealtimeisuniv_2 db 7,'RealTimeIsUniversal',0
                dq 5474737269460384h, 6572666552656D69h
                db 73h, 68h, 0, 84h, 3, 6
                dw 50Bh                 ; DATA XREF: sub_140357F78+5E↓o
                db 4 dup(0)
                dd 0
                db    0
                db 4Ah, 0, 80h, 0, 48h, 69h, 76h
aEloaderrordete db 'eLoadErrorDetected',0
aIsrecoverable  db 'isRecoverable',0
                db 84h, 3, 66h, 61h, 69h, 6Ch, 75h
aRetype         db 'reType',0
aStatus_40      db 8,'status',0
                db 88h
                dq 6F697461636F6C0Eh
                db 6Eh, 0, 8, 6
dword_14002D5A4 dd 50Bh                 ; DATA XREF: sub_1407D28A0+9210F↓o
                db 2 dup(0)
                dd 400000h
                dw 0BF00h
                db    0
                align 2
aTlgaggregatesu db 'TlgAggregateSummary',0
aProvider_9     db 'Provider',0
                db 0Fh
aNumflushes     db 'NumFlushes',0
aMaxentriesstor db 0Ah
                db 'MaxEntriesStored',0
aTotalentriesfl db 0Ah
                db 'TotalEntriesFlushed',0
aMaxentriesflus db 0Ah
                db 'MaxEntriesFlushed',0
aMinentriesflus db 8,'MinEntriesFlushed',0
aNumbucketlimit db 8,'NumBucketLimitReached',0
aNumallocationf db 8,'NumAllocationFailures',0
aNumlargeeventf db 8,'NumLargeEventFailures',0
                db 8, 4, 0A7h
                db 0C5h
                db 51h, 0Fh, 76h, 0Eh, 0A5h, 47h, 0BEh
                db 0DEh
byte_14002D679  db 7Ch, 0F6h, 2Ch, 58h, 22h, 0F6h, 32h
                                        ; DATA XREF: .data:0000000140C02E40↓o
                db    0
aMicrosoftWindo_0 db 'Microsoft.Windows.Kernel.HAL',0
                dw 13h
                db    1
; ---------------------------------------------------------------------------
                sbb     dh, [rbx+50h]
                iretq
; ---------------------------------------------------------------------------
                dw 8289h
                db  47h ; G
                db 0B3h, 0E0h, 0DCh, 0E8h, 0C9h, 4, 76h
                db 0BAh
                db 4, 18h, 0F4h, 0EAh, 0E9h, 7, 0Ch
                db  4Ch ; L
                db 46h, 0ADh, 14h, 0A7h, 0F3h, 53h, 34h
                db  9Ah
                align 2
word_14002D6C2  dw 37h, 694Dh, 7263h    ; DATA XREF: .data:0000000140C02138↓o
aOsoftWindowsKe db 'osoft.Windows.Kernel.Registry',0
                dw 13h
                db    1
; ---------------------------------------------------------------------------
                sbb     dh, [rbx+50h]
                iretq
; ---------------------------------------------------------------------------
                dw 8289h
                db  47h ; G
                db 0B3h, 0E0h, 0DCh, 0E8h, 0C9h, 4, 76h
                db 0BAh
                db 4, 26h, 34h, 0E8h, 0F7h, 81h, 2Bh
                db 0F9h
                db 58h, 0C5h, 0D4h, 0F2h, 0DBh, 6Dh, 0Ah
                db 0D4h
byte_14002D709  db 73h, 4Ah, 0, 4Dh, 69h, 63h, 72h
                                        ; DATA XREF: .data:0000000140C01990↓o
aOsoftWindowsKe_0 db 'osoft.Windows.Kernel.FeatureConfigurationManager',0
                db 13h, 0, 1, 1Ah, 73h, 50h, 4Fh
                db 0CFh
                db 89h, 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h
                db 0C9h
                db 4, 76h, 0BAh, 4, 0CCh, 9Eh, 2Dh
                db  25h ; %
                db 9Fh, 1Ch, 17h, 49h, 87h, 60h, 0F8h
                db  72h ; r
byte_14002D761  db 0A8h, 3Bh, 0F0h, 18h, 36h, 0, 4Dh
                                        ; DATA XREF: .data:0000000140C02170↓o
aIcrosoftWindow db 'icrosoft.Windows.Containers.RegistryVirtualization',0
                db 4, 8Fh, 0F3h, 7Ch, 10h
                db  1Bh
                db 0B0h, 0FCh, 4Fh, 0BFh, 6Bh, 0D0h, 0EDh
                db  96h
byte_14002D7A9  db 0D8h, 0ECh, 0C6h, 36h, 0, 4Dh, 69h
                                        ; DATA XREF: .data:0000000140C021A8↓o
aCrosoftWindows db 'crosoft.Windows.Kernel.Oplocks',0
                db 13h
                db    0
                db 1, 1Ah, 73h, 50h, 4Fh, 0CFh, 89h
                db  82h
                db 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h, 4
                db  76h ; v
                db 0BAh, 4, 0B2h, 3Ah, 0A3h, 73h, 66h
                db  19h
                db 99h, 49h, 8Ah, 0DDh, 86h, 8Ch, 41h
aAri            db 'ARi*',0             ; DATA XREF: .data:0000000140C044A8↓o
aIumtelemetrypr db 'IumTelemetryProvider',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_18. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002D818 dq 6FC504BA7604C9E8h, 55A04D72D1CFA4D1h, 370EA702EBF325h
aMicrosoftWindo_1 db 'Microsoft.Windows.Kernel.LiveDump',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_19. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002D860 dq 0F37B04BA7604C9E8h, 0CDA34051D72DA9FDh, 3579E03C1022D4h
aMicrosoftWindo_2 db 'Microsoft.Windows.Kernel.SysEnv',0
                db  13h
                align 2
                dw 1A01h, 5073h, 0CF4Fh
                db  89h
                db 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h
                db    4
                db 76h, 0BAh, 4, 0FFh, 0E9h, 0BDh, 0C8h
                db  1Fh
                db 0F3h, 0DCh, 59h, 6Ch, 27h, 0CAh, 37h
                db 0C5h
byte_14002D8B9  db 16h, 0ADh, 0A5h, 3Bh, 0, 4Dh, 69h
                                        ; DATA XREF: .data:0000000140C02D98↓o
aCrosoftWindows_0 db 'crosoft.Windows.Kernel.DeviceConfig',0
                dd 3A010013h
                db    5
                db 0DEh, 0C7h, 2Eh, 0Ch, 44h, 4Ah, 91h
                db 0A2h
                db 52h, 22h, 0ECh, 2Eh, 0CDh, 0F1h, 4
                db 0BBh
                db 0BBh, 0Eh, 6Ch, 92h, 0C2h, 7Dh, 45h
                db  96h
                db 75h, 0DFh, 0CCh, 1Ch, 0Dh, 58h, 0B0h
unk_14002D908   db  32h ; 2             ; DATA XREF: .data:0000000140C02DD0↓o
                align 2
aMicrosoftWindo_3 db 'Microsoft.Windows.Kernel.PnP',0
                db 13h
                db    0
                db 1, 3Ah, 5, 0DEh, 0C7h, 2Eh, 0Ch
                db  44h ; D
                db 4Ah, 91h, 0A2h, 52h, 22h, 0ECh, 2Eh
                db 0CDh
                db 0F1h, 4, 2 dup(0BBh), 0Eh, 6Ch, 92h
                db 0C2h
                db 7Dh, 45h, 96h, 75h, 0DFh, 0CCh, 1Ch
                db  0Dh
byte_14002D949  db 58h, 0B0h, 32h, 0, 4Dh, 69h, 63h
                                        ; DATA XREF: .data:0000000140C02E08↓o
aRosoftWindowsK db 'rosoft.Windows.Kernel.PnP',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_20. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002D978 dq 37C304BA7604C9E8h, 0EDB85C1B1363061Ch, 35CE3346F7D8F3h
aMicrosoftWindo_4 db 'Microsoft.Windows.Kernel.Kernel',0
                db  13h
                align 2
                dw 1A01h, 5073h, 0CF4Fh
                db  89h
                db 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h
                db    4
                db 76h, 0BAh, 4, 9Ch, 8Bh, 9Eh, 7Eh
                db  6Ch ; l
                db 40h, 73h, 5Dh, 0E5h, 66h, 0Fh, 50h
                db 0EAh
byte_14002D9D1  db 3Ah, 0DEh, 3Eh, 31h, 0, 4Dh, 69h
                                        ; DATA XREF: .data:0000000140C046E0↓o
aCrosoftWindows_1 db 'crosoft-Windows-Kernel-Mm',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_21. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002DA00 dq 0A7A104BA7604C9E8h, 0D0954EA777EC63BCh, 34F7EBC0F0D398h
aMicrosoftWindo_5 db 'Microsoft.Windows.Kernel.Power',0
; ---------------------------------------------------------------------------
                adc     eax, [rax]
                add     [rdx], ebx
                jnb     short loc_14002DA8D
                iretq
; ---------------------------------------------------------------------------
                db 89h
qword_14002DA40 dq 4C9E8DCE0B34782h, 0A00D2ED72704BA76h, 0B579EC7E9F4B2B38h
                dq 63694D0042A54AECh, 572E74666F736F72h, 4B2E73776F646E69h
                dq 6F502E6C656E7265h, 657269442E726577h, 7069724464657463h
                db 73h, 0, 13h, 0, 1
; ---------------------------------------------------------------------------

loc_14002DA8D:                          ; CODE XREF: .rdata:000000014002DA3B↑j
                sbb     dh, [rbx+50h]
                iretq
; ---------------------------------------------------------------------------
                dw 8289h, 0B347h, 0DCE0h
qword_14002DA98 dq 1E3404BA7604C9E8h, 1C874374F5719EDCh, 3E7B0142C77CB8h
aMicrosoftWindo_6 db 'Microsoft.Windows.Power.SleepstudyHelper',0
                db 13h, 0, 1, 1Ah, 73h, 50h, 4Fh
                db 0CFh
                db 89h, 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h
                db 0C9h
                db 4, 76h, 0BAh, 4, 4Dh, 3Eh, 75h
                db  5Eh ; ^
                db 0Dh, 2Bh, 51h, 44h, 0B8h, 0F9h, 0Fh
                db  12h
byte_14002DAF9  db 53h, 0CAh, 0Bh, 44h, 32h, 0, 4Dh
                                        ; DATA XREF: PAGEDATA:0000000140D2D898↓o
aIcrosoftWindow_0 db 'icrosoft.Windows.Kernel.Ttm',0
                dd 1A010013h
                db  73h ; s
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                dd 0B3478289h
                db 0E0h
                db 0DCh, 0E8h, 0C9h, 4, 76h, 0BAh, 4
                db  4Dh ; M
                db 3Eh, 75h, 5Eh, 0Dh, 2Bh, 51h, 44h
                db 0B8h
                db 0F9h, 0Fh, 12h, 53h, 0CAh, 0Bh, 44h
unk_14002DB40   db  1Fh                 ; DATA XREF: PAGEDATA:0000000140D2D8D0↓o
                align 2
aMicrosoftWindo_7 db 'Microsoft.Windows.Kernel.Ttm',0
                db 4
                db 0D8h
                db 73h, 96h, 0C5h, 96h, 0B7h, 0DFh, 58h
                db 0FBh
                db 0F8h, 0A7h, 0Bh, 0ADh, 65h, 6Dh, 0CAh
unk_14002DB70   db  3Fh ; ?             ; DATA XREF: .data:0000000140C01AB8↓o
                align 2
aMicrosoftWindo_8 db 'Microsoft.Windows.Kernel.ProcessSubsystem',0
                dd 1A010013h
                db  73h ; s
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                dd 0B3478289h
                db 0E0h
                db 0DCh, 0E8h, 0C9h, 4, 76h, 0BAh, 4
                db 0F4h
                db 0FDh, 0A8h, 27h, 77h, 9Bh, 5Bh, 57h
                db 0BEh
                db 3Bh, 0E7h, 16h, 3Eh, 0F1h, 59h, 0BBh
unk_14002DBC0   db  3Dh ; =             ; DATA XREF: .data:0000000140C0EF18↓o
                align 2
aMicrosoftWindo_9 db 'Microsoft.Windows.Security.Capabilities',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_22. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002DBF8 dq 9A3804BA7604C9E8h, 1AD4BFA268009A6h, 37F24F3AD62A79h
aMicrosoftWindo_10 db 'Microsoft.Windows.Kernel.Security',0
                dw 13h, 1A01h, 5073h
; [00000002 BYTES: COLLAPSED FUNCTION nullsub_23. PRESS CTRL-NUMPAD+ TO EXPAND]
                dw 8289h, 0B347h, 0DCE0h
qword_14002DC40 dq 0D4E004BA7604C9E8h, 0FBB04C58FA8FB7FBh, 31D66EB827C23Ch
aMicrosoftWindo_11 db 'Microsoft-Windows-Kernel-Vm',0
                dd 1A010013h
                db  73h ; s
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                dd 0B3478289h
                db 0E0h
                db 0DCh, 0E8h, 0C9h, 4, 76h, 0BAh, 4
                db  94h
                db 0FFh, 39h, 28h, 12h, 8Fh, 1Bh, 4Eh
                db  82h
                db 0E3h, 0AFh, 7Ah, 0F7h, 7Ah, 45h, 0Fh
unk_14002DC98   db  23h ; #             ; DATA XREF: .data:0000000140C02BC0↓o
                align 2
aKernelprocess  db 'KernelProcess',0
                db  13h
                align 2
                dw 1A01h, 5073h, 0CF4Fh
                db  89h
                db 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h
                db    4
                db 76h, 0BAh, 4, 1Ch, 52h, 14h, 76h
                db  0Bh
                db 4Dh, 41h, 43h, 0BFh, 0C9h, 87h, 30h
                db  82h
byte_14002DCC9  db 0C0h, 0F1h, 0D3h, 23h, 0, 4Bh, 65h
                                        ; DATA XREF: .data:0000000140C02BF8↓o
aRnelgeneral    db 'rnelGeneral',0
                dd 1A010013h
                db  73h ; s
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                dd 0B3478289h
                db 0E0h
                db 0DCh, 0E8h, 0C9h, 4, 76h, 0BAh, 4
                db 0C9h
                db 0B8h, 0D9h, 1Dh, 78h, 0E0h, 75h, 40h
                db 0B9h
                db 0DEh, 4Eh, 51h, 25h, 7, 1Ah, 18h
unk_14002DD00   db  1Eh                 ; DATA XREF: .data:0000000140C02C30↓o
                align 2
aMstelcov       db 'MSTelCov',0
                db 13h, 0, 1, 1Ah, 73h
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                db 89h, 82h, 47h, 0B3h, 0E0h
                db 0DCh
                db 0E8h, 0C9h, 4, 76h, 0BAh, 4, 75h
                db  6Ah ; j
                db 0B7h, 23h, 4Fh, 0CEh, 0EFh, 56h, 0F9h
                db    3
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_24. PRESS CTRL-NUMPAD+ TO EXPAND]
word_14002DD2A  dw 0D6A2h, 3FAEh, 3E6Bh ; DATA XREF: .data:0000000140C02E78↓o
                db    0
aMicrosoftWindo_12 db 'Microsoft.Windows.Kernel.BootEnvironment',0
                dw 13h, 1A01h, 5073h
; ---------------------------------------------------------------------------
                iretq
; ---------------------------------------------------------------------------
                dw 8289h, 0B347h, 0DCE0h
                db 0E8h
                db 0C9h, 4, 76h, 0BAh, 4, 3Ch, 0A5h
                db  44h ; D
                db 89h, 61h, 0A5h, 53h, 4Eh, 0A0h, 0C6h
                db 0D5h
byte_14002DD79  db 65h, 41h, 47h, 45h, 0FCh, 25h, 0
                                        ; DATA XREF: .data:0000000140C02C68↓o
aKernelexecutiv_0 db 'KernelExecutive',0
                db  13h
                align 2
                dw 1A01h, 5073h, 0CF4Fh
                db  89h
                db 82h, 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h
                db    4
                db 76h, 0BAh, 4, 93h, 1Dh, 77h, 3Fh
                db 0FEh
                db 0E3h, 0F4h, 4Ch, 0BBh, 9Fh, 4Ch, 6
                db 0DEh
byte_14002DDB1  db 78h, 0C5h, 1Bh, 3Eh, 0, 4Dh, 69h
                                        ; DATA XREF: .data:0000000140C04798↓o
aCrosoftWindows_2 db 'crosoft.Windows.Security.LicensingTool',0
                db 13h
                db    0
                db 1, 1Ah, 73h, 50h, 4Fh, 0CFh, 89h
                db  82h
                db 47h, 0B3h, 0E0h, 0DCh, 0E8h, 0C9h, 4
                db  76h ; v
                db 0BAh, 4, 13h, 0CCh, 3Fh, 70h, 6Fh
                db 0B6h
                db 68h, 58h, 0DDh, 0D9h, 0E2h, 0DBh, 7Fh
                db  38h ; 8
byte_14002DE01  db 1Fh, 0FBh, 3Ch, 0, 4Dh, 69h, 63h
                                        ; DATA XREF: .data:0000000140C047D0↓o
aRosoftWindowsT db 'rosoft.Windows.TlgAggregateInternal',0
                dd 1A010013h
                dq 0B3478289CF4F5073h
                db 0E0h, 0DCh, 0E8h, 0C9h, 4, 76h, 0BAh
byte_14002DE3F  db 1                    ; DATA XREF: sub_140209DB8+61↓o
                                        ; sub_140363A0C+65↓o ...
                dq 11020410020014h, 8000000000001000h
                                        ; DATA XREF: sub_1405D5E00+1C7↓o
dword_14002DE50 dd 3                    ; DATA XREF: sub_140230420+203↓r
                                        ; sub_1402330B0+41↓o ...
                dd 2
                dq 1
qword_14002DE60 dq 2A210410000025h, 4000000000001C0Ch
                                        ; DATA XREF: sub_1409942E0+330↓o
qword_14002DE70 dq 7000400000007h, 1    ; DATA XREF: sub_140522A0C:loc_140522B03↓o
qword_14002DE80 dq 1000400000001h, 1    ; DATA XREF: sub_140522A0C+31↓o
                                        ; sub_1408A2750+7C↓o ...
qword_14002DE90 dq 1                    ; DATA XREF: sub_1402272F0+1E5↓o
                                        ; sub_14022EAE0+2D5↓o ...
                dq 10h, 200h, 40000h
qword_14002DEB0 dq 600041001000Dh, 8000000000020000h
                                        ; DATA XREF: sub_1406AB2DC+85↓o
qword_14002DEC0 dq 600041001000Bh, 8000000000010000h
                                        ; DATA XREF: sub_1406AB2DC:loc_1406AB471↓o
qword_14002DED0 dq 5F000410010062h, 4000000000004004h
                                        ; DATA XREF: sub_14034E1AC+24↓o
qword_14002DEE0 dq 10h, 100h, 10h       ; DATA XREF: sub_140725D5C+1F↓o
qword_14002DEF8 dq 2000310000004h, 8000000000000000h
                                        ; DATA XREF: sub_14072EF04+27D↓o
dword_14002DF08 dd 0                    ; DATA XREF: sub_14073125C+5E↓r
                                        ; sub_1407313B8+EC↓r ...
word_14002DF0C  dw 500h                 ; DATA XREF: sub_14073125C+6D↓r
                                        ; sub_1407313B8+F2↓r ...
                align 10h
qword_14002DF10 dq 4F73C1DE70EB4F03h, 0BD13543DD13351A0h
                                        ; DATA XREF: sub_140A43984+340↓o
qword_14002DF20 dq 777445h              ; DATA XREF: sub_140A43984+21D↓o
qword_14002DF28 dq 25210410000016h, 4000000000000808h
                                        ; DATA XREF: sub_1407751A0+9↓o
qword_14002DF38 dq 25220410000017h, 4000000000000808h
                                        ; DATA XREF: sub_1407751A0+30↓o
qword_14002DF48 dq 26210410000018h, 4000000000000808h
                                        ; DATA XREF: sub_1407751F4+11↓o
qword_14002DF58 dq 26220410000019h, 4000000000000808h
                                        ; DATA XREF: sub_1407751F4+3B↓o
qword_14002DF68 dq 29220410000024h, 4000000000000808h
                                        ; DATA XREF: sub_1409942E0:loc_140994518↓o
qword_14002DF78 dq 302020102010100h, 403030203020201h
                                        ; DATA XREF: sub_140396978+1B↓o
                                        ; sub_140396A00+7E↓o ...
qword_14002DF88 dq 2000410000002h, 8000000000000000h
                                        ; DATA XREF: sub_140399928+27↓o
qword_14002DF98 dq 6800040000007Eh, 82h ; DATA XREF: sub_14078A4E0+29↓o
qword_14002DFA8 dq 62000400000078h, 2   ; DATA XREF: sub_1407BABC8+2E↓o
qword_14002DFB8 dq 5700040000006Dh, 60h ; DATA XREF: sub_1407C526C+1F↓o
qword_14002DFC8 dq 41C6013DA3BC1875h    ; DATA XREF: sub_14077DDF0+D1FEE↓o
                dq 96003DA3BC2875h      ; DATA XREF: sub_1408A4280+18↓o
                dq 96003DA3BC4035h      ; DATA XREF: sub_1408A430C+106↓o
                dq 41C60320A3BC1075h    ; DATA XREF: sub_1408C6570+49E↓o
                                        ; sub_1408C766C+28F↓o
                dq 0D941D2BA3BC0875h    ; DATA XREF: sub_14088E878+15B↓o
                dq 41940B3AA3BC0875h    ; DATA XREF: sub_140889000+38↓o
                                        ; sub_140889000+59↓o
                dq 41C6013DA3BD2075h    ; DATA XREF: sub_14067B764+195541↓o
                dq 41C6013DA3BC4875h    ; DATA XREF: sub_14038A04C+110919↓o
                dq 41C6013DA3BC6875h    ; DATA XREF: sub_1408E9604+53↓o
                dq 296003DA3BC1075h     ; DATA XREF: sub_1408A445C+13↓o
                                        ; sub_140A54218+2F775↓o
                dq 4C3C65B3BA57E015h, 0E399F692916574B2h
                                        ; DATA XREF: sub_140502618+85↓o
                                        ; sub_140502618+10E↓o ...
qword_14002E028 dq 41C6013DA3BD1075h    ; DATA XREF: sub_1408F6D80+13↓o
                dq 41C6013DA3BD5875h    ; DATA XREF: sub_140569FC4+24D↓o
                                        ; sub_1408E6EB0+DD↓o
                dq 96003DA3BC3875h      ; DATA XREF: sub_1408A430C+C4↓o
qword_14002E040 dq 100200h              ; DATA XREF: .rdata:off_140009620↑o
qword_14002E048 dq 41C6013DA3BC7835h    ; DATA XREF: sub_140900178+104↓o
                dq 41C6013DA3BC1075h    ; DATA XREF: sub_14077DDF0+D1CAD↓o
qword_14002E058 dq 418A073AA3BC88F5h    ; DATA XREF: sub_14038C388+5D↓r
qword_14002E060 dq 96003DA3BC2035h      ; DATA XREF: sub_140772A60+E33CB↓o
qword_14002E068 dq 3130200h             ; DATA XREF: .rdata:0000000140009630↑o
qword_14002E070 dq 41C6013DA3BCF875h    ; DATA XREF: sub_1408F3898+38↓o
qword_14002E078 dq 41C6013DA3BC4075h    ; DATA XREF: sub_1407CF340+94000↓o
                dq 1589012FA3BC0875h    ; DATA XREF: sub_14039B008+F525C↓o
                dq 41950C3EA3BC0875h    ; DATA XREF: sub_140A959A0+B5↓o
qword_14002E090 dq 41C6013DA3BCC075h    ; DATA XREF: sub_1408F07F8+62↓o
qword_14002E098 dq 41C6013DA3BCC875h    ; DATA XREF: sub_14056CB44+311↓o
qword_14002E0A0 dq 41C6013DA3BC9875h    ; DATA XREF: sub_14077E6B0+D23CC↓o
qword_14002E0A8 dq 41C6013DA3BC8075h    ; DATA XREF: sub_14077E1FC+D1E48↓o
qword_14002E0B0 dq 41C6013DA3BD6875h    ; DATA XREF: sub_1408EF4AC+13↓o
qword_14002E0B8 dq 418A1825A3BC0875h    ; DATA XREF: sub_1403CFF30+E6016↓o
qword_14002E0C0 dq 4192022BA3BC0875h    ; DATA XREF: FsRtlSendModernAppTermination:loc_1403C0746↓r
qword_14002E0C8 dq 41C6013DA3BC0875h    ; DATA XREF: sub_140773A78+D6CA3↓o
                                        ; sub_140773A78+D6E3C↓o ...
qword_14002E0D0 dq 418A073AA3BC8075h    ; DATA XREF: sub_14038C388+10EE3E↓r
qword_14002E0D8 dq 41C6013DA3BD0875h    ; DATA XREF: sub_14077E6B0+D215C↓o
                dq 0                    ; DATA XREF: sub_1404B5FE0+2B↓o
qword_14002E0E8 dq 41C6013DA3BC3875h    ; DATA XREF: sub_14056FB2C+32↓o
qword_14002E0F0 dq 110200h              ; DATA XREF: .rdata:0000000140009628↑o
qword_14002E0F8 dq 41C6013DA3BCB875h    ; DATA XREF: sub_14067A140+195F76↓o
qword_14002E100 dq 41960B29A3BC0C75h    ; DATA XREF: sub_1407A2CA4+B2A7F↓o
qword_14002E108 dq 418A073AA3BC90F5h    ; DATA XREF: sub_14038C388+10EE33↓r
; ---------------------------------------------------------------------------
; Exported entry 1530. NtBuildGUID

