HalPrivateDispatchTable dd 33h          ; DATA XREF: sub_1409D0AFC+1A↑r
                align 8
                dq offset PsGetHostSilo
                dq offset PsGetHostSilo
off_140C005A8   dq offset nullsub_12    ; DATA XREF: sub_1407769D4+2A9↑r
                                        ; sub_14099B000:loc_1409A7C8A↑r ...
                dq offset MmQueryMemoryRanges
                align 20h
off_140C005C0   dq offset MmMapUserAddressesToPage
                                        ; DATA XREF: sub_1407ADEE0+6D↑w
                                        ; sub_1409930F4+BB7↑r ...
off_140C005C8   dq offset sub_1404F1890 ; DATA XREF: HalTranslateBusAddress+23↑r
                                        ; sub_140A3B08C+7↑w
off_140C005D0   dq offset sub_1404F1890 ; DATA XREF: HalAssignSlotResources+21↑r
                                        ; sub_140A3B08C+15↑w
off_140C005D8   dq offset loc_1403656B0 ; DATA XREF: sub_140516C30:loc_140517A1E↑r
                                        ; sub_140517F80:loc_140518020↑r ...
qword_140C005E0 dq 0                    ; DATA XREF: sub_140A1EEE4+1861↑o
                                        ; sub_140A1EEE4+2957↑o ...
qword_140C005E8 dq 0                    ; DATA XREF: HalInitializeBios+1C2↑w
                                        ; HalInitializeBios+264↑w
off_140C005F0   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1409D0AFC+2E↑r
                                        ; sub_1409D0AFC+43↑w ...
off_140C005F8   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1403CF7D0+E64D7↑r
                                        ; sub_140A3AFD4+1C↑w ...
off_140C00600   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_140A3AFD4+77↑w
off_140C00608   dq offset PsGetHostSilo ; DATA XREF: sub_140A3AFD4+23↑w
off_140C00610   dq offset __misaligned_access
                                        ; DATA XREF: sub_140A3AFD4+7↑w
off_140C00618   dq offset sub_1403656D0 ; DATA XREF: sub_1403A730C+6↑r
off_140C00620   dq offset PsGetHostSilo ; DATA XREF: sub_140A3AFD4+31↑w
off_140C00628   dq offset __misaligned_access
                                        ; DATA XREF: sub_140A3AFD4+3F↑w
qword_140C00630 dq 0                    ; DATA XREF: sub_1403BA7DC+74↑r
                                        ; sub_1403BA7DC:loc_1403BA8CD↑r ...
qword_140C00638 dq 0                    ; DATA XREF: sub_1404BF5D0+9↑r
                                        ; sub_1404D76C8+59↑r ...
off_140C00640   dq offset PsGetHostSilo ; DATA XREF: HalGetInterruptVector+9↑r
off_140C00648   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: HalGetVectorInput+9↑r
off_140C00650   dq offset SeAdjustObjectSecurity
                                        ; DATA XREF: sub_140A46B20+D↑w
off_140C00658   dq offset SeAdjustObjectSecurity
                                        ; DATA XREF: sub_140A46B20+1B↑w
off_140C00660   dq offset SeAdjustObjectSecurity
                                        ; DATA XREF: sub_140A46B20+29↑w
                dq offset PoRegisterDeviceNotify
                dq offset __misaligned_access
off_140C00678   dq offset MmQueryMemoryRanges
                                        ; DATA XREF: sub_1408AFEBC:loc_1408AFF0B↑r
                                        ; sub_1409A2D40+29↑w
off_140C00680   dq offset nullsub_12    ; DATA XREF: sub_1409A2D40+37↑w
                                        ; sub_1409B0550+1DE↑r
off_140C00688   dq offset MmMapUserAddressesToPage
                                        ; DATA XREF: sub_1409A2D40+45↑w
                                        ; sub_1409AF8E0+43↑r ...
off_140C00690   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_1409A2D40+53↑w
                                        ; sub_1409AF9BC+382↑r
off_140C00698   dq offset __misaligned_access
                                        ; DATA XREF: sub_1404F604C+92↑r
                                        ; sub_1404F8ED0+19↑r ...
off_140C006A0   dq offset sub_14021B5A0 ; DATA XREF: sub_1403B0DA8+130↑w
                                        ; sub_140994A68+4D2↑r ...
off_140C006A8   dq offset __misaligned_access
                                        ; DATA XREF: sub_1403B0DA8+11B↑w
                                        ; sub_1403C4420+47F↑r ...
off_140C006B0   dq offset sub_1404F18C0 ; DATA XREF: sub_1403AFD20+17E↑w
                                        ; sub_1409B0FDC+4A↑r ...
off_140C006B8   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1404B9E88+128↑r
                                        ; sub_1404BA0FC+B8↑r ...
