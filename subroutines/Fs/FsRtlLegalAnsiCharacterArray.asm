FsRtlLegalAnsiCharacterArray dq offset qword_140010FB0
qword_140009648 dq 60004h               ; DATA XREF: sub_14091544C+B7↓o
                dq offset aIu_0         ; "IU"
a68:                                    ; DATA XREF: sub_140915B34+76↓o
                text "UTF-16LE", '68',0
                align 20h
                dq offset aSecuritySystem ; "Security-System-Capability-"
qword_140009668 dq 60004h               ; DATA XREF: sub_14091544C+69↓o
                dq offset aDo           ; "DO"
asc_140009678:                          ; DATA XREF: sub_140916FA8:loc_14091701D↓o
                text "UTF-16LE", ' "',0
                align 20h
                dq offset aSharedvmobject ; "\\SharedVmObjects"
off_140009688   dq offset qword_1400354F0
                                        ; DATA XREF: RtlCrc32+7↓o
                dq offset qword_1400356F0
                dq offset qword_140035EF0
                dq 82F63B78h, 0FFFFFFFFh
                dq offset aCrc32Castagnol ; "Crc32 Castagnoli"
qword_1400096B8 dq 30h, 0               ; DATA XREF: RtlQueryValidationRunlevel+52↓o
                dq offset unk_140C0EF00
                dq 240h, 2 dup(0)
off_1400096E8   dq offset qword_140039F50
                                        ; DATA XREF: sub_140590ECC+34↓o
                dq offset qword_140039FD0
                dq offset qword_14003A050
                dq offset qword_14003A0D0
                dq offset qword_14003A150
asc_140009710:                          ; DATA XREF: sub_1405ECF24+208508↓o
                text "UTF-16LE", '*,',0
                align 8
                dq offset aSystemrootSysw ; "\\SystemRoot\\SysWOW64\\"
off_140009720   dq offset qword_140D2E6D8
                                        ; DATA XREF: sub_140596F6C+14↓o
                dq offset qword_140D2E880
                dq offset qword_140D2E7C8
                dq offset qword_140D2E698
                dq offset qword_140D2E970
                dq offset qword_140D2E738
                dq offset qword_140D2E968
                dq offset qword_140D2E728
                dq offset qword_140D2EA20
                dq offset qword_140D2E6E8
                dq offset qword_140D2E708
                dq offset qword_140D2E740
                dq offset qword_140D2E690
                dq offset qword_140D2E958
qword_140009790 dq 20001Eh              ; DATA XREF: sub_140A72B08+19B60↓o
                dq offset aPolicypublishe ; "PolicyPublisher"
qword_1400097A0 dq 1C001Ah              ; DATA XREF: sub_140A72B08+19BA3↓o
                dq offset aPolicyversion ; "PolicyVersion"
asc_1400097B0:                          ; DATA XREF: sub_140A959A0+8E↓o
                text "UTF-16LE", ' "',0
                align 8
                dq offset aAvailableupdat ; "AvailableUpdates"
aZ:                                     ; DATA XREF: sub_140A72B08+19A3A↓o
                                        ; sub_140A959A0+4B↓o
                text "UTF-16LE", 'z|',0
                align 8
                dq offset aRegistryMachin_200 ; "\\REGISTRY\\MACHINE\\SYSTEM\\CurrentCon"...
qword_1400097D0 dq 0C000Ah              ; DATA XREF: sub_140A72B08+19AA0↓o
                dq offset aState        ; "State"
asc_1400097E0:                          ; DATA XREF: sub_140A72B08+19AF1↓o
                text "UTF-16LE", '*,',0
                align 8
                dq offset aUefisecureboot ; "UEFISecureBootEnabled"
off_1400097F0   dq offset unk_140C544B0 ; DATA XREF: sub_140A1EEE4+1189F↓r
asc_1400097F8:                          ; DATA XREF: sub_1409218D0+AA↓o
                                        ; sub_140922050+BC↓o
                text "UTF-16LE", 8,0Ah,0
                align 20h
                dq offset aFile_1       ; "File"
qword_140009808 dq 80006h               ; DATA XREF: sub_140922050+D9↓o
                dq offset aKey_0        ; "Key"
                align 20h
off_140009820   dq offset qword_14002EA18
                                        ; DATA XREF: sub_14059DB90+30↓o
                                        ; sub_14059DD94+21↓o
                dq offset qword_14002F608
                dq offset qword_14002FF10
                dq offset qword_14002F1E8
                dq offset qword_14002EE98
                dq offset qword_14002E338
                dq offset qword_14002E6F8
                dq offset qword_14002F9E8
off_140009860   dq offset qword_14002EF50
                                        ; DATA XREF: sub_14059DC5C+2E↓r
off_140009868   dq offset qword_14002FD90
                                        ; DATA XREF: sub_14059DE60+1E↓r
                dq offset qword_14002ECD8
qword_140009878 dq 10000Eh              ; DATA XREF: KitLogFeatureUsage:loc_1405B9999↓r
                dq offset aMissing      ; "Missing"
qword_140009888 dq 1A0018h              ; DATA XREF: sub_1409680B8+249↓o
                dq offset aDatabasetype ; "DatabaseType"
a0_0:                                   ; DATA XREF: sub_1409680B8+29A↓o
                text "UTF-16LE", '.0',0
                align 20h
                dq offset aDatabaseruntim ; "DatabaseRuntimePlatform"
qword_1400098A8 dq 1E001Ch              ; DATA XREF: .data:0000000140C0F0C0↓o
                dq offset aIntegritylevel ; "IntegrityLevel"
qword_1400098B8 dq 160014h              ; DATA XREF: .data:off_140C0F0B0↓o
                dq offset aPrivileges   ; "Privileges"
asc_1400098C8:                          ; DATA XREF: .data:0000000140C0F0E0↓o
                text "UTF-16LE", '(*',0
                align 10h
                dq offset aTrustprotectio ; "TrustProtectionLevel"
asc_1400098D8:                          ; DATA XREF: .data:0000000140C0F0D0↓o
                text "UTF-16LE", '&(',0
                align 20h
                dq offset aTrustprotectio_0 ; "TrustProtectionType"
off_1400098E8   dq offset asc_14003FE54 ; DATA XREF: sub_14096FEE0+149↓o
                                        ; "\t"
                dq offset asc_14003FEF4 ; "\t\t"
                dq offset asc_14003FF00 ; "\t\t\t"
                dq offset asc_14003FF08 ; "\t\t\t\t"
qword_140009908 dq 60004h               ; DATA XREF: sub_1405C5B64+121↓o
                dq offset asc_1400402E0 ; "  "
asc_140009918:                          ; DATA XREF: sub_1405E05AC+20C3E9↓o
                                        ; sub_1406CCEB4+150E14↓o ...
                text "UTF-16LE", '$&',0
                align 20h
                dq offset aHardwareProfil_1 ; "Hardware Profiles\\"
asc_140009928:                          ; DATA XREF: sub_1409765C0+183↓o
                text "UTF-16LE", ',.',0
                align 10h
                dq offset aControlDevicec_1 ; "Control\\DeviceClasses\\"
qword_140009938 dq 1E001Ch              ; DATA XREF: sub_1409765C0+160↓o
                dq offset aControlClass_0 ; "Control\\Class\\"
a24_6:                                  ; DATA XREF: sub_1409765C0+12D↓o
                                        ; sub_14097962C+119↓o ...
                text "UTF-16LE", '24',0
                align 10h
                dq offset aSystemCurrentc_13 ; "System\\CurrentControlSet\\"
off_140009958   dq offset off_140C0F0F0 ; DATA XREF: sub_140978DF4+4E↓r
                dq 1
off_140009968   dq offset qword_14000A550
                                        ; DATA XREF: sub_140978DF4:loc_140978E71↓r
asc_140009970:                          ; DATA XREF: sub_14097962C+14C↓o
                                        ; sub_140979F7C+141↓o
                text "UTF-16LE", '*,',0
                align 8
                dq offset aControlDevicep_0 ; "Control\\DevicePanels\\"
off_140009980   dq offset qword_14002EBE0
                                        ; DATA XREF: sub_140979C2C+A↓o
                                        ; sub_140979CC0+14↓o ...
                dq 0Dh
                dq offset qword_14002E200
                dq 7
                dq offset qword_14002FA48
                dq 7
qword_1400099B0 dq 20001Eh              ; DATA XREF: sub_14072CAC8:loc_140831C07↓o
                dq offset aRegistryUser_4 ; "\\REGISTRY\\USER\\"
                dq 8A0088h
off_1400099C8   dq offset aRegistryMachin_187
                                        ; DATA XREF: sub_1407CC394+94FA6↓r
                                        ; "\\REGISTRY\\MACHINE\\SYSTEM\\CURRENTCON"...
aDf_3:
                text "UTF-16LE", 'DF',0
                align 8
off_1400099D8   dq offset aRegistryMachin_188
                                        ; DATA XREF: sub_1407CC394:loc_1407CC410↓r
                                        ; "\\REGISTRY\\MACHINE\\SOFTWARE\\CLASSES"
off_1400099E0   dq offset qword_14002EB18
                                        ; DATA XREF: sub_14097EDF4:loc_14097EEA9↓o
                                        ; sub_14097EF88+AF↓o ...
                dq 12h
                dq offset qword_14001B100
                dq 1, 0
                dq offset qword_14002FF20
                dq 12h
                dq offset aSubdir       ; "SubDir"
                dq 1, 0
off_140009A30   dq offset qword_14002F6D0
                                        ; DATA XREF: sub_14072D468:loc_140832215↓o
                                        ; sub_14073F788:loc_14083267D↓o ...
                dq 12h
                dq offset aSystempath   ; "SystemPath"
                dq 1, 0
                dq offset qword_14002ED18
                dq 12h
                dq offset aFilepath     ; "FilePath"
                dq 1, 0
                dq offset qword_14002FFE8
                dq 12h
                dq offset aKeypath_0    ; "KeyPath"
                dq 1, 0
                dq offset qword_14002EE30
                dq 12h
                dq offset aSoftwarekeypat ; "SoftwareKeyPath"
                dq 1, 0
off_140009AD0   dq offset qword_14002FD28
                                        ; DATA XREF: sub_14097F2A0+B5↓o
                dq offset qword_14002FDA0
off_140009AE0   dq offset off_140C05400 ; DATA XREF: sub_1405CA198+AA↓r
                dq offset off_140C05428
                dq offset off_140C05478
                dq 8 dup(0)
                dq offset off_140C054A0
                dq 6 dup(0)
                dq offset off_140C05450
__guard_longjmp_table dd rva loc_140397280
                                        ; DATA XREF: .rdata:0000000140005BE0↑o
                db 0
                align 100h
xmmword_140009C00 xmmword 2277E5BFAA6D89B64AC0CFBB85B8669Ah
                                        ; DATA XREF: sub_1405D2860+2F↓r
                                        ; sub_1405D3280+134↓r ...
qword_140009C10 dq 10D000000020000h, 11F000000100000h
                                        ; DATA XREF: sub_14024A710+101↓o
qword_140009C20 dq 11010410020013h, 8000000000001000h
                                        ; DATA XREF: sub_1405D5E00+1B7↓o
qword_140009C30 dq 4020410010004h, 8000000000000020h
                                        ; DATA XREF: sub_1406C89B0:loc_1406C8C4A↓o
qword_140009C40 dq 2020410020002h, 8000000000000010h
                                        ; DATA XREF: sub_1405E7C2C+5D9↓o
qword_140009C50 dq 0A00041000000Dh, 8000000000000020h
                                        ; DATA XREF: sub_1406962F0+1DA↓o
                                        ; sub_1406962F0+17F9C0↓o
qword_140009C60 dq 0A02041000000Ch, 8000000000000020h
                                        ; DATA XREF: sub_1406962F0:loc_14069654F↓o
qword_140009C70 dq 0A01041000000Bh, 8000000000000020h
                                        ; DATA XREF: sub_1406962F0+75↓o
                                        ; sub_1406965D4+17F72D↓o
qword_140009C80 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C10↑o
                                        ; sub_1405DF3FC+9E0↓r ...
qword_140009C88 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+9ED↓r
                dq 8
qword_140009C98 dq 4EFDDF1CA45C254Eh    ; DATA XREF: .rdata:off_140007B10↑o
                                        ; sub_1405DF3FC+8B2↓o ...
qword_140009CA0 dq 0E050A846D1672080h   ; DATA XREF: sub_1407684B8+DDCF6↓r
                dq 26h
qword_140009CB0 dq 408897A683DA6326h    ; DATA XREF: .rdata:0000000140001358↑o
                                        ; .rdata:off_1400020F8↑o ...
qword_140009CB8 dq 293B573F92A15394h    ; DATA XREF: sub_1405DF3FC+B7B↓r
                dq 0Fh
qword_140009CC8 dq 408897A683DA6326h    ; DATA XREF: sub_140737044+31A↓r
                                        ; sub_140737044+351↓r ...
qword_140009CD0 dq 293B573F92A15394h    ; DATA XREF: sub_140737044+327↓r
                                        ; sub_140737044+35E↓r
                align 20h
qword_140009CE0 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140007C50↑o
                                        ; sub_1405DF3FC+A00↓r ...
qword_140009CE8 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+A0D↓r
                dq 8
qword_140009CF8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 11h
                                        ; DATA XREF: .rdata:0000000140007B30↑o
                                        ; sub_1405DF3FC+4C3↓o ...
qword_140009D10 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 2
                                        ; DATA XREF: sub_1405DF3FC+795↓o
                                        ; sub_1407346D8+77C↓o ...
qword_140009D28 dq 11D0F88397F76EF0h    ; DATA XREF: sub_14069F1E0+1FB↓r
qword_140009D30 dq 5C8400F800001FAFh    ; DATA XREF: sub_14069F1E0+20B↓r
qword_140009D38 dq 11D0808986E0D1E0h    ; DATA XREF: sub_14069F1E0+21F↓r
qword_140009D40 dq 731F303E0008E49Ch    ; DATA XREF: sub_14069F1E0+22F↓r
qword_140009D48 dq 40942E3DA8B865DDh    ; DATA XREF: .rdata:00000001400013B8↑o
                                        ; sub_1405DF3FC+CD4↓r ...
qword_140009D50 dq 0D6750CA793E597ADh   ; DATA XREF: sub_1405DF3FC+CE1↓r
                dq 1Ah
qword_140009D60 dq 4EFDDF1CA45C254Eh    ; DATA XREF: sub_140737044+38A↓r
                                        ; sub_1408B6EE8+1F1↓o ...
qword_140009D68 dq 0E050A846D1672080h   ; DATA XREF: sub_140737044+397↓r
                dq 4
qword_140009D78 dq 4B0C747380D81EA6h, 8B4C2C1AC1EF1682h, 5
                                        ; DATA XREF: sub_1405DF3FC+C3E↓o
                                        ; .data:0000000140C04878↓o
qword_140009D90 dq 48B98C7380497100h, 6EC5197E38CED9AAh, 6
                                        ; DATA XREF: sub_140735D48+432↓o
                                        ; sub_14073C170+33D↓o
qword_140009DA8 dq 408897A683DA6326h, 293B573F92A15394h, 66h
                                        ; DATA XREF: .rdata:0000000140007B50↑o
                                        ; sub_140735D48+3AB↓o
qword_140009DC0 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 4
                                        ; DATA XREF: .rdata:0000000140007B18↑o
                                        ; sub_140735D48+8D2↓o ...
qword_140009DD8 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 0Bh
                                        ; DATA XREF: sub_14073A2B4+9E↓o
                                        ; sub_14073D9C8+B4917↓o
asc_140009DF0:                          ; DATA XREF: sub_1406C9C28+6B↓o
                text "UTF-16LE", '\\?\',0
                align 20h
qword_140009E00 dq 396003DA3BC0875h     ; DATA XREF: sub_14069F59C+29E↓o
                                        ; sub_14069FFC8+243↓o
                dq 60000410010063h, 4000000000000404h
                                        ; DATA XREF: sub_1406758D8+309↓o
                                        ; sub_1406758D8:loc_140675CFA↓o
qword_140009E18 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 1Ch
                                        ; DATA XREF: sub_1405DF3FC+D49↓o
                                        ; .data:off_140C04820↓o
qword_140009E30 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 1Bh
                                        ; DATA XREF: sub_1405DF3FC+DB4↓o
                                        ; sub_1407346D8+B9C56↓o ...
qword_140009E48 dq 4E600779654B4EBAh, 9DA94964F878D490h
                                        ; DATA XREF: sub_1405D7874+B9↓o
qword_140009E58 dq 73000410000196h, 4000000000000404h
                                        ; DATA XREF: sub_1405D7874+1E↓o
qword_140009E68 dq 74000410000197h, 4000000000000404h
                                        ; DATA XREF: sub_1405D7874+31↓o
qword_140009E78 dq 0D40204140000D5h, 400000000002020h
                                        ; DATA XREF: sub_14073A7F0+5E4↓o
qword_140009E88 dq 0D40104140000D4h, 400000000002020h
                                        ; DATA XREF: sub_14073A7F0+18A↓o
qword_140009E98 dq 0E20204140000E3h, 400000000020020h
                                        ; DATA XREF: sub_14073A7F0+504↓o
qword_140009EA8 dq 0E20104140000E2h, 400000000020020h
                                        ; DATA XREF: sub_14073A7F0+4C6↓o
qword_140009EB8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 25h
                                        ; DATA XREF: .rdata:0000000140007B20↑o
                                        ; sub_140735D48+BF0↓o ...
qword_140009ED0 dq 4010410010004h, 8000000000000080h
                                        ; DATA XREF: sub_1406A9AA8+B4↓o
qword_140009EE0 dq 5010410010006h, 8000000000000080h
                                        ; DATA XREF: sub_1406A9AA8+BB↓o
qword_140009EF0 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 8
                                        ; DATA XREF: sub_1407346D8+BDE↓o
                                        ; sub_1407346D8+B9970↓o ...
qword_140009F08 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 0Dh
                                        ; DATA XREF: sub_1407346D8+874↓o
                                        ; sub_1407346D8+B9522↓o ...
qword_140009F20 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 3
                                        ; DATA XREF: sub_1407346D8+9D6↓o
                                        ; sub_1407346D8+B9613↓o ...
qword_140009F38 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 0Eh
                                        ; DATA XREF: sub_1407346D8+C1A↓o
                                        ; sub_1407346D8+B99A8↓o
qword_140009F50 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 9
                                        ; DATA XREF: sub_1407346D8+8D7↓o
                                        ; sub_1407346D8+B956B↓o ...
qword_140009F68 dq 408897A683DA6326h, 293B573F92A15394h, 3
                                        ; DATA XREF: sub_1407346D8+AFB↓o
                                        ; sub_1407346D8+B8EB2↓o ...
qword_140009F80 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 6
                                        ; DATA XREF: sub_1407346D8+A7E↓o
                                        ; sub_1407346D8+B9683↓o ...
qword_140009F98 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 4
                                        ; DATA XREF: sub_1407346D8+7D6↓o
                                        ; sub_1407346D8+B93C3↓o ...
qword_140009FB0 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 7
                                        ; DATA XREF: sub_1407346D8+DC0↓o
qword_140009FC8 dq 40E856266A3433F4h, 4B88D2ECD9DBB9A9h, 7
                                        ; DATA XREF: sub_1407346D8+39A↓o
qword_140009FE0 dq 47CE50A7259ABFFCh, 6633D7A7C96808AFh, 0Bh
                                        ; DATA XREF: sub_1407346D8+3CA↓o
                                        ; PAGE:0000000140986F30↓o
qword_140009FF8 dq 40E856266A3433F4h, 4B88D2ECD9DBB9A9h, 0Bh
                                        ; DATA XREF: sub_1407346D8+3ED↓o
qword_14000A010 dq 0D80804120000D9h, 1000000000008020h
                                        ; DATA XREF: sub_14073D9C8+127↓o
qword_14000A020 dq 4020410010005h, 8000000000000080h
                                        ; DATA XREF: sub_1406A9AA8+F7↓o
qword_14000A030 dq 5020410000007h, 8000000000000080h
                                        ; DATA XREF: sub_1406A9AA8:loc_1406A9BDD↓o
qword_14000A040 dq 8B000400000133h, 100h
                                        ; DATA XREF: sub_1402BD600:loc_1402BD68C↓o
qword_14000A050 dq 0FFFFFFFFFFFE7960h   ; DATA XREF: sub_140607344:loc_14060735B↓o
qword_14000A058 dq 2Eh                  ; DATA XREF: sub_140757110+162↓o
xmmword_14000A060 xmmword 3F05139760008FB011D046F0CB3A4010h
                                        ; DATA XREF: sub_1405CE464+2D↓r
                                        ; sub_14073C720+101↓o
qword_14000A070 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140007C58↑o
                                        ; sub_1405DF3FC+E0B↓r ...
qword_14000A078 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+E18↓r
                dq 0Eh
qword_14000A088 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C08↑o
                                        ; sub_1405DF3FC+E87↓r ...
qword_14000A090 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+E94↓r
                                        ; sub_1405DF3FC+EB9↓r
                dq 0Ch
qword_14000A0A0 dq 990004100001F9h, 4000000000000004h
                                        ; DATA XREF: sub_1402B4424:loc_1402B4489↓o
                                        ; sub_1402B4424+19B0A6↓o
qword_14000A0B0 dq 11D280DDCE5AF000h, 4B6B69C9A0008DA8h
                                        ; DATA XREF: sub_140745F30+316↓o
qword_14000A0C0 dq 4A1EC3B2B09B86ACh, 37B7F81221B31586h
                                        ; DATA XREF: PoRegisterPowerSettingCallback+2A2↓o
qword_14000A0D0 dq 4F7A142C8163EB01h    ; DATA XREF: sub_1405E6DB8+4F4↓r
                                        ; sub_14072D614+10523F↓r ...
qword_14000A0D8 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1405E6DB8+501↓r
                                        ; sub_14072D614+10524C↓r
                dq 28h
qword_14000A0E8 dq 4F7A142C8163EB01h    ; DATA XREF: sub_1405E6DB8+3BF↓r
                                        ; sub_14072D614+1051B7↓r ...
qword_14000A0F0 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1405E6DB8+3CC↓r
                                        ; sub_14072D614+1051C4↓r
                dq 12h
qword_14000A100 dq 470693FA4340A6C5h, 0A7A50880647B2C97h, 0Dh
                                        ; DATA XREF: sub_1405DF3FC+F05↓o
qword_14000A118 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 2
                                        ; DATA XREF: .rdata:off_140005070↑o
                                        ; sub_1405E6618+1B0↓o ...
qword_14000A130 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 11h
                                        ; DATA XREF: .rdata:0000000140005188↑o
                                        ; sub_1405E6618+21F↓o ...
qword_14000A148 dq 4853AF3CE585291Fh, 41C7685A245272AFh, 2
                                        ; DATA XREF: sub_14073C900+684↓o
qword_14000A160 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 5
                                        ; DATA XREF: sub_14073C900+493↓o
                                        ; sub_14073C900+B4360↓o ...
qword_14000A178 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 10h
                                        ; DATA XREF: sub_14073C900+A10↓o
                                        ; sub_14073C900+B495C↓o
qword_14000A190 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 4
                                        ; DATA XREF: sub_14073C900+418↓o
                                        ; sub_14073C900+B4315↓o ...
qword_14000A1A8 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Fh
                                        ; DATA XREF: sub_14073C900+99B↓o
                                        ; sub_14073C900+B491F↓o
qword_14000A1C0 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Dh
                                        ; DATA XREF: sub_14073C900+808↓o
                                        ; sub_14073C900+B4822↓o ...
qword_14000A1D8 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Ch
                                        ; DATA XREF: sub_14073C900+87D↓o
                                        ; sub_14073C900+B47A9↓o ...
qword_14000A1F0 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Bh
                                        ; DATA XREF: sub_14073C900+84D↓o
                                        ; sub_14073C900+B472A↓o ...
qword_14000A208 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Ah
                                        ; DATA XREF: sub_14073C900+76B↓o
                                        ; sub_14073C900+B45F0↓o ...
qword_14000A220 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 9
                                        ; DATA XREF: sub_14073C900+735↓o
                                        ; sub_14073C900+B458F↓o ...
qword_14000A238 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 8
                                        ; DATA XREF: sub_14073C900+701↓o
                                        ; sub_14073C900+B453A↓o ...
qword_14000A250 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 7
                                        ; DATA XREF: sub_14073C900+52B↓o
                                        ; sub_14073C900+B4416↓o ...
qword_14000A268 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 6
                                        ; DATA XREF: sub_14073C900+4F1↓o
                                        ; sub_14073C900+B43C1↓o ...
qword_14000A280 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 3
                                        ; DATA XREF: sub_14073C900+3CC↓o
                                        ; sub_14073C900+B42DA↓o ...
qword_14000A298 dq 4BFF97A98DBC9C86h, 0AD6D3E5DE9BFC69Bh, 0Eh
                                        ; DATA XREF: sub_14073C900+916↓o
                                        ; sub_14073C900+B48E2↓o
qword_14000A2B0 dq 4100001A4h, 4000000000000000h
                                        ; DATA XREF: sub_1406CA460+6B1↓o
qword_14000A2C0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 27h
                                        ; DATA XREF: .rdata:0000000140001940↑o
                                        ; sub_1405E6DB8+552↓o
qword_14000A2D8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 13h
                                        ; DATA XREF: .rdata:0000000140001710↑o
                                        ; sub_1405E6DB8+413↓o
qword_14000A2F0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 11h
                                        ; DATA XREF: .rdata:00000001400016E8↑o
                                        ; sub_1405E6DB8+466↓o ...
qword_14000A308 dq 47CE50A7259ABFFCh, 6633D7A7C96808AFh, 0Eh
                                        ; DATA XREF: sub_1406CA460+6FC↓o
                                        ; PAGE:0000000140986FB0↓o
qword_14000A320 dq 0C80204110000C9h, 2000000000000020h
                                        ; DATA XREF: sub_140A5FD74+61E↓o
qword_14000A330 dq 0C80104110000C8h, 2000000000000020h
                                        ; DATA XREF: sub_140A5FD74+48↓o
xmmword_14000A340 xmmword 0             ; DATA XREF: sub_14024F4C0:loc_14025008A↓r
                                        ; sub_1402F26A0+2F↓r ...
qword_14000A350 dq 0FFFFFFFFh           ; DATA XREF: sub_140755998+B1↓o
                                        ; sub_140771620+D7AF7↓o
qword_14000A358 dq 1020410010002h, 8000000000000020h
                                        ; DATA XREF: sub_1405DAE4C+253↓o
                                        ; sub_1405DAE4C+210535↓o
qword_14000A368 dq 1010410010001h, 8000000000000020h
                                        ; DATA XREF: sub_1405DAE4C+9A↓o
                                        ; sub_1405DAE4C+210475↓o
qword_14000A378 dq 902041001000Ah, 8000000000000020h
                                        ; DATA XREF: sub_1405DB1E8+3B↓o
                                        ; sub_1405DB1E8+2102A1↓o
qword_14000A388 dq 9010410010009h, 8000000000000020h
                                        ; DATA XREF: sub_1405DB260+3E↓o
                                        ; sub_1405DB260+2102A1↓o
qword_14000A398 dq 5010410000005h, 8000000000000020h
                                        ; DATA XREF: sub_1405DDD58+3D↓o
qword_14000A3A8 dq 5020410000006h, 8000000000000020h
                                        ; DATA XREF: sub_1405DDD58+34↓o
qword_14000A3B8 dq 3010410010003h, 8000000000000020h
                                        ; DATA XREF: sub_1405DDDEC+41↓o
                                        ; sub_1406C89B0+5B↓o ...
qword_14000A3C8 dq 3020410010004h, 8000000000000020h
                                        ; DATA XREF: sub_1405DDDEC+37↓o
qword_14000A3D8 dq 11D0B6BF53F5630Dh    ; DATA XREF: sub_1405DBB4C+17D↓o
                                        ; sub_14069F1E0+1D7↓r
qword_14000A3E0 dq 8BFB1EC9A000F294h    ; DATA XREF: sub_14069F1E0+1E7↓r
qword_14000A3E8 dq 408897A683DA6326h    ; DATA XREF: .rdata:00000001400013A0↑o
                                        ; .rdata:0000000140007950↑o ...
qword_14000A3F0 dq 293B573F92A15394h    ; DATA XREF: sub_1405DF3FC+1BA↓r
                dq 17h
qword_14000A400 dq 408897A683DA6326h    ; DATA XREF: .rdata:0000000140001388↑o
                                        ; .rdata:0000000140007980↑o ...
qword_14000A408 dq 293B573F92A15394h    ; DATA XREF: sub_1405DF3FC+238↓r
                                        ; sub_140734540+15F↓r ...
                dq 16h
qword_14000A418 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 14h
                                        ; DATA XREF: sub_140734540:loc_140734577↓o
                                        ; sub_1407496E4+DE↓o ...
qword_14000A430 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 13h
                                        ; DATA XREF: sub_140734540:loc_1407346A6↓o
                                        ; sub_1407496E4+F2↓o ...
qword_14000A448 dq 414BB814026E516Eh    ; DATA XREF: .rdata:0000000140001118↑o
                                        ; .rdata:0000000140007310↑o ...
qword_14000A450 dq 2248EF6F6D85CD83h    ; DATA XREF: sub_1405E0BDC+8E↓r
                                        ; sub_140767214+DE39C↓r ...
                dq 4
qword_14000A460 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:00000001400012F8↑o
                                        ; .rdata:0000000140002218↑o ...
qword_14000A468 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+259↓r
                                        ; sub_1405DF3FC+2B7↓r ...
                dq 2
qword_14000A478 dq 44B70B3F14C83A99h    ; DATA XREF: sub_1405DE8EC+16A↓o
                                        ; sub_1405E13B8+AA↓r ...
qword_14000A480 dq 640599D378A14CBEh    ; DATA XREF: sub_1405E13B8+B7↓r
                                        ; sub_14097B0A0+93↓r ...
                dq 2
qword_14000A490 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:00000001400012E0↑o
                                        ; .rdata:0000000140002230↑o ...
qword_14000A498 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+9C1↓r
                                        ; sub_1405DF3FC+A8B↓r ...
                dq 3
qword_14000A4A8 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:00000001400012C8↑o
                                        ; .rdata:0000000140002130↑o ...
qword_14000A4B0 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+3ED↓r
                dq 6
qword_14000A4C0 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C38↑o
                                        ; sub_1405DF3FC+3C0↓r ...
qword_14000A4C8 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+3CD↓r
                dq 6
qword_14000A4D8 dq 414BB814026E516Eh    ; DATA XREF: .rdata:off_140007CA0↑o
                                        ; sub_1405DE560+21D↓r ...
qword_14000A4E0 dq 2248EF6F6D85CD83h    ; DATA XREF: sub_1405DE560+22A↓r
                                        ; sub_14073430C+21A↓r ...
                dq 3
qword_14000A4F0 dq 421086A3AFD97640h    ; DATA XREF: .rdata:0000000140001328↑o
                                        ; sub_1405DF3FC+50B↓r ...
qword_14000A4F8 dq 55BEAA419C287CB6h    ; DATA XREF: sub_1405DF3FC+518↓r
                dq 2
qword_14000A508 dq 48273F8A8C7ED206h    ; DATA XREF: .rdata:0000000140001138↑o
                                        ; .rdata:0000000140001158↑o ...
qword_14000A510 dq 6CFCAE1F9EAEABB3h    ; DATA XREF: sub_1405DF3FC+538↓r
                                        ; sub_1405E0BDC+F4↓r ...
                dq 2
qword_14000A520 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140007BA8↑o
                                        ; sub_1405DF3FC+63B↓r ...
qword_14000A528 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+648↓r
                db 5, 4 dup(0)
                align 8
qword_14000A538 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C30↑o
                                        ; sub_1405DF3FC+61B↓r ...
qword_14000A540 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+628↓r
                align 10h
qword_14000A550 dq 101A47EFB725F130h    ; DATA XREF: .rdata:0000000140001218↑o
                                        ; .rdata:00000001400012B0↑o ...
qword_14000A558 dq 0ACEB9E8C6002F1A5h   ; DATA XREF: sub_1405DF3FC+6EB↓r
                                        ; sub_1405E0BDC+1F5↓r ...
                dq 0Ah
qword_14000A568 dq 48273F8A8C7ED206h    ; DATA XREF: sub_1405DF3FC+7EE↓r
                                        ; sub_1408B74F4+47↓o ...
qword_14000A570 dq 6CFCAE1F9EAEABB3h    ; DATA XREF: sub_1405DF3FC+7FB↓r
                dq 4
qword_14000A580 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C28↑o
                                        ; sub_1405DF3FC+7CE↓r ...
qword_14000A588 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+7DB↓r
                dq 4
qword_14000A598 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140001370↑o
                                        ; .rdata:0000000140002168↑o ...
qword_14000A5A0 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+914↓r
                dq 10h
qword_14000A5B0 dq 2 dup(0)             ; DATA XREF: sub_140737A68+2C4↓o
qword_14000A5C0 dq 408897A683DA6326h, 293B573F92A15394h, 13h
                                        ; DATA XREF: sub_140738BF8+14B↓o
                                        ; sub_140738BF8+B66D4↓o
qword_14000A5D8 dq 0DC0204120000DEh, 1000000000010020h
                                        ; DATA XREF: sub_14036D5D0+5C↓o
                                        ; sub_14073A5E8+B5BB7↓o ...
qword_14000A5E8 dq 0DC0104120000DCh, 1000000000010020h
                                        ; DATA XREF: sub_14073A5E8+89↓o
                                        ; sub_14073A5E8+B5BEB↓o
qword_14000A5F8 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 1
                                        ; DATA XREF: sub_140738BF8+517↓o
qword_14000A610 dq 11D046F0CB3A400Ah    ; DATA XREF: sub_140735D48+A7E↓o
                                        ; sub_14073C170+3F3↓o ...
qword_14000A618 dq 3F05139760008FB0h    ; DATA XREF: sub_14073C5E8+86↓r
                                        ; sub_14073C5E8+CA↓r
xmmword_14000A620 xmmword 3F05139760008FB011D046F0CB3A400Eh
                                        ; DATA XREF: sub_14073C720+45↓r
                                        ; sub_1407488F0+D1↓r ...
xmmword_14000A630 xmmword 3F05139760008FB011D046F0CB3A4009h
                                        ; DATA XREF: sub_14036DDAC+4E↓r
                                        ; sub_14069F1E0+FC↓r ...
xmmword_14000A640 xmmword 3F05139760008FB011D046F0CB3A400Fh
                                        ; DATA XREF: sub_14073C720+61↓r
                                        ; sub_140746708+1F↓r ...
qword_14000A650 dq 4BFF97A98DBC9C86h    ; DATA XREF: .rdata:0000000140001178↑o
                                        ; .rdata:0000000140002200↑o ...
qword_14000A658 dq 0AD6D3E5DE9BFC69Bh   ; DATA XREF: sub_140737044+295↓r
                dq 2
qword_14000A668 dq 45BC8B40540B947Eh    ; DATA XREF: sub_140737044+1D5↓r
                                        ; sub_14073C900+EF↓o ...
qword_14000A670 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_140737044+1E2↓r
                dq 9
qword_14000A680 dq 0D80104120000D8h, 1000000000008020h
                                        ; DATA XREF: sub_14073D9C8+AE↓o
                                        ; sub_14073D9C8+B48A0↓o
qword_14000A690 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 0Ah
                                        ; DATA XREF: .rdata:0000000140007B08↑o
                                        ; sub_14036E0E8+2D↓o ...
qword_14000A6A8 dq 4F7A142C8163EB02h, 0BADB47CC74A2E194h, 3
                                        ; DATA XREF: .rdata:0000000140001418↑o
                                        ; sub_14073F1D0+54↓o
qword_14000A6C0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 22h
                                        ; DATA XREF: .rdata:00000001400018A0↑o
                                        ; sub_14073E818+2AE↓o
qword_14000A6D8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 14h
                                        ; DATA XREF: .rdata:0000000140001738↑o
                                        ; sub_14073E818+2A3↓o ...
qword_14000A6F0 dq 4F7A142C8163EB01h    ; DATA XREF: .rdata:0000000140001580↑o
                                        ; sub_14072D614+327↓r ...
qword_14000A6F8 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14072D614+334↓r
                dq 8
qword_14000A708 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 0Fh
                                        ; DATA XREF: .rdata:0000000140001698↑o
                                        ; sub_14073E818+256↓o ...
qword_14000A720 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 0Eh
                                        ; DATA XREF: .rdata:0000000140001670↑o
                                        ; sub_14073E818+23A↓o ...
qword_14000A738 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 18h
                                        ; DATA XREF: .rdata:00000001400017D8↑o
                                        ; sub_14073E818+115↓o
qword_14000A750 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 29h
                                        ; DATA XREF: .rdata:0000000140001968↑o
                                        ; sub_14073E818+F0↓o
qword_14000A768 dq 4F7A142C8163EB04h    ; DATA XREF: sub_1405E4840+1A2↓r
                                        ; sub_14072583C+CD8E7↓r ...
qword_14000A770 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1405E4840+1AF↓r
                                        ; sub_14072583C+CD8F4↓r
                db 2, 3 dup(0)
dword_14000A77C dd 0                    ; DATA XREF: sub_140206DC8+10↓o
                                        ; sub_1403F26A0+6F↓o ...
                dq 0
qword_14000A788 dq 4F7A142C8163EB04h    ; DATA XREF: .rdata:off_1400013C0↑o
                                        ; sub_1405E4840+66↓r ...
qword_14000A790 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1405E4840+6D↓r
                                        ; sub_14072583C+D4↓r
                dq 3
qword_14000A7A0 dq 498DAD270D6C5BD7h    ; DATA XREF: sub_1405E4840+182↓r
                                        ; sub_1405E4BA8+12F↓r ...
qword_14000A7A8 dq 0AFF7382B37DAFF89h   ; DATA XREF: sub_1405E4840+18F↓r
                                        ; sub_1405E4BA8+13C↓r ...
                dq 2
qword_14000A7B8 dq 31A051100001Dh, 4000000000000A20h
                                        ; DATA XREF: sub_140609120+2B8↓o
                                        ; sub_140609120+1F2875↓o
qword_14000A7C8 dq 3100511000008h, 4000000000000220h
                                        ; DATA XREF: sub_14060BF10+28F↓o
                                        ; sub_140761630+177↓o ...
xmmword_14000A7D8 xmmword 0DC328033B3EBAA54994547854849625h
                                        ; DATA XREF: sub_14060BF10+33↓r
                                        ; sub_140761630+52↓r ...
xmmword_14000A7E8 xmmword 21EFF00021E90000200620002000Dh
                                        ; DATA XREF: sub_140609060+67↓o
                                        ; sub_14060BF10+E2↓o ...
qword_14000A7F8 dq 2000100020001h, 1F000100020000h
                                        ; DATA XREF: RtlIsSandboxedToken+82↓o
                                        ; sub_1406483B0+19E↓o
qword_14000A808 dq 400000006h, 0        ; DATA XREF: sub_14062778C+310↓o
qword_14000A818 dq 0                    ; DATA XREF: sub_14022ACA0+B9↓o
                                        ; sub_14022ACA0+305↓o ...
qword_14000A820 dq 100000001h           ; DATA XREF: sub_14022ACA0+27↓o
                                        ; sub_14022ACA0+321↓o ...
qword_14000A828 dq 12000410000015h, 8000000000002000h
                                        ; DATA XREF: sub_140233220+1D3↓o
                                        ; sub_140233220+1F9308↓o ...
qword_14000A838 dq 5900040002006Fh, 80h ; DATA XREF: sub_140252760+1D3↓o
                                        ; sub_140252B20+279↓o ...
qword_14000A848 dq 6000400000006h, 1    ; DATA XREF: sub_14025A520:loc_14025A5D9↓o
                                        ; sub_14025A520:loc_140438699↓o ...
qword_14000A858 dq 8000400000008h, 1    ; DATA XREF: sub_14025A520+A1↓o
                                        ; sub_14025A520+1DE0F8↓o ...
qword_14000A868 dq 2000400000002h, 1    ; DATA XREF: sub_14025A520+79↓o
                                        ; sub_14025A520+1DE031↓o ...
qword_14000A878 dq 0                    ; DATA XREF: sub_1402A8A8C+DB↓o
                                        ; sub_1403A9C20:loc_1403A9E12↓o ...
aVolume:                                ; DATA XREF: IoVolumeDeviceNameToGuidPath+247↓o
                text "UTF-16LE", '\??\Volume',0
                align 8
asc_14000A898   db '\',0                ; DATA XREF: sub_1406758D8+68↓o
                                        ; sub_1406758D8+3AA↓o
                dw 1001h, 4, 59h
                dq 4000000000000404h
qword_14000A8A8 dq 2000000020001h, 1F000100020000h
                                        ; DATA XREF: sub_14059746C+3D↓o
                                        ; sub_140676014+6D↓o
qword_14000A8B8 dq 5A00041001005Dh, 4000000000000404h
                                        ; DATA XREF: sub_1402B2A54+40↓o
                                        ; sub_1402B2A54+63↓o
qword_14000A8C8 dq 5B00041000005Eh, 4000000000000404h
                                        ; DATA XREF: sub_140676114+29↓o
                                        ; sub_140676114+4B↓o
qword_14000A8D8 dq 47A0704A6FE69556h    ; DATA XREF: PoRegisterPowerSettingCallback+8B↓r
                                        ; sub_140780274+38↓o ...
qword_14000A8E0 dq 47DA6F938DC2248Fh    ; DATA XREF: PoRegisterPowerSettingCallback+97↓r
                                        ; sub_140780800+12↓r ...
qword_14000A8E8 dq 163DF734515C31D8h    ; DATA XREF: sub_1402B3030+548↓o
                                        ; sub_1402B3030+562↓o ...
qword_14000A8F0 dq 0F1E8918CA011FDA0h   ; DATA XREF: PoRegisterPowerSettingCallback+13C↓r
qword_14000A8F8 dq 48D82A54CF23F240h    ; DATA XREF: sub_1402B3030+5B7↓o
                                        ; sub_1402B3030+5DA↓o ...
qword_14000A900 dq 2E05FF1815DE14B1h    ; DATA XREF: PoRegisterPowerSettingCallback+15C↓r
qword_14000A908 dq 0B1020410000093h, 4000000000000004h
                                        ; DATA XREF: sub_140676910+F2↓o
                                        ; sub_140676910+19842B↓o
qword_14000A918 dq 0B1010410000092h, 4000000000000004h
                                        ; DATA XREF: sub_140676910+99↓o
                                        ; sub_140676910+1983DB↓o
qword_14000A928 dq 482482BE54533251h    ; DATA XREF: sub_140677900+61↓r
qword_14000A930 dq 0D740BB647C196h      ; DATA XREF: sub_140677900+75↓r
qword_14000A938 dq 497E7EE49D7815A6h    ; DATA XREF: sub_140570818+396↓o
                                        ; sub_140678104:loc_140678145↓r ...
qword_14000A940 dq 6423F0055A518888h    ; DATA XREF: sub_140678104+4D↓r
                                        ; sub_14079BC20+FB↓r
qword_14000A948 dq 48C586DA29F6C1DBh    ; DATA XREF: sub_140570818+327↓o
                                        ; sub_140678104:loc_140678129↓r ...
qword_14000A950 dq 0DA441F7BB6F2DB9Fh   ; DATA XREF: sub_140678104+31↓r
                                        ; sub_14079BC20+D7↓r
qword_14000A958 dq 4A42E8A56738E2C4h    ; DATA XREF: sub_140678104↓r
                                        ; sub_14079BAA0+D↓r ...
qword_14000A960 dq 6E7569E740E06AB1h    ; DATA XREF: sub_140678104+15↓r
                                        ; sub_14079BAA0+22↓r
qword_14000A968 dq 0D80004100000B6h, 4000000000000004h
                                        ; DATA XREF: sub_1402B3EA4+28↓o
                                        ; sub_1402B3EA4+19B3EB↓o
qword_14000A978 dq 0D70004100000B5h, 4000000000000004h
                                        ; DATA XREF: sub_1402B3F00+28↓o
                                        ; sub_1402B3F00+19B3DF↓o
qword_14000A988 dq 4869272E4569E601h    ; DATA XREF: sub_140677250+71↓r
                                        ; sub_1407C51C4+E↓r ...
qword_14000A990 dq 6F96D7036C1CABBCh    ; DATA XREF: sub_140677250+7E↓r
                                        ; sub_1407C51C4+1E↓r ...
qword_14000A998 dq 0B010500000064h, 2   ; DATA XREF: sub_1402B4030+60↓o
                                        ; sub_1402B4030+19B315↓o
qword_14000A9A8 dq 0B020500000010h, 2   ; DATA XREF: sub_1402B4170+74↓o
                                        ; sub_1402B4170+19B25E↓o
qword_14000A9B8 dq 980004100001F8h, 4000000000000004h
                                        ; DATA XREF: sub_1402B4424+30↓o
                                        ; sub_1402B4424+19B0CA↓o
qword_14000A9C8 dq 0B220500000047h, 2   ; DATA XREF: sub_1402B4508+29↓o
                                        ; sub_1402B4508+19B011↓o
qword_14000A9D8 dq 0C90004100100A6h, 4000000000000404h
                                        ; DATA XREF: sub_1406783FC+49↓o
                                        ; sub_1406783FC+66↓o
qword_14000A9E8 dq 461CB89DE0574D1Dh, 0C2707C8B99A0C5A5h
                                        ; DATA XREF: sub_1406786D4+8E↓o
                dq 46000410000048h, 4000000000000010h
                                        ; DATA XREF: sub_1402B487C+41↓o
                                        ; sub_1402B487C+19ADA0↓o
qword_14000AA08 dq 0F0000000000h        ; DATA XREF: RtlCheckTokenMembershipEx+131↓o
                                        ; RtlDeriveCapabilitySidsFromName+FB↓o ...
qword_14000AA10 dq 2000000020001h, 1F000100020000h
                                        ; DATA XREF: RtlCheckTokenMembershipEx+1B9↓o
qword_14000AA20 dq 0D201040000014Ah, 100h
                                        ; DATA XREF: sub_1402BB4B0+9E↓o
                                        ; sub_1402BB4B0+1969F7↓o
qword_14000AA30 dq 0D400010000014Dh, 100h
                                        ; DATA XREF: sub_1402BB8E8+9E↓o
                                        ; sub_1402BB8E8+196869↓o ...
qword_14000AA40 dq 0D300010000014Ch, 100h
                                        ; DATA XREF: sub_1402BB8E8+87↓o
                                        ; sub_1402BB8E8+196811↓o ...
qword_14000AA50 dq 0D202040000014Bh, 100h
                                        ; DATA XREF: sub_1402BB8E8+70↓o
                                        ; sub_1402BB8E8+19677C↓o ...
qword_14000AA60 dq 8D000400000135h, 100h
                                        ; DATA XREF: sub_1402BD064+38↓o
                                        ; sub_1402BD064+1958D5↓o
qword_14000AA70 dq 9500040000013Dh, 100h
                                        ; DATA XREF: sub_1402BD600+32↓o
qword_14000AA80 dq 90000400000138h, 100h
                                        ; DATA XREF: sub_1402BDA74+3F↓o
                                        ; sub_1402BDA74+19582C↓o
qword_14000AA90 dq 0FFFFFFFFFFFE7960h   ; DATA XREF: sub_1402D52E4+91↓o
                                        ; sub_1403F329C+251↓o ...
qword_14000AA98 dq 800041000000Bh, 8000000000000200h
                                        ; DATA XREF: sub_1402E730C+350↓o
                                        ; sub_1402E730C+178B15↓o
qword_14000AAA8 dq 8000410010008h, 8000000000000020h
                                        ; DATA XREF: sub_140697314+43↓o
                                        ; sub_140697314+156↓o
qword_14000AAB8 dq 7000410000007h, 8000000000000020h
                                        ; DATA XREF: sub_140699908+6D↓o
                                        ; sub_140699908+17CBD4↓o
qword_14000AAC8 dq 0A00041001001Fh, 8000000080000000h
                                        ; DATA XREF: sub_14069B7AC+3E↓o
qword_14000AAD8 dq 0A000410010020h, 8000000080000000h
                                        ; DATA XREF: sub_14069B7AC+34↓o
aTargetntpath:                          ; DATA XREF: sub_14069C718+3C↓o
                                        ; sub_14069C718+8E↓o
                text "UTF-16LE", 'TargetNtPath',0
                align 8
xmmword_14000AB08 xmmword 28AD4C5950803AAD47B1A82FFCF528F6h
                                        ; DATA XREF: sub_14036ECD0:loc_14048ECBB↓r
                                        ; sub_14069EE80+50↓r ...
qword_14000AB18 dq 11D24C062DE97F83h    ; DATA XREF: sub_14069F1E0+B9↓r
qword_14000AB20 dq 5A051397600032A5h    ; DATA XREF: sub_14069F1E0+C7↓r
qword_14000AB28 dq 408897A683DA6326h    ; DATA XREF: .rdata:off_1400021A0↑o
                                        ; sub_14069F1E0+17F↓o ...
qword_14000AB30 dq 293B573F92A15394h    ; DATA XREF: sub_140737A68+398↓r
                dq 6
qword_14000AB40 dq 11D046F0CB3A4006h    ; DATA XREF: IoReportTargetDeviceChangeAsynchronous+62↓o
                                        ; sub_14069FFC8+35↓r ...
qword_14000AB48 dq 3F05139760008FB0h    ; DATA XREF: sub_14069FFC8+42↓r
                                        ; sub_1406A0250+11↓r ...
qword_14000AB50 dq 11D3070314689B54h    ; DATA XREF: sub_1406A0250+21↓r
qword_14000AB58 dq 2E5240C9A000D297h    ; DATA XREF: sub_1406A0250+2E↓r
qword_14000AB60 dq 11D046F0CB3A400Dh    ; DATA XREF: sub_14069F1E0+26E↓r
                                        ; sub_14069FFC8+6F↓r ...
qword_14000AB68 dq 3F05139760008FB0h    ; DATA XREF: sub_14069F1E0+27B↓r
                                        ; sub_14069FFC8+7C↓r
xmmword_14000AB70 xmmword 3F05139760008FB011D046F0CB3A4007h
                                        ; DATA XREF: IoReportTargetDeviceChangeAsynchronous+92↓o
                                        ; sub_14069FDE0+7B↓o ...
xmmword_14000AB80 xmmword 3F05139760008FB011D046F0CB3A4008h
                                        ; DATA XREF: IoReportTargetDeviceChangeAsynchronous+B6↓o
                                        ; sub_14069F1E0+28F↓r ...
xmmword_14000AB90 xmmword 0D07175F800007DAC11D18D23ACA73F8Eh
                                        ; DATA XREF: sub_14069ED34+A4↓r
                                        ; sub_14069FFC8+A9↓r ...
qword_14000ABA0 dq 700041000000Ah, 8000000000000200h
                                        ; DATA XREF: sub_1403014F4+120↓o
                                        ; sub_1403014F4+1675FD↓o
qword_14000ABB0 dq 700041001000Eh, 8000000000080000h
                                        ; DATA XREF: sub_1406AB2DC+7E↓o
qword_14000ABC0 dq 700041001000Ch, 8000000000040000h
                                        ; DATA XREF: sub_1406AB2DC+19C↓o
qword_14000ABD0 dq 4000410010018h, 8000000000002000h
                                        ; DATA XREF: sub_1403073CC+A0↓o
qword_14000ABE0 dq 4000410010004h, 8000000000001000h
                                        ; DATA XREF: sub_1403073CC+96↓o
qword_14000ABF0 dq 0FFFFFFFFFFFB6C20h   ; DATA XREF: sub_140309A70+A6↓o
                                        ; sub_140382518:loc_1403825B4↓o ...
qword_14000ABF8 dq 0                    ; DATA XREF: sub_14030902C+33↓o
qword_14000AC00 dq 5000410000009h, 8000000000000080h
                                        ; DATA XREF: sub_1406ABE68+61↓o
aHashdigestleng:                        ; DATA XREF: sub_1406ACC18+75↓o
                text "UTF-16LE", 'HashDigestLength',0
                align 8
qword_14000AC38 dq 313051100000Fh, 4000000000000420h
                                        ; DATA XREF: sub_1406AFFC8+5F3↓o
qword_14000AC48 dq 312051101000Eh, 4000000000000420h
                                        ; DATA XREF: sub_1406AFFC8+5FA↓o
qword_14000AC58 dq 4719A4EB910C653Dh    ; DATA XREF: sub_1406AFFC8+67D↓r
qword_14000AC60 dq 91ECBAE3884509B9h    ; DATA XREF: sub_1406AFFC8+68A↓r
xmmword_14000AC68 xmmword 0B1B1FE9B052D42B94C8E042A3595AB5Ch
                                        ; DATA XREF: sub_1406AF8C4+108↓r
                                        ; sub_1406AFFC8+183↓o ...
qword_14000AC78 dq 422034803B9C9951h    ; DATA XREF: sub_1406B0A10+93↓r
qword_14000AC80 dq 0CDF584518E9C7793h   ; DATA XREF: sub_1406B0A10+9F↓r
qword_14000AC88 dq 4FA775A3E02A841Ch    ; DATA XREF: sub_14078DC04+3EE↓r
qword_14000AC90 dq 237F9BCF09AEC8AFh    ; DATA XREF: sub_14078DC04+3FB↓r
qword_14000AC98 dq 5668BB5DF4E1897Ch    ; DATA XREF: sub_1406B0DD8+3A↓r
                                        ; sub_14078DC04+40B↓r
qword_14000ACA0 dq 44D38D4D0F04D8F1h    ; DATA XREF: sub_1406B0DD8+47↓r
                                        ; sub_14078DC04+418↓r
qword_14000ACA8 dq 50000000000h         ; DATA XREF: RtlDeriveCapabilitySidsFromName+90↓o
qword_14000ACB0 dq 20E051102000Bh, 4000000000000010h
                                        ; DATA XREF: sub_1406B3BFC+156↓o
                                        ; sub_1406DA480+481↓o ...
xmmword_14000ACC0 xmmword 102906C9A0004ABF11D1AADBC7BF35D3h
                                        ; DATA XREF: sub_1406C24F8+99↓r
                                        ; sub_1407680F0+B0↓r ...
xmmword_14000ACD0 xmmword 102906C9A0004ABF11D1AADBC7BF35D2h
                                        ; DATA XREF: sub_1406C24F8+78↓r
                                        ; sub_1407680F0+8D↓r ...
qword_14000ACE0 dq 43CD9CF78C439FF0h    ; DATA XREF: .rdata:00000001400021B8↑o
                                        ; sub_14069F8DC+76↓o ...
qword_14000ACE8 dq 57C1C6A499921E96h    ; DATA XREF: sub_140737A68+42B↓r
                dq 64h
qword_14000ACF8 dq 4ACA104A78C34FC8h    ; DATA XREF: .rdata:00000001400010F8↑o
                                        ; .rdata:off_140002290↑o ...
qword_14000AD00 dq 576E99524D52A49Eh    ; DATA XREF: sub_1405DE560+135↓r
                                        ; sub_1405DF3FC+342↓r ...
                dq 100h
xmmword_14000AD10 xmmword 0E050A846D16720804EFDDF1CA45C254Eh
                                        ; DATA XREF: .rdata:0000000140001198↑o
                                        ; .rdata:00000001400021D0↑o ...
dword_14000AD20 dd 0Ah                  ; DATA XREF: sub_1405C93D0+1B↓r
                align 8
aTp3            db 'TP 3',7,0           ; DATA XREF: sub_1406D247C+19A↓o
                                        ; sub_1406D2A38+14A↓o ...
                align 10h
                dq 3 dup(0)
qword_14000AD48 dq 11D232049E814AADh    ; DATA XREF: sub_1406B0A10:loc_1406B0AF3↓r
                                        ; sub_1406D3D18+30↓r ...
qword_14000AD50 dq 3969A8086000829Ah    ; DATA XREF: sub_1406B0A10+EF↓r
                                        ; sub_1406D3D18+3D↓r ...
aLsLsLs:                                ; DATA XREF: sub_1406D5038+1F9↓o
                text "UTF-16LE", '(%ls %ls %ls)',0
a0x:                                    ; DATA XREF: sub_1406D57D4+4FF↓o
                                        ; sub_140970184+BB↓o ...
                text "UTF-16LE", '0x',0
                align 20h
aWsWcWs:                                ; DATA XREF: sub_1406D479C+26D↓o
                                        ; sub_1406D479C+14AA91↓o ...
                text "UTF-16LE", '%ws%wc%ws',0
aD_3:                                   ; DATA XREF: sub_1406D479C+24E↓o
                                        ; .data:0000000140C01EE8↓o
                text "UTF-16LE", 'D',0
aRo:                                    ; DATA XREF: sub_1406D62D4+170↓o
                text "UTF-16LE", 'RO',0
                align 20h
aSa:                                    ; DATA XREF: sub_1406D62D4+156↓o
                                        ; sub_1406D57D4+14A662↓o ...
                text "UTF-16LE", 'SA',0
                align 8
aEa:                                    ; DATA XREF: sub_1406D62D4+13C↓o
                text "UTF-16LE", 'EA',0
                align 10h
aDeviceNamedpip:                        ; DATA XREF: sub_1406D74D8+F7↓o
                text "UTF-16LE", '\Device\NamedPipe',0
                align 8
qword_14000ADD8 dq 42A4ED1F54DEA73Ah    ; DATA XREF: sub_1406D96E0+2B4↓r
                                        ; sub_1406D96E0+993↓r
qword_14000ADE0 dq 74F156D0633E71AFh    ; DATA XREF: sub_1406D96E0+2C0↓r
                                        ; sub_1406D96E0+9A0↓r
qword_14000ADE8 dq 4B886180222962ABh    ; DATA XREF: sub_1406D96E0+3EE↓r
                                        ; sub_140792228:loc_14079237E↓r ...
qword_14000ADF0 dq 4AA2F2756B3425A8h    ; DATA XREF: sub_1406D96E0+3FB↓r
                                        ; sub_140792228+16D↓r
qword_14000ADF8 dq 0BA6AB8020E66E20Bh   ; DATA XREF: sub_1406D96E0+2F2↓r
                                        ; sub_1406D96E0+147949↓r
qword_14000AE00 dq 95D20E9D19317292h    ; DATA XREF: sub_1406D96E0+2FE↓r
                                        ; sub_1406D96E0+147955↓r
qword_14000AE08 dq 20C051101000Ah, 4000000000000010h
                                        ; DATA XREF: sub_1406D96E0+7F0↓o
                                        ; sub_1406D96E0+147C49↓o ...
qword_14000AE18 dq 4CFFCC593AC66736h    ; DATA XREF: sub_1406D96E0+419↓o
                                        ; sub_140792228+182↓r ...
qword_14000AE20 dq 6B81390EF58D1581h    ; DATA XREF: sub_140792228+18E↓r
qword_14000AE28 dq 0C00050002000Ch, 2   ; DATA XREF: sub_140318760+13F↓o
qword_14000AE38 dq 26000500010035h, 2   ; DATA XREF: sub_140318A10+ED↓o
                                        ; sub_140318A10+157A18↓o
qword_14000AE48 dq 10010410000011h, 8000000000001000h
                                        ; DATA XREF: sub_1406DEA1C+11F↓o
qword_14000AE58 dq 10020410000012h, 8000000000001000h
                                        ; DATA XREF: sub_1406DEA1C+126↓o
qword_14000AE68 dq 4500040000005Ah, 20h ; DATA XREF: sub_14031DB70+284↓o
qword_14000AE78 dq 4C000400000061h, 100h, 0
                                        ; DATA XREF: sub_140321E90+1BD↓o
                                        ; sub_140321E90+15056A↓o
aRegistryMachin_2:                      ; DATA XREF: sub_1403A83F0+D↓o
                                        ; sub_14078FCD4+9F↓o
                text "UTF-16LE", '\Registry\Machine\OSDATA\System\CurrentControlSet\C'
                text "UTF-16LE", 'ontrol\MUI\UILanguages',0
                align 8
qword_14000AF28 dq 4D4DAC6BF315B732h, 0A3E1906412B30CBEh
                                        ; DATA XREF: sub_1406FB51C+9D↓o
                dq 10300041000022Dh, 4000000000000004h
                                        ; DATA XREF: sub_14034E1AC+2B↓o
qword_14000AF48 dq 2000100020001h, 1F000100020000h
                                        ; DATA XREF: sub_14034F684+85↓o
                                        ; sub_1407050C8+5C↓o
qword_14000AF58 dq 2014200020001h, 0F01FF00020024h
                                        ; DATA XREF: sub_1407090BC+20↓o
qword_14000AF68 dq 2000000020000h, 0F000000020000h
                                        ; DATA XREF: sub_1406C8510+C3↓o
qword_14000AF78 dq 408000010h, 8000000000000000h
                                        ; DATA XREF: sub_1403B3ED8+27↓o
                                        ; sub_1403B3ED8+44↓o ...
qword_14000AF88 dq 400000003h, 0        ; DATA XREF: sub_14070C2E0+1FB↓o
qword_14000AF98 dq 4ACA104A78C34FC8h    ; DATA XREF: .rdata:off_1400078F0↑o
                                        ; sub_14070DD8C+56↓r ...
qword_14000AFA0 dq 576E99524D52A49Eh    ; DATA XREF: sub_14070DD8C+63↓r
                dq 46h
qword_14000AFB0 dq 4ACA104A78C34FC8h    ; DATA XREF: .rdata:00000001400010A0↑o
                                        ; .rdata:0000000140001280↑o ...
qword_14000AFB8 dq 576E99524D52A49Eh    ; DATA XREF: sub_14070DD8C+BA↓r
                dq 6Ch
qword_14000AFC8 dq 63000410000068h, 4000000000000404h
                                        ; DATA XREF: sub_14070E2A0+19C↓o
qword_14000AFD8 dq 0FD000410000227h, 4000000000000004h
                                        ; DATA XREF: sub_14070E2A0+2C5↓o
                                        ; sub_14070E2A0+11C679↓o
qword_14000AFE8 dq 0E200041000020Fh, 4000000000000004h
                                        ; DATA XREF: sub_14070E2A0+289↓o
                                        ; sub_14070E2A0+11C613↓o
qword_14000AFF8 dq 0CE0004100000B0h, 4000000000000004h
                                        ; DATA XREF: sub_14070E2A0+24A↓o
                                        ; sub_14070E2A0+11C5A8↓o
qword_14000B008 dq 0CD0004100000AFh, 4000000000000004h
                                        ; DATA XREF: sub_14070E2A0+223↓o
                                        ; sub_14070E2A0+11C551↓o
qword_14000B018 dq 6500041000006Ah, 4000000000000404h
                                        ; DATA XREF: sub_14070E2A0+B1↓o
qword_14000B028 dq 0D90004100000B7h, 4000000000000004h
                                        ; DATA XREF: sub_140355D08+3E↓o
                                        ; sub_140355D08+1302EF↓o
qword_14000B038 dq 0A00004100001FDh, 4000000000000404h
                                        ; DATA XREF: sub_14070E5C0+25↓o
                                        ; sub_14070E5C0+42↓o
                dq 0C100041100009Dh, 2000000000000020h
                                        ; DATA XREF: sub_14070E654+76↓o
qword_14000B058 dq 0BC000411000098h, 2000000000000020h
                                        ; DATA XREF: sub_14070E654+55↓o
qword_14000B068 dq 96000410000084h, 4000000000000404h
                                        ; DATA XREF: sub_14070E70C+25↓o
                                        ; sub_14070E70C+49↓o
qword_14000B078 dq 0AA000400030140h, 200h
                                        ; DATA XREF: sub_14070E79C+4A↓o
                                        ; sub_14070E79C+1A4↓o
qword_14000B088 dq 88000400010130h, 100h
                                        ; DATA XREF: sub_14070E9DC+2D↓o
qword_14000B098 dq 8700040001012Fh, 100h
                                        ; DATA XREF: sub_14070E9DC+90↓o
qword_14000B0A8 dq 0B0000411020091h, 2000000000000020h
                                        ; DATA XREF: sub_140355F10+B3↓o
                                        ; sub_140355F10+1302BF↓o
qword_14000B0B8 dq 6900041001006Fh, 4000000000000080h
                                        ; DATA XREF: sub_14070EBA0+3A↓o
qword_14000B0C8 dq 6A000410010070h, 4000000000000080h
                                        ; DATA XREF: sub_14070EBA0+33↓o
qword_14000B0D8 dq 5D000410010060h, 4000000000004004h
                                        ; DATA XREF: sub_14070ECA4+66↓o
                                        ; sub_14070ECA4+11BF30↓o
qword_14000B0E8 dq 4500041001003Fh, 4000000000004004h
                                        ; DATA XREF: sub_14070EFBC+2E↓o
                                        ; sub_14070EFBC+11BDCE↓o
qword_14000B0F8 dq 5C00041000005Fh, 4000000000004004h
                                        ; DATA XREF: sub_140356194+2F↓o
                                        ; sub_140356194+13023D↓o
qword_14000B108 dq 6800041000006Eh, 4000000000000004h
                                        ; DATA XREF: sub_14070EFBC+96↓o
                                        ; sub_14070EFBC+11BE67↓o
qword_14000B118 dq 5E000410000061h, 4000000000004004h
                                        ; DATA XREF: sub_14070EFBC:loc_14070F038↓o
                                        ; sub_14070EFBC+11BDF6↓o
qword_14000B128 dq 408897A683DA6326h, 293B573F92A15394h, 0Ah
                                        ; DATA XREF: .rdata:0000000140007B28↑o
                                        ; sub_140711594+12C↓o ...
qword_14000B140 dq 97000410000088h, 4000000000000004h
                                        ; DATA XREF: sub_140714E40+C3↓o
aAllowdevelopme:                        ; DATA XREF: ExQueryFastCacheDevLicense+7↓o
                text "UTF-16LE", 'AllowDevelopmentWithoutDevLicense',0
                align 20h
aRegistryMachin_35:                     ; DATA XREF: sub_140718AA8+34↓o
                                        ; sub_1409605B4+23↓o
                text "UTF-16LE", '\Registry\Machine\SOFTWARE\Policies\Microsoft\Windo'
                text "UTF-16LE", 'ws\Appx',0
                align 20h
aRegistryMachin_36:                     ; DATA XREF: sub_140718AA8+42↓o
                text "UTF-16LE", '\Registry\Machine\SOFTWARE\Microsoft\Windows\Curren'
                text "UTF-16LE", 'tVersion\AppModelUnlock',0
                align 8
aAppmodelunlock:                        ; DATA XREF: sub_140718AA8+A6↓o
                text "UTF-16LE", 'AppModelUnlock',0
                align 8
aAppxpolicies:                          ; DATA XREF: sub_140718AA8+56↓o
                                        ; sub_1409605B4+3D↓o
                text "UTF-16LE", 'AppxPolicies',0
                align 8
asc_14000B2F8   db 0Dh,0                ; DATA XREF: sub_140718D2C+E3↓o
                                        ; sub_140718D2C+1149BC↓o
                dw 1100h, 0F05h, 2
                dq 4000000000000010h
qword_14000B308 dq 0C90004100000A7h, 4000000000000404h
                                        ; DATA XREF: sub_140361674+2C↓o
                                        ; sub_140361674+51↓o
qword_14000B318 dq 41840B3EA3BD1075h    ; DATA XREF: sub_14071E484+3D↓o
                dq 400000002h, 0        ; DATA XREF: sub_14071FD38+2B↓o
qword_14000B330 dq 300000000h           ; DATA XREF: sub_1405E7384+E0↓o
                                        ; sub_14079CB60+4↓o ...
qword_14000B338 dq 4A00041000004Dh, 4000000000000010h
                                        ; DATA XREF: sub_1402B3030+2B8↓o
                                        ; sub_1402B3030+361↓o
qword_14000B348 dq 4D2800DFC584EDBFh, 0E81189CABA3584B8h
                                        ; DATA XREF: sub_140722BA4+39↓o
                                        ; sub_140722BA4+10D2B0↓o
                dq 4B000400000060h, 20h ; DATA XREF: sub_14036C360+87↓o
                                        ; sub_14036C360+121AC6↓o
qword_14000B368 dq 4F7A142C8163EB01h    ; DATA XREF: .rdata:0000000140001558↑o
                                        ; sub_1405E6DB8+311↓r ...
qword_14000B370 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1405E6DB8+31E↓r
                                        ; sub_14072D614+2CC↓r ...
                dq 7
qword_14000B380 dq 2000010000003h, 8000000000000000h
                                        ; DATA XREF: sub_14072EF04+26A↓o
qword_14000B390 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 15h
                                        ; DATA XREF: .rdata:0000000140007BB8↑o
                                        ; sub_14072FAF0+FB↓o ...
xmmword_14000B3A8 xmmword 3F05139760008FB011D046F0CB3A4004h
                                        ; DATA XREF: sub_14069F1E0+1BA↓r
                                        ; IoRegisterPlugPlayNotification+26F↓r ...
qword_14000B3B8 dq 11D046F0CB3A4005h    ; DATA XREF: sub_14069F1E0+248↓r
                                        ; sub_140740BCC+35A↓o ...
qword_14000B3C0 dq 3F05139760008FB0h    ; DATA XREF: sub_14069F1E0+255↓r
                                        ; sub_140741328+11B↓r ...
qword_14000B3C8 dq 408897A683DA6326h, 293B573F92A15394h, 67h
                                        ; DATA XREF: .rdata:0000000140007B58↑o
                                        ; sub_140735D48+3CD↓o ...
aSwd:                                   ; DATA XREF: sub_140745518+1D↓o
                                        ; sub_1407483F4+88↓o ...
                text "UTF-16LE", 'SWD\',0
                align 10h
qword_14000B3F0 dq 408897A683DA6326h, 293B573F92A15394h, 65h
                                        ; DATA XREF: sub_140748F30+380↓o
qword_14000B408 dq 0FA0204130000FCh, 800000000080000h
                                        ; DATA XREF: sub_140748F30+4DA↓o
qword_14000B418 dq 408897A683DA6326h, 293B573F92A15394h, 18h
                                        ; DATA XREF: .rdata:off_140007B00↑o
                                        ; sub_140748F30+44E↓o ...
qword_14000B430 dq 408897A683DA6326h, 293B573F92A15394h, 64h
                                        ; DATA XREF: sub_140748F30+354↓o
qword_14000B448 dq 0FA0104130000FAh, 800000000080000h
                                        ; DATA XREF: sub_140748F30+97↓o
qword_14000B458 dq 41000019Ah, 4000000000000000h
                                        ; DATA XREF: sub_1407496E4+237↓o
qword_14000B468 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 6
                                        ; DATA XREF: sub_1407346D8+6A1↓o
                                        ; sub_1407496E4+CB↓o ...
qword_14000B480 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 5
                                        ; DATA XREF: sub_1407346D8+A2A↓o
                                        ; sub_1407496E4+AF↓o ...
byte_14000B498  db 90h                  ; DATA XREF: sub_1407499A0+386↓o
                db 1, 0, 10h, 4, 3 dup(0)
                dq 4000000000000000h
qword_14000B4A8 dq 41405EB14DA162C1h, 764E81C9645044A4h, 9
                                        ; DATA XREF: sub_1407499A0+12F↓o
                                        ; sub_1407499A0+EF27B↓o
qword_14000B4C0 dq 41405EB14DA162C1h, 764E81C9645044A4h, 6
                                        ; DATA XREF: sub_1407499A0+116↓o
                                        ; sub_1407499A0+EF252↓o
qword_14000B4D8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 3
                                        ; DATA XREF: .rdata:00000001400014B8↑o
                                        ; sub_1407499A0+F1↓o ...
qword_14000B4F0 dq 40942E3DA8B865DDh    ; DATA XREF: sub_14072FE9C+10A↓r
                                        ; sub_1407346D8+93C↓o ...
qword_14000B4F8 dq 0D6750CA793E597ADh   ; DATA XREF: sub_14072FE9C+117↓r
                                        ; sub_14074A5C4+148↓r
                dq 2
qword_14000B508 dq 8600040000012Eh, 100h
                                        ; DATA XREF: sub_14074AE64+42↓o
                                        ; sub_14074AE64+EE1B6↓o
qword_14000B518 dq 27010410010007h, 4000000000000008h
                                        ; DATA XREF: sub_140370874+BB↓o
                                        ; sub_140370874+14D↓o
xmmword_14000B528 xmmword 44B206C9A0002A8D11D0AACF6C154A92h
                                        ; DATA XREF: sub_14074BC90+1FC↓o
                                        ; sub_14074E90C+70↓r
xmmword_14000B538 xmmword 2F09E22B0008CFBE11D08C0EE644F185h
                                        ; DATA XREF: sub_14074BC90+1D1↓o
                                        ; sub_14074E90C+141↓r
aTranslated:                            ; DATA XREF: sub_14074D6C0+3F7↓o
                                        ; sub_140A3B8B0+2DE↓o ...
                text "UTF-16LE", '.Translated',0
aRaw:                                   ; DATA XREF: sub_14074D6C0+398↓o
                                        ; sub_140A3B8B0+A4↓o ...
                text "UTF-16LE", '.Raw',0
                align 10h
qword_14000B570 dq 48B98C7380497100h    ; DATA XREF: .rdata:0000000140007B48↑o
                                        ; sub_1407346D8+FF9↓o ...
qword_14000B578 dq 6EC5197E38CED9AAh    ; DATA XREF: sub_14074F360+F7↓r
                                        ; sub_14097D1B8+102↓r
                dq 2
aAcpiX64Platfor:                        ; DATA XREF: HalReportResourceUsage+47↓o
                text "UTF-16LE", 'ACPI x64 platform',0
                align 10h
xmmword_14000B5B0 xmmword 486551FF34FFBDA64B00E9D55D3E9A59h
                                        ; DATA XREF: sub_1403A9804+1D↓o
                                        ; sub_1403A9804+4B↓o ...
xmmword_14000B5C0 xmmword 245CBDBFF2A94B8549E5FCA47D263F15h
                                        ; DATA XREF: sub_1403A98C0+61↓r
                                        ; sub_1403A98C0+E5EF4↓r ...
qword_14000B5D0 dq 41C6013DA3BD2875h    ; DATA XREF: sub_1408F33BC+13↓o
                                        ; sub_1408F3408+1F↓o ...
aRegistryMachin_54:                     ; DATA XREF: sub_140791D1C+6B↓o
                text "UTF-16LE", '\Registry\Machine\',0
                align 20h
aSleepstudysett:                        ; DATA XREF: sub_140791D1C+5F↓o
                                        ; sub_140791D1C+14F↓o
                text "UTF-16LE", 'SleepStudySettings',0
                align 10h
aSystemCurrentc_3:                      ; DATA XREF: sub_140791D1C+3B↓o
                                        ; sub_140791D1C+13A↓o
                text "UTF-16LE", 'SYSTEM\CurrentControlSet\Control\Session Manager\Po'
                text "UTF-16LE", 'wer',0
                align 20h
aSleepstudysess:                        ; DATA XREF: sub_140791D1C+1E3↓o
                text "UTF-16LE", 'SleepStudySessionThresholdSeconds',0
                align 10h
aSleepstudyacti:                        ; DATA XREF: sub_140791D1C+E9↓o
                text "UTF-16LE", 'SleepstudyActiveThresholdPercent',0
                align 8
qword_14000B738 dq 41C6013DA3BD6075h    ; DATA XREF: sub_140773A78+D6DF6↓o
                                        ; sub_140773A78+D6E76↓o ...
qword_14000B740 dq 43CEE09B307BCC77h    ; DATA XREF: sub_140791F88+1A↓o
                                        ; sub_140891DA0:loc_140891DFE↓r ...
qword_14000B748 dq 0A704FB6F7546978Dh   ; DATA XREF: sub_140891DA0+6A↓r
                                        ; sub_1408FD1E0+16↓r
qword_14000B750 dq 4D118BF0D37687E7h, 6A7580E0ABA789B5h
                                        ; DATA XREF: sub_140791FBC+1B↓o
                                        ; sub_14079200C+10↓o
aOnesettingpowe:                        ; DATA XREF: sub_1403A9B30+55↓o
                text "UTF-16LE", 'OneSettingPowerButtonBugcheck',0
                align 20h
aPowerbuttonbug:                        ; DATA XREF: sub_1403A9B30+30↓o
                text "UTF-16LE", 'PowerButtonBugcheck',0
qword_14000B7C8 dq 214051100000Ch, 4000000000000010h
                                        ; DATA XREF: sub_1403F85F4+12F↓o
                                        ; sub_1403F85F4+144↓o ...
qword_14000B7D8 dq 45D215FDAA1F73E8h, 11EB784FF6E7FDABh
                                        ; DATA XREF: sub_140A42288+8C↓o
qword_14000B7E8 dq 3E000408000099h, 8000000000000000h
                                        ; DATA XREF: sub_140A4301C+93↓o
qword_14000B7F8 dq 1500040800001Eh, 8000000000000000h
                                        ; DATA XREF: sub_14099B070+1A7↓o
qword_14000B808 dq 4BAA4D7A15CA44FFh    ; DATA XREF: sub_14039B008+53↓o
                                        ; sub_14039B008+DF↓r ...
qword_14000B810 dq 1E535E959809A5BBh    ; DATA XREF: sub_14039B008+F2↓r
                                        ; sub_14039B008+126↓r
qword_14000B818 dq 56EFCE4F23B76A75h    ; DATA XREF: sub_14039B008+8F↓o
                                        ; sub_14039B008:loc_14039B1D6↓r
qword_14000B820 dq 6B3FAED6A2C303F9h    ; DATA XREF: sub_14039B008+1DA↓r
word_14000B828  dw 16h                  ; DATA XREF: sub_14039B3F4+26↓r
                                        ; sub_14039B3F4+2E↓o ...
                dw 1300h, 100h, 731Ah
; ---------------------------------------------------------------------------
                push    rax
                iretq
; ---------------------------------------------------------------------------
                db 89h, 82h, 47h, 0B3h, 0E0h
                dq 0BA7604C9E8DCh
                dq 44C22005331C3B3Ah, 0B4D6370C22775EACh
                                        ; DATA XREF: sub_140A42288+15↓o
qword_14000B850 dq 41911A28A3BC0875h    ; DATA XREF: sub_140A43984+415↓o
                dq 4AC0F0AFFAE10392h, 0DF3C0C924D9FFFB8h
                                        ; DATA XREF: sub_140A43984+404↓o
qword_14000B868 dq 5B73877BEA216962h, 9E957553EF8AC5F7h
                                        ; DATA XREF: sub_140A43984+3EC↓o
qword_14000B878 dq 54464A1B45EEC9E5h, 37C41313ABA4D87Ah
                                        ; DATA XREF: sub_140A43984+3D4↓o
qword_14000B888 dq 5668BB5DF4E1897Ch, 44D38D4D0F04D8F1h
                                        ; DATA XREF: sub_140A43984+3BC↓o
qword_14000B898 dq 485F7E1785A62A0Dh, 0A69371289A744F9Dh
                                        ; DATA XREF: sub_140A43984+3A4↓o
qword_14000B8A8 dq 4FA775A3E02A841Ch, 237F9BCF09AEC8AFh
                                        ; DATA XREF: sub_140A43984+38C↓o
qword_14000B8B8 dq 4CD99B7F16A1ADC1h, 30B1B16A29D8B394h
                                        ; DATA XREF: sub_140A43984+374↓o
qword_14000B8C8 dq 4F45E1F2D1D93EF7h, 6CFE45D2034399h
                                        ; DATA XREF: sub_140A43984+35C↓o
qword_14000B8D8 dq 4E659CC4EDD08927h, 89C2B50F56C270B9h
                                        ; DATA XREF: sub_14093F248+19↓o
                                        ; sub_140A43984+323↓o
qword_14000B8E8 dq 4177E1E0C7BDE69Ah, 715252D13A28EFB6h
                                        ; DATA XREF: sub_140A43984+307↓o
qword_14000B8F8 dq 483253297DD42A49h, 883A1579D943FD8Dh
                                        ; DATA XREF: sub_140A43984+2EB↓o
                dq 4E1B8F122839FF94h, 0F457AF77AAFE382h
                                        ; DATA XREF: sub_1407D3EA0+9↓o
                                        ; sub_140940198+15↓o ...
qword_14000B918 dq 422B0E7B22FB2CD6h, 16E7D01FAD2FC7A0h
                                        ; DATA XREF: sub_1407ACC20+AB88D↓o
                                        ; sub_140A43984+2B5↓o
qword_14000B928 dq 0D7B6004FA68CA8B7h, 5D1F0FDEE20798A6h
                                        ; DATA XREF: sub_140A43984+286↓o
xmmword_14000B938 xmmword 0A23C4DC7FDF392BC4648BDB6B675EC37h
                                        ; DATA XREF: sub_14024F4C0+930↓r
                                        ; sub_1405A5EE0+62↓r ...
qword_14000B948 dq 4000400030013h, 80h  ; DATA XREF: sub_140A43E38+19B↓o
                                        ; sub_140A43E38+3B05F↓o
qword_14000B958 dq 100040800000Ch, 8000000000000080h
                                        ; DATA XREF: sub_140A43E38+EA↓o
qword_14000B968 dq 1F50104100001F5h, 8001000000000000h
                                        ; DATA XREF: sub_140A4412C+C6↓o
qword_14000B978 dq 4A30595096AC7637h, 0C134578E7EE0F7B8h
                                        ; DATA XREF: sub_140A4412C+A8↓o
qword_14000B988 dq 40000002Bh, 8000000000000h
                                        ; DATA XREF: sub_14079462C+5F↓o
qword_14000B998 dq 4700CB902FF3E6B7h    ; DATA XREF: sub_1407947F8+A↓o
                                        ; sub_1407947F8+48↓o ...
qword_14000B9A0 dq 0ED3497383F442196h   ; DATA XREF: sub_140794BB8+F2↓r
                                        ; sub_140795BA0+51↓r
qword_14000B9A8 dq 1588012EA3BC0875h    ; DATA XREF: sub_1407960B8+234↓o
aSystemroot_1:                          ; DATA XREF: sub_140750264+133↓o
                                        ; .data:0000000140C02D48↓o
                text "UTF-16LE", '%systemroot%',0
                align 10h
aSystemroot_2:                          ; DATA XREF: sub_14075061C+3D↓o
                                        ; sub_1409678D8+48↓o ...
                text "UTF-16LE", 'systemroot',0
                align 8
asc_14000B9E8:                          ; DATA XREF: .rdata:0000000140009608↑o
                                        ; sub_14074FE7C+1CC↓o ...
                text "UTF-16LE", '\??\',0
                align 8
aSdbreleasedata db 'SdbReleaseDatabase',0
                                        ; DATA XREF: sub_140752308+16↓o
                                        ; sub_140752308+B8↓o ...
                align 4
aEnter          db 'Enter.',0           ; DATA XREF: sub_140752308+9↓o
                align 8
qword_14000BA18 dq 4ACA104A78C34FC8h    ; DATA XREF: sub_140737044+254↓r
                                        ; sub_140755998+3F↓o ...
qword_14000BA20 dq 576E99524D52A49Eh    ; DATA XREF: sub_140737044+261↓r
                dq 69h
qword_14000BA30 dq 210010001h, 8000000000000000h
                                        ; DATA XREF: sub_140371578+85↓o
qword_14000BA40 dq 410010002h, 8000000000000000h
                                        ; DATA XREF: sub_140371578+9B↓o
aSystemrootAppp:                        ; DATA XREF: sub_1403723A0+42↓o
                                        ; sub_14075732C+BE↓o
                text "UTF-16LE", '\SystemRoot\AppPatch\drvmain.sdb',0
                align 20h
aSystemrootAppp_0:                      ; DATA XREF: sub_1403723A0+21E↓o
                                        ; sub_14075732C+DB↓o ...
                text "UTF-16LE", '\SystemRoot\AppPatch\drvpatch.sdb',0
                align 8
qword_14000BAE8 dq 40E856266A3433F4h    ; DATA XREF: .rdata:0000000140005290↑o
                                        ; .rdata:0000000140007938↑o ...
qword_14000BAF0 dq 4B88D2ECD9DBB9A9h    ; DATA XREF: sub_14075D8A0+9F↓r
                dq 15h
qword_14000BB00 dq 40E856266A3433F4h    ; DATA XREF: .rdata:0000000140005278↑o
                                        ; .rdata:0000000140007998↑o ...
qword_14000BB08 dq 4B88D2ECD9DBB9A9h    ; DATA XREF: sub_14075D8A0+F8↓r
                                        ; sub_14075DB1C+156↓r ...
                dq 14h
qword_14000BB18 dq 470DF69E4321918Bh, 4BD25AC7884DDEA5h, 14h
                                        ; DATA XREF: sub_14075DB1C:loc_14075DB53↓o
                                        ; PAGE:0000000140986418↓o ...
qword_14000BB30 dq 470DF69E4321918Bh, 4BD25AC7884DDEA5h, 13h
                                        ; DATA XREF: sub_14075DB1C:loc_14075DC79↓o
                                        ; PAGE:0000000140986400↓o ...
xmmword_14000BB48 xmmword 5CDAF32E4756149249F5A2E2713D1703h
                                        ; DATA XREF: sub_14075D670+1DB↓r
                                        ; sub_14075D8A0+1FC↓o ...
dword_14000BB58 dd 2                    ; DATA XREF: sub_14097C610+340↓r
                align 20h
qword_14000BB60 dq 40E856266A3433F4h    ; DATA XREF: sub_1407346D8+372↓o
                                        ; sub_14075D8A0+110↓r ...
qword_14000BB68 dq 4B88D2ECD9DBB9A9h    ; DATA XREF: sub_14075D8A0+11D↓r
                dq 4
qword_14000BB78 dq 40E856266A3433F4h, 4B88D2ECD9DBB9A9h, 5
                                        ; DATA XREF: sub_14075D8A0+141↓o
qword_14000BB90 dq 47CE50A7259ABFFCh, 6633D7A7C96808AFh, 5
                                        ; DATA XREF: sub_14075D8A0+1AC↓o
                                        ; PAGE:0000000140986E70↓o
qword_14000BBA8 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_14075E29C+1E2↓r
                                        ; sub_140730600+1032FA↓r ...
qword_14000BBB0 dq 6633D7A7C96808AFh    ; DATA XREF: sub_14075E29C+1EF↓r
                                        ; sub_140730600+103307↓r
                dq 0Ah
qword_14000BBC0 dq 3110511000009h, 4000000000000220h
                                        ; DATA XREF: sub_140723D50+1B↓o
                                        ; EtwUnregister+DB↓o ...
qword_14000BBD0 dq 5000400000005h, 1    ; DATA XREF: sub_140376EEC+2C↓o
qword_14000BBE0 dq 4000400000004h, 1    ; DATA XREF: sub_140377CF4+2A0↓o
qword_14000BBF0 dq 49A9D97AF0E20F09h    ; DATA XREF: sub_1404BB668+139↓o
                                        ; sub_140723E38+154↓r ...
qword_14000BBF8 dq 2EBBE6226EBB4680h    ; DATA XREF: sub_140723E38+161↓r
                                        ; sub_14073A3A0+171↓r
                dq 2
qword_14000BC08 dq 4C5000F4240h, 10007FFFFFFFh, 1007FFFFFFFh
                                        ; DATA XREF: sub_1403782E0+4F↓o
                                        ; sub_140376CC0+11C5C4↓o
qword_14000BC20 dq 44DCC830951B41EAh, 0B8098895C9E271A6h
                                        ; DATA XREF: sub_140377CF4+379↓o
qword_14000BC30 dq 408897A683DA6326h, 293B573F92A15394h, 12h
                                        ; DATA XREF: .rdata:0000000140007B68↑o
                                        ; sub_1403799D4+15↓o ...
qword_14000BC48 dq 40CA65053A8D0384h    ; DATA XREF: sub_140763EE0+39↓r
qword_14000BC50 dq 0ED5F8C5FC15639BCh   ; DATA XREF: sub_140763EE0+46↓r
qword_14000BC58 dq 4E408A5AB520F7FAh    ; DATA XREF: sub_1407639DC+49↓o
                                        ; sub_140763EE0+59↓r
qword_14000BC60 dq 35D962E1E16BF6A3h    ; DATA XREF: sub_140763EE0+66↓r
qword_14000BC68 dq 11D06F25496B8280h    ; DATA XREF: sub_140763B78+7E↓o
                                        ; sub_140763EE0+1A↓r
qword_14000BC70 dq 2F09E22B0008AFBEh    ; DATA XREF: sub_140763EE0+26↓r
qword_14000BC78 dq 4DC4A797B8E992ECh, 46747041D0844688h
                                        ; DATA XREF: sub_140735D48+199↓o
qword_14000BC88 dq 4AE4D2781EFEE0B2h, 438064DD341BDCBDh
                                        ; DATA XREF: sub_140379D94+58↓o
                                        ; sub_1404B7BB4+B↓o ...
qword_14000BC98 dq 47DB0AFB70211B0Eh, 7A4942F80B41C1AFh
                                        ; DATA XREF: sub_140764404+13D↓o
qword_14000BCA8 dq 414BB814026E516Eh    ; DATA XREF: sub_1405DE560+27C↓r
                                        ; sub_1405E0BDC+21A↓o ...
qword_14000BCB0 dq 2248EF6F6D85CD83h    ; DATA XREF: sub_1405DE560+289↓r
                                        ; sub_14073430C+121↓r ...
                dq 2
qword_14000BCC0 dq 27020410000008h, 4000000000000008h
                                        ; DATA XREF: sub_14037AED4+4E↓o
                                        ; sub_14037AED4+EF↓o
qword_14000BCD0 dq 7 dup(1000100010001h), 2010100010001h, 201000201000201h
                                        ; DATA XREF: sub_14037B718+D0↓o
                dq 100020100020100h, 2010002010002h, 201000201000201h
                dq 100020100020100h, 2010002010002h, 201000201000201h
                dq 7 dup(302010003020100h), 403020103020100h, 201000403020100h
                dq 4030201000403h, 302010004030201h, 100040302010004h
                dq 403020100040302h, 201000403020100h, 201030201000403h
                dq 403020100050403h, 5040302010005h, 201000504030201h
                dq 403020100050403h, 5040302010005h, 201000504030201h
                dq 103020100050403h, 201000605040302h, 302010006050403h
                dq 403020100060504h, 504030201000605h, 605040302010006h
                dq 6050403020100h, 100060504030201h, 6 dup(100070605040302h)
                dq 201070605040302h, 100080706050403h, 8070605040302h
                dq 807060504030201h, 706050403020100h, 605040302010008h
                dq 504030201000807h, 403020100080706h, 201000908070605h
                dq 9080706050403h, 807060504030201h, 605040302010009h
                dq 403020100090807h, 201000908070605h, 706050403020103h
                dq 4030201000A0908h, 1000A0908070605h, 908070605040302h
                dq 60504030201000Ah, 30201000A090807h, 302010807060504h
                dq 0B0A090807060504h, 706050403020100h, 30201000B0A0908h
                dq 0B0A090807060504h, 706050403020100h, 30201000B0A0908h
                dq 807060504030201h, 30201000C0B0A09h, 0B0A090807060504h
                dq 60504030201000Ch, 1000C0B0A090807h, 908070605040302h
                dq 605040302010B0Ah, 0D0C0B0A090807h, 807060504030201h
                dq 201000D0C0B0A09h, 0A09080706050403h, 4030201000D0C0Bh
                dq 504030201070605h, 0D0C0B0A09080706h, 60504030201000Eh
                dq 0E0D0C0B0A090807h, 706050403020100h, 0E0D0C0B0A0908h
                dq 504030201030201h, 0D0C0B0A09080706h, 504030201000F0Eh
                dq 0D0C0B0A09080706h, 504030201000F0Eh, 0D0C0B0A09080706h
                dq 605040302010F0Eh, 0E0D0C0B0A090807h, 50403020100100Fh
                dq 0D0C0B0A09080706h, 403020100100F0Eh, 0C0B0A0908070605h
                dq 807060504030201h, 100F0E0D0C0B0A09h, 605040302010011h
                dq 0E0D0C0B0A090807h, 40302010011100Fh, 302010908070605h
                dq 0B0A090807060504h, 1211100F0E0D0Ch, 807060504030201h
                dq 100F0E0D0C0B0A09h, 504030201001211h, 706050403020106h
                dq 0F0E0D0C0B0A0908h, 302010013121110h, 0B0A090807060504h
                dq 131211100F0E0D0Ch, 403020103020100h, 0C0B0A0908070605h
                dq 14131211100F0E0Dh, 706050403020100h, 0F0E0D0C0B0A0908h
                dq 201001413121110h, 0A09080706050403h, 1211100F0E0D0C0Bh
                dq 403020100151413h, 0C0B0A0908070605h, 1131211100F0E0Dh
                dq 908070605040302h, 11100F0E0D0C0B0Ah, 201001615141312h
                dq 0A09080706050403h, 111100F0E0D0C0Bh, 908070605040302h
                dq 11100F0E0D0C0B0Ah, 100171615141312h, 908070605040302h
                dq 2010F0E0D0C0B0Ah, 0A09080706050403h, 1211100F0E0D0C0Bh
                dq 100181716151413h, 908070605040302h, 40302010D0C0B0Ah
                dq 0C0B0A0908070605h, 14131211100F0E0Dh, 201001918171615h
                dq 0A09080706050403h, 70605040302010Bh, 0F0E0D0C0B0A0908h
                dq 1716151413121110h, 4030201001A1918h, 302010908070605h
                dq 0B0A090807060504h, 131211100F0E0D0Ch, 1B1A191817161514h
                dq 706050403020100h, 807060504030201h, 100F0E0D0C0B0A09h
                dq 1817161514131211h, 30201001C1B1A19h, 605040302010504h
                dq 0E0D0C0B0A090807h, 161514131211100Fh, 1D1C1B1A191817h
                dq 504030201030201h, 0D0C0B0A09080706h, 1514131211100F0Eh
                dq 1D1C1B1A19181716h, 50403020101001Eh, 0D0C0B0A09080706h
                dq 1514131211100F0Eh, 1D1C1B1A19181716h, 605040302011F1Eh
                dq 0E0D0C0B0A090807h, 161514131211100Fh, 1E1D1C1B1A191817h
                dq 807060504030201h, 100F0E0D0C0B0A09h, 1817161514131211h
                dq 302011D1C1B1A19h, 0B0A090807060504h, 131211100F0E0D0Ch
                dq 1B1A191817161514h, 70605040302011Ch, 0F0E0D0C0B0A0908h
                dq 1716151413121110h, 40302011B1A1918h, 0C0B0A0908070605h
                dq 14131211100F0E0Dh, 2011A1918171615h, 0A09080706050403h
                dq 1211100F0E0D0C0Bh, 119181716151413h, 908070605040302h
                dq 11100F0E0D0C0B0Ah, 118171615141312h, 908070605040302h
                dq 11100F0E0D0C0B0Ah, 201171615141312h, 0A09080706050403h
                dq 1211100F0E0D0C0Bh, 403020116151413h, 0C0B0A0908070605h
                dq 14131211100F0E0Dh, 706050403020115h, 0F0E0D0C0B0A0908h
                dq 302011413121110h, 0B0A090807060504h, 131211100F0E0D0Ch
                dq 807060504030201h, 100F0E0D0C0B0A09h, 605040302011211h
                db 7, 8, 9
                dd 0D0C0B0Ah
                db 0Eh
                dq 50403020111100Fh, 0D0C0B0A09080706h, 504030201100F0Eh
                dq 0D0C0B0A09080706h, 605040302010F0Eh, 0E0D0C0B0A090807h
                dq 807060504030201h, 302010D0C0B0A09h, 0B0A090807060504h
                dq 70605040302010Ch, 40302010B0A0908h, 2010A0908070605h
                dq 109080706050403h, 108070605040302h, 201070605040302h
                dq 403020106050403h, 302010403020105h, 10201h
qword_14000C438 dq 4B0C747380D81EA6h    ; DATA XREF: sub_1407684B8+1FF↓r
qword_14000C440 dq 8B4C2C1AC1EF1682h    ; DATA XREF: sub_1407684B8+20B↓r
                dq 3
qword_14000C450 dq 4F7A142C8163EB01h    ; DATA XREF: .rdata:00000001400014E0↑o
                                        ; sub_1407684B8+26F↓r
qword_14000C458 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_1407684B8+27B↓r
                dq 4
qword_14000C468 dq 11D0810F6BDD1FC6h    ; DATA XREF: sub_1407684B8:loc_14076876E↓r
qword_14000C470 dq 2F09E22B0008C7BEh    ; DATA XREF: sub_1407684B8+2C2↓r
                dq 2
qword_14000C480 dq 4EFDDF1CA45C254Eh    ; DATA XREF: sub_1405DF3FC+71C↓o
                                        ; sub_1407684B8+290↓r ...
qword_14000C488 dq 0E050A846D1672080h   ; DATA XREF: sub_1407684B8+29C↓r
                dq 0Eh
qword_14000C498 dq 0D60204140000D7h, 400000000004020h
                                        ; DATA XREF: sub_1407687A8+263↓o
qword_14000C4A8 dq 0D60104140000D6h, 400000000004020h
                                        ; DATA XREF: sub_1407687A8+68↓o
qword_14000C4B8 dq 0D80204120000DAh, 1000000000008020h
                                        ; DATA XREF: sub_14037C698+2C↓o
qword_14000C4C8 dq 0A00041001001Eh, 8000000040000000h
                                        ; DATA XREF: sub_140768A4C+25↓o
                                        ; sub_140768A4C+DD985↓o
qword_14000C4D8 dq 421086A3AFD97640h, 55BEAA419C287CB6h, 3
                                        ; DATA XREF: sub_140768F18+126↓o
                                        ; .data:0000000140C048A8↓o
qword_14000C4F0 dq 41405EB14DA162C1h, 764E81C9645044A4h, 8
                                        ; DATA XREF: sub_14076A5CC+308↓o
qword_14000C508 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 1Ch
                                        ; DATA XREF: .rdata:0000000140001878↑o
                                        ; sub_14076A5CC+2F0↓o
qword_14000C520 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 0Ch
                                        ; DATA XREF: .rdata:0000000140001620↑o
                                        ; sub_14076A5CC+2DC↓o ...
qword_14000C538 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 0Dh
                                        ; DATA XREF: .rdata:0000000140001648↑o
                                        ; sub_14076A5CC+2B1↓o ...
qword_14000C550 dq 4EFDDF1CA45C254Eh    ; DATA XREF: sub_140737044+ED↓r
                                        ; sub_140737044+3EC↓r ...
qword_14000C558 dq 0E050A846D1672080h   ; DATA XREF: sub_140737044:loc_14073712A↓r
                                        ; sub_140737044+3F3↓r ...
                dq 0Ch
qword_14000C568 dq 25000400000034h, 2   ; DATA XREF: PoLatencySensitivityHint+7F↓o
                                        ; PoLatencySensitivityHint+1179E6↓o
qword_14000C578 dq 40E856266A3433F4h, 4B88D2ECD9DBB9A9h, 10h
                                        ; DATA XREF: sub_14076FAA0+B5↓o
                                        ; sub_140738BF8+B690A↓o
qword_14000C590 dq 40E856266A3433F4h, 4B88D2ECD9DBB9A9h, 0Fh
                                        ; DATA XREF: sub_14076FAA0+4E↓o
                                        ; sub_140738BF8+B6821↓o
aSwdGenericraw:                         ; DATA XREF: sub_140770AA8+3F↓o
                                        ; sub_140770AA8+BE↓o ...
                text "UTF-16LE", 'SWD\GenericRaw',0
                align 8
aSwdGeneric:                            ; DATA XREF: sub_140770AA8+55↓o
                                        ; sub_140770AA8+D4↓o ...
                text "UTF-16LE", 'SWD\Generic',0
qword_14000C5E0 dq 0A00041001001Dh, 8000000040000000h
                                        ; DATA XREF: sub_140770E30+2C↓o
                                        ; sub_140770E30+D812B↓o
qword_14000C5F0 dq 4ACA104A78C34FC8h    ; DATA XREF: .rdata:0000000140001088↑o
                                        ; .rdata:0000000140001250↑o ...
qword_14000C5F8 dq 576E99524D52A49Eh    ; DATA XREF: sub_140757C60+52↓r
                                        ; sub_14070DD8C+11C4B8↓r
                dq 37h
qword_14000C608 dq 296003DA3BC1875h     ; DATA XREF: sub_140755998+F9↓o
                                        ; sub_140771620+FD↓o
qword_14000C610 dq 4400041001003Eh, 4000000000000404h
                                        ; DATA XREF: sub_14077215C+45↓o
                                        ; sub_14077215C+D3↓o
aAwaymodeenable:                        ; DATA XREF: sub_140772C14+6B↓o
                text "UTF-16LE", 'AwayModeEnabled',0
qword_14000C640 dq 21010110000001h, 4000000000003009h
                                        ; DATA XREF: sub_140772CF4+3F↓o
qword_14000C650 dq 21000410010027h, 4000000000003C0Ch
                                        ; DATA XREF: sub_140773034+47↓o
                                        ; sub_140773034+A5↓o ...
qword_14000C660 dq 21000410010075h, 4000000000002C0Ch
                                        ; DATA XREF: sub_1407732BC+373↓o
                                        ; sub_1407732BC+39B↓o
qword_14000C670 dq 21020110000002h, 4000000000001009h
                                        ; DATA XREF: sub_140773768+39↓o
qword_14000C680 dq 0F90104100000BCh, 4000000000000808h
                                        ; DATA XREF: sub_1407737FC+4↓o
qword_14000C690 dq 0F90204100000BDh, 4000000000000808h
                                        ; DATA XREF: sub_140773818+4↓o
qword_14000C6A0 dq 2C21041000001Ah, 4000000000000808h
                                        ; DATA XREF: sub_140775254+1E↓o
qword_14000C6B0 dq 2C220410000085h, 4000000000000808h
                                        ; DATA XREF: sub_140775254+4C↓o
qword_14000C6C0 dq 2B21041000001Bh, 4000000000000808h
                                        ; DATA XREF: sub_1407752CC+1F↓o
qword_14000C6D0 dq 2B220410000086h, 4000000000000808h
                                        ; DATA XREF: sub_1407752CC+50↓o
qword_14000C6E0 dq 38210410000044h, 4000000000000808h
                                        ; DATA XREF: sub_1407753CC+E↓o
qword_14000C6F0 dq 38220410000045h, 4000000000000808h
                                        ; DATA XREF: sub_1407753CC+2D↓o
qword_14000C700 dq 0F30004080000BBh, 8000400000000404h
                                        ; DATA XREF: sub_140773C90+60↓o
qword_14000C710 dq 10100041000022Bh, 4000000000000004h
                                        ; DATA XREF: sub_140773F68+A5↓o
                                        ; sub_140773F68+D6ABC↓o
qword_14000C720 dq 100000000h           ; DATA XREF: sub_14038296C+1B↓o
                                        ; sub_1403F5400+1B↓o
qword_14000C728 dq 10400041000022Eh, 4000000000008004h
                                        ; DATA XREF: sub_140382B10+4B↓o
qword_14000C738 dq 107000410000231h, 4000000000008004h
                                        ; DATA XREF: sub_140774DD8+40↓o
qword_14000C748 dq 10B000410000235h, 4000000000008004h
                                        ; DATA XREF: sub_140774AB8+5C↓o
qword_14000C758 dq 108000410000232h, 4000000000008004h
                                        ; DATA XREF: sub_140774F38+3C↓o
qword_14000C768 dq 106000410000230h, 4000000000008004h
                                        ; DATA XREF: sub_140774EB0+53↓o
qword_14000C778 dq 10500041000022Fh, 4000000000008004h
                                        ; DATA XREF: sub_140774EB0+13↓o
qword_14000C788 dq 36210410000040h, 4000000000000808h
                                        ; DATA XREF: sub_140775348+F↓o
qword_14000C798 dq 36220410000041h, 4000000000000808h
                                        ; DATA XREF: sub_140775348+6↓o
qword_14000C7A8 dq 41000007Eh, 4000000000000C0Ch
                                        ; DATA XREF: sub_14099482C+31↓o
qword_14000C7B8 dq 41000007Fh, 4000000000000C0Ch
                                        ; DATA XREF: sub_14099482C+2A↓o
qword_14000C7C8 dq 410000080h, 4000000000000C0Ch
                                        ; DATA XREF: sub_14099482C+CD↓o
qword_14000C7D8 dq 410000081h, 4000000000000C0Ch
                                        ; DATA XREF: sub_14099482C:loc_1409948F2↓o
qword_14000C7E8 dq 29210410000023h, 4000000000003C0Ch
                                        ; DATA XREF: sub_1407757EC+3B↓o
                                        ; sub_1407757EC+5A↓o
qword_14000C7F8 dq 61220410000065h, 4000000000000808h
                                        ; DATA XREF: sub_140997990:loc_140997AA3↓o
qword_14000C808 dq 61210410000064h, 4000000000000808h
                                        ; DATA XREF: sub_140997990:loc_140997A70↓o
qword_14000C818 dq 4CF8B9A3B7624D64h, 0B7E740C9865B1180h
                                        ; DATA XREF: sub_140775B9C+11F↓o
                                        ; NaptrDnsRecordConvert+45F↓o
qword_14000C828 dq 4E705CDD9DEA862Ch, 95474D342BF3C1ACh
                                        ; DATA XREF: sub_140776E10+9D↓o
                                        ; sub_140780AF0+15↓o ...
qword_14000C838 dq 41936F1CFA926493h    ; DATA XREF: sub_140781010+3F↓o
                                        ; sub_140783D2C+5↓r
qword_14000C840 dq 1E6D45B2F05814A4h    ; DATA XREF: sub_140783D2C+17↓r
qword_14000C848 dq 4D4DA0DF1CAE1EB7h    ; DATA XREF: sub_140783D2C+26↓r
qword_14000C850 dq 35F54EE360485198h    ; DATA XREF: sub_140783D2C+33↓r
qword_14000C858 dq 62220410000067h, 4000000000000808h
                                        ; DATA XREF: sub_140998FC8+B6↓o
qword_14000C868 dq 62210410000066h, 4000000000000808h
                                        ; DATA XREF: sub_140998FC8:loc_140999068↓o
qword_14000C878 dq 26010410000012h, 4000000000000808h
                                        ; DATA XREF: sub_140777458+21↓o
qword_14000C888 dq 26020410000013h, 4000000000000808h
                                        ; DATA XREF: sub_140777458+2A↓o
qword_14000C898 dq 2F02041000002Eh, 4000000000000808h
                                        ; DATA XREF: sub_140999AFC:loc_140999D71↓o
qword_14000C8A8 dq 2F01041000002Dh, 4000000000000808h
                                        ; DATA XREF: sub_140999AFC+28↓o
qword_14000C8B8 dq 25010410000010h, 4000000000000808h
                                        ; DATA XREF: sub_140777704+4C↓o
                                        ; sub_140777704+81↓o
qword_14000C8C8 dq 0DD0004100000B9h, 4000000000000404h
                                        ; DATA XREF: sub_14038BA68+2C5↓o
                                        ; sub_14038BA68+2EF↓o
qword_14000C8D8 dq 25020410000011h, 4000000000000808h
                                        ; DATA XREF: sub_140777928+2C↓o
                                        ; sub_140777928+41↓o
qword_14000C8E8 dq 6E000410000191h, 4000000000000404h
                                        ; DATA XREF: sub_14067A140+1325↓o
aHalWakeInLuSec db 'HAL: Wake in %lu seconds on AC and in %lu seconds on DC',0Ah,0
                                        ; DATA XREF: sub_14099A5E0+72↓o
                align 8
aHiberbootenabl:                        ; DATA XREF: sub_140778444+54↓o
                                        ; sub_140778518+8E↓o
                text "UTF-16LE", 'HiberbootEnabled',0
                align 20h
aRegistryMachin_45:                     ; DATA XREF: sub_140778518+2A↓o
                text "UTF-16LE", '\Registry\Machine\Software\Policies\Microsoft\Windo'
                text "UTF-16LE", 'ws\System',0
                align 20h
aK              db 'k',0                ; DATA XREF: sub_14099A8D8+C7↓o
                dw 801h, 4, 66h
                dq 8000000000000444h
qword_14000C9F0 dq 5000408020001h, 8000000000000010h
                                        ; DATA XREF: sub_14099AAF8+F1↓o
qword_14000CA00 dq 70000410000193h, 4000000000000404h
                                        ; DATA XREF: sub_140778868+14↓o
qword_14000CA10 dq 4000040803002Ah, 8000000000000404h
                                        ; DATA XREF: sub_140778A2C+50↓o
qword_14000CA20 dq 0CC0204100000AEh, 4000000000000802h
                                        ; DATA XREF: sub_14099ADA0+4↓o
qword_14000CA30 dq 0CC0104100000ADh, 4000000000000808h
                                        ; DATA XREF: sub_14099ADBC+4↓o
qword_14000CA40 dq 4300041000003Dh, 4000000000002404h
                                        ; DATA XREF: sub_140778E0C+2C↓o
                                        ; sub_140778E0C+4E↓o
qword_14000CA50 dq 41C6013DA3BD0075h    ; DATA XREF: sub_140779080+18↓o
                dq 2A220410000026h, 4000000000000C0Ch
                                        ; DATA XREF: sub_14077938C+4↓o
qword_14000CA68 dq 0B9000410000095h, 4000400000000404h
                                        ; DATA XREF: sub_14038DD10+32↓o
qword_14000CA78 dq 0BA000410000096h, 4000400000000404h
                                        ; DATA XREF: sub_14038DD10+2B↓o
qword_14000CA88 dq 9A00041000008Ah, 4001000000000000h
                                        ; DATA XREF: sub_140392C0C+69↓o
                                        ; sub_140392C0C+10BB3E↓o ...
qword_14000CA98 dq 2100040000002Fh, 2   ; DATA XREF: sub_140392CB0+37↓o
qword_14000CAA8 dq 7B000400000091h, 2   ; DATA XREF: sub_140392CB0+30↓o
qword_14000CAB8 dq 9B00041000008Bh, 4001000000000000h
                                        ; DATA XREF: sub_140392D3C+69↓o
                                        ; sub_140392D3C+10BB24↓o ...
qword_14000CAC8 dq 1010410000001h, 8000000000000001h
                                        ; DATA XREF: sub_140392E90+53↓o
                                        ; sub_140392E90+72↓o
qword_14000CAD8 dq 1020410000002h, 8000000000000001h
                                        ; DATA XREF: sub_140392F88+53↓o
                                        ; sub_140392F88+72↓o
qword_14000CAE8 dq 1020310000003h, 8000000000000001h, 0
                                        ; DATA XREF: sub_140393C94+56↓o
                                        ; sub_140393C94+75↓o
qword_14000CB00 dq 0C060C060C060C06h, 2B00241A061A06h, 0C070C070C070C07h
                                        ; DATA XREF: sub_1403971E8+B7↓o
                dq 330001241A071A07h, 0C080C080C080C08h, 22B02241A081A08h
                dq 0C090C090C090C09h, 32B03241A091A09h, 0C0A0C0A0C0A0C0Ah
                dq 320434001A0A1A0Ah, 0C0B0C0B0C0B0C0Bh, 320534011A0B1A0Bh
                dq 0C0C0C0C0C0C0C0Ch, 320034021A0C1A0Ch, 0C0D0C0D0C0D0C0Dh
                dq 320334031A0D1A0Dh, 2 dup(161E161E161E161Eh), 2 dup(161F161F161F161Fh)
                dq 2 dup(1624162416241624h), 2 dup(162B162B162B162Bh)
                dq 325A274D322D322Ch, 3407340834053404h, 2545232425452324h
                dq 2D4A2D4A2D472D47h, 4 dup(182E182E182E182Eh), 0D06325A0D060D06h
                dq 0C420C420C160C16h, 1C411C411C411C41h, 242B2041274E2041h
                dq 1B421B421B423259h, 1B421B421B421B42h, 3259282032443243h
                dq 323F3240222B2224h, 1F411F411F411F41h, 2646264626492649h
                dq 264C264C1A161A16h, 264B264B26482648h, 4 dup(1E411E411E411E41h)
                dq 32363236100E100Eh, 1D411D4109410641h, 3236323632352931h
                dq 323432332F333233h, 0F0E0F0E0E0E0E0Eh, 3041325A2F012F02h
                dq 2 dup(325A325A325A325Ah), 1830182F182F182Fh, 2C522C522C512C51h
                dq 1822282217221720h, 2D522D522D512D51h, 3409340A325A3406h
                dq 1116111632383232h, 323C323B323A3239h, 131E121E323E323Dh
qword_14000CD00 dq 28010410000014h, 4000000000000008h
                                        ; DATA XREF: sub_140398808+47↓o
                                        ; sub_140398808+C8↓o
qword_14000CD10 dq 0A00040004000Ah, 1   ; DATA XREF: sub_140398E68+47↓o
                                        ; sub_14057B4F8+46↓o ...
byte_14000CD20  db 90h                  ; DATA XREF: sub_140398E68+3B↓o
                align 4
                dd 7A0004h
                dq 1
qword_14000CD30 dq 0D00040000000Dh, 2   ; DATA XREF: sub_140398F08+44↓o
qword_14000CD40 dq 7800040000008Eh, 2   ; DATA XREF: sub_140398F08+3A↓o
qword_14000CD50 dq 28020410000015h, 4000000000000008h
                                        ; DATA XREF: sub_14039927C+2E↓o
                                        ; sub_14039927C+53↓o
qword_14000CD60 dq 3000410000004h, 8000000000000000h
                                        ; DATA XREF: IoTransferActivityId+10↓o
                                        ; IoTransferActivityId+107402↓o
qword_14000CD70 dq 41C6013DA3BC5075h    ; DATA XREF: sub_14077DDF0+30B↓o
                dq 41C6013DA3BC6075h    ; DATA XREF: sub_14077DDF0+2DE↓o
                dq 41C6013DA3BC5C75h    ; DATA XREF: sub_14077DDF0+A0↓o
                                        ; sub_14077DDF0+D1FBD↓o
                dq 1000410000001h, 8000000000000000h
                                        ; DATA XREF: sub_140399928+2E↓o
qword_14000CD98 dq 9000400030009h, 1    ; DATA XREF: sub_14039A5E8+74↓o
                                        ; sub_14039A5E8+106BDE↓o
qword_14000CDA8 dq 41C6013DA3BC3075h    ; DATA XREF: sub_14077F7D0+E9↓o
                dq 0C960C38A3BC1075h    ; DATA XREF: sub_140780274+7F↓o
                dq 4526451002731015h, 0EA1ABD7EA1E5E699h
                                        ; DATA XREF: sub_140780274+58↓o
                dq 410000087h, 4000200000000404h
                                        ; DATA XREF: sub_140780514+28↓o
                                        ; sub_140780514+4A↓o
qword_14000CDD8 dq 4DDFAD232B84C20Eh, 0A5FC7EBDFF05DB93h
                                        ; DATA XREF: .rdata:off_140007238↑o
                                        ; sub_140780748+6C↓o ...
qword_14000CDE8 dq 7900041000019Ch, 4000000000000404h
                                        ; DATA XREF: sub_140780748+1F↓o
qword_14000CDF8 dq 4AC5A89994D3A615h    ; DATA XREF: sub_14039AF10+24↓r
                                        ; INIT:0000000140A9A890↓o
qword_14000CE00 dq 7F3634F6D8E42BAEh    ; DATA XREF: sub_14039AF10+30↓r
qword_14000CE08 dq 8C000400000134h, 100h
                                        ; DATA XREF: sub_14039CCFC+42↓o
                                        ; sub_14039CCFC+10528B↓o
qword_14000CE18 dq 510000007h, 4000000000000000h
                                        ; DATA XREF: sub_14039DB44+D5↓o
                                        ; sub_14039DB44+104DA1↓o
qword_14000CE28 dq 510000009h, 4000000000000000h
                                        ; DATA XREF: sub_14039E024+53↓o
                                        ; sub_14039E024+1049CE↓o
qword_14000CE38 dq 410000008h, 4000000000000000h
                                        ; DATA XREF: sub_14039D904+1A4↓o
                                        ; sub_14039D904+104F14↓o
aNoAccessContro:                        ; DATA XREF: sub_14078663C+95↓o
                                        ; sub_1406D57D4:loc_14081FD28↓r
                text "UTF-16LE", 'NO_ACCESS_CONTROL',0
aFl:                                    ; DATA XREF: sub_140786DF4+DB↓o
                                        ; .data:0000000140C01FC0↓o
                text "UTF-16LE", 'FL',0
                align 4
aZa:                                    ; DATA XREF: sub_140786DF4+C1↓o
                                        ; .data:0000000140C02050↓o
                text "UTF-16LE", 'ZA',0
                align 4
aXu:                                    ; DATA XREF: sub_140786DF4+A7↓o
                                        ; .data:0000000140C02038↓o
                text "UTF-16LE", 'XU',0
                align 4
aSp:                                    ; DATA XREF: sub_140786DF4+8D↓o
                                        ; .data:0000000140C02020↓o
                text "UTF-16LE", 'SP',0
                align 4
aRa:                                    ; DATA XREF: sub_140786DF4+73↓o
                                        ; .data:0000000140C02008↓o
                text "UTF-16LE", 'RA',0
                align 4
aXd:                                    ; DATA XREF: sub_140786DF4+59↓o
                                        ; .data:0000000140C01FF0↓o
                text "UTF-16LE", 'XD',0
                align 4
aXa:                                    ; DATA XREF: sub_140786DF4+3F↓o
                                        ; .data:0000000140C01FD8↓o
                text "UTF-16LE", 'XA',0
                align 8
asc_14000CEA8   db '!',0                ; DATA XREF: sub_1407880E0+B6↓o
                                        ; sub_1407880E0+C9↓o
                dw 1000h, 0B04h, 9
                dq 8000000100000000h
qword_14000CEB8 dq 90A0410000020h, 8000000100000000h
                                        ; DATA XREF: sub_14078836C+AE↓o
                                        ; sub_14078836C+C1↓o
qword_14000CEC8 dq 90D0311000024h, 4000000000000000h
                                        ; DATA XREF: sub_14078836C+122↓o
                                        ; sub_14078836C+CA011↓o
byte_14000CED8  db 25h, 2 dup(0)        ; DATA XREF: sub_1407880E0+12A↓o
                                        ; sub_1407880E0+CA1A3↓o
                dd 90E0311h
                align 20h
                dq 4000000000000000h
aKernelRegister:                        ; DATA XREF: sub_1403A2364+4B↓o
                text "UTF-16LE", 'Kernel-RegisteredProcessors',0
qword_14000CF20 dq 41840B3EA3BCF075h    ; DATA XREF: sub_14078A2C0+49↓o
qword_14000CF28 dq 4C0B8FCF0DA965DCh    ; DATA XREF: sub_1403A2DDC+162↓r
qword_14000CF30 dq 9A95BCE7D58DFE8Eh    ; DATA XREF: sub_1403A2DDC+16F↓r
byte_14000CF38  db 7Fh, 2 dup(0)        ; DATA XREF: sub_14078A4E0+22↓o
                db 0
                dd 690004h
                dq 82h
qword_14000CF48 dq 0C90004100100A5h, 4000000000000404h
                                        ; DATA XREF: sub_14078BA08+3D↓o
                                        ; sub_14078BA08+74↓o
qword_14000CF58 dq 47000410000049h, 4000000000002404h
                                        ; DATA XREF: sub_1403A5FBC+28↓o
                                        ; sub_1403A5FBC+4A↓o
qword_14000CF68 dq 91000400000139h, 100h
                                        ; DATA XREF: sub_1403A6174+49↓o
                                        ; sub_1403A6174+100E22↓o
qword_14000CF78 dq 6F000410000192h, 4000000000000404h
                                        ; DATA XREF: sub_14078C760+1C↓o
aPowerpolicysim:                        ; DATA XREF: sub_14078CD78:loc_14078CEBC↓o
                text "UTF-16LE", 'PowerPolicySimulate',0
aPowersimulateh:                        ; DATA XREF: sub_14078CD78+105↓o
                text "UTF-16LE", 'PowerSimulateHiberBugcheck',0
                align 8
aControlSession_0:                      ; DATA XREF: sub_14078CD78+97↓o
                text "UTF-16LE", 'Control\Session Manager',0
; ---------------------------------------------------------------------------

loc_14000D018:                          ; DATA XREF: sub_14099D094+AA↓o
                sbb     dl, dh
                and     dl, [rbx-6]
                sahf
                retn
; ---------------------------------------------------------------------------
                db 4Bh
                dq 0F844C195BE14F9A3h
; ---------------------------------------------------------------------------
                cmp     dh, cl          ; DATA XREF: sub_14078D630+5B↓o
                and     al, 0Eh
                xchg    eax, ebx
                retn
; ---------------------------------------------------------------------------
                dw 4742h
                dq 8EE09E4B4F74B1BDh
qword_14000D038 dq 4F8DCF041E626B4Eh, 91230F5B7CC9C79Ch
                                        ; DATA XREF: sub_14078D820+49↓o
byte_14000D048  db 90h                  ; DATA XREF: sub_14067A140+EAC↓o
                db 1, 0, 10h, 4, 0, 6Dh, 0
                dq 4000000000000404h
qword_14000D058 dq 400000001h, 0        ; DATA XREF: PsSetLoadImageNotifyRoutineEx+9F↓o
qword_14000D068 dq 71000410000194h, 4000000000000404h
                                        ; DATA XREF: sub_140724058+91↓o
qword_14000D078 dq 72000410000195h, 4000000000000404h
                                        ; DATA XREF: sub_140724058:loc_1407240DB↓o
qword_14000D088 dq 7D0004100001A0h, 4000000000000404h
                                        ; DATA XREF: sub_1407244EC+37↓o
                                        ; sub_1407244EC+56↓o
qword_14000D098 dq 4C4DC03F3C0F4548h, 766368DE7E23F2B9h
                                        ; DATA XREF: .rdata:0000000140007240↑o
                                        ; sub_1407245A8+69↓o ...
qword_14000D0A8 dq 7A00041000019Dh, 4000000000000404h
                                        ; DATA XREF: sub_1407245A8+46↓o
qword_14000D0B8 dq 7E0004100001A1h, 4000000000000404h
                                        ; DATA XREF: sub_1407247F4+37↓o
                                        ; sub_1407247F4+56↓o
qword_14000D0C8 dq 41C6013DA3BC8875h    ; DATA XREF: sub_14072468C+DF↓o
qword_14000D0D0 dq 4344B427786E8A1Dh    ; DATA XREF: sub_14072468C+93↓o
                                        ; sub_1407248B0+9↓r ...
qword_14000D0D8 dq 0A9BEDC0BE7090792h   ; DATA XREF: sub_1407248B0+16↓r
qword_14000D0E0 dq 7B00041001019Eh, 4000000000000404h
                                        ; DATA XREF: sub_14072491C+40↓o
                                        ; sub_14072491C+5F↓o
qword_14000D0F0 dq 0C000041100009Ch, 2000000000000020h
                                        ; DATA XREF: sub_14079A440+145↓o
qword_14000D100 dq 0BB000411000097h, 2000000000000020h
                                        ; DATA XREF: sub_14079A440+EC↓o
                                        ; sub_1408E41B0+A1↓o
qword_14000D110 dq 4BB9C498ECBE47A8h, 220D94E067E870BDh
                                        ; DATA XREF: sub_14079A610+2D↓o
                dq 48EC3811089D9D0Dh, 9AE8F3279FD3728Fh
                                        ; DATA XREF: sub_14079A698+7D↓o
aMcupdateDll:                           ; DATA XREF: sub_1403AF8FC+35↓o
                text "UTF-16LE", 'mcupdate.dll',0
                align 10h
qword_14000D150 dq 4DA1074E5ADBBFBCh    ; DATA XREF: sub_14079A980+46↓r
                                        ; INIT:0000000140A9A800↓o
qword_14000D158 dq 0F3C8B2368BDB38BAh   ; DATA XREF: sub_14079A980+55↓r
qword_14000D160 dq 48C268688EC4B3A5h    ; DATA XREF: sub_140570818+300↓o
                                        ; sub_14079A980+81↓r ...
qword_14000D168 dq 0A788BE44304F75BEh   ; DATA XREF: sub_14079A980+8D↓r
qword_14000D170 dq 4E07C8A83C0BC021h    ; DATA XREF: sub_1403AF9A0+17↓r
                                        ; sub_140570818+2D6↓o ...
qword_14000D178 dq 7E2BCBCB146B73A9h    ; DATA XREF: sub_1403AF9A0+31↓r
                                        ; sub_14079A980+71↓r
qword_14000D180 dq 7F0004100001A2h, 4000000000000404h
                                        ; DATA XREF: sub_14079AA80+55↓o
                                        ; sub_14079AA80+B9C26↓o
qword_14000D190 dq 47D6100D0E796BDBh    ; DATA XREF: sub_14079B970+78↓r
                                        ; INIT:0000000140A9A940↓o
qword_14000D198 dq 511FA5DAD2F7D5A2h    ; DATA XREF: sub_14079B970+C5↓r
qword_14000D1A0 dq 4AD8BB9480E3C60Eh    ; DATA XREF: sub_14079BAA0+32↓r
                                        ; INIT:0000000140A9A840↓o
qword_14000D1A8 dq 63C6EF95310DE0BBh    ; DATA XREF: sub_14079BAA0+3E↓r
qword_14000D1B0 dq 4469D8FC7BC4A2F9h    ; DATA XREF: sub_14079BC20:loc_14079BD7D↓r
                                        ; INIT:0000000140A9A8F0↓o
qword_14000D1B8 dq 0A0AC5A78EB337BB0h   ; DATA XREF: sub_14079BC20+169↓r
qword_14000D1C0 dq 4C2A3608ABFC2519h    ; DATA XREF: sub_14079BC20:loc_14079BD5D↓r
                                        ; INIT:0000000140A9A8E0↓o
qword_14000D1C8 dq 0AB46D50E1B17EA94h   ; DATA XREF: sub_14079BC20+149↓r
qword_14000D1D0 dq 41A673CE94AC6D29h    ; DATA XREF: sub_14079BC20:loc_14079BD3D↓r
                                        ; INIT:0000000140A9A880↓o
qword_14000D1D8 dq 7EB421BA63639F80h    ; DATA XREF: sub_14079BC20+129↓r
qword_14000D1E0 dq 4E3EDD9C7648EFA3h    ; DATA XREF: sub_14079BED0+8A↓r
                                        ; INIT:0000000140A9A900↓o
qword_14000D1E8 dq 80623829F95066B5h    ; DATA XREF: sub_14079BED0+DA↓r
qword_14000D1F0 dq 47ECAD5096996BC0h    ; DATA XREF: sub_14079BED0+EA↓r
                                        ; INIT:0000000140A9A910↓o
qword_14000D1F8 dq 0EBD94D87416F3B92h   ; DATA XREF: sub_14079BED0+F6↓r
aSystempowerpol:                        ; DATA XREF: sub_14079C308+55↓o
                                        ; sub_14079C3EC+22C↓o
                text "UTF-16LE", 'SystemPowerPolicy',0
                align 8
qword_14000D228 dq 4C0723B199FF10E7h    ; DATA XREF: sub_14079BED0+12A↓r
                                        ; INIT:0000000140A9A930↓o
qword_14000D230 dq 0B441D706325CD1A9h   ; DATA XREF: sub_14079BED0+136↓r
qword_14000D238 dq 459F6E455CA83367h    ; DATA XREF: sub_14079BED0+10A↓r
                                        ; INIT:0000000140A9A920↓o
qword_14000D240 dq 36C9011D6B477BA2h    ; DATA XREF: sub_14079BED0+116↓r
aGenuineintel_0 db 'GenuineIntel',0     ; DATA XREF: sub_1409A02BC+A9↓o
                align 8
aAuthenticamd_0 db 'AuthenticAMD',0     ; DATA XREF: sub_1409A02BC+85↓o
                align 10h
aVenVvvvDevDddd:                        ; DATA XREF: sub_1403B2200:loc_1403B22E9↓o
                                        ; sub_1403B3B4C+F6B9A↓o
                text "UTF-16LE", 'VEN_vvvv&DEV_dddd&SUBVEN_ssss&SUBDEV_yyyy&REV_rrrr&'
                text "UTF-16LE", 'INST_iiii&UID_uuuuuuuu',0
                align 10h
aVen4hsDev04xSu:                        ; DATA XREF: sub_1403B36D8+80↓o
                text "UTF-16LE", 'VEN_%.4hs&DEV_%04x&SUBDEV_%04x&REV_%04x&%lsUID_%08x'
                text "UTF-16LE", 0
aDmaguardpolicy db 'DMAGUARDPOLICY=ENABLE',0
                                        ; DATA XREF: sub_1403B0B90+3E↓o
                align 10h
qword_14000D390 dq 4635867AA6AD76E3h, 0D77463BA0449B391h
                                        ; DATA XREF: sub_140A4D57C+1E↓o
qword_14000D3A0 dq 441D42E73C5EF282h, 2E21152F34B7BDAEh
                                        ; DATA XREF: sub_140A4D90C+72↓o
aWinIsmultisess:                        ; DATA XREF: sub_14079DD68+1A↓o
                text "UTF-16LE", 'WIN://ISMULTISESSIONSKU',0
aObjectnames:                           ; DATA XREF: sub_14079E160+301↓o
                text "UTF-16LE", 'ObjectNames',0
                align 20h
aRegistryMachin_63:                     ; DATA XREF: sub_14079E160+11A↓o
                text "UTF-16LE", '\Registry\Machine\System\CurrentControlSet\Services'
                text "UTF-16LE", '\EventLog\Security',0
                align 10h
aDosdevicesA:                           ; DATA XREF: sub_1403B4C70+9↓o
                text "UTF-16LE", '\DosDevices\A:',0
                align 10h
qword_14000D4B0 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 8
                                        ; DATA XREF: .rdata:00000001400050E8↑o
                                        ; sub_140A54218+B6↓o ...
qword_14000D4C8 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 10h
                                        ; DATA XREF: .rdata:0000000140005160↑o
                                        ; sub_140A54218+91↓o
qword_14000D4E0 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 0Ah
                                        ; DATA XREF: .rdata:0000000140005138↑o
                                        ; sub_140A54218+63↓o
qword_14000D4F8 dq 10E020413000110h, 800000000100000h
                                        ; DATA XREF: sub_140724C50+111↓o
qword_14000D508 dq 114010400000114h, 1000000100000h
                                        ; DATA XREF: sub_140724C50+43↓o
qword_14000D518 dq 10E01041300010Eh, 800000000100000h
                                        ; DATA XREF: sub_140724C50+2C↓o
qword_14000D528 dq 114020400000115h, 1000000100000h
                                        ; DATA XREF: sub_140364EF0+6A↓o
                                        ; sub_14068A254+188FC3↓o ...
qword_14000D538 dq 111020413000113h, 800000000100000h
                                        ; DATA XREF: sub_140364EF0+57↓o
                                        ; sub_14068A254+188FB0↓o
qword_14000D548 dq 111080413000112h, 800000000100000h
                                        ; DATA XREF: sub_140724B80+6A↓o
qword_14000D558 dq 111010413000111h, 800000000100000h
                                        ; DATA XREF: sub_140724B80+3F↓o
qword_14000D568 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 14h
                                        ; DATA XREF: .rdata:0000000140005200↑o
                                        ; sub_140724C50+251↓o ...
qword_14000D580 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 13h
                                        ; DATA XREF: .rdata:00000001400051D8↑o
                                        ; sub_140724C50+1F6↓o ...
qword_14000D598 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 9
                                        ; DATA XREF: .rdata:0000000140005110↑o
                                        ; sub_140724C50+176↓o
qword_14000D5B0 dq 96003DA3BC0875h      ; DATA XREF: sub_140772A60+5B↓o
                                        ; sub_140A5507C+149↓o
                dq 96003DA3BC1875h      ; DATA XREF: sub_140772A60+12C↓o
                dq 96003DA3BC1035h      ; DATA XREF: sub_140772A60+149↓o
aSystem_2:                              ; DATA XREF: .rdata:off_140008420↑o
                                        ; sub_1407A43A4+C4↓o ...
                text "UTF-16LE", 'SYSTEM',0
                align 8
aCurrentcontrol:                        ; DATA XREF: sub_1407A45D4+30↓o
                text "UTF-16LE", 'CurrentControlSet',0
                align 20h
qword_14000D600 dq 4DDF83BBB3A0C2C8h, 0D78AC3D3224B8D9Fh
                                        ; DATA XREF: sub_140A554F8+3C↓o
qword_14000D610 dq 487D12509C205A39h, 390529C631E8D7ABh
                                        ; DATA XREF: sub_140A554F8+10↓o
aWatchdogbugche:                        ; DATA XREF: sub_140A55A4C+25↓o
                text "UTF-16LE", 'WatchdogBugcheckEnabled',0
aWatchdogsecond:                        ; DATA XREF: sub_140A55AE8+39↓o
                text "UTF-16LE", 'WatchdogSecondChanceInMs',0
                align 8
aWatchdogfirstc:                        ; DATA XREF: sub_140A55AE8+10↓o
                text "UTF-16LE", 'WatchdogFirstChanceInMs',0
aDriverAcpiHal:                         ; DATA XREF: sub_1407A4D00+4↓o
                text "UTF-16LE", '\Driver\ACPI_HAL',0
                align 20h
qword_14000D6E0 dq 6000408000014h, 8000000000000010h
                                        ; DATA XREF: sub_1407A8F3C+5F↓o
qword_14000D6F0 dq 0B000408000018h, 8000000000000010h
                                        ; DATA XREF: sub_1407A98F4+80↓o
qword_14000D700 dq 4C7D4C7F70FFD812h, 0 ; DATA XREF: sub_140A5E884+F7↓o
qword_14000D710 dq 0D0920h              ; DATA XREF: sub_140A5EAA8+CF↓o
                                        ; sub_140A5EAA8+F1↓o
qword_14000D718 dq 4EFDDF1CA45C254Eh    ; DATA XREF: sub_140737044+2AD↓r
                                        ; sub_1408B6EE8+13C↓o ...
qword_14000D720 dq 0E050A846D1672080h   ; DATA XREF: sub_140737044+2BA↓r
                dq 3
qword_14000D730 dq 0D20204140000D3h, 400000000001020h
                                        ; DATA XREF: sub_140A606A0+11C↓o
qword_14000D740 dq 0D20104140000D2h, 400000000001020h
                                        ; DATA XREF: sub_140A606A0+EA↓o
qword_14000D750 dq 0CD0004000000D1h, 20h
                                        ; DATA XREF: sub_1403B81BC+37↓o
                                        ; sub_1403B81BC+5A↓o
qword_14000D760 dq 0CD0204000000D0h, 20h
                                        ; DATA XREF: sub_140A610CC+65↓o
qword_14000D770 dq 0CD0104000000CFh, 20h
                                        ; DATA XREF: sub_140A610CC+19↓o
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 2 dup(0), 11h, 4, 2, 0CAh, 0
                dq 2000000000000020h
; [00000003 BYTES: COLLAPSED FUNCTION nullsub_2. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 11h, 4, 1, 0CAh, 0
                dq 2000000000000020h
qword_14000D7A0 dq 0D01041000000Dh, 8000000000000400h
                                        ; DATA XREF: sub_1407ACC20+B4↓o
                                        ; sub_1409389D8:loc_140938A17↓o
qword_14000D7B0 dq 5000410000005h, 8000000000000040h
                                        ; DATA XREF: sub_140725004+37↓o
                                        ; sub_1407ACC20+91↓o
qword_14000D7C0 dq 6000410000006h, 8000000000000040h
                                        ; DATA XREF: sub_140725004+122↓o
qword_14000D7D0 dq 1010410030001h, 8000000000000010h
                                        ; DATA XREF: sub_1405E7C2C+A1↓o
                                        ; sub_1407ACC20+64↓o
qword_14000D7E0 dq 400000010h, 800h     ; DATA XREF: sub_1407ACC20:loc_1407ACE03↓o
aCallbackPowers_0:                      ; DATA XREF: sub_1407ADEE0+1D↓o
                text "UTF-16LE", '\Callback\PowerState',0
                align 20h
aPiix4devactb:                          ; DATA XREF: sub_1407ADFE0+76↓o
                text "UTF-16LE", 'Piix4DevActB',0
                align 20h
aPiix4slot:                             ; DATA XREF: sub_1407ADFE0+6B↓o
                text "UTF-16LE", 'Piix4Slot',0
                align 8
a440bx:                                 ; DATA XREF: sub_1407ADFE0+60↓o
                text "UTF-16LE", '440BX',0
                align 8
aPiix4:                                 ; DATA XREF: sub_1407ADFE0+55↓o
                text "UTF-16LE", 'Piix4',0
                align 8
aCstatehacks:                           ; DATA XREF: sub_1407ADFE0+4A↓o
                text "UTF-16LE", 'CStateHacks',0
aSecondaryinter:                        ; DATA XREF: sub_1407AE378+5A↓o
                text "UTF-16LE", 'SecondaryInterrupts',0
                align 20h
aRegistryMachin_73:                     ; DATA XREF: sub_1407ADFE0+14↓o
                                        ; sub_1407AE378+4F↓o ...
                text "UTF-16LE", '\REGISTRY\MACHINE\SYSTEM\CURRENTCONTROLSET\Control\'
                text "UTF-16LE", 'HAL',0
                align 10h
aSecondarygsivs:                        ; DATA XREF: sub_1407AE378+44↓o
                text "UTF-16LE", 'SecondaryGsivSize',0
                align 8
aSecondarygsivb:                        ; DATA XREF: sub_1407AE378+16↓o
                text "UTF-16LE", 'SecondaryGsivBase',0
                align 20h
aRegistryMachin_74:                     ; DATA XREF: sub_1407AE5B8+12↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\HARDWARE\UEFI',0
qword_14000D9C0 dq 44E753C87B563579h, 9465FEB9870F3682h
                                        ; DATA XREF: sub_140A65104+50↓o
qword_14000D9D0 dq 411000005h, 2000000000000000h
                                        ; DATA XREF: sub_1407AF248+10A↓o
                                        ; sub_1407AF248+176↓o
qword_14000D9E0 dq 41100002Ah, 2000000000000400h
                                        ; DATA XREF: WheaLogInternalEvent+56↓o
aRegistryMachin_148:                    ; DATA XREF: sub_140A65B84+29↓o
                text "UTF-16LE", '\Registry\MACHINE\SYSTEM\CurrentControlSet\Control\'
                text "UTF-16LE", 'Session Manager\Memory Management',0
                align 20h
aDynamicmemory:                         ; DATA XREF: sub_140A65B84+4A↓o
                text "UTF-16LE", 'DynamicMemory',0
                align 20h
aAcpiBios       db 'ACPI BIOS',0        ; DATA XREF: sub_140A66470+66↓o
                align 10h
aForcelegacypla db 'FORCELEGACYPLATFORM',0
                                        ; DATA XREF: sub_140A67378+1A↓o
                align 8
aDmaadapter:                            ; DATA XREF: sub_140A67ECC+5B↓o
                text "UTF-16LE", 'DmaAdapter',0
                align 20h
dword_14000DB00 dd 5Ch                  ; DATA XREF: sub_1403BD6B0:loc_1403BD6DE↓r
                                        ; sub_1403BD6B0+3C↓o ...
                align 8
aVsVersionInfo:                         ; DATA XREF: sub_1407B2AD8+175↓o
                text "UTF-16LE", 'VS_VERSION_INFO',0
byte_14000DB28  db 0CCh                 ; DATA XREF: sub_1407B3980+DB↓o
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_15. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 8Bh, 0FFh
                db 0CCh
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_16. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
                mov     eax, [rsp+4]
                int     3               ; Trap to Debugger
                retn    4
; ---------------------------------------------------------------------------
qword_14000DB38 dq 8A000400000132h, 100h
                                        ; DATA XREF: sub_1407B4200+4C↓o
                                        ; sub_1407B4200+A6351↓o
qword_14000DB48 dq 89000400000131h, 100h
                                        ; DATA XREF: sub_1407B3DCC+DC↓o
                                        ; sub_1407B3DCC+102↓o
qword_14000DB58 dq 4DB838FC0D0A64A1h, 5C7CCD52433FE79Fh
                                        ; DATA XREF: sub_1407B624C+5F8↓o
qword_14000DB68 dq 4DBDD2A69D453EB7h, 0A90991EDD0FBE3A2h
                                        ; DATA XREF: sub_1407B7418+10C↓o
aU_3:                                   ; DATA XREF: sub_1405C2D54+5DE↓o
                                        ; sub_1407B87D8+51↓o ...
                text "UTF-16LE", '%%%%%u',0
                align 8
asc_14000DB88:                          ; DATA XREF: sub_1405C2D54+300↓o
                                        ; sub_1405C2D54+5AD↓o ...
                text "UTF-16LE", '-',0
                align 10h
qword_14000DB90 dq 0EB000410010218h, 4000000000000004h
                                        ; DATA XREF: sub_1407B94E0+70↓o
                                        ; sub_1407B94E0+A24F0↓o
qword_14000DBA0 dq 0F4000410000220h, 4000000000000004h
                                        ; DATA XREF: sub_1407B94E0+FE↓o
                                        ; sub_1407B94E0+A25C4↓o
qword_14000DBB0 dq 61000400000077h, 2   ; DATA XREF: sub_1407BABC8+27↓o
qword_14000DBC0 dq 60000400010076h, 2   ; DATA XREF: sub_1407BA75C+347↓o
                                        ; sub_1407BA75C+3CA↓o
qword_14000DBD0 dq 41100012Dh, 2000000000000000h
                                        ; DATA XREF: sub_1403C3628+92↓o
qword_14000DBE0 dq 106020411000107h, 2000000000000020h
                                        ; DATA XREF: sub_1403C3628+68↓o
qword_14000DBF0 dq 10A02041400010Bh, 400000000000020h
                                        ; DATA XREF: sub_1403C3628+30↓o
qword_14000DC00 dq 10A01041400010Ah, 400000000000020h
                                        ; DATA XREF: sub_1403C3628+18↓o
qword_14000DC10 dq 106010411000106h, 2000000000000020h
                                        ; DATA XREF: sub_1403C3628+7↓o
aNovga          db 'NOVGA',0            ; DATA XREF: HalInitializeBios+32↓o
                align 8
asc_14000DC28   db 7,0                  ; DATA XREF: IoRegisterLastChanceShutdownNotification+4A↓o
                align 4
                dd 4
                dq 0
qword_14000DC38 dq 400000008h, 0        ; DATA XREF: IoRegisterShutdownNotification+4A↓o
aSessionManager:                        ; DATA XREF: sub_1403C57C8+12E↓o
                text "UTF-16LE", 'Session Manager',0
aRtlqueryregist:                        ; DATA XREF: sub_1403C57C8+99↓o
                text "UTF-16LE", 'RtlQueryRegistryValuesEx',0
                align 20h
aCmcpollinglimi:                        ; DATA XREF: sub_1403C57C8+D1↓o
                text "UTF-16LE", 'CMCPollingLimit',0
aCmcthresholdse:                        ; DATA XREF: sub_1403C57C8+A0↓o
                text "UTF-16LE", 'CMCThresholdSeconds',0
aCmcthresholdco:                        ; DATA XREF: sub_1403C57C8+61↓o
                text "UTF-16LE", 'CMCThresholdCount',0
                align 10h
qword_14000DD10 dq 0CD0104000000CDh, 20h
                                        ; DATA XREF: sub_140A6CF70+96↓o
aSoftwareMicros:                        ; DATA XREF: sub_1407C15DC+17↓o
                text "UTF-16LE", '\Software\Microsoft\Windows NT\CurrentVersion\AppCo'
                text "UTF-16LE", 'mpatFlags',0
                align 20h
aRegistryMachin_77:                     ; DATA XREF: sub_1407C1740+1D↓o
                text "UTF-16LE", '\Registry\Machine',0
                align 10h
a08lx04hx04hx02:                        ; DATA XREF: sub_1407C18B8+56↓o
                                        ; sub_140968D50+B2↓o
                text "UTF-16LE", '{%08lx-%04hx-%04hx-%02hx%02hx-%02hx%02hx%02hx%02hx%'
                text "UTF-16LE", '02hx%02hx}',0
                align 10h
aProcessorthrot:                        ; DATA XREF: sub_1403C6F80+41↓o
                text "UTF-16LE", 'ProcessorThrottleLogInterval',0
                align 10h
aControlSession:                        ; DATA XREF: sub_1403A7C7C+A↓o
                                        ; sub_1403C6F80+1B↓o
                text "UTF-16LE", 'Control\Session Manager\Power',0
                align 10h
qword_14000DED0 dq 13010410000017h, 8000000000004000h
                                        ; DATA XREF: sub_1403C7FBC:loc_1403C805C↓o
qword_14000DEE0 dq 13020410000018h, 8000000000004000h
                                        ; DATA XREF: sub_1403C7FBC+55↓o
qword_14000DEF0 dq 0CD0204000000CEh, 20h
                                        ; DATA XREF: sub_140A6D3E0+F↓o
aRegistryMachin_78:                     ; DATA XREF: sub_1407C42FC+71↓o
                text "UTF-16LE", '\Registry\Machine\SECURITY\Policy\GlobalSaclName',0
                align 8
aI:                                     ; DATA XREF: sub_1407C4944+3F↓o
                                        ; sub_1407C4944+9AB44↓o
                text "UTF-16LE", 'i',0
                dd 530004h
                dq 60h
qword_14000DF78 dq 4AAB944B0C3D5326h    ; DATA XREF: sub_1407C51C4+74↓r
                                        ; sub_1408F7328+A7↓r
qword_14000DF80 dq 0E0500E2A42FED88Ah   ; DATA XREF: sub_1407C51C4+81↓r
                                        ; sub_1408F7328+B4↓r
qword_14000DF88 dq 4D23F42CA4A61B5Fh    ; DATA XREF: sub_1407C51C4+53↓r
                                        ; sub_1408F7328+81↓r
qword_14000DF90 dq 180F9FDF275CABB3h    ; DATA XREF: sub_1407C51C4+60↓r
                                        ; sub_1408F7328+8E↓r
qword_14000DF98 dq 49102205C04A802Dh    ; DATA XREF: sub_1407C51C4+32↓r
                                        ; sub_1408F7328+5B↓r
qword_14000DFA0 dq 0F272BBE3513B98AEh   ; DATA XREF: sub_1407C51C4+3F↓r
                                        ; sub_1408F7328+68↓r
qword_14000DFA8 dq 5600040000006Ch, 60h ; DATA XREF: sub_1407C526C+26↓o
qword_14000DFB8 dq 2000100020001h, 1F000100020000h
                                        ; DATA XREF: sub_1407C5E10+1F6↓o
qword_14000DFC8 dq 411010004h, 4000000000000000h
                                        ; DATA XREF: sub_1403C9334+41↓o
                                        ; sub_1403C9334+6A↓o
qword_14000DFD8 dq 4C8AF1D8CBC747F0h, 46E24A4FAE0CA7AAh
                                        ; DATA XREF: sub_1403C97D8+69↓o
qword_14000DFE8 dq 4C4148h              ; DATA XREF: sub_140A6F558+37↓o
qword_14000DFF0 dq 444395CC63D1E632h, 2AD5617792AF1293h
                                        ; DATA XREF: sub_1407C7780+10↓o
aWsSyswow64:                            ; DATA XREF: sub_1407C7D48+86↓o
                text "UTF-16LE", '\??\%ws\SysWOW64\',0
                align 8
aWsSystem32:                            ; DATA XREF: sub_1407C7D48+65↓o
                text "UTF-16LE", '\??\%ws\System32\',0
                align 10h
qword_14000E050 dq 4619B909ADED5E82h    ; DATA XREF: sub_1403CA290+34↓r
                                        ; sub_1407CEF74:loc_140863194↓o ...
qword_14000E058 dq 0CB0BAC1DD7F54999h   ; DATA XREF: sub_1403CA290+40↓r
qword_14000E060 dq 4F03E31C1D077298h    ; DATA XREF: sub_1403CA290+C↓r
                                        ; sub_14067A140+195C79↓o ...
qword_14000E068 dq 291D1BB67374E99Dh    ; DATA XREF: sub_1403CA290+20↓r
qword_14000E070 dq 4165A960F1FBFDE2h    ; DATA XREF: sub_1403CA290+54↓r
                                        ; INIT:0000000140A9A9F0↓o ...
qword_14000E078 dq 96CE11796650889Fh    ; DATA XREF: sub_1403CA290+60↓r
qword_14000E080 dq 40979553FBD9AA66h    ; DATA XREF: sub_1403CA290+74↓r
                                        ; INIT:0000000140A9AA10↓o ...
qword_14000E088 dq 0B8EA659D6EED44BAh   ; DATA XREF: sub_1403CA290+80↓r
qword_14000E090 dq 4B948B4317AAA29Bh    ; DATA XREF: sub_1403CA290+B4↓r
                                        ; sub_1408FFD4C+1E3↓o ...
qword_14000E098 dq 0EEF1AA4DF635FEAAh   ; DATA XREF: sub_1403CA290+C0↓r
                                        ; sub_140901A70+67↓r
qword_14000E0A0 dq 474AF74E13D09884h    ; DATA XREF: sub_1403CA290+94↓r
                                        ; INIT:0000000140A9AA40↓o ...
qword_14000E0A8 dq 0A803ADE8BDB652A8h   ; DATA XREF: sub_1403CA290+A0↓r
aSystem_7:                              ; DATA XREF: .rdata:0000000140001038↑o
                                        ; sub_140A6FB84+11E↓o
                text "UTF-16LE", 'System',0
                align 20h
aIsrdpc:                                ; DATA XREF: sub_140A6FB84+10B↓o
                text "UTF-16LE", 'IsrDpc',0
                align 10h
aOverflow:                              ; DATA XREF: sub_140A6FB84+F5↓o
                text "UTF-16LE", 'Overflow',0
                align 8
aDefault_2:                             ; DATA XREF: sub_140A6FB84+D4↓o
                text "UTF-16LE", 'Default',0
qword_14000E0F8 dq 0EF00041000021Ch, 4000000000000004h
                                        ; DATA XREF: sub_1407CA7D4+A4↓o
qword_14000E108 dq 414F593C87D3DAE9h, 114EE25B5518F9Eh
                                        ; DATA XREF: sub_1407CA9E0+17↓o
aDirecteddripsa:                        ; DATA XREF: sub_1407CAA28:loc_1407CAB31↓o
                text "UTF-16LE", 'DirectedDripsAction',0
aControlPower:                          ; DATA XREF: sub_1407CAA28+A7↓o
                text "UTF-16LE", 'Control\Power',0
                align 20h
qword_14000E160 dq 4000000000000h, 4000400000001h, 4000800000002h, 4000C00000003h
                                        ; DATA XREF: sub_1407CAD10+1BF↓o
qword_14000E180 dq 8000000000000h, 8000800000001h
                                        ; DATA XREF: sub_1407CAD10+16A↓o
qword_14000E190 dq 8000000000000h, 8001000000001h, 8001800000002h, 4002000000003h
                                        ; DATA XREF: sub_1407CAD10+10C↓o
                dq 8002800000004h, 8003000000005h, 4003C00000006h, 4004000000007h
                dq 8000000000008h, 8004800000009h, 800500000000Ah, 800580000000Bh
                dq 800600000000Ch, 800680000000Dh, 800700000000Eh, 800080000000Fh
                dq 4008000000010h, 4008400000011h, 4008800000012h, 4008C00000013h
                dq 4003800000014h, 800A800000015h, 800B000000016h, 800B000000017h
                dq 8009800000018h, 4009400000019h, 800980000001Ah, 400900000001Bh
                dq 800A00000001Ch, 400900000001Dh, 400B80000001Eh, 400BC0000001Fh
                dq 8007800000020h, 800C000000021h, 4009400000022h, 0
qword_14000E2B0 dq 4000000000000h, 4000400000001h, 4000800000002h, 4000C00000003h
                                        ; DATA XREF: sub_1407CAD10+60↓o
                                        ; sub_1407CAD10+B7↓o
                dq 4001000000004h, 4001400000005h, 4001800000006h, 4001C00000007h
                dq 4002000000008h, 4002400000009h, 400280000000Ah, 4002C0000000Bh
                dq 400300000000Ch, 400340000000Dh, 400380000000Eh, 4003C0000000Fh
                dq 4004000000010h, 4004400000011h, 4004800000012h, 4004C00000013h
                dq 4005000000014h, 4005400000015h, 4005800000016h, 4005C00000017h
                dq 4006000000018h, 4006400000019h, 400680000001Ah, 4006C0000001Bh
                dq 400700000001Ch, 400740000001Dh, 400780000001Eh, 4007C0000001Fh
                dq 4008000000020h, 4008400000021h, 4008800000022h, 4008C00000023h
                dq 4009000000024h, 4009400000025h, 4009800000026h, 4009C00000027h
                dq 400A800000028h, 400AC00000029h
qword_14000E400 dq 4000000000000h, 4000400000001h, 8000800000002h, 4001000000003h
                                        ; DATA XREF: sub_1407CAF18+8A↓o
                dq 4001400000004h
qword_14000E428 dq 4000C00000000h, 4001400000001h, 4001000000002h, 4000000000003h
                                        ; DATA XREF: sub_1407CAF18+2B↓o
                dq 4000800000004h, 4000400000005h
qword_14000E458 dq 0CB0004080000ACh, 8000000000000404h
                                        ; DATA XREF: sub_1407CBC90+D7↓o
                                        ; sub_1407CBC90+F6↓o
qword_14000E468 dq 41840B3EA3BDA075h    ; DATA XREF: sub_1407CBDE8+22↓o
qword_14000E470 dq 108020414000109h, 400000000000020h
                                        ; DATA XREF: sub_140A7108C+87↓o
qword_14000E480 dq 108010414000108h, 400000000000020h
                                        ; DATA XREF: sub_140A7108C+D↓o
qword_14000E490 dq 41841D38A3BC3075h    ; DATA XREF: sub_140A717E4+82↓o
; ---------------------------------------------------------------------------

loc_14000E498:                          ; DATA XREF: sub_140A717E4+55↓o
                or      bl, [rbp-5250A67Fh]
                mov     dl, 46h ; 'F'
                lea     edi, [rcx+rbx*4+0Bh]
                retn
; ---------------------------------------------------------------------------
                db 9Ch, 7Ch, 15h
qword_14000E4A8 dq 470FEAA4E1233993h    ; DATA XREF: sub_1403CC310+1A↓o
                                        ; sub_1403CC350↓r ...
qword_14000E4B0 dq 71FBB6C151A3E79Dh    ; DATA XREF: sub_1403CC350+C↓r
                                        ; sub_1403CC390+21↓r ...
aAcpiHalPnp0c08:                        ; DATA XREF: sub_1407CF280+46↓o
                text "UTF-16LE", 'ACPI_HAL\PNP0C08',0
                db '*',0
aPnp0c08:
                text "UTF-16LE", 'PNP0C08',0
a0_2:                                   ; DATA XREF: sub_1407CF280:loc_1407CF322↓o
                                        ; sub_1407D0028:loc_14086363C↓o
                text "UTF-16LE", '0',0
aShutdowntemper:                        ; DATA XREF: sub_14056FC98+62↓o
                                        ; sub_1407CF340+84↓o
                text "UTF-16LE", 'ShutdownTemperature',0
aShutdownsource:                        ; DATA XREF: sub_14056FC98+52↓o
                                        ; sub_1407CF340+74↓o
                text "UTF-16LE", 'ShutdownSource',0
                align 8
aShutdownoccurr:                        ; DATA XREF: sub_14056FC98+42↓o
                                        ; sub_1407CF340+64↓o
                text "UTF-16LE", 'ShutdownOccurred',0
                align 20h
aRegistryMachin_14:                     ; DATA XREF: sub_1403CC5AC+56↓o
                text "UTF-16LE", '\Registry\Machine\SYSTEM\CurrentControlSet\Control\'
                text "UTF-16LE", 'Session Manager\Power',0
                align 8
qword_14000E5F8 dq 4EAB8C546ADDABF4h, 0B02EB661EFFB4FBFh
                                        ; DATA XREF: sub_140A73944+15↓o
aAcpiapic:                              ; DATA XREF: sub_1407D0028+29↓o
                text "UTF-16LE", 'acpiapic',0
                align 20h
qword_14000E620 dq 4C401D20DEDAE202h    ; DATA XREF: sub_1408F6E50+C↓r
                                        ; sub_140A73F44+125↓o
qword_14000E628 dq 4FD519E39718F3A6h    ; DATA XREF: sub_1408F6E50+1C↓r
qword_14000E630 dq 4A2A81DA05ECD13Dh, 0C94DDD234F524C8Ah
                                        ; DATA XREF: sub_140A73F44+F2↓o
qword_14000E640 dq 4F18449797F99BF6h, 9CEFFBB29F4B22BBh
                                        ; DATA XREF: .rdata:off_140008A60↑o
                                        ; sub_140A73F44+BF↓o
qword_14000E650 dq 45FB92E03FD0F03Dh, 2110B0FFD85E5CB7h
                                        ; DATA XREF: sub_1408AF3A0+32↓o
                                        ; sub_140A73F44+8C↓o
                dq 11D078A472631E54h, 2AB3B700AA00F7BCh
                                        ; DATA XREF: sub_140A73F44+5D↓o
qword_14000E670 dq 11D074A74AFA3D51h, 572806C9A0005EBEh
                                        ; DATA XREF: sub_140A73F44+2E↓o
qword_14000E680 dq 41C6013DA3BC2875h    ; DATA XREF: sub_1407D06D8+22↓o
qword_14000E688 dq 41C6013DA3BCA075h    ; DATA XREF: sub_14067A140+B54↓o
                                        ; sub_1408FEB88+5D↓o ...
qword_14000E690 dq 4D46FB9582011705h    ; DATA XREF: sub_1407D1850+A↓r
                                        ; INIT:0000000140A9AAE0↓o
qword_14000E698 dq 0EF0DD2B14240358Dh   ; DATA XREF: sub_1407D1850+19↓r
qword_14000E6A0 dq 400000001h, 1        ; DATA XREF: sub_140A7519C+25↓o
                                        ; sub_140A7519C+3F↓o
qword_14000E6B0 dq 4EFD1DC7D502F7EEh    ; DATA XREF: sub_1407D1E60+6↓r
                                        ; INIT:0000000140A9A7E0↓o
qword_14000E6B8 dq 45055C6F4BF05DA5h    ; DATA XREF: sub_1407D1E60+1B↓r
qword_14000E6C0 dq 4E037E983166BC41h    ; DATA XREF: sub_1407D1FE0+29↓r
                                        ; INIT:0000000140A9A980↓o
qword_14000E6C8 dq 8E212B5F0FEC4EB3h    ; DATA XREF: sub_1407D1FE0+35↓r
qword_14000E6D0 dq 41C6013DA3BCD875h    ; DATA XREF: sub_140A75304+67↓o
qword_14000E6D8 dq 41C6013DA3BCD075h    ; DATA XREF: sub_14067B764+195117↓o
                                        ; sub_140A75304+3F↓o
qword_14000E6E0 dq 41C6013DA3BCE075h    ; DATA XREF: sub_14067B764+53F↓o
                                        ; sub_140A75304+15↓o
qword_14000E6E8 dq 472692E54FAAB71Ah    ; DATA XREF: sub_1407D2150↓r
                                        ; INIT:0000000140A9A960↓o
qword_14000E6F0 dq 192D6759452231B5h    ; DATA XREF: sub_1407D2150+C↓r
qword_14000E6F8 dq 4A702988C36F0EB4h    ; DATA XREF: sub_1407D21A0+27↓r
                                        ; INIT:0000000140A9A7F0↓o
qword_14000E700 dq 33242CFC8408EE8Eh    ; DATA XREF: sub_1407D21A0+33↓r
a425000:                                ; DATA XREF: sub_1407D2470+13↓o
                text "UTF-16LE", '425000',0
                align 8
qword_14000E718 dq 4823F10C7F2F5CFAh    ; DATA XREF: sub_1407D2500+A↓r
                                        ; INIT:0000000140A9AB00↓o
qword_14000E720 dq 0B5465FE83AE9E1B5h   ; DATA XREF: sub_1407D2500+16↓r
qword_14000E728 dq 4ACEC213E00958C0h, 0A5EE2EEDCCFE77ACh
                                        ; DATA XREF: sub_1407D2690+51↓o
                                        ; INIT:0000000140A9AA30↓o
qword_14000E738 dq 41C6013DA3BC2075h    ; DATA XREF: sub_1407D2690+27↓o
                dq 104020411000105h, 2000000000000020h
                                        ; DATA XREF: sub_1407D26FC+63↓o
qword_14000E750 dq 104010411000104h, 2000000000000020h
                                        ; DATA XREF: sub_1407D26FC+F↓o
qword_14000E760 dq 47365DD125DFA149h    ; DATA XREF: sub_1407D2900+27↓r
                                        ; INIT:0000000140A9A950↓o
qword_14000E768 dq 87815B7BA3E8ABB5h    ; DATA XREF: sub_1407D2900+33↓r
qword_14000E770 dq 41840B3EA3BDD075h    ; DATA XREF: sub_1407D2AAC+13↓o
                                        ; sub_1407D2AAC+5A↓o
qword_14000E778 dq 46D1DFA4833A6B62h    ; DATA XREF: sub_1403CF100+27↓r
                                        ; INIT:0000000140A9A970↓o
qword_14000E780 dq 0D629D0349EE0F882h   ; DATA XREF: sub_1403CF100+33↓r
qword_14000E788 dq 4D9D0680BD3B718Ah    ; DATA XREF: sub_1407D2CE0+6↓r
                                        ; sub_1409930F4+44F↓o ...
qword_14000E790 dq 6D80ACB4D2E1B28Ah    ; DATA XREF: sub_1407D2CE0+1B↓r
qword_14000E798 dq 49DDDF61E2B8E68Fh, 8803DA819D503D8Eh
                                        ; DATA XREF: sub_140A75F2C+3D↓o
qword_14000E7A8 dq 4FF1058C1D7F2399h, 8F839EEDAF81B2B3h
                                        ; DATA XREF: sub_140A75F2C+C↓o
                dq 4272C983248F82A5h, 0B1664006D1446ABDh
                                        ; DATA XREF: sub_140A76024+1F↓o
                dq 4E9FFE510F67E49Fh, 2760CC48296F90B4h
                                        ; DATA XREF: sub_140A40EB8+8CE↓o
qword_14000E7D8 dq 42AF34B83057F60Eh, 0A3FA0B295F63F292h
                                        ; DATA XREF: sub_140A40EB8+882↓o
qword_14000E7E8 dq 11E281CDBEF2AA8Eh, 9B708861AC5EBBA7h
                                        ; DATA XREF: sub_1403CF6BC+15↓o
qword_14000E7F8 dq 41100012Ch, 2000000000000000h
                                        ; DATA XREF: sub_1403CF6FC+20↓o
qword_14000E808 dq 41840B3EA3BDE075h    ; DATA XREF: sub_1407D382C+19↓o
qword_14000E810 dq 992022FA3BC6075h     ; DATA XREF: sub_1407D3868+19↓o
                dq 41851C3EA3BC0875h    ; DATA XREF: sub_1407D38A4+19↓o
                dq 0C931C3EA3BC0875h    ; DATA XREF: sub_1407D38E0+19↓o
                dq 41840B3EA3BD0075h    ; DATA XREF: sub_1407D391C+19↓o
qword_14000E830 dq 41C6013DA3BC7075h    ; DATA XREF: sub_1407D3958+19↓o
                dq 41840B3EA3BDB075h, 18h dup(0)
                                        ; DATA XREF: sub_1407D3994+19↓o
qword_14000E900 dq 2 dup(0FFFF0000FFFFh), 8000000FFFFh, 20000000400h, 8000000100h
                                        ; DATA XREF: sub_140407F40+177↓o
                                        ; sub_140407F40+244↓o ...
                dq 2000000040h, 10h, 0
                db 4 dup(0)
dword_14000E944 dd 0                    ; DATA XREF: sub_140407F40+C9↓o
                                        ; sub_140407F40+1A8↓o ...
                dq 300000001h, 0F00000007h, 3F0000001Fh, 0FF0000007Fh
                dq 3FF000001FFh, 0FFF000007FFh, 3FFF00001FFFh, 0FFFF00007FFFh
aSqrt           db 'sqrt',0             ; DATA XREF: sqrt+82↓o
                align 10h
aSqrtf          db 'sqrtf',0            ; DATA XREF: sqrtf+67↓o
                align 8
aNull_0         db '(null)',0           ; DATA XREF: sub_1403D45E8:loc_1403D4808↓o
                                        ; sub_1403D45E8+273↓o ...
                align 20h
qword_14000E9A0 dq 10006000006h, 1002060006030010h, 505050545454504h, 5000303505h
                                        ; DATA XREF: sub_1403D45E8+D5↓o
                                        ; sub_1403D45E8+F4↓o ...
                dq 7505038202000h, 7505730303700h, 8202000h, 60606060686008h
                dq 70707878707000h, 800000700070807h, 700080708000008h
                dq 70008h, 20h dup(0)
asc_14000EB00:                          ; DATA XREF: .data:off_140C00000↓o
                                        ; .data:off_140C00150↓o
                text "UTF-16LE", '         (((((                  H'
                dw 3 dup(10h)
                dq 3 dup(10001000100010h), 2 dup(84008400840084h), 10001000840084h
                dq 10001000100010h, 81008100810010h, 1008100810081h, 4 dup(1000100010001h)
                dq 10000100010001h, 10001000100010h, 82008200820010h, 2008200820082h
                dq 4 dup(2000200020002h), 10000200020002h, 20001000100010h
                dq 20h dup(0)
                db 2 dup(0)
word_14000ED02  dw 3 dup(20h)           ; DATA XREF: .data:off_140C00008↓o
aHH:
                text "UTF-16LE", '      h((((                  H'
                dd 100010h
                dq 3 dup(10001000100010h), 84008400840010h, 84008400840084h
                dq 10008400840084h, 10001000100010h, 181018100100010h
                dq 181018101810181h, 5 dup(101010101010101h), 10001000100010h
                dq 182018200100010h, 182018201820182h, 5 dup(102010201020102h)
                dq 10001000100010h, 8 dup(20002000200020h), 10001000480020h
                dq 3 dup(10001000100010h), 14001000100010h, 10001000100014h
                dq 10001400100010h, 10001000100010h, 101010101010010h
                dq 5 dup(101010101010101h), 101010101010010h, 101010101010101h
                dq 6 dup(102010201020102h), 102010201020010h, 102010201020102h
                dq 1010102h, 0
qword_14000EF10 dq 8786858483828180h, 8F8E8D8C8B8A8988h, 9796959493929190h
                dq 9F9E9D9C9B9A9998h, 0A7A6A5A4A3A2A1A0h, 0AFAEADACABAAA9A8h
                dq 0B7B6B5B4B3B2B1B0h, 0BFBEBDBCBBBAB9B8h, 0C7C6C5C4C3C2C1C0h
                dq 0CFCECDCCCBCAC9C8h, 0D7D6D5D4D3D2D1D0h, 0DFDEDDDCDBDAD9D8h
                dq 0E7E6E5E4E3E2E1E0h, 0EFEEEDECEBEAE9E8h, 0F7F6F5F4F3F2F1F0h
                dq 0FFFEFDFCFBFAF9F8h, 706050403020100h, 0F0E0D0C0B0A0908h
                dq 1716151413121110h, 1F1E1D1C1B1A1918h, 2726252423222120h
                dq 2F2E2D2C2B2A2928h, 3736353433323130h, 3F3E3D3C3B3A3938h
                dq 6766656463626140h, 6F6E6D6C6B6A6968h, 7776757473727170h
                dq 5F5E5D5C5B7A7978h, 6766656463626160h, 6F6E6D6C6B6A6968h
                dq 7776757473727170h, 7F7E7D7C7B7A7978h, 8786858483828180h
                dq 8F8E8D8C8B8A8988h, 9796959493929190h, 9F9E9D9C9B9A9998h
                dq 0A7A6A5A4A3A2A1A0h, 0AFAEADACABAAA9A8h, 0B7B6B5B4B3B2B1B0h
                dq 0BFBEBDBCBBBAB9B8h, 0C7C6C5C4C3C2C1C0h, 0CFCECDCCCBCAC9C8h
                dq 0D7D6D5D4D3D2D1D0h, 0DFDEDDDCDBDAD9D8h, 0E7E6E5E4E3E2E1E0h
                dq 0EFEEEDECEBEAE9E8h, 0F7F6F5F4F3F2F1F0h, 0FFFEFDFCFBFAF9F8h
                dq 8786858483828180h, 8F8E8D8C8B8A8988h, 9796959493929190h
                dq 9F9E9D9C9B9A9998h, 0A7A6A5A4A3A2A1A0h, 0AFAEADACABAAA9A8h
                dq 0B7B6B5B4B3B2B1B0h, 0BFBEBDBCBBBAB9B8h, 0C7C6C5C4C3C2C1C0h
                dq 0CFCECDCCCBCAC9C8h, 0D7D6D5D4D3D2D1D0h, 0DFDEDDDCDBDAD9D8h
                dq 0E7E6E5E4E3E2E1E0h, 0EFEEEDECEBEAE9E8h, 0F7F6F5F4F3F2F1F0h
                dq 0FFFEFDFCFBFAF9F8h, 706050403020100h, 0F0E0D0C0B0A0908h
                dq 1716151413121110h, 1F1E1D1C1B1A1918h, 2726252423222120h
                dq 2F2E2D2C2B2A2928h, 3736353433323130h, 3F3E3D3C3B3A3938h
                dq 4746454443424140h, 4F4E4D4C4B4A4948h, 5756555453525150h
                dq 5F5E5D5C5B5A5958h, 4746454443424160h, 4F4E4D4C4B4A4948h
                dq 5756555453525150h, 7F7E7D7C7B5A5958h, 8786858483828180h
                dq 8F8E8D8C8B8A8988h, 9796959493929190h, 9F9E9D9C9B9A9998h
                dq 0A7A6A5A4A3A2A1A0h, 0AFAEADACABAAA9A8h, 0B7B6B5B4B3B2B1B0h
                dq 0BFBEBDBCBBBAB9B8h, 0C7C6C5C4C3C2C1C0h, 0CFCECDCCCBCAC9C8h
                dq 0D7D6D5D4D3D2D1D0h, 0DFDEDDDCDBDAD9D8h, 0E7E6E5E4E3E2E1E0h
                dq 0EFEEEDECEBEAE9E8h, 0F7F6F5F4F3F2F1F0h, 0FFFEFDFCFBFAF9F8h
                dq 2E00000043h, 2Eh
qword_14000F220 dq 433FFFFFFFFFFFFFh    ; DATA XREF: sub_1403F9390↓r
qword_14000F228 dq 0C33FFFFFFFFFFFFFh   ; DATA XREF: sub_1403F9390+A↓r
qword_14000F230 dq 80818086808006h, 8082868086031000h, 8585454545050514h
                                        ; DATA XREF: sub_1403D826C+A5↓o
                                        ; sub_1403D826C+E6↓o ...
                dq 5080303000000585h, 3027200008008080h, 3037000700805750h
                dq 2000000088505030h, 8080888028h, 606868606060h, 870707770777807h
                dq 700080708000008h
                db 8, 0, 7, 0
dword_14000F28C dd 20301810h            ; DATA XREF: sub_140A1EEE4+1243E↓o
                dq 205028h
xmmword_14000F298 xmmword 0A54FF53A3C6EF372BB67AE856A09E667h
                                        ; DATA XREF: sub_1403ED630+8↓r
                                        ; sub_1403ED660+C6↓r
xmmword_14000F2A8 xmmword 5BE0CD191F83D9AB9B05688C510E527Fh
                                        ; DATA XREF: sub_1403ED630+13↓r
                                        ; sub_1403ED660+DA↓r
                align 80h
xmmword_14000F300 xmmword 0E9B5DBA5B5C0FBCF71374491428A2F98h
                                        ; DATA XREF: sub_1403EBF54+A3↓r
                                        ; sub_1403ED85C+377↓o ...
xmmword_14000F310 xmmword 0AB1C5ED5923F82A459F111F13956C25Bh
                                        ; DATA XREF: sub_1403EBF54+DA↓r
xmmword_14000F320 xmmword 550C7DC3243185BE12835B01D807AA98h
                                        ; DATA XREF: sub_1403EBF54+F5↓r
xmmword_14000F330 xmmword 0C19BF1749BDC06A780DEB1FE72BE5D74h
                                        ; DATA XREF: sub_1403EBF54+110↓r
xmmword_14000F340 xmmword 240CA1CC0FC19DC6EFBE4786E49B69C1h
                                        ; DATA XREF: sub_1403EBF54+12B↓r
                                        ; sub_1403EC334+783↓o
xmmword_14000F350 xmmword 76F988DA5CB0A9DC4A7484AA2DE92C6Fh
                                        ; DATA XREF: sub_1403EBF54+152↓r
xmmword_14000F360 xmmword 0BF597FC7B00327C8A831C66D983E5152h
                                        ; DATA XREF: sub_1403EBF54+183↓r
xmmword_14000F370 xmmword 1429296706CA6351D5A79147C6E00BF3h
                                        ; DATA XREF: sub_1403EBF54+1B5↓r
xmmword_14000F380 xmmword 53380D134D2C6DFC2E1B213827B70A85h
                                        ; DATA XREF: sub_1403EBF54+1F1↓r
xmmword_14000F390 xmmword 92722C8581C2C92E766A0ABB650A7354h
                                        ; DATA XREF: sub_1403EBF54+231↓r
xmmword_14000F3A0 xmmword 0C76C51A3C24B8B70A81A664BA2BFE8A1h
                                        ; DATA XREF: sub_1403EBF54+25E↓r
xmmword_14000F3B0 xmmword 106AA070F40E3585D6990624D192E819h
                                        ; DATA XREF: sub_1403EBF54+287↓r
xmmword_14000F3C0 xmmword 34B0BCB52748774C1E376C0819A4C116h
                                        ; DATA XREF: sub_1403EBF54+2BA↓r
xmmword_14000F3D0 xmmword 682E6FF35B9CCA4F4ED8AA4A391C0CB3h
                                        ; DATA XREF: sub_1403EBF54+2EB↓r
xmmword_14000F3E0 xmmword 8CC7020884C8781478A5636F748F82EEh
                                        ; DATA XREF: sub_1403EBF54+324↓r
xmmword_14000F3F0 xmmword 0C67178F2BEF9A3F7A4506CEB90BEFFFAh
                                        ; DATA XREF: sub_1403EBF54+359↓r
xmmword_14000F400 xmmword 0C0D0E0F08090A0B0405060700010203h
                                        ; DATA XREF: sub_1403EBF54+6F↓r
                                        ; sub_1403EBF54+78↓r ...
                align 20h
ymmword_14000F420 ymmword 03020100070605040B0A09080F0E0D0C03020100070605040B0A09080F0E0D0C
                                        ; DATA XREF: sub_1403EE208+1E9↓r
qword_14000F440 dq 200001E0201h, 800010201h, 400190201h, 300190301h, 3001A0301h
                                        ; DATA XREF: sub_1403EF0A8+4A↓o
                dq 200000201h, 200090201h, 10001C0201h, 1000050107h, 40000120107h
                dq 40001D0107h, 10000130107h, 8000080107h
aV1005VbRelease db 'v100.5_vb_release_svc_2021-10-19T12:58:38_2021-10-19T12:58:38',0
                                        ; DATA XREF: .data:off_140C002C8↓o
                align 8
                dq 0FFFFFFFF00000000h
qword_14000F4F0 dq 41840B3EA3BCB875h    ; DATA XREF: RtlRaiseCustomSystemEventTrigger+38↓r
                                        ; sub_14091ABC8+83↓o
qword_14000F4F8 dq 1589012FA3BC1075h    ; DATA XREF: sub_1409930F4+EC9↓o
                                        ; sub_140A3CC14+BF4↓o
                dq 200000000h           ; DATA XREF: sub_1403EF954+1B↓o
                                        ; sub_1403EFE20+1B↓o ...
qword_14000F508 dq 41C6013DA3BD3075h    ; DATA XREF: sub_1408F0214+F9↓o
                dq 280032EA3BC0875h     ; DATA XREF: sub_14087FFE4+77↓o
                                        ; sub_140A3A7B8+240↓o
                dq 41C60320A3BC0875h    ; DATA XREF: MmMarkPhysicalMemoryAsBad+1EB↓o
                dq 28F0222A3BC6875h     ; DATA XREF: sub_1406667E0+61D↓o
                dq 41840B3EA3BC3875h    ; DATA XREF: sub_1407A9004+4B2↓o
                dq 41C6013DA3BD1875h    ; DATA XREF: sub_1408F0214+155↓o
                dq 0F00031000001Dh, 8000000000000000h
                                        ; DATA XREF: sub_1405CF7B4+1C0↓o
qword_14000F548 dq 1000031000001Fh, 8000000000000000h
                                        ; DATA XREF: sub_1405D00B0+31F↓o
byte_14000F558  db 8Dh, 0               ; DATA XREF: sub_140252760+1E409A↓o
                                        ; sub_140252B20+1E3E3D↓o
                align 4
                dd 770004h
                dq 80h
qword_14000F568 dq 0F00021000001Eh, 8000000000000000h
                                        ; DATA XREF: sub_1405CF7B4+210↓o
qword_14000F578 dq 0E00031001001Bh, 8000000000000000h
                                        ; DATA XREF: sub_1405D0C08+1F5↓o
qword_14000F588 dq 0BD000411000099h, 2000000000000020h
                                        ; DATA XREF: sub_1408E4288+104↓o
                                        ; sub_1408E4468:loc_1408E44A6↓o
qword_14000F598 dq 208000005h, 8000000000000000h
                                        ; DATA XREF: sub_1405F75C0+200301↓o
qword_14000F5A8 dq 7000200000013h, 40h  ; DATA XREF: sub_14024F4C0+ABB↓o
                                        ; sub_14036C844+121974↓o ...
qword_14000F5B8 dq 4BA82E50ABF1F586h, 0B70D6F4E04498D92h
                                        ; DATA XREF: sub_140A400D0+82E↓o
                dq 0C40004110000A0h, 2000000000000020h
                                        ; DATA XREF: sub_1407C6CCC+991EF↓o
                                        ; sub_1407C6CCC+99210↓o
qword_14000F5D8 dq 7600040000008Ch, 20h ; DATA XREF: sub_14031DB70+153AC7↓o
qword_14000F5E8 dq 3000400000003h, 1    ; DATA XREF: sub_140522A0C:loc_140522BBF↓o
qword_14000F5F8 dq 7500050000008Bh, 2   ; DATA XREF: sub_140318760+157A67↓o
qword_14000F608 dq 4B4D7B600BF2FB94h, 40F58D652FE86697h
                                        ; DATA XREF: sub_140A3DE0C+122↓o
qword_14000F618 dq 4100040800003Bh, 8000000000000404h
                                        ; DATA XREF: sub_1408E8E70+A9↓o
qword_14000F628 dq 109000410000233h, 4000000000008004h
                                        ; DATA XREF: sub_1408F1430+1F↓o
qword_14000F638 dq 400000005h, 0        ; DATA XREF: sub_140656690+634↓o
qword_14000F648 dq 0C200041100009Eh, 2000000000000020h
                                        ; DATA XREF: sub_1408E4288:loc_1408E4312↓o
                                        ; sub_1408E4538:loc_1408E45CE↓o
qword_14000F658 dq 10000210000020h, 8000000000000000h
                                        ; DATA XREF: sub_1405D00B0:loc_1405D03BF↓o
qword_14000F668 dq 40800000Bh, 8000000000000000h
                                        ; DATA XREF: sub_1408765C8+85↓o
qword_14000F678 dq 0C80004110000A4h, 2000000000000020h
                                        ; DATA XREF: sub_14056FB2C+8↓o
qword_14000F688 dq 0E00021001001Ch, 8000000000000000h
                                        ; DATA XREF: sub_1405D0C08+256↓o
qword_14000F698 dq 8010400000015h, 80h  ; DATA XREF: sub_14094A350+A5↓o
qword_14000F6A8 dq 0D000310010019h, 8000000000000000h
                                        ; DATA XREF: sub_1405CFB74+2B8↓o
qword_14000F6B8 dq 10B0210000005h, 8000000000000010h
                                        ; DATA XREF: sub_1406DA480+24F↓o
                                        ; sub_1406DA480+275↓o
qword_14000F6C8 dq 11000010000021h, 8000000000000000h
                                        ; DATA XREF: sub_1405D0064+20↓o
qword_14000F6D8 dq 20800000Fh, 8000000000000000h
                                        ; DATA XREF: sub_1403B3ED8+71↓o
                                        ; sub_1403B3ED8+A9↓o ...
qword_14000F6E8 dq 20E0210010003h, 8000000000000010h
                                        ; DATA XREF: sub_1406DA480+341↓o
                                        ; sub_14093B738+2B↓o
qword_14000F6F8 dq 4901041000004Bh, 4000000000000010h
                                        ; DATA XREF: sub_1402B3030:loc_1402B3143↓o
qword_14000F708 dq 319021000001Ch, 8000000000000A20h
                                        ; DATA XREF: sub_140607D1C+183↓o
                                        ; sub_14077D728+B2↓o ...
qword_14000F718 dq 11000310000022h, 8000000000000000h
                                        ; DATA XREF: sub_1405D0064+16↓o
qword_14000F728 dq 0D00021001001Ah, 8000000000000000h
                                        ; DATA XREF: sub_1405CFB74+2FB↓o
qword_14000F738 dq 0BF00041100009Bh, 2000000000000020h
                                        ; DATA XREF: sub_1407C6C80+991B5↓o
                                        ; sub_1407C6C80+991D6↓o
qword_14000F748 dq 4902041000004Ch, 4000000000000010h
                                        ; DATA XREF: sub_1402B3030:loc_1402B3473↓o
qword_14000F758 dq 4A938242A103CABDh, 0A6263F3BDF1CF58Dh
                                        ; DATA XREF: sub_140A400D0+803↓o
aMinkernelHalsL_3 db 'minkernel\hals\lib\interrupts\common\connect.c',0
                                        ; DATA XREF: sub_140378518+11BBAC↓o
                                        ; sub_140378B3C+11B66B↓o ...
                align 8
aMinkernelHalsL_1 db 'minkernel\hals\lib\interrupts\common\intrupt.c',0
                                        ; DATA XREF: sub_140345F30+139042↓o
                                        ; sub_1403A375C+101EB8↓o ...
                align 8
xmmword_14000F7C8 xmmword 3F05139760008FB011D046F0CB3A4002h
                                        ; DATA XREF: sub_1408A1248:loc_1408A1385↓r
                                        ; sub_1408A1518+56↓o ...
; ---------------------------------------------------------------------------

loc_14000F7D8:                          ; DATA XREF: sub_1408A1518+72↓o
                                        ; sub_1408ACBB0+61↓o ...
                add     eax, [rax+3Ah]
                retf
; ---------------------------------------------------------------------------
                dd 11D046F0h
                dq 3F05139760008FB0h
aSmtBlocked     db 'SMT=BLOCKED',0      ; DATA XREF: sub_140A6F168+60↓o
                align 8
aSafeboot       db 'SAFEBOOT:',0        ; DATA XREF: sub_140A6F168+C7↓o
                align 4
aOnecpu         db 'ONECPU',0           ; DATA XREF: sub_140A6F168+D6↓o
                align 10h
aUseplatformtic db 'USEPLATFORMTICK',0  ; DATA XREF: sub_140A6F168:loc_140A6F4A3↓o
aHaltprofilingp_1 db 'HALTPROFILINGPOLICY=BLOCKED',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F511↓o
                align 20h
aX2apicpolicyEn db 'X2APICPOLICY=ENABLE',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F314↓o
                align 8
aMaxprocsperclu db 'MAXPROCSPERCLUSTER',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F28E↓o
                align 10h
aUselegacyapicm db 'USELEGACYAPICMODE',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F34A↓o
                align 8
aForcemsi       db 'FORCEMSI',0         ; DATA XREF: sub_140A6F168:loc_140A6F408↓o
                align 8
aX2apicpolicyDi db 'X2APICPOLICY=DISABLE',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F32F↓o
                align 10h
aMaxapiccluster db 'MAXAPICCLUSTER',0   ; DATA XREF: sub_140A6F168:loc_140A6F2D6↓o
                align 20h
aMsipolicyForce db 'MSIPOLICY=FORCEDISABLE',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F3F0↓o
                align 8
aFirstmegabytep db 'FIRSTMEGABYTEPOLICY=USEALL',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F45B↓o
                align 8
aHaltprofilingp_0 db 'HALTPROFILINGPOLICY=RESTRICTED',0
                                        ; DATA XREF: sub_140A6F168+3C7↓o
                align 8
aBreak          db 'BREAK',0            ; DATA XREF: sub_140A6F168:loc_140A6F273↓o
                align 20h
aUsephysicalapi db 'USEPHYSICALAPIC',0  ; DATA XREF: sub_140A6F168:loc_140A6F258↓o
aSystemwatchdog_0 db 'SYSTEMWATCHDOGPOLICY=PHYSICALONLY',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F3BA↓o
                align 8
aHaltprofilingp db 'HALTPROFILINGPOLICY=RELAXED',0
                                        ; DATA XREF: sub_140A6F168+3B8↓o
                align 8
aUseplatformclo db 'USEPLATFORMCLOCK',0 ; DATA XREF: sub_140A6F168:loc_140A6F488↓o
                align 10h
aConfigaccesspo db 'CONFIGACCESSPOLICY=DISALLOWMMCONFIG',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F3D5↓o
                align 8
aTscsyncpolicyE db 'TSCSYNCPOLICY=ENHANCED',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F37F↓o
                align 10h
aGroupsize_0    db 'GROUPSIZE',0        ; DATA XREF: sub_140A6F168:loc_140A6F4BE↓o
                align 20h
aSystemwatchdog db 'SYSTEMWATCHDOGPOLICY=DISABLED',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F39D↓o
                align 20h
aTscsyncpolicyL db 'TSCSYNCPOLICY=LEGACY',0
                                        ; DATA XREF: sub_140A6F168:loc_140A6F365↓o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14000FA18   proc near               ; DATA XREF: sub_140570818+2AE↓o
                                        ; INIT:0000000140A9AAC0↓o
                mov     r11b, 5Bh ; '['
                pop     rsp
                sub     [rbp+0B9D4EE2h], ebp
                sub     esp, cs:0C17B094Fh

loc_14000FA28:                          ; DATA XREF: sub_140570818+3B1↓o
                mov     esi, 709FE527h
                sbb     ebx, edx
                xchg    rax, rbx
                or      eax, 0B417CF7Bh
                xchg    rax, r8
sub_14000FA18   endp ; sp-analysis failed

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0BDh, 34h, 1Ah, 6Bh, 7Eh, 2Eh, 44h
                dq 848E37EFB664D0A9h
qword_14000FA48 dq 4094B817BA3E0F4Dh    ; DATA XREF: sub_140780940+D0949↓r
                                        ; sub_1408E5680+13↓r ...
qword_14000FA50 dq 0F3A0E67963D5D1A2h   ; DATA XREF: sub_140780940+D0955↓r
                                        ; sub_1408E5680+1F↓r ...
aMinkernelHalsL_4 db 'minkernel\hals\lib\interrupts\common\intsup.c',0
                                        ; DATA XREF: sub_140378C7C+11B65F↓o
                                        ; sub_1403A3648+101DD4↓o ...
                align 8
aEnablebxworkar:                        ; DATA XREF: sub_14099C1F0+7D↓o
                text "UTF-16LE", 'EnableBXWorkAround',0
                align 10h
aServicesAcpiPa:                        ; DATA XREF: sub_14099C1F0+93↓o
                text "UTF-16LE", 'Services\ACPI\Parameters',0
                align 8
aControlHal:                            ; DATA XREF: sub_14099C1F0+A9↓o
                text "UTF-16LE", 'Control\HAL',0
aRegistryMachin_128:                    ; DATA XREF: sub_14099C1F0+C2↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\SYSTEM\CURRENTCONTROLSET',0
                align 8
aMinkernelHalsL_12 db 'minkernel\hals\lib\acpi\xxacpi.c',0
                                        ; DATA XREF: sub_14099C1F0+5F6↓o
                align 20h
qword_14000FB80 dq 325A325A1426325Ah, 0Bh dup(325A325A325A325Ah), 325A325A3258325Ah
                                        ; DATA XREF: sub_1403655C0↓o
                dq 13h dup(325A325A325A325Ah), 4 dup(172E172E172E172Eh)
                dq 4 dup(1937193719371937h), 2A27325A042B0424h, 325A325A2B4F2B4Fh
                dq 2A28325A052B0524h, 0C45325A2B502B50h, 2A2908410C570C57h
                dq 214121410B410A41h, 2A2A1527325A325Ah, 214121412E542E53h
                dq 325A325A0C560C56h, 325A325A325A325Ah, 325A325A325A3155h
                dq 0Dh dup(325A325A325A325Ah)
aOSygSydAGaSyAG:                        ; DATA XREF: sub_140A3A394+15↓o
                text "UTF-16LE", 'O:SYG:SYD:(A;;GA;;;SY)(A;;GA;;;BA)',0
                align 10h
aOSygSydAGrSyAG:                        ; DATA XREF: sub_140A3A7B8+88↓o
                text "UTF-16LE", 'O:SYG:SYD:(A;;GR;;;SY)(A;;GR;;;BA)(A;;GR;;;IU)(A;;G'
                text "UTF-16LE", 'R;;;AU)(A;;GR;;;AC)(A;;GR;;;S-1-5-32-1045063015-423'
                text "UTF-16LE", '899465-3012769174-65638258-1865874412-2349348127-76'
                text "UTF-16LE", '3856749-1075684855)(A;;GR;;;S-1-15-3-1024-104506301'
                text "UTF-16LE", '5-423899465-3012769174-65638258-1865874412-23493481'
                text "UTF-16LE", '27-763856749-1075684855)(A;;GR;;;S-1-5-80-297061257'
                text "UTF-16LE", '4-78537857-698502321-558674196-1451644582)(A;;GR;;;'
                text "UTF-16LE", 'S-1-15-3-1024-1502825166-1963708345-2616377461-2562'
                text "UTF-16LE", '897074-4192028372-3968301570-1997628692-1435953622)'
                text "UTF-16LE", 0
qword_140010168 dq 4E8552D648F96463h, 4E26174EC1F2029Ch
                                        ; DATA XREF: sub_14087FFE4+8D↓o
                                        ; sub_14087FFE4+DB↓o ...
qword_140010178 dq 4C4E064CA97524F6h, 0D70C387CC1A4BB7h
                                        ; DATA XREF: sub_1408894CC+BA↓o
qword_140010188 dq 408000001h, 8000400000000000h
                                        ; DATA XREF: sub_1403CECF8+107↓o
qword_140010198 dq 3080000A1h, 8000400000000000h
                                        ; DATA XREF: sub_1403CECF8+172↓o
qword_1400101A8 dq 44FD8B8ECC99192Bh    ; DATA XREF: sub_140570818+8E↓r
                                        ; sub_140570818+C2↓r ...
qword_1400101B0 dq 294D1B1462EFA9B0h    ; DATA XREF: sub_140570818+9B↓r
                                        ; sub_140570818+D3↓r ...
qword_1400101B8 dq 2BE0104000002BEh, 1400000h
                                        ; DATA XREF: sub_140510098+67↓o
qword_1400101C8 dq 2BC0104000002BCh, 1400000h
                                        ; DATA XREF: sub_140510158+99↓o
qword_1400101D8 dq 2BC0204000002BDh, 1400000h
                                        ; DATA XREF: sub_140707F04+1D0↓o
qword_1400101E8 dq 2BE0204000002BFh, 1400000h
                                        ; DATA XREF: sub_1405DE218+20DC31↓o
byte_1400101F8  db 0CCh                 ; DATA XREF: sub_140A54474+9B2↓o
                align 2
                dw 1102h, 4, 0CCh
                dq 2000000000000020h
aDriverenum:                            ; DATA XREF: sub_1407483F4:loc_140748465↓o
                                        ; sub_1408B043C+3C↓o ...
                text "UTF-16LE", 'DRIVERENUM',0
                align 20h
dword_140010220 dd 1                    ; DATA XREF: sub_14099FD74:loc_14099FE32↓r
                                        ; sub_14099FD74+4891↓r ...
dword_140010224 dd 1                    ; DATA XREF: sub_14099FD74+DD↓r
                                        ; sub_14099FD74+4883↓r
dword_140010228 dd 2                    ; DATA XREF: sub_14099FD74+D5↓r
                                        ; sub_14099FD74+487B↓r
dword_14001022C dd 0Ch                  ; DATA XREF: sub_14099FD74+9E↓r
qword_140010230 dq 80000h               ; DATA XREF: sub_14099FD74+104↓r
                                        ; sub_14099FD74+127↓r ...
                dq 20000000001h, 0C00000002h, 800000000000h, 200000000001h
                dq 100000002h, 0
                dq 2000000000001h, 0C00000002h, 40000000000h, 8000000000001h
                dq 0C00000002h, 1000000000000h, 10000000000001h, 0C00000002h
                dq 2000000000000h, 1000000000000001h, 0C00000002h, 4000000000000h
                dq 4000000000000001h, 0C00000002h, 100000000h, 20000000000001h
                dq 0C00000003h, 200h, 200000000006h, 400000C00000000h
                dq 8000000000h, 200000006h, 400000C00000002h, 400000h
                dq 100000007h, 600000C00000001h, 10000000h, 2000000007h
                dq 0C00000001h, 8000000000000h, 8000000007h, 0C00000001h
                dq 1, 40000000007h, 0C00000001h, 200000000000h, 1000000000007h
                dq 0C00000001h, 10000000000000h, 10000000000007h, 0C00000001h
                dq 200000000h, 80000000000007h, 400000C00000001h, 800000000h
                dq 100000000000007h, 400000C00000001h, 1000000000h, 400000007h
                dq 1400000002h, 4, 40000000000007h, 1400000002h, 2, 40000000007h
                dq 1400000003h, 8, 800000000007h, 400000C00000003h, 20000000000000h
                dq 400000000000007h, 0C00001400000003h, 0A00h, 800000000000007h
                dq 0C00001400000003h, 0C00h, 1000000000000007h, 1400000003h
                dq 1, 2000000000000007h, 1400000003h, 40h, 8000000000000007h
                dq 0C00001400000003h, 1000h, 180000001h, 100000002h, 0
                dq 2000000080000001h, 200001400000002h, 2000h, 80080000001h
                dq 100000003h, 0
                dq 10000080000001h, 400000100000003h, 0
                dq 400000080000001h, 0C00000003h, 2000000000h, 800000080000001h
                dq 0C00000003h, 400000000h, 8000000080000001h, 0C00000003h
                dq 4000h, 100080000008h, 200001400000001h, 800h, 400080000008h
                dq 200001400000001h, 200h, 800080000008h, 200001400000001h
                dq 400h, 1000000080000008h, 200001400000001h, 20000h, 2000000080000008h
                dq 200001400000001h, 1000000h, 4000000080000008h, 200001400000001h
                dq 2000000h, 1000000080000021h, 200001400000000h, 200000000h
                dq 2000000080000021h, 200001400000000h, 400000000h
qword_140010628 dq 0FFFFFFFFFFFE7960h   ; DATA XREF: sub_140224260:loc_140429AEE↓o
                                        ; sub_140224260:loc_140429B2E↓o ...
qword_140010630 dq 0FFFFFFFFFD050F80h   ; DATA XREF: sub_140290060:loc_140290129↓o
                                        ; sub_140290060:loc_1402903CF↓o ...
qword_140010638 dq 42F083DBC89EC9D3h, 0AF10F14BCC980D8Dh
                                        ; DATA XREF: sub_14079AB10+41C↓o
qword_140010648 dq 0                    ; DATA XREF: .rdata:0000000140008148↑o
                                        ; .rdata:0000000140008150↑o ...
asc_140010650:                          ; DATA XREF: .rdata:0000000140009618↑o
                                        ; sub_140969B24+94↓o ...
                text "UTF-16LE", '\\?\',0
                align 20h
qword_140010660 dq 0FFFFFFFFFFF0BDC0h   ; DATA XREF: NtSetInformationProcess:loc_1406A347B↓o
                                        ; sub_14068BF38:loc_140813942↓o ...
                dq 3000000020001h, 1F000100020000h
                                        ; DATA XREF: RtlCheckTokenCapability+2BC↓o
qword_140010678 dq 4F7C0DAF472496CFh, 0BBC6EC57843F2EACh
                                        ; DATA XREF: sub_1406AF8C4+FA↓o
qword_140010688 dq 0FFFFFFFFFF676980h   ; DATA XREF: sub_1406DA480+3CE↓o
aSystemrootSyst_0:                      ; DATA XREF: sub_140687200+664↓o
                                        ; sub_140687200+6BC↓o
                text "UTF-16LE", '\SystemRoot\System32\win32k.sys',0
aSilotimezonema:                        ; DATA XREF: sub_1405D10F4+10↓o
                                        ; sub_1405D1364+7↓o
                text "UTF-16LE", 'SiloTimeZoneMarker',0
                align 8
aTimezoneinform:                        ; DATA XREF: sub_1405D1124+4A↓o
                                        ; sub_1405D1364+22↓o
                text "UTF-16LE", 'TimeZoneInformation',0
aTimezonevirtua:                        ; DATA XREF: sub_1405D125C+29↓o
                text "UTF-16LE", 'TimeZoneVirtualizationSupported',0
aActivetimebias:                        ; DATA XREF: sub_1405D125C+81↓o
                text "UTF-16LE", 'ActiveTimeBias',0
                align 20h
aSha256:                                ; DATA XREF: sub_1407AB8BC+1B↓o
                text "UTF-16LE", 'SHA256',0
                align 10h
qword_140010790 dq 418A073AA3BC7C75h    ; DATA XREF: sub_1403F8DE4+58↓r
qword_140010798 dq 418A073AA3BC8075h    ; DATA XREF: sub_1403F8DE4+1A6↓r
aShimExceptionX db 'Shim Exception %#x in module "%hs", line %d, at address %Ix. flag'
                                        ; DATA XREF: sub_140752308+96AB4↓o
                db 's:%#x. !exr %#p !cxr %#p',0
                align 20h
aShimexceptionh db 'ShimExceptionHandler',0
                                        ; DATA XREF: sub_140752308+96AC1↓o
                align 8
asc_140010818:                          ; DATA XREF: sub_140969B24+AB↓o
                                        ; sub_14096B5A8+CA↓o
                text "UTF-16LE", '\\.\',0
                align 4
asc_140010824:                          ; DATA XREF: sub_140750834+ECA0C↓o
                                        ; sub_140969B24+C8↓o ...
                text "UTF-16LE", '\\',0
                align 10h
aUnc_0:                                 ; DATA XREF: sub_1407507BC:loc_14083D1E8↓o
                                        ; sub_140969B24+55↓o ...
                text "UTF-16LE", '\??\UNC\',0
                align 8
aAslppathwildca_4 db 'AslpPathWildcardPeekNode failed [%x]',0
                                        ; DATA XREF: sub_14096A6CC+16C↓o
                                        ; sub_14096A6CC:loc_14096AF41↓o
                align 10h
aAslppathwildca_5 db 'AslpPathWildcardPopNode',0
                                        ; DATA XREF: sub_14096A6CC+179↓o
aRtlarrayinitia db 'RtlArrayInitialize failed [%x]',0
                                        ; DATA XREF: sub_14096A0FC+369↓o
                align 8
aAslppathwildca db 'AslpPathWildcardInitStack',0
                                        ; DATA XREF: sub_14096A0FC+37A↓o
                align 8
aRtlarraygetFai db 'RtlArrayGet failed to get the next node',0
                                        ; DATA XREF: sub_14096A6CC:loc_14096A811↓o
                                        ; sub_14096A6CC:loc_14096AF17↓o
aAslppathwildca_3 db 'AslpPathWildcardPeekNode',0
                                        ; DATA XREF: sub_14096A6CC+152↓o
                                        ; sub_14096A6CC+858↓o
                align 10h
aVarfileinfoTra:                        ; DATA XREF: sub_1407B2270:loc_1407B230B↓o
                text "UTF-16LE", '\VarFileInfo\Translation',0
                align 8
aAslpfileverque_0 db 'AslpFileVerQueryBlock failed [%x]',0
                                        ; DATA XREF: sub_1407B2270+21F↓o
                                        ; sub_1407B2710:loc_14085A142↓o ...
                align 10h
aAslpfilemakest db 'AslpFileMakeStringVersionAttributes',0
                                        ; DATA XREF: sub_1407B2270:loc_1407B25DA↓o
                align 8
aAslstringxmlsa db 'AslStringXmlSanitize failed [%x]',0
                                        ; DATA XREF: sub_1407B2270:loc_1407B25AF↓o
                                        ; sub_14096C378+11D↓o ...
                align 20h
aAslpfilequeryv db 'AslpFileQueryVersionString failed [%x]',0
                                        ; DATA XREF: sub_1407B2270:loc_1407B25C9↓o
                align 8
asc_1400109E8   db '-',0                ; DATA XREF: sub_140722DF0+4↓o
                                        ; sub_14096EB3C+53↓o ...
                align 10h
; Debug Directory entries
                dd 0                    ; Characteristics
                dd 0AD941E79h           ; TimeDateStamp
                dw 0                    ; MajorVersion
                dw 0                    ; MinorVersion
                dd 2                    ; Type: IMAGE_DEBUG_TYPE_CODEVIEW
                dd 25h                  ; SizeOfData
                dd rva asc_140040990    ; AddressOfRawData
                dd 40190h               ; PointerToRawData
                dd 0                    ; Characteristics
                dd 0AD941E79h           ; TimeDateStamp
                dw 0                    ; MajorVersion
                dw 0                    ; MinorVersion
                dd 0Dh                  ; Type: IMAGE_DEBUG_TYPE_POGO
                dd 1558h                ; SizeOfData
                dd rva qword_1400409B8  ; AddressOfRawData
                dd 401B8h               ; PointerToRawData
                dd 0                    ; Characteristics
                dd 0AD941E79h           ; TimeDateStamp
                dw 0                    ; MajorVersion
                dw 0                    ; MinorVersion
                dd 10h                  ; Type: IMAGE_DEBUG_TYPE_REPRO
                dd 24h                  ; SizeOfData
                dd rva dword_140041F64  ; AddressOfRawData
                dd 41764h               ; PointerToRawData
                align 8
off_140010A48   dq offset HalRequestSoftwareInterrupt
                                        ; DATA XREF: sub_1403FED90+B8↓r
                                        ; sub_1403FF6E0+B8↓r ...
off_140010A50   dq offset KeFlushCurrentTbImmediately
                                        ; DATA XREF: sub_1403BBB30+7↓r
off_140010A58   dq offset RtlCopyMemoryNonTemporal
                                        ; DATA XREF: sub_1405948E0+49↓r
off_140010A60   dq offset ZwPowerInformation
                                        ; DATA XREF: sub_1407CE238+100↓r
off_140010A68   dq offset ZwClose       ; DATA XREF: sub_140718BB8+D2↓r
                                        ; sub_140984848+1C6↓r
off_140010A70   dq offset ZwQueryValueKey
                                        ; DATA XREF: sub_140718BB8+99↓r
off_140010A78   dq offset ZwOpenKey     ; DATA XREF: sub_140718BB8+65↓r
off_140010A80   dq offset KeBugCheckEx  ; DATA XREF: sub_1403762B0+11CE13↓r
                                        ; sub_1403762B0+11CE92↓r
off_140010A88   dq offset RtlCaptureContext
                                        ; DATA XREF: sub_140984548+132↓r
off_140010A90   dq offset ZwWriteFile   ; DATA XREF: sub_140984848+DD↓r
                                        ; sub_140984848+12C↓r ...
jpt_14030A34F   dd offset loc_14030AB13 - 140000000h
                                        ; DATA XREF: sub_14030A300+44↓r
                dd offset loc_14030A870 - 140000000h ; jump table for switch statement
                dd offset loc_14030AC3C - 140000000h
                dd offset loc_14030AD2B - 140000000h
                dd offset loc_14030A795 - 140000000h
                dd offset loc_14030A8AF - 140000000h
                dd offset loc_14030A7F0 - 140000000h
                dd offset loc_14030A72F - 140000000h
                dd offset loc_14030A9E8 - 140000000h
                dd offset loc_14030A6CF - 140000000h
                dd offset loc_14030A5D1 - 140000000h
                dd offset loc_14030AB6E - 140000000h
                dd offset loc_14030A99E - 140000000h
                dd offset loc_14030ACE1 - 140000000h
                dd offset loc_14030A954 - 140000000h
                dd offset loc_14030ABF2 - 140000000h
                dd offset loc_14030A4AA - 140000000h
                dd offset loc_14030A3C8 - 140000000h
                dd offset loc_14030AC97 - 140000000h
                dd offset loc_14030A355 - 140000000h
                dd offset loc_14030A90A - 140000000h
                dd offset loc_14030A631 - 140000000h
                dd offset loc_14030A53E - 140000000h
                dd offset loc_14030A4F4 - 140000000h
                dd offset loc_14030AABD - 140000000h
                dd offset loc_14030A459 - 140000000h
                dd offset loc_14030AA69 - 140000000h
                dd offset loc_14030ABCE - 140000000h
                dd offset loc_14030A5AF - 140000000h
                dd offset loc_14030A588 - 140000000h
                dd offset loc_14030A6A8 - 140000000h
jpt_14021B83F   dd offset loc_14021B757 - 140000000h
                                        ; DATA XREF: sub_14021B6A0+195↓r
                dd offset def_14021B83F - 140000000h ; jump table for switch statement
                dd offset loc_14021B845 - 140000000h
                dd offset loc_140427D90 - 140000000h
                dd offset loc_140427DF8 - 140000000h
                dd offset loc_14021B757 - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset def_14021B83F - 140000000h
                dd offset loc_140427DF8 - 140000000h
jpt_1402054E6   dd offset loc_1402050E9 - 140000000h, offset loc_1402050E9 - 140000000h
                                        ; DATA XREF: sub_140204F20+5BC↓r
                dd offset loc_1402050E9 - 140000000h, offset loc_1402050E9 - 140000000h ; jump table for switch statement
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset loc_1402050E9 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset loc_1402050E9 - 140000000h
                dd offset loc_1402050E9 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset loc_14020541E - 140000000h
                dd offset loc_14020541E - 140000000h, offset loc_14020541E - 140000000h
                dd offset loc_14020541E - 140000000h, offset loc_14020541E - 140000000h
                dd offset loc_14020541E - 140000000h, offset def_1402054E6 - 140000000h
                dd offset loc_1402054EC - 140000000h, offset loc_14020541E - 140000000h
                dd offset loc_140420322 - 140000000h, offset loc_14042041B - 140000000h
                dd offset loc_140420322 - 140000000h, offset loc_14042041B - 140000000h
                dd offset loc_1402054EC - 140000000h, offset loc_14020541E - 140000000h
                dd offset loc_14020541E - 140000000h, offset loc_140420322 - 140000000h
                dd offset loc_14042041B - 140000000h, offset loc_140420322 - 140000000h
                dd offset loc_14042041B - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset loc_140420170 - 140000000h
                dd offset loc_140420170 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset loc_140420289 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset def_1402054E6 - 140000000h, offset def_1402054E6 - 140000000h
                dd offset loc_14020512A - 140000000h, offset loc_14020512A - 140000000h
                dd offset loc_14020512A - 140000000h, offset loc_14020512A - 140000000h
                align 10h
qword_140010F50 dq 100000001h, 2100000020h, 100000003h, 2100000023h
                                        ; DATA XREF: sub_14061BEE0+7B↓o
xmmword_140010F70 xmmword 1000000000000000300000002h
                                        ; DATA XREF: sub_1402A3050+15↓r
xmmword_140010F80 xmmword 326DA0C9A000EF8F11D1C9AF50708874h
                                        ; DATA XREF: FsRtlNotifyVolumeEventEx:loc_14069C6A3↓r
xmmword_140010F90 xmmword 326DA0C9A000FD8F11D21059D16A55E8h
                                        ; DATA XREF: FsRtlNotifyVolumeEventEx:loc_14069C6C1↓r
xmmword_140010FA0 xmmword 326DA0C9A000EF8F11D1D0CB9A8C3D68h
                                        ; DATA XREF: FsRtlNotifyVolumeEventEx:loc_14069C6CA↓r
qword_140010FB0 dq 1010101010101000h, 3 dup(1010101010101010h), 1717171717180717h
                                        ; DATA XREF: .rdata:FsRtlLegalAnsiCharacterArray↑o
                                        ; FsRtlDoesNameContainWildCards+1B↓o ...
                dq 7171616181717h, 1717171717171717h, 1818161816041717h
                dq 3 dup(1717171717171717h), 1717160016171717h, 3 dup(1717171717171717h)
                dq 1717171017171717h
xmmword_140011030 xmmword 88A035AD045B6AA4E656DDCE0E429FFh
                                        ; DATA XREF: sub_1405ECB84+12↓r
xmmword_140011040 xmmword 40000000000000000003010411000016h
                                        ; DATA XREF: sub_1405F8E80:loc_1405F8F6E↓r
xmmword_140011050 xmmword 4000000000000000000302041100001Fh
                                        ; DATA XREF: sub_1405F9704+18↓r
qword_140011060 dq 100000000h, 700000003h, 1F0000000Fh, 7F0000003Fh, 1FF000000FFh
                                        ; DATA XREF: sub_14020A5E0+59↓o
                                        ; sub_14020A6DC+3D↓o ...
                dq 7FF000003FFh, 1FFF00000FFFh, 7FFF00003FFFh, 1FFFF0000FFFFh
                dq 7FFFF0003FFFFh, 1FFFFF000FFFFFh, 7FFFFF003FFFFFh, 1FFFFFF00FFFFFFh
                dq 7FFFFFF03FFFFFFh, 1FFFFFFF0FFFFFFFh, 7FFFFFFF3FFFFFFFh
                dq 0FFFFFFFFh, 0
qword_1400110F0 dq 1000200010009h, 1000200010003h, 1000200010004h, 1000200010003h
                                        ; DATA XREF: RtlSidHashLookup:loc_14021C75E↓o
                                        ; RtlSidHashLookup+D7↓o ...
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010006h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010007h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010006h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
xmmword_1400111F0 xmmword 0EA1BF0FD5FA076B64DF1B08B41621A14h
                                        ; DATA XREF: FsRtlCheckOplockEx2+17F↓r
                                        ; sub_1403426F8+71↓r
xmmword_140011200 xmmword 7F8DCE50C3FE63984BE7305048850596h
                                        ; DATA XREF: FsRtlCheckOplockEx2+1B1↓r
                                        ; sub_1403426F8+9F↓r
qword_140011210 dq 400000004h, 0C00000008h, 400000002h, 0C0000000Ah
                                        ; DATA XREF: sub_140657E50+B4↓o
dword_140011230 dd 1                    ; DATA XREF: sub_14063E5A0+294↓r
                                        ; sub_1406580D0+15E↓o ...
                dd 0Bh
                dq 0BB00000011h, 0B0000000Fh, 0BB000000FFh
dword_140011250 dd 1                    ; DATA XREF: sub_1402675F0+DE↓o
                                        ; sub_1402851E0+651↓r ...
                dd 2
                dq 2000000010h, 800000004h, 8000000040h, 20200000001h
                dq 22000000210h, 20800000204h, 28000000240h, 10200000001h
                dq 12000000110h, 10800000104h, 18000000140h, 40200000001h
                dq 42000000410h, 40800000404h, 48000000440h
qword_1400112D0 dq 40000000h, 200000h, 10000h, 1000h
                                        ; DATA XREF: sub_140292240+1F↓o
qword_1400112F0 dq 706050403020100h, 0F0E0D0C0B0A0908h, 1716151413121110h
                                        ; DATA XREF: sub_14029F620+33↓o
                                        ; sub_14029F620+34F↓o ...
                dq 1F1E1D1C1B1A1918h, 2726252423222120h, 2F2E2D2C2B2A2928h
                dq 3736353433323130h, 3F3E3D3C3B3A3938h, 4242424141414140h
                dq 4444444343434342h, 4646464545454544h, 4848484747474746h
                dq 4A4A4A4949494948h, 4C4C4C4B4B4B4B4Ah, 4E4E4E4D4D4D4D4Ch
                dq 5050504F4F4F4F4Eh, 5151515151515150h, 5252525252525251h
                dq 5353535353535352h, 5454545454545453h, 5555555555555554h
                dq 5656565656565655h, 5757575757575756h, 5858585858585857h
                dq 5959595959595958h, 5A5A5A5A5A5A5A59h, 5B5B5B5B5B5B5B5Ah
                dq 5C5C5C5C5C5C5C5Bh, 5D5D5D5D5D5D5D5Ch, 5E5E5E5E5E5E5E5Dh
                dq 5F5F5F5F5F5F5F5Eh, 606060606060605Fh, 6161616161616160h
                dq 6161616161616161h, 6262626262626261h, 6262626262626262h
                dq 6363636363636362h, 6363636363636363h, 6464646464646463h
                dq 6464646464646464h, 6565656565656564h, 6565656565656565h
                dq 6666666666666665h, 6666666666666666h, 6767676767676766h
                dq 6767676767676767h, 6868686868686867h, 6868686868686868h
                dq 6969696969696968h, 6969696969696969h, 6A6A6A6A6A6A6A69h
                dq 6A6A6A6A6A6A6A6Ah, 6B6B6B6B6B6B6B6Ah, 6B6B6B6B6B6B6B6Bh
                dq 6C6C6C6C6C6C6C6Bh, 6C6C6C6C6C6C6C6Ch, 6D6D6D6D6D6D6D6Ch
                dq 6D6D6D6D6D6D6D6Dh, 6E6E6E6E6E6E6E6Dh, 6E6E6E6E6E6E6E6Eh
                dq 6F6F6F6F6F6F6F6Eh, 6F6F6F6F6F6F6F6Fh, 707070707070706Fh
                dq 7070707070707070h, 7171717171717170h, 3 dup(7171717171717171h)
                dq 7272727272727271h, 3 dup(7272727272727272h), 7373737373737372h
                dq 3 dup(7373737373737373h), 7474747474747473h, 3 dup(7474747474747474h)
                dq 7575757575757574h, 3 dup(7575757575757575h), 7676767676767675h
                dq 3 dup(7676767676767676h), 7777777777777776h, 3 dup(7777777777777777h)
                dq 7878787878787877h, 3 dup(7878787878787878h), 7979797979797978h
                dq 3 dup(7979797979797979h), 7A7A7A7A7A7A7A79h, 3 dup(7A7A7A7A7A7A7A7Ah)
                dq 7B7B7B7B7B7B7B7Ah, 3 dup(7B7B7B7B7B7B7B7Bh), 7C7C7C7C7C7C7C7Bh
                dq 3 dup(7C7C7C7C7C7C7C7Ch), 7D7D7D7D7D7D7D7Ch, 3 dup(7D7D7D7D7D7D7D7Dh)
                dq 7E7E7E7E7E7E7E7Dh, 3 dup(7E7E7E7E7E7E7E7Eh), 7F7F7F7F7F7F7F7Eh
                dq 3 dup(7F7F7F7F7F7F7F7Fh), 808080808080807Fh, 3 dup(8080808080808080h)
                dq 80h
qword_1400116F8 dq 100000040000h, 100000040h
                                        ; DATA XREF: sub_140660820+4FB↓o
                                        ; sub_140660E00:loc_140660E89↓o ...
xmmword_140011708 xmmword 40000000000000000005020411000026h
                                        ; DATA XREF: sub_14066D38C+18↓r
xmmword_140011718 xmmword 40000000000000000005010411000025h
                                        ; DATA XREF: sub_14066D3E8+27↓r
xmmword_140011728 xmmword 40000000000000000001010411000010h
                                        ; DATA XREF: sub_14066E6A8+15↓r
xmmword_140011738 xmmword 40000000000000000001020411000013h
                                        ; DATA XREF: sub_14066E700+18↓r
xmmword_140011748 xmmword 400000000000000000010A0411000011h
                                        ; DATA XREF: sub_14066FCF8+28↓r
xmmword_140011758 xmmword 400000000000000000030D041100001Ah
                                        ; DATA XREF: sub_14066FF94+1F↓r
xmmword_140011768 xmmword 400000000000000000030E041100001Bh
                                        ; DATA XREF: sub_140674DF0+23↓r
                align 20h
xmmword_140011780 xmmword 3000000020000000100000000h
                                        ; DATA XREF: sub_1402BAD0C:loc_1402BAD4D↓r
                                        ; sub_140686FB0:loc_140687021↓r ...
qword_140011790 dq 0C0000000Dh, 80000000Fh, 1200000007h
                                        ; DATA XREF: sub_1402C76E8+8↓o
                db 0Eh, 3 dup(0)
aSlic           db 'SLIC?',0            ; DATA XREF: sub_1402E6C3C+15↓o
                                        ; sub_1402E9CAC+AC↓r
                dw 3 dup(0FFFFh)
                db 3Fh, 0, 0FFh
                db 0FFh
                dd 0FFFFFFFFh
xmmword_1400117C0 xmmword 3FF00000000000003FFh
                                        ; DATA XREF: sub_1402E9CAC+93↓r
qword_1400117D0 dq 14Ch                 ; DATA XREF: sub_14067C7DC+1C0↓o
                                        ; sub_140695D94+A↓o
xmmword_1400117D8 xmmword 326DA0C9A000FD8F11D21A96B5804878h
                                        ; DATA XREF: FsRtlNotifyVolumeEventEx+66↓r
qword_1400117E8 dq 705070503010218h, 604060403010218h
                                        ; DATA XREF: sub_1406A1E30+1E9↓o
xmmword_1400117F8 xmmword 27A408E6449F6C824FC590DE2A6E185Bh
                                        ; DATA XREF: sub_1406AF6DC+45↓r
qword_140011808 dq 0B0B0B0B0A0A0A01h    ; DATA XREF: sub_140224940+CDC↓o
                                        ; sub_14022CA60+DBE↓o ...
word_140011810  dw 0                    ; DATA XREF: sub_1402369F0+465↓r
                                        ; sub_140317DA0+24↓o ...
                dw 10h, 20h, 30h
aPP:
                text "UTF-16LE", '@P`p'
                dq 0B000A000900080h, 0F000E000D000C0h, 130012001100100h
                dq 170016001500140h, 1B001A001900180h, 1F001E001D001C0h
                dq 230022002100200h, 270026002500240h, 2B002A002900280h
                dq 2F002E002D002C0h, 330032003100300h, 370036003500340h
                dq 3B003A003900380h, 3F003E003D003C0h, 4C0048004400400h
                dq 5C0058005400500h, 6C0068006400600h, 7C0078007400700h
                dq 980090008800800h, 0B800B000A800A00h, 0D800D000C800C00h
                dq 0F800F000E800E00h, 1300120011001000h, 1700160015001400h
                dq 1B001A0019001800h, 1F001E001D001C00h, 2600240022002000h
                dq 2E002C002A002800h, 3600340032003000h, 3E003C003A003800h
                dq 4000h
xmmword_140011918 xmmword 40000000000000000002020411000015h
                                        ; DATA XREF: sub_1406E19E4+18↓r
xmmword_140011928 xmmword 40000000000000000002010411000014h
                                        ; DATA XREF: sub_1406E1DBC+29↓r
                align 20h
qword_140011940 dq 7707309600000000h, 990951BAEE0E612Ch, 706AF48F076DC419h
                                        ; DATA XREF: RtlComputeCrc32+D↓o
                dq 9E6495A3E963A535h, 79DCB8A40EDB8832h, 97D2D988E0D5E91Eh
                dq 7EB17CBD09B64C2Bh, 90BF1D91E7B82D07h, 6AB020F21DB71064h
                dq 84BE41DEF3B97148h, 6DDDE4EB1ADAD47Dh, 83D385C7F4D4B551h
                dq 646BA8C0136C9856h, 8A65C9ECFD62F97Ah, 63066CD914015C4Fh
                dq 8D080DF5FA0F3D63h, 4C69105E3B6E20C8h, 0A2677172D56041E4h
                dq 4B04D4473C03E4D1h, 0A50AB56BD20D85FDh, 42B2986C35B5A8FAh
                dq 0ACBCF940DBBBC9D6h, 45DF5C7532D86CE3h, 0ABD13D59DCD60DCFh
                dq 51DE003A26D930ACh, 0BFD06116C8D75180h, 56B3C42321B4F4B5h
                dq 0B8BDA50FCFBA9599h, 5F0588082802B89Eh, 0B10BE924C60CD9B2h
                dq 58684C112F6F7C87h, 0B6662D3DC1611DABh, 1DB710676DC4190h
                dq 0EFD5102A98D220BCh, 6B6B51F71B18589h, 0E8B8D4339FBFE4A5h
                dq 0F00F9347807C9A2h, 0E10E98189609A88Eh, 86D3D2D7F6A0DBBh
                dq 0E6635C0191646C97h, 1C6C61626B6B51F4h, 0F262004E856530D8h
                dq 1B01A57B6C0695EDh, 0F50FC4578208F4C1h, 12B7E95065B0D9C6h
                dq 0FCB9887C8BBEB8EAh, 15DA2D4962DD1DDFh, 0FBD44C658CD37CF3h
                dq 3AB551CE4DB26158h, 0D4BB30E2A3BC0074h, 3DD895D74ADFA541h
                dq 0D3D6F4FBA4D1C46Dh, 346ED9FC4369E96Ah, 0DA60B8D0AD678846h
                dq 33031DE544042D73h, 0DD0D7CC9AA0A4C5Fh, 270241AA5005713Ch
                dq 0C90C2086BE0B1010h, 206F85B35768B525h, 0CE61E49FB966D409h
                dq 29D9C9985EDEF90Eh, 0C7D7A8B4B0D09822h, 2EB40D8159B33D17h
                dq 0C0BA6CADB7BD5C3Bh, 9ABFB3B6EDB88320h, 74B1D29A03B6E20Ch
                dq 9DD277AFEAD54739h, 73DC168304DB2615h, 94643B84E3630B12h
                dq 7A6A5AA80D6D6A3Eh, 9309FF9DE40ECF0Bh, 7D079EB10A00AE27h
                dq 8708A3D2F00F9344h, 6906C2FE1E01F268h, 806567CBF762575Dh
                dq 6E6B06E7196C3671h, 89D32BE0FED41B76h, 67DD4ACC10DA7A5Ah
                dq 8EBEEFF9F9B9DF6Fh, 60B08ED517B7BE43h, 0A1D1937ED6D6A3E8h
                dq 4FDFF25238D8C2C4h, 0A6BC5767D1BB67F1h, 48B2364B3FB506DDh
                dq 0AF0A1B4CD80D2BDAh, 41047A6036034AF6h, 0A867DF55DF60EFC3h
                dq 4669BE79316E8EEFh, 0BC66831ACB61B38Ch, 5268E236256FD2A0h
                dq 0BB0B4703CC0C7795h, 5505262F220216B9h, 0B2BD0B28C5BA3BBEh
                dq 5CB36A042BB45A92h, 0B5D0CF31C2D7FFA7h, 5BDEAE1D2CD99E8Bh
                dq 0EC63F2269B64C2B0h, 26D930A756AA39Ch, 0EB0E363F9C0906A9h
                dq 500571372076785h, 0E2B87A1495BF4A82h, 0CB61B387BB12BAEh
                dq 0E5D5BE0D92D28E9Bh, 0BDBDF217CDCEFB7h, 0F1D4E24286D3D2D4h
                dq 1FDA836E68DDB3F8h, 0F6B9265B81BE16CDh, 18B747776FB077E1h
                dq 0FF0F6A7088085AE6h, 11010B5C66063BCAh, 0F862AE698F659EFFh
                dq 166CCF45616BFFD3h, 0D70DD2EEA00AE278h, 3903B3C24E048354h
                dq 0D06016F7A7672661h, 3E6E77DB4969474Dh, 0D9D65ADCAED16A4Ah
                dq 37D83BF040DF0B66h, 0DEBB9EC5A9BCAE53h, 30B5FFE947B2CF7Fh
                dq 0CABAC28ABDBDF21Ch, 24B4A3A653B39330h, 0CDD70693BAD03605h
                dq 23D967BF54DE5729h, 0C4614AB8B3667A2Eh, 2A6F2B945D681B02h
                dq 0C30C8EA1B40BBE37h, 2D02EF8D5A05DF1Bh
qword_140011D40 dq 100000026h, 2E00000001h, 100000002h, 400000036h, 3E00000001h
                                        ; DATA XREF: sub_14033A134:loc_14033A15B↓o
                dq 100000008h, 1000000064h, 6500000001h, 100000020h, 4000000066h
                dq 6700000000h, 80h, 100000000F0h, 0F200000000h, 200000200h
                dq 400000000F3h, 2, 0
xmmword_140011DD0 xmmword 52BC33FEDBE4CBB552BC33FEDBE4CBB5h
                                        ; DATA XREF: sub_14033B138+42↓r
qword_140011DE0 dq 101010102020100h, 101010102020102h
                                        ; DATA XREF: sub_140345070+43↓o
xmmword_140011DF0 xmmword 1F0000001B0000001900000011h
                                        ; DATA XREF: sub_1407100BC+4D↓r
xmmword_140011E00 xmmword 7FFFFFFFFFFFFFFF0000000000000000h
                                        ; DATA XREF: FsRtlQueryCachedVdl+93↓r
xmmword_140011E10 xmmword 6             ; DATA XREF: RtlGetProductInfo+61↓r
qword_140011E20 dq 302030201010201h, 10302h
                                        ; DATA XREF: sub_140362CF0+1B↓o
qword_140011E30 dq 11C91CEB8A885D04h, 6048102B0008E89Fh, 2
                                        ; DATA XREF: .rdata:00000001400022D0↑o
qword_140011E48 dq 9A0062003C0000h      ; DATA XREF: .rdata:00000001400022C8↑o
                                        ; .rdata:00000001400066C8↑o
                db 2 dup(0)
word_140011E52  dw 4800h, 2 dup(0)      ; DATA XREF: .rdata:00000001400022C0↑o
                                        ; .rdata:00000001400066C0↑o
                dq 3200300000h, 450A054600880000h, 10000h, 215001700008010Bh
                dq 182150000B0010h, 23600200110000Bh, 4800000800280070h
                dq 8000100000000h, 3800000000E030h, 410A01400038h, 118000000000000h
                dq 4800024A0000h, 4030002000020000h, 24002400000000h, 1430A0445h
                dq 800000000h, 800082150025Ah, 70026E00102013h, 480000080018h
                dq 32003000030000h, 546000800100000h, 10000450Ah, 0E000800480000h
                dq 88028E0010010Bh, 20000B02900018h, 800280070029Ah, 0
aRegistry_5:                            ; DATA XREF: .rdata:0000000140001008↑o
                text "UTF-16LE", 'REGISTRY',0
                align 8
aSecureSystem_0:                        ; DATA XREF: .rdata:00000001400010E0↑o
                text "UTF-16LE", 'Secure System',0
                align 8
aMemoryCompress:                        ; DATA XREF: .rdata:0000000140001048↑o
                text "UTF-16LE", 'Memory Compression',0
                align 10h
aAppcontainerna_1:                      ; DATA XREF: .rdata:0000000140002338↑o
                text "UTF-16LE", 'AppContainerNamedObjects',0
                align 8
aSession_1:                             ; DATA XREF: .rdata:0000000140002328↑o
                text "UTF-16LE", 'Session',0
aRpcControl:                            ; DATA XREF: .rdata:0000000140002318↑o
                text "UTF-16LE", 'RPC Control',0
aGlobal_3:                              ; DATA XREF: .rdata:0000000140002308↑o
                text "UTF-16LE", 'Global',0
                align 20h
aLocal:                                 ; DATA XREF: .rdata:00000001400022F8↑o
                text "UTF-16LE", 'Local',0
                align 10h
aDeviceids:                             ; DATA XREF: .rdata:0000000140006268↑o
                text "UTF-16LE", 'DeviceIds',0
                align 8
aDriverfiles:                           ; DATA XREF: .rdata:0000000140006260↑o
                text "UTF-16LE", 'DriverFiles',0
aDriverinffiles:                        ; DATA XREF: .rdata:0000000140006258↑o
                text "UTF-16LE", 'DriverInfFiles',0
                align 20h
aDriverpackages:                        ; DATA XREF: .rdata:0000000140006250↑o
                text "UTF-16LE", 'DriverPackages',0
                align 20h
aNodes:                                 ; DATA XREF: .rdata:0000000140006248↑o
                text "UTF-16LE", 'Nodes',0
                align 10h
qword_140012090 dq 4E1117A759229CA6h, 3AAFD7930EDFDA9Eh
                                        ; DATA XREF: .rdata:0000000140005638↑o
qword_1400120A0 dq 46BCBDE824453286h, 12E2F3ED8219D185h
                                        ; DATA XREF: .rdata:0000000140005620↑o
qword_1400120B0 dq 4517C86A9D991181h, 64B577032932E79Fh
                                        ; DATA XREF: .rdata:0000000140005608↑o
qword_1400120C0 dq 4BA43BD08026FF68h, 781B784F72DED4A1h
                                        ; DATA XREF: .rdata:00000001400055F0↑o
qword_1400120D0 dq 4274B8FAD2E7862Ch, 0C2A7A08DBA59D19Bh
                                        ; DATA XREF: .rdata:00000001400055D8↑o
qword_1400120E0 dq 45EFD5B8182A2B31h, 0F1D8EDBA6E646DBBh
                                        ; DATA XREF: .rdata:off_1400055C0↑o
aNotDeviceMembe_0:                      ; DATA XREF: .rdata:00000001400065C8↑o
                text "UTF-16LE", 'Not_Device_Member_of_any',0
                align 8
aDeviceMemberOf_0:                      ; DATA XREF: .rdata:00000001400065B0↑o
                text "UTF-16LE", 'Device_Member_of_any',0
                align 8
aNotMemberOfAny:                        ; DATA XREF: .rdata:0000000140006598↑o
                text "UTF-16LE", 'Not_Member_of_any',0
                align 20h
aMemberOfAny:                           ; DATA XREF: .rdata:0000000140006580↑o
                text "UTF-16LE", 'Member_of_any',0
                align 20h
aNotDeviceMembe:                        ; DATA XREF: .rdata:0000000140006568↑o
                text "UTF-16LE", 'Not_Device_Member_of',0
                align 10h
aDeviceMemberOf:                        ; DATA XREF: .rdata:0000000140006550↑o
                text "UTF-16LE", 'Device_Member_of',0
                align 8
aNotMemberOf:                           ; DATA XREF: .rdata:0000000140006538↑o
                text "UTF-16LE", 'Not_Member_of',0
                align 8
aMemberOf:                              ; DATA XREF: .rdata:0000000140006520↑o
                text "UTF-16LE", 'Member_of',0
asc_14001222C:                          ; DATA XREF: .rdata:0000000140006508↑o
                text "UTF-16LE", '!',0
aNotAnyOf:                              ; DATA XREF: .rdata:00000001400064F0↑o
                text "UTF-16LE", 'Not_Any_of',0
                align 8
aAnyOf:                                 ; DATA XREF: .rdata:00000001400064D8↑o
                text "UTF-16LE", 'Any_of',0
                align 8
aNotContains:                           ; DATA XREF: .rdata:00000001400064C0↑o
                text "UTF-16LE", 'Not_Contains',0
                align 8
aContains_0:                            ; DATA XREF: .rdata:00000001400064A8↑o
                text "UTF-16LE", 'Contains',0
                align 4
asc_14001228C:                          ; DATA XREF: .rdata:0000000140006490↑o
                text "UTF-16LE", '>',0
asc_140012290:                          ; DATA XREF: .rdata:0000000140006478↑o
                text "UTF-16LE", '<',0
asc_140012294:                          ; DATA XREF: .rdata:0000000140006460↑o
                text "UTF-16LE", '&',0
word_140012298  dw 7Ch                  ; DATA XREF: .rdata:0000000140006448↑o
                                        ; sub_140928948+26↓r
                dw 7Ch, 2 dup(0)
word_1400122A0  dw 26h                  ; DATA XREF: .rdata:0000000140006430↑o
                                        ; sub_140928948+2F↓r
                dw 26h, 2 dup(0)
asc_1400122A8:                          ; DATA XREF: .rdata:0000000140006418↑o
                text "UTF-16LE", '<=',0
                align 10h
asc_1400122B0:                          ; DATA XREF: .rdata:0000000140006400↑o
                text "UTF-16LE", '!=',0
                align 8
asc_1400122B8:                          ; DATA XREF: .rdata:00000001400063E8↑o
                text "UTF-16LE", '>=',0
                align 20h
asc_1400122C0:                          ; DATA XREF: .rdata:00000001400063D0↑o
                text "UTF-16LE", '==',0
                align 8
aNotExists:                             ; DATA XREF: .rdata:00000001400063B8↑o
                text "UTF-16LE", 'Not_Exists',0
                align 20h
aExists:                                ; DATA XREF: .rdata:off_1400063A0↑o
                text "UTF-16LE", 'Exists',0
                align 10h
aCmnotify:                              ; DATA XREF: .rdata:0000000140006640↑o
                text "UTF-16LE", '\CMNotify',0
                align 8
aSwdevice:                              ; DATA XREF: .rdata:0000000140006628↑o
                text "UTF-16LE", '\SwDevice',0
                align 20h
aCmapi:                                 ; DATA XREF: .rdata:0000000140006610↑o
                text "UTF-16LE", '\CMApi',0
                align 10h
aDevNostate_0:                          ; DATA XREF: .rdata:00000001400065F8↑o
                text "UTF-16LE", '\Dev\NoState',0
                align 10h
aDevQuery_0:                            ; DATA XREF: .rdata:off_1400065E0↑o
                text "UTF-16LE", '\Dev\Query',0
                align 8
aSystemrootSyst_11:                     ; DATA XREF: .rdata:00000001400011B8↑o
                                        ; sub_140960060:loc_1409600A9↓o
                text "UTF-16LE", '\SystemRoot\System32\',0
                align 8
qword_140012398 dq 100041001001Ah, 8000000000000002h
                                        ; DATA XREF: .rdata:0000000140006358↑o
qword_1400123A8 dq 1000410010015h, 8000000000000008h
                                        ; DATA XREF: .rdata:0000000140006350↑o
qword_1400123B8 dq 1000410010006h, 8000000000000001h
                                        ; DATA XREF: .rdata:0000000140006348↑o
qword_1400123C8 dq 1000410010001h, 8000000000000004h
                                        ; DATA XREF: .rdata:off_140006340↑o
qword_1400123D8 dq 200041001001Bh, 8000000000000020h
                                        ; DATA XREF: .rdata:0000000140006378↑o
qword_1400123E8 dq 2000410010016h, 8000000000000080h
                                        ; DATA XREF: .rdata:0000000140006370↑o
qword_1400123F8 dq 2000410010007h, 8000000000000010h
                                        ; DATA XREF: .rdata:0000000140006368↑o
qword_140012408 dq 2000410010002h, 8000000000000040h
                                        ; DATA XREF: .rdata:off_140006360↑o
qword_140012418 dq 300041001001Ch, 8000000000000200h
                                        ; DATA XREF: .rdata:0000000140006398↑o
qword_140012428 dq 3000410010017h, 8000000000000800h
                                        ; DATA XREF: .rdata:0000000140006390↑o
qword_140012438 dq 3000410010008h, 8000000000000100h
                                        ; DATA XREF: .rdata:0000000140006388↑o
qword_140012448 dq 3000410010003h, 8000000000000400h
                                        ; DATA XREF: .rdata:off_140006380↑o
aAppid:                                 ; DATA XREF: .rdata:0000000140002348↑o
                text "UTF-16LE", 'APPID://',0
                align 10h
aKernelProducti_0:                      ; DATA XREF: .rdata:0000000140005048↑o
                text "UTF-16LE", 'Kernel-ProductInfo',0
                align 20h
aKernelProducti:                        ; DATA XREF: .rdata:0000000140005038↑o
                text "UTF-16LE", 'Kernel-ProductInfoLegacyMapping',0
                db 2 dup(0)
word_1400124E2  dw 0                    ; DATA XREF: .rdata:00000001400066D0↑o
                                        ; .rdata:0000000140006780↑o
                dd 16C0112h
                dq 3155B010008001Dh, 0F1004C0606080010h, 0FFFC0008082B5BFFh
                dq 1, 10000200000000h, 10000000010003h, 2400000002h, 812FFFF80020000h
                dq 190002011B5C25h, 10000h, 5B05000000000000h, 600000010031Ah
                dq 0FFDC20125B364008h, 0FF98004C00140315h, 20031A5B08h
                dq 360EFFEC004C000Ah, 3215C2508125B5Ch, 11004000190000h
                dq 2710000000000001h, 0FFFFFFFF0000h, 0
                dq 5B5CFFC6004C0000h, 2400190001001Bh, 1, 31A5B0200000000h
                dq 4C000A00000030h, 20125B360808FFA2h, 38031AFFD8h, 0FFE0004C400E0000h
                dq 19000003215B5Ch, 100110050h, 0FFFF000027100000h, 0FFFFh
                dq 4C000000000000h, 1001B5B5CFFCAh, 100180019h, 0
                dq 28031A5B02h, 808FF34004C000Ch, 0FFD620125B5C3640h, 60001900000321h
                dq 1, 0FFFFFFFF00000000h, 0
                dq 0FFC4004C00000000h, 70031A5B5Ch, 0E0EFE92004C001Ch
                dq 4C4008FE98004Ch, 364008364008FED8h, 0FEF820125B364008h
                dq 0FFAA2012FF582012h, 8082B00760012h, 1FFF8h, 2000000000000h
                dq 40020h, 3A00000001800Eh, 3003400000002h, 321FFFF002E0000h
                dq 11001000190000h, 2710000000000001h, 0FFFFFFFF0000h
                dq 0
                dq 5B5CFED2004C0000h, 0A00000020031Ah, 5B5C36400836400Eh
                dq 0FFC020125C250812h, 28031Ah, 5B5CFF80004C400Eh, 0FF440011FFD60112h
                dq 204115C0B0C11h, 0B0000A30B6h, 0A03000000001h, 0A30B600020411h
                dq 1000000F1h, 0A30B60000E130h, 100000051h, 5C080C1100004130h
                dq 2201200021411h, 854290001001Bh, 1, 8115B0200000000h
                dq 8B75C25h, 2201200002710h, 18002900000321h, 10011h, 0FFFFFFFF00002710h
                dq 0
                dq 0FE08004C00000000h
                db 5Ch, 5Bh, 2 dup(0)
dword_1400127AC dd 5                    ; DATA XREF: .rdata:00000001400068B0↑o
                                        ; .rdata:00000001400068F0↑o ...
byte_1400127B0  db 70h, 0A0h, 2 dup(0)  ; DATA XREF: .rdata:0000000140006A08↑o
dword_1400127B4 dd 0E170h               ; DATA XREF: .rdata:0000000140006B10↑o
byte_1400127B8  db 70h, 41h, 2 dup(0)   ; DATA XREF: .rdata:0000000140006B38↑o
dword_1400127BC dd 10h                  ; DATA XREF: .rdata:0000000140006B70↑o
                                        ; .rdata:0000000140006C68↑o ...
qword_1400127C0 dq 6050400000001h, 800000703h
                                        ; DATA XREF: .rdata:0000000140006B60↑o
qword_1400127D0 dq 5A4h, 0              ; DATA XREF: .rdata:00000001400068D0↑o
                dq 2710h
qword_1400127E8 dq 20064h               ; DATA XREF: .rdata:00000001400068C0↑o
                                        ; .rdata:0000000140006BC0↑o ...
byte_1400127F0  db 5, 4 dup(0)          ; DATA XREF: .rdata:0000000140006B98↑o
                align 8
                dq 5A4h, 0
                dq 2710h, 1800000603h
aCrc64RefsV1    db 'Crc64 ReFS-v1',0    ; DATA XREF: .rdata:0000000140004FC8↑o
                align 10h
qword_140012830 dq 0                    ; DATA XREF: .rdata:0000000140004FB0↑o
                dq 0B8C533C1177EB231h, 455341D1766AF709h, 0FD96721061144538h
                dq 8AA683A2ECD5EE12h, 3263B063FBAB5C23h, 0CFF5C2739ABF191Bh
                dq 7730F1B28DC1AB2Ah, 21942116813C4F4Fh, 995112D79642FD7Eh
                dq 64C760C7F756B846h, 0DC025306E0280A77h, 0AB32A2B46DE9A15Dh
                dq 13F791757A97136Ch, 0EE61E3651B835654h, 56A4D0A40CFDE465h
                dq 4328422D02789E9Eh, 0FBED71EC15062CAFh, 67B03FC74126997h
                dq 0BEBE303D636CDBA6h, 0C98EC18FEEAD708Ch, 714BF24EF9D3C2BDh
                dq 8CDD805E98C78785h, 3418B39F8FB935B4h, 62BC633B8344D1D1h
                dq 0DA7950FA943A63E0h, 27EF22EAF52E26D8h, 9F2A112BE25094E9h
                dq 0E81AE0996F913FC3h, 50DFD35878EF8DF2h, 0AD49A14819FBC8CAh
                dq 158C92890E857AFBh, 8650845A04F13D3Ch, 3E95B79B138F8F0Dh
                dq 0C303C58B729BCA35h, 7BC6F64A65E57804h, 0CF607F8E824D32Eh
                dq 0B4333439FF5A611Fh, 49A546299E4E2427h, 0F16075E889309616h
                dq 0A7C4A54C85CD7273h, 1F01968D92B3C042h, 0E297E49DF3A7857Ah
                dq 5A52D75CE4D9374Bh, 2D6226EE69189C61h, 95A7152F7E662E50h
                dq 6831673F1F726B68h, 0D0F454FE080CD959h, 0C578C6770689A3A2h
                dq 7DBDF5B611F71193h, 802B87A670E354ABh, 38EEB467679DE69Ah
                dq 4FDE45D5EA5C4DB0h, 0F71B7614FD22FF81h, 0A8D04049C36BAB9h
                dq 0B24837C58B480888h, 0E4ECE76187B5ECEDh, 5C29D4A090CB5EDCh
                dq 0A1BFA6B0F1DF1BE4h, 197A9571E6A1A9D5h, 6E4A64C36B6002FFh
                dq 0D68F57027C1EB0CEh, 2B1925121D0AF5F6h, 93DC16D30A7447C7h
                dq 38782EE75175E913h, 80BD1D26460B5B22h, 7D2B6F36271F1E1Ah
                dq 0C5EE5CF73061AC2Bh, 0B2DEAD45BDA00701h, 0A1B9E84AADEB530h
                dq 0F78DEC94CBCAF008h, 4F48DF55DCB44239h, 19EC0FF1D049A65Ch
                dq 0A1293C30C737146Dh, 5CBF4E20A6235155h, 0E47A7DE1B15DE364h
                dq 934A8C533C9C484Eh, 2B8FBF922BE2FA7Fh, 0D619CD824AF6BF47h
                dq 6EDCFE435D880D76h, 7B506CCA530D778Dh, 0C3955F0B4473C5BCh
                dq 3E032D1B25678084h, 86C61EDA321932B5h, 0F1F6EF68BFD8999Fh
                dq 4933DCA9A8A62BAEh, 0B4A5AEB9C9B26E96h, 0C609D78DECCDCA7h
                dq 5AC44DDCD23138C2h, 0E2017E1DC54F8AF3h, 1F970C0DA45BCFCBh
                dq 0A7523FCCB3257DFAh, 0D062CE7E3EE4D6D0h, 68A7FDBF299A64E1h
                dq 95318FAF488E21D9h, 2DF4BC6E5FF093E8h, 0BE28AABD5584D42Fh
                dq 6ED997C42FA661Eh, 0FB7BEB6C23EE2326h, 43BED8AD34909117h
                dq 348E291FB9513A3Dh, 8C4B1ADEAE2F880Ch, 71DD68CECF3BCD34h
                dq 0C9185B0FD8457F05h, 9FBC8BABD4B89B60h, 2779B86AC3C62951h
                dq 0DAEFCA7AA2D26C69h, 622AF9BBB5ACDE58h, 151A0809386D7572h
                dq 0ADDF3BC82F13C743h, 504949D84E07827Bh, 0E88C7A195979304Ah
                dq 0FD00E89057FC4AB1h, 45C5DB514082F880h, 0B853A9412196BDB8h
                dq 969A8036E80F89h, 77A66B32BB29A4A3h, 0CF6358F3AC571692h
                dq 32F52AE3CD4353AAh, 8A301922DA3DE19Bh, 0DC94C986D6C005FEh
                dq 6451FA47C1BEB7CFh, 99C78857A0AAF2F7h, 2102BB96B7D440C6h
                dq 56324A243A15EBECh, 0EEF779E52D6B59DDh, 13610BF54C7F1CE5h
                dq 0ABA438345B01AED4h, 70F05DCEA2EBD226h, 0C8356E0FB5956017h
                dq 35A31C1FD481252Fh, 8D662FDEC3FF971Eh, 0FA56DE6C4E3E3C34h
                dq 4293EDAD59408E05h, 0BF059FBD3854CB3Dh, 7C0AC7C2F2A790Ch
                dq 51647CD823D79D69h, 0E9A14F1934A92F58h, 14373D0955BD6A60h
                dq 0ACF20EC842C3D851h, 0DBC2FF7ACF02737Bh, 6307CCBBD87CC14Ah
                dq 9E91BEABB9688472h, 26548D6AAE163643h, 33D81FE3A0934CB8h
                dq 8B1D2C22B7EDFE89h, 768B5E32D6F9BBB1h, 0CE4E6DF3C1870980h
                dq 0B97E9C414C46A2AAh, 1BBAF805B38109Bh, 0FC2DDD903A2C55A3h
                dq 44E8EE512D52E792h, 124C3EF521AF03F7h, 0AA890D3436D1B1C6h
                dq 571F7F2457C5F4FEh, 0EFDA4CE540BB46CFh, 98EABD57CD7AEDE5h
                dq 202F8E96DA045FD4h, 0DDB9FC86BB101AECh, 657CCF47AC6EA8DDh
                dq 0F6A0D994A61AEF1Ah, 4E65EA55B1645D2Bh, 0B3F39845D0701813h
                dq 0B36AB84C70EAA22h, 7C065A364ACF0108h, 0C4C369F75DB1B339h
                dq 39551BE73CA5F601h, 819028262BDB4430h, 0D734F8822726A055h
                dq 6FF1CB4330581264h, 9267B953514C575Ch, 2AA28A924632E56Dh
                dq 5D927B20CBF34E47h, 0E55748E1DC8DFC76h, 18C13AF1BD99B94Eh
                dq 0A0040930AAE70B7Fh, 0B5889BB9A4627184h, 0D4DA878B31CC3B5h
                dq 0F0DBDA68D208868Dh, 481EE9A9C57634BCh, 3F2E181B48B79F96h
                dq 87EB2BDA5FC92DA7h, 7A7D59CA3EDD689Fh, 0C2B86A0B29A3DAAEh
                dq 941CBAAF255E3ECBh, 2CD9896E32208CFAh, 0D14FFB7E5334C9C2h
                dq 698AC8BF444A7BF3h, 1EBA390DC98BD0D9h, 0A67F0ACCDEF562E8h
                dq 5BE978DCBFE127D0h, 0E32C4B1DA89F95E1h, 48887329F39E3B35h
                dq 0F04D40E8E4E08904h, 0DDB32F885F4CC3Ch, 0B51E0139928A7E0Dh
                dq 0C22EF08B1F4BD527h, 7AEBC34A08356716h, 877DB15A6921222Eh
                dq 3FB8829B7E5F901Fh, 691C523F72A2747Ah, 0D1D961FE65DCC64Bh
                dq 2C4F13EE04C88373h, 948A202F13B63142h, 0E3BAD19D9E779A68h
                dq 5B7FE25C89092859h, 0A6E9904CE81D6D61h, 1E2CA38DFF63DF50h
                dq 0BA03104F1E6A5ABh, 0B36502C5E698179Ah, 4EF370D5878C52A2h
                dq 0F636431490F2E093h, 8106B2A61D334BB9h, 39C381670A4DF988h
                dq 0C455F3776B59BCB0h, 7C90C0B67C270E81h, 2A34101270DAEAE4h
                dq 92F123D367A458D5h, 6F6751C306B01DEDh, 0D7A2620211CEAFDCh
                dq 0A09293B09C0F04F6h, 1857A0718B71B6C7h, 0E5C1D261EA65F3FFh
                dq 5D04E1A0FD1B41CEh, 0CED8F773F76F0609h, 761DC4B2E011B438h
                dq 8B8BB6A28105F100h, 334E8563967B4331h, 447E74D11BBAE81Bh
                dq 0FCBB47100CC45A2Ah, 12D35006DD01F12h, 0B9E806C17AAEAD23h
                dq 0EF4CD66576534946h, 5789E5A4612DFB77h, 0AA1F97B40039BE4Fh
                dq 12DAA47517470C7Eh, 65EA55C79A86A754h, 0DD2F66068DF81565h
                dq 20B91416ECEC505Dh, 987C27D7FB92E26Ch, 8DF0B55EF5179897h
                dq 3535869FE2692AA6h, 0C8A3F48F837D6F9Eh, 7066C74E9403DDAFh
                dq 75636FC19C27685h, 0BF93053D0EBCC4B4h, 4205772D6FA8818Ch
                dq 0FAC044EC78D633BDh, 0AC649448742BD7D8h, 14A1A789635565E9h
                dq 0E937D599024120D1h, 51F2E658153F92E0h, 26C217EA98FE39CAh
                dq 9E07242B8F808BFBh, 6391563BEE94CEC3h, 0DB5465FAF9EA7CF2h
                dq 0
                dq 0F6F734B768E04748h, 0D9374F3D89571DFBh, 2FC07B8AE1B75AB3h
                dq 86B7B8284A39A89Dh, 70408C9F22D9EFD5h, 5F80F715C36EB566h
                dq 0A977C3A2AB8EF22Eh, 39B65603CCE4C251h, 0CF4162B4A4048519h
                dq 0E081193E45B3DFAAh, 16762D892D5398E2h, 0BF01EE2B86DD6ACCh
                dq 49F6DA9CEE3D2D84h, 6636A1160F8A7737h, 90C195A1676A307Fh
                dq 736CAC0799C984A2h, 859B98B0F129C3EAh, 0AA5BE33A109E9959h
                dq 5CACD78D787EDE11h, 0F5DB142FD3F02C3Fh, 32C2098BB106B77h
                dq 2CEC5B125AA731C4h, 0DA1B6FA53247768Ch, 4ADAFA04552D46F3h
                dq 0BC2DCEB33DCD01BBh, 93EDB539DC7A5B08h, 651A818EB49A1C40h
                dq 0CC6D422C1F14EE6Eh, 3A9A769B77F4A926h, 155A0D119643F395h
                dq 0E3AD39A6FEA3B4DDh, 0E6D9580F33930944h, 102E6CB85B734E0Ch
                dq 3FEE1732BAC414BFh, 0C9192385D22453F7h, 606EE02779AAA1D9h
                dq 9699D490114AE691h, 0B959AF1AF0FDBC22h, 4FAE9BAD981DFB6Ah
                dq 0DF6F0E0CFF77CB15h, 29983ABB97978C5Dh, 65841317620D6EEh
                dq 0F0AF75861EC091A6h, 59D8B624B54E6388h, 0AF2F8293DDAE24C0h
                dq 80EFF9193C197E73h, 7618CDAE54F9393Bh, 95B5F408AA5A8DE6h
                dq 6342C0BFC2BACAAEh, 4C82BB35230D901Dh, 0BA758F824BEDD755h
                dq 13024C20E063257Bh, 0E5F5789788836233h, 0CA35031D69343880h
                dq 3CC237AA01D47FC8h, 0AC03A20B66BE4FB7h, 5AF496BC0E5E08FFh
                dq 7534ED36EFE9524Ch, 83C3D98187091504h, 2AB41A232C87E72Ah
                dq 0DC432E944467A062h, 0F383551EA5D0FAD1h, 57461A9CD30BD99h
                dq 0F96B964D3FB181E3h, 0F9CA2FA5751C6ABh, 205CD970B6E69C18h
                dq 0D6ABEDC7DE06DB50h, 7FDC2E657588297Eh, 892B1AD21D686E36h
                dq 0A6EB6158FCDF3485h, 501C55EF943F73CDh, 0C0DDC04EF35543B2h
                dq 362AF4F99BB504FAh, 19EA8F737A025E49h, 0EF1DBBC412E21901h
                dq 466A7866B96CEB2Fh, 0B09D4CD1D18CAC67h, 9F5D375B303BF6D4h
                dq 69AA03EC58DBB19Ch, 8A073A4AA6780541h, 7CF00EFDCE984209h
                dq 533075772F2F18BAh, 0A5C741C047CF5FF2h, 0CB08262EC41ADDCh
                dq 0FA47B6D584A1EA94h, 0D587CD5F6516B027h, 2370F9E80DF6F76Fh
                dq 0B3B16C496A9CC710h, 454658FE027C8058h, 6A862374E3CBDAEBh
                dq 9C7117C38B2B9DA3h, 3506D46120A56F8Dh, 0C3F1E0D6484528C5h
                dq 0EC319B5CA9F27276h, 1AC6AFEBC112353Eh, 1FB2CE420C2288A7h
                dq 0E945FAF564C2CFEFh, 0C685817F8575955Ch, 3072B5C8ED95D214h
                dq 9905766A461B203Ah, 6FF242DD2EFB6772h, 40323957CF4C3DC1h
                dq 0B6C50DE0A7AC7A89h, 26049841C0C64AF6h, 0D0F3ACF6A8260DBEh
                dq 0FF33D77C4991570Dh, 9C4E3CB21711045h, 0A0B320698AFFE26Bh
                dq 564414DEE21FA523h, 79846F5403A8FF90h, 8F735BE36B48B8D8h
                dq 6CDE624595EB0C05h, 9A2956F2FD0B4B4Dh, 0B5E92D781CBC11FEh
                dq 431E19CF745C56B6h, 0EA69DA6DDFD2A498h, 1C9EEEDAB732E3D0h
                dq 335E95505685B963h, 0C5A9A1E73E65FE2Bh, 55683446590FCE54h
                dq 0A39F00F131EF891Ch, 8C5F7B7BD058D3AFh, 7AA84FCCB8B894E7h
                dq 0D3DF8C6E133666C9h, 2528B8D97BD62181h, 0AE8C3539A617B32h
                dq 0FC1FF7E4F2813C7Ah, 0C60E0AC927F490ADh, 30F93E7E4F14D7E5h
                dq 1F3945F4AEA38D56h, 0E9CE7143C643CA1Eh, 40B9B2E16DCD3830h
                dq 0B64E8656052D7F78h, 998EFDDCE49A25CBh, 6F79C96B8C7A6283h
                dq 0FFB85CCAEB1052FCh, 94F687D83F015B4h, 268F13F762474F07h
                dq 0D07827400AA7084Fh, 790FE4E2A129FA61h, 8FF8D055C9C9BD29h
                dq 0A038ABDF287EE79Ah, 56CF9F68409EA0D2h, 0B562A6CEBE3D140Fh
                dq 43959279D6DD5347h, 6C55E9F3376A09F4h, 9AA2DD445F8A4EBCh
                dq 33D51EE6F404BC92h, 0C5222A519CE4FBDAh, 0EAE251DB7D53A169h
                dq 1C15656C15B3E621h, 8CD4F0CD72D9D65Eh, 7A23C47A1A399116h
                dq 55E3BFF0FB8ECBA5h, 0A3148B47936E8CEDh, 0A6348E538E07EC3h
                dq 0FC947C525000398Bh, 0D35407D8B1B76338h, 25A3336FD9572470h
                dq 20D752C6146799E9h, 0D62066717C87DEA1h, 0F9E01DFB9D308412h
                dq 0F17294CF5D0C35Ah, 0A660EAEE5E5E3174h, 5097DE5936BE763Ch
                dq 7F57A5D3D7092C8Fh, 89A09164BFE96BC7h, 196104C5D8835BB8h
                dq 0EF963072B0631CF0h, 0C0564BF851D44643h, 36A17F4F3934010Bh
                dq 9FD6BCED92BAF325h, 6921885AFA5AB46Dh, 46E1F3D01BEDEEDEh
                dq 0B016C767730DA996h, 53BBFEC18DAE1D4Bh, 0A54CCA76E54E5A03h
                dq 8A8CB1FC04F900B0h, 7C7B854B6C1947F8h, 0D50C46E9C797B5D6h
                dq 23FB725EAF77F29Eh, 0C3B09D44EC0A82Dh, 0FACC3D632620EF65h
                dq 6A0DA8C2414ADF1Ah, 9CFA9C7529AA9852h, 0B33AE7FFC81DC2E1h
                dq 45CDD348A0FD85A9h, 0ECBA10EA0B737787h, 1A4D245D639330CFh
                dq 358D5FD782246A7Ch, 0C37A6B60EAC42D34h, 3F659C841845114Eh
                dq 0C992A83370A55606h, 0E652D3B991120CB5h, 10A5E70EF9F24BFDh
                dq 0B9D224AC527CB9D3h, 4F25101B3A9CFE9Bh, 60E56B91DB2BA428h
                dq 96125F26B3CBE360h, 6D3CA87D4A1D31Fh, 0F024FE30BC419457h
                dq 0DFE485BA5DF6CEE4h, 2913B10D351689ACh, 806472AF9E987B82h
                dq 76934618F6783CCAh, 59533D9217CF6679h, 0AFA409257F2F2131h
                dq 4C093083818C95ECh, 0BAFE0434E96CD2A4h, 953E7FBE08DB8817h
                dq 63C94B09603BCF5Fh, 0CABE88ABCBB53D71h, 3C49BC1CA3557A39h
                dq 1389C79642E2208Ah, 0E57EF3212A0267C2h, 75BF66804D6857BDh
                dq 83485237258810F5h, 0AC8829BDC43F4A46h, 5A7F1D0AACDF0D0Eh
                dq 0F308DEA80751FF20h, 5FFEA1F6FB1B868h, 2A3F91958E06E2DBh
                dq 0DCC8A522E6E6A593h, 0D9BCC48B2BD6180Ah, 2F4BF03C43365F42h
                dq 8B8BB6A28105F1h, 0F67CBF01CA6142B9h, 5F0B7CA361EFB097h
                dq 0A9FC4814090FF7DFh, 863C339EE8B8AD6Ch, 70CB07298058EA24h
                dq 0E00A9288E732DA5Bh, 16FDA63F8FD29D13h, 393DDDB56E65C7A0h
                dq 0CFCAE902068580E8h, 66BD2AA0AD0B72C6h, 904A1E17C5EB358Eh
                dq 0BF8A659D245C6F3Dh, 497D512A4CBC2875h, 0AAD0688CB21F9CA8h
                dq 5C275C3BDAFFDBE0h, 73E727B13B488153h, 8510130653A8C61Bh
                dq 2C67D0A4F8263435h, 0DA90E41390C6737Dh, 0F5509F99717129CEh
                dq 3A7AB2E19916E86h, 93663E8F7EFB5EF9h, 65910A38161B19B1h
                dq 4A5171B2F7AC4302h, 0BCA645059F4C044Ah, 15D186A734C2F664h
                dq 0E326B2105C22B12Ch, 0CCE6C99ABD95EB9Fh, 3A11FD2DD575ACD7h
                dq 0
                dq 71B0C13DA512335Dh, 0E361827B4A2466BAh, 92D14346EF3655E7h
                dq 0F21A22A5CCDF5E1Fh, 83AAE39869CD6D42h, 117BA0DE86FB38A5h
                dq 60CB61E323E90BF8h, 0D0ED6318C1292F55h, 0A15DA225643B1C08h
                dq 338CE1638B0D49EFh, 423C205E2E1F7AB2h, 22F741BD0DF6714Ah
                dq 53478080A8E44217h, 0C196C3C647D217F0h, 0B02602FBE2C024ADh
                dq 9503E062DAC5CDC1h, 0E4B3215F7FD7FE9Ch, 7662621990E1AB7Bh
                dq 7D2A32435F39826h, 6719C2C7161A93DEh, 16A903FAB308A083h
                dq 847840BC5C3EF564h, 0F5C88181F92CC639h, 45EE837A1BECE294h
                dq 345E4247BEFED1C9h, 0A68F010151C8842Eh, 0D73FC03CF4DAB773h
                dq 0B7F4A1DFD733BC8Bh, 0C64460E272218FD6h, 549523A49D17DA31h
                dq 2525E2993805E96Ch, 1EDEE696ED1C08E9h, 6F6E27AB480E3BB4h
                dq 0FDBF64EDA7386E53h, 8C0FA5D0022A5D0Eh, 0ECC4C43321C356F6h
                dq 9D74050E84D165ABh, 0FA546486BE7304Ch, 7E158775CEF50311h
                dq 0CE33858E2C3527BCh, 0BF8344B3892714E1h, 2D5207F566114106h
                dq 5CE2C6C8C303725Bh, 3C29A72BE0EA79A3h, 4D99661645F84AFEh
                dq 0DF482550AACE1F19h, 0AEF8E46D0FDC2C44h, 8BDD06F437D9C528h
                dq 0FA6DC7C992CBF675h, 68BC848F7DFDA392h, 190C45B2D8EF90CFh
                dq 79C72451FB069B37h, 877E56C5E14A86Ah, 9AA6A62AB122FD8Dh
                dq 0EB1667171430CED0h, 5B3065ECF6F0EA7Dh, 2A80A4D153E2D920h
                dq 0B851E797BCD48CC7h, 0C9E126AA19C6BF9Ah, 0A92A47493A2FB462h
                dq 0D89A86749F3D873Fh, 4A4BC532700BD2D8h, 3BFB040FD519E185h
                dq 3DBDCD2DDA3811D2h, 4C0D0C107F2A228Fh, 0DEDC4F56901C7768h
                dq 0AF6C8E6B350E4435h, 0CFA7EF8816E74FCDh, 0BE172EB5B3F57C90h
                dq 2CC66DF35CC32977h, 5D76ACCEF9D11A2Ah, 0ED50AE351B113E87h
                dq 9CE06F08BE030DDAh, 0E312C4E5135583Dh, 7F81ED73F4276B60h
                dq 1F4A8C90D7CE6098h, 6EFA4DAD72DC53C5h, 0FC2B0EEB9DEA0622h
                dq 8D9BCFD638F8357Fh, 0A8BE2D4F00FDDC13h, 0D90EEC72A5EFEF4Eh
                dq 4BDFAF344AD9BAA9h, 3A6F6E09EFCB89F4h, 5AA40FEACC22820Ch
                dq 2B14CED76930B151h, 0B9C58D918606E4B6h, 0C8754CAC2314D7EBh
                dq 78534E57C1D4F346h, 9E38F6A64C6C01Bh, 9B32CC2C8BF095FCh
                dq 0EA820D112EE2A6A1h, 8A496CF20D0BAD59h, 0FBF9ADCFA8199E04h
                dq 6928EE89472FCBE3h, 18982FB4E23DF8BEh, 23632BBB3724193Bh
                dq 52D3EA8692362A66h, 0C002A9C07D007F81h, 0B1B268FDD8124CDCh
                dq 0D179091EFBFB4724h, 0A0C9C8235EE97479h, 32188B65B1DF219Eh
                dq 43A84A5814CD12C3h, 0F38E48A3F60D366Eh, 823E899E531F0533h
                dq 10EFCAD8BC2950D4h, 615F0BE5193B6389h, 1946A063AD26871h
                dq 7024AB3B9FC05B2Ch, 0E2F5E87D70F60ECBh, 93452940D5E43D96h
                dq 0B660CBD9EDE1D4FAh, 0C7D00AE448F3E7A7h, 550149A2A7C5B240h
                dq 24B1889F02D7811Dh, 447AE97C213E8AE5h, 35CA2841842CB9B8h
                dq 0A71B6B076B1AEC5Fh, 0D6ABAA3ACE08DF02h, 668DA8C12CC8FBAFh
                dq 173D69FC89DAC8F2h, 85EC2ABA66EC9D15h, 0F45CEB87C3FEAE48h
                dq 94978A64E017A5B0h, 0E5274B59450596EDh, 77F6081FAA33C30Ah
                dq 646C9220F21F057h, 7B7B9A5BB47023A4h, 0ACB5B66116210F9h
                dq 981A1820FE54451Eh, 0E9AAD91D5B467643h, 8961B8FE78AF7DBBh
                dq 0F8D179C3DDBD4EE6h, 6A003A85328B1B01h, 1BB0FBB89799285Ch
                dq 0AB96F94375590CF1h, 0DA26387ED04B3FACh, 48F77B383F7D6A4Bh
                dq 3947BA059A6F5916h, 598CDBE6B98652EEh, 283C1ADB1C9461B3h
                dq 0BAED599DF3A23454h, 0CB5D98A056B00709h, 0EE787A396EB5EE65h
                dq 9FC8BB04CBA7DD38h, 0D19F842249188DFh, 7CA9397F8183BB82h
                dq 1C62589CA26AB07Ah, 6DD299A107788327h, 0FF03DAE7E84ED6C0h
                dq 8EB31BDA4D5CE59Dh, 3E951921AF9CC130h, 4F25D81C0A8EF26Dh
                dq 0DDF49B5AE5B8A78Ah, 0AC445A6740AA94D7h, 0CC8F3B8463439F2Fh
                dq 0BD3FFAB9C651AC72h, 2FEEB9FF2967F995h, 5E5E78C28C75CAC8h
                dq 65A57CCD596C2B4Dh, 1415BDF0FC7E1810h, 86C4FEB613484DF7h
                dq 0F7743F8BB65A7EAAh, 97BF5E6895B37552h, 0E60F9F5530A1460Fh
                dq 74DEDC13DF9713E8h, 56E1D2E7A8520B5h, 0B5481FD598450418h
                dq 0C4F8DEE83D573745h, 56299DAED26162A2h, 27995C93777351FFh
                dq 47523D70549A5A07h, 36E2FC4DF188695Ah, 0A433BF0B1EBE3CBDh
                dq 0D5837E36BBAC0FE0h, 0F0A69CAF83A9E68Ch, 81165D9226BBD5D1h
                dq 13C71ED4C98D8036h, 6277DFE96C9FB36Bh, 2BCBE0A4F76B893h
                dq 730C7F37EA648BCEh, 0E1DD3C710552DE29h, 906DFD4CA040ED74h
                dq 204BFFB74280C9D9h, 51FB3E8AE792FA84h, 0C32A7DCC08A4AF63h
                dq 0B29ABCF1ADB69C3Eh, 0D251DD128E5F97C6h, 0A3E11C2F2B4DA49Bh
                dq 31305F69C47BF17Ch, 40809E546169C221h, 46C657766E483276h
                dq 3776964BCB5A012Bh, 0A5A7D50D246C54CCh, 0D4171430817E6791h
                dq 0B4DC75D3A2976C69h, 0C56CB4EE07855F34h, 57BDF7A8E8B30AD3h
                dq 260D36954DA1398Eh, 962B346EAF611D23h, 0E79BF5530A732E7Eh
                dq 754AB615E5457B99h, 4FA7728405748C4h, 643116CB63BE433Ch
                dq 1581D7F6C6AC7061h, 875094B0299A2586h, 0F6E0558D8C8816DBh
                dq 0D3C5B714B48DFFB7h, 0A2757629119FCCEAh, 30A4356FFEA9990Dh
                dq 4114F4525BBBAA50h, 21DF95B17852A1A8h, 506F548CDD4092F5h
                dq 0C2BE17CA3276C712h, 0B30ED6F79764F44Fh, 328D40C75A4D0E2h
                dq 72981531D0B6E3BFh, 0E04956773F80B658h, 91F9974A9A928505h
                dq 0F132F6A9B97B8EFDh, 808237941C69BDA0h, 125374D2F35FE847h
                dq 63E3B5EF564DDB1Ah, 5818B1E083543A9Fh, 29A870DD264609C2h
                dq 0BB79339BC9705C25h, 0CAC9F2A66C626F78h, 0AA0293454F8B6480h
                dq 0DBB25278EA9957DDh, 4963113E05AF023Ah, 38D3D003A0BD3167h
                dq 88F5D2F8427D15CAh, 0F94513C5E76F2697h, 6B94508308597370h
                dq 1A2491BEAD4B402Dh, 7AEFF05D8EA24BD5h, 0B5F31602BB07888h
                dq 998E7226C4862D6Fh, 0E83EB31B61941E32h, 0CD1B51825991F75Eh
                dq 0BCAB90BFFC83C403h, 2E7AD3F913B591E4h, 5FCA12C4B6A7A2B9h
                dq 3F017327954EA941h, 4EB1B21A305C9A1Ch, 0DC60F15CDF6ACFFBh
                dq 0ADD030617A78FCA6h, 1DF6329A98B8D80Bh, 6C46F3A73DAAEB56h
                dq 0FE97B0E1D29CBEB1h, 8F2771DC778E8DECh, 0EFEC103F54678614h
                dq 9E5CD102F175B549h, 0C8D92441E43E0AEh, 7D3D5379BB51D3F3h
                dq 0
; ---------------------------------------------------------------------------
                pop     rsi
                xchg    eax, ecx
                adc     eax, 0DB6C480Fh
                mov     edi, 46BCB1D7h
                retn
; ---------------------------------------------------------------------------
                db 0FEh, 6Fh, 4Bh
                dq 0F4B4928B49A92089h, 96DFFD868D7963AEh, 290491CE826CF2F0h
                dq 0DDB00345CBC5D279h, 626B6F0DC4D04327h, 1966DD5E42655437h
                dq 0A6BDB1164D70C569h, 5209239D04D9E5E0h, 0EDD24FD50BCC74BEh
                dq 8FB920D8CF1C3799h, 30624C90C009A6C7h, 0C4D6DE1B89A0864Eh
                dq 7B0DB25386B51710h, 32CDBABC84CAA86Eh, 8D16D6F48BDF3930h
                dq 79A2447FC27619B9h, 0C6792837CD6388E7h, 0A412473A09B3CBC0h
                dq 1BC92B7206A65A9Eh, 0EF7DB9F94F0F7A17h, 50A6D5B1401AEB49h
                dq 2BAB67E2C6AFFC59h, 94700BAAC9BA6D07h, 60C4992180134D8Eh
                dq 0DF1FF5698F06DCD0h, 0BD749A644BD69FF7h, 2AFF62C44C30EA9h
                dq 0F61B64A70D6A2E20h, 49C008EF027FBF7Eh, 659B7579099550DCh
                dq 0DA4019310680C182h, 2EF48BBA4F29E10Bh, 912FE7F2403C7055h
                dq 0F34488FF84EC3372h, 4C9FE4B78BF9A22Ch, 0B82B763CC25082A5h
                dq 7F01A74CD4513FBh, 7CFDA8274BF004EBh, 0C326C46F44E595B5h
                dq 379256E40D4CB53Ch, 88493AAC02592462h, 0EA2255A1C6896745h
                dq 55F939E9C99CF61Bh, 0A14DAB628035D692h, 1E96C72A8F2047CCh
                dq 5756CFC58D5FF8B2h, 0E88DA38D824A69ECh, 1C393106CBE34965h
                dq 0A3E25D4EC4F6D83Bh, 0C189324300269B1Ch, 7E525E0B0F330A42h
                dq 8AE6CC80469A2ACBh, 353DA0C8498FBB95h, 4E30129BCF3AAC85h
                dq 0F1EB7ED3C02F3DDBh, 55FEC5889861D52h, 0BA84801086938C0Ch
                dq 0D8EFEF1D4243CF2Bh, 673483554D565E75h, 938011DE04FF7EFCh
                dq 2C5B7D960BEAEFA2h, 0CB36EAF2132AA1B8h, 74ED86BA1C3F30E6h
                dq 805914315596106Fh, 3F8278795A838131h, 5DE917749E53C216h
                dq 0E2327B3C91465348h, 1686E9B7D8EF73C1h, 0A95D85FFD7FAE29Fh
                dq 0D25037AC514FF58Fh, 6D8B5BE45E5A64D1h, 993FC96F17F34458h
                dq 26E4A52718E6D506h, 448FCA2ADC369621h, 0FB54A662D323077Fh
                dq 0FE034E99A8A27F6h, 0B03B58A1959FB6A8h, 0F9FB504E97E009D6h
                dq 46203C0698F59888h, 0B294AE8DD15CB801h, 0D4FC2C5DE49295Fh
                dq 6F24ADC81A996A78h, 0D0FFC180158CFB26h, 244B530B5C25DBAFh
                dq 9B903F4353304AF1h, 0E09D8D10D5855DE1h, 5F46E158DA90CCBFh
                dq 0ABF273D39339EC36h, 14291F9B9C2C7D68h, 7642709658FC3E4Fh
                dq 0C9991CDE57E9AF11h, 3D2D8E551E408F98h, 82F6E21D11551EC6h
                dq 0AEAD9F8B1ABFF164h, 1176F3C315AA603Ah, 0E5C261485C0340B3h
                dq 5A190D005316D1EDh, 3872620D97C692CAh, 87A90E4598D30394h
                dq 731D9CCED17A231Dh, 0CCC6F086DE6FB243h, 0B7CB42D558DAA553h
                dq 8102E9D57CF340Dh, 0FCA4BC161E661484h, 437FD05E117385DAh
                dq 2114BF53D5A3C6FDh, 9ECFD31BDAB657A3h, 6A7B4190931F772Ah
                dq 0D5A02DD89C0AE674h, 9C6025379E75590Ah, 23BB497F9160C854h
                dq 0D70FDBF4D8C9E8DDh, 68D4B7BCD7DC7983h, 0ABFD8B1130C3AA4h
                dq 0B564B4F91C19ABFAh, 41D0267255B08B73h, 0FE0B4A3A5AA51A2Dh
                dq 8506F869DC100D3Dh, 3ADD9421D3059C63h, 0CE6906AA9AACBCEAh
                dq 71B26AE295B92DB4h, 13D905EF51696E93h, 0AC0269A75E7CFFCDh
                dq 58B6FB2C17D5DF44h, 0E76D976418C04E1Ah, 0A2B4F3B77EC2D01Bh
                dq 1D6F9FFF71D74145h, 0E9DB0D74387E61CCh, 5600613C376BF092h
                dq 346B0E31F3BBB3B5h, 8BB06279FCAE22EBh, 7F04F0F2B5070262h
                dq 0C0DF9CBABA12933Ch, 0BBD22EE93CA7842Ch, 40942A133B21572h
                dq 0F0BDD02A7A1B35FBh, 4F66BC62750EA4A5h, 2D0DD36FB1DEE782h
                dq 92D6BF27BECB76DCh, 66622DACF7625655h, 0D9B941E4F877C70Bh
                dq 9079490BFA087875h, 2FA22543F51DE92Bh, 0DB16B7C8BCB4C9A2h
                dq 64CDDB80B3A158FCh, 6A6B48D77711BDBh, 0B97DD8C578648A85h
                dq 4DC94A4E31CDAA0Ch, 0F21226063ED83B52h, 891F9455B86D2C42h
                dq 36C4F81DB778BD1Ch, 0C2706A96FED19D95h, 7DAB06DEF1C40CCBh
                dq 1FC069D335144FECh, 0A01B059B3A01DEB2h, 54AF971073A8FE3Bh
                dq 0EB74FB587CBD6F65h, 0C72F86CE775780C7h, 78F4EA8678421199h
                dq 8C40780D31EB3110h, 339B14453EFEA04Eh, 51F07B48FA2EE369h
                dq 0EE2B1700F53B7237h, 1A9F858BBC9252BEh, 0A544E9C3B387C3E0h
                dq 0DE495B903532D4F0h, 619237D83A2745AEh, 9526A553738E6527h
                dq 2AFDC91B7C9BF479h, 4896A616B84BB75Eh, 0F74DCA5EB75E2600h
                dq 3F958D5FEF70689h, 0BC22349DF1E297D7h, 0F5E23C72F39D28A9h
                dq 4A39503AFC88B9F7h, 0BE8DC2B1B521997Eh, 156AEF9BA340820h
                dq 633DC1F47EE44B07h, 0DCE6ADBC71F1DA59h, 28523F373858FAD0h
                dq 9789537F374D6B8Eh, 0EC84E12CB1F87C9Eh, 535F8D64BEEDEDC0h
                dq 0A7EB1FEFF744CD49h, 183073A7F8515C17h, 7A5B1CAA3C811F30h
                dq 0C58070E233948E6Eh, 3134E2697A3DAEE7h, 8EEF8E2175283FB9h
                dq 698219456DE871A3h, 0D659750D62FDE0FDh, 22EDE7862B54C074h
                dq 9D368BCE2441512Ah, 0FF5DE4C3E091120Dh, 4086888BEF848353h
                dq 0B4321A00A62DA3DAh, 0BE97648A9383284h, 70E4C41B2F8D2594h
                dq 0CF3FA8532098B4CAh, 3B8B3AD869319443h, 845056906624051Dh
                dq 0E63B399DA2F4463Ah, 59E055D5ADE1D764h, 0AD54C75EE448F7EDh
                dq 128FAB16EB5D66B3h, 5B4FA3F9E922D9CDh, 0E494CFB1E6374893h
                dq 10205D3AAF9E681Ah, 0AFFB3172A08BF944h, 0CD905E7F645BBA63h
                dq 724B32376B4E2B3Dh, 86FFA0BC22E70BB4h, 3924CCF42DF29AEAh
                dq 42297EA7AB478DFAh, 0FDF212EFA4521CA4h, 9468064EDFB3C2Dh
                dq 0B69DEC2CE2EEAD73h, 0D4F68321263EEE54h, 6B2DEF69292B7F0Ah
                dq 9F997DE260825F83h, 204211AA6F97CEDDh, 0C196C3C647D217Fh
                dq 0B3C200746B68B021h, 477692FF22C190A8h, 0F8ADFEB72DD401F6h
                dq 9AC691BAE90442D1h, 251DFDF2E611D38Fh, 0D1A96F79AFB8F306h
                dq 6E720331A0AD6258h, 157FB16226187548h, 0AAA4DD2A290DE416h
                dq 5E104FA160A4C49Fh, 0E1CB23E96FB155C1h, 83A04CE4AB6116E6h
                dq 3C7B20ACA47487B8h, 0C8CFB227EDDDA731h, 7714DE6FE2C8366Fh
                dq 3ED4D680E0B78911h, 810FBAC8EFA2184Fh, 75BB2843A60B38C6h
                dq 0CA60440BA91EA998h, 0A80B2B066DCEEABFh, 17D0474E62DB7BE1h
                dq 0E364D5C52B725B68h, 5CBFB98D2467CA36h, 27B20BDEA2D2DD26h
                dq 98696796ADC74C78h, 6CDDF51DE46E6CF1h, 0D3069955EB7BFDAFh
                dq 0B16DF6582FABBE88h, 0EB69A1020BE2FD6h, 0FA02089B69170F5Fh
                dq 45D964D366029E01h, 0
                dq 3EA616BD2AE10D77h, 7D4C2D7A55C21AEEh, 43EA3BC77F231799h
                dq 0FA985AF4AB8435DCh, 0C43E4C49816538ABh, 87D4778EFE462F32h
                dq 0B9726133D4A72245h, 0C1E993BA0F9FF8D3h, 0FF4F8507257EF5A4h
                dq 0BCA5BEC05A5DE23Dh, 8203A87D70BCEF4Ah, 3B71C94EA41BCD0Fh
                dq 5D7DFF38EFAC078h, 463DE434F1D9D7E1h, 789BF289DB38DA96h
                dq 0B70A012747A862CDh, 89AC179A6D496FBAh, 0CA462C5D126A7823h
                dq 0F4E03AE0388B7554h, 4D925BD3EC2C5711h, 73344D6EC6CD5A66h
                dq 30DE76A9B9EE4DFFh, 0E786014930F4088h, 76E3929D48379A1Eh
                dq 4845842062D69769h, 0BAFBFE71DF580F0h, 3509A95A37148D87h
                dq 8C7BC869E3B3AFC2h, 0B2DDDED4C952A2B5h, 0F137E513B671B52Ch
                dq 0CF91F3AE9C90B85Bh, 5ACD241DD7C756F1h, 646B32A0FD265B86h
                dq 2781096782054C1Fh, 19271FDAA8E44168h, 0A0557EE97C43632Dh
                dq 9EF3685456A26E5Ah, 0DD195393298179C3h, 0E3BF452E036074B4h
                dq 9B24B7A7D858AE22h, 0A582A11AF2B9A355h, 0E6689ADD8D9AB4CCh
                dq 0D8CE8C60A77BB9BBh, 61BCED5373DC9BFEh, 5F1AFBEE593D9689h
                dq 1CF0C029261E8110h, 2256D6940CFF8C67h, 0EDC7253A906F343Ch
                dq 0D3613387BA8E394Bh, 908B0840C5AD2ED2h, 0AE2D1EFDEF4C23A5h
                dq 175F7FCE3BEB01E0h, 29F96973110A0C97h, 6A1352B46E291B0Eh
                dq 54B5440944C81679h, 2C2EB6809FF0CCEFh, 1288A03DB511C198h
                dq 51629BFACA32D601h, 6FC48D47E0D3DB76h, 0D6B6EC743474F933h
                dq 0E810FAC91E95F444h, 0ABFAC10E61B6E3DDh, 955CD7B34B57EEAAh
                dq 0B59A483BAF8EADE2h, 8B3C5E86856FA095h, 0C8D66541FA4CB70Ch
                dq 0F67073FCD0ADBA7Bh, 4F0212CF040A983Eh, 71A404722EEB9549h
                dq 324E3FB551C882D0h, 0CE829087B298FA7h, 7473DB81A0115531h
                dq 4AD5CD3C8AF05846h, 93FF6FBF5D34FDFh, 3799E046DF3242A8h
                dq 8EEB81750B9560EDh, 0B04D97C821746D9Ah, 0F3A7AC0F5E577A03h
                dq 0CD01BAB274B67774h, 290491CE826CF2Fh, 3C365FA1C2C7C258h
                dq 7FDC6466BDE4D5C1h, 417A72DB9705D8B6h, 0F80813E843A2FAF3h
                dq 0C6AE05556943F784h, 85443E921660E01Dh, 0BBE2282F3C81ED6Ah
                dq 0C379DAA6E7B937FCh, 0FDDFCC1BCD583A8Bh, 0BE35F7DCB27B2D12h
                dq 8093E161989A2065h, 39E180524C3D0220h, 74796EF66DC0F57h
                dq 44ADAD2819FF18CEh, 7A0BBB95331E15B9h, 0EF576C267849FB13h
                dq 0D1F17A9B52A8F664h, 921B415C2D8BE1FDh, 0ACBD57E1076AEC8Ah
                dq 15CF36D2D3CDCECFh, 2B69206FF92CC3B8h, 68831BA8860FD421h
                dq 56250D15ACEED956h, 2EBEFF9C77D603C0h, 1018E9215D370EB7h
                dq 53F2D2E62214192Eh, 6D54C45B08F51459h, 0D426A568DC52361Ch
                dq 0EA80B3D5F6B33B6Bh, 0A96A881289902CF2h, 97CC9EAFA3712185h
                dq 585D6D013FE199DEh, 66FB7BBC150094A9h, 2511407B6A238330h
                dq 1BB756C640C28E47h, 0A2C537F59465AC02h, 9C632148BE84A175h
                dq 0DF891A8FC1A7B6ECh, 0E12F0C32EB46BB9Bh, 99B4FEBB307E610Dh
                dq 0A712E8061A9F6C7Ah, 0E4F8D3C165BC7BE3h, 0DA5EC57C4F5D7694h
                dq 632CA44F9BFA54D1h, 5D8AB2F2B11B59A6h, 1E608935CE384E3Fh
                dq 20C69F88E4D94348h, 5FEDB624078AC8AFh, 614BA0992D6BC5D8h
                dq 22A19B5E5248D241h, 1C078DE378A9DF36h, 0A575ECD0AC0EFD73h
                dq 9BD3FA6D86EFF004h, 0D839C1AAF9CCE79Dh, 0E69FD717D32DEAEAh
                dq 9E04259E0815307Ch, 0A0A2332322F43D0Bh, 0E34808E45DD72A92h
                dq 0DDEE1E59773627E5h, 649C7F6AA39105A0h, 5A3A69D7897008D7h
                dq 19D05210F6531F4Eh, 277644ADDCB21239h, 0E8E7B7034022AA62h
                dq 0D641A1BE6AC3A715h, 95AB9A7915E0B08Ch, 0AB0D8CC43F01BDFBh
                dq 127FEDF7EBA69FBEh, 2CD9FB4AC14792C9h, 6F33C08DBE648550h
                dq 5195D63094858827h, 290E24B94FBD52B1h, 17A83204655C5FC6h
                dq 544209C31A7F485Fh, 6AE41F7E309E4528h, 0D3967E4DE439676Dh
                dq 0ED3068F0CED86A1Ah, 0AEDA5337B1FB7D83h, 907C458A9B1A70F4h
                dq 5209239D04D9E5Eh, 3B868484FAAC9329h, 786CBF43858F84B0h
                dq 46CAA9FEAF6E89C7h, 0FFB8C8CD7BC9AB82h, 0C11EDE705128A6F5h
                dq 82F4E5B72E0BB16Ch, 0BC52F30A04EABC1Bh, 0C4C90183DFD2668Dh
                dq 0FA6F173EF5336BFAh, 0B9852CF98A107C63h, 87233A44A0F17114h
                dq 3E515B7774565351h, 0F74DCA5EB75E26h, 431D760D219449BFh
                dq 7DBB60B00B7544C8h, 0B22A931E97E5FC93h, 8C8C85A3BD04F1E4h
                dq 0CF66BE64C227E67Dh, 0F1C0A8D9E8C6EB0Ah, 48B2C9EA3C61C94Fh
                dq 7614DF571680C438h, 35FEE49069A3D3A1h, 0B58F22D4342DED6h
                dq 73C300A4987A0440h, 4D651619B29B0937h, 0E8F2DDECDB81EAEh
                dq 30293B63E75913D9h, 895B5A5033FE319Ch, 0B7FD4CED191F3CEBh
                dq 0F417772A663C2B72h, 0CAB161974CDD2605h, 0EA77FE1FA804654Dh
                dq 0D4D1E8A282E5683Ah, 973BD365FDC67FA3h, 0A99DC5D8D72772D4h
                dq 10EFA4EB03805091h, 2E49B25629615DE6h, 6DA3899156424A7Fh
                dq 53059F2C7CA34708h, 2B9E6DA5A79B9D9Eh, 15387B188D7A90E9h
                dq 56D240DFF2598770h, 68745662D8B88A07h, 0D10637510C1FA842h
                dq 0EFA021EC26FEA535h, 0AC4A1A2B59DDB2ACh, 92EC0C96733CBFDBh
                dq 5D7DFF38EFAC0780h, 63DBE985C54D0AF7h, 2031D242BA6E1D6Eh
                dq 1E97C4FF908F1019h, 0A7E5A5CC4428325Ch, 9943B3716EC93F2Bh
                dq 0DAA988B611EA28B2h, 0E40F9E0B3B0B25C5h, 9C946C82E033FF53h
                dq 0A2327A3FCAD2F224h, 0E1D841F8B5F1E5BDh, 0DF7E57459F10E8CAh
                dq 660C36764BB7CA8Fh, 58AA20CB6156C7F8h, 1B401B0C1E75D061h
                dq 25E60DB13494DD16h, 0B0BADA027FC333BCh, 8E1CCCBF55223ECBh
                dq 0CDF6F7782A012952h, 0F350E1C500E02425h, 4A2280F6D4470660h
                dq 7484964BFEA60B17h, 376EAD8C81851C8Eh, 9C8BB31AB6411F9h
                dq 715349B8705CCB6Fh, 4FF55F055ABDC618h, 0C1F64C2259ED181h
                dq 32B9727F0F7FDCF6h, 8BCB134CDBD8FEB3h, 0B56D05F1F139F3C4h
                dq 0F6873E368E1AE45Dh, 0C821288BA4FBE92Ah, 7B0DB25386B5171h
                dq 3916CD98128A5C06h, 7AFCF65F6DA94B9Fh, 445AE0E2474846E8h
                dq 0FD2881D193EF64ADh, 0C38E976CB90E69DAh, 8064ACABC62D7E43h
                dq 0BEC2BA16ECCC7334h, 0C659489F37F4A9A2h, 0F8FF5E221D15A4D5h
                dq 0BB1565E56236B34Ch, 85B3735848D7BE3Bh, 3CC1126B9C709C7Eh
                dq 26704D6B6919109h, 418D3F11C9B28690h, 7F2B29ACE3538BE7h
                dq 0
                dq 169489CC969951E5h, 2D2913992D32A3CAh, 3BBD9A55BBABF22Fh
                dq 5A5227325A654794h, 4CC6AEFECCFC1671h, 777B34AB7757E45Eh
                dq 61EFBD67E1CEB5BBh, 0B4A44E64B4CA8F28h, 0A230C7A82253DECDh
                dq 998D5DFD99F82CE2h, 8F19D4310F617D07h, 0EEF66956EEAFC8BCh
                dq 0F862E09A78369959h, 0C3DF7ACFC39D6B76h, 0D54BF30355043A93h
                dq 5D91BA9A31028D3Bh, 4B053356A79BDCDEh, 70B8A9031C302EF1h
                dq 662C20CF8AA97F14h, 7C39DA86B67CAAFh, 11571464FDFE9B4Ah
                dq 2AEA8E3146556965h, 3C7E07FDD0CC3880h, 0E935F4FE85C80213h
                dq 0FFA17D32135153F6h, 0C41CE767A8FAA1D9h, 0D2886EAB3E63F03Ch
                dq 0B367D3CCDFAD4587h, 0A5F35A0049341462h, 9E4EC055F29FE64Dh
                dq 88DA49996406B7A8h, 0BB23753462051A76h, 0ADB7FCF8F49C4B93h
                dq 960A66AD4F37B9BCh, 809EEF61D9AEE859h, 0E171520638605DE2h
                dq 0F7E5DBCAAEF90C07h, 0CC58419F1552FE28h, 0DACCC85383CBAFCDh
                dq 0F873B50D6CF955Eh, 1913B29C4056C4BBh, 22AE28C9FBFD3694h
                dq 343AA1056D646771h, 55D51C628CAAD2CAh, 434195AE1A33832Fh
                dq 78FC0FFBA1987100h, 6E688637370120E5h, 0E6B2CFAE5307974Dh
                dq 0F0264662C59EC6A8h, 0CB9BDC377E353487h, 0DD0F55FBE8AC6562h
                dq 0BCE0E89C0962D0D9h, 0AA7461509FFB813Ch, 91C9FB0524507313h
                dq 875D72C9B2C922F6h, 521681CAE7CD1865h, 4482080671544980h
                dq 7F3F9253CAFFBBAFh, 69AB1B9F5C66EA4Ah, 844A6F8BDA85FF1h
                dq 1ED02F342B310E14h, 256DB561909AFC3Bh, 33F93CAD0603ADDEh
                dq 429FCC3B9C9DA787h, 540B45F70A04F662h, 6FB6DFA2B1AF044Dh
                dq 7922566E273655A8h, 18CDEB09C6F8E013h, 0E5962C55061B1F6h
                dq 35E4F890EBCA43D9h, 2370715C7D53123Ch, 0F63B825F285728AFh
                dq 0E0AF0B93BECE794Ah, 0DB1291C605658B65h, 0CD86180A93FCDA80h
                dq 0AC69A56D72326F3Bh, 0BAFD2CA1E4AB3EDEh, 8140B6F45F00CCF1h
                dq 97D43F38C9999D14h, 1F0E76A1AD9F2ABCh, 99AFF6D3B067B59h
                dq 3227653880AD8976h, 24B3ECF41634D893h, 455C5193F7FA6D28h
                dq 53C8D85F61633CCDh, 6875420ADAC8CEE2h, 7EE1CBC64C519F07h
                dq 0ABAA38C51955A594h, 0BD3EB1098FCCF471h, 86832B5C3467065Eh
                dq 9017A290A2FE57BBh, 0F1F81FF74330E200h, 0E76C963BD5A9B3E5h
                dq 0DCD10C6E6E0241CAh, 0CA4585A2F89B102Fh, 0F9BCB90FFE98BDF1h
                dq 0EF2830C36801EC14h, 0D495AA96D3AA1E3Bh, 0C201235A45334FDEh
                dq 0A3EE9E3DA4FDFA65h, 0B57A17F13264AB80h, 8EC78DA489CF59AFh
                dq 985304681F56084Ah, 4D18F76B4A5232D9h, 5B8C7EA7DCCB633Ch
                dq 6031E4F267609113h, 76A56D3EF1F9C0F6h, 174AD0591037754Dh
                dq 1DE599586AE24A8h, 3A63C3C03D05D687h, 2CF74A0CAB9C8762h
                dq 0A42D0395CF9A30CAh, 0B2B98A595903612Fh, 8904100CE2A89300h
                dq 9F9099C07431C2E5h, 0FE7F24A795FF775Eh, 0E8EBAD6B036626BBh
                dq 0D356373EB8CDD494h, 0C5C2BEF22E548571h, 10894DF17B50BFE2h
                dq 61DC43DEDC9EE07h, 3DA05E6856621C28h, 2B34D7A4C0FB4DCDh
                dq 4ADB6AC32135F876h, 5C4FE30FB7ACA993h, 67F2795A0C075BBCh
                dq 7166F0969A9E0A59h, 853F9877393B4F0Eh, 93AB11BBAFA21EEBh
                dq 0A8168BEE1409ECC4h, 0BE8202228290BD21h, 0DF6DBF45635E089Ah
                dq 0C9F93689F5C7597Fh, 0F244ACDC4E6CAB50h, 0E4D02510D8F5FAB5h
                dq 319BD6138DF1C026h, 270F5FDF1B6891C3h, 1CB2C58AA0C363ECh
                dq 0A264C46365A3209h, 6BC9F121D79487B2h, 7D5D78ED410DD657h
                dq 46E0E2B8FAA62478h, 50746B746C3F759Dh, 0D8AE22ED0839C235h
                dq 0CE3AAB219EA093D0h, 0F5873174250B61FFh, 0E313B8B8B392301Ah
                dq 82FC05DF525C85A1h, 94688C13C4C5D444h, 0AFD516467F6E266Bh
                dq 0B9419F8AE9F7778Eh, 6C0A6C89BCF34D1Dh, 7A9EE5452A6A1CF8h
                dq 41237F1091C1EED7h, 57B7F6DC0758BF32h, 36584BBBE6960A89h
                dq 20CCC277700F5B6Ch, 1B715822CBA4A943h, 0DE5D1EE5D3DF8A6h
                dq 3E1CED435B3E5578h, 2888648FCDA7049Dh, 1335FEDA760CF6B2h
                dq 5A17716E095A757h, 644ECA71015B12ECh, 72DA43BD97C24309h
                dq 4967D9E82C69B126h, 5FF35024BAF0E0C3h, 8AB8A327EFF4DA50h
                dq 9C2C2AEB796D8BB5h, 0A791B0BEC2C6799Ah, 0B1053972545F287Fh
                dq 0D0EA8415B5919DC4h, 0C67E0DD92308CC21h, 0FDC3978C98A33E0Eh
                dq 0EB571E400E3A6FEBh, 638D57D96A3CD843h, 7519DE15FCA589A6h
                dq 4EA44440470E7B89h, 5830CD8CD1972A6Ch, 39DF70EB30599FD7h
                dq 2F4BF927A6C0CE32h, 14F663721D6B3C1Dh, 262EABE8BF26DF8h
                dq 0D72919BDDEF6576Bh, 0C1BD9071486F068Eh, 0FA000A24F3C4F4A1h
                dq 0EC9483E8655DA544h, 8D7B3E8F849310FFh, 9BEFB743120A411Ah
                dq 0A0522D16A9A1B335h, 0B6C6A4DA3F38E2D0h, 0C7A0544CA5A6E889h
                dq 0D134DD80333FB96Ch, 0EA8947D588944B43h, 0FC1DCE191E0D1AA6h
                dq 9DF2737EFFC3AF1Dh, 8B66FAB2695AFEF8h, 0B0DB60E7D2F10CD7h
                dq 0A64FE92B44685D32h, 73041A28116C67A1h, 659093E487F53644h
                dq 5E2D09B13C5EC46Bh, 48B9807DAAC7958Eh, 29563D1A4B092035h
                dq 3FC2B4D6DD9071D0h, 47F2E83663B83FFh, 12EBA74FF0A2D21Ah
                dq 9A31EED694A465B2h, 8CA5671A023D3457h, 0B718FD4FB996C678h
                dq 0A18C74832F0F979Dh, 0C063C9E4CEC12226h, 0D6F74028585873C3h
                dq 0ED4ADA7DE3F381ECh, 0FBDE53B1756AD009h, 2E95A0B2206EEA9Ah
                dq 3801297EB6F7BB7Fh, 3BCB32B0D5C4950h, 15283AE79BC518B5h
                dq 74C787807A0BAD0Eh, 62530E4CEC92FCEBh, 59EE941957390EC4h
                dq 4F7A1DD5C1A05F21h, 7C832178C7A3F2FFh, 6A17A8B4513AA31Ah
                dq 51AA32E1EA915135h, 473EBB2D7C0800D0h, 26D1064A9DC6B56Bh
                dq 30458F860B5FE48Eh, 0BF815D3B0F416A1h, 1D6C9C1F266D4744h
                dq 0C8276F1C73697DD7h, 0DEB3E6D0E5F02C32h, 0E50E7C855E5BDE1Dh
                dq 0F39AF549C8C28FF8h, 9275482E290C3A43h, 84E1C1E2BF956BA6h
                dq 0BF5C5BB7043E9989h, 0A9C8D27B92A7C86Ch, 21129BE2F6A17FC4h
                dq 3786122E60382E21h, 0C3B887BDB93DC0Eh, 1AAF01B74D0A8DEBh
                dq 7B40BCD0ACC43850h, 6DD4351C3A5D69B5h, 5669AF4981F69B9Ah
                dq 40FD2685176FCA7Fh, 95B6D586426BF0ECh, 83225C4AD4F2A109h
                dq 0B89FC61F6F595326h, 0AE0B4FD3F9C002C3h, 0CFE4F2B4180EB778h
                dq 0D9707B788E97E69Dh, 0E2CDE12D353C14B2h, 0F45968E1A3A54557h
                dq 0
                dq 0AED36D1A3BB9D7Fh, 15DA6DA347773AFEh, 1F375B72E4CCA781h
                dq 2BB4DB468EEE75FCh, 2159ED972D55E883h, 3E6EB6E5C9994F02h
                dq 348380346A22D27Dh, 5769B68D1DDCEBF8h, 5D84805CBE677687h
                dq 42B3DB2E5AABD106h, 485EEDFFF9104C79h, 7CDD6DCB93329E04h
                dq 76305B1A3089037Bh, 69070068D445A4FAh, 63EA36B977FE3985h
                dq 0AED36D1A3BB9D7F0h, 0A43E5BCB98024A8Fh, 0BB0900B97CCEED0Eh
                dq 0B1E43668DF757071h, 8567B65CB557A20Ch, 8F8A808D16EC3F73h
                dq 90BDDBFFF22098F2h, 9A50ED2E519B058Dh, 0F9BADB9726653C08h
                dq 0F357ED4685DEA177h, 0EC60B634611206F6h, 0E68D80E5C2A99B89h
                dq 0D20E00D1A88B49F4h, 0D8E336000B30D48Bh, 0C7D46D72EFFC730Ah
                dq 0CD395BA34C47EE75h, 697FFC672FE43C8Bh, 6392CAB68C5FA1F4h
                dq 7CA591C468930675h, 7648A715CB289B0Ah, 42CB2721A10A4977h
                dq 482611F002B1D408h, 57114A82E67D7389h, 5DFC7C5345C6EEF6h
                dq 3E164AEA3238D773h, 34FB7C3B91834A0Ch, 2BCC2749754FED8Dh
                dq 21211198D6F470F2h, 15A291ACBCD6A28Fh, 1F4FA77D1F6D3FF0h
                dq 78FC0FFBA19871h, 0A95CADE581A050Eh, 0C7AC917D145DEB7Bh
                dq 0CD41A7ACB7E67604h, 0D276FCDE532AD185h, 0D89BCA0FF0914CFAh
                dq 0EC184A3B9AB39E87h, 0E6F57CEA390803F8h, 0F9C22798DDC4A479h
                dq 0F32F11497E7F3906h, 90C527F009810083h, 9A281121AA3A9DFCh
                dq 851F4A534EF63A7Dh, 8FF27C82ED4DA702h, 0BB71FCB6876F757Fh
                dq 0B19CCA6724D4E800h, 0AEAB9115C0184F81h, 0A446A7C463A3D2FEh
                dq 0D2FFF8CE5FC87916h, 0D812CE1FFC73E469h, 0C725956D18BF43E8h
                dq 0CDC8A3BCBB04DE97h, 0F94B2388D1260CEAh, 0F3A61559729D9195h
                dq 0EC914E2B96513614h, 0E67C78FA35EAAB6Bh, 85964E43421492EEh
                dq 8F7B7892E1AF0F91h, 904C23E00563A810h, 9AA11531A6D8356Fh
                dq 0AE229505CCFAE712h, 0A4CFA3D46F417A6Dh, 0BBF8F8A68B8DDDECh
                dq 0B115CE7728364093h, 7C2C95D46471AEE6h, 76C1A305C7CA3399h
                dq 69F6F87723069418h, 631BCEA680BD0967h, 57984E92EA9FDB1Ah
                dq 5D75784349244665h, 42422331ADE8E1E4h, 48AF15E00E537C9Bh
                dq 2B45235979AD451Eh, 21A81588DA16D861h, 3E9F4EFA3EDA7FE0h
                dq 3472782B9D61E29Fh, 0F1F81FF74330E2h, 0A1CCECE54F8AD9Dh
                dq 152B95BCB0340A1Ch, 1FC6A36D138F9763h, 0BB8004A9702C459Dh
                dq 0B16D3278D397D8E2h, 0AE5A690A375B7F63h, 0A4B75FDB94E0E21Ch
                dq 9034DFEFFEC23061h, 9AD9E93E5D79AD1Eh, 85EEB24CB9B50A9Fh
                dq 8F03849D1A0E97E0h, 0ECE9B2246DF0AE65h, 0E60484F5CE4B331Ah
                dq 0F933DF872A87949Bh, 0F3DEE956893C09E4h, 0C75D6962E31EDB99h
                dq 0CDB05FB340A546E6h, 0D28704C1A469E167h, 0D86A321007D27C18h
                dq 155369B34B95926Dh, 1FBE5F62E82E0F12h, 8904100CE2A893h
                dq 0A6432C1AF5935ECh, 3EE7B2F5C57BE791h, 340A842466C07AEEh
                dq 2B3DDF56820CDD6Fh, 21D0E98721B74010h, 423ADF3E56497995h
                dq 48D7E9EFF5F2E4EAh, 57E0B29D113E436Bh, 5D0D844CB285DE14h
                dq 698E0478D8A70C69h, 636332A97B1C9116h, 7C5469DB9FD03697h
                dq 76B95F0A3C6BABE8h, 9126D7CFE7076147h, 9BCBE11E44BCFC38h
                dq 84FCBA6CA0705BB9h, 8E118CBD03CBC6C6h, 0BA920C8969E914BBh
                dq 0B07F3A58CA5289C4h, 0AF48612A2E9E2E45h, 0A5A557FB8D25B33Ah
                dq 0C64F6142FADB8ABFh, 0CCA25793596017C0h, 0D3950CE1BDACB041h
                dq 0D9783A301E172D3Eh, 0EDFBBA047435FF43h, 0E7168CD5D78E623Ch
                dq 0F821D7A73342C5BDh, 0F2CCE17690F958C2h, 3FF5BAD5DCBEB6B7h
                dq 35188C047F052BC8h, 2A2FD7769BC98C49h, 20C2E1A738721136h
                dq 144161935250C34Bh, 1EAC5742F1EB5E34h, 19B0C301527F9B5h
                dq 0B763AE1B69C64CAh, 689C0C58C1625D4Fh, 62713A8962D9C030h
                dq 7D4661FB861567B1h, 77AB572A25AEFACEh, 4328D71E4F8C28B3h
                dq 49C5E1CFEC37B5CCh, 56F2BABD08FB124Dh, 5C1F8C6CAB408F32h
                dq 0F8592BA8C8E35DCCh, 0F2B41D796B58C0B3h, 0ED83460B8F946732h
                dq 0E76E70DA2C2FFA4Dh, 0D3EDF0EE460D2830h, 0D900C63FE5B6B54Fh
                dq 0C6379D4D017A12CEh, 0CCDAAB9CA2C18FB1h, 0AF309D25D53FB634h
                dq 0A5DDABF476842B4Bh, 0BAEAF08692488CCAh, 0B007C65731F311B5h
                dq 848446635BD1C3C8h, 8E6970B2F86A5EB7h, 915E2BC01CA6F936h
                dq 9BB31D11BF1D6449h, 568A46B2F35A8A3Ch, 5C67706350E11743h
                dq 43502B11B42DB0C2h, 49BD1DC017962DBDh, 7D3E9DF47DB4FFC0h
                dq 77D3AB25DE0F62BFh, 68E4F0573AC3C53Eh, 6209C68699785841h
                dq 1E3F03FEE8661C4h, 0B0EC6EE4D3DFCBBh, 14399D9CA9F15B3Ah
                dq 1ED4AB4D0A4AC645h, 2A572B7960681438h, 20BA1DA8C3D38947h
                dq 3F8D46DA271F2EC6h, 3560700B84A4B3B9h, 43D92F01B8CF1851h
                dq 493419D01B74852Eh, 560342A2FFB822AFh, 5CEE74735C03BFD0h
                dq 686DF44736216DADh, 6280C296959AF0D2h, 7DB799E471565753h
                dq 775AAF35D2EDCA2Ch, 14B0998CA513F3A9h, 1E5DAF5D06A86ED6h
                dq 16AF42FE264C957h, 0B87C2FE41DF5428h, 3F0442CA2BFD8655h
                dq 35E9741B88461B2Ah, 2ADE2F696C8ABCABh, 203319B8CF3121D4h
                dq 0ED0A421B8376CFA1h, 0E7E774CA20CD52DEh, 0F8D02FB8C401F55Fh
                dq 0F23D196967BA6820h, 0C6BE995D0D98BA5Dh, 0CC53AF8CAE232722h
                dq 0D364F4FE4AEF80A3h, 0D989C22FE9541DDCh, 0BA63F4969EAA2459h
                dq 0B08EC2473D11B926h, 0AFB99935D9DD1EA7h, 0A554AFE47A6683D8h
                dq 91D72FD0104451A5h, 9B3A1901B3FFCCDAh, 840D427357336B5Bh
                dq 8EE074A2F488F624h, 2AA6D366972B24DAh, 204BE5B73490B9A5h
                dq 3F7CBEC5D05C1E24h, 3591881473E7835Bh, 112082019C55126h
                dq 0BFF3EF1BA7ECC59h, 14C865835EB26BD8h, 1E255352FD09F6A7h
                dq 7DCF65EB8AF7CF22h, 7722533A294C525Dh, 68150848CD80F5DCh
                dq 62F83E996E3B68A3h, 567BBEAD0419BADEh, 5C96887CA7A227A1h
                dq 43A1D30E436E8020h, 494CE5DFE0D51D5Fh, 8475BE7CAC92F32Ah
                dq 8E9888AD0F296E55h, 91AFD3DFEBE5C9D4h, 9B42E50E485E54ABh
                dq 0AFC1653A227C86D6h, 0A52C53EB81C71BA9h, 0BA1B0899650BBC28h
                dq 0B0F63E48C6B02157h, 0D31C08F1B14E18D2h, 0D9F13E2012F585ADh
                dq 0C6C66552F639222Ch, 0CC2B53835582BF53h, 0F8A8D3B73FA06D2Eh
                dq 0F245E5669C1BF051h, 0ED72BE1478D757D0h, 0E79F88C5DB6CCAAFh
                dq 0
                dq 0B0BC2E589204F500h, 55A17AE27C9E796Bh, 0E51D54BAEE9A8C6Bh
                dq 0AB42F5C4F93CF2D6h, 1BFEDB9C6B3807D6h, 0FEE38F2685A28BBDh
                dq 4E5FA17E17A67EBDh, 625CCDDAAAEE76C7h, 0D2E0E38238EA83C7h
                dq 37FDB738D6700FACh, 874199604474FAACh, 0C91E381E53D28411h
                dq 79A21646C1D67111h, 9CBF42FC2F4CFD7Ah, 2C036CA4BD48087Ah
                dq 0C4B99BB555DCED8Eh, 7405B5EDC7D8188Eh, 9118E157294294E5h
                dq 21A4CF0FBB4661E5h, 6FFB6E71ACE01F58h, 0DF4740293EE4EA58h
                dq 3A5A1493D07E6633h, 8AE63ACB427A9333h, 0A6E5566FFF329B49h
                dq 165978376D366E49h, 0F3442C8D83ACE222h, 43F802D511A81722h
                dq 0DA7A3AB060E699Fh, 0BD1B8DF3940A9C9Fh, 5806D9497A9010F4h
                dq 0E8BAF711E894E5F4h, 0BDAA1139F32E4877h, 0D163F61612ABD77h
                dq 0E80B6BDB8FB0311Ch, 58B745831DB4C41Ch, 16E8E4FD0A12BAA1h
                dq 0A654CAA598164FA1h, 43499E1F768CC3CAh, 0F3F5B047E48836CAh
                dq 0DFF6DCE359C03EB0h, 6F4AF2BBCBC4CBB0h, 8A57A601255E47DBh
                dq 3AEB8859B75AB2DBh, 74B42927A0FCCC66h, 0C408077F32F83966h
                dq 211553C5DC62B50Dh, 91A97D9D4E66400Dh, 79138A8CA6F2A5F9h
                dq 0C9AFA4D434F650F9h, 2CB2F06EDA6CDC92h, 9C0EDE3648682992h
                dq 0D2517F485FCE572Fh, 62ED5110CDCAA22Fh, 87F005AA23502E44h
                dq 374C2BF2B154DB44h, 1B4F47560C1CD33Eh, 0ABF3690E9E18263Eh
                dq 4EEE3DB47082AA55h, 0FE5213ECE2865F55h, 0B00DB292F52021E8h
                dq 0B19CCA6724D4E8h, 0E5ACC87089BE5883h, 5510E6281BBAAD83h
                dq 4F8D0420BECB0385h, 0FF312A782CCFF685h, 1A2C7EC2C2557AEEh
                dq 0AA90509A50518FEEh, 0E4CFF1E447F7F153h, 5473DFBCD5F30453h
                dq 0B16E8B063B698838h, 1D2A55EA96D7D38h, 2DD1C9FA14257542h
                dq 9D6DE7A286218042h, 7870B31868BB0C29h, 0C8CC9D40FABFF929h
                dq 86933C3EED198794h, 362F12667F1D7294h, 0D33246DC9187FEFFh
                dq 638E688403830BFFh, 8B349F95EB17EE0Bh, 3B88B1CD79131B0Bh
                dq 0DE95E57797899760h, 6E29CB2F058D6260h, 20766A51122B1CDDh
                dq 90CA4409802FE9DDh, 75D710B36EB565B6h, 0C56B3EEBFCB190B6h
                dq 0E968524F41F998CCh, 59D47C17D3FD6DCCh, 0BCC928AD3D67E1A7h
                dq 0C7506F5AF6314A7h, 422AA78BB8C56A1Ah, 0F29689D32AC19F1Ah
                dq 178BDD69C45B1371h, 0A737F331565FE671h, 0F22715194DE54BF2h
                dq 429B3B41DFE1BEF2h, 0A7866FFB317B3299h, 173A41A3A37FC799h
                dq 5965E0DDB4D9B924h, 0E9D9CE8526DD4C24h, 0CC49A3FC847C04Fh
                dq 0BC78B4675A43354Fh, 907BD8C3E70B3D35h, 20C7F69B750FC835h
                dq 0C5DAA2219B95445Eh, 75668C790991B15Eh, 3B392D071E37CFE3h
                dq 8B85035F8C333AE3h, 6E9857E562A9B688h, 0DE2479BDF0AD4388h
                dq 369E8EAC1839A67Ch, 8622A0F48A3D537Ch, 633FF44E64A7DF17h
                dq 0D383DA16F6A32A17h, 9DDC7B68E10554AAh, 2D6055307301A1AAh
                dq 0C87D018A9D9B2DC1h, 78C12FD20F9FD8C1h, 54C24376B2D7D0BBh
                dq 0E47E6D2E20D325BBh, 1633994CE49A9D0h, 0B1DF17CC5C4D5CD0h
                dq 0FF80B6B24BEB226Dh, 4F3C98EAD9EFD76Dh, 0AA21CC5037755B06h
                dq 1A9DE208A571AE06h, 9F1A08417D96070Ah, 2FA62619EF92F20Ah
                dq 0CABB72A301087E61h, 7A075CFB930C8B61h, 3458FD8584AAF5DCh
                dq 84E4D3DD16AE00DCh, 61F98767F8348CB7h, 0D145A93F6A3079B7h
                dq 0FD46C59BD77871CDh, 4DFAEBC3457C84CDh, 0A8E7BF79ABE608A6h
                dq 185B912139E2FDA6h, 5604305F2E44831Bh, 0E6B81E07BC40761Bh
                dq 3A54ABD52DAFA70h, 0B31964E5C0DE0F70h, 5BA393F4284AEA84h
                dq 0EB1FBDACBA4E1F84h, 0E02E91654D493EFh, 0BEBEC74EC6D066EFh
                dq 0F0E16630D1761852h, 405D48684372ED52h, 0A5401CD2ADE86139h
                dq 15FC328A3FEC9439h, 39FF5E2E82A49C43h, 8943707610A06943h
                dq 6C5E24CCFE3AE528h, 0DCE20A946C3E1028h, 92BDABEA7B986E95h
                dq 220185B2E99C9B95h, 0C71CD108070617FEh, 77A0FF509502E2FEh
                dq 22B019788EB84F7Dh, 920C37201CBCBA7Dh, 7711639AF2263616h
                dq 0C7AD4DC26022C316h, 89F2ECBC7784BDABh, 394EC2E4E58048ABh
                dq 0DC53965E0B1AC4C0h, 6CEFB806991E31C0h, 40ECD4A2245639BAh
                dq 0F050FAFAB652CCBAh, 154DAE4058C840D1h, 0A5F18018CACCB5D1h
                dq 0EBAE2166DD6ACB6Ch, 5B120F3E4F6E3E6Ch, 0BE0F5B84A1F4B207h
                dq 0EB375DC33F04707h, 0E60982CDDB64A2F3h, 56B5AC95496057F3h
                dq 0B3A8F82FA7FADB98h, 314D67735FE2E98h, 4D4B770922585025h
                dq 0FDF75951B05CA525h, 18EA0DEB5EC6294Eh, 0A85623B3CCC2DC4Eh
                dq 84554F17718AD434h, 34E9614FE38E2134h, 0D1F435F50D14AD5Fh
                dq 61481BAD9F10585Fh, 2F17BAD388B626E2h, 9FAB948B1AB2D3E2h
                dq 7AB6C031F4285F89h, 0CA0AEE69662CAA89h, 0D0970C61C35D048Fh
                dq 602B22395159F18Fh, 85367683BFC37DE4h, 358A58DB2DC788E4h
                dq 7BD5F9A53A61F659h, 0CB69D7FDA8650359h, 2E74834746FF8F32h
                dq 9EC8AD1FD4FB7A32h, 0B2CBC1BB69B37248h, 277EFE3FBB78748h
                dq 0E76ABB59152D0B23h, 57D695018729FE23h, 1989347F908F809Eh
                dq 0A9351A27028B759Eh, 4C284E9DEC11F9F5h, 0FC9460C57E150CF5h
                dq 142E97D49681E901h, 0A492B98C04851C01h, 418FED36EA1F906Ah
                dq 0F133C36E781B656Ah, 0BF6C62106FBD1BD7h, 0FD04C48FDB9EED7h
                dq 0EACD18F2132362BCh, 5A7136AA812797BCh, 76725A0E3C6F9FC6h
                dq 0C6CE7456AE6B6AC6h, 23D320EC40F1E6ADh, 936F0EB4D2F513ADh
                dq 0DD30AFCAC5536D10h, 6D8C819257579810h, 8891D528B9CD147Bh
                dq 382DFB702BC9E17Bh, 6D3D1D5830734CF8h, 0DD813300A277B9F8h
                dq 389C67BA4CED3593h, 882049E2DEE9C093h, 0C67FE89CC94FBE2Eh
                dq 76C3C6C45B4B4B2Eh, 93DE927EB5D1C745h, 2362BC2627D53245h
                dq 0F61D0829A9D3A3Fh, 0BFDDFEDA0899CF3Fh, 5AC0AA60E6034354h
                dq 0EA7C84387407B654h, 0A423254663A1C8E9h, 149F0B1EF1A53DE9h
                dq 0F1825FA41F3FB182h, 413E71FC8D3B4482h, 0A98486ED65AFA176h
                dq 1938A8B5F7AB5476h, 0FC25FC0F1931D81Dh, 4C99D2578B352D1Dh
                dq 2C673299C9353A0h, 0B27A5D710E97A6A0h, 576709CBE00D2ACBh
                dq 0E7DB27937209DFCBh, 0CBD84B37CF41D7B1h, 7B64656F5D4522B1h
                dq 9E7931D5B3DFAEDAh, 2EC51F8D21DB5BDAh, 609ABEF3367D2567h
                dq 0D02690ABA479D067h, 353BC4114AE35C0Ch, 8587EA49D8E7A90Ch
qword_140016830 dq 0                    ; DATA XREF: .rdata:0000000140004FA8↑o
                dq 7F6EF0C830358979h, 0FEDDE190606B12F2h, 81B31158505E9B8Bh
                dq 0C962E5739841B68Fh, 0B60C15BBA8743FF6h, 37BF04E3F82AA47Dh
                dq 48D1F42BC81F2D04h, 0A61CECB46814FE75h, 0D9721C7C5821770Ch
                dq 58C10D24087FEC87h, 27AFFDEC384A65FEh, 6F7E09C7F05548FAh
                dq 1010F90FC060C183h, 91A3E857903E5A08h, 0EECD189FA00BD371h
                dq 78E0FF3B88BE6F81h, 78E0FF3B88BE6F8h, 863D1EABE8D57D73h
                dq 0F953EE63D8E0F40Ah, 0B1821A4810FFD90Eh, 0CEECEA8020CA5077h
                dq 4F5FFBD87094CBFCh, 30310B1040A14285h, 0DEFC138FE0AA91F4h
                dq 0A192E347D09F188Dh, 2021F21F80C18306h, 5F4F02D7B0F40A7Fh
                dq 179EF6FC78EB277Bh, 68F0063448DEAE02h, 0E943176C18803589h
                dq 962DE7A428B5BCF0h, 0F1C1FE77117CDF02h, 8EAF0EBF2149567Bh
                dq 0F1C1FE77117CDF0h, 7072EF2F41224489h, 38A31B04893D698Dh
                dq 47CDEBCCB908E0F4h, 0C67EFA94E9567B7Fh, 0B9100A5CD963F206h
                dq 57DD12C379682177h, 28B3E20B495DA80Eh, 0A900F35319033385h
                dq 0D66E039B2936BAFCh, 9EBFF7B0E12997F8h, 0E1D10778D11C1E81h
                dq 606216208142850Ah, 1F0CE6E8B1770C73h, 8921014C99C2B083h
                dq 0F64FF184A9F739FAh, 77FCE0DCF9A9A271h, 8921014C99C2B08h
                dq 4043E43F0183060Ch, 3F2D14F731B68F75h, 0BE9E05AF61E814FEh
                dq 0C1F0F56751DD9D87h, 2F3DEDF8F1D64EF6h, 50531D30C1E3C78Fh
                dq 0D1E00C6891BD5C04h, 0AE8EFCA0A188D57Dh, 0E65F088B6997F879h
                dq 9931F84359A27100h, 1882E91B09FCEA8Bh, 67EC19D339C963F2h
                dq 0D75ADABD7A6E2D6Fh, 0A8342A754A5BA416h, 29873B2D1A053F9Dh
                dq 56E9CBE52A30B6E4h, 1E383FCEE22F9BE0h, 6156CF06D21A1299h
                dq 0E0E5DE5E82448912h, 9F8B2E96B271006Bh, 71463609127AD31Ah
                dq 0E28C6C1224F5A63h, 8F9BD7997211C1E8h, 0F0F5275142244891h
                dq 0B824D37A8A3B6595h, 0C74A23B2BA0EECECh, 46F932EAEA507767h
                dq 3997C222DA65FE1Eh, 0AFBA2586F2D042EEh, 0D0D4D54EC2E5CB97h
                dq 5167C41692BB501Ch, 2E0934DEA28ED965h, 66D8C0F56A91F461h
                dq 19B6303D5AA47D18h, 980521650AFAE693h, 0E76BD1AD3ACF6FEAh
                dq 9A6C9329AC4BC9Bh, 76C839FAAAF135E2h, 0F77B28A2FAAFAE69h
                dq 8815D86ACA9A2710h, 0C0C42C4102850A14h, 0BFAADC8932B0836Dh
                dq 3E19CDD162EE18E6h, 41773D1952DB919Fh, 269B24CA6B12F26Dh
                dq 59F5D4025B277B14h, 0D846C55A0B79E09Fh, 0A72835923B4C69E6h
                dq 0EFF9C1B9F35344E2h, 90973171C366CD9Bh, 1124202993385610h
                dq 6E4AD0E1A30DDF69h, 8087C87E03060C18h, 0FFE938B633338561h
                dq 7E5A29EE636D1EEAh, 134D92653589793h, 49E52D0D9B47BA97h
                dq 368BDDC5AB7233EEh, 0B738CC9DFB2CA865h, 0C8563C55CB19211Ch
                dq 5E7BDBF1E3AC9DECh, 21152B39D3991495h, 0A0A63A6183C78F1Eh
                dq 0DFC8CAA9B3F20667h, 97193E827BED2B63h, 0E877CE4A4BD8A21Ah
                dq 69C4DF121B863991h, 16AA2FDA2BB3B0E8h, 0F86737458BB86399h
                dq 8709C78DBB8DEAE0h, 6BAD6D5EBD3716Bh, 79D4261DDBE6F812h
                dq 3105D23613F9D516h, 4E6B22FE23CC5C6Fh, 0CFD833A67392C7E4h
                dq 0B0B6C36E43A74E9Dh, 9A6C9329AC4BC9B5h, 0E50263E19C7E40CCh
                dq 64B172B9CC20DB47h, 1BDF8271FC15523Eh, 530E765A340A7F3Ah
                dq 2C608692043FF643h, 0ADD397CA54616DC8h, 0D2BD67026454E4B1h
                dq 3C707F9DC45F37C0h, 431E8F55F46ABEB9h, 0C2AD9E0DA4342532h
                dq 0BDC36EC59401AC4Bh, 0F5129AEE5C1E814Fh, 8A7C6A266C2B0836h
                dq 0BCF7B7E3C7593BDh, 74A18BB60C401AC4h, 0E28C6C1224F5A634h
                dq 9DE29CDA14C02F4Dh, 1C518D82449EB4C6h, 633F7D4A74AB3DBFh
                dq 2BEE8961BCB410BBh, 548079A98C8199C2h, 0D53368F1DCDF0249h
                dq 0AA5D9839ECEA8B30h, 449080A64CE15841h, 3BFE706E7CD4D138h
                dq 0BA4D61362C8A4AB3h, 0C52391FE1CBFC3CAh, 8DF265D5D4A0EECEh
                dq 0F29C951DE49567B7h, 732F8445B4CBFC3Ch, 0C41748D84FE7545h
                dq 6BAD6D5EBD3716B7h, 14C39D968D029FCEh, 95708CCEDD5C0445h
                dq 0EA1E7C06ED698D3Ch, 0A2CF882D2576A038h, 0DDA178E515432941h
                dq 5C1269BD451DB2CAh, 237C997575283BB3h, 0CDB181EAD523E8C2h
                dq 0B2DF7122E51661BBh, 336C607AB548FA30h, 4C0290B2857D7349h
                dq 4D364994D625E4Dh, 7BBD94517D57D734h, 0FA0E85092D094CBFh
                dq 856075C11D3CC5C6h, 134D926535897936h, 6C2362AD05BCF04Fh
                dq 0ED9073F555E26BC4h, 92FE833D65D7E2BDh, 0DA2F7716ADC8CFB9h
                dq 0A54187DE9DFD46C0h, 24F29686CDA3DD4Bh, 5B9C664EFD965432h
                dq 0B5517ED15D9D8743h, 0CA3F8E196DA80E3Ah, 4B8C9F413DF695B1h
                dq 34E26F890DC31CC8h, 7C339BA2C5DC31CCh, 35D6B6AF5E9B8B5h
                dq 82EE7A32A5B7233Eh, 0FD808AFA9582AA47h, 4D364994D625E4DAh
                dq 3258B95CE6106DA3h, 0B3EBA804B64EF628h, 0CC8558CC867B7F51h
                dq 8454ACE74E645255h, 0FB3A5C2F7E51DB2Ch, 7A894D772E0F40A7h
                dq 5E7BDBF1E3AC9DEh, 0EB2AA520BE311AAFh, 944455E88E0493D6h
                dq 15F744B0DE5A085Dh, 6A99B478EE6F8124h, 224840532670AC20h
                dq 5D26B09B16452559h, 0DC95A1C3461BBED2h, 0A3FB510B762E37ABh
                dq 35D6B6AF5E9B8B5Bh, 4AB846676EAE0222h, 0CB0B573F3EF099A9h
                dq 0B465A7F70EC510D0h, 0FCB453DCC6DA3DD4h, 83DAA314F6EFB4ADh
                dq 269B24CA6B12F26h, 7D0742849684A65Fh, 93CA5A1B368F752Eh
                dq 0ECA4AAD306BAFC57h, 6D17BB8B56E467DCh, 12794B4366D1EEA5h
                dq 5AA8BF68AECEC3A1h, 25C64FA09EFB4AD8h, 0A4755EF8CEA5D153h
                dq 0DB1BAE30FE90582Ah, 0BCF7B7E3C7593BD8h, 0C399472BF76CB2A1h
                dq 422A5673A732292Ah, 3D44A6BB9707A053h, 759552905F188D57h
                dq 0AFBA2586F2D042Eh, 8B48B3003F739FA5h, 0F42643C80F4616DCh
                dq 1AEB5B57AF4DC5ADh, 6585AB9F9F784CD4h, 0E436BAC7CF26D75Fh
                dq 9B584A0FFF135E26h, 0D389BE24370C7322h, 0ACE74EEC0739FA5Bh
                dq 2D545FB4576761D0h, 523AAF7C6752E8A9h, 0C41748D84FE75459h
                dq 0BB79B8107FD2DD20h, 3ACAA9482F8C46ABh, 45A459801FB9CFD2h
                dq 0D75ADABD7A6E2D6h, 721B5D63E7936BAFh, 0F3A84C3BB7CDF024h
                dq 8CC6BCF387F8795Dh, 620BA46C27F3AA2Ch, 1D6554A417C62355h
                dq 9CD645FC4798B8DEh, 0E3B8B53477AD31A7h, 0AB69411FBFB21CA3h
                dq 0D407B1D78F8795DAh, 55B4A08FDFD90E51h, 2ADA5047EFEC8728h
qword_140017030 dq 80000000000000h, 800000000000h, 80000000h, 9A6C9329AC4BC9B5h
                                        ; DATA XREF: .rdata:off_140004FA0↑o
                dq 10F4BB0F129310D6h, 70F05DCEA2EBD226h, 311211205672822Dh
                dq 2FC297DB0F46C96Eh, 0CA4D536FABF7DA84h, 0FB4CDC3B379EE6EDh
                dq 0EA261148DF25140Ah, 59CCB2C07AA6C9B4h, 20B3674A839AF27Ah
                dq 2D8E1986DA94D583h, 42CDF4C20337635Dh, 1D78724BF0F26839h
                dq 0B96C84E0AFB34BD5h, 5D2E1FCD2DF0A3EAh, 0CD9506572332BE42h
                dq 23BDA2427F7D690Fh, 347A953232374F07h, 1C2A807AC2A8CEEAh
                dq 9B92AD0E14FE1460h, 2574114889F670B2h, 4A84A6C45E3BF520h
                dq 915BBAC21CD1C7FFh, 0B0290EC579F291F5h, 0CF2548505C624E6Eh
                dq 0B154F27BF08A8207h, 0CE4E92344BAF7D35h, 51DA8D7E057C5EB3h
                dq 9FB10823F5BE15DFh, 73B825B3FF1F71CFh, 5DB436C5406EBB74h
                dq 0FA7ED8F3EC3F2BCAh, 0C4D58EFDC61B9EF6h, 0A7E39E61E855BD45h
                dq 97AD46F9DD1BF2F1h, 1A0ABB01F853EE6Bh, 3F0827C3348F8215h
                dq 4EB68C4506134607h, 4A46F6DE5DF34E0Ah, 2D855D6A1C57A8DDh
                dq 8688DA58E1115812h, 5232F417FC7C7300h, 0A4080FB2E767D8DAh
                dq 0D515A7E17693E562h, 1181F7C862E94226h, 9E23CD058204CA91h
                dq 9B8992C57A0AED82h, 0B2C0AFB84609B6FFh, 2F7160553A5EA018h
                dq 3CD378B5C99F2722h, 814054AD61A3B058h, 0BF766189FCE806D8h
                dq 85A5E898AC49F86Fh, 34830D11BC84F346h, 9644D95B173C8C1Ch
                dq 150401AC9AC759B1h, 0EBE1F7F46FB00EBAh, 8EE4CE0C2E2BD662h
                dq 4000000000000000h, 2000000000000000h, 800000000000000h
qword_140017230 dq 7                    ; DATA XREF: .rdata:00000001400069C0↑o
                                        ; .rdata:00000001400069D0↑o
qword_140017238 dq 800000040h           ; DATA XREF: .rdata:0000000140006A60↑o
                                        ; .rdata:0000000140006E68↑o ...
qword_140017240 dq 11h                  ; DATA XREF: .rdata:0000000140006DD8↑o
                                        ; .rdata:0000000140007018↑o
qword_140017248 dq 60300000001h, 30h    ; DATA XREF: .rdata:0000000140006DC8↑o
byte_140017258  db 5, 4 dup(0)          ; DATA XREF: .rdata:0000000140006D78↑o
                align 20h
                dq 5A4h, 0
                dq 2710h, 4000000603h
byte_140017280  db 5, 4 dup(0)          ; DATA XREF: .rdata:0000000140006D58↑o
                align 8
                dq 5A4h, 0
                dq 2710h, 5000000603h
qword_1400172A8 dq 60300000001h, 2Ch    ; DATA XREF: .rdata:0000000140006ED0↑o
qword_1400172B8 dq 60300000001h, 60h    ; DATA XREF: .rdata:0000000140006D30↑o
qword_1400172C8 dq 60300000001h, 18h    ; DATA XREF: .rdata:0000000140006F80↑o
qword_1400172D8 dq 50300000001h, 14h    ; DATA XREF: .rdata:0000000140006C78↑o
qword_1400172E8 dq 60300000001h, 0      ; DATA XREF: .rdata:0000000140007008↑o
qword_1400172F8 dq 60300000001h, 24h    ; DATA XREF: .rdata:0000000140006C58↑o
qword_140017308 dq 0FFFFFFFFFE363C80h   ; DATA XREF: sub_1402F9FDC:loc_1402FA02A↓r
aTm:                                    ; DATA XREF: .data:0000000140C019D8↓o
                text "UTF-16LE", '.TM',0
aAllowcontainer:                        ; DATA XREF: .data:0000000140C019F0↓o
                text "UTF-16LE", 'AllowContainerNesting',0
                align 8
aMachine:                               ; DATA XREF: .rdata:0000000140006108↑o
                text "UTF-16LE", 'MACHINE',0
aA:                                     ; DATA XREF: .rdata:0000000140006118↑o
                                        ; .data:off_140C01ED0↓o
                text "UTF-16LE", 'A',0
                align 20h
aUser_1:                                ; DATA XREF: .rdata:00000001400060F8↑o
                text "UTF-16LE", 'USER',0
                align 4
aWc:                                    ; DATA XREF: .rdata:00000001400060E8↑o
                text "UTF-16LE", 'WC',0
                align 8
aRegistryWc_0:                          ; DATA XREF: .rdata:0000000140006128↑o
                text "UTF-16LE", '\Registry\WC',0
                align 8
xmmword_140017398 xmmword 0AABBAABBh    ; DATA XREF: sub_1408E5DC0:loc_1408E5F92↓r
                                        ; sub_1408E5DC0:loc_1408E6072↓r
xmmword_1400173A8 xmmword 0C68B39992AC543814FB97CB2424CA0E2h
                                        ; DATA XREF: sub_1405C8980+129↓r
qword_1400173B8 dq 50300000001h, 0      ; DATA XREF: .rdata:00000001400070B8↑o
byte_1400173C8  db 5, 4 dup(0)          ; DATA XREF: .rdata:0000000140007148↑o
                align 10h
                dq 5A4h, 0
                dq 2710h, 1000000603h
qword_1400173F0 dq 19E00000002h, 226h, 6E00720065004Bh, 610050006C0065h
                                        ; DATA XREF: .data:off_140C01A50↓o
                dq 63006500530064h, 6E006F00690074h, 650076004F0073h, 64006900720072h
                dq 65h, 0
aUsercetbasicmo_0:                      ; DATA XREF: .data:0000000140C01960↓o
                text "UTF-16LE", 'UserCetBasicModeAllowRetTargetNotCetCompat',0
                align 20h
dword_1400174A0 dd 18h                  ; DATA XREF: sub_1402834D0+440↓o
                                        ; sub_1402834D0+486↓o ...
                dd 1
                dq 300000002h, 400000004h, 600000006h, 900000018h, 0B0000000Ah
                dq 0C0000000Ch, 0E0000000Eh, 1100000018h, 1300000012h
                dq 1400000014h, 1600000016h, 1900000018h, 1B0000001Ah
                dq 1C0000001Ch, 1E0000001Eh
qword_140017520 dq 8000000000000000h    ; DATA XREF: sub_140227A20+170↓o
                                        ; sub_14022B420+E60↓r ...
                dq 8000000000000000h, 2 dup(0)
                dq 8000000000000800h, 8000000000000200h, 800h, 200h, 8000000000000000h
                dq 8000000000000018h, 2 dup(18h), 8000000000000818h, 8000000000000218h
                dq 818h, 218h, 2 dup(8000000000000000h), 2 dup(0)
                dq 8000000000000800h, 8000000000000200h, 800h, 200h, 8000000000000000h
                dq 8000000000000008h, 2 dup(8), 8000000000000808h, 8000000000000208h
                dq 808h, 208h
qword_140017620 dq 0                    ; DATA XREF: sub_14023C050+80D↓r
                                        ; sub_140316344+5E↓o ...
                dq 0FFFFFF04FF011800h, 0FFFFFFFFFFFFFF05h, 0FFFFFF06FF030200h
                dq 0FFFFFFFFFFFFFF07h
qword_140017648 dq 0                    ; DATA XREF: sub_1402BDD94+21↓o
                                        ; sub_14056D910+1E↓o ...
                dq 11E1A300h, 23C34600h, 47868C00h, 0B2D05E00h, 0FFFFFFFFFFFFFFFFh
xmmword_140017678 xmmword 0FE9AE265D94956884A5FE5FA3A861AA2h
                                        ; DATA XREF: sub_1408F0214+161↓r
word_140017688  dw 0                    ; DATA XREF: sub_140346894:loc_140346A78↓r
                                        ; sub_140346894+1ED↓r ...
                dw 1Fh, 3Ch, 5Bh
                dq 0D500B600980079h, 14F0131011200F4h, 16Eh
qword_1400176A8 dq 0D1B71758E219652Ch   ; DATA XREF: sub_140346D74+C↓r
                dq 3 dup(0)
                dq 100000000000000h, 3 dup(101010101010101h), 202020201010101h
                dq 3 dup(202020202020202h), 303030303020202h, 3 dup(303030303030303h)
                dq 404040404040403h, 3 dup(404040404040404h), 3 dup(505050505050505h)
                dq 606050505050505h, 3 dup(606060606060606h), 707070606060606h
                dq 3 dup(707070707070707h), 808080807070707h, 3 dup(808080808080808h)
                dq 909090909090808h, 3 dup(909090909090909h), 0A0A0A0A0A0A0A09h
                dq 2 dup(0A0A0A0A0A0A0A0Ah), 0B0A0A0A0A0A0A0Ah, 3 dup(0B0B0B0B0B0B0B0Bh)
                dq 0B0B0B0B0B0Bh
qword_140017820 dq 0C6D750EBFA67B90Eh   ; DATA XREF: sub_140346D74+1E↓r
                dq 4 dup(0)
                dq 100000000000000h, 3 dup(101010101010101h), 202020202010101h
                dq 3 dup(202020202020202h), 303030303030202h, 3 dup(303030303030303h)
                dq 3 dup(404040404040404h), 504040404040404h, 3 dup(505050505050505h)
                dq 606060505050505h, 3 dup(606060606060606h), 707070706060606h
                dq 3 dup(707070707070707h), 808080808070707h, 3 dup(808080808080808h)
                dq 909090909090908h, 3 dup(909090909090909h), 3 dup(0A0A0A0A0A0A0A0Ah)
                dq 0B0B0A0A0A0A0A0Ah, 3 dup(0B0B0B0B0B0B0B0Bh), 0B0B0B0B0Bh
word_1400179A0  dw 0                    ; DATA XREF: sub_140346894+C8↓r
                                        ; sub_140346894+D1↓r ...
                dw 1Fh, 3Bh, 5Ah
                dq 0D400B500970078h, 14E0130011100F3h, 16Dh
qword_1400179C0 dq 20400000200h, 1F200000209h, 20600000205h, 20800000207h
                                        ; DATA XREF: RtlIsElevatedRid+4D↓o
                dq 22300000220h, 22500000224h, 22700000226h, 22A00000229h
                dq 2390000022Ch, 72h, 505050506060708h, 404040404040404h
                dq 303030303030304h, 303030303030303h, 202020203030405h
                dq 202020202020203h, 202020202020304h, 202020202020203h
                dq 303030304040506h, 202020202020203h, 101010202020304h
                dq 101010201010203h, 202020203030405h, 101010201010203h
                dq 101010202020304h, 101010201010203h, 404040405050607h
                dq 303030303030303h, 202020202020304h, 202020202020203h
                dq 202020203030405h, 101010201010203h, 101010202020304h
                dq 101010201010203h, 303030304040506h, 202020202020203h
                dq 101010202020304h, 101010201010203h, 202020203030405h
                dq 101010201010203h, 101010202020304h, 1010201010203h
dword_140017B10 dd 0                    ; DATA XREF: RtlNtStatusToDosErrorNoTeb+66↓r
byte_140017B14  db 4                    ; DATA XREF: RtlNtStatusToDosErrorNoTeb+74↓r
byte_140017B15  db 1                    ; DATA XREF: RtlNtStatusToDosErrorNoTeb:loc_140330B05↓r
word_140017B16  dw 0                    ; DATA XREF: RtlNtStatusToDosErrorNoTeb+9D↓r
                dq 401010000003Fh, 5010100000080h, 60102000000BFh, 80110000000FFh
                dq 18010A00000110h, 22011100000120h, 33010100000202h, 34010700000210h
                dq 3B010200000367h, 3D010200010001h, 3F010100090368h, 400201001C0001h
                dq 42010200293000h, 44020100350059h, 46020400E70000h, 4E013440000000h
                dq 82020440000034h, 8A010140000294h, 8B010140000370h, 8C010140000807h
                dq 8D01014000A144h, 8E010A40010001h, 98010140020056h, 990101400200AFh
                dq 9A0102400A0004h, 9C01014015000Dh, 9D010140190001h, 9E010240190034h
                dq 0A00101401A000Ch, 0A10201401B00ECh, 0A30201401E000Ah
                dq 0A50201401E0201h, 0A70201401E0307h, 0A90201401E031Eh
                dq 0AB0202401E034Bh, 0AF0201401E0351h, 0B10201401E042Fh
                dq 0B30201401E0437h, 0B50202401E0439h, 0B90201401E043Ch
                dq 0BB020140230001h, 0BD020140292023h, 0BF020780000001h
                dq 0CD010F8000000Ah, 0DC01178000001Ah, 0F3020380000031h
                dq 0F9010280000288h, 0FB010180000803h, 0FC01018000A127h
                dq 0FD01018000CF00h, 0FE01028000CF04h, 100010180010001h
                dq 101011280090300h, 113010380090316h, 116010380090320h
                dq 119010580090325h, 11E010280090330h, 120010180090333h
                dq 12101018009033Fh, 122010180090347h, 123010180090349h
                dq 12401038009035Dh, 127010180090363h, 128010180090367h
                dq 129010180092010h, 12A010280092012h, 12C010180096004h
                dq 12D0101800B0110h, 12E010580130001h, 133010180190009h
                dq 134010180190029h, 135010180190031h, 136010280190041h
                dq 1380201801B00EBh, 13A0101801C0001h, 13B020280210001h
                dq 13F020180370001h, 141020280380001h, 145020180390001h
                dq 147020180390003h, 1490201803A0001h, 14B0101803F0001h
                dq 14C010180430006h, 14D011CC0000001h, 1690201C000001Dh
                dq 16B0107C000001Eh, 1720207C0000025h, 1800160C000002Ch
                dq 1E0020BC000008Ch, 1F601D8C0000097h, 2CE0107C0000172h
                dq 2D50139C000017Ah, 30E0149C0000201h, 357010DC0000250h
                dq 3640116C000025Eh, 37A0108C0000275h, 3820108C0000280h
                dq 38A010AC000028Ah, 3940126C0000295h, 3BA012DC00002C1h
                dq 3E70210C00002EEh, 4070107C00002FEh, 40E0209C0000305h
                dq 4200203C0000320h, 4260210C0000350h, 4460106C0000361h
                dq 44C0108C0000368h, 4540104C0000371h, 4580210C0000380h
                dq 4780109C0000401h, 4810206C000040Ah, 48D0105C0000410h
                dq 4920201C0000415h, 4940108C0000416h, 49C0102C0000420h
                dq 49E010AC0000423h, 4A80201C000042Dh, 4AA0201C000042Fh
                dq 4AC0104C0000432h, 4B00201C0000440h, 4B20106C0000441h
                dq 4B8010AC0000450h, 4C20124C0000460h, 4E60202C0000484h
                dq 4EA0112C0000486h, 4FC0122C0000499h, 51E0102C00004BDh
                dq 520010AC0000500h, 52A0204C000050Ah, 5320107C000050Eh
                dq 5390202C0000515h, 53D0101C0000518h, 53E0205C0000602h
                dq 5480102C000060Ah, 54A0127C0000700h, 5710103C0000800h
                dq 5740103C0000804h, 577010AC0000808h, 5810109C0000901h
                dq 58A0203C000090Ah, 5900101C0000910h, 5910101C0009898h
                dq 5920202C000A000h, 5960107C000A002h, 59D0105C000A010h
                dq 5A2010FC000A080h, 5B10102C000A100h, 5B30106C000A121h
                dq 5B90103C000A141h, 5BC0102C000A145h, 5BE0105C000A200h
                dq 5C30105C000A281h, 5C80107C000A2A1h, 5CF0101C000C001h
                dq 5D00105C000CE01h, 5D50104C000CF00h, 5D90116C000CF06h
                dq 5EF0105C000CF1Dh, 5F40106C000F500h, 5FA0102C0010001h
                dq 5FC011DC0020001h, 6190101C002001Fh, 61A0106C0020021h
                dq 6200126C0020028h, 6460107C002004Fh, 64D0102C0020057h
                dq 64F0104C0020062h, 653010CC0030001h, 65F0109C0030059h
                dq 6680105C0040035h, 66D0103C00A0001h, 670010BC00A0006h
                dq 67B0107C00A0012h, 6820101C00A0022h, 6830101C00A0024h
                dq 6840103C00A0026h, 6870102C00A002Ah, 689010DC00A002Eh
                dq 6960107C00B0001h, 69D0119C0130001h, 6B6010AC0130020h
                dq 6C00102C0130030h, 6C20119C0140001h, 6DB0102C0140020h
                dq 6DD010CC0150001h, 6E9011AC015000Eh, 7030108C0190001h
                dq 70B0103C019000Ah, 70E010BC019000Fh, 7190106C0190021h
                dq 71F0101C0190028h, 7200101C0190030h, 7210102C0190032h
                dq 723010BC0190036h, 72E011FC0190043h, 74D010BC01A0001h
                dq 7580124C01A000Dh, 77C0201C01B00EAh, 77E021CC01C0001h
                dq 7B60201C01C0020h, 7B80201C01C0023h, 7BA020AC01D0001h
                dq 7CE020AC01E0000h, 7E20209C01E000Bh, 7F4020AC01E0100h
                dq 8080207C01E0110h, 8160201C01E0200h, 8180207C01E0300h
                dq 8260205C01E0308h, 830020EC01E0310h, 84C022CC01E031Fh
                dq 8A40204C01E034Dh, 8AC020BC01E0352h, 8C20202C01E0400h
                dq 8C60207C01E0430h, 8D40201C01E0438h, 8D60201C01E043Bh
                dq 8D80204C01E0500h, 8E00201C01E0505h, 8E20202C01E050Bh
                dq 8E6020BC01E050Eh, 8FC0201C01E051Ah, 8FE0206C01E051Ch
                dq 90A020EC01E0580h, 9260209C01E05E0h, 938022BC0210000h
                dq 98E0211C0210030h, 9B00244C0220001h, 0A380205C0220100h
                dq 0A420201C0230002h, 0A44020AC0230004h, 0A580203C023000Fh
                dq 0A5E020CC0230014h, 0A760201C0230022h, 0A780208C023002Ah
                dq 0A880201C02300BBh, 0A8A0201C023100Fh, 0A8C0202C0231012h
                dq 0A900209C0232000h, 0AA20202C0240000h, 0AA60260C0290000h
                dq 0B660203C0290061h, 0B6C0205C0290081h, 0B76020AC0290087h
                dq 0B8A0201C0290092h, 0B8C0204C0290095h, 0B940204C029009Ah
                dq 0B9C0209C029009Fh, 0BAE0202C0290100h, 0BB20201C0290103h
                dq 0BB40201C029010Bh, 0BB60201C0290119h, 0BB80202C0290120h
                dq 0BBC0206C0290123h, 0BC80205C029012Dh, 0BD2020BC0290142h
                dq 0BE80206C0290150h, 0BF40205C0290400h, 0BFE0204C0290800h
                dq 0C060206C0291001h, 0C120223C0292000h, 0C580104C0293002h
                dq 0C5C0201C0294000h, 0C5E020DC0350002h, 0C78020EC0350011h
                dq 0C940201C0350033h, 0C960201C0350038h, 0C980204C035003Ch
                dq 0CA00201C0350041h, 0CA20202C0350050h, 0CA60201C0350055h
                dq 0CA80202C0350057h, 0CAC0201C0350060h, 0CAE0207C035006Fh
                dq 0CBC0201C0351000h, 0CBE0109C0360001h, 0CC70107C0368000h
                dq 0CCE022AC0370001h, 0D22025CC0380001h, 0DDA0201C0390002h
                dq 0DDC0224C03A0001h, 0E240203C03A0028h, 0E2A0204C03A0030h
                dq 0E320106C0400001h, 0E380104C0410001h, 0E3C0211C0420001h
                dq 0E5E0201C0421000h, 0E600105C0430001h, 0E65010AC0430007h
                dq 0E6F0205C0440001h, 0E790102C0450000h, 0E7B0202C0500003h
                dq 0E7F0201C0510001h, 0E810201C05C0000h, 0E83020DC05CFF00h
                dq 0E9D0203C05D0000h, 0EA30102C0980001h, 0EA50101C0980008h
                dq 0EA60201C0E70001h, 0EA80202C0E70003h, 0EAC0202C0E70006h
                dq 0EB00218C0E70009h, 0EE00201C0E80000h, 0EE20106C0E90001h
                dq 0EE8020AC0EA0001h, 0EFC0107C0EB0001h, 0F030108C0EC0000h
                dq 0F0B0101FFFFFFFFh, 0
word_1400184C0  dw 0                    ; DATA XREF: RtlNtStatusToDosErrorNoTeb+AE↓r
                                        ; RtlNtStatusToDosErrorNoTeb+146BFD↓r ...
                dw 2DBh, 2DCh, 2DDh
                dq 2E102E0008002DEh, 5B402E302E20000h, 51400EA02E503E5h
                dq 2E802E702E60515h, 2EA051603FE02E9h, 2EE02ED02EC02EBh
                dq 2F202F102F002EFh, 200902F502F402F3h, 2F902F802F702F6h
                dq 2FC02FB02FAh, 0
                dq 1A33000000000000h, 0
                dq 2FD032303200000h, 3E502FF02FE02E5h, 1F0001h, 350059h
                dq 0
                db    2
                align 2
                dw 80E7h, 2BAh, 2BBh
                db  57h ; W
                align 2
                dw 2BCh, 2BDh, 2BEh
                db  17h
                db 5, 0BFh, 2, 60h, 4, 0F6h, 3
                db 0C0h
                db 2, 0C1h, 2, 61h, 4, 18h, 5
                db 0C2h
                db 2, 0C3h, 2, 0C4h, 2, 0C5h, 2
                db 0C6h
                db 2, 0C7h, 2, 0C8h, 2, 0C9h, 2
                db 0CAh
                db 2, 0CBh, 2, 0CCh, 2, 0CDh, 2
                db 0CEh
                db 2, 0CFh, 2, 1Bh, 2, 1Bh, 2
                db  1Bh
                db 2, 1Bh, 2, 1Bh, 2, 1Bh, 2
                db  1Bh
                db 2, 0D0h, 2, 0D1h, 2, 0D2h, 2
                db 0D3h
                db 2, 0D4h, 2, 1Bh, 2, 0D5h, 2
                db 0D6h
                db 2, 0D7h, 2, 0D8h, 2, 0D9h, 2
                db  4Fh ; O
                db 5, 0Eh, 3, 4Fh, 5, 0Fh, 3
                db  11h
                db 3, 13h, 2 dup(3), 0, 9, 0C0h
                db    0
                align 4
                dd 327h
                db    0
                align 4
                dd 20AC02DAh
                db  18h
                db 3, 2Dh, 3Ch, 0B1h, 2, 0B2h, 2
                db 0B3h
                db 2, 0B4h, 2, 0B5h, 2, 0B6h, 2
                db 0B7h
                db 2, 0B8h, 2, 0B9h, 2, 0B6h, 2
                db  20h
                db 7, 79h, 7, 9Ah, 1Bh, 9Bh, 1Bh
                db    8
                db 37h, 4Bh, 1Ah, 0A5h, 1Ah, 0A6h, 1Ah
                db 0D3h
                db 19h, 1, 0, 26h, 80h, 0Ah, 20h
                db  26h ; &
                db 40h, 1, 22h, 26h, 40h, 7, 23h
                db  26h ; &
                align 2
                dw 231Eh, 26h, 234Bh
                db  26h ; &
                align 2
                dw 234Ch, 26h, 2351h
                db  26h ; &
                align 2
                dw 242Fh, 4026h, 2437h
                db  26h ; &
                db 40h, 39h, 24h, 26h, 40h, 3Ah, 24h
                db  26h ; &
                db 40h, 3Ch, 24h, 26h, 40h, 1, 0
                db  34h ; 4
                align 2
                dw 423h, 4029h, 1
                db    0
                db 80h, 0E6h, 3, 2 dup(0), 3, 0
                db    0
                db 80h, 4, 2 dup(0), 80h, 0EAh, 0
                db    0
                align 2
                dw 12h, 0
                dw 2A3h
                db    0
                align 2
                dw 2A4h, 56Fh, 2A8h
                db  2Bh ; +
                db 1, 1Ch, 0, 15h, 0, 15h, 0
                db 0AAh
                align 2
                dw 103h, 0FEh, 0FFh
                db 0FFh
                align 2
                dw 456h, 2A5h, 2A6h
                db    3
                db 1, 4Dh, 4, 56h, 4, 57h, 4
                db  4Ch ; L
                db 4, 4Eh, 4, 0A7h, 2, 4Fh, 4
                db  50h ; P
                db 4, 2, 7, 13h, 7, 62h, 9
                db 0AAh
                db 2, 0F4h, 10h, 0ABh, 2, 0ACh, 2
                db 0ADh
                db 2, 0AEh, 2, 0AFh, 2, 0A9h, 2
                db  21h ; !
                db 3, 24h, 3, 0ABh, 0, 7, 2
                db    3
                align 2
                dw 0EBh, 0
                dw 67Eh
                db    0
                align 2
                dw 48Dh, 48Eh, 1ABBh
                db 0DFh
                db 3Bh, 6Eh, 1, 6Dh, 1, 76h, 1
                db 0B0h
                db 2, 0AAh, 5, 6, 0, 1, 0
                db  35h ; 5
                align 2
                dw 54Fh, 554h, 120h
                db  54h ; T
                db 5, 57h, 0, 57h, 0, 32h, 0
                db  58h ; X
                db 5, 2Eh, 5, 57h, 0, 20h, 5
                db    5
                align 2
                dw 5, 51Fh, 554h
                db  8Bh
                db 7, 0F8h, 6, 57h, 0, 7Ah, 0
                db  74h ; t
                db 5, 0FEh, 6, 57h, 0, 57h, 0
                db  32h ; 2
                db 5, 70h, 17h, 71h, 17h, 1, 0
                db  8Bh
                db 7, 5Bh, 4, 58h, 5, 45h, 5
                db  57h ; W
                align 2
                dw 2 dup(5), 575h
                db  32h ; 2
                align 2
                dw 3 dup(575h)
                db  75h ; u
                db 5, 45h, 5, 0C5h, 13h, 0C6h, 13h
                db 0C7h
                db 13h, 0C8h, 13h, 0C9h, 13h, 0E5h, 19h
                db 0A0h
                db 1Ah, 0A2h, 1Ah, 0B3h, 1Ah, 0B4h, 1Ah
                db    1
                align 2
                dw 8026h, 7Ah, 10h
                db  31h ; 1
                db 80h, 57h, 0, 31h, 80h, 1, 0
                db  37h ; 7
                db 80h, 1, 0, 38h, 80h, 2, 0
                db  38h ; 8
                db 80h, 1, 0, 39h, 80h, 3, 0
                db  39h ; 9
                db 80h, 1, 0, 3Ah, 80h, 75h, 1
                db  49h ; I
                db 11h, 1Fh, 0, 1, 0, 57h, 0
                db  18h
                align 2
                dw 3E6h, 3E7h, 5AEh
                db    6
                align 2
                dw 3E9h, 0C1h, 57h
                db  1Dh
                db 2, 57h, 0, 0B1h, 1, 2, 0
                db    1
                align 2
                dw 26h, 22h, 15h
                db 0F9h
                db 6, 1Bh, 0, 0EAh, 0, 8, 0
                db 0E7h
                db 1, 0E7h, 1, 57h, 0, 57h, 0
                db    1
                align 2
                dw 1Dh, 0C000h, 5
                db    5
                align 2
                dw 0C1h, 2 dup(5)
                db  7Ah ; z
                align 2
                dw 6, 25h, 0C000h
                db  26h ; &
                db 2 dup(0), 0C0h, 1Eh, 2, 2 dup(0)
                db  1Fh
                db 2, 2 dup(0), 20h, 2, 2 dup(0)
                db  9Eh
                align 4
                dd 0C000002Bh
                db 0E7h
                db 1, 0E7h, 1, 21h, 2, 22h, 2
                db  57h ; W
                align 2
                dw 223h, 571h, 7Bh
                db    2
                align 2
                dw 0B7h, 72Ah, 6
                db  24h ; $
                db 2, 0A1h, 0, 3, 0, 0A1h, 0
                db  5Dh ; ]
                db 4, 5Dh, 4, 17h, 0, 17h, 0
                db    8
                align 2
                dw 5, 6, 20h
                db  18h
                db 7, 57h, 0, 20h, 1, 2Ah, 1
                db  57h ; W
                align 2
                dw 57h, 9Ch, 5
aWww:
                text "UTF-16LE", 'WWW'
                dw 11Ah
                db 0FFh
                align 2
                dw 3 dup(570h)
                db  21h ; !
                align 2
                dw 21h, 5, 32h
                db  19h
                db 5, 1Ah, 5, 1Bh, 5, 1Ch, 5
                db  1Dh
                db 5, 1Eh, 5, 1Fh, 5, 20h, 5
                db  21h ; !
                db 5, 22h, 5, 23h, 5, 24h, 5
                db  25h ; %
                db 5, 26h, 5, 27h, 5, 28h, 5
                db  29h ; )
                db 5, 2Ah, 5, 56h, 0, 2Ch, 5
                db  2Dh ; -
                db 5, 2Eh, 5, 2Fh, 5, 30h, 5
                db  31h ; 1
                db 5, 32h, 5, 33h, 5, 34h, 5
                db  35h ; 5
                db 5, 36h, 5, 37h, 5, 38h, 5
                db  39h ; 9
                db 5, 3Ah, 5, 7Fh, 0, 0C1h, 0
                db 0F0h
                db 3, 3Ch, 5, 9Eh, 0, 70h, 0
                db  3Dh ; =
                db 5, 3Eh, 5, 44h, 0, 3, 1
                db  3Fh ; ?
                db 5, 3, 1, 9Ah, 0, 0Eh, 0
                db 0E7h
                db 1, 14h, 7, 15h, 7, 16h, 7
                db  8Ch
                db 2 dup(0), 0C0h, 8Dh, 2 dup(0), 0C0h
                db  8Eh
                db 2 dup(0), 0C0h, 8Fh, 2 dup(0), 0C0h
                db 90h
                db 2 dup(0), 0C0h, 91h, 2 dup(0), 0C0h
                db  92h
                db 2 dup(0), 0C0h, 93h, 2 dup(0), 0C0h
                db  94h
                db 2 dup(0), 0C0h, 16h, 2, 2 dup(0)
                db  96h
                db 2 dup(0), 0C0h, 8, 0, 0EEh, 3
                db  40h ; @
                db 5, 0AAh, 5, 3, 0, 17h, 0
                db  8Fh
                db 4, 15h, 0, 0E7h, 1, 0E7h, 1
                db 0ADh
                db 5, 13h, 0, 15h, 0, 41h, 5
                db  42h ; B
                db 5, 43h, 5, 44h, 5, 45h, 5
                db  57h ; W
                align 2
                dw 225h, 2 dup(0E7h)
                db 0E6h
                align 2
                dw 0E7h, 1, 0E9h
                db 0E8h
                align 2
                dw 217h, 218h, 0E6h
                db  79h ; y
                align 2
                dw 26h, 226h, 227h
                db  28h ; (
                db 2, 5, 0, 32h, 0, 33h, 0
a456789Abcdefgh:
                text "UTF-16LE", '456789:;<=>?@ABCDEFGHX'
                dd 110229h
                db    5
                align 2
                dw 0F0h, 546h, 22Ah
                db 0E8h
                align 2
                dw 547h, 22Bh, 548h
                db  49h ; I
                db 5, 4Ah, 5, 4Bh, 5, 4Ch, 5
                db  4Dh ; M
                db 5, 2Ch, 1, 2Dh, 1, 4Eh, 5
                db  4Fh ; O
                db 5, 50h, 5, 51h, 5, 0F8h, 6
                db  5Dh ; ]
                db 4, 2Ch, 2, 2Dh, 2, 2Eh, 2
                db  52h ; R
                db 5, 53h, 5, 57h, 0, 57h, 0
aWwwwwwwwww:
                text "UTF-16LE", 'WWWWWWWWWW'
                dd 4200003h
                db 0E9h
                db 3, 54h, 5, 2Fh, 2, 0CBh, 0
                db  91h
                align 2
                dw 570h, 10Bh, 555h
                db  56h ; V
                db 5, 0CEh, 0, 61h, 9, 64h, 9
                db  3Dh ; =
                db 1, 5, 0, 57h, 5, 30h, 2
                db  58h ; X
                db 5, 20h, 4, 1Ah, 2, 1Ah, 2
                db  1Ah
                db 2, 1Ah, 2, 1Ah, 2, 1Ah, 2
                db  1Ah
                db 2, 1Ah, 2, 0A4h, 5, 31h, 2
                db  33h ; 3
                db 2, 34h, 2, 0C1h, 0, 59h, 5
                db  5Ah ; Z
                db 5, 0EEh, 3, 4, 0, 0E3h, 3
                db    5
                align 2
                dw 4BAh, 5, 55Bh
                db  5Ch ; \
                db 5, 5Dh, 5, 5Eh, 5, 6, 0
                db  35h ; 5
                db 2, 36h, 2, 5Fh, 5, 37h, 2
                db 0AFh
                db 5, 0C1h, 0, 0C1h, 0, 0C1h, 0
                db 0C1h
                align 2
                dw 238h, 576h, 239h
                db  7Eh ; ~
                align 2
                dw 23Ah, 23Bh, 0B6h
                db  7Fh ; 
                align 2
                dw 23Ch, 2 dup(40h)
a3_0:
                text "UTF-16LE", '3;;;;'
                dw 45Ah, 23Dh, 23Eh
                db  3Fh ; ?
                db 2, 40h, 2, 42h, 2, 7Ch, 0
                db  56h ; V
                align 2
                dw 243h, 6Dh, 3F1h
                db 0F8h
                db 3, 44h, 2, 0EDh, 3, 5Eh, 4
                db  60h ; `
                db 5, 61h, 5, 62h, 5, 63h, 5
                db  64h ; d
                db 5, 65h, 5, 66h, 5, 67h, 5
                db 0EFh
                db 3, 68h, 5, 69h, 5, 0F9h, 3
                db  6Ah ; j
                db 5, 45h, 2, 5Dh, 4, 0DBh, 4
                db  46h ; F
                db 2, 59h, 4, 47h, 2, 48h, 2
                db  62h ; b
                db 4, 63h, 4, 64h, 4, 65h, 4
                db  66h ; f
                db 4, 67h, 4, 68h, 4, 5Fh, 4
                db  5Dh ; ]
                db 4, 49h, 2, 51h, 4, 52h, 4
                db  53h ; S
                db 4, 54h, 4, 55h, 4, 69h, 4
                db  58h ; X
                db 4, 6Bh, 5, 6Ch, 5, 0FAh, 3
                db 0FBh
                db 3, 6Dh, 5, 6Eh, 5, 0FCh, 3
                db 0FDh
                db 3, 57h, 0, 5Dh, 4, 16h, 0
                db  5Dh ; ]
                db 4, 5Dh, 4, 4Ah, 2, 0DEh, 5
                db  13h
                align 2
                dw 6FAh, 6FBh, 6FCh
                db 0FDh
                db 6, 0DCh, 5, 0DDh, 5, 0FEh, 6
                db  4Bh ; K
                db 2, 0, 7, 1, 7, 6Bh, 4
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_17. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 4, 0C4h, 4, 0DFh, 5, 0Fh, 7
                db  10h
                db 7, 11h, 7, 12h, 7, 4Ch, 2
                db  20h
                db 4, 30h, 1, 31h, 1, 32h, 1
                db  33h ; 3
                db 1, 25h, 3, 34h, 1, 35h, 1
                db  36h ; 6
                db 1, 37h, 1, 39h, 1, 0BBh, 1Ah
                db  32h ; 2
                align 2
                dw 3D54h, 329h, 678h
                db    8
                align 2
                dw 2F7h, 32Dh, 0Dh
                db  0Dh
                align 2
                dw 3E6h, 41h, 572h
                db  3Bh ; ;
                align 2
                dw 717h, 46Ah, 6F8h
                db 0BEh
                db 4, 0BEh, 4, 44h, 0, 34h, 0
aD22:
                text "UTF-16LE", '@@@D;;;;;;;22'
                dw 24Dh, 24Eh, 24Fh
                db  50h ; P
                db 2, 0E6h, 17h, 51h, 2, 52h, 2
                db  53h ; S
                db 2, 6Ch, 4, 0C1h, 0, 54h, 2
                db  55h ; U
                db 2, 73h, 7, 90h, 4, 56h, 2
                db 0FFh
                db 4, 57h, 2, 57h, 0, 92h, 13h
                db  92h
                db 13h, 58h, 2, 0D5h, 4, 59h, 2
                db  5Ah ; Z
                db 2, 92h, 4, 5Bh, 2, 5Ch, 2
                db  74h ; t
                db 7, 75h, 7, 6, 0, 0C9h, 4
                db 0CAh
                db 4, 0CBh, 4, 0CCh, 4, 0CDh, 4
                db 0CEh
                db 4, 0CFh, 4, 0D0h, 4, 0D1h, 4
                db 0D2h
                db 4, 0D3h, 4, 0D4h, 4, 5Dh, 2
                db 0C8h
                db 4, 5Eh, 2, 5Fh, 2, 0D6h, 4
                db 0D7h
                db 4, 0D8h, 4, 0C1h, 0, 60h, 2
                db  61h ; a
                db 2, 62h, 2, 0D4h, 4, 63h, 2
                db  64h ; d
                db 2, 65h, 2, 0D0h, 4, 66h, 2
                db  73h ; s
                db 5, 67h, 2, 68h, 2, 69h, 2
                db  22h ; "
                db 4, 6Ah, 2, 6Bh, 2, 6Ch, 2
                db 0B6h
                align 2
                dw 7Fh, 120h, 476h
                db  6Dh ; m
                db 2, 0FEh, 10h, 6Eh, 2, 6Fh, 2
                db  8Eh
                db 1Bh, 70h, 2, 0D1h, 7, 0B1h, 4
                db  15h
                align 2
                dw 2 dup(21Ch), 271h
                db  91h
                db 4, 72h, 2, 26h, 11h, 29h, 11h
                db  2Ah ; *
                db 11h, 28h, 11h, 80h, 7, 91h, 2
                db  4Fh ; O
                db 5, 4Fh, 5, 81h, 7, 0A1h, 0
                db  73h ; s
                db 2, 88h, 4, 89h, 4, 8Ah, 4
                db  8Bh
                db 4, 8Ch, 4, 5, 0, 5, 0
                db  84h
                db 2, 5, 0, 5, 0, 5, 0
                db    5
                align 2
                dw 1777h, 1778h, 1772h
                db  68h ; h
                db 10h, 69h, 10h, 6Ah, 10h, 6Bh, 10h
                db  1Ah
                db 20h, 1Bh, 20h, 1Ch, 20h, 1, 0
                db 0FFh
                db 10h, 0, 11h, 94h, 4, 74h, 2
                db  0Ah
                db 20h, 0Bh, 20h, 0Ch, 20h, 0Dh, 20h
                db  0Eh
                db 20h, 0Fh, 20h, 10h, 20h, 11h, 20h
                db  12h
                db 20h, 13h, 20h, 14h, 20h, 15h, 20h
                db  16h
                db 20h, 17h, 20h, 18h, 20h, 19h, 20h
                db  1Eh
                db 21h, 27h, 11h, 75h, 2, 76h, 2
                db  77h ; w
                db 2, 51h, 6, 9Ah, 4, 9Bh, 4
                db  78h ; x
                db 2, 47h, 20h, 24h, 20h, 79h, 2
                db  75h ; u
                db 5, 7Ah, 2, 0E6h, 3, 75h, 10h
                db  76h ; v
                db 10h, 7Bh, 2, 0EDh, 4, 0E8h, 10h
                db  38h ; 8
                db 21h, 0E3h, 4, 39h, 21h, 7Ch, 2
                db  9Dh
                db 4, 3Ah, 21h, 7Dh, 2, 7Eh, 2
                db  15h
                align 2
aABCDEFGHI2     db 'A!B!C!D!E!F!G!H!I!2',0
                dw 27Fh
                dq 2154215321522151h, 216521642163215Dh, 5205770280216Dh
                dq 333217221710281h, 2800903348009h, 336800903350000h
                dq 338800903378009h, 33A800903398009h, 33C8009033B8009h
                dq 33E8009033D8009h, 341800903408009h, 45B800903428009h
                dq 1074106F04E604E7h, 80030305012E106Eh, 8003030780030306h
                dq 8003030980030308h, 8003030B8003030Ah, 79300000792h
                dq 4F0000004EFh, 4E880090348h, 177D80090343h, 50400000282h
                dq 0C009000100000283h, 21820000217Ch, 0C1000000C1h, 57280090346h
                dq 0C0090002000004EBh, 4EC04EC00000286h, 288028704EC04ECh
                dq 4FB028B028A0289h, 4FC028D028C04FBh, 54F0008031221ACh
                dq 8010006C8010006Bh, 8010000C8010006Fh, 8010002C8009000Dh
                dq 8010002F80090016h, 80090351000004F1h, 8009035380090352h
                dq 8009035580090354h, 800900220000028Eh, 217B078E078D078Ch
                dq 52E028F219F219Dh, 357800903560502h, 359800903588009h
                dq 35B8009035A8009h, 505029005038009h, 802600010506078Fh
                dq 215B079105080008h, 2C921BC21BB21BAh, 4FB03000219029Ch
                dq 2410299030103FAh, 2E4050C03080307h, 8009036280090361h
                dq 4C800AA00AA0509h, 1782178180097019h, 513178517841783h
                dq 5BB3BC33B92050Bh, 570057000605BEh, 13A01380BEA0057h
                dq 13B0141013C3CFCh, 3D00014200200040h, 156015301520151h
                dq 144014301580157h, 1480147014B0146h, 14D014C014A0149h
                dq 5B40150014F014Eh, 7E00403D083D07h, 8003020801E3007Eh
                dq 1F015980030209h, 32C032A3D0F015Ah, 15D0162015C015Bh
                dq 492049000020491h, 3D5A016300150307h, 169012E01680167h
                dq 4A0049F0170016Fh, 1970196032F018Fh, 19B019A01990198h
                dq 21019F019D019Ch, 1A301A201A101A0h, 1A901A801A501A4h
                dq 1B001AF01AE01ADh, 2C01E801BA01B9h, 150610060F060Eh
                dq 0AA05BF0140013Fh, 8003020A05E105E0h, 8083000A0000112Bh
                dq 10D3115C80830009h, 1800005032E04DFh, 57C0000515115Dh
                dq 67501FE0000h, 677800B010Ch, 679800B0101h, 54F054F067D067Ch
                dq 570032054F0057h, 30B054F00320057h, 6000600060006h, 1000100060006h
                dq 5B7052E0310050Dh, 54F054F0459007Bh, 100570001054Fh
                dq 1000100010001h, 1F001F001F072Bh, 50F21A4030C001Fh, 3191AC31AC10510h
                dq 31D031C031B031Ah, 32804D5031F031Eh, 0DE00DD00DC054Fh
                dq 0E200E100E000DFh, 8009000303220317h, 8009000D80090005h
                dq 80090006029E0326h, 139F00178009002Fh, 32032B01550154h
                dq 4D000EA00EA01BBh, 315031404D10032h, 5BC05BA05B90316h
                dq 21C621BE21BD05BDh, 21D021CF21CE21CDh, 3BD93BC53BC421D1h
                dq 3BDD3BDC3BDB3BDAh, 3C2A3C293C283BDEh, 109C109A3C2C3C2Bh
                dq 113000050005109Dh, 1134113311321131h, 115B115A11591158h
                dq 1D61160115F115Eh, 174017301720171h, 16B016A01660181h
                dq 17901780177016Ch, 17D017C017B017Ah, 1830182017F017Eh
                dq 187018601850184h, 18B018A01890188h, 194018E018D018Ch
                dq 1DB01B201AA0195h, 1B601B501B401B3h, 2000101B801B7h
                dq 6A7000606A506A4h, 6AB06AA06A906A8h, 6AF06AE06AD06ACh
                dq 6B306B206B106B0h, 6B706B606B506B4h, 6BB06BA06B906B8h
                dq 6BF06BE06BD06BCh, 6C506C406C206C0h, 6C906C806C706C6h
                dq 6CE06CD06CC06CBh, 6D206D106D006CFh, 6D606D506D406D3h
                dq 6DA06D906D806D7h, 6DE06DD06DC06DBh, 6E206E106E006DFh
                dq 6E606E506E406E3h, 6EA06E906E806E7h, 76A070E06FF06EBh
                dq 71A0719076C076Bh, 71E071D071C071Bh, 77A07220721071Fh
                dq 6EC072906C1077Bh, 6000606EE06EDh, 6F406F306F206F1h
                dq 72306F706F606F5h, 727072607250724h, 77E077D077C0728h
                dq 2A202A102A0029Fh, 1B5B1B5A1B590F6Eh, 1B621B611B601B5Fh
                dq 1B661B651B641B63h, 1B8F1B691B681B67h, 1B6F1B6E1B901B8Eh
                dq 1B7E1B7B1B711B70h, 1B841B821B811B80h, 1B8A1B5C1B891B85h
                dq 1B8C1B8D1B991B8Bh, 1B9C1B7D1B911B92h, 3AFD3AFC1B9E1B9Dh
                dq 3B013B003AFF3AFEh, 13B113B013AF3B02h, 13B513B413B313B2h
                dq 13B913B813B713B6h, 13BD13BC13BB13BAh, 13CE13C0171213BEh
                dq 171313C413C313C2h, 4D504D5173F173Eh, 4D5003200320032h
                dq 1765175B04D50032h, 29D029D00051766h, 6 dup(29D029D029D029Dh)
                dq 36B236B136B0029Dh, 36B636B536B436B3h, 36BA36B936B836B7h
                dq 3705370436BB3701h, 3702370737093706h, 370C370B370A3703h
                dq 371536CC3712370Dh, 3713371837173716h, 371B371A37193714h
                dq 1A90371E371D371Ch, 1A911A321A2D1A2Ch, 1A951A931A341A92h
                dq 1A371A361A9E1A96h, 1A2F1A2E1A351A38h, 1A3A1A391A311A30h
                dq 1A991A981A971AB1h, 1A9F1A9C1A9B1A9Ah, 1AA71AA41AA31AA1h
                dq 1AAB1AAA1AA91AA8h, 1AAF1AAE1AAD1AACh, 1AB61AB51AB21AB0h
                dq 1ABA1AB91AB81AB7h, 1ABF1ABE1ABD1ABCh, 1A3D1A3C1A3B1AC0h
                dq 1A411A401A3F1A3Eh, 1A441A431AC21A42h, 1A471A461AC51AC4h
                dq 1AC61A4A1A491A48h, 19CA19C919C81AC7h, 19CE19CD19CC19CBh
                dq 19D219D119D019CFh, 19D719D619D519D4h, 19DB19DA19D919D8h
                dq 19DF19DE19DD19DCh, 19E319E219E119E0h, 19E819E719E619E4h
                dq 19EC19EB19EA19E9h, 19F019EF19EE19EDh, 19F419F319F219F1h
                dq 19F819F719F619F5h, 801F000180260001h, 801F0003801F0002h
                dq 801F0005801F0004h, 801F0007801F0006h, 801F0009801F0008h
                dq 801F000B801F000Ah, 801F000D801F000Ch, 801F000F801F000Eh
                dq 801F0011801F0010h, 801F0013801F0012h, 801F0015801F0014h
                dq 801F0017801F0016h, 801F0019801F0018h, 801F001B801F001Ah
                dq 801F0020801F001Ch, 261001801F0023h, 0C026100300261002h
                dq 0C0261005C0261004h, 0C0261007C0261006h, 0C0261009C0261008h
                dq 0C0262000C026100Ah, 0C0262002C0262001h, 0C0262004C0262003h
                dq 0C0262006C0262005h, 0C0262008C0262007h, 0C026200BC0262009h
                dq 0C026200DC026200Ch, 0C026200FC026200Eh, 0C0262011C0262010h
                dq 0C0262013C0262012h, 0C0262101C0262100h, 0C0262103C0262102h
                dq 0C0262105C0262104h, 0C0262107C0262106h, 0C0262109C0262108h
                dq 0C0262111C0262110h, 0C0262113C0262112h, 0C0262115C0262114h
                dq 0C0262200C0262116h, 0C0262301C0262300h, 0C0262303C0262302h
                dq 0C0262305C0262304h, 0C0262308C0262306h, 0C026230AC0262309h
                dq 0C026230CC026230Bh, 0C0262311C0262310h, 0C0262313C0262312h
                dq 0C0262315C0262314h, 0C0262317C0262316h, 0C0262319C0262318h
                dq 0C026231BC026231Ah, 0C026231DC026231Ch, 0C0262320C026231Fh
                dq 0C0262322C0262321h, 0C0262324C0262323h, 0C0262326C0262325h
                dq 0C0262328C0262327h, 0C026232AC0262329h, 0C026232CC026232Bh
                dq 0C026232EC026232Dh, 0C0262330C026232Fh, 0C0262332C0262331h
                dq 0C0262334C0262333h, 0C0262336C0262335h, 0C0262338C0262337h
                dq 0C026233AC0262339h, 0C026233CC026233Bh, 0C026233EC026233Dh
                dq 0C0262340C026233Fh, 0C0262342C0262341h, 0C0262344C0262343h
                dq 0C0262346C0262345h, 0C0262348C0262347h, 0C026234AC0262349h
                dq 0C026234EC026234Dh, 0C0262350C026234Fh, 0C0262353C0262352h
                dq 0C0262355C0262354h, 0C0262357C0262356h, 0C0262359C0262358h
                dq 0C026235BC026235Ah, 0C0262400C026235Ch, 0C0262430C0262401h
                dq 0C0262432C0262431h, 0C0262434C0262433h, 0C0262436C0262435h
                dq 0C026243BC0262438h, 0C0262501C0262500h, 0C0262503C0262502h
                dq 0C026250BC0262505h, 0C026250EC026250Ch, 0C0262510C026250Fh
                dq 0C0262512C0262511h, 0C0262514C0262513h, 0C0262516C0262515h
                dq 0C0262518C0262517h, 0C026251CC026251Ah, 0C026251EC026251Dh
                dq 0C0262520C026251Fh, 0C0262580C0262521h, 0C0262582C0262581h
                dq 0C0262584C0262583h, 0C0262586C0262585h, 0C0262588C0262587h
                dq 0C026258AC0262589h, 0C026258CC026258Bh, 0C02625E0C026258Dh
                dq 0C02625E2C02625E1h, 0C02625E4C02625E3h, 0C02625E6C02625E5h
                dq 0C02605E8C02625E7h, 8031000180310000h, 8031001180310010h
                dq 8031001480310013h, 8031004B80310047h, 8031000980310049h
                dq 8031001780310016h, 8031001B80310019h, 803100248031001Ch
                dq 8031002780310026h, 8031003C80310028h, 8031003E8031003Dh
                dq 803100258031003Fh, 8031004280310041h, 8031004480310043h
                dq 8031004F80310045h, 803100108031004Dh, 8031004E80310010h
                dq 8031005180310050h, 8031005580310054h, 803100798031005Ah
                dq 8031008980310088h, 8031006F8031009Bh, 803100A580310099h
                dq 803100AD803100A6h, 803100B3803100AEh, 803100BC803100B9h
                dq 803100BB803100BAh, 803100D6803100CAh, 80310021803100D7h
                dq 803100D9803100D8h, 8032000280320001h, 8032000480320003h
                dq 8032000680320005h, 8032000880320007h, 8032000A80320009h
                dq 8032000C8032000Bh, 8032000E8032000Dh, 803200108032000Fh
                dq 8032001280320011h, 8032001480320013h, 8032001680320015h
                dq 8032001880320017h, 8032001A80320019h, 8032001C8032001Bh
                dq 8032001E8032001Dh, 803200208032001Fh, 8032002280320021h
                dq 8032002480320023h, 8032002680320025h, 8032002880320027h
                dq 8032002A80320029h, 8032002C8032002Bh, 8032002E8032002Dh
                dq 803200308032002Fh, 8032003280320031h, 8032003480320033h
                dq 8032003680320035h, 8032003880320037h, 8032003A80320039h
                dq 8032003C8032003Bh, 8032003E8032003Dh, 803200408032003Fh
                dq 8032004280320041h, 8032004480320043h, 3E300000015h
                dq 10DD000004D5h, 8034000280320104h, 8034000580340004h
                dq 8034000780340006h, 8034000980340008h, 8034000B8034000Ah
                dq 8034000D8034000Ch, 803400108034000Fh, 8034001480340011h
                dq 8034001680340015h, 8034001880340017h, 8034001A80340019h
                dq 8034001C8034001Bh, 8034001E8034001Dh, 803400228034001Fh
                dq 8034002B8034002Ah, 8034002D8034002Ch, 8034002F8034002Eh
                dq 8034003180340030h, 0C034100F803400BBh, 0C0341013C0341012h
                dq 8034200180342000h, 8034200380342002h, 8034200580342004h
                dq 8034200780342006h, 8041000080342008h, 8028000080410001h
                dq 8028000280280001h, 8028000480280003h, 8028000680280005h
                dq 8028000880280007h, 8028000A80280009h, 8028000C8028000Bh
                dq 8028000E8028000Dh, 802800108028000Fh, 8028001280280011h
                dq 8028001480280013h, 8028001680280015h, 8028001880280017h
                dq 8028001A80280019h, 8028001C8028001Bh, 8028001E8028001Dh
                dq 802800208028001Fh, 8028002280280021h, 8028002480280023h
                dq 8028002680280025h, 8028002880280027h, 8028002A80280029h
                dq 8028002C8028002Bh, 8028002E8028002Dh, 802800308028002Fh
                dq 8028003280280031h, 8028003480280033h, 8028003680280035h
                dq 8028003880280037h, 8028003A80280039h, 8028003C8028003Bh
                dq 8028003E8028003Dh, 802800408028003Fh, 8028004280280041h
                dq 8028004480280043h, 8028004680280045h, 8028004880280047h
                dq 8028004A80280049h, 8028004C8028004Bh, 8028004E8028004Dh
                dq 802800508028004Fh, 8028005280280051h, 8028005480280053h
                dq 8028005680280055h, 8028005880280057h, 8028005A80280059h
                dq 8028005C8028005Bh, 8028005E8028005Dh, 802800618028005Fh
                dq 8028006380280062h, 8028008280280081h, 8028008480280083h
                dq 8028008780280085h, 8028008980280088h, 8028008B8028008Ah
                dq 8028008D8028008Ch, 8028008F8028008Eh, 8028009280280090h
                dq 8028009680280095h, 8028009880280097h, 8028009B8028009Ah
                dq 8028009D8028009Ch, 802800A08028009Fh, 802800A2802800A1h
                dq 802800A4802800A3h, 802800A6802800A5h, 80280100802800A7h
                dq 8028010380280101h, 802801198028010Bh, 8028012180280120h
                dq 8028012480280123h, 8028012680280125h, 8028012880280127h
                dq 8028012E8028012Dh, 802801308028012Fh, 8028014280280131h
                dq 8028014480280143h, 8028014680280145h, 8028014880280147h
                dq 8028014A80280149h, 8028014C8028014Bh, 8028015180280150h
                dq 8028015380280152h, 8028015580280154h, 8028040180280400h
                dq 8028040380280402h, 8028080080280404h, 8028080280280801h
                dq 8028400D80280803h, 8028400F80284009h, 8028400580284012h
                dq 8029040080284014h, 8029040280290401h, 8029040480290403h
                dq 8029040680290405h, 8029040880290407h, 8029040A80290409h
                dq 8029040C8029040Bh, 8029040E80090035h, 802904108029040Fh
                dq 8029041280290411h, 8029041480290413h, 8029041680290415h
                dq 8029041880290417h, 8029041A80290419h, 8029041C8029041Bh
                dq 8029041E8029041Dh, 802904208029041Fh, 8029042280290421h
                dq 54F0057054F0057h, 0C035000280290500h, 0C0350004C0350003h
                dq 0C0350006C0350005h, 0C0350008C0350007h, 0C035000AC0350009h
                dq 0C035000CC035000Bh, 0C035000EC035000Dh, 0C0350012C0350011h
                dq 0C0350014C0350013h, 0C0350016C0350015h, 0C0350018C0350017h
                dq 0C035001AC0350019h, 0C035001CC035001Bh, 0C035001EC035001Dh
                dq 0C0350038C0350033h, 0C035003DC035003Ch, 0C035003FC035003Eh
                dq 0C0350050C0350041h, 0C0350055C0350051h, 0C0350058C0350057h
                dq 0C035006FC0350060h, 0C0350071C0350070h, 0C0350073C0350072h
                dq 0C0350075C0350074h, 36573656C0351000h, 365B365A36593658h
                dq 3665365E365D365Ch, 3669366836673666h, 0C0370001366C366Ah
                dq 0C0370003C0370002h, 0C0370005C0370004h, 0C0370007C0370006h
                dq 0C0370009C0370008h, 0C037000BC037000Ah, 0C037000DC037000Ch
                dq 0C037000FC037000Eh, 0C0370011C0370010h, 0C0370013C0370012h
                dq 0C0370015C0370014h, 0C0370017C0370016h, 0C0370019C0370018h
                dq 0C037001BC037001Ah, 0C037001DC037001Ch, 0C037001FC037001Eh
                dq 0C0370021C0370020h, 0C0370023C0370022h, 0C0370025C0370024h
                dq 0C0370027C0370026h, 0C0370029C0370028h, 0C0380001C037002Ah
                dq 0C0380003C0380002h, 0C0380005C0380004h, 0C0380007C0380006h
                dq 0C0380009C0380008h, 0C038000BC038000Ah, 0C038000DC038000Ch
                dq 0C038000FC038000Eh, 0C0380011C0380010h, 0C0380013C0380012h
                dq 0C0380015C0380014h, 0C0380017C0380016h, 0C0380019C0380018h
                dq 0C038001BC038001Ah, 0C038001DC038001Ch, 0C038001FC038001Eh
                dq 0C0380021C0380020h, 0C0380023C0380022h, 0C0380025C0380024h
                dq 0C0380027C0380026h, 0C0380029C0380028h, 0C038002BC038002Ah
                dq 0C038002DC038002Ch, 0C038002FC038002Eh, 0C0380031C0380030h
                dq 0C0380033C0380032h, 0C0380035C0380034h, 0C0380037C0380036h
                dq 0C0380039C0380038h, 0C038003BC038003Ah, 0C038003DC038003Ch
                dq 0C038003FC038003Eh, 0C0380041C0380040h, 0C0380043C0380042h
                dq 0C0380045C0380044h, 0C0380047C0380046h, 0C0380049C0380048h
                dq 0C038004BC038004Ah, 0C038004DC038004Ch, 0C038004FC038004Eh
                dq 0C0380051C0380050h, 0C0380053C0380052h, 0C0380055C0380054h
                dq 0C0380057C0380056h, 0C0380059C0380058h, 0C038005BC038005Ah
                dq 0C0390002C038005Ch, 0C03A0002C03A0001h, 0C03A0004C03A0003h
                dq 0C03A0006C03A0005h, 0C03A0008C03A0007h, 0C03A000AC03A0009h
                dq 0C03A000CC03A000Bh, 0C03A000EC03A000Dh, 0C03A0010C03A000Fh
                dq 0C03A0012C03A0011h, 0C03A0014C03A0013h, 0C03A0016C03A0015h
                dq 0C03A0018C03A0017h, 0C03A001AC03A0019h, 0C03A001CC03A001Bh
                dq 0C03A001EC03A001Dh, 0C03A0020C03A001Fh, 0C03A0022C03A0021h
                dq 0C03A0024C03A0023h, 0C03A0029C03A0028h, 0C03A0030C03A002Ah
                dq 0C03A0026C03A0025h, 570057C03A0027h, 57002019E419E4h
                dq 54F054F054F054Fh, 8065000280650001h, 8065000480650003h
                dq 8065000680650005h, 8065000880650007h, 8065000A80650009h
                dq 8065000C8065000Bh, 8065000E8065000Dh, 806500108065000Fh
                dq 8065100080650011h, 1147114611451144h, 114C114B114A1148h
                dq 1150114F114E114Dh, 1115311521151h, 3806600028066h, 5806600048066h
                dq 111D111D08066h, 1808200028082h, 0FF00C05C00008901h
                dq 0FF02C05CFF01C05Ch, 0FF04C05CFF03C05Ch, 0FF06C05CFF05C05Ch
                dq 0FF08C05CFF07C05Ch, 0FF0AC05CFF09C05Ch, 0FF0CC05CFF0BC05Ch
                dq 1C05D0000C05Ch, 37000004F8C05Dh, 80E7000100370037h
                dq 80E7000480E70003h, 80E7000780E70006h, 80E7000A80E70009h
                dq 80E7000C80E7000Bh, 80E7000E80E7000Dh, 80E7001080E7000Fh
                dq 80E7001280E70011h, 5 dup(80E7000280E70002h), 80E7001380E70002h
                dq 80E7000280E70014h, 11C711C6C0E80000h, 11CB11CA11C911C8h
                dq 0C0EA0002C0EA0001h, 0C0EA0004C0EA0003h, 0C0EA0006C0EA0005h
                dq 0C0EA0008C0EA0007h, 0C0EA000AC0EA0009h, 11DD11DC11DB11DAh
                dq 0BF411E011DF11DEh, 0BF80BF70BF60BF5h, 0BFB0BFA0BF9h
                dq 0
qword_14001A2E0 dq 506060706070708h, 2 dup(405050605060607h), 304040504050506h
                dq 405050605060607h, 2 dup(304040504050506h), 203030403040405h
                dq 405050605060607h, 2 dup(304040504050506h), 203030403040405h
                dq 304040504050506h, 2 dup(203030403040405h), 102020302030304h
                dq 405050605060607h, 2 dup(304040504050506h), 203030403040405h
                dq 304040504050506h, 2 dup(203030403040405h), 102020302030304h
                dq 304040504050506h, 2 dup(203030403040405h), 102020302030304h
                dq 203030403040405h, 2 dup(102020302030304h), 1010201020203h
                dq 4 dup(4040404040404040h), 343436383A3C3E40h, 2A2C2C2E2E303032h
                dq 242426262828282Ah, 2020202222222224h, 161618181A1C1E20h
                dq 1010101212121414h, 0A0A0C0C0C0E0E10h, 808080808080A0Ah
                dq 4 dup(808080808080808h), 8, 6E00720065004Bh, 4F002D006C0065h
                dq 6F00430065006Eh, 56002D00650072h, 47006C00690061h, 74007300650075h
                dq 0
aEdp:                                   ; DATA XREF: .data:0000000140C01B00↓o
                text "UTF-16LE", 'EDP://',0
                align 10h
aSam:                                   ; DATA XREF: .rdata:00000001400061E0↑o
                text "UTF-16LE", 'SAM_',0
                align 4
aSd_0:                                  ; DATA XREF: .data:0000000140C01D98↓o
                                        ; PAGEDATA:0000000140D2D678↓o
                text "UTF-16LE", 'SD',0
                align 4
aNx:                                    ; DATA XREF: .data:0000000140C01C60↓o
                text "UTF-16LE", 'NX',0
                align 4
aNr:                                    ; DATA XREF: .data:0000000140C01C48↓o
                text "UTF-16LE", 'NR',0
                align 4
aNw:                                    ; DATA XREF: .data:off_140C01C30↓o
                text "UTF-16LE", 'NW',0
                align 4
aDc:                                    ; DATA XREF: .data:0000000140C01CC0↓o
                text "UTF-16LE", 'DC',0
                align 4
aCc:                                    ; DATA XREF: .data:0000000140C01CA8↓o
                text "UTF-16LE", 'CC',0
                align 4
aWp:                                    ; DATA XREF: .data:0000000140C01C90↓o
                text "UTF-16LE", 'WP',0
                align 4
aRp:                                    ; DATA XREF: .data:0000000140C01C78↓o
                text "UTF-16LE", 'RP',0
                align 4
aDt:                                    ; DATA XREF: .data:0000000140C01D20↓o
                text "UTF-16LE", 'DT',0
                align 4
aLo_0:                                  ; DATA XREF: .data:0000000140C01D08↓o
                text "UTF-16LE", 'LO',0
                align 4
aSw_0:                                  ; DATA XREF: .data:0000000140C01CF0↓o
                text "UTF-16LE", 'SW',0
                align 4
aLc:                                    ; DATA XREF: .data:0000000140C01CD8↓o
                text "UTF-16LE", 'LC',0
                align 4
aWo_0:                                  ; DATA XREF: .data:0000000140C01D80↓o
                text "UTF-16LE", 'WO',0
                align 4
aWd:                                    ; DATA XREF: .data:0000000140C01D68↓o
                text "UTF-16LE", 'WD',0
                align 4
aRc:                                    ; DATA XREF: .data:0000000140C01D50↓o
                text "UTF-16LE", 'RC',0
                align 4
aCr:                                    ; DATA XREF: .data:0000000140C01BB0↓o
                                        ; .data:0000000140C01D38↓o
                text "UTF-16LE", 'CR',0
                align 4
aGx:                                    ; DATA XREF: .data:0000000140C01DF8↓o
                text "UTF-16LE", 'GX',0
                align 4
aGw:                                    ; DATA XREF: .data:0000000140C01DE0↓o
                text "UTF-16LE", 'GW',0
                align 4
aGr:                                    ; DATA XREF: .data:0000000140C01DC8↓o
                text "UTF-16LE", 'GR',0
                align 4
aGa_0:                                  ; DATA XREF: .data:0000000140C01DB0↓o
                text "UTF-16LE", 'GA',0
                align 4
aFx:                                    ; DATA XREF: .data:0000000140C01E58↓o
                text "UTF-16LE", 'FX',0
                align 4
aFw:                                    ; DATA XREF: .data:0000000140C01E40↓o
                text "UTF-16LE", 'FW',0
                align 4
aFr_0:                                  ; DATA XREF: .data:0000000140C01E28↓o
                text "UTF-16LE", 'FR',0
                align 4
aFa_0:                                  ; DATA XREF: .data:0000000140C01C10↓o
                                        ; .data:0000000140C01E10↓o
                text "UTF-16LE", 'FA',0
                align 4
aKx:                                    ; DATA XREF: .data:0000000140C01EB8↓o
                text "UTF-16LE", 'KX',0
                align 4
aKw:                                    ; DATA XREF: .data:0000000140C01EA0↓o
                text "UTF-16LE", 'KW',0
                align 4
aKr_0:                                  ; DATA XREF: .data:0000000140C01E88↓o
                text "UTF-16LE", 'KR',0
                align 4
aKa_0:                                  ; DATA XREF: .data:0000000140C01E70↓o
                text "UTF-16LE", 'KA',0
                align 4
aAl:                                    ; DATA XREF: .data:0000000140C01F48↓o
                text "UTF-16LE", 'AL',0
                align 4
aAu:                                    ; DATA XREF: .data:0000000140C01F30↓o
                text "UTF-16LE", 'AU',0
                align 4
aOd:                                    ; DATA XREF: .data:0000000140C01F18↓o
                text "UTF-16LE", 'OD',0
                align 4
aOa:                                    ; DATA XREF: .data:0000000140C01F00↓o
                text "UTF-16LE", 'OA',0
                align 4
aTl:                                    ; DATA XREF: .data:0000000140C01FA8↓o
                text "UTF-16LE", 'TL',0
                align 4
aMl_0:                                  ; DATA XREF: .data:0000000140C01F90↓o
                text "UTF-16LE", 'ML',0
                align 4
aOl:                                    ; DATA XREF: .data:0000000140C01F78↓o
                text "UTF-16LE", 'OL',0
                align 4
aOu:                                    ; DATA XREF: .data:0000000140C01F60↓o
                text "UTF-16LE", 'OU',0
                align 4
aCi:                                    ; DATA XREF: .data:off_140C01B10↓o
                text "UTF-16LE", 'CI',0
                align 4
aId_2:                                  ; DATA XREF: .data:0000000140C01B90↓o
                text "UTF-16LE", 'ID',0
                align 4
aIo:                                    ; DATA XREF: .data:0000000140C01B70↓o
                text "UTF-16LE", 'IO',0
                align 4
aNp_2:                                  ; DATA XREF: .data:0000000140C01B50↓o
                text "UTF-16LE", 'NP',0
                align 4
aOi:                                    ; DATA XREF: .data:0000000140C01B30↓o
                text "UTF-16LE", 'OI',0
                align 4
aTp:                                    ; DATA XREF: .data:0000000140C01BD0↓o
                text "UTF-16LE", 'TP',0
                align 10h
qword_14001A610 dq 1200000012h, 80000000Ah, 0FFFFFFFFh, 0
                                        ; DATA XREF: sub_14020F26C:loc_14020F32D↓o
                                        ; sub_14020F4F0:loc_14020F67E↓o ...
aRegistryMachin_201:                    ; DATA XREF: .data:0000000140C02080↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\OSBOOT\ControlSetOverride\Session'
                text "UTF-16LE", ' Manager\Memory Management',0
                align 10h
qword_14001A6D0 dq 0FFFFFFFFFF676980h   ; DATA XREF: sub_140716480+67↓r
                align 20h
aSystemrootSyst_15:                     ; DATA XREF: PAGEDATA:off_140D2D308↓o
                text "UTF-16LE", '%SystemRoot%\system32\Logfiles\WMI\RtBackup\',0
                align 20h
qword_14001A740 dq 0FFFFFFFFFFFFD8F0h   ; DATA XREF: sub_1402BE0BC+50↓r
                                        ; sub_1405ABB4C+C1↓r ...
aEnable64bit:                           ; DATA XREF: .data:0000000140C020C0↓o
                text "UTF-16LE", 'Enable64Bit',0
aRegistryMachin_197:                    ; DATA XREF: .rdata:0000000140007250↑o
                text "UTF-16LE", '\Registry\Machine\SOFTWARE\Microsoft\.NETFramework',0
                align 8
aTimezone:                              ; DATA XREF: .rdata:00000001400061F0↑o
                text "UTF-16LE", 'timezone',0
                align 20h
qword_14001A7E0 dq 2000000010000h, 8000000040000h
                                        ; DATA XREF: sub_1405C27DC+204↓o
                                        ; sub_14096FA30+17B↓o
                db 2 dup(0), 10h, 0
dword_14001A7F4 dd 1000000h             ; DATA XREF: sub_14096FA30:loc_14096FBF7↓o
                dq 2000000h
aProperties_0:                          ; DATA XREF: .rdata:off_140007258↑o
                text "UTF-16LE", 'Properties',0
                align 8
qword_14001A818 dq 41612A8800000000h    ; DATA XREF: sub_1406667E0+5FD↓r
xmmword_14001A820 xmmword 0ABABABABABABABABABABABABABABABABh
                                        ; DATA XREF: sub_140588EC0+68E↓r
                                        ; sub_140594B40+2A↓r
byte_14001A830  db 8                    ; DATA XREF: sub_1402B780C:loc_1402B78BF↓o
                db 20h, 23h, 0, 15h, 3, 10h, 15h
                                        ; DATA XREF: sub_1403A08E8+7↓o
                dq 624200223010402h, 2401h
qword_14001A848 dq 40000h               ; DATA XREF: sub_140207610+62↓o
                                        ; sub_140207610+E1↓o ...
                dq 200h, 10h
xmmword_14001A860 xmmword 0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFh
                                        ; DATA XREF: sub_140301270+4C↓r
                                        ; sub_1403BC894+21↓r ...
byte_14001A870  db 0FFh                 ; DATA XREF: RtlClearBitsEx+A3↓r
                                        ; sub_14039B678:loc_1404A15C4↓r
                db 0FEh, 0FCh, 0F8h, 0F0h, 0E0h, 0C0h, 80h
qword_14001A878 dq 0                    ; DATA XREF: RtlFindClearRuns+122↓o
                                        ; sub_14039B678+A4↓o ...
qword_14001A880 dq 4ACA104A78C34FC8h    ; DATA XREF: .rdata:off_140001070↑o
                                        ; .rdata:0000000140001268↑o ...
qword_14001A888 dq 576E99524D52A49Eh    ; DATA XREF: sub_14070DD8C+11C48F↓r
                db 53h, 3 dup(0)
aAi:                                    ; DATA XREF: .rdata:0000000140007290↑o
                                        ; .rdata:00000001400072D8↑o
                text "UTF-16LE", 'AI',0
                align 4
aAr_0:                                  ; DATA XREF: .rdata:0000000140007278↑o
                                        ; .rdata:00000001400072C0↑o
                text "UTF-16LE", 'AR',0
                align 4
aP:                                     ; DATA XREF: .rdata:off_140007260↑o
                                        ; .rdata:00000001400072A8↑o
                text "UTF-16LE", 'P',0
                align 10h
aSystemrootSyst_14:                     ; DATA XREF: .rdata:0000000140005458↑o
                text "UTF-16LE", '\SystemRoot\System32\Config\TxR\',0
                align 20h
aKernelobjectsP_0:                      ; DATA XREF: .rdata:0000000140005928↑o
                text "UTF-16LE", '\KernelObjects\PhysicalMemoryChange',0
aKernelobjectsM_2:                      ; DATA XREF: .rdata:0000000140005918↑o
                text "UTF-16LE", '\KernelObjects\MemoryErrors',0
aKernelobjectsM_1:                      ; DATA XREF: .rdata:0000000140005908↑o
                text "UTF-16LE", '\KernelObjects\MaximumCommitCondition',0
                align 10h
aKernelobjectsH_3:                      ; DATA XREF: .rdata:00000001400058F8↑o
                text "UTF-16LE", '\KernelObjects\HighCommitCondition',0
                align 20h
aKernelobjectsL_4:                      ; DATA XREF: .rdata:00000001400058E8↑o
                text "UTF-16LE", '\KernelObjects\LowCommitCondition',0
                align 10h
aKernelobjectsH_2:                      ; DATA XREF: .rdata:00000001400058D8↑o
                text "UTF-16LE", '\KernelObjects\HighMemoryCondition',0
                align 20h
aKernelobjectsL_3:                      ; DATA XREF: .rdata:00000001400058C8↑o
                text "UTF-16LE", '\KernelObjects\LowMemoryCondition',0
                align 10h
aKernelobjectsH_1:                      ; DATA XREF: .rdata:00000001400058B8↑o
                text "UTF-16LE", '\KernelObjects\HighNonPagedPoolCondition',0
                align 10h
aKernelobjectsL_2:                      ; DATA XREF: .rdata:00000001400058A8↑o
                text "UTF-16LE", '\KernelObjects\LowNonPagedPoolCondition',0
aKernelobjectsH_0:                      ; DATA XREF: .rdata:0000000140005898↑o
                text "UTF-16LE", '\KernelObjects\HighPagedPoolCondition',0
                align 10h
aKernelobjectsL_1:                      ; DATA XREF: .rdata:0000000140005888↑o
                text "UTF-16LE", '\KernelObjects\LowPagedPoolCondition',0
                align 20h
aSecurity_2:                            ; DATA XREF: .rdata:00000001400019C8↑o
                text "UTF-16LE", 'Security',0
                align 8
aInvalidated:                           ; DATA XREF: .rdata:0000000140001978↑o
                text "UTF-16LE", 'Invalidated',0
aPrimitiveflags:                        ; DATA XREF: .rdata:0000000140001950↑o
                text "UTF-16LE", 'PrimitiveFlags',0
                align 10h
aCatalog:                               ; DATA XREF: .rdata:0000000140001928↑o
                text "UTF-16LE", 'Catalog',0
qword_14001ACC0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 25h
                                        ; DATA XREF: .rdata:0000000140001918↑o
aDisksize:                              ; DATA XREF: .rdata:0000000140001900↑o
                text "UTF-16LE", 'DiskSize',0
                align 10h
qword_14001ACF0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 24h
                                        ; DATA XREF: .rdata:00000001400018F0↑o
aFilesize:                              ; DATA XREF: .rdata:00000001400018D8↑o
                text "UTF-16LE", 'FileSize',0
                align 20h
qword_14001AD20 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 23h
                                        ; DATA XREF: .rdata:00000001400018C8↑o
aExtensioncontr:                        ; DATA XREF: .rdata:00000001400018B0↑o
                text "UTF-16LE", 'ExtensionContractIds',0
                align 8
aNeedsreconfig:                         ; DATA XREF: .rdata:0000000140001888↑o
                text "UTF-16LE", 'NeedsReconfig',0
                align 8
aClassversion:                          ; DATA XREF: .rdata:0000000140001860↑o
                text "UTF-16LE", 'ClassVersion',0
                align 8
qword_14001ADA8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 1Bh
                                        ; DATA XREF: .rdata:0000000140001850↑o
                                        ; sub_1407346D8+B8D8B↓o
aImportdate:                            ; DATA XREF: .rdata:0000000140001838↑o
                text "UTF-16LE", 'ImportDate',0
                align 8
qword_14001ADD8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 1Ah
                                        ; DATA XREF: .rdata:0000000140001828↑o
aSystemcritical:                        ; DATA XREF: .rdata:0000000140001810↑o
                text "UTF-16LE", 'SystemCritical',0
                align 10h
qword_14001AE10 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 19h
                                        ; DATA XREF: .rdata:0000000140001800↑o
aTargetcomputer:                        ; DATA XREF: .rdata:00000001400017E8↑o
                text "UTF-16LE", 'TargetComputerIds',0
                align 10h
aProduct:                               ; DATA XREF: .rdata:00000001400017C0↑o
                text "UTF-16LE", 'Product',0
qword_14001AE60 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 17h
                                        ; DATA XREF: .rdata:00000001400017B0↑o
aLocklevel:                             ; DATA XREF: .rdata:0000000140001798↑o
                text "UTF-16LE", 'LockLevel',0
                align 10h
qword_14001AE90 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 16h
                                        ; DATA XREF: .rdata:0000000140001788↑o
aStatusflags:                           ; DATA XREF: .rdata:0000000140001770↑o
                text "UTF-16LE", 'StatusFlags',0
qword_14001AEC0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 15h
                                        ; DATA XREF: .rdata:0000000140001760↑o
aExtensionid:                           ; DATA XREF: .rdata:0000000140001748↑o
                text "UTF-16LE", 'ExtensionId',0
aConfigurable:                          ; DATA XREF: .rdata:0000000140001720↑o
                text "UTF-16LE", 'Configurable',0
                align 10h
aConfigurablefl:                        ; DATA XREF: .rdata:00000001400016F8↑o
                text "UTF-16LE", 'ConfigurableFlags',0
                align 8
aBootcritical:                          ; DATA XREF: .rdata:00000001400016D0↑o
                text "UTF-16LE", 'BootCritical',0
                align 8
qword_14001AF58 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 10h
                                        ; DATA XREF: .rdata:00000001400016C0↑o
aDriverversion_0:                       ; DATA XREF: .rdata:00000001400016A8↑o
                text "UTF-16LE", 'DriverVersion',0
                align 10h
aDriverdate_0:                          ; DATA XREF: .rdata:0000000140001680↑o
                text "UTF-16LE", 'DriverDate',0
                align 8
aClassguid_1:                           ; DATA XREF: .rdata:0000000140001658↑o
                text "UTF-16LE", 'ClassGuid',0
                align 20h
aProvider:                              ; DATA XREF: .rdata:0000000140001630↑o
                text "UTF-16LE", 'Provider',0
                align 8
aLocale_0:                              ; DATA XREF: .rdata:0000000140001608↑o
                text "UTF-16LE", 'Locale',0
                align 8
qword_14001AFE8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 0Bh
                                        ; DATA XREF: .rdata:00000001400015F8↑o
                                        ; .data:0000000140C0F130↓o
aArchitecture_0:                        ; DATA XREF: .rdata:00000001400015E0↑o
                                        ; .rdata:00000001400050A8↑o
                text "UTF-16LE", 'Architecture',0
                align 20h
qword_14001B020 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h
                                        ; DATA XREF: .rdata:00000001400015D0↑o
                                        ; .data:0000000140C0F128↓o
                db 0Ah, 3 dup(0)
aF6:                                    ; DATA XREF: .rdata:00000001400015B8↑o
                text "UTF-16LE", 'F6',0
                align 20h
qword_14001B040 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 9
                                        ; DATA XREF: .rdata:00000001400015A8↑o
                                        ; sub_14073E818+B4160↓o
aSignerscore:                           ; DATA XREF: .rdata:0000000140001590↑o
                text "UTF-16LE", 'SignerScore',0
aSignername:                            ; DATA XREF: .rdata:0000000140001568↑o
                text "UTF-16LE", 'SignerName',0
                align 8
aPublished:                             ; DATA XREF: .rdata:0000000140001540↑o
                text "UTF-16LE", 'Published',0
                align 20h
qword_14001B0A0 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 6
                                        ; DATA XREF: .rdata:0000000140001530↑o
                                        ; .data:0000000140C0F140↓o
aInbox:                                 ; DATA XREF: .rdata:0000000140001518↑o
                text "UTF-16LE", 'Inbox',0
                align 8
qword_14001B0C8 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 5
                                        ; DATA XREF: .rdata:0000000140001508↑o
                                        ; sub_1405E6DB8+20DD40↓o ...
aOempath:                               ; DATA XREF: .rdata:00000001400014F0↑o
                text "UTF-16LE", 'OemPath',0
aInfname:                               ; DATA XREF: .rdata:00000001400014C8↑o
                text "UTF-16LE", 'InfName',0
qword_14001B100 dq 0                    ; DATA XREF: .rdata:00000001400013D0↑o
                                        ; .rdata:0000000140001400↑o ...
qword_14001B108 dq 4F7A142C8163EB01h, 0BADB47CC74A2E194h, 2
                                        ; DATA XREF: .rdata:off_140001490↑o
                                        ; sub_1405E6DB8+20D9B9↓o
aLocked_0:                              ; DATA XREF: .rdata:0000000140001478↑o
                text "UTF-16LE", 'Locked',0
                align 10h
qword_14001B130 dq 4F7A142C8163EB02h, 0BADB47CC74A2E194h, 5
                                        ; DATA XREF: .rdata:0000000140001468↑o
aConfigurations_0:                      ; DATA XREF: .rdata:0000000140001450↑o
                text "UTF-16LE", 'Configurations',0
                align 8
qword_14001B168 dq 4F7A142C8163EB02h, 0BADB47CC74A2E194h, 4
                                        ; DATA XREF: .rdata:0000000140001440↑o
aActive_1:                              ; DATA XREF: .rdata:0000000140001428↑o
                text "UTF-16LE", 'Active',0
                align 10h
qword_14001B190 dq 4F7A142C8163EB02h, 0BADB47CC74A2E194h, 2
                                        ; DATA XREF: .rdata:off_1400013F0↑o
aKuArab:                                ; DATA XREF: .rdata:0000000140002DD0↑o
                                        ; .rdata:0000000140004F90↑o
                text "UTF-16LE", 'ku-Arab',0
aQucLatn:                               ; DATA XREF: .rdata:0000000140003040↑o
                                        ; .rdata:0000000140004F80↑o
                text "UTF-16LE", 'quc-Latn',0
                align 10h
aHaLatn:                                ; DATA XREF: .rdata:0000000140002C08↑o
                                        ; .rdata:0000000140004F70↑o
                text "UTF-16LE", 'ha-Latn',0
aFfLatn:                                ; DATA XREF: .rdata:0000000140002AC8↑o
                                        ; .rdata:0000000140004F60↑o
                text "UTF-16LE", 'ff-Latn',0
aTzmLatn:                               ; DATA XREF: .rdata:0000000140003330↑o
                                        ; .rdata:0000000140004F50↑o
                text "UTF-16LE", 'tzm-Latn',0
                align 8
aIuLatn:                                ; DATA XREF: .rdata:0000000140002D10↑o
                                        ; .rdata:0000000140004F40↑o
                text "UTF-16LE", 'iu-Latn',0
aChrCher:                               ; DATA XREF: .rdata:0000000140002878↑o
                                        ; .rdata:0000000140004F30↑o
                text "UTF-16LE", 'chr-Cher',0
                align 10h
aSdArab:                                ; DATA XREF: .rdata:00000001400030E8↑o
                                        ; .rdata:0000000140004F20↑o
                text "UTF-16LE", 'sd-Arab',0
aMnMong:                                ; DATA XREF: .rdata:0000000140002E88↑o
                                        ; .rdata:0000000140004F10↑o
                text "UTF-16LE", 'mn-Mong',0
aPaArab:                                ; DATA XREF: .rdata:0000000140002FA8↑o
                                        ; .rdata:0000000140004F00↑o
                text "UTF-16LE", 'pa-Arab',0
aUzLatn:                                ; DATA XREF: .rdata:00000001400033A0↑o
                                        ; .rdata:0000000140004EF0↑o
                text "UTF-16LE", 'uz-Latn',0
aSmj:                                   ; DATA XREF: .rdata:0000000140003168↑o
                                        ; .rdata:0000000140004EE0↑o
                text "UTF-16LE", 'smj',0
aDsb:                                   ; DATA XREF: .rdata:00000001400028F8↑o
                                        ; .rdata:0000000140004ED0↑o
                text "UTF-16LE", 'dsb',0
aTgCyrl:                                ; DATA XREF: .rdata:0000000140003290↑o
                                        ; .rdata:0000000140004EC0↑o
                text "UTF-16LE", 'tg-Cyrl',0
aSr:                                    ; DATA XREF: .rdata:00000001400031C0↑o
                                        ; .rdata:0000000140004EB0↑o
                text "UTF-16LE", 'sr',0
                align 8
aNb:                                    ; DATA XREF: .rdata:0000000140002F08↑o
                                        ; .rdata:0000000140004EA0↑o
                text "UTF-16LE", 'nb',0
                align 20h
aZhHant:                                ; DATA XREF: .rdata:0000000140003428↑o
                                        ; .rdata:0000000140004E90↑o
                text "UTF-16LE", 'zh-Hant',0
aTzmTfng:                               ; DATA XREF: .rdata:0000000140003340↑o
                                        ; .rdata:0000000140004E80↑o
                text "UTF-16LE", 'tzm-Tfng',0
                align 8
aIuCans:                                ; DATA XREF: .rdata:0000000140002D00↑o
                                        ; .rdata:0000000140004E70↑o
                text "UTF-16LE", 'iu-Cans',0
aMnCyrl:                                ; DATA XREF: .rdata:0000000140002E78↑o
                                        ; .rdata:0000000140004E60↑o
                text "UTF-16LE", 'mn-Cyrl',0
aUzCyrl:                                ; DATA XREF: .rdata:0000000140003390↑o
                                        ; .rdata:0000000140004E50↑o
                text "UTF-16LE", 'uz-Cyrl',0
aSma:                                   ; DATA XREF: .rdata:0000000140003150↑o
                                        ; .rdata:0000000140004E40↑o
                text "UTF-16LE", 'sma',0
aAzLatn:                                ; DATA XREF: .rdata:00000001400027A8↑o
                                        ; .rdata:0000000140004E30↑o
                text "UTF-16LE", 'az-Latn',0
aBs:                                    ; DATA XREF: .rdata:0000000140002830↑o
                                        ; .rdata:0000000140004E20↑o
                text "UTF-16LE", 'bs',0
                align 8
aNn:                                    ; DATA XREF: .rdata:0000000140002F48↑o
                                        ; .rdata:0000000140004E10↑o
                text "UTF-16LE", 'nn',0
                align 20h
aZh:                                    ; DATA XREF: .rdata:0000000140003410↑o
                                        ; .rdata:0000000140004E00↑o
                text "UTF-16LE", 'zh',0
                align 8
aSms:                                   ; DATA XREF: .rdata:0000000140003190↑o
                                        ; .rdata:0000000140004DF0↑o
                text "UTF-16LE", 'sms',0
aAzCyrl:                                ; DATA XREF: .rdata:0000000140002798↑o
                                        ; .rdata:0000000140004DE0↑o
                text "UTF-16LE", 'az-Cyrl',0
aSmn:                                   ; DATA XREF: .rdata:0000000140003180↑o
                                        ; .rdata:0000000140004DD0↑o
                text "UTF-16LE", 'smn',0
aSrLatn:                                ; DATA XREF: .rdata:00000001400031F0↑o
                                        ; .rdata:0000000140004DC0↑o
                text "UTF-16LE", 'sr-Latn',0
aSrCyrl:                                ; DATA XREF: .rdata:00000001400031C8↑o
                                        ; .rdata:0000000140004DB0↑o
                text "UTF-16LE", 'sr-Cyrl',0
aBsLatn:                                ; DATA XREF: .rdata:0000000140002848↑o
                                        ; .rdata:0000000140004DA0↑o
                text "UTF-16LE", 'bs-Latn',0
aBsCyrl:                                ; DATA XREF: .rdata:0000000140002838↑o
                                        ; .rdata:0000000140004D90↑o
                text "UTF-16LE", 'bs-Cyrl',0
aEsCu:                                  ; DATA XREF: .rdata:0000000140002A08↑o
                                        ; .rdata:0000000140004D80↑o
                text "UTF-16LE", 'es-CU',0
                align 8
aEs419:                                 ; DATA XREF: .rdata:00000001400029D8↑o
                                        ; .rdata:0000000140004D70↑o
                text "UTF-16LE", 'es-419',0
                align 8
aEsUs:                                  ; DATA XREF: .rdata:0000000140002A78↑o
                                        ; .rdata:0000000140004D60↑o
                text "UTF-16LE", 'es-US',0
                align 8
aEsPr:                                  ; DATA XREF: .rdata:0000000140002A60↑o
                                        ; .rdata:0000000140004D50↑o
                text "UTF-16LE", 'es-PR',0
                align 8
aEsNi:                                  ; DATA XREF: .rdata:0000000140002A48↑o
                                        ; .rdata:0000000140004D40↑o
                text "UTF-16LE", 'es-NI',0
                align 8
aEnAe:                                  ; DATA XREF: .rdata:0000000140002940↑o
                                        ; .rdata:0000000140004D30↑o
                text "UTF-16LE", 'en-AE',0
                align 8
aEsHn:                                  ; DATA XREF: .rdata:0000000140002A38↑o
                                        ; .rdata:0000000140004D20↑o
                text "UTF-16LE", 'es-HN',0
                align 8
aEnSg:                                  ; DATA XREF: .rdata:00000001400029A8↑o
                                        ; .rdata:0000000140004D10↑o
                text "UTF-16LE", 'en-SG',0
                align 8
aEsSv:                                  ; DATA XREF: .rdata:0000000140002A70↑o
                                        ; .rdata:0000000140004D00↑o
                text "UTF-16LE", 'es-SV',0
                align 8
aEnMy:                                  ; DATA XREF: .rdata:0000000140002990↑o
                                        ; .rdata:0000000140004CF0↑o
                text "UTF-16LE", 'en-MY',0
                align 8
aEsBo:                                  ; DATA XREF: .rdata:00000001400029E8↑o
                                        ; .rdata:0000000140004CE0↑o
                text "UTF-16LE", 'es-BO',0
                align 8
aEnIn:                                  ; DATA XREF: .rdata:0000000140002980↑o
                                        ; .rdata:0000000140004CD0↑o
                text "UTF-16LE", 'en-IN',0
                align 8
aArQa:                                  ; DATA XREF: .rdata:0000000140002748↑o
                                        ; .rdata:0000000140004CC0↑o
                text "UTF-16LE", 'ar-QA',0
                align 8
aFrHt:                                  ; DATA XREF: .rdata:0000000140002B58↑o
                                        ; .rdata:0000000140004CB0↑o
                text "UTF-16LE", 'fr-HT',0
                align 8
aEsPy:                                  ; DATA XREF: .rdata:0000000140002A68↑o
                                        ; .rdata:0000000140004CA0↑o
                text "UTF-16LE", 'es-PY',0
                align 8
aEnHk:                                  ; DATA XREF: .rdata:0000000140002968↑o
                                        ; .rdata:0000000140004C90↑o
                text "UTF-16LE", 'en-HK',0
                align 8
aArBh:                                  ; DATA XREF: .rdata:00000001400026F8↑o
                                        ; .rdata:0000000140004C80↑o
                text "UTF-16LE", 'ar-BH',0
                align 8
aFrMa:                                  ; DATA XREF: .rdata:0000000140002B68↑o
                                        ; .rdata:0000000140004C70↑o
                text "UTF-16LE", 'fr-MA',0
                align 8
aEsUy:                                  ; DATA XREF: .rdata:0000000140002A80↑o
                                        ; .rdata:0000000140004C60↑o
                text "UTF-16LE", 'es-UY',0
                align 8
aEnId:                                  ; DATA XREF: .rdata:0000000140002970↑o
                                        ; .rdata:0000000140004C50↑o
                text "UTF-16LE", 'en-ID',0
                align 8
aArAe:                                  ; DATA XREF: .rdata:00000001400026F0↑o
                                        ; .rdata:0000000140004C40↑o
                text "UTF-16LE", 'ar-AE',0
                align 8
aFrMl:                                  ; DATA XREF: .rdata:0000000140002B78↑o
                                        ; .rdata:0000000140004C30↑o
                text "UTF-16LE", 'fr-ML',0
                align 8
aEsCl:                                  ; DATA XREF: .rdata:00000001400029F0↑o
                                        ; .rdata:0000000140004C20↑o
                text "UTF-16LE", 'es-CL',0
                align 8
aEnPh:                                  ; DATA XREF: .rdata:00000001400029A0↑o
                                        ; .rdata:0000000140004C10↑o
                text "UTF-16LE", 'en-PH',0
                align 8
aArKw:                                  ; DATA XREF: .rdata:0000000140002720↑o
                                        ; .rdata:0000000140004C00↑o
                text "UTF-16LE", 'ar-KW',0
                align 8
aSrCyrlMe:                              ; DATA XREF: .rdata:00000001400031E0↑o
                                        ; .rdata:0000000140004BF0↑o
                text "UTF-16LE", 'sr-Cyrl-ME',0
                align 10h
aFrCi:                                  ; DATA XREF: .rdata:0000000140002B40↑o
                                        ; .rdata:0000000140004BE0↑o
                text "UTF-16LE", 'fr-CI',0
                align 20h
aEsEc:                                  ; DATA XREF: .rdata:0000000140002A18↑o
                                        ; .rdata:0000000140004BD0↑o
                text "UTF-16LE", 'es-EC',0
                align 10h
aEnZw:                                  ; DATA XREF: .rdata:00000001400029C8↑o
                                        ; .rdata:0000000140004BC0↑o
                text "UTF-16LE", 'en-ZW',0
                align 20h
aArLb:                                  ; DATA XREF: .rdata:0000000140002728↑o
                                        ; .rdata:0000000140004BB0↑o
                text "UTF-16LE", 'ar-LB',0
                align 10h
aSrLatnMe:                              ; DATA XREF: .rdata:0000000140003208↑o
                                        ; .rdata:0000000140004BA0↑o
                text "UTF-16LE", 'sr-Latn-ME',0
                align 8
aFrCm:                                  ; DATA XREF: .rdata:0000000140002B48↑o
                                        ; .rdata:0000000140004B90↑o
                text "UTF-16LE", 'fr-CM',0
                align 8
aEsAr:                                  ; DATA XREF: .rdata:00000001400029E0↑o
                                        ; .rdata:0000000140004B80↑o
                text "UTF-16LE", 'es-AR',0
                align 8
aEnTt:                                  ; DATA XREF: .rdata:00000001400029B0↑o
                                        ; .rdata:0000000140004B70↑o
                text "UTF-16LE", 'en-TT',0
                align 8
aArJo:                                  ; DATA XREF: .rdata:0000000140002718↑o
                                        ; .rdata:0000000140004B60↑o
                text "UTF-16LE", 'ar-JO',0
                align 8
aSrCyrlRs:                              ; DATA XREF: .rdata:00000001400031E8↑o
                                        ; .rdata:0000000140004B50↑o
                text "UTF-16LE", 'sr-Cyrl-RS',0
                align 20h
aFrSn:                                  ; DATA XREF: .rdata:0000000140002B88↑o
                                        ; .rdata:0000000140004B40↑o
                text "UTF-16LE", 'fr-SN',0
                align 10h
aEsPe:                                  ; DATA XREF: .rdata:0000000140002A58↑o
                                        ; .rdata:0000000140004B30↑o
                text "UTF-16LE", 'es-PE',0
                align 20h
aEnBz:                                  ; DATA XREF: .rdata:0000000140002950↑o
                                        ; .rdata:0000000140004B20↑o
                text "UTF-16LE", 'en-BZ',0
                align 10h
aArSy:                                  ; DATA XREF: .rdata:0000000140002758↑o
                                        ; .rdata:0000000140004B10↑o
                text "UTF-16LE", 'ar-SY',0
                align 20h
aSmnFi:                                 ; DATA XREF: .rdata:0000000140003188↑o
                                        ; .rdata:0000000140004B00↑o
                text "UTF-16LE", 'smn-FI',0
                align 10h
aSrLatnRs:                              ; DATA XREF: .rdata:0000000140003210↑o
                                        ; .rdata:0000000140004AF0↑o
                text "UTF-16LE", 'sr-Latn-RS',0
                align 8
aFrCd:                                  ; DATA XREF: .rdata:0000000140002B30↑o
                                        ; .rdata:0000000140004AE0↑o
                text "UTF-16LE", 'fr-CD',0
                align 8
aEsCo:                                  ; DATA XREF: .rdata:00000001400029F8↑o
                                        ; .rdata:0000000140004AD0↑o
                text "UTF-16LE", 'es-CO',0
                align 8
aEn029:                                 ; DATA XREF: .rdata:0000000140002938↑o
                                        ; .rdata:0000000140004AC0↑o
                text "UTF-16LE", 'en-029',0
                align 8
aArYe:                                  ; DATA XREF: .rdata:0000000140002768↑o
                                        ; .rdata:0000000140004AB0↑o
                text "UTF-16LE", 'ar-YE',0
                align 8
aSmsFi:                                 ; DATA XREF: .rdata:0000000140003198↑o
                                        ; .rdata:0000000140004AA0↑o
                text "UTF-16LE", 'sms-FI',0
                align 8
aBsCyrlBa:                              ; DATA XREF: .rdata:0000000140002840↑o
                                        ; .rdata:0000000140004A90↑o
                text "UTF-16LE", 'bs-Cyrl-BA',0
                align 10h
aFrRe:                                  ; DATA XREF: .rdata:0000000140002B80↑o
                                        ; .rdata:0000000140004A80↑o
                text "UTF-16LE", 'fr-RE',0
                align 20h
aEsVe:                                  ; DATA XREF: .rdata:0000000140002A88↑o
                                        ; .rdata:0000000140004A70↑o
                text "UTF-16LE", 'es-VE',0
                align 10h
aEnJm:                                  ; DATA XREF: .rdata:0000000140002988↑o
                                        ; .rdata:0000000140004A60↑o
                text "UTF-16LE", 'en-JM',0
                align 20h
aArOm:                                  ; DATA XREF: .rdata:0000000140002740↑o
                                        ; .rdata:0000000140004A50↑o
                text "UTF-16LE", 'ar-OM',0
                align 10h
aSmaSe:                                 ; DATA XREF: .rdata:0000000140003160↑o
                                        ; .rdata:0000000140004A40↑o
                text "UTF-16LE", 'sma-SE',0
                align 20h
aSrCyrlBa:                              ; DATA XREF: .rdata:00000001400031D0↑o
                                        ; .rdata:0000000140004A30↑o
                text "UTF-16LE", 'sr-Cyrl-BA',0
                align 8
aFr029:                                 ; DATA XREF: .rdata:0000000140002B18↑o
                                        ; .rdata:0000000140004A20↑o
                text "UTF-16LE", 'fr-029',0
                align 8
aEsDo:                                  ; DATA XREF: .rdata:0000000140002A10↑o
                                        ; .rdata:0000000140004A10↑o
                text "UTF-16LE", 'es-DO',0
                align 8
aEnZa:                                  ; DATA XREF: .rdata:00000001400029C0↑o
                                        ; .rdata:0000000140004A00↑o
                text "UTF-16LE", 'en-ZA',0
                align 8
aArTn:                                  ; DATA XREF: .rdata:0000000140002760↑o
                                        ; .rdata:00000001400049F0↑o
                text "UTF-16LE", 'ar-TN',0
                align 8
aSmaNo:                                 ; DATA XREF: .rdata:0000000140003158↑o
                                        ; .rdata:00000001400049E0↑o
                text "UTF-16LE", 'sma-NO',0
                align 8
aSrLatnBa:                              ; DATA XREF: .rdata:00000001400031F8↑o
                                        ; .rdata:00000001400049D0↑o
                text "UTF-16LE", 'sr-Latn-BA',0
                align 20h
aFrMc:                                  ; DATA XREF: .rdata:0000000140002B70↑o
                                        ; .rdata:00000001400049C0↑o
                text "UTF-16LE", 'fr-MC',0
                align 10h
aEsPa:                                  ; DATA XREF: .rdata:0000000140002A50↑o
                                        ; .rdata:00000001400049B0↑o
                text "UTF-16LE", 'es-PA',0
                align 20h
aEnIe:                                  ; DATA XREF: .rdata:0000000140002978↑o
                                        ; .rdata:00000001400049A0↑o
                text "UTF-16LE", 'en-IE',0
                align 10h
aArMa:                                  ; DATA XREF: .rdata:0000000140002738↑o
                                        ; .rdata:0000000140004990↑o
                text "UTF-16LE", 'ar-MA',0
                align 20h
aSmjSe:                                 ; DATA XREF: .rdata:0000000140003178↑o
                                        ; .rdata:0000000140004980↑o
                text "UTF-16LE", 'smj-SE',0
                align 10h
aBsLatnBa:                              ; DATA XREF: .rdata:0000000140002850↑o
                                        ; .rdata:0000000140004970↑o
                text "UTF-16LE", 'bs-Latn-BA',0
                align 8
aFrLu:                                  ; DATA XREF: .rdata:0000000140002B60↑o
                                        ; .rdata:0000000140004960↑o
                text "UTF-16LE", 'fr-LU',0
                align 8
aEsCr:                                  ; DATA XREF: .rdata:0000000140002A00↑o
                                        ; .rdata:0000000140004950↑o
                text "UTF-16LE", 'es-CR',0
                align 8
aEnNz:                                  ; DATA XREF: .rdata:0000000140002998↑o
                                        ; .rdata:0000000140004940↑o
                text "UTF-16LE", 'en-NZ',0
                align 8
aDeLi:                                  ; DATA XREF: .rdata:00000001400028E8↑o
                                        ; .rdata:0000000140004930↑o
                text "UTF-16LE", 'de-LI',0
                align 8
aZhMo:                                  ; DATA XREF: .rdata:0000000140003438↑o
                                        ; .rdata:0000000140004920↑o
                text "UTF-16LE", 'zh-MO',0
                align 8
aArDz:                                  ; DATA XREF: .rdata:0000000140002700↑o
                                        ; .rdata:0000000140004910↑o
                text "UTF-16LE", 'ar-DZ',0
                align 8
aTzmTfngMa:                             ; DATA XREF: .rdata:0000000140003348↑o
                                        ; .rdata:0000000140004900↑o
                text "UTF-16LE", 'tzm-Tfng-MA',0
aSmjNo:                                 ; DATA XREF: .rdata:0000000140003170↑o
                                        ; .rdata:00000001400048F0↑o
                text "UTF-16LE", 'smj-NO',0
                align 10h
aHrBa:                                  ; DATA XREF: .rdata:0000000140002C50↑o
                                        ; .rdata:00000001400048E0↑o
                text "UTF-16LE", 'hr-BA',0
                align 20h
aFrCh:                                  ; DATA XREF: .rdata:0000000140002B38↑o
                                        ; .rdata:00000001400048D0↑o
                text "UTF-16LE", 'fr-CH',0
                align 10h
aEsGt:                                  ; DATA XREF: .rdata:0000000140002A30↑o
                                        ; .rdata:00000001400048C0↑o
                text "UTF-16LE", 'es-GT',0
                align 20h
aEnCa:                                  ; DATA XREF: .rdata:0000000140002958↑o
                                        ; .rdata:00000001400048B0↑o
                text "UTF-16LE", 'en-CA',0
                align 10h
aDeLu:                                  ; DATA XREF: .rdata:off_1400028F0↑o
                                        ; .rdata:00000001400048A0↑o
                text "UTF-16LE", 'de-LU',0
                align 20h
aZhSg:                                  ; DATA XREF: .rdata:0000000140003440↑o
                                        ; .rdata:0000000140004890↑o
                text "UTF-16LE", 'zh-SG',0
                align 10h
aArLy:                                  ; DATA XREF: .rdata:0000000140002730↑o
                                        ; .rdata:0000000140004880↑o
                text "UTF-16LE", 'ar-LY',0
                align 20h
aQuzPe:                                 ; DATA XREF: .rdata:0000000140003068↑o
                                        ; .rdata:0000000140004870↑o
                text "UTF-16LE", 'quz-PE',0
                align 10h
aDzBt:                                  ; DATA XREF: .rdata:0000000140002918↑o
                                        ; .rdata:0000000140004860↑o
                text "UTF-16LE", 'dz-BT',0
                align 20h
aMnMongMn:                              ; DATA XREF: .rdata:0000000140002E98↑o
                                        ; .rdata:0000000140004850↑o
                text "UTF-16LE", 'mn-Mong-MN',0
                align 8
aSeFi:                                  ; DATA XREF: .rdata:0000000140003108↑o
                                        ; .rdata:0000000140004840↑o
                text "UTF-16LE", 'se-FI',0
                align 8
aSrCyrlCs:                              ; DATA XREF: .rdata:00000001400031D8↑o
                                        ; .rdata:0000000140004830↑o
                text "UTF-16LE", 'sr-Cyrl-CS',0
                align 20h
aFrCa:                                  ; DATA XREF: .rdata:0000000140002B28↑o
                                        ; .rdata:0000000140004820↑o
                text "UTF-16LE", 'fr-CA',0
                align 10h
aEsEs:                                  ; DATA XREF: .rdata:0000000140002A20↑o
                                        ; .rdata:0000000140004810↑o
                text "UTF-16LE", 'es-ES',0
                align 20h
aEnAu:                                  ; DATA XREF: .rdata:0000000140002948↑o
                                        ; .rdata:0000000140004800↑o
                text "UTF-16LE", 'en-AU',0
                align 10h
aDeAt:                                  ; DATA XREF: .rdata:00000001400028D0↑o
                                        ; .rdata:00000001400047F0↑o
                text "UTF-16LE", 'de-AT',0
                align 20h
aZhHk:                                  ; DATA XREF: .rdata:0000000140003430↑o
                                        ; .rdata:00000001400047E0↑o
                text "UTF-16LE", 'zh-HK',0
                align 10h
aArEg:                                  ; DATA XREF: .rdata:0000000140002708↑o
                                        ; .rdata:00000001400047D0↑o
                text "UTF-16LE", 'ar-EG',0
                align 20h
aQpsPlocm:                              ; DATA XREF: .rdata:0000000140003030↑o
                                        ; .rdata:00000001400047C0↑o
                text "UTF-16LE", 'qps-plocm',0
                align 8
aQpsLatnXSh:                            ; DATA XREF: .rdata:0000000140003018↑o
                                        ; .rdata:00000001400047B0↑o
                text "UTF-16LE", 'qps-Latn-x-sh',0
                align 8
aTiEr:                                  ; DATA XREF: .rdata:00000001400032B8↑o
                                        ; .rdata:00000001400047A0↑o
                text "UTF-16LE", 'ti-ER',0
                align 8
aQuzEc:                                 ; DATA XREF: .rdata:0000000140003060↑o
                                        ; .rdata:0000000140004790↑o
                text "UTF-16LE", 'quz-EC',0
                align 8
aFfLatnSn:                              ; DATA XREF: .rdata:0000000140002AD8↑o
                                        ; .rdata:0000000140004780↑o
                text "UTF-16LE", 'ff-Latn-SN',0
                align 10h
aNeIn:                                  ; DATA XREF: .rdata:0000000140002F20↑o
                                        ; .rdata:0000000140004770↑o
                text "UTF-16LE", 'ne-IN',0
                align 20h
aKsDevaIn:                              ; DATA XREF: .rdata:0000000140002DC0↑o
                                        ; .rdata:0000000140004760↑o
                text "UTF-16LE", 'ks-Deva-IN',0
                align 8
aTzmLatnDz:                             ; DATA XREF: .rdata:0000000140003338↑o
                                        ; .rdata:0000000140004750↑o
                text "UTF-16LE", 'tzm-Latn-DZ',0
aIuLatnCa:                              ; DATA XREF: .rdata:0000000140002D18↑o
                                        ; .rdata:0000000140004740↑o
                text "UTF-16LE", 'iu-Latn-CA',0
                align 8
aSdArabPk:                              ; DATA XREF: .rdata:00000001400030F0↑o
                                        ; .rdata:0000000140004730↑o
                text "UTF-16LE", 'sd-Arab-PK',0
                align 20h
aMnMongCn:                              ; DATA XREF: .rdata:0000000140002E90↑o
                                        ; .rdata:0000000140004720↑o
                text "UTF-16LE", 'mn-Mong-CN',0
                align 8
aTaLk:                                  ; DATA XREF: .rdata:0000000140003270↑o
                                        ; .rdata:0000000140004710↑o
                text "UTF-16LE", 'ta-LK',0
                align 8
aPaArabPk:                              ; DATA XREF: .rdata:0000000140002FB0↑o
                                        ; .rdata:0000000140004700↑o
                text "UTF-16LE", 'pa-Arab-PK',0
                align 20h
aBnBd:                                  ; DATA XREF: .rdata:0000000140002800↑o
                                        ; .rdata:00000001400046F0↑o
                text "UTF-16LE", 'bn-BD',0
                align 10h
aUzCyrlUz:                              ; DATA XREF: .rdata:0000000140003398↑o
                                        ; .rdata:00000001400046E0↑o
                text "UTF-16LE", 'uz-Cyrl-UZ',0
                align 8
aMsBn:                                  ; DATA XREF: .rdata:0000000140002ED8↑o
                                        ; .rdata:00000001400046D0↑o
                text "UTF-16LE", 'ms-BN',0
                align 8
aGaIe:                                  ; DATA XREF: .rdata:0000000140002BA8↑o
                                        ; .rdata:00000001400046C0↑o
                text "UTF-16LE", 'ga-IE',0
                align 8
aSeSe:                                  ; DATA XREF: .rdata:0000000140003118↑o
                                        ; .rdata:00000001400046B0↑o
                text "UTF-16LE", 'se-SE',0
                align 8
aTnBw:                                  ; DATA XREF: .rdata:00000001400032E0↑o
                                        ; .rdata:00000001400046A0↑o
                text "UTF-16LE", 'tn-BW',0
                align 8
aDsbDe:                                 ; DATA XREF: .rdata:0000000140002900↑o
                                        ; .rdata:0000000140004690↑o
                text "UTF-16LE", 'dsb-DE',0
                align 8
aAzCyrlAz:                              ; DATA XREF: .rdata:00000001400027A0↑o
                                        ; .rdata:0000000140004680↑o
                text "UTF-16LE", 'az-Cyrl-AZ',0
                align 10h
aUrIn:                                  ; DATA XREF: .rdata:0000000140003378↑o
                                        ; .rdata:0000000140004670↑o
                text "UTF-16LE", 'ur-IN',0
                align 20h
aSvFi:                                  ; DATA XREF: .rdata:0000000140003230↑o
                                        ; .rdata:0000000140004660↑o
                text "UTF-16LE", 'sv-FI',0
                align 10h
aSrLatnCs:                              ; DATA XREF: .rdata:0000000140003200↑o
                                        ; .rdata:0000000140004650↑o
                text "UTF-16LE", 'sr-Latn-CS',0
                align 8
aRuMd:                                  ; DATA XREF: .rdata:00000001400030A0↑o
                                        ; .rdata:0000000140004640↑o
                text "UTF-16LE", 'ru-MD',0
                align 8
aRoMd:                                  ; DATA XREF: .rdata:0000000140003088↑o
                                        ; .rdata:0000000140004630↑o
                text "UTF-16LE", 'ro-MD',0
                align 8
aPtPt:                                  ; DATA XREF: .rdata:0000000140003010↑o
                                        ; .rdata:0000000140004620↑o
                text "UTF-16LE", 'pt-PT',0
                align 8
aNnNo:                                  ; DATA XREF: .rdata:0000000140002F50↑o
                                        ; .rdata:0000000140004610↑o
                text "UTF-16LE", 'nn-NO',0
                align 8
aNlBe:                                  ; DATA XREF: .rdata:0000000140002F38↑o
                                        ; .rdata:0000000140004600↑o
                text "UTF-16LE", 'nl-BE',0
                align 8
aItCh:                                  ; DATA XREF: .rdata:0000000140002CE8↑o
                                        ; .rdata:00000001400045F0↑o
                text "UTF-16LE", 'it-CH',0
                align 8
aFrBe:                                  ; DATA XREF: .rdata:0000000140002B20↑o
                                        ; .rdata:00000001400045E0↑o
                text "UTF-16LE", 'fr-BE',0
                align 8
aEsMx:                                  ; DATA XREF: .rdata:0000000140002A40↑o
                                        ; .rdata:00000001400045D0↑o
                text "UTF-16LE", 'es-MX',0
                align 8
aEnGb:                                  ; DATA XREF: .rdata:0000000140002960↑o
                                        ; .rdata:00000001400045C0↑o
                text "UTF-16LE", 'en-GB',0
                align 8
aDeCh:                                  ; DATA XREF: .rdata:00000001400028D8↑o
                                        ; .rdata:00000001400045B0↑o
                text "UTF-16LE", 'de-CH',0
                align 8
aZhCn:                                  ; DATA XREF: .rdata:0000000140003418↑o
                                        ; .rdata:00000001400045A0↑o
                text "UTF-16LE", 'zh-CN',0
                align 8
aCaEsValencia:                          ; DATA XREF: .rdata:0000000140002868↑o
                                        ; .rdata:0000000140004590↑o
                text "UTF-16LE", 'ca-ES-valencia',0
                align 8
aArIq:                                  ; DATA XREF: .rdata:0000000140002710↑o
                                        ; .rdata:0000000140004580↑o
                text "UTF-16LE", 'ar-IQ',0
                align 8
aQpsPloca:                              ; DATA XREF: .rdata:0000000140003028↑o
                                        ; .rdata:0000000140004570↑o
                text "UTF-16LE", 'qps-ploca',0
                align 20h
aQpsPloc:                               ; DATA XREF: .rdata:0000000140003020↑o
                                        ; .rdata:0000000140004560↑o
                text "UTF-16LE", 'qps-ploc',0
                align 8
aKuArabIq:                              ; DATA XREF: .rdata:0000000140002DD8↑o
                                        ; .rdata:0000000140004550↑o
                text "UTF-16LE", 'ku-Arab-IQ',0
                align 10h
aGdGb:                                  ; DATA XREF: .rdata:0000000140002BB8↑o
                                        ; .rdata:0000000140004540↑o
                text "UTF-16LE", 'gd-GB',0
                align 20h
aPrsAf:                                 ; DATA XREF: .rdata:0000000140002FE8↑o
                                        ; .rdata:0000000140004530↑o
                text "UTF-16LE", 'prs-AF',0
                align 10h
aWoSn:                                  ; DATA XREF: .rdata:00000001400033D8↑o
                                        ; .rdata:0000000140004520↑o
                text "UTF-16LE", 'wo-SN',0
                align 20h
aRwRw:                                  ; DATA XREF: .rdata:00000001400030B8↑o
                                        ; .rdata:0000000140004510↑o
                text "UTF-16LE", 'rw-RW',0
                align 10h
aQucLatnGt:                             ; DATA XREF: .rdata:0000000140003048↑o
                                        ; .rdata:0000000140004500↑o
                text "UTF-16LE", 'quc-Latn-GT',0
aSahRu:                                 ; DATA XREF: .rdata:00000001400030D8↑o
                                        ; .rdata:00000001400044F0↑o
                text "UTF-16LE", 'sah-RU',0
                align 8
aGswFr:                                 ; DATA XREF: .rdata:0000000140002BE8↑o
                                        ; .rdata:00000001400044E0↑o
                text "UTF-16LE", 'gsw-FR',0
                align 8
aCoFr:                                  ; DATA XREF: .rdata:0000000140002890↑o
                                        ; .rdata:00000001400044D0↑o
                text "UTF-16LE", 'co-FR',0
                align 8
aOcFr:                                  ; DATA XREF: .rdata:0000000140002F78↑o
                                        ; .rdata:00000001400044C0↑o
                text "UTF-16LE", 'oc-FR',0
                align 8
aMiNz:                                  ; DATA XREF: .rdata:0000000140002E48↑o
                                        ; .rdata:00000001400044B0↑o
                text "UTF-16LE", 'mi-NZ',0
                align 8
aUgCn:                                  ; DATA XREF: .rdata:0000000140003358↑o
                                        ; .rdata:00000001400044A0↑o
                text "UTF-16LE", 'ug-CN',0
                align 8
aBrFr:                                  ; DATA XREF: .rdata:0000000140002828↑o
                                        ; .rdata:0000000140004490↑o
                text "UTF-16LE", 'br-FR',0
                align 8
aMohCa:                                 ; DATA XREF: .rdata:0000000140002EB8↑o
                                        ; .rdata:0000000140004480↑o
                text "UTF-16LE", 'moh-CA',0
                align 8
aArnCl:                                 ; DATA XREF: .rdata:0000000140002778↑o
                                        ; .rdata:0000000140004470↑o
                text "UTF-16LE", 'arn-CL',0
                align 8
aPap029:                                ; DATA XREF: .rdata:0000000140002FC8↑o
                                        ; .rdata:0000000140004460↑o
                text "UTF-16LE", 'pap-029',0
aIiCn:                                  ; DATA XREF: .rdata:0000000140002CC8↑o
                                        ; .rdata:0000000140004450↑o
                text "UTF-16LE", 'ii-CN',0
                align 8
aSoSo:                                  ; DATA XREF: .rdata:00000001400031A8↑o
                                        ; .rdata:0000000140004440↑o
                text "UTF-16LE", 'so-SO',0
                align 8
aLa001:                                 ; DATA XREF: .rdata:0000000140002DF8↑o
                                        ; .rdata:0000000140004430↑o
                text "UTF-16LE", 'la-001',0
                align 8
aHawUs:                                 ; DATA XREF: .rdata:0000000140002C20↑o
                                        ; .rdata:0000000140004420↑o
                text "UTF-16LE", 'haw-US',0
                align 8
aGnPy:                                  ; DATA XREF: .rdata:0000000140002BD8↑o
                                        ; .rdata:0000000140004410↑o
                text "UTF-16LE", 'gn-PY',0
                align 8
aTiEt:                                  ; DATA XREF: .rdata:00000001400032C0↑o
                                        ; .rdata:0000000140004400↑o
                text "UTF-16LE", 'ti-ET',0
                align 8
aOmEt:                                  ; DATA XREF: .rdata:0000000140002F88↑o
                                        ; .rdata:00000001400043F0↑o
                text "UTF-16LE", 'om-ET',0
                align 8
aKrLatnNg:                              ; DATA XREF: .rdata:0000000140002DA8↑o
                                        ; .rdata:00000001400043E0↑o
                text "UTF-16LE", 'kr-Latn-NG',0
                align 10h
aIgNg:                                  ; DATA XREF: .rdata:0000000140002CB8↑o
                                        ; .rdata:00000001400043D0↑o
                text "UTF-16LE", 'ig-NG',0
                align 20h
aKlGl:                                  ; DATA XREF: .rdata:0000000140002D58↑o
                                        ; .rdata:00000001400043C0↑o
                text "UTF-16LE", 'kl-GL',0
                align 10h
aLbLu:                                  ; DATA XREF: .rdata:0000000140002E08↑o
                                        ; .rdata:00000001400043B0↑o
                text "UTF-16LE", 'lb-LU',0
                align 20h
aBaRu:                                  ; DATA XREF: .rdata:00000001400027C0↑o
                                        ; .rdata:00000001400043A0↑o
                text "UTF-16LE", 'ba-RU',0
                align 10h
aNsoZa:                                 ; DATA XREF: .rdata:0000000140002F68↑o
                                        ; .rdata:0000000140004390↑o
                text "UTF-16LE", 'nso-ZA',0
                align 20h
aQuzBo:                                 ; DATA XREF: .rdata:0000000140003058↑o
                                        ; .rdata:0000000140004380↑o
                text "UTF-16LE", 'quz-BO',0
                align 10h
aYoNg:                                  ; DATA XREF: .rdata:0000000140003408↑o
                                        ; .rdata:0000000140004370↑o
                text "UTF-16LE", 'yo-NG',0
                align 20h
aIbbNg:                                 ; DATA XREF: .rdata:0000000140002C98↑o
                                        ; .rdata:0000000140004360↑o
                text "UTF-16LE", 'ibb-NG',0
                align 10h
aHaLatnNg:                              ; DATA XREF: .rdata:0000000140002C10↑o
                                        ; .rdata:0000000140004350↑o
                text "UTF-16LE", 'ha-Latn-NG',0
                align 8
aFfLatnNg:                              ; DATA XREF: .rdata:0000000140002AD0↑o
                                        ; .rdata:0000000140004340↑o
                text "UTF-16LE", 'ff-Latn-NG',0
                align 20h
aBinNg:                                 ; DATA XREF: .rdata:00000001400027F0↑o
                                        ; .rdata:0000000140004330↑o
                text "UTF-16LE", 'bin-NG',0
                align 10h
aDvMv:                                  ; DATA XREF: .rdata:0000000140002910↑o
                                        ; .rdata:0000000140004320↑o
                text "UTF-16LE", 'dv-MV',0
                align 20h
aFilPh:                                 ; DATA XREF: .rdata:0000000140002AF8↑o
                                        ; .rdata:0000000140004310↑o
                text "UTF-16LE", 'fil-PH',0
                align 10h
aPsAf:                                  ; DATA XREF: .rdata:0000000140002FF8↑o
                                        ; .rdata:0000000140004300↑o
                text "UTF-16LE", 'ps-AF',0
                align 20h
aFyNl:                                  ; DATA XREF: .rdata:0000000140002B98↑o
                                        ; .rdata:00000001400042F0↑o
                text "UTF-16LE", 'fy-NL',0
                align 10h
aNeNp:                                  ; DATA XREF: .rdata:0000000140002F28↑o
                                        ; .rdata:00000001400042E0↑o
                text "UTF-16LE", 'ne-NP',0
                align 20h
aKsArab:                                ; DATA XREF: .rdata:0000000140002DB8↑o
                                        ; .rdata:00000001400042D0↑o
                text "UTF-16LE", 'ks-Arab',0
aTzmArabMa:                             ; DATA XREF: .rdata:0000000140003328↑o
                                        ; .rdata:00000001400042C0↑o
                text "UTF-16LE", 'tzm-Arab-MA',0
aAmEt:                                  ; DATA XREF: .rdata:00000001400026E0↑o
                                        ; .rdata:00000001400042B0↑o
                text "UTF-16LE", 'am-ET',0
                align 8
aIuCansCa:                              ; DATA XREF: .rdata:0000000140002D08↑o
                                        ; .rdata:00000001400042A0↑o
                text "UTF-16LE", 'iu-Cans-CA',0
                align 10h
aChrCherUs:                             ; DATA XREF: .rdata:0000000140002880↑o
                                        ; .rdata:0000000140004290↑o
                text "UTF-16LE", 'chr-Cher-US',0
aSiLk:                                  ; DATA XREF: .rdata:0000000140003128↑o
                                        ; .rdata:0000000140004280↑o
                text "UTF-16LE", 'si-LK',0
                align 8
aSyrSy:                                 ; DATA XREF: .rdata:0000000140003258↑o
                                        ; .rdata:0000000140004270↑o
                text "UTF-16LE", 'syr-SY',0
                align 8
aSdDevaIn:                              ; DATA XREF: .rdata:00000001400030F8↑o
                                        ; .rdata:0000000140004260↑o
                text "UTF-16LE", 'sd-Deva-IN',0
                align 20h
aMniIn:                                 ; DATA XREF: .rdata:0000000140002EA8↑o
                                        ; .rdata:0000000140004250↑o
                text "UTF-16LE", 'mni-IN',0
                align 10h
aKokIn:                                 ; DATA XREF: .rdata:0000000140002D98↑o
                                        ; .rdata:0000000140004240↑o
                text "UTF-16LE", 'kok-IN',0
                align 20h
aGlEs:                                  ; DATA XREF: .rdata:0000000140002BC8↑o
                                        ; .rdata:0000000140004230↑o
                text "UTF-16LE", 'gl-ES',0
                align 10h
aMyMm:                                  ; DATA XREF: .rdata:0000000140002F00↑o
                                        ; .rdata:0000000140004220↑o
                text "UTF-16LE", 'my-MM',0
                align 20h
aLoLa:                                  ; DATA XREF: .rdata:0000000140002E18↑o
                                        ; .rdata:0000000140004210↑o
                text "UTF-16LE", 'lo-LA',0
                align 10h
aKmKh:                                  ; DATA XREF: .rdata:0000000140002D68↑o
                                        ; .rdata:0000000140004200↑o
                text "UTF-16LE", 'km-KH',0
                align 20h
aCyGb:                                  ; DATA XREF: .rdata:00000001400028B0↑o
                                        ; .rdata:00000001400041F0↑o
                text "UTF-16LE", 'cy-GB',0
                align 10h
aBoCn:                                  ; DATA XREF: .rdata:0000000140002818↑o
                                        ; .rdata:00000001400041E0↑o
                text "UTF-16LE", 'bo-CN',0
                align 20h
aMnMn:                                  ; DATA XREF: .rdata:0000000140002E80↑o
                                        ; .rdata:00000001400041D0↑o
                text "UTF-16LE", 'mn-MN',0
                align 10h
aSaIn:                                  ; DATA XREF: .rdata:00000001400030C8↑o
                                        ; .rdata:00000001400041C0↑o
                text "UTF-16LE", 'sa-IN',0
                align 20h
aMrIn:                                  ; DATA XREF: .rdata:0000000140002EC8↑o
                                        ; .rdata:00000001400041B0↑o
                text "UTF-16LE", 'mr-IN',0
                align 10h
aAsIn:                                  ; DATA XREF: .rdata:0000000140002788↑o
                                        ; .rdata:00000001400041A0↑o
                text "UTF-16LE", 'as-IN',0
                align 20h
aMlIn:                                  ; DATA XREF: .rdata:0000000140002E68↑o
                                        ; .rdata:0000000140004190↑o
                text "UTF-16LE", 'ml-IN',0
                align 10h
aKnIn:                                  ; DATA XREF: .rdata:0000000140002D78↑o
                                        ; .rdata:0000000140004180↑o
                text "UTF-16LE", 'kn-IN',0
                align 20h
aTeIn:                                  ; DATA XREF: .rdata:0000000140003280↑o
                                        ; .rdata:0000000140004170↑o
                text "UTF-16LE", 'te-IN',0
                align 10h
aTaIn:                                  ; DATA XREF: .rdata:0000000140003268↑o
                                        ; .rdata:0000000140004160↑o
                text "UTF-16LE", 'ta-IN',0
                align 20h
aOrIn:                                  ; DATA XREF: .rdata:0000000140002F98↑o
                                        ; .rdata:0000000140004150↑o
                text "UTF-16LE", 'or-IN',0
                align 10h
aGuIn:                                  ; DATA XREF: .rdata:0000000140002BF8↑o
                                        ; .rdata:0000000140004140↑o
                text "UTF-16LE", 'gu-IN',0
                align 20h
aPaIn:                                  ; DATA XREF: .rdata:0000000140002FB8↑o
                                        ; .rdata:0000000140004130↑o
                text "UTF-16LE", 'pa-IN',0
                align 10h
aBnIn:                                  ; DATA XREF: .rdata:0000000140002808↑o
                                        ; .rdata:0000000140004120↑o
                text "UTF-16LE", 'bn-IN',0
                align 20h
aTtRu:                                  ; DATA XREF: .rdata:0000000140003318↑o
                                        ; .rdata:0000000140004110↑o
                text "UTF-16LE", 'tt-RU',0
                align 10h
aUzLatnUz:                              ; DATA XREF: .rdata:00000001400033A8↑o
                                        ; .rdata:0000000140004100↑o
                text "UTF-16LE", 'uz-Latn-UZ',0
                align 8
aTkTm:                                  ; DATA XREF: .rdata:00000001400032D0↑o
                                        ; .rdata:00000001400040F0↑o
                text "UTF-16LE", 'tk-TM',0
                align 8
aSwKe:                                  ; DATA XREF: .rdata:0000000140003248↑o
                                        ; .rdata:00000001400040E0↑o
                text "UTF-16LE", 'sw-KE',0
                align 8
aKyKg:                                  ; DATA XREF: .rdata:0000000140002DE8↑o
                                        ; .rdata:00000001400040D0↑o
                text "UTF-16LE", 'ky-KG',0
                align 8
aKkKz:                                  ; DATA XREF: .rdata:0000000140002D48↑o
                                        ; .rdata:00000001400040C0↑o
                text "UTF-16LE", 'kk-KZ',0
                align 8
aMsMy:                                  ; DATA XREF: .rdata:0000000140002EE0↑o
                                        ; .rdata:00000001400040B0↑o
                text "UTF-16LE", 'ms-MY',0
                align 8
aYi001:                                 ; DATA XREF: .rdata:00000001400033F8↑o
                                        ; .rdata:00000001400040A0↑o
                text "UTF-16LE", 'yi-001',0
                align 8
aSeNo:                                  ; DATA XREF: .rdata:0000000140003110↑o
                                        ; .rdata:0000000140004090↑o
                text "UTF-16LE", 'se-NO',0
                align 8
aMtMt:                                  ; DATA XREF: .rdata:0000000140002EF0↑o
                                        ; .rdata:0000000140004080↑o
                text "UTF-16LE", 'mt-MT',0
                align 8
aHiIn:                                  ; DATA XREF: .rdata:0000000140002C40↑o
                                        ; .rdata:0000000140004070↑o
                text "UTF-16LE", 'hi-IN',0
                align 8
aFoFo:                                  ; DATA XREF: .rdata:0000000140002B08↑o
                                        ; .rdata:0000000140004060↑o
                text "UTF-16LE", 'fo-FO',0
                align 8
aKaGe:                                  ; DATA XREF: .rdata:0000000140002D38↑o
                                        ; .rdata:0000000140004050↑o
                text "UTF-16LE", 'ka-GE',0
                align 8
aAfZa:                                  ; DATA XREF: .rdata:00000001400026D0↑o
                                        ; .rdata:0000000140004040↑o
                text "UTF-16LE", 'af-ZA',0
                align 8
aZuZa:                                  ; DATA XREF: .rdata:0000000140003458↑o
                                        ; .rdata:0000000140004030↑o
                text "UTF-16LE", 'zu-ZA',0
                align 8
aXhZa:                                  ; DATA XREF: .rdata:00000001400033E8↑o
                                        ; .rdata:0000000140004020↑o
                text "UTF-16LE", 'xh-ZA',0
                align 8
aVeZa:                                  ; DATA XREF: .rdata:00000001400033B8↑o
                                        ; .rdata:0000000140004010↑o
                text "UTF-16LE", 've-ZA',0
                align 8
aTnZa:                                  ; DATA XREF: .rdata:00000001400032E8↑o
                                        ; .rdata:0000000140004000↑o
                text "UTF-16LE", 'tn-ZA',0
                align 8
aTsZa:                                  ; DATA XREF: .rdata:0000000140003308↑o
                                        ; .rdata:0000000140003FF0↑o
                text "UTF-16LE", 'ts-ZA',0
                align 8
aStZa:                                  ; DATA XREF: .rdata:0000000140003220↑o
                                        ; .rdata:0000000140003FE0↑o
                text "UTF-16LE", 'st-ZA',0
                align 8
aMkMk:                                  ; DATA XREF: .rdata:0000000140002E58↑o
                                        ; .rdata:0000000140003FD0↑o
                text "UTF-16LE", 'mk-MK',0
                align 8
aHsbDe:                                 ; DATA XREF: .rdata:0000000140002C68↑o
                                        ; .rdata:0000000140003FC0↑o
                text "UTF-16LE", 'hsb-DE',0
                align 8
aEuEs:                                  ; DATA XREF: .rdata:0000000140002AA8↑o
                                        ; .rdata:0000000140003FB0↑o
                text "UTF-16LE", 'eu-ES',0
                align 8
aAzLatnAz:                              ; DATA XREF: .rdata:00000001400027B0↑o
                                        ; .rdata:0000000140003FA0↑o
                text "UTF-16LE", 'az-Latn-AZ',0
                align 10h
aHyAm:                                  ; DATA XREF: .rdata:0000000140002C88↑o
                                        ; .rdata:0000000140003F90↑o
                text "UTF-16LE", 'hy-AM',0
                align 20h
aViVn:                                  ; DATA XREF: .rdata:00000001400033C8↑o
                                        ; .rdata:0000000140003F80↑o
                text "UTF-16LE", 'vi-VN',0
                align 10h
aFaIr:                                  ; DATA XREF: .rdata:0000000140002AB8↑o
                                        ; .rdata:0000000140003F70↑o
                text "UTF-16LE", 'fa-IR',0
                align 20h
aTgCyrlTj:                              ; DATA XREF: .rdata:0000000140003298↑o
                                        ; .rdata:0000000140003F60↑o
                text "UTF-16LE", 'tg-Cyrl-TJ',0
                align 8
aLtLt:                                  ; DATA XREF: .rdata:0000000140002E28↑o
                                        ; .rdata:0000000140003F50↑o
                text "UTF-16LE", 'lt-LT',0
                align 8
aLvLv:                                  ; DATA XREF: .rdata:0000000140002E38↑o
                                        ; .rdata:0000000140003F40↑o
                text "UTF-16LE", 'lv-LV',0
                align 8
aEtEe:                                  ; DATA XREF: .rdata:0000000140002A98↑o
                                        ; .rdata:0000000140003F30↑o
                text "UTF-16LE", 'et-EE',0
                align 8
aSlSi:                                  ; DATA XREF: .rdata:0000000140003148↑o
                                        ; .rdata:0000000140003F20↑o
                text "UTF-16LE", 'sl-SI',0
                align 8
aBeBy:                                  ; DATA XREF: .rdata:00000001400027D0↑o
                                        ; .rdata:0000000140003F10↑o
                text "UTF-16LE", 'be-BY',0
                align 8
aUkUa:                                  ; DATA XREF: .rdata:0000000140003368↑o
                                        ; .rdata:0000000140003F00↑o
                text "UTF-16LE", 'uk-UA',0
                align 8
aIdId:                                  ; DATA XREF: .rdata:0000000140002CA8↑o
                                        ; .rdata:0000000140003EF0↑o
                text "UTF-16LE", 'id-ID',0
                align 8
aUrPk:                                  ; DATA XREF: .rdata:0000000140003380↑o
                                        ; .rdata:0000000140003EE0↑o
                text "UTF-16LE", 'ur-PK',0
                align 8
aTrTr:                                  ; DATA XREF: .rdata:00000001400032F8↑o
                                        ; .rdata:0000000140003ED0↑o
                text "UTF-16LE", 'tr-TR',0
                align 8
aThTh:                                  ; DATA XREF: .rdata:00000001400032A8↑o
                                        ; .rdata:0000000140003EC0↑o
                text "UTF-16LE", 'th-TH',0
                align 8
aSvSe:                                  ; DATA XREF: .rdata:0000000140003238↑o
                                        ; .rdata:0000000140003EB0↑o
                text "UTF-16LE", 'sv-SE',0
                align 8
aSqAl:                                  ; DATA XREF: .rdata:00000001400031B8↑o
                                        ; .rdata:0000000140003EA0↑o
                text "UTF-16LE", 'sq-AL',0
                align 8
aSkSk:                                  ; DATA XREF: .rdata:0000000140003138↑o
                                        ; .rdata:0000000140003E90↑o
                text "UTF-16LE", 'sk-SK',0
                align 8
aHrHr:                                  ; DATA XREF: .rdata:0000000140002C58↑o
                                        ; .rdata:0000000140003E80↑o
                text "UTF-16LE", 'hr-HR',0
                align 8
aRuRu:                                  ; DATA XREF: .rdata:00000001400030A8↑o
                                        ; .rdata:0000000140003E70↑o
                text "UTF-16LE", 'ru-RU',0
                align 8
aRoRo:                                  ; DATA XREF: .rdata:0000000140003090↑o
                                        ; .rdata:0000000140003E60↑o
                text "UTF-16LE", 'ro-RO',0
                align 8
aRmCh:                                  ; DATA XREF: .rdata:0000000140003078↑o
                                        ; .rdata:0000000140003E50↑o
                text "UTF-16LE", 'rm-CH',0
                align 8
aPtBr:                                  ; DATA XREF: .rdata:0000000140003008↑o
                                        ; .rdata:0000000140003E40↑o
                text "UTF-16LE", 'pt-BR',0
                align 8
aPlPl:                                  ; DATA XREF: .rdata:0000000140002FD8↑o
                                        ; .rdata:0000000140003E30↑o
                text "UTF-16LE", 'pl-PL',0
                align 8
aNbNo:                                  ; DATA XREF: .rdata:0000000140002F10↑o
                                        ; .rdata:0000000140003E20↑o
                text "UTF-16LE", 'nb-NO',0
                align 8
aNlNl:                                  ; DATA XREF: .rdata:0000000140002F40↑o
                                        ; .rdata:0000000140003E10↑o
                text "UTF-16LE", 'nl-NL',0
                align 8
aKoKr:                                  ; DATA XREF: .rdata:0000000140002D88↑o
                                        ; .rdata:0000000140003E00↑o
                text "UTF-16LE", 'ko-KR',0
                align 8
aJaJp:                                  ; DATA XREF: .rdata:0000000140002D28↑o
                                        ; .rdata:0000000140003DF0↑o
                text "UTF-16LE", 'ja-JP',0
                align 8
aItIt:                                  ; DATA XREF: .rdata:0000000140002CF0↑o
                                        ; .rdata:0000000140003DE0↑o
                text "UTF-16LE", 'it-IT',0
                align 8
aIsIs:                                  ; DATA XREF: .rdata:0000000140002CD8↑o
                                        ; .rdata:0000000140003DD0↑o
                text "UTF-16LE", 'is-IS',0
                align 8
aHuHu:                                  ; DATA XREF: .rdata:0000000140002C78↑o
                                        ; .rdata:0000000140003DC0↑o
                text "UTF-16LE", 'hu-HU',0
                align 8
aHeIl:                                  ; DATA XREF: .rdata:0000000140002C30↑o
                                        ; .rdata:0000000140003DB0↑o
                text "UTF-16LE", 'he-IL',0
                align 8
aFrFr:                                  ; DATA XREF: .rdata:0000000140002B50↑o
                                        ; .rdata:0000000140003DA0↑o
                text "UTF-16LE", 'fr-FR',0
                align 8
aFiFi:                                  ; DATA XREF: .rdata:0000000140002AE8↑o
                                        ; .rdata:0000000140003D90↑o
                text "UTF-16LE", 'fi-FI',0
                align 8
aEsEsTradnl:                            ; DATA XREF: .rdata:0000000140002A28↑o
                                        ; .rdata:0000000140003D80↑o
                text "UTF-16LE", 'es-ES_tradnl',0
                align 8
aEnUs:                                  ; DATA XREF: .rdata:00000001400029B8↑o
                                        ; .rdata:0000000140003D70↑o
                text "UTF-16LE", 'en-US',0
                align 8
aElGr:                                  ; DATA XREF: .rdata:0000000140002928↑o
                                        ; .rdata:0000000140003D60↑o
                text "UTF-16LE", 'el-GR',0
                align 8
aDeDe:                                  ; DATA XREF: .rdata:00000001400028E0↑o
                                        ; .rdata:0000000140003D50↑o
                text "UTF-16LE", 'de-DE',0
                align 8
aDaDk:                                  ; DATA XREF: .rdata:00000001400028C0↑o
                                        ; .rdata:0000000140003D40↑o
                text "UTF-16LE", 'da-DK',0
                align 8
aCsCz:                                  ; DATA XREF: .rdata:00000001400028A0↑o
                                        ; .rdata:0000000140003D30↑o
                text "UTF-16LE", 'cs-CZ',0
                align 8
aZhTw:                                  ; DATA XREF: .rdata:0000000140003448↑o
                                        ; .rdata:0000000140003D20↑o
                text "UTF-16LE", 'zh-TW',0
                align 8
aCaEs:                                  ; DATA XREF: .rdata:0000000140002860↑o
                                        ; .rdata:0000000140003D10↑o
                text "UTF-16LE", 'ca-ES',0
                align 8
aBgBg:                                  ; DATA XREF: .rdata:00000001400027E0↑o
                                        ; .rdata:0000000140003D00↑o
                text "UTF-16LE", 'bg-BG',0
                align 8
aArSa:                                  ; DATA XREF: .rdata:0000000140002750↑o
                                        ; .rdata:0000000140003CF0↑o
                text "UTF-16LE", 'ar-SA',0
aKu:                                    ; DATA XREF: .rdata:0000000140002DC8↑o
                                        ; .rdata:0000000140003CE0↑o
                text "UTF-16LE", 'ku',0
                align 4
aGd:                                    ; DATA XREF: .rdata:0000000140002BB0↑o
                                        ; .rdata:0000000140003CD0↑o
                text "UTF-16LE", 'gd',0
                align 8
aPrs:                                   ; DATA XREF: .rdata:0000000140002FE0↑o
                                        ; .rdata:0000000140003CC0↑o
                text "UTF-16LE", 'prs',0
aWo:                                    ; DATA XREF: .rdata:00000001400033D0↑o
                                        ; .rdata:0000000140003CB0↑o
                text "UTF-16LE", 'wo',0
                align 8
aRw:                                    ; DATA XREF: .rdata:00000001400030B0↑o
                                        ; .rdata:0000000140003CA0↑o
                text "UTF-16LE", 'rw',0
                align 20h
aQuc:                                   ; DATA XREF: .rdata:0000000140003038↑o
                                        ; .rdata:0000000140003C90↑o
                text "UTF-16LE", 'quc',0
aSah:                                   ; DATA XREF: .rdata:00000001400030D0↑o
                                        ; .rdata:0000000140003C80↑o
                text "UTF-16LE", 'sah',0
aGsw:                                   ; DATA XREF: .rdata:0000000140002BE0↑o
                                        ; .rdata:0000000140003C70↑o
                text "UTF-16LE", 'gsw',0
aCo:                                    ; DATA XREF: .rdata:0000000140002888↑o
                                        ; .rdata:0000000140003C60↑o
                text "UTF-16LE", 'co',0
                align 20h
aOc:                                    ; DATA XREF: .rdata:0000000140002F70↑o
                                        ; .rdata:0000000140003C50↑o
                text "UTF-16LE", 'oc',0
                align 8
aMi:                                    ; DATA XREF: .rdata:0000000140002E40↑o
                                        ; .rdata:0000000140003C40↑o
                text "UTF-16LE", 'mi',0
                align 10h
aUg:                                    ; DATA XREF: .rdata:0000000140003350↑o
                                        ; .rdata:0000000140003C30↑o
                text "UTF-16LE", 'ug',0
                align 8
aBr:                                    ; DATA XREF: .rdata:0000000140002820↑o
                                        ; .rdata:0000000140003C10↑o
                text "UTF-16LE", 'br',0
                align 20h
aMoh:                                   ; DATA XREF: .rdata:0000000140002EB0↑o
                                        ; .rdata:0000000140003C00↑o
                text "UTF-16LE", 'moh',0
aArn:                                   ; DATA XREF: .rdata:0000000140002770↑o
                                        ; .rdata:0000000140003BF0↑o
                text "UTF-16LE", 'arn',0
aPap:                                   ; DATA XREF: .rdata:0000000140002FC0↑o
                                        ; .rdata:0000000140003BE0↑o
                text "UTF-16LE", 'pap',0
aIi:                                    ; DATA XREF: .rdata:0000000140002CC0↑o
                                        ; .rdata:0000000140003BD0↑o
                text "UTF-16LE", 'ii',0
                align 20h
aSo:                                    ; DATA XREF: .rdata:00000001400031A0↑o
                                        ; .rdata:0000000140003BC0↑o
                text "UTF-16LE", 'so',0
                align 8
aLa:                                    ; DATA XREF: .rdata:0000000140002DF0↑o
                                        ; .rdata:0000000140003BB0↑o
                text "UTF-16LE", 'la',0
                align 10h
aHaw:                                   ; DATA XREF: .rdata:0000000140002C18↑o
                                        ; .rdata:0000000140003BA0↑o
                text "UTF-16LE", 'haw',0
aGn:                                    ; DATA XREF: .rdata:0000000140002BD0↑o
                                        ; .rdata:0000000140003B90↑o
                text "UTF-16LE", 'gn',0
                align 20h
aTi_0:                                  ; DATA XREF: .rdata:00000001400032B0↑o
                                        ; .rdata:0000000140003B80↑o
                text "UTF-16LE", 'ti',0
                align 8
aOm:                                    ; DATA XREF: .rdata:0000000140002F80↑o
                                        ; .rdata:0000000140003B70↑o
                text "UTF-16LE", 'om',0
                align 10h
aKr:                                    ; DATA XREF: .rdata:0000000140002DA0↑o
                                        ; .rdata:0000000140003B60↑o
                text "UTF-16LE", 'kr',0
                align 8
aIg:                                    ; DATA XREF: .rdata:0000000140002CB0↑o
                                        ; .rdata:0000000140003B50↑o
                text "UTF-16LE", 'ig',0
                align 20h
aKl:                                    ; DATA XREF: .rdata:0000000140002D50↑o
                                        ; .rdata:0000000140003B40↑o
                text "UTF-16LE", 'kl',0
                align 8
aLb:                                    ; DATA XREF: .rdata:0000000140002E00↑o
                                        ; .rdata:0000000140003B30↑o
                text "UTF-16LE", 'lb',0
                align 10h
aBa:                                    ; DATA XREF: .rdata:00000001400027B8↑o
                                        ; .rdata:0000000140003B20↑o
                text "UTF-16LE", 'ba',0
                align 8
aNso:                                   ; DATA XREF: .rdata:0000000140002F60↑o
                                        ; .rdata:0000000140003B10↑o
                text "UTF-16LE", 'nso',0
aQuz:                                   ; DATA XREF: .rdata:0000000140003050↑o
                                        ; .rdata:0000000140003B00↑o
                text "UTF-16LE", 'quz',0
aYo:                                    ; DATA XREF: .rdata:0000000140003400↑o
                                        ; .rdata:0000000140003AF0↑o
                text "UTF-16LE", 'yo',0
                align 10h
aIbb:                                   ; DATA XREF: .rdata:0000000140002C90↑o
                                        ; .rdata:0000000140003AE0↑o
                text "UTF-16LE", 'ibb',0
aHa:                                    ; DATA XREF: .rdata:0000000140002C00↑o
                                        ; .rdata:0000000140003AD0↑o
                text "UTF-16LE", 'ha',0
                align 20h
aFf:                                    ; DATA XREF: .rdata:0000000140002AC0↑o
                                        ; .rdata:0000000140003AC0↑o
                text "UTF-16LE", 'ff',0
                align 8
aBin:                                   ; DATA XREF: .rdata:00000001400027E8↑o
                                        ; .rdata:0000000140003AB0↑o
                text "UTF-16LE", 'bin',0
aDv:                                    ; DATA XREF: .rdata:0000000140002908↑o
                                        ; .rdata:0000000140003AA0↑o
                text "UTF-16LE", 'dv',0
                align 8
aFil:                                   ; DATA XREF: .rdata:0000000140002AF0↑o
                                        ; .rdata:0000000140003A90↑o
                text "UTF-16LE", 'fil',0
aPs:                                    ; DATA XREF: .rdata:0000000140002FF0↑o
                                        ; .rdata:0000000140003A80↑o
                text "UTF-16LE", 'ps',0
                align 8
aFy:                                    ; DATA XREF: .rdata:0000000140002B90↑o
                                        ; .rdata:0000000140003A70↑o
                text "UTF-16LE", 'fy',0
                align 10h
aNe:                                    ; DATA XREF: .rdata:0000000140002F18↑o
                                        ; .rdata:0000000140003A60↑o
                text "UTF-16LE", 'ne',0
                align 8
aKs:                                    ; DATA XREF: .rdata:0000000140002DB0↑o
                                        ; .rdata:0000000140003A50↑o
                text "UTF-16LE", 'ks',0
                align 20h
aTzm:                                   ; DATA XREF: .rdata:0000000140003320↑o
                                        ; .rdata:0000000140003A40↑o
                text "UTF-16LE", 'tzm',0
aAm:                                    ; DATA XREF: .rdata:00000001400026D8↑o
                                        ; .rdata:0000000140003A30↑o
                text "UTF-16LE", 'am',0
                align 10h
aIu:                                    ; DATA XREF: .rdata:0000000140002CF8↑o
                                        ; .rdata:0000000140003A20↑o
                text "UTF-16LE", 'iu',0
                align 8
aChr:                                   ; DATA XREF: .rdata:0000000140002870↑o
                                        ; .rdata:0000000140003A10↑o
                text "UTF-16LE", 'chr',0
aSi:                                    ; DATA XREF: .rdata:0000000140003120↑o
                                        ; .rdata:0000000140003A00↑o
                text "UTF-16LE", 'si',0
                align 8
aSyr:                                   ; DATA XREF: .rdata:0000000140003250↑o
                                        ; .rdata:00000001400039F0↑o
                text "UTF-16LE", 'syr',0
aSd:                                    ; DATA XREF: .rdata:00000001400030E0↑o
                                        ; .rdata:00000001400039E0↑o
                text "UTF-16LE", 'sd',0
                align 8
aMni:                                   ; DATA XREF: .rdata:0000000140002EA0↑o
                                        ; .rdata:00000001400039D0↑o
                text "UTF-16LE", 'mni',0
aKok:                                   ; DATA XREF: .rdata:0000000140002D90↑o
                                        ; .rdata:00000001400039C0↑o
                text "UTF-16LE", 'kok',0
aGl:                                    ; DATA XREF: .rdata:0000000140002BC0↑o
                                        ; .rdata:00000001400039B0↑o
                text "UTF-16LE", 'gl',0
                align 10h
aMy:                                    ; DATA XREF: .rdata:0000000140002EF8↑o
                                        ; .rdata:00000001400039A0↑o
                text "UTF-16LE", 'my',0
                align 8
aLo:                                    ; DATA XREF: .rdata:0000000140002E10↑o
                                        ; .rdata:0000000140003990↑o
                text "UTF-16LE", 'lo',0
                align 20h
aKm:                                    ; DATA XREF: .rdata:0000000140002D60↑o
                                        ; .rdata:0000000140003980↑o
                text "UTF-16LE", 'km',0
                align 8
aCy:                                    ; DATA XREF: .rdata:00000001400028A8↑o
                                        ; .rdata:0000000140003970↑o
                text "UTF-16LE", 'cy',0
                align 10h
aBo:                                    ; DATA XREF: .rdata:0000000140002810↑o
                                        ; .rdata:0000000140003960↑o
                text "UTF-16LE", 'bo',0
                align 8
aMn:                                    ; DATA XREF: .rdata:0000000140002E70↑o
                                        ; .rdata:0000000140003950↑o
                text "UTF-16LE", 'mn',0
                align 20h
aSa_0:                                  ; DATA XREF: .rdata:00000001400030C0↑o
                                        ; .rdata:0000000140003940↑o
                text "UTF-16LE", 'sa',0
                align 8
aMr:                                    ; DATA XREF: .rdata:0000000140002EC0↑o
                                        ; .rdata:0000000140003930↑o
                text "UTF-16LE", 'mr',0
                align 10h
aAs:                                    ; DATA XREF: .rdata:0000000140002780↑o
                                        ; .rdata:0000000140003920↑o
                text "UTF-16LE", 'as',0
                align 8
aMl:                                    ; DATA XREF: .rdata:0000000140002E60↑o
                                        ; .rdata:0000000140003910↑o
                text "UTF-16LE", 'ml',0
                align 20h
aKn:                                    ; DATA XREF: .rdata:0000000140002D70↑o
                                        ; .rdata:0000000140003900↑o
                text "UTF-16LE", 'kn',0
                align 8
aTe:                                    ; DATA XREF: .rdata:0000000140003278↑o
                                        ; .rdata:00000001400038F0↑o
                text "UTF-16LE", 'te',0
                align 10h
aTa:                                    ; DATA XREF: .rdata:0000000140003260↑o
                                        ; .rdata:00000001400038E0↑o
                text "UTF-16LE", 'ta',0
                align 8
aOr_0:                                  ; DATA XREF: .rdata:0000000140002F90↑o
                                        ; .rdata:00000001400038D0↑o
                text "UTF-16LE", 'or',0
                align 20h
aGu:                                    ; DATA XREF: .rdata:0000000140002BF0↑o
                                        ; .rdata:00000001400038C0↑o
                text "UTF-16LE", 'gu',0
                align 8
aPa:                                    ; DATA XREF: .rdata:0000000140002FA0↑o
                                        ; .rdata:00000001400038B0↑o
                text "UTF-16LE", 'pa',0
                align 10h
aBn:                                    ; DATA XREF: .rdata:00000001400027F8↑o
                                        ; .rdata:00000001400038A0↑o
                text "UTF-16LE", 'bn',0
                align 8
aTt:                                    ; DATA XREF: .rdata:0000000140003310↑o
                                        ; .rdata:0000000140003890↑o
                text "UTF-16LE", 'tt',0
                align 20h
aUz:                                    ; DATA XREF: .rdata:0000000140003388↑o
                                        ; .rdata:0000000140003880↑o
                text "UTF-16LE", 'uz',0
                align 8
aTk:                                    ; DATA XREF: .rdata:00000001400032C8↑o
                                        ; .rdata:0000000140003870↑o
                text "UTF-16LE", 'tk',0
                align 10h
aSw:                                    ; DATA XREF: .rdata:0000000140003240↑o
                                        ; .rdata:0000000140003860↑o
                text "UTF-16LE", 'sw',0
                align 8
aKy:                                    ; DATA XREF: .rdata:0000000140002DE0↑o
                                        ; .rdata:0000000140003850↑o
                text "UTF-16LE", 'ky',0
                align 20h
aKk:                                    ; DATA XREF: .rdata:0000000140002D40↑o
                                        ; .rdata:0000000140003840↑o
                text "UTF-16LE", 'kk',0
                align 8
aMs:                                    ; DATA XREF: .rdata:0000000140002ED0↑o
                                        ; .rdata:0000000140003830↑o
                text "UTF-16LE", 'ms',0
                align 10h
aYi:                                    ; DATA XREF: .rdata:00000001400033F0↑o
                                        ; .rdata:0000000140003820↑o
                text "UTF-16LE", 'yi',0
                align 8
aGa:                                    ; DATA XREF: .rdata:0000000140002BA0↑o
                                        ; .rdata:0000000140003810↑o
                text "UTF-16LE", 'ga',0
                align 20h
aSe:                                    ; DATA XREF: .rdata:0000000140003100↑o
                                        ; .rdata:0000000140003800↑o
                text "UTF-16LE", 'se',0
                align 8
aMt:                                    ; DATA XREF: .rdata:0000000140002EE8↑o
                                        ; .rdata:00000001400037F0↑o
                text "UTF-16LE", 'mt',0
                align 10h
aHi:                                    ; DATA XREF: .rdata:0000000140002C38↑o
                                        ; .rdata:00000001400037E0↑o
                text "UTF-16LE", 'hi',0
                align 8
aFo:                                    ; DATA XREF: .rdata:0000000140002B00↑o
                                        ; .rdata:00000001400037D0↑o
                text "UTF-16LE", 'fo',0
                align 20h
aKa:                                    ; DATA XREF: .rdata:0000000140002D30↑o
                                        ; .rdata:00000001400037C0↑o
                text "UTF-16LE", 'ka',0
                align 8
aAf:                                    ; DATA XREF: .rdata:00000001400026C8↑o
                                        ; .rdata:00000001400037B0↑o
                text "UTF-16LE", 'af',0
                align 10h
aZu:                                    ; DATA XREF: .rdata:0000000140003450↑o
                                        ; .rdata:00000001400037A0↑o
                text "UTF-16LE", 'zu',0
                align 8
aXh:                                    ; DATA XREF: .rdata:00000001400033E0↑o
                                        ; .rdata:0000000140003790↑o
                text "UTF-16LE", 'xh',0
                align 20h
aVe:                                    ; DATA XREF: .rdata:00000001400033B0↑o
                                        ; .rdata:0000000140003780↑o
                text "UTF-16LE", 've',0
                align 8
aTn:                                    ; DATA XREF: .rdata:00000001400032D8↑o
                                        ; .rdata:0000000140003770↑o
                text "UTF-16LE", 'tn',0
                align 10h
aTs_0:                                  ; DATA XREF: .rdata:0000000140003300↑o
                                        ; .rdata:0000000140003760↑o
                text "UTF-16LE", 'ts',0
                align 8
aSt:                                    ; DATA XREF: .rdata:0000000140003218↑o
                                        ; .rdata:0000000140003750↑o
                text "UTF-16LE", 'st',0
                align 20h
aMk:                                    ; DATA XREF: .rdata:0000000140002E50↑o
                                        ; .rdata:0000000140003740↑o
                text "UTF-16LE", 'mk',0
                align 8
aHsb:                                   ; DATA XREF: .rdata:0000000140002C60↑o
                                        ; .rdata:0000000140003730↑o
                text "UTF-16LE", 'hsb',0
aEu:                                    ; DATA XREF: .rdata:0000000140002AA0↑o
                                        ; .rdata:0000000140003720↑o
                text "UTF-16LE", 'eu',0
                align 8
aAz:                                    ; DATA XREF: .rdata:0000000140002790↑o
                                        ; .rdata:0000000140003710↑o
                text "UTF-16LE", 'az',0
                align 20h
aHy:                                    ; DATA XREF: .rdata:0000000140002C80↑o
                                        ; .rdata:0000000140003700↑o
                text "UTF-16LE", 'hy',0
                align 8
aVi:                                    ; DATA XREF: .rdata:00000001400033C0↑o
                                        ; .rdata:00000001400036F0↑o
                text "UTF-16LE", 'vi',0
                align 10h
aFa:                                    ; DATA XREF: .rdata:0000000140002AB0↑o
                                        ; .rdata:00000001400036E0↑o
                text "UTF-16LE", 'fa',0
                align 8
aTg:                                    ; DATA XREF: .rdata:0000000140003288↑o
                                        ; .rdata:00000001400036D0↑o
                text "UTF-16LE", 'tg',0
                align 20h
aLt:                                    ; DATA XREF: .rdata:0000000140002E20↑o
                                        ; .rdata:00000001400036C0↑o
                text "UTF-16LE", 'lt',0
                align 8
aLv:                                    ; DATA XREF: .rdata:0000000140002E30↑o
                                        ; .rdata:00000001400036B0↑o
                text "UTF-16LE", 'lv',0
                align 10h
aEt:                                    ; DATA XREF: .rdata:0000000140002A90↑o
                                        ; .rdata:00000001400036A0↑o
                text "UTF-16LE", 'et',0
                align 8
aSl:                                    ; DATA XREF: .rdata:0000000140003140↑o
                                        ; .rdata:0000000140003690↑o
                text "UTF-16LE", 'sl',0
                align 20h
aBe:                                    ; DATA XREF: .rdata:00000001400027C8↑o
                                        ; .rdata:0000000140003680↑o
                text "UTF-16LE", 'be',0
                align 8
aUk:                                    ; DATA XREF: .rdata:0000000140003360↑o
                                        ; .rdata:0000000140003670↑o
                text "UTF-16LE", 'uk',0
                align 10h
aId_1:                                  ; DATA XREF: .rdata:0000000140002CA0↑o
                                        ; .rdata:0000000140003660↑o
                text "UTF-16LE", 'id',0
                align 8
aUr:                                    ; DATA XREF: .rdata:0000000140003370↑o
                                        ; .rdata:0000000140003650↑o
                text "UTF-16LE", 'ur',0
                align 20h
aTr:                                    ; DATA XREF: .rdata:00000001400032F0↑o
                                        ; .rdata:0000000140003640↑o
                text "UTF-16LE", 'tr',0
                align 8
aTh:                                    ; DATA XREF: .rdata:00000001400032A0↑o
                                        ; .rdata:0000000140003630↑o
                text "UTF-16LE", 'th',0
                align 10h
aSv:                                    ; DATA XREF: .rdata:0000000140003228↑o
                                        ; .rdata:0000000140003620↑o
                text "UTF-16LE", 'sv',0
                align 8
aSq:                                    ; DATA XREF: .rdata:00000001400031B0↑o
                                        ; .rdata:0000000140003610↑o
                text "UTF-16LE", 'sq',0
                align 20h
aSk:                                    ; DATA XREF: .rdata:0000000140003130↑o
                                        ; .rdata:0000000140003600↑o
                text "UTF-16LE", 'sk',0
                align 8
aHr:                                    ; DATA XREF: .rdata:0000000140002C48↑o
                                        ; .rdata:00000001400035F0↑o
                text "UTF-16LE", 'hr',0
                align 10h
aRu:                                    ; DATA XREF: .rdata:0000000140003098↑o
                                        ; .rdata:00000001400035E0↑o
                text "UTF-16LE", 'ru',0
                align 8
aRo_0:                                  ; DATA XREF: .rdata:0000000140003080↑o
                                        ; .rdata:00000001400035D0↑o
                text "UTF-16LE", 'ro',0
                align 20h
aRm:                                    ; DATA XREF: .rdata:0000000140003070↑o
                                        ; .rdata:00000001400035C0↑o
                text "UTF-16LE", 'rm',0
                align 8
aPt:                                    ; DATA XREF: .rdata:0000000140003000↑o
                                        ; .rdata:00000001400035B0↑o
                text "UTF-16LE", 'pt',0
                align 10h
aPl:                                    ; DATA XREF: .rdata:0000000140002FD0↑o
                                        ; .rdata:00000001400035A0↑o
                text "UTF-16LE", 'pl',0
                align 8
aNo:                                    ; DATA XREF: .rdata:0000000140002F58↑o
                                        ; .rdata:0000000140003590↑o
                text "UTF-16LE", 'no',0
                align 20h
aNl:                                    ; DATA XREF: .rdata:0000000140002F30↑o
                                        ; .rdata:0000000140003580↑o
                text "UTF-16LE", 'nl',0
                align 8
aKo:                                    ; DATA XREF: .rdata:0000000140002D80↑o
                                        ; .rdata:0000000140003570↑o
                text "UTF-16LE", 'ko',0
                align 10h
aJa:                                    ; DATA XREF: .rdata:0000000140002D20↑o
                                        ; .rdata:0000000140003560↑o
                text "UTF-16LE", 'ja',0
                align 8
aIt:                                    ; DATA XREF: .rdata:0000000140002CE0↑o
                                        ; .rdata:0000000140003550↑o
                text "UTF-16LE", 'it',0
                align 20h
aIs:                                    ; DATA XREF: .rdata:0000000140002CD0↑o
                                        ; .rdata:0000000140003540↑o
                text "UTF-16LE", 'is',0
                align 8
aHu:                                    ; DATA XREF: .rdata:0000000140002C70↑o
                                        ; .rdata:0000000140003530↑o
                text "UTF-16LE", 'hu',0
                align 10h
aHe:                                    ; DATA XREF: .rdata:0000000140002C28↑o
                                        ; .rdata:0000000140003520↑o
                text "UTF-16LE", 'he',0
                align 8
aFr:                                    ; DATA XREF: .rdata:0000000140002B10↑o
                                        ; .rdata:0000000140003510↑o
                text "UTF-16LE", 'fr',0
                align 20h
aFi:                                    ; DATA XREF: .rdata:0000000140002AE0↑o
                                        ; .rdata:0000000140003500↑o
                text "UTF-16LE", 'fi',0
                align 8
aEs:                                    ; DATA XREF: .rdata:00000001400029D0↑o
                                        ; .rdata:00000001400034F0↑o
                text "UTF-16LE", 'es',0
                align 10h
aEn:                                    ; DATA XREF: .rdata:0000000140002930↑o
                                        ; .rdata:00000001400034E0↑o
                text "UTF-16LE", 'en',0
                align 8
aEl:                                    ; DATA XREF: .rdata:0000000140002920↑o
                                        ; .rdata:00000001400034D0↑o
                text "UTF-16LE", 'el',0
                align 20h
aDe:                                    ; DATA XREF: .rdata:00000001400028C8↑o
                                        ; .rdata:00000001400034C0↑o
                text "UTF-16LE", 'de',0
                align 8
aDa_0:                                  ; DATA XREF: .rdata:00000001400028B8↑o
                                        ; .rdata:00000001400034B0↑o
                text "UTF-16LE", 'da',0
                align 10h
aCs:                                    ; DATA XREF: .rdata:0000000140002898↑o
                                        ; .rdata:00000001400034A0↑o
                text "UTF-16LE", 'cs',0
                align 8
aZhHans:                                ; DATA XREF: .rdata:0000000140003420↑o
                                        ; .rdata:0000000140003490↑o
                text "UTF-16LE", 'zh-Hans',0
aCa:                                    ; DATA XREF: .rdata:0000000140002858↑o
                                        ; .rdata:0000000140003480↑o
                text "UTF-16LE", 'ca',0
                align 10h
aBg:                                    ; DATA XREF: .rdata:00000001400027D8↑o
                                        ; .rdata:0000000140003470↑o
                text "UTF-16LE", 'bg',0
                align 8
aAr:                                    ; DATA XREF: .rdata:00000001400026E8↑o
                                        ; .rdata:off_140003460↑o
                text "UTF-16LE", 'ar',0
                align 20h
aRegtransMs:                            ; DATA XREF: .rdata:0000000140005438↑o
                                        ; .data:off_140C04808↓o
                text "UTF-16LE", '.regtrans-ms',0
                align 20h
aLog:                                   ; DATA XREF: .rdata:0000000140005448↑o
                                        ; .data:0000000140C019C8↓o
                text "UTF-16LE", '\??\LOG:',0
                align 8
qword_14001C9F8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 9
                                        ; DATA XREF: .rdata:0000000140001310↑o
                                        ; sub_1408B6EE8+3B1↓o ...
qword_14001CA10 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14073F788+F2E4F↓r
                                        ; .data:0000000140C02CD8↓o
qword_14001CA18 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14073F788+F2E5C↓r
                dq 0Fh
qword_14001CA28 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14072D468+104B15↓r
                                        ; sub_14072D468+104D5C↓r ...
qword_14001CA30 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14072D468+104B22↓r
                                        ; sub_14072D468+104D69↓r ...
                dq 0Bh
qword_14001CA40 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14073F788+F2EAE↓r
                                        ; .data:0000000140C02CE0↓o
qword_14001CA48 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14073F788+F2EBB↓r
                dq 17h
qword_14001CA58 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14072D468+104CF7↓r
                                        ; sub_14073F788+F2D8E↓r ...
qword_14001CA60 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14072D468+104D04↓r
                                        ; sub_14073F788+F2D9B↓r
                dq 7
qword_14001CA70 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14072D468+104AB6↓r
                                        ; sub_14072D468+104C87↓r ...
qword_14001CA78 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14072D468+104AC3↓r
                                        ; sub_14072D468+104C94↓r ...
                dq 6
qword_14001CA88 dq 4F7A142C8163EB00h    ; DATA XREF: sub_14072D468+104BE9↓r
                                        ; sub_14073F788+F2CDD↓r ...
qword_14001CA90 dq 0BADB47CC74A2E194h   ; DATA XREF: sub_14072D468+104BF6↓r
                                        ; sub_14073F788+F2CEA↓r
                align 20h
qword_14001CAA0 dq 48B98C7380497100h, 6EC5197E38CED9AAh, 4, 475C95E7F8861C27h
                                        ; DATA XREF: sub_1407346D8+B8E8E↓o
                                        ; sub_1407346D8+B99E6↓o ...
                dq 6B9D3FCBC0135B86h, 445114C68BAA4A8Ah, 377519BDBD148B8Eh
                dq 4D79B3CC7B224883h, 7CBE2C1574839F81h, 437E5A712DDD5A84h
                dq 3287788C0BDB2A91h, 4FF10E34EA062031h, 2840335910EB6D9Bh
                dq 4E82003B619B7505h, 7109309CD24DA6B7h, 4545695E616CDAA5h
                dq 88DD1B2DDC97AD97h, 483D9B0BB000397Dh, 0BFCF60602A69C998h
                dq 4D692817C7BE0679h, 0C6D07E539A51029Dh, 45726A86CE8E92EEh
                dq 40CD031DC220E0BFh, 4FA9FE2812A0AB44h, 0A66049F4644BBDB3h
                dq 49AE78303D915188h, 0A2E5A1B00F9AA7h, 48515A244B92D758h
                dq 19E1AE785D8170A4h, 4BC5A9301FACFC65h, 0C0BB97C04E50389Fh
                dq 4CBAE72D4009EFA7h, 0C3CBA84E0891DF9Eh, 45E560B17F2492B6h
                dq 0ECCAD58C3F7755AEh, 4637C1DF0CC5B647h, 8385315CC3DE1A89h
                dq 42276F93943C8CB6h, 0D108ECFEA3E987ADh, 44883BED984CF492h
                dq 0AAF57BC98642F9A8h, 481F8F486C2993B0h, 6AA4227DD00C6BCh
                dq 480F0B847D24BAA7h, 5F0FC043071B0C84h, 46D7D1034BDAF4E9h
                dq 0EF1616128062F0A5h, 4CC06A8D447235C7h, 2B6EB970AF9E248Eh
                dq 47EB221797CFAC41h, 7C977198B612D99h, 45A7BCE075B0AE3Fh
                dq 0E1251C61C9898Ch, 46882D5EBAE08B81h, 4B65563324136AADh
                dq 4F9595CFD8EDEB9Bh, 0C893369761B03CA7h, 4EC19A309943E905h
                dq 0A2F7763BDD44999Bh, 411A3FB0F565999Fh, 30C1DE98013F26A2h
                dq 45667697CFEDA3D0h, 0FA9DD46C08A922A9h, 4E9161794E4450B3h
                dq 0A1818F93B95BF1B8h, 498B7D5C4D2B0152h, 0C5A292533434E288h
                dq 4D21C74971021B41h, 2B585D330FA074BEh, 4F802066F735A673h
                dq 5DBFF10CEEDDC5A0h, 41460D82BE337238h, 0C770D449374F60A9h
                dq 473AB610465E1F50h, 18C47D07D10058ABh, 44A2A5202430AB6Fh
                dq 0B134513BF2F70196h, 459789ABC4581C31h, 6B0E44AB9C9C2B8Eh
                dq 4D1C069893B8B6DCh, 5DC800E94406E49Eh, 4DBFE3A536687F9Eh
                dq 63681C38EB15DCB1h
qword_14001CD38 dq 402FE8C05D76A2CAh, 0AD582D49582133A1h, 4C79CCE038B8383Dh
                                        ; DATA XREF: INIT:off_140A9A2A0↓o
                                        ; ALMOSTRO:0000000140CFC098↓o
                dq 80C47CF1A4563E9Eh, 441572223D44E256h, 30D83DFA459CEDA9h
                dq 42EDF589E0007330h, 0D385E710DB5D01A4h, 4F231CC73B04D4FDh
                dq 0BBC4197833D11CABh, 4A5C97564427C73Bh, 20739CA7BDC74BB8h
                dq 4EDC8364FDDC842Bh, 801CDE607FC1CF94h
qword_14001CDA8 dq 4D252E9D40FBEFC7h, 0C6BA7485FD0C85A1h, 45DDD5EBDFD10D17h
                                        ; DATA XREF: INIT:0000000140A9A4B0↓o
                                        ; ALMOSTRO:off_140CFBB48↓o
                dq 825CD1DD349A7A87h, 41E02BEF893DEE8Eh, 4C9629095DB5C689h
                dq 43E2D88545BCC044h, 596BE9C60EEE0586h
qword_14001CDE8 dq 496023E0BC5038F7h, 0EC3559AFAB33DA96h, 448A64ED06CADF0Eh
                                        ; DATA XREF: INIT:off_140A9A460↓o
                                        ; ALMOSTRO:0000000140CFBA08↓o ...
                dq 5DB30EF97BCE2789h
aHardware_0:                            ; DATA XREF: .data:off_140C00F00↓o
                                        ; .data:0000000140C01540↓o
                text "UTF-16LE", 'HARDWARE',0
                align 20h
aMachine_0:                             ; DATA XREF: .data:0000000140C00F08↓o
                                        ; .data:0000000140C00FD0↓o ...
                text "UTF-16LE", 'MACHINE\',0
                align 8
aSecurity_3:                            ; DATA XREF: .data:0000000140C00FC8↓o
                                        ; .data:0000000140C01558↓o
                text "UTF-16LE", 'SECURITY',0
                align 10h
aSoftware_0:                            ; DATA XREF: .data:0000000140C01090↓o
                                        ; .data:0000000140C01570↓o
                text "UTF-16LE", 'SOFTWARE',0
                align 8
aDefault_4:                             ; DATA XREF: .data:0000000140C01220↓o
                text "UTF-16LE", 'DEFAULT',0
aUser_2:                                ; DATA XREF: .data:0000000140C01228↓o
                text "UTF-16LE", 'USER\',0
                align 8
aDefault_5:                             ; DATA XREF: .data:0000000140C01230↓o
                                        ; .data:0000000140C015A0↓o
                text "UTF-16LE", '.DEFAULT',0
                align 20h
aSam_0:                                 ; DATA XREF: .data:0000000140C012E8↓o
                                        ; .data:0000000140C015D0↓o
                text "UTF-16LE", 'SAM',0
aOsdata:                                ; DATA XREF: .data:0000000140C013B0↓o
                                        ; .data:0000000140C015E8↓o
                text "UTF-16LE", 'OSDATA',0
                align 8
qword_14001CEB8 dq 0FFFFFFFF00000000h   ; DATA XREF: sub_14066AE5C+5F↓r
                                        ; sub_14076F19C+2C↓r ...
aRegistryMachin_186:                    ; DATA XREF: .rdata:0000000140006138↑o
                                        ; .rdata:off_140006230↑o
                text "UTF-16LE", '\REGISTRY\MACHINE',0
                align 8
qword_14001CEE8 dq 403040404040404h, 404040204040404h, 404030204040404h
                                        ; DATA XREF: .data:0000000140C02220↓o
                dq 4030404040404h, 0
qword_14001CF10 dq 2000000000000020h, 20h, 400000000001020h, 400000000002020h
                                        ; DATA XREF: .data:0000000140C02218↓o
                dq 400000000004020h, 1000000000008020h, 8000000000000000h
                dq 1000000000010020h, 1000000000040000h, 400000000020020h
                dq 8000000000000h, 2 dup(8000000000000000h), 800000000080000h
                dq 400000000000020h, 800000000100000h, 1000000100000h
                dq 0
                dq 2000000000000000h, 3 dup(4000000000000000h), 1200000h
                dq 200000h, 400000000000000h, 1400000h, 400000h, 1000000000800000h
                dq 800000h, 2 dup(200000000000000h)
qword_14001D008 dq 414BB814026E516Eh    ; DATA XREF: sub_1405E0BDC+20BFD9↓r
                                        ; PAGE:0000000140985680↓o
qword_14001D010 dq 2248EF6F6D85CD83h    ; DATA XREF: sub_1405E0BDC+20BFE6↓r
                align 20h
qword_14001D020 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140007C60↑o
                                        ; sub_1405DF3FC+20D35A↓r ...
qword_14001D028 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+20D367↓r
                dq 14h
qword_14001D038 dq 45BC8B40540B947Eh    ; DATA XREF: .rdata:0000000140007C68↑o
                                        ; sub_1405DF3FC+20D3AC↓r ...
qword_14001D040 dq 0A2BD4C890B6AA2A8h   ; DATA XREF: sub_1405DF3FC+20D3B9↓r
                dq 15h
qword_14001D050 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C20↑o
                                        ; sub_1405DF3FC+20D157↓r ...
qword_14001D058 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+20D164↓r
                dq 0Ah
qword_14001D068 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C48↑o
                                        ; sub_1405DF3FC+20D1FB↓r ...
qword_14001D070 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+20D208↓r
                dq 0Bh
qword_14001D080 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C18↑o
                                        ; sub_1405DF3FC+20D2C7↓r ...
qword_14001D088 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+20D2D4↓r
                dq 9
qword_14001D098 dq 470693FA4340A6C5h    ; DATA XREF: .rdata:0000000140007C40↑o
                                        ; sub_1405DF3FC+20D1D5↓r ...
qword_14001D0A0 dq 0A7A50880647B2C97h   ; DATA XREF: sub_1405DF3FC+20D1E2↓r
                dq 7
qword_14001D0B0 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 24h
                                        ; DATA XREF: .rdata:0000000140007BF0↑o
                                        ; PAGE:0000000140987BF8↓o
qword_14001D0C8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 22h, 4EFDDF1CA45C254Eh
                                        ; DATA XREF: .rdata:0000000140007BE8↑o
                                        ; PAGE:0000000140987BC8↓o
                dq 0E050A846D1672080h, 23h
qword_14001D0F8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 20h
                                        ; DATA XREF: .rdata:0000000140007BD8↑o
                                        ; PAGE:0000000140987B98↓o
qword_14001D110 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 21h
                                        ; DATA XREF: .rdata:0000000140007BE0↑o
                                        ; PAGE:0000000140987BB0↓o
qword_14001D128 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 1Eh, 4EFDDF1CA45C254Eh
                                        ; DATA XREF: .rdata:0000000140007B40↑o
                                        ; .rdata:0000000140007BD0↑o ...
                dq 0E050A846D1672080h, 1Fh, 4EFDDF1CA45C254Eh, 0E050A846D1672080h
                dq 1Ch, 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 1Dh, 4EFDDF1CA45C254Eh
                dq 0E050A846D1672080h, 1Ah, 4EFDDF1CA45C254Eh, 0E050A846D1672080h
                dq 1Bh
qword_14001D1B8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 18h, 4EFDDF1CA45C254Eh
                                        ; DATA XREF: sub_14056B278+C8↓o
                                        ; PAGE:0000000140987AD8↓o
                dq 0E050A846D1672080h, 19h
qword_14001D1E8 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 16h
                                        ; DATA XREF: .rdata:0000000140007BC0↑o
                                        ; PAGE:0000000140987AA8↓o
qword_14001D200 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 17h
                                        ; DATA XREF: .rdata:0000000140007BC8↑o
                                        ; PAGE:0000000140987AC0↓o
qword_14001D218 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 12h
                                        ; DATA XREF: .rdata:0000000140007B38↑o
                                        ; PAGE:0000000140987A48↓o ...
qword_14001D230 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 10h
                                        ; DATA XREF: .rdata:0000000140007BB0↑o
                                        ; PAGE:0000000140987A18↓o
qword_14001D248 dq 4EFDDF1CA45C254Eh, 0E050A846D1672080h, 0Fh, 4EFDDF1CA45C254Eh
                                        ; DATA XREF: sub_1408A7584+406↓o
                                        ; sub_1408B6EE8+2A7↓o ...
                dq 0E050A846D1672080h, 0Bh
qword_14001D278 dq 0                    ; DATA XREF: sub_14020C4F4+4F6↓r
                                        ; sub_140221A30+153↓r ...
aPerfdecreasepo db 'PerfDecreasePolicy',0
                                        ; DATA XREF: ALMOSTRO:off_140CFBB40↓o
                align 8
aPerfincreasepo db 'PerfIncreasePolicy',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBB68↓o
                align 10h
aPerfdecreaseth db 'PerfDecreaseThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBBE0↓o
                align 8
aPerfincreaseth db 'PerfIncreaseThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBC08↓o
                align 20h
aPerfdecreaseti db 'PerfDecreaseTime',0 ; DATA XREF: ALMOSTRO:0000000140CFBB90↓o
                align 8
aPerfincreaseti db 'PerfIncreaseTime',0 ; DATA XREF: ALMOSTRO:0000000140CFBBB8↓o
                align 10h
aPerftimecheck  db 'PerfTimeCheck',0    ; DATA XREF: ALMOSTRO:0000000140CFBC80↓o
                align 20h
aPerfboostpolic db 'PerfBoostPolicy',0  ; DATA XREF: ALMOSTRO:0000000140CFBCA8↓o
aPerfminpolicy  db 'PerfMinPolicy',0    ; DATA XREF: ALMOSTRO:0000000140CFBC30↓o
                align 20h
aPerfmaxpolicy  db 'PerfMaxPolicy',0    ; DATA XREF: ALMOSTRO:0000000140CFBC58↓o
                align 10h
aAutonomousacti db 'AutonomousActivityWindow',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBD20↓o
                align 10h
aAutonomouspref db 'AutonomousPreference',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBD48↓o
                align 8
aPerfboostmode  db 'PerfBoostMode',0    ; DATA XREF: ALMOSTRO:0000000140CFBCD0↓o
                align 8
aEnergyperfpref db 'EnergyPerfPreference',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBCF8↓o
                align 10h
aPerfhistorycou db 'PerfHistoryCount',0 ; DATA XREF: ALMOSTRO:0000000140CFBDC0↓o
                align 8
aLatencyhintper db 'LatencyHintPerf',0  ; DATA XREF: ALMOSTRO:0000000140CFBDE8↓o
aThrottlingpoli db 'ThrottlingPolicy',0 ; DATA XREF: ALMOSTRO:0000000140CFBD70↓o
                align 10h
aParkingperfsta db 'ParkingPerfState',0 ; DATA XREF: ALMOSTRO:0000000140CFBD98↓o
                align 8
aFrequencycap   db 'FrequencyCap',0     ; DATA XREF: ALMOSTRO:0000000140CFBE60↓o
                align 8
aCpdecreasepoli db 'CPDecreasePolicy',0 ; DATA XREF: ALMOSTRO:0000000140CFBE88↓o
                align 10h
aLatencyhintunp db 'LatencyHintUnpark',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBE10↓o
                align 8
aDutycycling    db 'DutyCycling',0      ; DATA XREF: ALMOSTRO:0000000140CFBE38↓o
                align 8
aCpmaxcores     db 'CPMaxCores',0       ; DATA XREF: ALMOSTRO:0000000140CFBF00↓o
                align 8
aCpdecreasetime db 'CPDecreaseTime',0   ; DATA XREF: ALMOSTRO:0000000140CFBF28↓o
                align 8
aCpincreasepoli db 'CPIncreasePolicy',0 ; DATA XREF: ALMOSTRO:0000000140CFBEB0↓o
                align 10h
aCpmincores     db 'CPMinCores',0       ; DATA XREF: ALMOSTRO:0000000140CFBED8↓o
                align 20h
aCpdistributeut db 'CPDistributeUtility',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBFA0↓o
                align 8
aCpconcurrencyt db 'CPConcurrencyThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBFC8↓o
                align 10h
aCpincreasetime db 'CPIncreaseTime',0   ; DATA XREF: ALMOSTRO:0000000140CFBF50↓o
                align 20h
aCpoverutilizat db 'CPOverUtilizationThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBF78↓o
                align 20h
aSoftparklatenc db 'SoftParkLatency',0  ; DATA XREF: ALMOSTRO:0000000140CFC040↓o
aIdleallowscali db 'IdleAllowScaling',0 ; DATA XREF: ALMOSTRO:0000000140CFC068↓o
                align 8
aCpheadroomthre db 'CPHeadroomThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFBFF0↓o
                align 20h
aCpdistributeth db 'CPDistributeThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC018↓o
                align 8
aIdledemotethre db 'IdleDemoteThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC0E0↓o
                align 10h
aIdlepromotethr db 'IdlePromoteThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC108↓o
                align 8
aIdledisable    db 'IdleDisable',0      ; DATA XREF: ALMOSTRO:0000000140CFC090↓o
                align 8
aIdletimecheck  db 'IdleTimeCheck',0    ; DATA XREF: ALMOSTRO:0000000140CFC0B8↓o
                align 8
aHeteroincrease db 'HeteroIncreaseTime',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC180↓o
                align 20h
aHeterodecrease db 'HeteroDecreaseThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC1A8↓o
aIdlestatemax   db 'IdleStateMax',0     ; DATA XREF: ALMOSTRO:0000000140CFC130↓o
                align 8
aHeterodecrease_0 db 'HeteroDecreaseTime',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC158↓o
                align 20h
aClass1initialp db 'Class1InitialPerformance',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC220↓o
                align 20h
aSchedulingpoli db 'SchedulingPolicy',0 ; DATA XREF: ALMOSTRO:0000000140CFC248↓o
                align 8
aHeteroincrease_0 db 'HeteroIncreaseThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC1D0↓o
aClass0floorper db 'Class0FloorPerformance',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC1F8↓o
                align 8
aResponsiveness db 'ResponsivenessEnableThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC2C0↓o
                align 8
aResponsiveness_0 db 'ResponsivenessDisableTime',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC2E8↓o
                align 8
aShortschedulin db 'ShortSchedulingPolicy',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC270↓o
                align 20h
aResponsiveness_1 db 'ResponsivenessDisableThreshold',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC298↓o
                align 20h
aResponsiveness_2 db 'ResponsivenessPerfFloor',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC360↓o
aResponsiveness_3 db 'ResponsivenessEnableTime',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC310↓o
                align 8
aResponsiveness_4 db 'ResponsivenessEppCeiling',0
                                        ; DATA XREF: ALMOSTRO:0000000140CFC338↓o
                align 8
aBlackboxScm    db 'blackbox - SCM',0   ; DATA XREF: .data:0000000140C02268↓o
                align 8
aBlackboxAcpi   db 'blackbox - ACPI',0  ; DATA XREF: .data:0000000140C023A0↓o
aBlackboxPoirp  db 'blackbox - POIRP',0 ; DATA XREF: .data:0000000140C02408↓o
                align 10h
aBlackboxBsd    db 'blackbox - BSD',0   ; DATA XREF: .data:0000000140C022D0↓o
                align 20h
aBlackboxPnp    db 'blackbox - PNP',0   ; DATA XREF: .data:0000000140C02338↓o
                align 10h
aBlackboxPepwor db 'blackbox - PEPWORKORDER',0
                                        ; DATA XREF: .data:0000000140C02540↓o
aBlackboxPowerw db 'blackbox - POWERWATCHDOG',0
                                        ; DATA XREF: .data:0000000140C025A8↓o
                align 8
aBlackboxWinlog db 'blackbox - WINLOGON-NOTIFY',0
                                        ; DATA XREF: .data:0000000140C02470↓o
                align 8
aBlackboxPdcloc db 'blackbox - PDCLOCK',0
                                        ; DATA XREF: .data:0000000140C024D8↓o
                align 20h
aBlackboxPnpdel db 'blackbox - PNPDELAYEDREMOVEWORKER',0
                                        ; DATA XREF: .data:0000000140C026E0↓o
                align 8
aBlackboxDxgDis db 'blackbox - DXG-DISPLAY',0
                                        ; DATA XREF: .data:0000000140C02748↓o
                align 20h
aBlackboxPnpeve db 'blackbox - PNPEVENTWORKER',0
                                        ; DATA XREF: .data:0000000140C02610↓o
                align 20h
aBlackboxDevice db 'blackbox - DEVICECOMPLETIONQUEUE',0
                                        ; DATA XREF: .data:0000000140C02678↓o
                align 8
aBlackboxWhea   db 'blackbox - WHEA',0  ; DATA XREF: .data:0000000140C02880↓o
aBlackboxNtfs   db 'blackbox - NTFS',0  ; DATA XREF: .data:0000000140C028E8↓o
aBlackboxCrashe db 'blackbox - CrashedProcess',0
                                        ; DATA XREF: .data:0000000140C027B0↓o
                align 8
aBlackboxUsocom db 'blackbox - UsoCommit',0
                                        ; DATA XREF: .data:0000000140C02818↓o
                align 20h
aBlackboxExplor db 'blackbox - Explorer core startup',0
                                        ; DATA XREF: .data:0000000140C02A20↓o
                align 8
aBlackboxUserMo db 'blackbox - User mode LKD API caller data',0
                                        ; DATA XREF: .data:0000000140C02A88↓o
                align 8
aBlackboxWinlog_0 db 'blackbox - Winlogon',0
                                        ; DATA XREF: .data:0000000140C02950↓o
                align 10h
aBlackboxExplor_0 db 'blackbox - Explorer logon tasks',0
                                        ; DATA XREF: .data:0000000140C029B8↓o
aBlackboxCi     db 'blackbox - CI',0    ; DATA XREF: .data:0000000140C02AF0↓o
                align 20h
qword_14001D980 dq 44A03CF44EE76BD8h, 0A3373E643739ACA0h, 44BEB1A5C1B941DFh
                                        ; DATA XREF: .data:0000000140C02AE8↓o
                dq 225EBC66F1DA5C9Dh, 4AF1A71980CC79CFh, 0C1EB76FF29FE97BFh
                dq 4213940D00AFE9C4h, 20BCB51937CD1680h, 4E121623F5A6B2E1h
                dq 0FA80829BA8483980h, 4D93B9ACAA9A6517h, 0A03936E66626D08Bh
                dq 4367A550BE84D651h, 941F632B79AB638Eh, 4D9CFF3A7392A43Bh
                dq 8EDCD65AA5031BAh, 457D912A32D3EA49h, 0FC53EF2929DDE6B7h
                dq 4CDA57F36DE4C85Ah, 0E4F8585A85C8FE82h, 4131386C8BEFF310h
                dq 4A681EFA440AB1B1h, 446753265545F79Eh, 5531E33A638169AEh
                dq 44D6ED00B3BEB7EEh, 1C0FF82DA9C160ADh, 452E8590C1294D5Eh
                dq 68CA00F7457F71BCh, 4E3EAA076B2D3E93h, 3BC63C0E6D911AA4h
                dq 4A654DDB2523DB46h, 0C65C983F0E9139A8h, 42750E88E0E85A55h
                dq 0D0345AFB3F133F96h, 4E912A6E33DBDDBBh, 848A7B99E15D429Eh
                dq 4E01CC45F57308DFh, 0EC10B0EBA42976ADh
qword_14001DAB0 dq 45F9D5A3E1D08891h, 726FB1D71AD11B8h, 429FF7553B2EA98Bh
                                        ; DATA XREF: .data:off_140C02260↓o
                dq 8C520681A131C180h, 4CD6532AB7631941h, 57457D91B5EDB1B1h
byte_14001DAE0  db 0                    ; DATA XREF: sub_140257CC0+132↓r
                db 1, 3, 7, 0Fh, 1Fh, 3Fh, 7Fh
                dq 0FFh
qword_14001DAF0 dq 1000200010008h, 1000200010003h, 1000200010004h, 1000200010003h
                                        ; DATA XREF: sub_1405940F0+116↓o
                                        ; sub_1405940F0+13E↓o
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010006h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010007h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010006h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 1000200010005h, 1000200010003h, 1000200010004h, 1000200010003h
                dq 505050506060708h, 404040404040404h, 2 dup(303030303030303h)
                dq 4 dup(202020202020202h), 8 dup(101010101010101h), 10h dup(0)
qword_14001DCF0 dq 497AEA5042695762h, 950B5EB3BB5C6890h, 45D5A663D3DE60B2h
                                        ; DATA XREF: PAGE:0000000140985F40↓o
                dq 0B02C9D94A5A02698h, 445D6E0F3BEEF58Ah, 7ED47B73AB37A4B2h
                dq 4AEA52D1BDDAD2C1h, 2EF63692CAB3D694h, 43EFC24605867806h
                dq 9614DB2B7DE147A1h
qword_14001DD40 dq 438761C0D781CA11h, 6ADDD2D352AF3DB8h, 4D36A2C1C861D0E2h
                                        ; DATA XREF: PAGE:off_140985EC0↓o
                dq 123A94AB0B979C9Fh
xmmword_14001DD60 xmmword 0E242740E7D19258E4CEF7DE006D10322h
                                        ; DATA XREF: sub_14074B600+344↓r
xmmword_14001DD70 xmmword 63C8EAAE685C15A9445E786752ACC9AEh
                                        ; DATA XREF: sub_14073C900+23F↓r
dword_14001DD80 dd 2                    ; DATA XREF: sub_14073C900+232↓r
                align 8
xmmword_14001DD88 xmmword 2CF889614C3AA6924FF8982324DAEB80h
                                        ; DATA XREF: sub_14073C900:loc_14073CB1F↓r
dword_14001DD98 dd 2                    ; DATA XREF: sub_14073C900+226↓r
                align 20h
qword_14001DDA0 dq 202020201010000h, 303030303030303h, 2 dup(404040404040404h)
                                        ; DATA XREF: sub_140365E30+2DF↓o
                                        ; sub_140365E30+490↓o ...
                dq 4 dup(505050505050505h), 8 dup(606060606060606h), 10h dup(707070707070707h)
xmmword_14001DEA0 xmmword 4000000000000000000702041100002Dh
                                        ; DATA XREF: sub_1407282CC+18↓r
xmmword_14001DEB0 xmmword 400000000000000000070B041100002Bh
                                        ; DATA XREF: sub_140728580+15↓r
xmmword_14001DEC0 xmmword 40000000000000000007010411000029h
                                        ; DATA XREF: sub_140729798+23↓r
xmmword_14001DED0 xmmword 11000001110000021100000311h
                                        ; DATA XREF: sub_14072C0F8+267↓r
xmmword_14001DEE0 xmmword 12000001120000021200000312h
                                        ; DATA XREF: sub_14072C0F8:loc_14072C353↓r
xmmword_14001DEF0 xmmword 0C2F6108DF5A8799A4682C531724EDD6Dh
                                        ; DATA XREF: sub_14036F61C+40↓r
xmmword_14001DF00 xmmword 19461AF80000B8A511D2596A50FEB0DEh
                                        ; DATA XREF: sub_14074E90C+183↓r
xmmword_14001DF10 xmmword 0FFFFFFFFFFFFFFFFh
                                        ; DATA XREF: sub_1405A5EE0+EC↓r
                                        ; sub_140751578+2F1↓r
xmmword_14001DF20 xmmword 84DC21801E04F797473301D42D9F3A42h
                                        ; DATA XREF: sub_140751578+28D↓r
xmmword_14001DF30 xmmword 37A101C425D175B048D8057FF455D791h
                                        ; DATA XREF: sub_14037C2A0+3F↓r
aCmbatt:                                ; DATA XREF: .rdata:0000000140005408↑o
                text "UTF-16LE", 'Cmbatt',0
                align 10h
aKnetpwrdepbrok:                        ; DATA XREF: .rdata:00000001400053F0↑o
                text "UTF-16LE", 'KNetPwrDepBroker',0
                align 8
aMsgpiowin32:                           ; DATA XREF: .rdata:00000001400053D8↑o
                text "UTF-16LE", 'MsGpioWin32',0
aButtonconverte:                        ; DATA XREF: .rdata:00000001400053C0↑o
                text "UTF-16LE", 'ButtonConverter',0
aMsgpioclx:                             ; DATA XREF: .rdata:00000001400053A8↑o
                text "UTF-16LE", 'MsGpioClx',0
                align 8
aButton:                                ; DATA XREF: .rdata:0000000140005390↑o
                text "UTF-16LE", 'Button',0
                align 8
aNtospo:                                ; DATA XREF: .rdata:0000000140005360↑o
                text "UTF-16LE", 'NtosPo',0
                align 8
qword_14001DFE8 dq 500000000000601h, 33CE37B600000050h, 0CD85060E1930A4EDh
                                        ; DATA XREF: .rdata:0000000140005350↑o
                dq 0A89B2B7553474620h, 0
aSensorservice:                         ; DATA XREF: .rdata:0000000140005348↑o
                text "UTF-16LE", 'SensorService',0
                align 10h
qword_14001E030 dq 500000000000601h, 8BADB25B00000050h, 23AD640DB081AED1h
                                        ; DATA XREF: .rdata:0000000140005338↑o
                dq 7DDA4F7917671DFAh, 0
aWinlogon:                              ; DATA XREF: .rdata:0000000140005318↑o
                text "UTF-16LE", 'WinLogon',0
                align 10h
qword_14001E070 dq 500000000000601h, 0DCC6F35C00000050h, 46113B0741413E3Bh
                                        ; DATA XREF: .rdata:0000000140005308↑o
                dq 2EADF7A27C7ACB0Fh, 0
aLfsvc:                                 ; DATA XREF: .rdata:0000000140005300↑o
                text "UTF-16LE", 'LfSvc',0
                align 8
qword_14001E0A8 dq 500000000000601h, 187ED4D700000050h, 66628D6F980B98E7h
                                        ; DATA XREF: .rdata:00000001400052F0↑o
                dq 0DFDF7EBB8A5CB7F7h, 0
aTimebrokersvc:                         ; DATA XREF: .rdata:00000001400052E8↑o
                text "UTF-16LE", 'TimeBrokerSvc',0
                align 10h
qword_14001E0F0 dq 500000000000601h, 7688ED0300000050h, 168B5A207283ADE4h
                                        ; DATA XREF: .rdata:00000001400052D8↑o
                dq 35134F48A12DF105h, 0
aBrokerinfrastr:                        ; DATA XREF: .rdata:00000001400052D0↑o
                text "UTF-16LE", 'BrokerInfrastructure',0
                align 8
aTestidentifier:                        ; DATA XREF: .rdata:00000001400052B8↑o
                text "UTF-16LE", 'TestIdentifier',0
                align 8
aUnknown_3:                             ; DATA XREF: .rdata:off_1400052A0↑o
                                        ; PAGEDATA:0000000140D2DD88↓o
                text "UTF-16LE", 'Unknown',0
aSystemroot_8:                          ; DATA XREF: .rdata:0000000140005238↑o
                text "UTF-16LE", 'SystemRoot',0
                align 10h
qword_14001E190 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 15h
                                        ; DATA XREF: .rdata:0000000140005228↑o
                                        ; sub_1408B77B4+A0↓o
aSetupstatus:                           ; DATA XREF: .rdata:0000000140005210↑o
                text "UTF-16LE", 'SetupStatus',0
aSetupoptions:                          ; DATA XREF: .rdata:00000001400051E8↑o
                text "UTF-16LE", 'SetupOptions',0
                align 20h
aUpdatedate:                            ; DATA XREF: .rdata:00000001400051C0↑o
                text "UTF-16LE", 'UpdateDate',0
                align 8
qword_14001E1F8 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 12h
                                        ; DATA XREF: .rdata:00000001400051B0↑o
                                        ; sub_1408B8394+182↓o
aSchemaversion:                         ; DATA XREF: .rdata:0000000140005198↑o
                text "UTF-16LE", 'SchemaVersion',0
                align 10h
aConfigoptions:                         ; DATA XREF: .rdata:0000000140005170↑o
                text "UTF-16LE", 'ConfigOptions',0
                align 10h
aConfigmode:                            ; DATA XREF: .rdata:0000000140005148↑o
                text "UTF-16LE", 'ConfigMode',0
                align 8
aUnloadtimeout:                         ; DATA XREF: .rdata:0000000140005120↑o
                text "UTF-16LE", 'UnloadTimeout',0
                align 8
aUpdated:                               ; DATA XREF: .rdata:00000001400050F8↑o
                text "UTF-16LE", 'Updated',0
aOeminfmap:                             ; DATA XREF: .rdata:00000001400050D0↑o
                text "UTF-16LE", 'OemInfMap',0
                align 10h
qword_14001E2B0 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 4
                                        ; DATA XREF: .rdata:00000001400050C0↑o
qword_14001E2C8 dq 4F7A142C8163EB00h, 0BADB47CC74A2E194h, 3
                                        ; DATA XREF: .rdata:0000000140005098↑o
aVersion_2:                             ; DATA XREF: .rdata:0000000140005080↑o
                text "UTF-16LE", 'Version',0
qword_14001E2F0 dq 41B37EB53D489710h, 1D7AC54FEAA877A8h, 2
                                        ; DATA XREF: .rdata:0000000140007C70↑o
                                        ; .data:0000000140C04898↓o ...
qword_14001E308 dq 41B37EB53D489710h, 1D7AC54FEAA877A8h, 3
                                        ; DATA XREF: .rdata:0000000140007C78↑o
                                        ; .data:0000000140C04858↓o ...
qword_14001E320 dq 41B37EB53D489710h, 1D7AC54FEAA877A8h, 4
                                        ; DATA XREF: .rdata:0000000140007C80↑o
                                        ; .data:off_140C048E0↓o
qword_14001E338 dq 41B37EB53D489710h, 1D7AC54FEAA877A8h, 5
                                        ; DATA XREF: .rdata:0000000140007C88↑o
                                        ; .data:0000000140C04880↓o
qword_14001E350 dq 41B37EB53D489710h, 1D7AC54FEAA877A8h, 6
                                        ; DATA XREF: .rdata:0000000140007C90↑o
                                        ; .data:off_140C04850↓o
qword_14001E368 dq 46D31245A193307Dh, 9BE0708612D867BEh, 2
                                        ; DATA XREF: sub_14097B74C+A4↓o
                                        ; .data:0000000140C04848↓o ...
qword_14001E380 dq 46D31245A193307Dh, 9BE0708612D867BEh, 3
                                        ; DATA XREF: sub_14097B74C:loc_14097B80E↓o
                                        ; .data:0000000140C04838↓o ...
qword_14001E398 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_140730600+103433↓r
                                        ; sub_14075D8A0+E409E↓o ...
qword_14001E3A0 dq 6633D7A7C96808AFh    ; DATA XREF: sub_140730600+103440↓r
                dq 3
qword_14001E3B0 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_14075D8A0+E4029↓o
                                        ; sub_14075E29C+E3950↓r ...
qword_14001E3B8 dq 6633D7A7C96808AFh    ; DATA XREF: sub_14075E29C+E395D↓r
                dq 2
qword_14001E3C8 dq 40F0B39652D7010Dh, 0E62186E8B92B6B99h, 2
                                        ; DATA XREF: sub_14097C060+AE↓o
                                        ; .data:0000000140C04948↓o
qword_14001E3E0 dq 40F0B39652D7010Dh, 0E62186E8B92B6B99h, 3
                                        ; DATA XREF: sub_14097C060+D4↓o
                                        ; .data:0000000140C04938↓o
qword_14001E3F8 dq 49E64DD5CD600218h, 0D1CEEA4D6D08D797h, 3
                                        ; DATA XREF: .rdata:0000000140007B80↑o
qword_14001E410 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 10h, 47CE50A7259ABFFCh
                                        ; DATA XREF: sub_1407346D8+B97BE↓o
                                        ; sub_1407346D8+B97FD↓o ...
                dq 6633D7A7C96808AFh, 0Dh
qword_14001E440 dq 46D31245A193307Dh, 9BE0708612D867BEh, 7, 40942E3DA8B865DDh
                                        ; DATA XREF: sub_14097B74C+D0↓o
                                        ; PAGEDATA:0000000140D2DBF0↓o
                dq 0D6750CA793E597ADh, 18h
qword_14001E470 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_140730600+10331B↓r
                                        ; sub_14075E29C+E38CD↓r ...
qword_14001E478 dq 6633D7A7C96808AFh    ; DATA XREF: sub_140730600+103328↓r
                                        ; sub_14075E29C+E38DA↓r
qword_14001E480 dq 0Fh, 40942E3DA8B865DDh, 0D6750CA793E597ADh, 17h
                                        ; DATA XREF: PAGEDATA:0000000140D2DBA8↓o
qword_14001E4A0 dq 46D31245A193307Dh, 9BE0708612D867BEh, 5
                                        ; DATA XREF: sub_14097B74C+C9↓o
                                        ; PAGEDATA:0000000140D2DBE8↓o
qword_14001E4B8 dq 46D31245A193307Dh, 9BE0708612D867BEh, 4
                                        ; DATA XREF: sub_14097B74C+AB↓o
                                        ; PAGEDATA:0000000140D2DBD0↓o
qword_14001E4D0 dq 49E64DD5CD600218h, 0D1CEEA4D6D08D797h, 2
                                        ; DATA XREF: .rdata:off_140007B78↑o
qword_14001E4E8 dq 46D31245A193307Dh, 9BE0708612D867BEh, 6, 40942E3DA8B865DDh
                                        ; DATA XREF: sub_14097B74C+B2↓o
                                        ; PAGEDATA:0000000140D2DBD8↓o
                dq 0D6750CA793E597ADh, 1Eh
qword_14001E518 dq 11D0B510C8EBDFB0h, 0E34225C9A000E580h
                                        ; DATA XREF: PAGE:off_140987478↓o
                                        ; PAGE:00000001409874A0↓o
qword_14001E528 dq 0                    ; DATA XREF: sub_140762854+1E↓r
                                        ; sub_14076F19C+4F↓r
xmmword_14001E530 xmmword 2F09E22B0008C7BE11D0812A7373654Ah
                                        ; DATA XREF: NtSetVolumeInformationFile+4D9↓r
qword_14001E540 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 17h, 47CE50A7259ABFFCh
                                        ; DATA XREF: .rdata:0000000140007B60↑o
                                        ; sub_140735D48+B8CB5↓o
                dq 6633D7A7C96808AFh, 0Ch
qword_14001E570 dq 4BA266CFD14D3EF3h    ; DATA XREF: sub_140510498+103↓o
                                        ; sub_140730600+1033B2↓r ...
qword_14001E578 dq 147AB37DB0D389Dh     ; DATA XREF: sub_140730600+1033BF↓r
                                        ; sub_14075E29C+E3A30↓r ...
                dq 2
qword_14001E588 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_140730600+1032B8↓r
                                        ; sub_14075E29C+E3883↓r ...
qword_14001E590 dq 6633D7A7C96808AFh    ; DATA XREF: sub_140730600+1032C5↓r
                                        ; sub_14075E29C+E3890↓r
                dq 8
qword_14001E5A0 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_140730600+1032D9↓r
                                        ; sub_14075E29C+E38A8↓r ...
qword_14001E5A8 dq 6633D7A7C96808AFh    ; DATA XREF: sub_140730600+1032E6↓r
                                        ; sub_14075E29C+E38B5↓r
qword_14001E5B0 dq 9, 47CE50A7259ABFFCh, 6633D7A7C96808AFh, 6
                                        ; DATA XREF: PAGE:0000000140986E90↓o
qword_14001E5D0 dq 47CE50A7259ABFFCh    ; DATA XREF: sub_140730600+103293↓r
                                        ; sub_14075E29C+E385E↓r ...
qword_14001E5D8 dq 6633D7A7C96808AFh    ; DATA XREF: sub_140730600+1032A0↓r
                                        ; sub_14075E29C+E386B↓r
                dq 7
qword_14001E5E8 dq 47CE50A7259ABFFCh, 6633D7A7C96808AFh, 4, 470DF69E4321918Bh
                                        ; DATA XREF: PAGE:off_140986E50↓o
                dq 4BD25AC7884DDEA5h, 1Ch, 470DF69E4321918Bh, 4BD25AC7884DDEA5h
                dq 1Dh, 470DF69E4321918Bh, 4BD25AC7884DDEA5h, 1Ah, 470DF69E4321918Bh
                dq 4BD25AC7884DDEA5h, 1Bh, 470DF69E4321918Bh, 4BD25AC7884DDEA5h
                dq 19h, 40942E3DA8B865DDh, 0D6750CA793E597ADh, 13h
qword_14001E690 dq 40942E3DA8B865DDh, 0D6750CA793E597ADh, 12h, 40942E3DA8B865DDh
                                        ; DATA XREF: PAGEDATA:off_140D2D318↓o
                                        ; PAGEDATA:0000000140D2DB98↓o
                dq 0D6750CA793E597ADh, 0Fh, 40942E3DA8B865DDh, 0D6750CA793E597ADh
                dq 0Ch, 40942E3DA8B865DDh, 0D6750CA793E597ADh, 0Dh, 40942E3DA8B865DDh
                dq 0D6750CA793E597ADh, 0Ah, 40942E3DA8B865DDh, 0D6750CA793E597ADh
                dq 0Bh, 40942E3DA8B865DDh, 0D6750CA793E597ADh, 7
qword_14001E738 dq 45BC8B40540B947Eh, 0A2BD4C890B6AA2A8h, 18h
                                        ; DATA XREF: .rdata:0000000140007B70↑o
                                        ; sub_1408B5DA0+2C↓o ...
aSystem32_0:                            ; DATA XREF: .data:off_140C02D10↓o
                text "UTF-16LE", '%system32%',0
                align 8
aProgramfilesna:                        ; DATA XREF: .data:0000000140C02D58↓o
                text "UTF-16LE", '%programfilesnative%',0
                align 8
aSystemdrivePro:                        ; DATA XREF: .data:0000000140C02D60↓o
                text "UTF-16LE", '%systemdrive%\Program Files',0
aSystemrootSyst_16:                     ; DATA XREF: .data:off_140C02D18↓o
                                        ; .data:0000000140C02D30↓o
                text "UTF-16LE", '%systemroot%\system32',0
                align 20h
aSysnative_0:                           ; DATA XREF: .data:0000000140C02D28↓o
                text "UTF-16LE", '%sysnative%',0
aWindir:                                ; DATA XREF: .data:0000000140C02D40↓o
                text "UTF-16LE", '%windir%',0
                align 10h
aSysarm32:                              ; DATA XREF: .data:0000000140C049D8↓o
                text "UTF-16LE", '\SysARM32',0
                align 8
aSystem32_1:                            ; DATA XREF: .data:off_140C04978↓o
                                        ; .data:0000000140C04988↓o ...
                text "UTF-16LE", '\System32',0
                align 20h
aSyswow64_0:                            ; DATA XREF: .data:0000000140C049A8↓o
                                        ; .data:0000000140C049C8↓o
                text "UTF-16LE", '\SysWOW64',0
                align 20h
xmmword_14001E880 xmmword 4000000040000000400000004h
                                        ; DATA XREF: sub_14074B600+B2↓r
                                        ; sub_14074BC90:loc_14074BD17↓r ...
aAcpi:                                  ; DATA XREF: .rdata:0000000140005378↑o
                                        ; .rdata:0000000140008168↑o
                text "UTF-16LE", 'Acpi',0
                align 20h
aPower:                                 ; DATA XREF: .rdata:0000000140005330↑o
                                        ; .rdata:0000000140008268↑o
                text "UTF-16LE", 'Power',0
                align 10h
qword_14001E8B0 dq 104000401030003h     ; DATA XREF: sub_1409963F4+67↓o
                                        ; sub_140996874+F922↓o
qword_14001E8B8 dq 418A073AA3BC7C75h    ; DATA XREF: sub_14038C388+6F↓r
dword_14001E8C0 dd 7                    ; DATA XREF: sub_1409930F4+547↓r
                dd 7
                dq 100000000h, 300000002h, 4
aTxr:                                   ; DATA XREF: .rdata:0000000140005428↑o
                text "UTF-16LE", '.TxR',0
                align 10h
aCriticalBatter db 'Critical Battery Index',0
                                        ; DATA XREF: .rdata:off_140008138↑o
                align 8
aLowBatteryInde db 'Low Battery Index',0
                                        ; DATA XREF: .rdata:0000000140008140↑o
                align 20h
qword_14001E920 dq 2C8DF3700h           ; DATA XREF: RtlTimeToSecondsSince1980+19↓r
                                        ; RtlSecondsSince1980ToTime+E↓r
qword_14001E928 dq 0D6BF94D5E57A42BDh   ; DATA XREF: RtlTimeToSecondsSince1980+A↓r
                                        ; RtlTimeToSecondsSince1970+A↓r
xmmword_14001E930 xmmword 0FFFFFFFFFFFFFFFFFFFF800000000000h
                                        ; DATA XREF: sub_140996F28+53↓r
                                        ; sub_1409B242C+4E↓r ...
xmmword_14001E940 xmmword 1A000000180000001700000016h
                                        ; DATA XREF: sub_140A3F1D8+50↓r
xmmword_14001E950 xmmword 15000000140000001900000007h
                                        ; DATA XREF: sub_140A3F1D8+6C↓r
word_14001E960  dw 7Ch                  ; DATA XREF: sub_1403A8208+4D↓o
                                        ; sub_1405BE4A8+5A↓r
                dw 35h, 0BEh, 5Dh
                dq 182017E000000E5h, 17001120137014Bh, 15301420175017Ah
                dq 16B00890186015Fh, 101007901650159h, 198002B00D4004Ch
                dq 6C00B4019D0122h, 100AB002200F4h, 4400ED0065008Ah, 0D8005000CC0129h
                dq 193019C0103007Bh, 2015101940163h, 1AD005B0113008Bh
                dq 40107008000E3h, 500D90051008Dh, 11501390006008Eh, 1A70144014D008Fh
                dq 14000EC00640123h, 166000800900007h, 145016C013A018Dh
                dq 154017F01830116h, 14E018901600187h, 910171018B017Bh
                dq 19100090176015Ah, 167017C01880172h, 177015B0192014Fh
                dq 18C01460092013Bh, 16D0155018E0117h, 190018A0184018Fh
                dq 0AD002401610180h, 0B1002800B5002Ch, 13200EE01B00066h
                dq 0EB00630093000Ah, 15C000B00C00037h, 1470168013C0118h
                dq 185009401730178h, 17D015601810150h, 0E90061016E0162h
                dq 10E00870126003Bh, 0FB007300DD0055h, 0CE004601080081h
                dq 7400EF01B10067h, 380095000C00FCh, 0A20148001900C1h
                dq 96000D00B6002Dh, 0F0006800B3002Ah, 0F7006F00A90020h
                dq 97000E00FF0077h, 5C00980119000Fh, 12E01AE00E401A1h
                dq 0BF003600990010h, 0F6006E00C6003Eh, 0D2004A00DA0052h
                dq 0DE0056009A0011h, 0E7005F00F80070h, 10F01B300880130h
                dq 0FD007500C7003Fh, 0DB005300F5006Dh, 0AE002500AF0026h
                dq 0B7002E0105007Eh, 1A0004F00D3004Bh, 13F012C01AB00D7h
                dq 102007A00DF0057h, 127003D00D5004Dh, 5400C2003900C5h
                dq 60009C01A400DCh, 11A001200E80131h, 13011B019B009Bh
                dq 106007F00F3006Bh, 0CF004700F90071h, 0CD012A01AA0045h
                dq 9D001401000078h, 0EA0062010D0086h, 135011C009E0015h
                dq 83013601110110h, 0F2006A010A01B2h, 9F001601410133h
                dq 1800A0011D0017h, 10B008400A1011Eh, 109008200D6004Eh
                dq 0E0012D01AC0058h, 12500C3013E003Ah, 0A3001A00E2005Ah
                dq 158019E00AC0023h, 152014901A8015Eh, 1640199016A0197h
                dq 0A4001B00FE0076h, 13D015D019501A5h, 1570196016F0179h
                dq 2F01690174011Fh, 0A50120001C00B8h, 0E1005900C80040h
                dq 49012B00D00048h, 0B001A6002700D1h, 134007200A6001Dh
                dq 3100C9004100FAh, 0A7001E00BA0124h, 0CB004300B90030h
                dq 12F01AF00E6005Eh, 104007D014A01A2h, 121001F00AA0021h
                dq 128019F004200A8h, 0BB003200CA01A9h, 10C008500B20029h
                dq 0C4003C00BC0033h, 114019A00F10069h, 14C013801A30003h
                dq 0BD0034008C0143h
qword_14001ECC8 dq 600000018h, 500000003h, 20400000404h, 100000000180h
                                        ; DATA XREF: sub_14078FC70+13↓o
                dq 0
qword_14001ECF0 dq 400000000h, 400000004h, 100000008h, 100000009h, 10000000Ah
                                        ; DATA XREF: sub_1407892AC+F↓o
                dq 10000000Bh, 10000000Ch, 2000000010h, 100000030h, 100000031h
                dq 400000034h, 400000038h, 40000003Ch, 1400000040h, 3000000058h
                dq 100000032h, 2000000088h, 4000000A8h
xmmword_14001ED80 xmmword 478BE0220FFFFDFFFF25000000A8878Bh
                                        ; DATA XREF: sub_1403A1570+4B↓r
xmmword_14001ED90 xmmword 1A0B90C74000000010847F7D8220F58h
                                        ; DATA XREF: sub_1403A1570+5C↓r
xmmword_14001EDA0 xmmword 20847F7300FFBE283320F0000h
                                        ; DATA XREF: sub_1403A1570+67↓r
xmmword_14001EDB0 xmmword 80B9E0220F000010000DE0200F0B74h
                                        ; DATA XREF: sub_1403A1570+72↓r
xmmword_14001EDC0 xmmword 8C970B00000088870B320FC000h
                                        ; DATA XREF: sub_1403A1570+7D↓r
qword_14001EDD0 dq 90878B300Fh          ; DATA XREF: sub_1403A1570+88↓r
dword_14001EDD8 dd 0FFC0220Fh           ; DATA XREF: sub_1403A1570+95↓r
word_14001EDDC  dw 666Fh                ; DATA XREF: sub_1403A1570+9E↓r
                align 20h

loc_14001EDE0:                          ; DATA XREF: sub_1403A1570+33↓o
                jmp     loc_14001F432
; ---------------------------------------------------------------------------
                align 8
                dq 0C9h dup(0)
                db 0FAh, 66h
; ---------------------------------------------------------------------------

loc_14001F432:                          ; CODE XREF: .rdata:loc_14001EDE0↑j
                sub     eax, eax
                mov     eax, cs
                mov     ds, eax
                assume ds:nothing
                shl     ax, 4
                mov     di, ax
                db      66h
                lgdt    large fword ptr cs:4001F454h
                mov     rax, cr0
                or      ax, 11h
                mov     cr0, rax
                mov     eax, 0D88E0020h
                jmp     small dword ptr [edi+60h]
; ---------------------------------------------------------------------------
                align 20h
xmmword_14001F460 xmmword 10001000100010001000100010BB8h
                                        ; DATA XREF: sub_140A4A050+41↓r
                                        ; sub_140A4A600+41↓r ...
qword_14001F470 dq 5000000006h, 62BFFACD7814C1FAh, 36C5CE3FE553E9D8h, 6932F1D58h
                                        ; DATA XREF: sub_140A53D90+78↓o
                                        ; sub_140A53D90+B2↓o
                dq 6C0FB6700000050h, 0A61FA01F80F4626Eh, 0C788D560D337C11h
                dq 5000000006h, 63A193E8EB83221Fh, 0E04E4C2B546B16CFh
                dq 6EA46A3CAh, 40E9905500000050h, 0AC6C902EA5BC6D4Ah, 2282253C33590007h
                dq 5000000006h, 30BEAA5988E22455h, 0C90888C876257957h
                dq 67E1018CEh, 1A96346600000050h, 0F81230195CF1AAB9h, 304EFDA07448CE95h
                dq 5000000006h, 0C118A0D15E3B5DD1h, 0E02DB9E596C11A43h
                dq 6485FE331h, 0AB6AFCE300000050h, 47C59827F1187771h, 0B9CDB924F2850F72h
                dq 5000000006h, 0A889886BCDB0D9Ch, 8B87F47DB0F4CAA0h, 6859C4D88h
                dq 0ED564F1900000050h, 43BBB8E322AD3107h, 186996167B31F7C2h
                dq 5000000006h, 2FA7AE2ACCC8A67Eh, 0C06BE3BAE1FBEBC1h
                dq 6AF2BD0DAh, 0F8EE4D1A00000050h, 8682C5011231C877h, 0D3BF5936A1C73FCBh
                dq 5000000006h, 984BD7A0EE0C95A0h, 0A30C68BAD19BA62Eh
                dq 6C34282BFh, 4D7B4700000050h, 7F2FC2D6A9C72120h, 0B1B7AE4FC0B08940h
                dq 5000000006h, 1930A4ED33CE37B6h, 53474620CD85060Eh, 6A89B2B75h
                dq 0AFDC689E00000050h, 0C660FEE7890A9D68h, 0B992095C4F0D4AE0h
                dq 5000000006h, 7D6A138DE967CCF4h, 6BFBC5BAB5A1A4F6h, 62E2D1C23h
                dq 84BCD21700000050h, 630576412CFDBC23h, 8D395ED0A7088411h
                dq 5000000006h, 28FF93D8D6E5F306h, 631AA5B555E74BBAh, 6FCD12D75h
                dq 9A2BBAE300000050h, 51DCD4E80A0C06AFh, 59649BB63A9A76D0h
                dq 5000000006h, 606F2B65F89DBB43h, 576AA6B1AB133054h, 7DB64680h
qword_14001F6C0 dq 430000000Bh, 101h    ; DATA XREF: sub_140A5ED98+DB↓o
xmmword_14001F6D0 xmmword 8BFB1EC9A000F29411D0B6BF53F56307h
                                        ; DATA XREF: sub_140A63EC8+4D↓r
xmmword_14001F6E0 xmmword 8BFB1EC9A000F29411D0B6BF53F56308h
                                        ; DATA XREF: sub_140A64030+81↓r
xmmword_14001F6F0 xmmword 0             ; DATA XREF: WheaAddErrorSourceDeviceDriverV1+40↓r
xmmword_14001F700 xmmword 5BDFCECA749B338044FB5E6657217C8Dh
                                        ; DATA XREF: WheaAddErrorSourceDeviceDriverV1+2F↓r
xmmword_14001F710 xmmword 3171B52C731FC4B34E18B789CF07C4BDh
                                        ; DATA XREF: sub_1403BAE48+B↓r
                                        ; WheaInitializeRecordHeader+16↓r
xmmword_14001F720 xmmword 1F0000000200000002000000020000h
                                        ; DATA XREF: sub_140A67ECC+49↓r
                                        ; sub_140A726B4+64↓r
qword_14001F730 dq 0D7FF00A0007E0020h, 0FFFDFDE0FDCFE000h, 90009h
                                        ; DATA XREF: sub_1407B2604+24↓o
xmmword_14001F748 xmmword 0DDA4F1312FE77C3EAD5998F89786744Dh
                                        ; DATA XREF: sub_1407B3980+52↓r
xmmword_14001F758 xmmword 4DCD8EDA1E5D8D9BB6ED412E7D783958h
                                        ; DATA XREF: sub_1407B3980+61↓r
xmmword_14001F768 xmmword 0CFC2FD986334363CA1BD24AFF471CB91h
                                        ; DATA XREF: sub_1407B3980+70↓r
qword_14001F778 dq 2C7EFB57828734DAh    ; DATA XREF: sub_1407B3980+7F↓r
dword_14001F780 dd 235F1812h            ; DATA XREF: sub_1407B3980+90↓r
                align 10h
qword_14001F790 dq 6D3CBFAFF54D3D83h, 0E75357041418A31Ch, 1AEC49BF720E8093h
                                        ; DATA XREF: sub_140A6B360:loc_140A6B5FE↓o
                dq 0E00497A34D8F8978h, 6AA44E669788C875h, 21BD473B17D632CFh
                dq 0DB4F835772DEED9Bh, 64F25EEBD7ED200h, 0EE72022F0C37A2FFh
                dq 88742B7552CC749Dh, 6B09DC7A91E72956h, 5D00C33321D28371h
                dq 0DCC6DB80D6164D56h, 0C0466C6FFF4553DAh, 7287EB93h, 0
qword_14001F810 dq 100000000h, 300000002h, 500000004h, 700000006h, 900000008h
                                        ; DATA XREF: sub_1407C02D0+B4↓o
                                        ; sub_1407C03B0+147↓o ...
                dq 0B0000000Ah, 0D0000000Ch, 0F0000000Eh
xmmword_14001F850 xmmword 0A3C2052806E0F1A84B7F3739919448B2h
                                        ; DATA XREF: sub_1409A2B4C+7B↓r
xmmword_14001F860 xmmword 1F0000001A0000001900000018h
                                        ; DATA XREF: sub_1407C3BBC+5F↓r
xmmword_14001F870 xmmword 17000000160000001500000014h
                                        ; DATA XREF: sub_1407C3BBC+55↓r
xmmword_14001F880 xmmword 20000000000000000000000000000h
                                        ; DATA XREF: sub_140A6D6CC+24↓r
xmmword_14001F890 xmmword 10000000000000000000000000000h
                                        ; DATA XREF: sub_1408F2180+22↓r
                                        ; sub_140A6D6CC+15↓r
qword_14001F8A0 dq 20000000C0000h, 20000000E0000h
                                        ; DATA XREF: sub_1403CAC20+42↓o
                                        ; sub_1403CAC20+E5↓o
dword_14001F8B0 dd 1                    ; DATA XREF: sub_14073C900+5E5↓r
                                        ; sub_14073C900+B4A09↓r ...
                dd 2
                dq 400000003h, 600000005h, 0
dword_14001F8D0 dd 2                    ; DATA XREF: sub_14073C900+975↓r
                dd 2
                dq 2 dup(100000001h), 1
                db 1, 3 dup(0)
asc_14001F8F4:                          ; DATA XREF: .rdata:0000000140005A18↑o
                text "UTF-16LE", ':(',0
                align 20h
aDrivers_0:                             ; DATA XREF: .rdata:0000000140008430↑o
                text "UTF-16LE", 'DRIVERS',0
aRegistrytransa:                        ; DATA XREF: .rdata:0000000140005948↑o
                text "UTF-16LE", 'RegistryTransaction',0
qword_14001F938 dq 44F3AC9CBF51DEF4h, 0D356E713DD26E7ADh
                                        ; DATA XREF: .rdata:00000001400056C8↑o
qword_14001F948 dq 4048F266E0E45284h, 0ABC5C907407D5E9Ah
                                        ; DATA XREF: .rdata:00000001400056B0↑o
qword_14001F958 dq 4EB675917E8FAE0Fh, 11318799061D5495h
                                        ; DATA XREF: .rdata:0000000140005698↑o
qword_14001F968 dq 41C9B0D82960716Fh, 6EF848A28BEEB49Bh
                                        ; DATA XREF: .rdata:0000000140005680↑o
qword_14001F978 dq 49576CEA7CD2B230h, 182BC277A9CFD7B5h
                                        ; DATA XREF: .rdata:0000000140005668↑o
qword_14001F988 dq 48562203BEAE4D5Fh, 4A62C7A272C7BB94h
                                        ; DATA XREF: .rdata:off_140005650↑o
a0123456789:                            ; DATA XREF: .rdata:0000000140008728↑o
                text "UTF-16LE", '0123456789',0
                align 10h
aAbcdefghijklmn_0:                      ; DATA XREF: .rdata:0000000140008718↑o
                text "UTF-16LE", 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy'
                text "UTF-16LE", 'z._ ',0
asc_14001FA20:                          ; DATA XREF: .rdata:0000000140008708↑o
                text "UTF-16LE", '()',0
                align 8
aX0123456789abc:                        ; DATA XREF: .rdata:00000001400086F8↑o
                text "UTF-16LE", 'x0123456789ABCDEF',0
asc_14001FA4C:                          ; DATA XREF: .rdata:00000001400086E8↑o
                text "UTF-16LE", ' ',0
aSystemversion:                         ; DATA XREF: .rdata:0000000140008488↑o
                text "UTF-16LE", 'SystemVersion',0
                align 10h
aBiosreleasedat:                        ; DATA XREF: .rdata:0000000140008480↑o
                text "UTF-16LE", 'BIOSReleaseDate',0
aBaseboardprodu:                        ; DATA XREF: .rdata:0000000140008478↑o
                text "UTF-16LE", 'BaseBoardProduct',0
                align 8
aBaseboardmanuf:                        ; DATA XREF: .rdata:0000000140008470↑o
                text "UTF-16LE", 'BaseBoardManufacturer',0
                align 8
aBiosversion:                           ; DATA XREF: .rdata:0000000140008468↑o
                text "UTF-16LE", 'BIOSVersion',0
aBiosvendor:                            ; DATA XREF: .rdata:0000000140008460↑o
                text "UTF-16LE", 'BIOSVendor',0
                align 8
aSystemsku:                             ; DATA XREF: .rdata:0000000140008458↑o
                text "UTF-16LE", 'SystemSKU',0
                align 10h
aSystemproductn:                        ; DATA XREF: .rdata:0000000140008450↑o
                text "UTF-16LE", 'SystemProductName',0
                align 8
aSystemfamily:                          ; DATA XREF: .rdata:0000000140008448↑o
                text "UTF-16LE", 'SystemFamily',0
                align 8
aSystemmanufact:                        ; DATA XREF: .rdata:off_140008440↑o
                text "UTF-16LE", 'SystemManufacturer',0
                align 20h
aKernelobjects:                         ; DATA XREF: .rdata:0000000140005938↑o
                text "UTF-16LE", 'KernelObjects',0
                align 20h
aUuidsequencenu:                        ; DATA XREF: .rdata:0000000140005A38↑o
                text "UTF-16LE", 'UuidSequenceNumber',0
                align 8
aWhea_1:                                ; DATA XREF: .rdata:00000001400082A8↑o
                text "UTF-16LE", 'Whea',0
                align 8
aTopology:                              ; DATA XREF: .rdata:0000000140008298↑o
                text "UTF-16LE", 'Topology',0
                align 10h
aTimer_0:                               ; DATA XREF: .rdata:0000000140008288↑o
                                        ; .data:0000000140C03528↓o ...
                text "UTF-16LE", 'Timer',0
                align 20h
aProc:                                  ; DATA XREF: .rdata:0000000140008278↑o
                text "UTF-16LE", 'Proc',0
                align 10h
aPnp:                                   ; DATA XREF: .rdata:0000000140008258↑o
                text "UTF-16LE", 'Pnp',0
aPci_0:                                 ; DATA XREF: .rdata:0000000140008248↑o
                text "UTF-16LE", 'Pci',0
aMm:                                    ; DATA XREF: .rdata:0000000140008238↑o
                text "UTF-16LE", 'Mm',0
                align 8
aMisc:                                  ; DATA XREF: .rdata:0000000140008228↑o
                text "UTF-16LE", 'Misc',0
                align 8
aIommu:                                 ; DATA XREF: .rdata:0000000140008218↑o
                text "UTF-16LE", 'Iommu',0
                align 8
aInterrupt_0:                           ; DATA XREF: .rdata:0000000140008208↑o
                text "UTF-16LE", 'Interrupt',0
                align 20h
aHwperfcnt:                             ; DATA XREF: .rdata:00000001400081F8↑o
                text "UTF-16LE", 'HwPerfCnt',0
aHv:                                    ; DATA XREF: .rdata:00000001400081E8↑o
                text "UTF-16LE", 'Hv',0
                align 20h
aHalext:                                ; DATA XREF: .rdata:00000001400081D8↑o
                text "UTF-16LE", 'HalExt',0
                align 10h
aFirmware:                              ; DATA XREF: .rdata:00000001400081C8↑o
                text "UTF-16LE", 'Firmware',0
                align 8
aExtenv:                                ; DATA XREF: .rdata:00000001400081B8↑o
                text "UTF-16LE", 'ExtEnv',0
                align 8
aErrata:                                ; DATA XREF: .rdata:00000001400081A8↑o
                text "UTF-16LE", 'Errata',0
                align 8
aDp:                                    ; DATA XREF: .rdata:0000000140008198↑o
                text "UTF-16LE", 'Dp',0
                align 10h
aDma:                                   ; DATA XREF: .rdata:0000000140008188↑o
                text "UTF-16LE", 'Dma',0
aDbg:                                   ; DATA XREF: .rdata:0000000140008178↑o
                text "UTF-16LE", 'Dbg',0
qword_14001FD00 dq 40D20CFE7FD18652h    ; DATA XREF: .rdata:00000001400086A0↑o
                                        ; sub_1408F2E8C:loc_1408F2F64↓r ...
qword_14001FD08 dq 9E75876A060BA1B0h    ; DATA XREF: sub_1408F2E8C+E4↓r
                                        ; sub_1408F2E8C+2EB↓r
qword_14001FD10 dq 423B1A4CA852C2C8h    ; DATA XREF: .rdata:0000000140008690↑o
                                        ; sub_14057A8F8+A2↓o ...
qword_14001FD18 dq 881A93820DF32C8Ch    ; DATA XREF: sub_1407C52D0+9A54A↓r
qword_14001FD20 dq 4AD7E250BA138E10h    ; DATA XREF: .rdata:0000000140008680↑o
                                        ; sub_1408F2E8C+2C↓r ...
qword_14001FD28 dq 0E710D47A1ACF1686h   ; DATA XREF: sub_1408F2E8C+1C↓r
                                        ; sub_1408F2E8C+6C↓r ...
qword_14001FD30 dq 4BF47D405708CC20h    ; DATA XREF: .rdata:0000000140008670↑o
                                        ; sub_1408F2E8C:loc_1408F2F0E↓r ...
qword_14001FD38 dq 26018D33012BAAB4h    ; DATA XREF: sub_1408F2E8C+98↓r
                                        ; sub_1408F2E8C+191↓r
qword_14001FD40 dq 4A5E81F8D67ABD39h    ; DATA XREF: .rdata:0000000140008660↑o
                                        ; sub_140578840+39↓o ...
qword_14001FD48 dq 0EE12C91EE3725281h   ; DATA XREF: sub_1407C52D0+9A529↓r
qword_14001FD50 dq 4E51F71C4838FE4Fh    ; DATA XREF: .rdata:0000000140008650↑o
                                        ; sub_1407C52D0:loc_14085F7C8↓r
qword_14001FD58 dq 6C4CACA73084CC9Eh    ; DATA XREF: sub_1407C52D0+9A504↓r
qword_14001FD60 dq 497AD653995E6B7Fh    ; DATA XREF: .rdata:0000000140008640↑o
                                        ; sub_14039A5E8+106A9D↓o ...
qword_14001FD68 dq 1BF290CA33678B9h     ; DATA XREF: sub_1407C52D0+9A4DC↓r
qword_14001FD70 dq 4ABC7F39A5B32DDDh    ; DATA XREF: .rdata:0000000140008630↑o
                                        ; sub_140399014+1076FB↓o ...
qword_14001FD78 dq 0BB9EB5430E9092B8h   ; DATA XREF: sub_1407C52D0+9A4AD↓r
aRegistryMachin_194:                    ; DATA XREF: .rdata:0000000140005A28↑o
                text "UTF-16LE", '\Registry\MACHINE\System\CurrentControlSet\Control\'
                text "UTF-16LE", 'CI\NGEN',0
                align 20h
aSedelegatesess:                        ; DATA XREF: .rdata:00000001400083C0↑o
                text "UTF-16LE", 'SeDelegateSessionUserImpersonatePrivilege',0
                align 8
aSecreatesymbol:                        ; DATA XREF: .rdata:00000001400083B8↑o
                text "UTF-16LE", 'SeCreateSymbolicLinkPrivilege',0
                align 8
aSetimezonepriv:                        ; DATA XREF: .rdata:00000001400083B0↑o
                text "UTF-16LE", 'SeTimeZonePrivilege',0
aSeincreasework:                        ; DATA XREF: .rdata:00000001400083A8↑o
                text "UTF-16LE", 'SeIncreaseWorkingSetPrivilege',0
                align 20h
aSerelabelprivi:                        ; DATA XREF: .rdata:00000001400083A0↑o
                text "UTF-16LE", 'SeRelabelPrivilege',0
                align 10h
aSetrustedcredm:                        ; DATA XREF: .rdata:0000000140008398↑o
                text "UTF-16LE", 'SeTrustedCredManAccessPrivilege',0
aSecreateglobal:                        ; DATA XREF: .rdata:0000000140008390↑o
                text "UTF-16LE", 'SeCreateGlobalPrivilege',0
aSeimpersonatep:                        ; DATA XREF: .rdata:0000000140008388↑o
                text "UTF-16LE", 'SeImpersonatePrivilege',0
                align 10h
aSemanagevolume:                        ; DATA XREF: .rdata:0000000140008380↑o
                text "UTF-16LE", 'SeManageVolumePrivilege',0
aSeenabledelega:                        ; DATA XREF: .rdata:0000000140008378↑o
                text "UTF-16LE", 'SeEnableDelegationPrivilege',0
aSesyncagentpri:                        ; DATA XREF: .rdata:0000000140008370↑o
                text "UTF-16LE", 'SeSyncAgentPrivilege',0
                align 8
aSeundockprivil:                        ; DATA XREF: .rdata:0000000140008368↑o
                text "UTF-16LE", 'SeUndockPrivilege',0
                align 10h
aSeremoteshutdo:                        ; DATA XREF: .rdata:0000000140008360↑o
                text "UTF-16LE", 'SeRemoteShutdownPrivilege',0
                align 8
aSechangenotify:                        ; DATA XREF: .rdata:0000000140008358↑o
                text "UTF-16LE", 'SeChangeNotifyPrivilege',0
aSesystemenviro:                        ; DATA XREF: .rdata:0000000140008350↑o
                text "UTF-16LE", 'SeSystemEnvironmentPrivilege',0
                align 8
aSeauditprivile:                        ; DATA XREF: .rdata:0000000140008348↑o
                text "UTF-16LE", 'SeAuditPrivilege',0
                align 20h
aSedebugprivile:                        ; DATA XREF: .rdata:0000000140008340↑o
                text "UTF-16LE", 'SeDebugPrivilege',0
                align 8
aSeshutdownpriv:                        ; DATA XREF: .rdata:0000000140008338↑o
                text "UTF-16LE", 'SeShutdownPrivilege',0
aSerestoreprivi:                        ; DATA XREF: .rdata:0000000140008330↑o
                text "UTF-16LE", 'SeRestorePrivilege',0
                align 8
aSebackupprivil:                        ; DATA XREF: .rdata:0000000140008328↑o
                text "UTF-16LE", 'SeBackupPrivilege',0
                align 20h
aSecreateperman:                        ; DATA XREF: .rdata:0000000140008320↑o
                text "UTF-16LE", 'SeCreatePermanentPrivilege',0
                align 8
aSecreatepagefi:                        ; DATA XREF: .rdata:0000000140008318↑o
                text "UTF-16LE", 'SeCreatePagefilePrivilege',0
                align 10h
aSeincreasebase:                        ; DATA XREF: .rdata:0000000140008310↑o
                text "UTF-16LE", 'SeIncreaseBasePriorityPrivilege',0
aSeprofilesingl:                        ; DATA XREF: .rdata:0000000140008308↑o
                text "UTF-16LE", 'SeProfileSingleProcessPrivilege',0
aSesystemtimepr:                        ; DATA XREF: .rdata:0000000140008300↑o
                text "UTF-16LE", 'SeSystemtimePrivilege',0
                align 20h
aSesystemprofil:                        ; DATA XREF: .rdata:00000001400082F8↑o
                text "UTF-16LE", 'SeSystemProfilePrivilege',0
                align 8
aSeloaddriverpr:                        ; DATA XREF: .rdata:00000001400082F0↑o
                text "UTF-16LE", 'SeLoadDriverPrivilege',0
                align 8
aSetakeownershi:                        ; DATA XREF: .rdata:00000001400082E8↑o
                text "UTF-16LE", 'SeTakeOwnershipPrivilege',0
                align 20h
aSesecuritypriv:                        ; DATA XREF: .rdata:00000001400082E0↑o
                text "UTF-16LE", 'SeSecurityPrivilege',0
aSetcbprivilege:                        ; DATA XREF: .rdata:00000001400082D8↑o
                text "UTF-16LE", 'SeTcbPrivilege',0
                align 8
aSemachineaccou:                        ; DATA XREF: .rdata:00000001400082D0↑o
                text "UTF-16LE", 'SeMachineAccountPrivilege',0
                align 20h
aSeincreasequot:                        ; DATA XREF: .rdata:00000001400082C8↑o
                text "UTF-16LE", 'SeIncreaseQuotaPrivilege',0
                align 8
aSelockmemorypr:                        ; DATA XREF: .rdata:00000001400082C0↑o
                text "UTF-16LE", 'SeLockMemoryPrivilege',0
                align 8
aSeassignprimar:                        ; DATA XREF: .rdata:00000001400082B8↑o
                text "UTF-16LE", 'SeAssignPrimaryTokenPrivilege',0
                align 8
aSecreatetokenp:                        ; DATA XREF: .rdata:off_1400082B0↑o
                text "UTF-16LE", 'SeCreateTokenPrivilege',0
                align 20h
aRegistryMachin_192:                    ; DATA XREF: .rdata:0000000140005498↑o
                                        ; .rdata:0000000140005878↑o
                text "UTF-16LE", '\Registry\Machine\SYSTEM\CurrentControlSet\Control\'
                text "UTF-16LE", 'KernelVelocity',0
                align 10h
aRegistryMachin_193:                    ; DATA XREF: .rdata:0000000140005958↑o
                text "UTF-16LE", '\Registry\Machine\System\CurrentControlSet\Control\'
                text "UTF-16LE", 'LeapSecondInformation',0
                align 10h
aRegistryMachin_196:                    ; DATA XREF: .rdata:0000000140005A58↑o
                text "UTF-16LE", '\Registry\Machine\System\CurrentControlSet\Control\'
                text "UTF-16LE", 'Session Manager\AppCompatCache',0
                align 8
aRate:                                  ; DATA XREF: .rdata:0000000140005A68↑o
                text "UTF-16LE", 'Rate',0
                align 8
qword_140020708 dq 4A06137C794569EEh    ; DATA XREF: .rdata:00000001400086D0↑o
                                        ; sub_1405BE030:loc_1405BE0C6↓r
qword_140020710 dq 4BFC3DB525D2DD8Ah    ; DATA XREF: sub_1405BE030+A2↓r
qword_140020718 dq 472A2093E808FF73h    ; DATA XREF: .rdata:00000001400086C0↑o
                                        ; sub_1405BE030:loc_1405BE092↓r
qword_140020720 dq 35B031F024DFCCA5h    ; DATA XREF: sub_1405BE030+6E↓r
qword_140020728 dq 4D78185D91C3C007h    ; DATA XREF: .rdata:00000001400086B0↑o
                                        ; sub_1405BE030+16↓r
qword_140020730 dq 4DC6C231CBBF51A7h    ; DATA XREF: sub_1405BE030+3A↓r
aKernelobjectsB:                        ; DATA XREF: .rdata:0000000140005A78↑o
                text "UTF-16LE", '\KernelObjects\BcdSyncMutant',0
                align 8
qword_140020778 dq 0D941D2BA3BC1075h    ; DATA XREF: FsRtlSendModernAppTermination+3A↓r
qword_140020780 dq 2831628A3BC2075h     ; DATA XREF: sub_1407D32B4+16↓r
qword_140020788 dq 41C6013DA3BCB075h    ; DATA XREF: sub_140A46920+181↓r
xmmword_140020790 xmmword 90F8D4EBF49CADB9450EBDD72DCE8BB1h
                                        ; DATA XREF: sub_1403C5758+1C↓r
xmmword_1400207A0 xmmword 0BB1349E1AB6588BA4CC5919CE8F56FFEh
                                        ; DATA XREF: sub_1409A292C+1C↓r
qword_1400207B0 dq 484BAA3AC42B79AAh, 280AA92AF32C8FA9h
                                        ; DATA XREF: INIT:0000000140A9A7D0↓o
qword_1400207C0 dq 40D238E95DBB7C9Fh, 0F649F0E8A4F4997h
                                        ; DATA XREF: .rdata:0000000140008A88↑o
qword_1400207D0 dq 4279DBFA73613CCFh, 0F362BFF635495683h
                                        ; DATA XREF: .rdata:0000000140008AA0↑o
qword_1400207E0 dq 4015BBCB637EA02Fh, 46B5C0B9C7A12C8Eh, 4C2C386FD6BA4903h
                                        ; DATA XREF: .rdata:0000000140008AA8↑o
                dq 258D32B3215CDB8Ah, 4BB2D72073CDE64Dh, 0F27EE7AF55C760A8h
                dq 48015EA22BFC24F9h, 9DA31AE0BA3D1382h, 47A8EE9568AFB2D9h
                dq 0B17380081541508Fh, 418698B7F15576E8h, 0D9024466FAEA44B9h
qword_140020840 dq 47D2C2DD58AFD5A6h, 65595CCC70EFBF9Fh
                                        ; DATA XREF: .rdata:0000000140008A80↑o
qword_140020850 dq 4EF94FF79A66D8D7h, 69A4A26C325AA2B5h, 4F05CF7FE69653CAh
                                        ; DATA XREF: .rdata:0000000140008A68↑o
                dq 0D40AA93F83CB73AAh
qword_140020870 dq 4D05187BBCDED951h, 58C26019E5F7CCBCh
                                        ; DATA XREF: .rdata:0000000140008A90↑o
qword_140020880 dq 455E978080472613h, 0F8F23C00D37208B3h
                                        ; DATA XREF: .rdata:0000000140008AC0↑o
qword_140020890 dq 48DAE9108183BA9Ah, 0A17C16DAE146987h
                                        ; DATA XREF: .rdata:0000000140008A70↑o
qword_1400208A0 dq 48811A8E421CBA38h, 0E4EC048B3AE389ACh
                                        ; DATA XREF: .rdata:0000000140008AB8↑o
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_14. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 2Dh, 74h, 0D8h, 6Ah, 3Eh, 3Ch, 4Bh
                dq 6CFCD234637FEB3h
qword_1400208C0 dq 4DA3FEB77FD2F0C4h, 8265C4EDFBE31781h
                                        ; DATA XREF: .rdata:0000000140008A98↑o
qword_1400208D0 dq 40D7ADAF07A07CA2h, 0FA1BEDAD3A5377B0h, 610074006F0054h
                                        ; DATA XREF: .rdata:0000000140008A78↑o
                dq 7300730049006Ch, 7300650075h, 6E006100720042h, 6E004900680063h
                dq 75007200740073h, 6F006900740063h, 73006Eh, 68006300610043h
                dq 730069004D0065h, 7300650073h, 6E006100720042h, 69004D00680063h
                dq 65007200700073h, 74006300690064h, 73006E006F0069h, 0
aTotalcycles:                           ; DATA XREF: .data:0000000140C03988↓o
                text "UTF-16LE", 'TotalCycles',0
aUnhaltedcorecy:                        ; DATA XREF: .data:0000000140C03A68↓o
                text "UTF-16LE", 'UnhaltedCoreCycles',0
                align 8
aInstructionret:                        ; DATA XREF: .data:0000000140C03B48↓o
                text "UTF-16LE", 'InstructionRetired',0
                align 10h
aUnhaltedrefere:                        ; DATA XREF: .data:0000000140C03C28↓o
                text "UTF-16LE", 'UnhaltedReferenceCycles',0
aLlcreference:                          ; DATA XREF: .data:0000000140C03D08↓o
                text "UTF-16LE", 'LLCReference',0
                align 20h
aLlcmisses:                             ; DATA XREF: .data:0000000140C03DE8↓o
                text "UTF-16LE", 'LLCMisses',0
                align 8
aBranchinstruct:                        ; DATA XREF: .data:0000000140C03EC8↓o
                text "UTF-16LE", 'BranchInstructionRetired',0
                align 10h
aBranchmispredi:                        ; DATA XREF: .data:0000000140C03FA8↓o
                text "UTF-16LE", 'BranchMispredictsRetired',0
                align 8
aLbrinserts:                            ; DATA XREF: .data:0000000140C04088↓o
                text "UTF-16LE", 'LbrInserts',0
                align 20h
aInstructionsre:                        ; DATA XREF: .data:0000000140C04168↓o
                text "UTF-16LE", 'InstructionsRetiredFixed',0
                align 8
aUnhaltedcorecy_0:                      ; DATA XREF: .data:0000000140C04248↓o
                text "UTF-16LE", 'UnhaltedCoreCyclesFixed',0
aUnhaltedrefere_0:                      ; DATA XREF: .data:0000000140C04328↓o
                text "UTF-16LE", 'UnhaltedReferenceCyclesFixed',0
                align 8
aTimerfixed:                            ; DATA XREF: .data:0000000140C04408↓o
                text "UTF-16LE", 'TimerFixed',0
                align 20h
aRegistryMachin_202:                    ; DATA XREF: .data:off_140C04430↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\SOFTWARE\Microsoft',0
                align 10h
aRegistryMachin_203:                    ; DATA XREF: .data:0000000140C04448↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\SOFTWARE\Wow6432Node',0
                align 20h
aMicrosoft:                             ; DATA XREF: .data:0000000140C04450↓o
                                        ; .data:0000000140C04468↓o
                text "UTF-16LE", 'Microsoft',0
                align 20h
aRegistryMachin_204:                    ; DATA XREF: .data:0000000140C04460↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\SOFTWARE\WowAA32Node',0
                align 10h
aS1518:                                 ; DATA XREF: .data:0000000140C015B8↓o
                text "UTF-16LE", 'S-1-5-18',0
                align 10h
aRegistryMachin_205:                    ; DATA XREF: .data:0000000140C04498↓o
                text "UTF-16LE", '\REGISTRY\MACHINE\SYSTEM\CURRENTCONTROLSET\CONTROL\'
                text "UTF-16LE", 'SESSION MANAGER\Configuration Manager',0
                align 10h
aRegistryMachin_206:                    ; DATA XREF: .data:0000000140C03150↓o
                text "UTF-16LE", '\Registry\Machine\Software\Policies\Microsoft\Windo'
                text "UTF-16LE", 'ws\FileSystems\NTFS',0
                align 20h
aRegistryMachin_207:                    ; DATA XREF: .data:off_140C030E0↓o
                text "UTF-16LE", '\Registry\Machine\System\CurrentControlSet\Control\'
                text "UTF-16LE", 'FileSystem',0
                align 20h
aParameters_2:                          ; DATA XREF: .rdata:0000000140006148↑o
                text "UTF-16LE", 'Parameters',0
                align 8
aState:                                 ; DATA XREF: .rdata:0000000140006158↑o
                                        ; .rdata:00000001400097D8↑o
                text "UTF-16LE", 'State',0
                align 10h
dword_140020EB0 dd 2                    ; DATA XREF: sub_14099E8D0+12B↓o
                                        ; sub_14099FD74+2EB↓r
dword_140020EB4 dd 106A4h               ; DATA XREF: sub_14099FD74+2F5↓r
dword_140020EB8 dd 7                    ; DATA XREF: sub_14099FD74+2D5↓r
                dd 2Ch
dword_140020EC0 dd 2                    ; DATA XREF: sub_14099FD74+372↓r
                dd 2
                dq 7000106A5h, 20000002Ch, 106E400000002h, 2C00000007h
                dq 200000002h, 7000106E5h, 20000002Ch, 2065200000002h
                dq 2C00000008h, 200000002h, 800020655h, 20000002Ch, 206A700000002h
                dq 2E00000009h, 200000001h, 8000206C2h, 20000002Ch, 206D600000002h
                dq 2E00000009h, 200000001h, 9000206D7h, 10000002Eh, 206E600000002h
                dq 2C00000007h, 200000002h, 8000206F2h, 20000002Ch, 3067300000002h
                dq 0FFFFFFFF00000001h, 200000002h, 100030678h, 2FFFFFFFFh
                dq 3067900000002h, 0FFFFFFFF00000001h, 200000002h, 0A000306A9h
                dq 10000002Eh, 306C300000002h, 2E0000000Bh, 200000001h
                dq 0C000306D4h, 10000002Eh, 306E400000002h, 2E0000000Ah
                dq 200000001h, 0A000306E7h, 10000002Eh, 306F200000002h
                dq 2E0000000Bh, 200000001h, 0B000306F4h, 10000002Eh, 4065100000002h
                dq 2E0000000Bh, 200000001h, 0B00040661h, 10000002Eh, 406A800000002h
                dq 0FFFFFFFF00000001h, 200000002h, 1000406A9h, 2FFFFFFFFh
                dq 406C300000002h, 0FFFFFFFF00000002h, 200000006h, 2000406C4h
                dq 6FFFFFFFFh, 406D800000002h, 0FFFFFFFF00000001h, 200000002h
                dq 0D000406E3h, 10000002Eh, 406F100000002h, 2E0000000Ch
                dq 200000001h, 0C00040751h, 10000002Eh, 5065300000002h
                dq 2E0000000Fh, 200000001h, 0F00050654h, 10000002Eh, 5066200000002h
                dq 2E0000000Ch, 200000001h, 0C00050663h, 10000002Eh, 5066400000002h
                dq 2E0000000Ch, 200000001h, 0C00050665h, 10000002Eh, 5067100000002h
                dq 0FFFFFFFF00000005h, 200000002h, 1000506A0h, 2FFFFFFFFh
                dq 506A100000002h, 0FFFFFFFF00000001h, 200000002h, 3000506C2h
                dq 6FFFFFFFFh, 506C900000002h, 0FFFFFFFF00000003h, 200000006h
                dq 3000506CAh, 6FFFFFFFFh, 506D100000002h, 0FFFFFFFF00000006h
                dq 200000002h, 0D000506E3h, 10000002Eh, 506F100000002h
                dq 0FFFFFFFF00000003h, 200000006h, 1100060663h, 10000002Eh
                dq 606E100000002h, 0FFFFFFFF00000002h, 200000006h, 4000706A1h
                dq 6FFFFFFFFh, 8065000000002h, 0FFFFFFFF00000005h, 200000002h
                dq 0E000806E9h, 10000002Eh, 806EA00000002h, 2E00000010h
                dq 200000001h, 12000806EBh, 10000002Eh, 906E900000002h
                dq 2E0000000Eh, 200000001h, 10000906EAh, 10000002Eh, 906EB00000002h
                dq 2E00000010h, 200000001h, 10000906ECh, 10000002Eh, 0
                dq 13h, 0
qword_140021350 dq 1, 14h, 10h, 2, 14h, 80h, 4, 14h, 100h, 20h, 14h, 20h
                                        ; DATA XREF: .rdata:0000000140006168↑o
                dq 80h, 14h, 8000h, 100h, 14h, 10000h, 2000h, 14h, 80000h
                dq 4000h, 14h, 100000h, 8000h, 14h, 200000h, 20000h, 14h
                dq 400000h, 3 dup(0)
aExallocatepool db 'ExAllocatePoolWithTag',0
                                        ; DATA XREF: .data:0000000140C04A88↓o
                                        ; .data:0000000140C04D88↓o
                align 10h
aZeropool:                              ; DATA XREF: .data:0000000140C04558↓o
                text "UTF-16LE", 'ZeroPool',0
                align 8
aRtlgetversion  db 'RtlGetVersion',0    ; DATA XREF: .data:0000000140C04AC8↓o
                                        ; .data:0000000140C04B28↓o ...
                align 8
aPsgetversion   db 'PsGetVersion',0     ; DATA XREF: .data:0000000140C04AE8↓o
                                        ; .data:0000000140C04B48↓o ...
                align 8
aKmwin81version:                        ; DATA XREF: .data:0000000140C04600↓o
                text "UTF-16LE", 'KmWin81VersionLie',0
                align 10h
aKmwin7versionl:                        ; DATA XREF: .data:0000000140C045C8↓o
                text "UTF-16LE", 'KmWin7VersionLie',0
                align 8
aKmwin8versionl:                        ; DATA XREF: .data:0000000140C04590↓o
                text "UTF-16LE", 'KmWin8VersionLie',0
                align 20h
aIocreatedevice db 'IoCreateDevice',0   ; DATA XREF: .data:0000000140C04D48↓o
                align 10h
aPorequestpower db 'PoRequestPowerIrp',0
                                        ; DATA XREF: .data:0000000140C04D68↓o
                align 8
aExfreepool     db 'ExFreePool',0       ; DATA XREF: .data:0000000140C04DE8↓o
                align 8
aDriverscope:                           ; DATA XREF: .data:0000000140C03240↓o
                text "UTF-16LE", 'driverscope',0
aExfreepoolwith db 'ExFreePoolWithTag',0
                                        ; DATA XREF: .data:0000000140C04DA8↓o
                align 8
aExallocatepool_0 db 'ExAllocatePool',0 ; DATA XREF: .data:0000000140C04DC8↓o
                align 8
aClearpcidbits:                         ; DATA XREF: .data:0000000140C04638↓o
                text "UTF-16LE", 'ClearPCIDBits',0
                align 8
aMmgetvirtualfo db 'MmGetVirtualForPhysical',0
                                        ; DATA XREF: .data:0000000140C04E28↓o
aMmmapiospace   db 'MmMapIoSpace',0     ; DATA XREF: .data:0000000140C04E48↓o
                align 20h
aMemcpyS        db 'memcpy_s',0         ; DATA XREF: .data:0000000140C04E88↓o
                align 10h
aMemcpy:                                ; DATA XREF: .data:0000000140C04670↓o
                text "UTF-16LE", 'Memcpy',0
                align 20h
aKasperskyshim:                         ; DATA XREF: .data:0000000140C046A8↓o
                text "UTF-16LE", 'KasperskyShim',0
                align 20h
aZwqueryvalueke db 'ZwQueryValueKey',0  ; DATA XREF: .data:0000000140C04EC8↓o
aSkipdriverunlo:                        ; DATA XREF: .data:0000000140C03278↓o
                text "UTF-16LE", 'SkipDriverUnload',0
                align 8
; Exported entry 1518. MmUserProbeAddress