off_140C006C0   dq offset __misaligned_access
                                        ; DATA XREF: sub_14099A6B0+86↑r
                                        ; sub_14099733C:loc_1409A677D↑r ...
off_140C006C8   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409A19C0+2E↑w
off_140C006D0   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409A19C0+3C↑w
off_140C006D8   dq offset MmMapUserAddressesToPage
                                        ; DATA XREF: sub_1409A2D40+61↑w
                                        ; sub_1409B0934+1D4↑r
off_140C006E0   dq offset MmMapUserAddressesToPage
                                        ; DATA XREF: sub_1409A2D40+8B↑w
                                        ; sub_1409B0FDC+C3↑r
off_140C006E8   dq offset sub_1409ACF80 ; DATA XREF: sub_1409A2D40+6F↑w
                                        ; sub_1409B0550+1BC↑r
off_140C006F0   dq offset MmMapUserAddressesToPage
                                        ; DATA XREF: sub_1409A2D40+7D↑w
                                        ; sub_1409B0550:loc_1409B08D5↑r
                dq offset HalFlushCommonBuffer
off_140C00700   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1403CF7D0+E62F7↑r
                                        ; sub_140A3AFD4+A8↑w
off_140C00708   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_140A3AFD4+7E↑w
qword_140C00710 dq 0                    ; DATA XREF: sub_1404FA4B4+48C↑w
                                        ; sub_140A70F9C+23↑r
qword_140C00718 dq 0                    ; DATA XREF: sub_1403A9A40+E5EA2↑r
                                        ; sub_1404F31DC+44↑r ...
qword_140C00720 dq 0                    ; DATA XREF: sub_1403A9A40:loc_14048F957↑r
                                        ; sub_1403A7988:loc_1404A7C85↑r ...
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
                db    0
off_140C00738   dq offset __misaligned_access
                                        ; DATA XREF: sub_1403AFD20+28B↑w
                                        ; KdPowerTransitionEx+11F↑r ...
off_140C00740   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140254310:loc_140254B55↑r
                                        ; sub_140A46B20+3C↑w
                dq offset __misaligned_access
off_140C00750   dq offset __misaligned_access
                                        ; DATA XREF: sub_140254310+1756↑r
                                        ; sub_140A46B20+4A↑w
                align 20h
                dq offset sub_1402FC650
off_140C00768   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140377CF4:loc_140493D10↑r
                                        ; sub_140A74CB4+AE↑w
off_140C00770   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1403A730C:loc_1403A7352↑r
                                        ; sub_14050D1B4+22↑r ...
off_140C00778   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_14038C2D4+74↑r
                                        ; sub_14037789C:loc_140493A90↑r ...
off_140C00780   dq offset sub_14021B5A0 ; DATA XREF: sub_140377CF4+333↑r
                                        ; HalDisableInterrupt:loc_14049386E↑r ...
off_140C00788   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140A74CB4+CA↑w
off_140C00790   dq offset FsRtlSyncVolumes
                                        ; DATA XREF: sub_1409A0570+B2↑w
off_140C00798   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_1409A0570+C0↑w
off_140C007A0   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_1404F604C:loc_1404F60D2↑r
                                        ; sub_1404F90A0+19↑r ...
off_140C007A8   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_140516C30+D3B↑r
                                        ; sub_14099A6B0+D1C5↑r ...
                dq offset __misaligned_access
                dq offset __misaligned_access
off_140C007C0   dq offset sub_1409922D0 ; DATA XREF: sub_14099A6B0:loc_14099A75D↑r
                                        ; sub_14099733C:loc_1409A66C2↑r ...
off_140C007C8   dq offset MmQueryMemoryRanges
                                        ; DATA XREF: sub_1404BA340+2D↑r
                                        ; sub_1404BA810+7D↑r ...
off_140C007D0   dq offset MmQueryMemoryRanges
                                        ; DATA XREF: sub_14093C5CC+AD↑r
                                        ; sub_1409A0220+35↑w
off_140C007D8   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_1402509A0+18C↑r
                                        ; sub_1402534B0+5E↑r ...
off_140C007E0   dq offset FsRtlInitializeOplock
                                        ; DATA XREF: sub_1406DD1C8+2FA↑r
                                        ; sub_14093C5CC+F0↑r ...
                dq offset byte_1403656C0
off_140C007F0   dq offset FsRtlSyncVolumes
                                        ; DATA XREF: sub_140385DA0:loc_140385E49↑r
                                        ; sub_1403AFD20+1E3↑w ...
                align 20h
off_140C00800   dq offset nullsub_12    ; DATA XREF: sub_140998550+E88D↑r
off_140C00808   dq offset sub_1403653A0 ; DATA XREF: sub_1409A0570+DC↑w
off_140C00810   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1404D1394+8E↑r
                                        ; sub_140A74CB4+84↑w
off_140C00818   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140A74CB4+92↑w
                dq offset __misaligned_access
off_140C00828   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_140A3AFD4+69↑w
                dq offset __misaligned_access
off_140C00838   dq offset nullsub_12    ; DATA XREF: sub_14099A6B0+60↑r
                                        ; sub_14099A6B0+92↑r ...
off_140C00840   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140A70D40+13↑w
off_140C00848   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140505060+AE↑r
                                        ; sub_140A70D40+24↑w
off_140C00850   dq offset sub_140992330 ; DATA XREF: sub_1409957A0:loc_1409958C9↑r
off_140C00858   dq offset __misaligned_access
                                        ; DATA XREF: sub_1409954E8+10E↑r
                                        ; sub_1409954E8+FEA4↑r ...
off_140C00860   dq offset sub_14021B5A0 ; DATA XREF: sub_14079F7D4:loc_140854F34↑r
                                        ; sub_140A67378+58↑w ...
off_140C00868   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_140356CBC+57↑r
                                        ; sub_1409A0570+EA↑w
off_140C00870   dq offset __misaligned_access
                                        ; DATA XREF: sub_1403AFD20+1C7↑w
                                        ; sub_14093F028+26↑r ...
off_140C00878   dq offset __misaligned_access
                                        ; DATA XREF: sub_1403832E8+48↑r
                                        ; sub_1403AFD20+18F↑w ...
off_140C00880   dq offset __misaligned_access
                                        ; DATA XREF: sub_140256A10:loc_140256D6A↑r
                                        ; sub_1403832E8:loc_140383324↑r ...
off_140C00888   dq offset __misaligned_access
                                        ; DATA XREF: sub_140254310+9C3↑r
                                        ; sub_140256A10:loc_140256D7B↑r ...
off_140C00890   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1402148FC+22↑r
                                        ; sub_140214F44:loc_140214F66↑r ...
off_140C00898   dq offset sub_14021B5A0 ; DATA XREF: sub_140256A10:loc_140256BCB↑r
                                        ; sub_1403AFD20+1D5↑w ...
off_140C008A0   dq offset FsRtlSyncVolumes
                                        ; DATA XREF: sub_140A65D48+19↑w
off_140C008A8   dq offset FsRtlSyncVolumes
                                        ; DATA XREF: sub_140516C30+362↑r
                                        ; sub_140516C30+D8D↑r ...
off_140C008B0   dq offset nullsub_13    ; DATA XREF: sub_1409A06B0+1A3↑w
                                        ; sub_140A3C054+2E6↑r
off_140C008B8   dq offset __misaligned_access
                                        ; DATA XREF: sub_1404C2700+F5↑w
                                        ; sub_140516C30:loc_14051798D↑r ...
off_140C008C0   dq offset __misaligned_access
                                        ; DATA XREF: sub_1402509A0+1DA↑r
                                        ; sub_1402534B0+A7↑r ...
off_140C008C8   dq offset __misaligned_access
                                        ; DATA XREF: sub_1404C2700+E7↑w
                                        ; sub_140516C30:loc_1405173A3↑r ...
off_140C008D0   dq offset sub_140725240 ; DATA XREF: sub_1404C2700+103↑w
                                        ; sub_14060DA00+1DBB↑r ...
off_140C008D8   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1404C2700+111↑w
                                        ; sub_140502DE0+6EC↑r ...
off_140C008E0   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_14037789C:loc_140493A61↑r
                                        ; sub_140A74CB4+D8↑w
off_140C008E8   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_14051480C+3C↑r
                                        ; sub_140A74CB4+E6↑w
                dq offset PoRegisterDeviceNotify
                dq offset PoRegisterDeviceNotify
                dq offset PoRegisterDeviceNotify
off_140C00908   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: IoGetDmaAdapter+7E↑r
                                        ; IoGetDmaAdapter+B9↑r ...
off_140C00910   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409CDE70+9C↑r
                                        ; sub_140A65CA0+2B↑w
                align 20h
off_140C00920   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1403AFD20+20D↑w
                                        ; KeConvertPerformanceCounterToAuxiliaryCounter+4↑r ...
off_140C00928   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1403AFD20+1FF↑w
                                        ; KeConvertAuxiliaryCounterToPerformanceCounter+4↑r ...
off_140C00930   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1403AFD20+21B↑w
                                        ; KeQueryAuxiliaryCounterFrequency+4↑r ...
off_140C00938   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409A0570+F8↑w
off_140C00940   dq offset sub_14021B5A0 ; DATA XREF: sub_140502618+45↑r
                                        ; sub_140995484:loc_1409A5327↑r ...
off_140C00948   dq offset sub_14021B5A0 ; DATA XREF: sub_1403A6EE0:loc_1403A6F3B↑r
                                        ; sub_1403AFD20+7F↑w ...
off_140C00950   dq offset __misaligned_access
                                        ; DATA XREF: HalReturnToFirmware+4A↑r
off_140C00958   dq offset ?ClfsMgmtNullAdvanceTailNotification@@YAJPEAU_FILE_OBJECT@@PEAT_CLS_LSN@@PEAX@Z
                                        ; DATA XREF: sub_140A3AFD4+8C↑w
                                        ; ClfsMgmtNullAdvanceTailNotification(_FILE_OBJECT *,_CLS_LSN *,void *)
                dq offset PoRegisterDeviceNotify
off_140C00968   dq offset PsGetHostSilo ; DATA XREF: sub_1402573D0:loc_140257602↑r
                                        ; sub_1404C2700+11F↑w
                dq offset PoRegisterDeviceNotify
off_140C00978   dq offset __misaligned_access
                                        ; DATA XREF: sub_140512BD0+1C↑r
                                        ; sub_140512BD0+BD↑r ...
off_140C00980   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_14089B860+4↑r
                                        ; sub_140A70D40+40↑w
off_140C00988   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1405B0584:loc_1405B06A6↑r
                                        ; sub_1409A03E4+109↑w
off_140C00990   dq offset sub_14021B5A0 ; DATA XREF: sub_140512860+4↑r
                                        ; sub_1409A03E4+117↑w
off_140C00998   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409A03E4+125↑w
off_140C009A0   dq offset sub_14021B5A0 ; DATA XREF: sub_1407D2F2C+1D↑r
                                        ; sub_1409A03E4+133↑w
off_140C009A8   dq offset __misaligned_access
                                        ; DATA XREF: sub_140254310:loc_140255AAD↑r
                                        ; sub_140385CB8+37↑r ...
off_140C009B0   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1409497F0:loc_14094986A↑r
                                        ; sub_1409A03E4+14F↑w
off_140C009B8   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1406DD1C8+35A↑r
                                        ; sub_1409A03E4+15D↑w
off_140C009C0   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1408B5BC0+13↑r
                                        ; sub_1408B5BC0+3B↑r ...
off_140C009C8   dq offset SkIsSecureKernel
                                        ; DATA XREF: sub_1408B5C5C:loc_1408B5C81↑r
                                        ; sub_1408B5C5C+53↑r ...
off_140C009D0   dq offset SkIsSecureKernel
                                        ; DATA XREF: IoGetIommuInterface+10↑r
                                        ; sub_1409A06B0+E1↑w
off_140C009D8   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1403C5A8C+8D↑w
                                        ; sub_1405BD2B0+4↑r
off_140C009E0   dq offset PoRegisterDeviceNotify
                                        ; DATA XREF: sub_1403AFD20+BF↑w
                                        ; sub_140214CB8+210C91↑r ...
                dq offset PoRegisterDeviceNotify
qword_140C009F0 dq 0                    ; DATA XREF: sub_1407ADEE0+85↑w
qword_140C009F8 dq 0                    ; DATA XREF: sub_140578B10+1C0↑r
                                        ; sub_1407ADEE0+9D↑w
off_140C00A00   dq offset PsGetHostSilo ; DATA XREF: sub_140311E30+10↑r
                                        ; sub_1403AFD20+1F1↑w
qword_140C00A08 dq 0                    ; DATA XREF: sub_140A46B8C+2A↑w
qword_140C00A10 dq 0                    ; DATA XREF: sub_140A46B8C+38↑w
qword_140C00A18 dq 0                    ; DATA XREF: sub_140A46B8C+46↑w
qword_140C00A20 dq 0                    ; DATA XREF: sub_140A46B8C+54↑w
qword_140C00A28 dq 0                    ; DATA XREF: sub_140A46B8C+62↑w
qword_140C00A30 dq 0                    ; DATA XREF: sub_1404F96E4+74↑r
                                        ; sub_1409A06B0+1C2↑w
off_140C00A38   dq offset sub_14021B5A0 ; DATA XREF: sub_14076B824+A6↑r
                                        ; sub_1407C2F88+47B↑r ...
off_140C00A40   dq offset off_140005530 ; DATA XREF: .rdata:00000001400067E8↑o
                                        ; sub_14036CABC+4↑r ...
off_140C00A48   dq offset sub_1404BDF00 ; DATA XREF: .rdata:off_1400067D8↑o
                                        ; HalPerformEndOfInterrupt:loc_1403251EE↑r ...
off_140C00A50   dq offset sub_140365140 ; DATA XREF: sub_1404C8414+261↑r
                                        ; sub_1404C878C+189↑r ...
                align 20h
; Exported entry 607. HalDispatchTable
