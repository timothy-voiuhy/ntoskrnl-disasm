; Section 6. (virtual address 00172000)
; Virtual size                  : 0000E4F0 (  58608.)
; Section size in file          : 0000E600 (  58880.)
; Offset to raw data for section: 00166000
; Flags 40000040: Data Readable
; Alignment     : default
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read
_pdata          segment para public 'DATA' use64
                assume cs:_pdata
                ;org 180172000h
ExceptionDir    RUNTIME_FUNCTION <rva RtlLargeIntegerToChar, rva algn_1800010E2, \
                                  rva stru_180140818>
                RUNTIME_FUNCTION <rva sub_1800010E8, rva algn_1800011EE, \
                                  rva stru_180140858>
                RUNTIME_FUNCTION <rva sub_180001220, rva algn_180001339, \
                                  rva stru_18014088C>
                RUNTIME_FUNCTION <rva sub_180001340, rva byte_180001380, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180001390, rva byte_1800013EC, \
                                  rva stru_1801408AC>
                RUNTIME_FUNCTION <rva LdrQueryProcessModuleInformation, \
                                  rva algn_180001451, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180001458, rva byte_1800016F3, \
                                  rva stru_1801408E4>
                RUNTIME_FUNCTION <rva sub_1800016FC, rva byte_180001885, \
                                  rva stru_18014092C>
                RUNTIME_FUNCTION <rva sub_18000188C, rva byte_180001900, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva EtwReplyNotification, rva byte_1800019E0, \
                                  rva stru_18014095C>
                RUNTIME_FUNCTION <rva RtlExtendMemoryZone, rva algn_180001B4E, \
                                  rva stru_180140974>
                RUNTIME_FUNCTION <rva RtlGetUserInfoHeap, rva byte_180001E74, \
                                  rva stru_180140994>
                RUNTIME_FUNCTION <rva sub_180001E7C, rva algn_180001EE8, \
                                  rva stru_1801409F0>
                RUNTIME_FUNCTION <rva sub_180001EF0, rva algn_180001F4F, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlSetUserValueHeap, rva algn_180002197, \
                                  rva stru_180140A20>
                RUNTIME_FUNCTION <rva sub_1800021A0, rva algn_180002208, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_180002210, rva byte_1800022BB, \
                                  rva stru_180140A78>
                RUNTIME_FUNCTION <rva sub_1800022C4, rva byte_18000234B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180002354, rva algn_180002407, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180002410, rva algn_1800024A9, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800024D4, rva algn_180002557, \
                                  rva stru_180140AA4>
                RUNTIME_FUNCTION <rva sub_180002560, rva algn_1800025AA, \
                                  rva stru_180140AB0>
                RUNTIME_FUNCTION <rva sub_1800025B0, rva algn_1800026A2, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800026A8, rva algn_180002977, \
                                  rva stru_180140AE0>
                RUNTIME_FUNCTION <rva sub_180002980, rva byte_180002AC5, \
                                  rva stru_180140B04>
                RUNTIME_FUNCTION <rva sub_180002ACC, rva algn_180002B72, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_180002B78, rva algn_180002BF2, \
                                  rva stru_180140B24>
                RUNTIME_FUNCTION <rva sub_180002BF8, rva algn_180002CB9, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_180002CE8, rva algn_180002D3A, \
                                  rva stru_180140B58>
                RUNTIME_FUNCTION <rva sub_180002D40, rva algn_18000300C, \
                                  rva stru_180140B70>
                RUNTIME_FUNCTION <rva sub_180003030, rva byte_18000313E, \
                                  rva stru_180140B98>
                RUNTIME_FUNCTION <rva sub_180003144, rva byte_1800031AE, \
                                  rva stru_180140BB8>
                RUNTIME_FUNCTION <rva sub_1800031B4, rva algn_18000327A, \
                                  rva stru_180140BE0>
                RUNTIME_FUNCTION <rva sub_180003280, rva byte_1800033FD, \
                                  rva stru_180140BF4>
                RUNTIME_FUNCTION <rva sub_180003404, rva byte_18000371E, \
                                  rva stru_180140C18>
                RUNTIME_FUNCTION <rva sub_180003748, rva byte_18000378B, \
                                  rva stru_180140C44>
                RUNTIME_FUNCTION <rva sub_180003794, rva algn_1800037E1, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva sub_1800037E8, rva algn_180003881, \
                                  rva stru_180140C68>
                RUNTIME_FUNCTION <rva sub_180003888, rva byte_180003F9E, \
                                  rva stru_180140C88>
                RUNTIME_FUNCTION <rva sub_180003FA4, rva algn_1800043C8, \
                                  rva stru_180140CB0>
                RUNTIME_FUNCTION <rva sub_1800043D0, rva byte_18000447B, \
                                  rva stru_180140CD8>
                RUNTIME_FUNCTION <rva sub_180004484, rva algn_180004517, \
                                  rva stru_180140CF8>
                RUNTIME_FUNCTION <rva sub_180004520, rva algn_180004561, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180004614, rva byte_18000469E, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800046A4, rva byte_18000474D, \
                                  rva stru_180140D1C>
                RUNTIME_FUNCTION <rva sub_180004754, rva byte_1800047AC, \
                                  rva stru_180140D40>
                RUNTIME_FUNCTION <rva sub_1800047B4, rva algn_180004818, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180004820, rva byte_1800048DB, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800048E4, rva algn_180004B0A, \
                                  rva stru_180140D60>
                RUNTIME_FUNCTION <rva sub_180004B10, rva algn_180004B68, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180004B70, rva algn_180004C08, \
                                  rva stru_180140D9C>
                RUNTIME_FUNCTION <rva sub_180004C10, rva byte_180004EFC, \
                                  rva stru_180140DC0>
                RUNTIME_FUNCTION <rva sub_180004F04, rva algn_180004F72, \
                                  rva stru_180140DFC>
                RUNTIME_FUNCTION <rva sub_180004F78, rva byte_180005240, \
                                  rva stru_180140E20>
                RUNTIME_FUNCTION <rva sub_180005248, rva algn_180005378, \
                                  rva stru_180140E60>
                RUNTIME_FUNCTION <rva sub_180005380, rva byte_1800053D3, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800053DC, rva algn_180005611, \
                                  rva stru_180140E88>
                RUNTIME_FUNCTION <rva sub_180005620, rva byte_18000565D, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180005664, rva algn_180005808, \
                                  rva stru_180140EC4>
                RUNTIME_FUNCTION <rva sub_180005858, rva algn_180005961, \
                                  rva stru_180140EEC>
                RUNTIME_FUNCTION <rva sub_180005968, rva algn_1800059A2, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_1800059A8, rva algn_180005A78, \
                                  rva stru_180140F08>
                RUNTIME_FUNCTION <rva sub_180005A80, rva byte_180005B53, \
                                  rva stru_180140F2C>
                RUNTIME_FUNCTION <rva sub_180005B5C, rva byte_180005BC5, \
                                  rva stru_180140F48>
                RUNTIME_FUNCTION <rva sub_180005BCC, rva algn_180005DA2, \
                                  rva stru_180140F70>
                RUNTIME_FUNCTION <rva sub_180005DA8, rva byte_180005E44, \
                                  rva stru_180140F98>
                RUNTIME_FUNCTION <rva sub_180005E4C, rva byte_180005EE0, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180005EE8, rva byte_180005FC6, \
                                  rva stru_180140FB8>
                RUNTIME_FUNCTION <rva sub_180006040, rva algn_1800060C8, \
                                  rva stru_180140FE0>
                RUNTIME_FUNCTION <rva sub_1800060D0, rva byte_180006250, \
                                  rva stru_180140FFC>
                RUNTIME_FUNCTION <rva sub_180006258, rva algn_18000638A, \
                                  rva stru_180141028>
                RUNTIME_FUNCTION <rva sub_180006390, rva byte_180006434, \
                                  rva stru_180141054>
                RUNTIME_FUNCTION <rva sub_180006458, rva byte_18000652E, \
                                  rva stru_180141078>
                RUNTIME_FUNCTION <rva sub_180006534, rva byte_18000657B, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180006584, rva byte_180006623, \
                                  rva stru_1801410B0>
                RUNTIME_FUNCTION <rva sub_18000662C, rva algn_180006739, \
                                  rva stru_1801410D0>
                RUNTIME_FUNCTION <rva sub_180006740, rva algn_180006797, \
                                  rva stru_1801410F8>
                RUNTIME_FUNCTION <rva sub_1800067A0, rva byte_18000686B, \
                                  rva stru_180141100>
                RUNTIME_FUNCTION <rva sub_180006874, rva algn_180006912, \
                                  rva stru_180141118>
                RUNTIME_FUNCTION <rva sub_1800069A0, rva byte_180006ADB, \
                                  rva stru_180141138>
                RUNTIME_FUNCTION <rva sub_180006AE4, rva byte_180006B7F, \
                                  rva stru_180141164>
                RUNTIME_FUNCTION <rva sub_180006B88, rva algn_180006CC9, \
                                  rva stru_180141184>
                RUNTIME_FUNCTION <rva sub_180006CD0, rva algn_180006DB1, \
                                  rva stru_1801411B0>
                RUNTIME_FUNCTION <rva sub_180006DB8, rva byte_180006E13, \
                                  rva stru_1801411D0>
                RUNTIME_FUNCTION <rva sub_180006E1C, rva byte_180006EA5, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180006EAC, rva algn_1800070B7, \
                                  rva stru_180141204>
                RUNTIME_FUNCTION <rva sub_1800070C0, rva algn_180007178, \
                                  rva stru_18014122C>
                RUNTIME_FUNCTION <rva sub_180007180, rva byte_1800071DC, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180007230, rva byte_18000728E, \
                                  rva stru_18014124C>
                RUNTIME_FUNCTION <rva sub_180007294, rva byte_18000731F, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180007328, rva byte_1800074EF, \
                                  rva stru_180141258>
                RUNTIME_FUNCTION <rva sub_1800074F8, rva byte_18000755E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800075AC, rva algn_180007649, \
                                  rva stru_180141270>
                RUNTIME_FUNCTION <rva sub_180007650, rva algn_180007691, \
                                  rva stru_180141294>
                RUNTIME_FUNCTION <rva sub_1800076C4, rva byte_180007763, \
                                  rva stru_1801412AC>
                RUNTIME_FUNCTION <rva sub_18000776C, rva byte_180007873, \
                                  rva stru_1801412D4>
                RUNTIME_FUNCTION <rva sub_18000787C, rva byte_180007986, \
                                  rva stru_1801412FC>
                RUNTIME_FUNCTION <rva sub_18000798C, rva byte_180007A83, \
                                  rva stru_180141318>
                RUNTIME_FUNCTION <rva sub_180007AB4, rva byte_180007B20, \
                                  rva stru_180141330>
                RUNTIME_FUNCTION <rva sub_180007BC4, rva byte_180007BFF, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180007C08, rva byte_180007CD4, \
                                  rva stru_180141358>
                RUNTIME_FUNCTION <rva sub_180007CDC, rva byte_180007D6B, \
                                  rva stru_180141378>
                RUNTIME_FUNCTION <rva sub_180007D74, rva byte_180007E16, \
                                  rva stru_18014139C>
                RUNTIME_FUNCTION <rva sub_180007E1C, rva byte_180007E63, \
                                  rva stru_1801413BC>
                RUNTIME_FUNCTION <rva sub_180007E6C, rva algn_180008108, \
                                  rva stru_1801413CC>
                RUNTIME_FUNCTION <rva sub_18000813C, rva byte_180008214, \
                                  rva stru_1801413F8>
                RUNTIME_FUNCTION <rva sub_18000821C, rva algn_1800084D7, \
                                  rva stru_18014141C>
                RUNTIME_FUNCTION <rva sub_1800084E0, rva byte_1800085EF, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800085F8, rva byte_1800086E5, \
                                  rva stru_180141448>
                RUNTIME_FUNCTION <rva sub_1800086EC, rva algn_180008818, \
                                  rva stru_180141474>
                RUNTIME_FUNCTION <rva CsrCaptureMessageBuffer, rva byte_1800088A5, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800088AC, rva byte_18000895E, \
                                  rva stru_180141488>
                RUNTIME_FUNCTION <rva CsrFreeCaptureBuffer, rva algn_180008994, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva CsrClientCallServer, rva algn_180008B36, \
                                  rva stru_1801414A0>
                RUNTIME_FUNCTION <rva CsrCaptureMessageMultiUnicodeStringsInPlace, \
                                  rva algn_180008C48, rva stru_1801414C0>
                RUNTIME_FUNCTION <rva CsrCaptureMessageString, rva algn_180008CF6, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva CsrAllocateCaptureBuffer, rva algn_180008E13, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva CsrClientConnectToServer, rva byte_180008FDC, \
                                  rva stru_1801414EC>
                RUNTIME_FUNCTION <rva sub_180008FE4, rva byte_18000939F, \
                                  rva stru_180141510>
                RUNTIME_FUNCTION <rva RtlRegisterFeatureConfigurationChangeNotification,\
                                  rva byte_18000942F, rva stru_180141544>
                RUNTIME_FUNCTION <rva sub_180009438, rva byte_180009486, \
                                  rva stru_180141568>
                RUNTIME_FUNCTION <rva sub_18000948C, rva algn_180009512, \
                                  rva stru_180141580>
                RUNTIME_FUNCTION <rva sub_180009518, rva byte_18000956B, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180009574, rva algn_180009632, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180009638, rva algn_18000966C, \
                                  rva stru_1801415A4>
                RUNTIME_FUNCTION <rva RtlDestroyHeap, rva byte_1800098E5, \
                                  rva stru_1801415BC>
                RUNTIME_FUNCTION <rva sub_1800098EC, rva algn_180009981, \
                                  rva stru_1801415F0>
                RUNTIME_FUNCTION <rva TpWaitForWait, rva algn_180009A6D, \
                                  rva stru_18014160C>
                RUNTIME_FUNCTION <rva sub_180009AA8, rva byte_180009AEE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180009AF4, rva byte_180009B3F, \
                                  rva stru_180141630>
                RUNTIME_FUNCTION <rva sub_180009B48, rva algn_180009BAA, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpTimerOutstandingCallbackCount, \
                                  rva algn_180009BF7, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlDeleteTimer, rva byte_180009D3D, \
                                  rva stru_180141654>
                RUNTIME_FUNCTION <rva RtlCreateTimer, rva byte_180009FBE, \
                                  rva stru_1801416AC>
                RUNTIME_FUNCTION <rva sub_180009FC4, rva algn_18000A019, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18000A020, rva algn_18000A061, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18000A068, rva algn_18000A08A, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18000A090, rva loc_18000A0FA, \
                                  rva stru_18014170C>
                RUNTIME_FUNCTION <rva loc_18000A0FA, rva loc_18000A3BD, \
                                  rva stru_180141724>
                RUNTIME_FUNCTION <rva loc_18000A3BD, rva loc_18000A3F5, \
                                  rva stru_180141738>
                RUNTIME_FUNCTION <rva loc_18000A3F5, rva byte_18000A43F, \
                                  rva stru_180141748>
                RUNTIME_FUNCTION <rva sub_18000A448, rva byte_18000A51C, \
                                  rva stru_180141780>
                RUNTIME_FUNCTION <rva RtlRunOnceBeginInitialize, rva algn_18000A5F8, \
                                  rva stru_180141798>
                RUNTIME_FUNCTION <rva sub_18000A600, rva byte_18000A76C, \
                                  rva stru_1801417BC>
                RUNTIME_FUNCTION <rva sub_18000A774, rva algn_18000A8A2, \
                                  rva stru_1801417E4>
                RUNTIME_FUNCTION <rva RtlCreateHeap, rva algn_18000B562, \
                                  rva stru_18014180C>
                RUNTIME_FUNCTION <rva sub_18000B568, rva algn_18000B5A7, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlDeregisterWaitEx, rva byte_18000B6F6, \
                                  rva stru_180141854>
                RUNTIME_FUNCTION <rva sub_18000B6FC, rva algn_18000B774, \
                                  rva stru_1801418A8>
                RUNTIME_FUNCTION <rva RtlQueueWorkItem, rva byte_18000BB4E, \
                                  rva stru_1801418B4>
                RUNTIME_FUNCTION <rva sub_18000BB54, rva byte_18000BD6F, \
                                  rva stru_180141904>
                RUNTIME_FUNCTION <rva sub_18000BD78, rva algn_18000BDF1, \
                                  rva stru_180141930>
                RUNTIME_FUNCTION <rva sub_18000BDF8, rva algn_18000BE65, \
                                  rva stru_18014194C>
                RUNTIME_FUNCTION <rva RtlRegisterWait, rva byte_18000C0DB, \
                                  rva stru_18014196C>
                RUNTIME_FUNCTION <rva sub_18000C0E4, rva byte_18000C11F, \
                                  rva stru_1801419CC>
                RUNTIME_FUNCTION <rva sub_18000C1A0, rva algn_18000C20F, \
                                  rva stru_1801419D4>
                RUNTIME_FUNCTION <rva sub_18000C220, rva algn_18000C268, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpReleaseWait, rva byte_18000C323, \
                                  rva stru_180140EEC>
                RUNTIME_FUNCTION <rva sub_18000C32C, rva algn_18000C48A, \
                                  rva stru_1801419F4>
                RUNTIME_FUNCTION <rva sub_18000C490, rva algn_18000C4F5, \
                                  rva stru_180141A10>
                RUNTIME_FUNCTION <rva TpReleaseTimer, rva algn_18000C592, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18000C5A0, rva byte_18000C5D4, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18000C5DC, rva algn_18000C6E6, \
                                  rva stru_180141A40>
                RUNTIME_FUNCTION <rva RtlIdnToUnicode, rva algn_18000C798, \
                                  rva stru_180141318>
                RUNTIME_FUNCTION <rva sub_18000C7A0, rva byte_18000C910, \
                                  rva stru_180141A64>
                RUNTIME_FUNCTION <rva sub_18000C918, rva byte_18000CE55, \
                                  rva stru_180141A8C>
                RUNTIME_FUNCTION <rva RtlEqualDomainName, rva byte_18000CEFD, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva RtlCanonicalizeDomainName, rva algn_18000D0B8, \
                                  rva stru_180141AB4>
                RUNTIME_FUNCTION <rva RtlIdnToAscii, rva byte_18000D0DE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18000D0E4, rva byte_18000D1E3, \
                                  rva stru_180141AE8>
                RUNTIME_FUNCTION <rva sub_18000D1EC, rva algn_18000D448, \
                                  rva stru_180141B10>
                RUNTIME_FUNCTION <rva sub_18000D450, rva algn_18000D5C1, \
                                  rva stru_180141B3C>
                RUNTIME_FUNCTION <rva RtlIpv4StringToAddressExW, rva algn_18000D70C, \
                                  rva stru_180141B64>
                RUNTIME_FUNCTION <rva RtlIpv4StringToAddressW, rva algn_18000D943, \
                                  rva stru_180141B90>
                RUNTIME_FUNCTION <rva RtlIpv6StringToAddressExW, rva algn_18000DB4D, \
                                  rva stru_180141BC0>
                RUNTIME_FUNCTION <rva RtlIpv6StringToAddressW, rva algn_18000DF37, \
                                  rva stru_180141BEC>
                RUNTIME_FUNCTION <rva TpAllocWait, rva algn_18000E0D2, \
                                  rva stru_180141C14>
                RUNTIME_FUNCTION <rva RtlProtectHeap, rva algn_18000E1BA, \
                                  rva stru_180141C40>
                RUNTIME_FUNCTION <rva sub_18000E1C0, rva byte_18000E2A0, \
                                  rva stru_180141C64>
                RUNTIME_FUNCTION <rva sub_18000E2A8, rva algn_18000E342, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18000E348, rva algn_18000E612, \
                                  rva stru_180141C88>
                RUNTIME_FUNCTION <rva sub_18000E618, rva byte_18000E90B, \
                                  rva stru_180141CAC>
                RUNTIME_FUNCTION <rva sub_18000E914, rva byte_18000EA86, \
                                  rva stru_180141CD4>
                RUNTIME_FUNCTION <rva sub_18000EA8C, rva byte_18000EB2B, \
                                  rva stru_180141CFC>
                RUNTIME_FUNCTION <rva sub_18000EB34, rva byte_18000EB8B, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18000EB94, rva algn_18000EC21, \
                                  rva stru_180141D18>
                RUNTIME_FUNCTION <rva sub_18000EC28, rva byte_18000ECA5, \
                                  rva stru_180141D34>
                RUNTIME_FUNCTION <rva sub_18000ECAC, rva byte_18000ED03, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18000ED0C, rva byte_18000EE2E, \
                                  rva stru_180141D50>
                RUNTIME_FUNCTION <rva sub_18000EE34, rva byte_18000EE5B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18000EE64, rva byte_18000EECB, \
                                  rva stru_180141D74>
                RUNTIME_FUNCTION <rva sub_18000EED4, rva algn_18000EF62, \
                                  rva stru_180141D90>
                RUNTIME_FUNCTION <rva LdrDisableThreadCalloutsForDll, \
                                  rva byte_18000EFBE, rva stru_180140D90>
                RUNTIME_FUNCTION <rva TpAllocTimer, rva algn_18000F0CB, \
                                  rva stru_180141DAC>
                RUNTIME_FUNCTION <rva sub_18000F0E0, rva byte_18000F11B, \
                                  rva stru_180141DD4>
                RUNTIME_FUNCTION <rva sub_18000F124, rva algn_18000F171, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpReleaseWork, rva byte_18000F1DF, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18000F1E8, rva byte_18000F20D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18000F214, rva algn_18000F27A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpAllocWork, rva algn_18000F418, \
                                  rva stru_180141DFC>
                RUNTIME_FUNCTION <rva sub_18000F420, rva byte_18000F4A6, \
                                  rva stru_180141E40>
                RUNTIME_FUNCTION <rva sub_18000F4AC, rva algn_18000F941, \
                                  rva stru_180141E58>
                RUNTIME_FUNCTION <rva sub_18000F948, rva byte_18000F9A6, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18000F9AC, rva byte_18000FB94, \
                                  rva stru_180141E90>
                RUNTIME_FUNCTION <rva sub_18000FB9C, rva byte_18000FBDF, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva LdrUnloadDll, rva algn_18000FC92, \
                                  rva stru_180141EB8>
                RUNTIME_FUNCTION <rva sub_18000FC98, rva byte_18000FD1F, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18000FD28, rva byte_18000FDAC, \
                                  rva stru_180141EC8>
                RUNTIME_FUNCTION <rva sub_18000FDB4, rva algn_18001013A, \
                                  rva stru_180141EF8>
                RUNTIME_FUNCTION <rva LdrAddRefDll, rva algn_1800101A8, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva sub_1800101B0, rva algn_180010233, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva LdrGetDllFullName, rva algn_1800102E5, \
                                  rva stru_180141F44>
                RUNTIME_FUNCTION <rva RtlCopyUnicodeString, rva algn_18001036B, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva LdrResolveDelayLoadedAPI, rva algn_1800104FA, \
                                  rva stru_180141F64>
                RUNTIME_FUNCTION <rva sub_180010500, rva byte_18001061F, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_180010628, rva byte_180010763, \
                                  rva stru_180141FAC>
                RUNTIME_FUNCTION <rva sub_18001076C, rva byte_180010824, \
                                  rva stru_180141FD4>
                RUNTIME_FUNCTION <rva sub_18001082C, rva algn_180010869, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18001088C, rva algn_1800108E7, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800108F0, rva algn_180010959, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva sub_180010960, rva algn_1800109F8, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_180010A00, rva algn_180010A58, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva AlpcGetMessageFromCompletionList, \
                                  rva algn_180010B86, rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180010BA0, rva algn_180010BD4, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpSimpleTryPost, rva algn_180010D0F, \
                                  rva stru_180142004>
                RUNTIME_FUNCTION <rva sub_180010D20, rva byte_180010E10, \
                                  rva stru_180142078>
                RUNTIME_FUNCTION <rva sub_180010E18, rva algn_180010F28, \
                                  rva stru_18014209C>
                RUNTIME_FUNCTION <rva RtlDeleteResource, rva algn_180010FAE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlDeleteCriticalSection, rva algn_1800111C4, \
                                  rva stru_1801420C0>
                RUNTIME_FUNCTION <rva TpWaitForTimer, rva algn_1800112DA, \
                                  rva stru_180142108>
                RUNTIME_FUNCTION <rva RtlInitializeResource, rva loc_180011337, \
                                  rva stru_180142130>
                RUNTIME_FUNCTION <rva loc_180011337, rva loc_18001134A, \
                                  rva stru_180142140>
                RUNTIME_FUNCTION <rva loc_18001134A, rva loc_1800113B0, \
                                  rva stru_180142158>
                RUNTIME_FUNCTION <rva loc_1800113B0, rva algn_180011449, \
                                  rva stru_180142170>
                RUNTIME_FUNCTION <rva algn_180011449, rva algn_180011449+1, \
                                  rva stru_180142184>
                RUNTIME_FUNCTION <rva LdrGetDllPath, rva byte_180011473, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18001147C, rva byte_1800116A4, \
                                  rva stru_180142208>
                RUNTIME_FUNCTION <rva sub_1800116AC, rva byte_180011700, \
                                  rva stru_180142224>
                RUNTIME_FUNCTION <rva sub_180011708, rva algn_180011831, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_180011840, rva loc_18001188E, \
                                  rva stru_180142260>
                RUNTIME_FUNCTION <rva loc_18001188E, rva loc_18001191E, \
                                  rva stru_18014226C>
                RUNTIME_FUNCTION <rva loc_18001191E, rva loc_18001197B, \
                                  rva stru_180142290>
                RUNTIME_FUNCTION <rva loc_18001197B, rva loc_180011986, \
                                  rva stru_1801422AC>
                RUNTIME_FUNCTION <rva loc_180011986, rva algn_180011A98, \
                                  rva stru_1801422BC>
                RUNTIME_FUNCTION <rva sub_180011AA0, rva algn_180011AD2, \
                                  rva stru_180142334>
                RUNTIME_FUNCTION <rva sub_180011AE0, rva algn_180011D4F, \
                                  rva stru_180142354>
                RUNTIME_FUNCTION <rva TpSetWaitEx, rva byte_180011E74, \
                                  rva stru_180142388>
                RUNTIME_FUNCTION <rva sub_180011E7C, rva algn_180011F70, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlReleasePath, rva algn_180011FEB, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva TpIsTimerSet, rva algn_180012031, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180012038, rva algn_180012082, \
                                  rva stru_1801423B0>
                RUNTIME_FUNCTION <rva sub_180012088, rva byte_18001221C, \
                                  rva stru_1801423C8>
                RUNTIME_FUNCTION <rva sub_180012224, rva algn_180012298, \
                                  rva stru_180142424>
                RUNTIME_FUNCTION <rva sub_1800122AC, rva algn_180012332, \
                                  rva stru_180142440>
                RUNTIME_FUNCTION <rva sub_180012338, rva byte_180012413, \
                                  rva stru_18014247C>
                RUNTIME_FUNCTION <rva sub_18001241C, rva byte_1800126BD, \
                                  rva stru_1801424A8>
                RUNTIME_FUNCTION <rva TpSetTimerEx, rva algn_1800127D2, \
                                  rva stru_180142534>
                RUNTIME_FUNCTION <rva TpStartAsyncIoOperation, rva byte_18001284F, \
                                  rva stru_180142560>
                RUNTIME_FUNCTION <rva sub_180012858, rva algn_1800128AB, \
                                  rva stru_18014257C>
                RUNTIME_FUNCTION <rva TpPostWork, rva byte_18001290B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180012914, rva byte_180012985, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800129B8, rva byte_180012A90, \
                                  rva stru_180142594>
                RUNTIME_FUNCTION <rva sub_180012A98, rva algn_180012C68, \
                                  rva stru_1801425B0>
                RUNTIME_FUNCTION <rva sub_180012CB4, rva algn_180012DD1, \
                                  rva stru_1801425D4>
                RUNTIME_FUNCTION <rva RtlQueryInformationActivationContext, \
                                  rva byte_18001336E, rva stru_1801425FC>
                RUNTIME_FUNCTION <rva sub_18001342C, rva algn_1800134AB, \
                                  rva stru_180142638>
                RUNTIME_FUNCTION <rva sub_1800134FC, rva byte_18001355F, \
                                  rva stru_18014265C>
                RUNTIME_FUNCTION <rva RtlReleaseActivationContext, rva algn_1800135F1,\
                                  rva stru_180142674>
                RUNTIME_FUNCTION <rva sub_180013704, rva byte_1800137DB, \
                                  rva stru_180142690>
                RUNTIME_FUNCTION <rva sub_1800137E4, rva byte_1800139E4, \
                                  rva stru_1801426B4>
                RUNTIME_FUNCTION <rva sub_1800139EC, rva algn_180013B18, \
                                  rva stru_18014270C>
                RUNTIME_FUNCTION <rva sub_180013B20, rva algn_180013C7A, \
                                  rva stru_180142734>
                RUNTIME_FUNCTION <rva sub_180013C80, rva byte_180013D15, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180013D78, rva algn_180013DF1, \
                                  rva stru_18014275C>
                RUNTIME_FUNCTION <rva sub_180013E00, rva algn_180013E58, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180013E60, rva algn_180013F09, \
                                  rva stru_180142778>
                RUNTIME_FUNCTION <rva sub_180013F10, rva byte_180013FEC, \
                                  rva stru_1801427A4>
                RUNTIME_FUNCTION <rva sub_180013FF4, rva byte_180014044, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva sub_18001404C, rva algn_1800140FA, \
                                  rva stru_1801427CC>
                RUNTIME_FUNCTION <rva sub_180014100, rva byte_180014273, \
                                  rva stru_1801427DC>
                RUNTIME_FUNCTION <rva sub_18001427C, rva byte_1800142D4, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800142DC, rva byte_18001438F, \
                                  rva stru_180142800>
                RUNTIME_FUNCTION <rva sub_180014398, rva algn_1800144B9, \
                                  rva stru_180142820>
                RUNTIME_FUNCTION <rva sub_1800144C0, rva algn_180014619, \
                                  rva stru_180142834>
                RUNTIME_FUNCTION <rva sub_180014620, rva byte_18001473B, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180014744, rva algn_180014881, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800148B4, rva byte_180014A0C, \
                                  rva stru_18014285C>
                RUNTIME_FUNCTION <rva sub_180014A14, rva algn_180014A89, \
                                  rva stru_180142884>
                RUNTIME_FUNCTION <rva sub_180014A90, rva byte_180014C30, \
                                  rva stru_1801428AC>
                RUNTIME_FUNCTION <rva sub_180014C38, rva algn_180014E79, \
                                  rva stru_1801428D0>
                RUNTIME_FUNCTION <rva sub_180014E80, rva byte_180014F7E, \
                                  rva stru_1801428F8>
                RUNTIME_FUNCTION <rva sub_180014F84, rva algn_1800150DA, \
                                  rva stru_180142918>
                RUNTIME_FUNCTION <rva sub_1800150E0, rva algn_1800151F8, \
                                  rva stru_180142938>
                RUNTIME_FUNCTION <rva sub_180015200, rva algn_1800152E2, \
                                  rva stru_180142960>
                RUNTIME_FUNCTION <rva sub_18001532C, rva algn_180015628, \
                                  rva stru_180142978>
                RUNTIME_FUNCTION <rva RtlExpandEnvironmentStrings, rva loc_18001563E, \
                                  rva stru_1801429B0>
                RUNTIME_FUNCTION <rva loc_18001563E, rva loc_18001566C, \
                                  rva stru_1801429BC>
                RUNTIME_FUNCTION <rva loc_18001566C, rva loc_1800156C8, \
                                  rva stru_1801429DC>
                RUNTIME_FUNCTION <rva loc_1800156C8, rva loc_1800156FA, \
                                  rva stru_1801429F4>
                RUNTIME_FUNCTION <rva loc_1800156FA, rva loc_18001570A, \
                                  rva stru_180142A04>
                RUNTIME_FUNCTION <rva loc_18001570A, rva loc_1800157C8, \
                                  rva stru_180142A14>
                RUNTIME_FUNCTION <rva loc_1800157C8, rva algn_1800157D3, \
                                  rva stru_180142A3C>
                RUNTIME_FUNCTION <rva RtlQueryEnvironmentVariable, rva algn_180015D0B,\
                                  rva stru_180142A5C>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeString, rva algn_180015DBA, \
                                  rva stru_180142AB8>
                RUNTIME_FUNCTION <rva sub_180015DC0, rva algn_180015F4F, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva RtlPrefixUnicodeString, rva byte_180015FDD, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlCompareUnicodeStrings, rva algn_180016082, \
                                  rva stru_180142B14>
                RUNTIME_FUNCTION <rva RtlCompareUnicodeString, rva algn_180016159, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800161D0, rva algn_180016390, \
                                  rva stru_180142B38>
                RUNTIME_FUNCTION <rva RtlIntegerToChar, rva algn_180016496, \
                                  rva stru_180142B64>
                RUNTIME_FUNCTION <rva RtlIntegerToUnicodeString, rva algn_180016521, \
                                  rva stru_180142BA4>
                RUNTIME_FUNCTION <rva RtlCreateUnicodeStringFromAsciiz, \
                                  rva algn_1800165A8, rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1800165B0, rva byte_180016645, \
                                  rva stru_180142BB8>
                RUNTIME_FUNCTION <rva sub_18001664C, rva algn_180016753, \
                                  rva stru_180142BE8>
                RUNTIME_FUNCTION <rva RtlFreeUnicodeString, rva algn_180016784, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlOpenCurrentUser, rva byte_18001685D, \
                                  rva stru_180142C14>
                RUNTIME_FUNCTION <rva LdrGetDllHandle, rva algn_180016892, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva LdrGetDllHandleEx, rva algn_1800169B1, \
                                  rva stru_180142C28>
                RUNTIME_FUNCTION <rva sub_1800169B8, rva algn_180016A09, \
                                  rva stru_180142C58>
                RUNTIME_FUNCTION <rva LdrLoadDll, rva algn_180016B77, \
                                  rva stru_180142C78>
                RUNTIME_FUNCTION <rva RtlDosPathNameToRelativeNtPathName_U, \
                                  rva algn_180016BA7, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlGetNtSystemRoot, rva algn_180016BCC, \
                                  rva stru_180142CA4>
                RUNTIME_FUNCTION <rva RtlDosPathNameToNtPathName_U_WithStatus, \
                                  rva byte_180016BFF, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180016C08, rva algn_180016DCD, \
                                  rva stru_180142CBC>
                RUNTIME_FUNCTION <rva RtlxOemStringToUnicodeSize, rva algn_180016E03, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlMultiByteToUnicodeSize, rva byte_180016E45, \
                                  rva stru_180142CF4>
                RUNTIME_FUNCTION <rva sub_180016E4C, rva byte_180016EDB, \
                                  rva stru_180142D0C>
                RUNTIME_FUNCTION <rva sub_180016EE4, rva byte_1800170FF, \
                                  rva stru_180142D20>
                RUNTIME_FUNCTION <rva sub_180017108, rva algn_180017266, \
                                  rva stru_180142D48>
                RUNTIME_FUNCTION <rva RtlAppendUnicodeStringToString, \
                                  rva byte_1800172FF, rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlDosPathNameToNtPathName_U, \
                                  rva byte_180017334, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18001733C, rva algn_180017443, \
                                  rva stru_180142D70>
                RUNTIME_FUNCTION <rva LdrShutdownThread, rva algn_180017731, \
                                  rva stru_180142D8C>
                RUNTIME_FUNCTION <rva sub_180017738, rva algn_180017988, \
                                  rva stru_180142E08>
                RUNTIME_FUNCTION <rva sub_180017990, rva algn_180017BD9, \
                                  rva stru_180142E80>
                RUNTIME_FUNCTION <rva sub_180017BE0, rva algn_18001957A, \
                                  rva stru_180142EA8>
                RUNTIME_FUNCTION <rva RtlAnsiStringToUnicodeString, \
                                  rva algn_1800197A1, rva stru_180142EF4>
                RUNTIME_FUNCTION <rva RtlDeactivateActivationContextUnsafeFast, \
                                  rva algn_1800198F5, rva stru_180142F3C>
                RUNTIME_FUNCTION <rva RtlActivateActivationContextUnsafeFast, \
                                  rva byte_1800199B6, rva stru_180142F74>
                RUNTIME_FUNCTION <rva sub_1800199BC, rva algn_180019A71, \
                                  rva stru_180142F94>
                RUNTIME_FUNCTION <rva sub_180019A78, rva algn_180019B58, \
                                  rva stru_180142FD8>
                RUNTIME_FUNCTION <rva sub_180019B88, rva algn_180019C36, \
                                  rva stru_180143008>
                RUNTIME_FUNCTION <rva RtlDosSearchPath_Ustr, rva algn_18001A1E7, \
                                  rva stru_180143024>
                RUNTIME_FUNCTION <rva sub_18001A1F0, rva algn_18001A30C, \
                                  rva stru_180143058>
                RUNTIME_FUNCTION <rva RtlReleaseRelativeName, rva algn_18001A359, \
                                  rva stru_180143078>
                RUNTIME_FUNCTION <rva sub_18001A360, rva byte_18001A50E, \
                                  rva stru_180143094>
                RUNTIME_FUNCTION <rva sub_18001A514, rva byte_18001A6C4, \
                                  rva stru_1801430BC>
                RUNTIME_FUNCTION <rva sub_18001A6CC, rva byte_18001A71F, \
                                  rva stru_1801430D8>
                RUNTIME_FUNCTION <rva sub_18001A728, rva algn_18001A831, \
                                  rva stru_1801430F8>
                RUNTIME_FUNCTION <rva sub_18001A838, rva byte_18001A8A5, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_18001A8AC, rva algn_18001A928, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18001A930, rva byte_18001A96D, \
                                  rva stru_180143110>
                RUNTIME_FUNCTION <rva sub_18001A974, rva algn_18001A9D4, \
                                  rva stru_180143134>
                RUNTIME_FUNCTION <rva RtlDosApplyFileIsolationRedirection_Ustr, \
                                  rva algn_18001AED2, rva stru_180143144>
                RUNTIME_FUNCTION <rva RtlDosPathNameToRelativeNtPathName_U_WithStatus,\
                                  rva byte_18001AF3E, rva stru_180143134>
                RUNTIME_FUNCTION <rva sub_18001AF50, rva loc_18001AFB3, \
                                  rva stru_180143178>
                RUNTIME_FUNCTION <rva loc_18001AFB3, rva loc_18001B228, \
                                  rva stru_180143190>
                RUNTIME_FUNCTION <rva loc_18001B228, rva loc_18001B288, \
                                  rva stru_1801431B0>
                RUNTIME_FUNCTION <rva loc_18001B288, rva loc_18001B291, \
                                  rva stru_1801431C0>
                RUNTIME_FUNCTION <rva loc_18001B291, rva loc_18001B333, \
                                  rva stru_1801431D8>
                RUNTIME_FUNCTION <rva loc_18001B333, rva loc_18001B346, \
                                  rva stru_1801431F8>
                RUNTIME_FUNCTION <rva loc_18001B346, rva byte_18001B41B, \
                                  rva stru_180143208>
                RUNTIME_FUNCTION <rva sub_18001B430, rva byte_18001BE7C, \
                                  rva stru_180143248>
                RUNTIME_FUNCTION <rva sub_18001BE90, rva byte_18001C1A3, \
                                  rva stru_180143294>
                RUNTIME_FUNCTION <rva sub_18001C2B4, rva algn_18001C6AB, \
                                  rva stru_1801432B8>
                RUNTIME_FUNCTION <rva RtlFindActivationContextSectionString, \
                                  rva byte_18001CA0F, rva stru_1801432EC>
                RUNTIME_FUNCTION <rva sub_18001CA18, rva algn_18001CCA2, \
                                  rva stru_180143318>
                RUNTIME_FUNCTION <rva RtlHashUnicodeString, rva loc_18001CCEB, \
                                  rva stru_18014334C>
                RUNTIME_FUNCTION <rva loc_18001CCEB, rva loc_18001CD45, \
                                  rva stru_180143354>
                RUNTIME_FUNCTION <rva loc_18001CD45, rva loc_18001CD6A, \
                                  rva stru_18014336C>
                RUNTIME_FUNCTION <rva loc_18001CD6A, rva algn_18001CD79, \
                                  rva stru_18014337C>
                RUNTIME_FUNCTION <rva RtlFindActivationContextSectionGuid, \
                                  rva algn_18001CF58, rva stru_1801433BC>
                RUNTIME_FUNCTION <rva sub_18001CF60, rva byte_18001D0F4, \
                                  rva stru_1801433E8>
                RUNTIME_FUNCTION <rva sub_18001D0FC, rva algn_18001D272, \
                                  rva stru_180143414>
                RUNTIME_FUNCTION <rva sub_18001D278, rva byte_18001D2EB, \
                                  rva stru_180143440>
                RUNTIME_FUNCTION <rva sub_18001D2F4, rva algn_18001D389, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva RtlFindCharInUnicodeString, rva byte_18001D5E4, \
                                  rva stru_180143464>
                RUNTIME_FUNCTION <rva sub_18001D5EC, rva algn_18001D6EA, \
                                  rva stru_180143494>
                RUNTIME_FUNCTION <rva sub_18001D6F0, rva algn_18001D7EC, \
                                  rva stru_180142D0C>
                RUNTIME_FUNCTION <rva RtlGetFullPathName_UEx, rva algn_18001D886, \
                                  rva stru_1801434C4>
                RUNTIME_FUNCTION <rva RtlGetFullPathName_UstrEx, rva algn_18001DB1A, \
                                  rva stru_1801434D8>
                RUNTIME_FUNCTION <rva sub_18001DB20, rva byte_18001DBE3, \
                                  rva stru_180143500>
                RUNTIME_FUNCTION <rva sub_18001DBEC, rva byte_18001DD5B, \
                                  rva stru_18014352C>
                RUNTIME_FUNCTION <rva sub_18001DD64, rva byte_18001E1A5, \
                                  rva stru_18014355C>
                RUNTIME_FUNCTION <rva sub_18001E1AC, rva byte_18001E254, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_18001E25C, rva algn_18001E2D1, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_18001E2D8, rva algn_18001E938, \
                                  rva stru_180143588>
                RUNTIME_FUNCTION <rva sub_18001E940, rva algn_18001EC21, \
                                  rva stru_1801435B4>
                RUNTIME_FUNCTION <rva sub_18001EC28, rva byte_18001EEAC, \
                                  rva stru_1801435E0>
                RUNTIME_FUNCTION <rva sub_18001EEB4, rva algn_18001F2D1, \
                                  rva stru_180143608>
                RUNTIME_FUNCTION <rva sub_18001F2D8, rva algn_18001F391, \
                                  rva stru_180143634>
                RUNTIME_FUNCTION <rva sub_18001F3EC, rva byte_18001F53B, \
                                  rva stru_180143658>
                RUNTIME_FUNCTION <rva sub_18001F544, rva byte_18001F595, \
                                  rva stru_180143680>
                RUNTIME_FUNCTION <rva sub_18001F59C, rva algn_18001F628, \
                                  rva stru_1801427CC>
                RUNTIME_FUNCTION <rva sub_18001F630, rva byte_18001FA0C, \
                                  rva stru_18014369C>
                RUNTIME_FUNCTION <rva sub_18001FA14, rva algn_18001FC79, \
                                  rva stru_1801436C4>
                RUNTIME_FUNCTION <rva sub_18001FC80, rva algn_18001FD2F, \
                                  rva stru_18014370C>
                RUNTIME_FUNCTION <rva RtlDeriveCapabilitySidsFromName, \
                                  rva byte_18001FEF0, rva stru_180143730>
                RUNTIME_FUNCTION <rva sub_18001FEF8, rva algn_1800200C6, \
                                  rva stru_18014375C>
                RUNTIME_FUNCTION <rva sub_1800200D0, rva loc_1800200F5, \
                                  rva stru_180143788>
                RUNTIME_FUNCTION <rva loc_1800200F5, rva loc_180020102, \
                                  rva stru_180143798>
                RUNTIME_FUNCTION <rva loc_180020102, rva loc_1800201F9, \
                                  rva stru_1801437B0>
                RUNTIME_FUNCTION <rva loc_1800201F9, rva loc_18002038F, \
                                  rva stru_1801437C8>
                RUNTIME_FUNCTION <rva loc_18002038F, rva loc_18002039B, \
                                  rva stru_1801437DC>
                RUNTIME_FUNCTION <rva loc_18002039B, rva loc_1800203E7, \
                                  rva stru_1801437EC>
                RUNTIME_FUNCTION <rva loc_1800203E7, rva loc_180020424, \
                                  rva stru_180143808>
                RUNTIME_FUNCTION <rva loc_180020424, rva algn_180020448, \
                                  rva stru_180143828>
                RUNTIME_FUNCTION <rva sub_180020450, rva algn_1800204F1, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlSetThreadWorkOnBehalfTicket, \
                                  rva algn_180020565, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlSetThreadSubProcessTag, rva algn_1800205E9, \
                                  rva stru_180143890>
                RUNTIME_FUNCTION <rva sub_1800205F0, rva algn_180020678, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_1800206C0, rva algn_180020796, \
                                  rva stru_1801438B4>
                RUNTIME_FUNCTION <rva sub_1800207AC, rva algn_1800207D8, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180020824, rva algn_1800208E1, \
                                  rva stru_1801438CC>
                RUNTIME_FUNCTION <rva sub_1800208E8, rva algn_180020A19, \
                                  rva stru_1801438F0>
                RUNTIME_FUNCTION <rva sub_180020A20, rva algn_180020BB5, \
                                  rva stru_180143914>
                RUNTIME_FUNCTION <rva RtlInitializeCriticalSectionEx, \
                                  rva loc_180020C3D, rva stru_180143940>
                RUNTIME_FUNCTION <rva loc_180020C3D, rva byte_180020CCE, \
                                  rva stru_180143950>
                RUNTIME_FUNCTION <rva byte_180020CCE, rva loc_180020CCF, \
                                  rva stru_180143964>
                RUNTIME_FUNCTION <rva loc_180020CCF, rva loc_180020CD6, \
                                  rva stru_180143974>
                RUNTIME_FUNCTION <rva loc_180020CD6, rva loc_180020CEC, \
                                  rva stru_180143988>
                RUNTIME_FUNCTION <rva loc_180020CEC, rva algn_180020D03, \
                                  rva stru_180143998>
                RUNTIME_FUNCTION <rva RtlEqualUnicodeString, rva byte_180020DD5, \
                                  rva stru_1801439D0>
                RUNTIME_FUNCTION <rva sub_180020DDC, rva byte_180020FBE, \
                                  rva stru_1801439F0>
                RUNTIME_FUNCTION <rva sub_180020FD0, rva byte_180021134, \
                                  rva stru_180143A1C>
                RUNTIME_FUNCTION <rva sub_18002113C, rva algn_1800212E9, \
                                  rva stru_180143A64>
                RUNTIME_FUNCTION <rva sub_1800212F0, rva byte_1800213ED, \
                                  rva stru_180143A8C>
                RUNTIME_FUNCTION <rva LdrAccessResource_0, rva byte_18002168F, \
                                  rva stru_180143AB8>
                RUNTIME_FUNCTION <rva RtlAcquireSRWLockShared, rva loc_180021792, \
                                  rva stru_180143AE4>
                RUNTIME_FUNCTION <rva loc_180021792, rva loc_1800217D7, \
                                  rva stru_180143AF0>
                RUNTIME_FUNCTION <rva loc_1800217D7, rva algn_18002190E, \
                                  rva stru_180143B04>
                RUNTIME_FUNCTION <rva RtlReleaseSRWLockShared, rva byte_1800219DC, \
                                  rva stru_180143B2C>
                RUNTIME_FUNCTION <rva sub_1800219E4, rva byte_18002293E, \
                                  rva stru_180143B44>
                RUNTIME_FUNCTION <rva sub_180022944, rva algn_1800229F8, \
                                  rva stru_180143BF4>
                RUNTIME_FUNCTION <rva sub_180022A00, rva byte_180022BA6, \
                                  rva stru_180143C10>
                RUNTIME_FUNCTION <rva sub_180022BAC, rva byte_180022DF0, \
                                  rva stru_180143C3C>
                RUNTIME_FUNCTION <rva sub_180022DF8, rva algn_180022E64, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180022E90, rva algn_18002302E, \
                                  rva stru_180143C68>
                RUNTIME_FUNCTION <rva sub_180023040, rva algn_18002316D, \
                                  rva stru_180143C90>
                RUNTIME_FUNCTION <rva sub_180023180, rva loc_1800231C0, \
                                  rva stru_180143CB4>
                RUNTIME_FUNCTION <rva loc_1800231C0, rva byte_18002331E, \
                                  rva stru_180143CC8>
                RUNTIME_FUNCTION <rva byte_18002331E, rva loc_18002331F, \
                                  rva stru_180143CE0>
                RUNTIME_FUNCTION <rva loc_18002331F, rva byte_18002356C, \
                                  rva stru_180143CF0>
                RUNTIME_FUNCTION <rva sub_180023574, rva algn_180023599, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800235A0, rva algn_180023639, \
                                  rva stru_180143D30>
                RUNTIME_FUNCTION <rva RtlReAllocateHeap, rva byte_1800236BF, \
                                  rva stru_180143D48>
                RUNTIME_FUNCTION <rva sub_1800236C8, rva algn_180023710, \
                                  rva stru_180143D6C>
                RUNTIME_FUNCTION <rva sub_180023720, rva byte_18002397F, \
                                  rva stru_180143D94>
                RUNTIME_FUNCTION <rva sub_180023990, rva loc_1800239FA, \
                                  rva stru_180143DC4>
                RUNTIME_FUNCTION <rva loc_1800239FA, rva loc_180023F48, \
                                  rva stru_180143DD8>
                RUNTIME_FUNCTION <rva loc_180023F48, rva loc_180023F59, \
                                  rva stru_180143DF0>
                RUNTIME_FUNCTION <rva loc_180023F59, rva algn_180024154, \
                                  rva stru_180143E00>
                RUNTIME_FUNCTION <rva RtlSizeHeap, rva loc_180024198, \
                                  rva stru_180143E40>
                RUNTIME_FUNCTION <rva loc_180024198, rva loc_1800241D6, \
                                  rva stru_180143E54>
                RUNTIME_FUNCTION <rva loc_1800241D6, rva algn_1800243CB, \
                                  rva stru_180143E68>
                RUNTIME_FUNCTION <rva sub_1800243E0, rva loc_180024541, \
                                  rva stru_180143EAC>
                RUNTIME_FUNCTION <rva loc_180024541, rva loc_180024604, \
                                  rva stru_180143EC0>
                RUNTIME_FUNCTION <rva loc_180024604, rva loc_18002462D, \
                                  rva stru_180143ED4>
                RUNTIME_FUNCTION <rva loc_18002462D, rva loc_180024640, \
                                  rva stru_180143EE4>
                RUNTIME_FUNCTION <rva loc_180024640, rva loc_18002467D, \
                                  rva stru_180143EF8>
                RUNTIME_FUNCTION <rva loc_18002467D, rva loc_180024684, \
                                  rva stru_180143F08>
                RUNTIME_FUNCTION <rva loc_180024684, rva algn_1800246CC, \
                                  rva stru_180143F1C>
                RUNTIME_FUNCTION <rva RtlFreeHeap, rva algn_18002480F, \
                                  rva stru_180143F60>
                RUNTIME_FUNCTION <rva sub_180024820, rva byte_18002483D, \
                                  rva stru_180143F80>
                RUNTIME_FUNCTION <rva sub_180024880, rva algn_18002490B, \
                                  rva stru_180143F98>
                RUNTIME_FUNCTION <rva sub_180024920, rva algn_180024FD0, \
                                  rva stru_180143FC0>
                RUNTIME_FUNCTION <rva sub_180024FE0, rva algn_180025708, \
                                  rva stru_180143FE8>
                RUNTIME_FUNCTION <rva sub_180025710, rva algn_180025BF8, \
                                  rva stru_180144010>
                RUNTIME_FUNCTION <rva sub_180025C00, rva algn_1800271C6, \
                                  rva stru_180144040>
                RUNTIME_FUNCTION <rva sub_1800271D0, rva loc_18002723A, \
                                  rva stru_180144080>
                RUNTIME_FUNCTION <rva loc_18002723A, rva loc_1800272E3, \
                                  rva stru_180144094>
                RUNTIME_FUNCTION <rva loc_1800272E3, rva loc_1800273D1, \
                                  rva stru_1801440A8>
                RUNTIME_FUNCTION <rva loc_1800273D1, rva byte_18002755C, \
                                  rva stru_1801440BC>
                RUNTIME_FUNCTION <rva byte_18002755C, rva loc_180027565, \
                                  rva stru_1801440CC>
                RUNTIME_FUNCTION <rva loc_180027565, rva loc_180027642, \
                                  rva stru_1801440DC>
                RUNTIME_FUNCTION <rva loc_180027642, rva loc_18002768E, \
                                  rva stru_1801440F0>
                RUNTIME_FUNCTION <rva loc_18002768E, rva loc_1800276A2, \
                                  rva stru_180144108>
                RUNTIME_FUNCTION <rva loc_1800276A2, rva loc_180027709, \
                                  rva stru_18014411C>
                RUNTIME_FUNCTION <rva loc_180027709, rva byte_180027826, \
                                  rva stru_180144134>
                RUNTIME_FUNCTION <rva sub_18002782C, rva byte_1800279BD, \
                                  rva stru_180144198>
                RUNTIME_FUNCTION <rva sub_1800279F0, rva loc_180027A52, \
                                  rva stru_1801441C4>
                RUNTIME_FUNCTION <rva loc_180027A52, rva loc_180027AAA, \
                                  rva stru_1801441D4>
                RUNTIME_FUNCTION <rva loc_180027AAA, rva loc_180027B60, \
                                  rva stru_1801441E8>
                RUNTIME_FUNCTION <rva loc_180027B60, rva loc_180027BCE, \
                                  rva stru_180144200>
                RUNTIME_FUNCTION <rva loc_180027BCE, rva loc_180027BD6, \
                                  rva stru_180144210>
                RUNTIME_FUNCTION <rva loc_180027BD6, rva algn_180027C6B, \
                                  rva stru_180144220>
                RUNTIME_FUNCTION <rva algn_180027C6B, rva loc_180027C6C, \
                                  rva stru_180144234>
                RUNTIME_FUNCTION <rva loc_180027C6C, rva loc_180027CF6, \
                                  rva stru_180144244>
                RUNTIME_FUNCTION <rva loc_180027CF6, rva loc_180027D16, \
                                  rva stru_180144258>
                RUNTIME_FUNCTION <rva loc_180027D16, rva algn_180027DB5, \
                                  rva stru_180144274>
                RUNTIME_FUNCTION <rva RtlRbInsertNodeEx, rva loc_180027E43, \
                                  rva stru_1801442DC>
                RUNTIME_FUNCTION <rva loc_180027E43, rva loc_180027E9D, \
                                  rva stru_1801442E4>
                RUNTIME_FUNCTION <rva loc_180027E9D, rva loc_180028095, \
                                  rva stru_180144300>
                RUNTIME_FUNCTION <rva loc_180028095, rva loc_1800280A9, \
                                  rva stru_18014431C>
                RUNTIME_FUNCTION <rva loc_1800280A9, rva loc_180028102, \
                                  rva stru_18014432C>
                RUNTIME_FUNCTION <rva loc_180028102, rva loc_18002812B, \
                                  rva stru_180144348>
                RUNTIME_FUNCTION <rva loc_18002812B, rva byte_1800281DC, \
                                  rva stru_180144358>
                RUNTIME_FUNCTION <rva sub_1800281F0, rva algn_1800284F1, \
                                  rva stru_1801443D4>
                RUNTIME_FUNCTION <rva sub_180028500, rva loc_1800285B3, \
                                  rva stru_1801443FC>
                RUNTIME_FUNCTION <rva loc_1800285B3, rva loc_1800285F7, \
                                  rva stru_180144410>
                RUNTIME_FUNCTION <rva loc_1800285F7, rva loc_180028A2F, \
                                  rva stru_180144428>
                RUNTIME_FUNCTION <rva loc_180028A2F, rva loc_180028A43, \
                                  rva stru_18014443C>
                RUNTIME_FUNCTION <rva loc_180028A43, rva loc_180028A60, \
                                  rva stru_18014444C>
                RUNTIME_FUNCTION <rva loc_180028A60, rva loc_180028CB9, \
                                  rva stru_18014445C>
                RUNTIME_FUNCTION <rva loc_180028CB9, rva algn_180028CC6, \
                                  rva stru_180144478>
                RUNTIME_FUNCTION <rva sub_180028CD0, rva algn_180029093, \
                                  rva stru_1801444BC>
                RUNTIME_FUNCTION <rva RtlAcquireSRWLockExclusive, rva loc_1800290C0, \
                                  rva stru_1801444E4>
                RUNTIME_FUNCTION <rva loc_1800290C0, rva loc_1800291EB, \
                                  rva stru_1801444F0>
                RUNTIME_FUNCTION <rva loc_1800291EB, rva algn_180029272, \
                                  rva stru_18014450C>
                RUNTIME_FUNCTION <rva sub_180029280, rva algn_180029AB2, \
                                  rva stru_180144544>
                RUNTIME_FUNCTION <rva sub_180029AC0, rva byte_180029B60, \
                                  rva stru_18014456C>
                RUNTIME_FUNCTION <rva sub_180029B70, rva loc_180029BD7, \
                                  rva stru_180144590>
                RUNTIME_FUNCTION <rva loc_180029BD7, rva loc_180029F0B, \
                                  rva stru_1801445A0>
                RUNTIME_FUNCTION <rva loc_180029F0B, rva loc_180029F17, \
                                  rva stru_1801445C0>
                RUNTIME_FUNCTION <rva loc_180029F17, rva algn_18002A093, \
                                  rva stru_1801445D0>
                RUNTIME_FUNCTION <rva RtlRbRemoveNode, rva loc_18002A0CA, \
                                  rva stru_180144620>
                RUNTIME_FUNCTION <rva loc_18002A0CA, rva algn_18002A1D3, \
                                  rva stru_18014462C>
                RUNTIME_FUNCTION <rva algn_18002A1D3, rva loc_18002A1F6, \
                                  rva stru_180144654>
                RUNTIME_FUNCTION <rva loc_18002A1F6, rva algn_18002A98C, \
                                  rva stru_180144664>
                RUNTIME_FUNCTION <rva RtlAllocateHeap, rva algn_18002AA1A, \
                                  rva stru_1801446B4>
                RUNTIME_FUNCTION <rva sub_18002AA20, rva byte_18002B640, \
                                  rva stru_1801446D4>
                RUNTIME_FUNCTION <rva sub_18002B650, rva algn_18002C267, \
                                  rva stru_1801446F0>
                RUNTIME_FUNCTION <rva sub_18002C270, rva byte_18002C2A0, \
                                  rva stru_180144718>
                RUNTIME_FUNCTION <rva sub_18002C2B0, rva loc_18002C2F0, \
                                  rva stru_180144740>
                RUNTIME_FUNCTION <rva loc_18002C2F0, rva byte_18002C690, \
                                  rva stru_180144758>
                RUNTIME_FUNCTION <rva byte_18002C690, rva loc_18002C691, \
                                  rva stru_18014476C>
                RUNTIME_FUNCTION <rva loc_18002C691, rva algn_18002D158, \
                                  rva stru_18014477C>
                RUNTIME_FUNCTION <rva sub_18002D160, rva byte_18002F21D, \
                                  rva stru_1801447A4>
                RUNTIME_FUNCTION <rva RtlLeaveCriticalSection, rva algn_18002F379, \
                                  rva stru_1801447DC>
                RUNTIME_FUNCTION <rva sub_18002F380, rva algn_18002F68A, \
                                  rva stru_1801447FC>
                RUNTIME_FUNCTION <rva sub_18002F690, rva byte_18002FA0E, \
                                  rva stru_180144824>
                RUNTIME_FUNCTION <rva sub_18002FA14, rva algn_18002FA96, \
                                  rva stru_18014484C>
                RUNTIME_FUNCTION <rva RtlEnterCriticalSection, rva algn_18002FAE4, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18002FAF0, rva algn_18002FDB0, \
                                  rva stru_180144874>
                RUNTIME_FUNCTION <rva LdrGetProcedureAddressForCaller, \
                                  rva byte_1800302DE, rva stru_18014489C>
                RUNTIME_FUNCTION <rva sub_1800302E4, rva byte_1800303EB, \
                                  rva stru_1801448BC>
                RUNTIME_FUNCTION <rva sub_1800303F4, rva algn_1800305FA, \
                                  rva stru_1801448E0>
                RUNTIME_FUNCTION <rva RtlUnwindEx, rva algn_180030BCA, \
                                  rva stru_180144900>
                RUNTIME_FUNCTION <rva sub_180030BD0, rva algn_180030DD4, \
                                  rva stru_180144924>
                RUNTIME_FUNCTION <rva RtlVirtualUnwind, rva byte_180030E9C, \
                                  rva stru_180144944>
                RUNTIME_FUNCTION <rva sub_180030EB0, rva loc_180030F25, \
                                  rva stru_18014495C>
                RUNTIME_FUNCTION <rva loc_180030F25, rva byte_180031078, \
                                  rva stru_180144970>
                RUNTIME_FUNCTION <rva byte_180031078, rva loc_180031079, \
                                  rva stru_180144984>
                RUNTIME_FUNCTION <rva loc_180031079, rva loc_180031134, \
                                  rva stru_180144994>
                RUNTIME_FUNCTION <rva loc_180031134, rva loc_180031145, \
                                  rva stru_1801449A8>
                RUNTIME_FUNCTION <rva loc_180031145, rva loc_1800313F0, \
                                  rva stru_1801449B8>
                RUNTIME_FUNCTION <rva loc_1800313F0, rva loc_18003142B, \
                                  rva stru_1801449CC>
                RUNTIME_FUNCTION <rva loc_18003142B, rva algn_180031499, \
                                  rva stru_1801449DC>
                RUNTIME_FUNCTION <rva sub_1800314A0, rva algn_180031894, \
                                  rva stru_180144A14>
                RUNTIME_FUNCTION <rva sub_1800318A0, rva algn_1800321BA, \
                                  rva stru_180144A3C>
                RUNTIME_FUNCTION <rva sub_1800321C0, rva loc_18003220C, \
                                  rva stru_180144A7C>
                RUNTIME_FUNCTION <rva loc_18003220C, rva algn_18003238F, \
                                  rva stru_180144A94>
                RUNTIME_FUNCTION <rva algn_18003238F, rva loc_180032390, \
                                  rva stru_180144AA8>
                RUNTIME_FUNCTION <rva loc_180032390, rva algn_1800323E7, \
                                  rva stru_180144AB8>
                RUNTIME_FUNCTION <rva sub_1800323F0, rva algn_180032918, \
                                  rva stru_180144AE0>
                RUNTIME_FUNCTION <rva sub_180032920, rva byte_180032AC0, \
                                  rva stru_180144B28>
                RUNTIME_FUNCTION <rva RtlImageNtHeaderEx, rva algn_180032BCC, \
                                  rva stru_180144B50>
                RUNTIME_FUNCTION <rva RtlLookupFunctionEntry, rva loc_180032C09, \
                                  rva stru_180144B88>
                RUNTIME_FUNCTION <rva loc_180032C09, rva loc_180032C0E, \
                                  rva stru_180144B98>
                RUNTIME_FUNCTION <rva loc_180032C0E, rva loc_180032CD5, \
                                  rva stru_180144BAC>
                RUNTIME_FUNCTION <rva loc_180032CD5, rva algn_180032D07, \
                                  rva stru_180144BC0>
                RUNTIME_FUNCTION <rva algn_180032D07, rva loc_180032D08, \
                                  rva stru_180144BD0>
                RUNTIME_FUNCTION <rva loc_180032D08, rva loc_180032D3E, \
                                  rva stru_180144BE0>
                RUNTIME_FUNCTION <rva loc_180032D3E, rva loc_180032DC8, \
                                  rva stru_180144BF8>
                RUNTIME_FUNCTION <rva loc_180032DC8, rva loc_180032E25, \
                                  rva stru_180144C08>
                RUNTIME_FUNCTION <rva loc_180032E25, rva loc_180032F0F, \
                                  rva stru_180144C1C>
                RUNTIME_FUNCTION <rva loc_180032F0F, rva loc_180032F22, \
                                  rva stru_180144C2C>
                RUNTIME_FUNCTION <rva loc_180032F22, rva algn_180032F30, \
                                  rva stru_180144C44>
                RUNTIME_FUNCTION <rva sub_180032F40, rva loc_180032F73, \
                                  rva stru_180144C58>
                RUNTIME_FUNCTION <rva loc_180032F73, rva loc_180032FAD, \
                                  rva stru_180144C6C>
                RUNTIME_FUNCTION <rva loc_180032FAD, rva loc_1800330B0, \
                                  rva stru_180144C80>
                RUNTIME_FUNCTION <rva loc_1800330B0, rva loc_180033102, \
                                  rva stru_180144C90>
                RUNTIME_FUNCTION <rva loc_180033102, rva loc_18003317F, \
                                  rva stru_180144CA4>
                RUNTIME_FUNCTION <rva loc_18003317F, rva loc_1800332B7, \
                                  rva stru_180144CB4>
                RUNTIME_FUNCTION <rva loc_1800332B7, rva loc_1800332C8, \
                                  rva stru_180144CC8>
                RUNTIME_FUNCTION <rva loc_1800332C8, rva loc_1800332D9, \
                                  rva stru_180144CD8>
                RUNTIME_FUNCTION <rva loc_1800332D9, rva algn_1800332E1, \
                                  rva stru_180144CEC>
                RUNTIME_FUNCTION <rva sub_1800332E8, rva byte_1800334DF, \
                                  rva stru_180144D20>
                RUNTIME_FUNCTION <rva sub_1800334E8, rva algn_180033515, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180033544, rva byte_1800335B0, \
                                  rva stru_18014124C>
                RUNTIME_FUNCTION <rva sub_1800335B8, rva byte_180033766, \
                                  rva stru_180144D3C>
                RUNTIME_FUNCTION <rva sub_18003376C, rva byte_18003383F, \
                                  rva stru_180144D74>
                RUNTIME_FUNCTION <rva sub_180033848, rva algn_180033A8B, \
                                  rva stru_180144D88>
                RUNTIME_FUNCTION <rva sub_180033AE4, rva byte_180033B5F, \
                                  rva stru_180144DB8>
                RUNTIME_FUNCTION <rva sub_180033B68, rva byte_180033BC3, \
                                  rva stru_180144DE4>
                RUNTIME_FUNCTION <rva sub_180033BCC, rva byte_180034880, \
                                  rva stru_180144DFC>
                RUNTIME_FUNCTION <rva sub_180034888, rva algn_180034A3A, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva RtlPcToFileHeader, rva algn_180034A8A, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_180034A90, rva byte_180034BCE, \
                                  rva stru_180144E38>
                RUNTIME_FUNCTION <rva sub_180034BD4, rva algn_180034C58, \
                                  rva stru_180144E54>
                RUNTIME_FUNCTION <rva LdrRscIsTypeExist, rva algn_180034E91, \
                                  rva stru_180144E64>
                RUNTIME_FUNCTION <rva LdrLoadAlternateResourceModuleEx, \
                                  rva algn_1800356BA, rva stru_180144EA4>
                RUNTIME_FUNCTION <rva sub_1800356C0, rva byte_180035BBD, \
                                  rva stru_180144F10>
                RUNTIME_FUNCTION <rva RtlImageNtHeader, rva algn_180035BF9, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180035C00, rva algn_180035C9A, \
                                  rva stru_180144F44>
                RUNTIME_FUNCTION <rva RtlGetThreadPreferredUILanguages, \
                                  rva byte_180036310, rva stru_180144F50>
                RUNTIME_FUNCTION <rva sub_180036318, rva algn_180036485, \
                                  rva stru_180144F78>
                RUNTIME_FUNCTION <rva RtlpCreateProcessRegistryInfo, \
                                  rva algn_180036510, rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlCheckTokenMembershipEx, rva byte_180036815, \
                                  rva stru_180144F90>
                RUNTIME_FUNCTION <rva sub_18003681C, rva byte_180036A24, \
                                  rva stru_180144FC4>
                RUNTIME_FUNCTION <rva sub_180036A2C, rva byte_180036AE5, \
                                  rva stru_180144FEC>
                RUNTIME_FUNCTION <rva sub_180036AEC, rva algn_180036C32, \
                                  rva stru_18014500C>
                RUNTIME_FUNCTION <rva RtlFormatCurrentUserKeyPath, rva algn_180036D46,\
                                  rva stru_180145038>
                RUNTIME_FUNCTION <rva RtlLengthSidAsUnicodeString, rva algn_180036DA1,\
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180036DA8, rva byte_180036F86, \
                                  rva stru_180145064>
                RUNTIME_FUNCTION <rva sub_180036F8C, rva algn_18003724A, \
                                  rva stru_18014508C>
                RUNTIME_FUNCTION <rva RtlConvertSidToUnicodeString, \
                                  rva algn_180037435, rva stru_1801450B8>
                RUNTIME_FUNCTION <rva sub_180037440, rva byte_1800375BD, \
                                  rva stru_1801450EC>
                RUNTIME_FUNCTION <rva sub_1800375C4, rva algn_180037704, \
                                  rva stru_180145130>
                RUNTIME_FUNCTION <rva RtlValidAcl, rva algn_1800378FA, \
                                  rva stru_18014515C>
                RUNTIME_FUNCTION <rva RtlValidSid, rva byte_18003797F, \
                                  rva stru_18014518C>
                RUNTIME_FUNCTION <rva RtlAppendUnicodeToString, rva byte_180037A36, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180037A3C, rva algn_180037DCB, \
                                  rva stru_1801451A8>
                RUNTIME_FUNCTION <rva RtlEqualPrefixSid, rva algn_180037E98, \
                                  rva stru_1801451DC>
                RUNTIME_FUNCTION <rva sub_180037EF8, rva algn_180038018, \
                                  rva stru_1801451FC>
                RUNTIME_FUNCTION <rva sub_1800380D8, rva byte_1800381FF, \
                                  rva stru_180145230>
                RUNTIME_FUNCTION <rva sub_180038208, rva algn_180038239, \
                                  rva stru_18014524C>
                RUNTIME_FUNCTION <rva sub_180038240, rva algn_180038306, \
                                  rva stru_180145264>
                RUNTIME_FUNCTION <rva RtlEqualSid, rva byte_18003833D, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180038344, rva byte_18003850E, \
                                  rva stru_180145294>
                RUNTIME_FUNCTION <rva sub_180038514, rva algn_18003866A, \
                                  rva stru_1801452C8>
                RUNTIME_FUNCTION <rva sub_180038670, rva byte_18003896D, \
                                  rva stru_180145308>
                RUNTIME_FUNCTION <rva sub_180038974, rva byte_1800389B4, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800389BC, rva byte_180038A46, \
                                  rva stru_180145330>
                RUNTIME_FUNCTION <rva sub_180038A4C, rva byte_180038ABD, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlCreateUnicodeString, rva byte_180038B76, \
                                  rva stru_180145344>
                RUNTIME_FUNCTION <rva sub_180038B7C, rva algn_180039E97, \
                                  rva stru_18014537C>
                RUNTIME_FUNCTION <rva sub_180039EA0, rva byte_18003A08E, \
                                  rva stru_1801453AC>
                RUNTIME_FUNCTION <rva sub_18003A094, rva algn_18003A443, \
                                  rva stru_1801453DC>
                RUNTIME_FUNCTION <rva sub_18003A494, rva byte_18003A525, \
                                  rva stru_180145408>
                RUNTIME_FUNCTION <rva sub_18003A52C, rva algn_18003AA92, \
                                  rva stru_18014541C>
                RUNTIME_FUNCTION <rva sub_18003AA98, rva byte_18003AB6E, \
                                  rva stru_180145448>
                RUNTIME_FUNCTION <rva sub_18003AB74, rva byte_18003AC0C, \
                                  rva stru_180145470>
                RUNTIME_FUNCTION <rva sub_18003AC14, rva byte_18003ACB6, \
                                  rva stru_180145498>
                RUNTIME_FUNCTION <rva sub_18003ACBC, rva byte_18003AFA3, \
                                  rva stru_1801454B0>
                RUNTIME_FUNCTION <rva sub_18003AFAC, rva algn_18003B01A, \
                                  rva stru_1801454D4>
                RUNTIME_FUNCTION <rva RtlLCIDToCultureName, rva byte_18003B0FC, \
                                  rva stru_1801454F8>
                RUNTIME_FUNCTION <rva sub_18003B104, rva byte_18003B23D, \
                                  rva stru_180145508>
                RUNTIME_FUNCTION <rva sub_18003B244, rva byte_18003B27B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlLcidToLocaleName, rva algn_18003B452, \
                                  rva stru_180145534>
                RUNTIME_FUNCTION <rva sub_18003B458, rva algn_18003B4C9, \
                                  rva stru_180145564>
                RUNTIME_FUNCTION <rva sub_18003B528, rva algn_18003B621, \
                                  rva stru_180145588>
                RUNTIME_FUNCTION <rva sub_18003B628, rva byte_18003B78D, \
                                  rva stru_1801455B4>
                RUNTIME_FUNCTION <rva sub_18003B794, rva algn_18003B842, \
                                  rva stru_1801455DC>
                RUNTIME_FUNCTION <rva RtlCultureNameToLCID, rva byte_18003B9A6, \
                                  rva stru_180145608>
                RUNTIME_FUNCTION <rva sub_18003B9AC, rva algn_18003BA38, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlLocaleNameToLcid, rva algn_18003BB31, \
                                  rva stru_180145634>
                RUNTIME_FUNCTION <rva sub_18003BB38, rva algn_18003BBD2, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18003BC7C, rva byte_18003BCFC, \
                                  rva stru_180145658>
                RUNTIME_FUNCTION <rva sub_18003BD04, rva byte_18003BF15, \
                                  rva stru_180145670>
                RUNTIME_FUNCTION <rva sub_18003BF1C, rva algn_18003C033, \
                                  rva stru_180145698>
                RUNTIME_FUNCTION <rva sub_18003C098, rva algn_18003C1E9, \
                                  rva stru_1801456BC>
                RUNTIME_FUNCTION <rva sub_18003C1F0, rva algn_18003C262, \
                                  rva stru_1801456E8>
                RUNTIME_FUNCTION <rva sub_18003C268, rva byte_18003C2CB, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18003C2D4, rva algn_18003C486, \
                                  rva stru_180145708>
                RUNTIME_FUNCTION <rva RtlGetParentLocaleName, rva byte_18003C59F, \
                                  rva stru_18014573C>
                RUNTIME_FUNCTION <rva RtlpGetSystemDefaultUILanguage, \
                                  rva algn_18003C64A, rva stru_180145760>
                RUNTIME_FUNCTION <rva RtlCheckTokenCapability, rva algn_18003C8D5, \
                                  rva stru_180145780>
                RUNTIME_FUNCTION <rva RtlIsCapabilitySid, rva byte_18003C9C3, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18003C9CC, rva algn_18003CBA8, \
                                  rva stru_1801457B0>
                RUNTIME_FUNCTION <rva RtlGetNtProductType, rva algn_18003CC02, \
                                  rva stru_1801457C4>
                RUNTIME_FUNCTION <rva RtlGetSuiteMask, rva algn_18003CC2E, \
                                  rva stru_1801457E0>
                RUNTIME_FUNCTION <rva RtlSwitchedVVI, rva algn_18003CF79, \
                                  rva stru_1801457F8>
                RUNTIME_FUNCTION <rva sub_18003CF80, rva byte_18003D06F, \
                                  rva stru_18014582C>
                RUNTIME_FUNCTION <rva sub_18003D078, rva algn_18003D0DA, \
                                  rva stru_180145850>
                RUNTIME_FUNCTION <rva sub_18003D0E0, rva algn_18003D211, \
                                  rva stru_180145870>
                RUNTIME_FUNCTION <rva sub_18003D218, rva byte_18003D28F, \
                                  rva stru_18014589C>
                RUNTIME_FUNCTION <rva sub_18003D298, rva algn_18003D6E7, \
                                  rva stru_1801458C4>
                RUNTIME_FUNCTION <rva sub_18003D6F0, rva byte_18003D87F, \
                                  rva stru_1801458F8>
                RUNTIME_FUNCTION <rva sub_18003D888, rva byte_18003D99D, \
                                  rva stru_180145924>
                RUNTIME_FUNCTION <rva sub_18003D9A4, rva byte_18003DA0B, \
                                  rva stru_180145944>
                RUNTIME_FUNCTION <rva sub_18003DA14, rva byte_18003DB7B, \
                                  rva stru_18014596C>
                RUNTIME_FUNCTION <rva sub_18003DB84, rva byte_18003DC03, \
                                  rva stru_1801459A0>
                RUNTIME_FUNCTION <rva sub_18003DC0C, rva algn_18003DD6A, \
                                  rva stru_1801459C0>
                RUNTIME_FUNCTION <rva sub_18003DD70, rva byte_18003DDFC, \
                                  rva stru_1801459E8>
                RUNTIME_FUNCTION <rva sub_18003DE04, rva byte_18003E050, \
                                  rva stru_1801459F8>
                RUNTIME_FUNCTION <rva SbSelectProcedure, rva loc_18003E189, \
                                  rva stru_180145A1C>
                RUNTIME_FUNCTION <rva loc_18003E189, rva loc_18003E223, \
                                  rva stru_180145A38>
                RUNTIME_FUNCTION <rva loc_18003E223, rva loc_18003E260, \
                                  rva stru_180145A50>
                RUNTIME_FUNCTION <rva loc_18003E260, rva algn_18003E2AC, \
                                  rva stru_180145A64>
                RUNTIME_FUNCTION <rva sub_18003E2C0, rva loc_18003E31A, \
                                  rva stru_180145AB4>
                RUNTIME_FUNCTION <rva loc_18003E31A, rva loc_18003E377, \
                                  rva stru_180145AC8>
                RUNTIME_FUNCTION <rva loc_18003E377, rva loc_18003E44D, \
                                  rva stru_180145AE0>
                RUNTIME_FUNCTION <rva loc_18003E44D, rva loc_18003E45D, \
                                  rva stru_180145B00>
                RUNTIME_FUNCTION <rva loc_18003E45D, rva loc_18003E47A, \
                                  rva stru_180145B10>
                RUNTIME_FUNCTION <rva loc_18003E47A, rva loc_18003E4B6, \
                                  rva stru_180145B20>
                RUNTIME_FUNCTION <rva loc_18003E4B6, rva loc_18003E4CB, \
                                  rva stru_180145B48>
                RUNTIME_FUNCTION <rva loc_18003E4CB, rva algn_18003E4D7, \
                                  rva stru_180145B60>
                RUNTIME_FUNCTION <rva RtlGetVersion, rva byte_18003E65C, \
                                  rva stru_180145BF0>
                RUNTIME_FUNCTION <rva sub_18003E664, rva byte_18003E6BC, \
                                  rva stru_180145C14>
                RUNTIME_FUNCTION <rva sub_18003E6C4, rva byte_18003E72C, \
                                  rva stru_180145C34>
                RUNTIME_FUNCTION <rva sub_18003E734, rva algn_18003EBF7, \
                                  rva stru_180145C54>
                RUNTIME_FUNCTION <rva RtlSetThreadPreferredUILanguages2, \
                                  rva byte_18003EC3F, rva stru_180145C80>
                RUNTIME_FUNCTION <rva RtlSetThreadPreferredUILanguages, \
                                  rva byte_18003EF83, rva stru_180145CA4>
                RUNTIME_FUNCTION <rva sub_18003EF8C, rva byte_18003F03D, \
                                  rva stru_180145CCC>
                RUNTIME_FUNCTION <rva sub_18003F044, rva byte_18003F0B4, \
                                  rva stru_180145CF0>
                RUNTIME_FUNCTION <rva sub_18003F0BC, rva byte_18003F2AE, \
                                  rva stru_180145D14>
                RUNTIME_FUNCTION <rva sub_18003F2B4, rva byte_18003F3FD, \
                                  rva stru_180145D30>
                RUNTIME_FUNCTION <rva sub_18003F404, rva byte_18003F486, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_18003F48C, rva algn_18003F679, \
                                  rva stru_180145D64>
                RUNTIME_FUNCTION <rva sub_18003F680, rva byte_18003F7AD, \
                                  rva stru_180145D8C>
                RUNTIME_FUNCTION <rva sub_18003F7B4, rva algn_18003F84A, \
                                  rva stru_180145DB4>
                RUNTIME_FUNCTION <rva RtlpGetDeviceFamilyInfoEnum, rva algn_18003FA77,\
                                  rva stru_180145DC8>
                RUNTIME_FUNCTION <rva RtlCreateServiceSid, rva byte_18003FB90, \
                                  rva stru_180145DF8>
                RUNTIME_FUNCTION <rva sub_18003FB98, rva algn_18003FC84, \
                                  rva stru_180145E20>
                RUNTIME_FUNCTION <rva RtlCapabilityCheck, rva algn_180040006, \
                                  rva stru_180145E4C>
                RUNTIME_FUNCTION <rva RtlInitializeSidEx, rva algn_180040063, \
                                  rva stru_180145E80>
                RUNTIME_FUNCTION <rva RtlGetSystemTimePrecise, rva algn_180040152, \
                                  rva stru_180145E8C>
                RUNTIME_FUNCTION <rva RtlQueryPerformanceCounter, rva algn_180040204, \
                                  rva stru_180145EA8>
                RUNTIME_FUNCTION <rva RtlIsMultiSessionSku, rva algn_180040233, \
                                  rva stru_180145EC4>
                RUNTIME_FUNCTION <rva A_SHAFinal, rva byte_180040344, \
                                  rva stru_180145EDC>
                RUNTIME_FUNCTION <rva sub_18004034C, rva byte_18004046D, \
                                  rva stru_180145EF8>
                RUNTIME_FUNCTION <rva sub_180040498, rva byte_1800405B0, \
                                  rva stru_180145F14>
                RUNTIME_FUNCTION <rva sub_1800405B8, rva algn_180041061, \
                                  rva stru_180145F3C>
                RUNTIME_FUNCTION <rva A_SHAUpdate, rva algn_180041176, \
                                  rva stru_180145F60>
                RUNTIME_FUNCTION <rva sub_180041180, rva byte_18004235C, \
                                  rva stru_180145F88>
                RUNTIME_FUNCTION <rva sub_180042364, rva algn_180042459, \
                                  rva stru_180145FA0>
                RUNTIME_FUNCTION <rva RtlSubscribeWnfStateChangeNotification, \
                                  rva byte_1800424A4, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva sub_1800424AC, rva byte_1800425F3, \
                                  rva stru_180145FD4>
                RUNTIME_FUNCTION <rva sub_1800425FC, rva byte_180042774, \
                                  rva stru_180145FFC>
                RUNTIME_FUNCTION <rva sub_18004277C, rva algn_18004291A, \
                                  rva stru_180146020>
                RUNTIME_FUNCTION <rva sub_180042920, rva algn_180042A09, \
                                  rva stru_18014604C>
                RUNTIME_FUNCTION <rva EtwRegisterTraceGuidsW, rva algn_180042AE1, \
                                  rva stru_180146074>
                RUNTIME_FUNCTION <rva EtwEventSetInformation, rva byte_180042B3F, \
                                  rva stru_180146098>
                RUNTIME_FUNCTION <rva sub_180042B48, rva byte_180042C9D, \
                                  rva stru_1801460B0>
                RUNTIME_FUNCTION <rva sub_180042CA4, rva algn_180042E74, \
                                  rva stru_1801460E4>
                RUNTIME_FUNCTION <rva EtwEventRegister, rva byte_180042EC4, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180042ECC, rva algn_180043030, \
                                  rva stru_180146118>
                RUNTIME_FUNCTION <rva EtwNotificationRegister, rva algn_180043167, \
                                  rva stru_18014614C>
                RUNTIME_FUNCTION <rva sub_180043170, rva algn_18004327A, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180043280, rva byte_18004338D, \
                                  rva stru_180146174>
                RUNTIME_FUNCTION <rva sub_180043394, rva byte_18004345B, \
                                  rva stru_1801461AC>
                RUNTIME_FUNCTION <rva sub_180043464, rva byte_18004354B, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva sub_180043554, rva byte_18004381C, \
                                  rva stru_1801461D0>
                RUNTIME_FUNCTION <rva RtlRunOnceExecuteOnce, rva byte_18004392D, \
                                  rva stru_1801461FC>
                RUNTIME_FUNCTION <rva sub_180043934, rva byte_180043A9B, \
                                  rva stru_180146224>
                RUNTIME_FUNCTION <rva RtlRunOnceComplete, rva byte_180043B8B, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180043B94, rva algn_180043C91, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlRandomEx, rva algn_180043D58, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlGetInterruptTimePrecise, rva algn_180043E0A, \
                                  rva stru_180145E8C>
                RUNTIME_FUNCTION <rva RtlGetAppContainerParent, rva algn_180043ECE, \
                                  rva stru_180146254>
                RUNTIME_FUNCTION <rva RtlGetAppContainerNamedObjectPath, \
                                  rva algn_180044037, rva stru_180146278>
                RUNTIME_FUNCTION <rva sub_180044040, rva byte_180044586, \
                                  rva stru_1801462A8>
                RUNTIME_FUNCTION <rva sub_18004458C, rva byte_1800445FF, \
                                  rva stru_1801462DC>
                RUNTIME_FUNCTION <rva RtlGetAppContainerSidType, rva algn_1800446F0, \
                                  rva stru_1801462FC>
                RUNTIME_FUNCTION <rva RtlQueryResourcePolicy, rva byte_180044785, \
                                  rva stru_180146318>
                RUNTIME_FUNCTION <rva sub_18004478C, rva algn_1800447E2, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800447E8, rva byte_1800449C5, \
                                  rva stru_180146338>
                RUNTIME_FUNCTION <rva sub_180044A7C, rva byte_180044C65, \
                                  rva stru_18014635C>
                RUNTIME_FUNCTION <rva sub_180044C6C, rva algn_180044D01, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180044D08, rva byte_180044D55, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180044D5C, rva byte_180044E76, \
                                  rva stru_1801463A0>
                RUNTIME_FUNCTION <rva sub_180044E7C, rva byte_180044F1E, \
                                  rva stru_1801463C0>
                RUNTIME_FUNCTION <rva RtlQueryWnfStateData, rva byte_180044FEE, \
                                  rva stru_1801463D0>
                RUNTIME_FUNCTION <rva sub_180044FF4, rva algn_180045162, \
                                  rva stru_180146408>
                RUNTIME_FUNCTION <rva sub_180045170, rva algn_1800452A1, \
                                  rva stru_180146438>
                RUNTIME_FUNCTION <rva EtwDeliverDataBlock, rva byte_180045633, \
                                  rva stru_180146468>
                RUNTIME_FUNCTION <rva sub_18004563C, rva byte_180045726, \
                                  rva stru_180146490>
                RUNTIME_FUNCTION <rva sub_18004572C, rva algn_1800457EA, \
                                  rva stru_1801464B4>
                RUNTIME_FUNCTION <rva sub_1800457F0, rva algn_1800458AD, \
                                  rva stru_1801464D4>
                RUNTIME_FUNCTION <rva RtlCheckRegistryKey, rva byte_180045914, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18004591C, rva byte_180045A93, \
                                  rva stru_1801464F4>
                RUNTIME_FUNCTION <rva sub_180045A9C, rva byte_180045B34, \
                                  rva stru_180146524>
                RUNTIME_FUNCTION <rva sub_180045B3C, rva byte_180045F26, \
                                  rva stru_18014653C>
                RUNTIME_FUNCTION <rva sub_180045F2C, rva byte_180045FBC, \
                                  rva stru_18014656C>
                RUNTIME_FUNCTION <rva sub_180045FC4, rva byte_1800462E3, \
                                  rva stru_180146578>
                RUNTIME_FUNCTION <rva sub_1800462EC, rva algn_1800463A1, \
                                  rva stru_1801465A0>
                RUNTIME_FUNCTION <rva sub_1800463A8, rva byte_1800463EC, \
                                  rva stru_1801465C4>
                RUNTIME_FUNCTION <rva sub_1800463F4, rva algn_180046629, \
                                  rva stru_1801465DC>
                RUNTIME_FUNCTION <rva sub_180046630, rva algn_180046719, \
                                  rva stru_18014661C>
                RUNTIME_FUNCTION <rva RtlIsParentOfChildAppContainer, \
                                  rva byte_180046790, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180046798, rva algn_1800467C8, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1800467D0, rva byte_1800468DE, \
                                  rva stru_180146648>
                RUNTIME_FUNCTION <rva RtlGetFileMUIPath, rva algn_180046F4B, \
                                  rva stru_18014667C>
                RUNTIME_FUNCTION <rva RtlLoadString, rva algn_18004716D, \
                                  rva stru_1801466B0>
                RUNTIME_FUNCTION <rva RtlpIsQualifiedLanguage, rva algn_180047257, \
                                  rva stru_180146708>
                RUNTIME_FUNCTION <rva sub_180047260, rva byte_180047294, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18004729C, rva algn_180047348, \
                                  rva stru_180146730>
                RUNTIME_FUNCTION <rva sub_180047350, rva byte_1800473BB, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800473E8, rva byte_180047544, \
                                  rva stru_18014675C>
                RUNTIME_FUNCTION <rva sub_18004754C, rva algn_1800475B2, \
                                  rva stru_180146780>
                RUNTIME_FUNCTION <rva sub_1800475B8, rva byte_180047654, \
                                  rva stru_1801467A0>
                RUNTIME_FUNCTION <rva sub_18004765C, rva byte_180047683, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18004768C, rva algn_1800477A9, \
                                  rva stru_1801467B4>
                RUNTIME_FUNCTION <rva sub_1800477B0, rva algn_1800478D7, \
                                  rva stru_1801467CC>
                RUNTIME_FUNCTION <rva sub_1800478E0, rva byte_180047A90, \
                                  rva stru_1801467F0>
                RUNTIME_FUNCTION <rva sub_180047A98, rva byte_180047B23, \
                                  rva stru_180146820>
                RUNTIME_FUNCTION <rva sub_180047B2C, rva algn_180047B69, \
                                  rva stru_180146840>
                RUNTIME_FUNCTION <rva sub_180047B70, rva byte_180047C1C, \
                                  rva stru_180146860>
                RUNTIME_FUNCTION <rva sub_180047C24, rva algn_180048159, \
                                  rva stru_180146880>
                RUNTIME_FUNCTION <rva sub_180048160, rva byte_180048334, \
                                  rva stru_1801468D0>
                RUNTIME_FUNCTION <rva sub_18004833C, rva byte_1800483A6, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800483AC, rva algn_1800484F1, \
                                  rva stru_180146918>
                RUNTIME_FUNCTION <rva sub_1800484F8, rva algn_180048664, \
                                  rva stru_180146968>
                RUNTIME_FUNCTION <rva RtlFindClearBitsAndSet, rva algn_180048990, \
                                  rva stru_180146990>
                RUNTIME_FUNCTION <rva RtlSetBits, rva byte_180048A3C, \
                                  rva stru_1801469B8>
                RUNTIME_FUNCTION <rva sub_180048A44, rva byte_180048A9D, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva LdrResFindResourceDirectory, rva algn_180048B36,\
                                  rva stru_1801410F8>
                RUNTIME_FUNCTION <rva LdrResSearchResource, rva byte_180048F03, \
                                  rva stru_1801469CC>
                RUNTIME_FUNCTION <rva sub_180048F0C, rva algn_180049625, \
                                  rva stru_180146A30>
                RUNTIME_FUNCTION <rva LdrpResGetResourceDirectory, rva algn_180049A32,\
                                  rva stru_180146A84>
                RUNTIME_FUNCTION <rva sub_180049A38, rva algn_18004AA97, \
                                  rva stru_180146AD4>
                RUNTIME_FUNCTION <rva sub_18004AAA0, rva algn_18004ABED, \
                                  rva stru_180146B18>
                RUNTIME_FUNCTION <rva LdrpResGetMappingSize, rva byte_18004ADE0, \
                                  rva stru_180146B4C>
                RUNTIME_FUNCTION <rva sub_18004AE30, rva algn_18004B1F8, \
                                  rva stru_180146B90>
                RUNTIME_FUNCTION <rva sub_18004B200, rva algn_18004B322, \
                                  rva stru_180146BB8>
                RUNTIME_FUNCTION <rva LdrResGetRCConfig, rva algn_18004B790, \
                                  rva stru_180146BE0>
                RUNTIME_FUNCTION <rva RtlClearBits, rva byte_18004B83B, \
                                  rva stru_1801469B8>
                RUNTIME_FUNCTION <rva sub_18004B844, rva byte_18004B8D4, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_18004B904, rva byte_18004BA10, \
                                  rva stru_180146C24>
                RUNTIME_FUNCTION <rva sub_18004BA18, rva byte_18004BC80, \
                                  rva stru_180146C50>
                RUNTIME_FUNCTION <rva sub_18004BC88, rva byte_18004BDB0, \
                                  rva stru_180146C7C>
                RUNTIME_FUNCTION <rva sub_18004BDB8, rva byte_18004C03C, \
                                  rva stru_180146CA0>
                RUNTIME_FUNCTION <rva sub_18004C044, rva byte_18004C11D, \
                                  rva stru_180146CC8>
                RUNTIME_FUNCTION <rva RtlDeleteAtomFromAtomTable, rva byte_18004C1CF, \
                                  rva stru_180146CF0>
                RUNTIME_FUNCTION <rva sub_18004C1D8, rva algn_18004C222, \
                                  rva stru_180146D14>
                RUNTIME_FUNCTION <rva RtlQueryAtomInAtomTable, rva byte_18004C41F, \
                                  rva stru_180146D30>
                RUNTIME_FUNCTION <rva RtlAddAtomToAtomTable_0, rva byte_18004C63F, \
                                  rva stru_180146D70>
                RUNTIME_FUNCTION <rva RtlLookupAtomInAtomTable, rva algn_18004C78A, \
                                  rva stru_180146DB0>
                RUNTIME_FUNCTION <rva sub_18004C790, rva byte_18004C8BB, \
                                  rva stru_180146DEC>
                RUNTIME_FUNCTION <rva RtlGetIntegerAtom, rva algn_18004C902, \
                                  rva stru_180146E14>
                RUNTIME_FUNCTION <rva sub_18004C908, rva byte_18004C92E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18004C934, rva byte_18004C95D, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlIsValidIndexHandle, rva algn_18004C9A8, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18004C9E0, rva algn_18004CA66, \
                                  rva stru_180146E30>
                RUNTIME_FUNCTION <rva RtlAllocateHandle, rva algn_18004CC19, \
                                  rva stru_180146E50>
                RUNTIME_FUNCTION <rva sub_18004CC20, rva algn_18004CC73, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18004CC90, rva byte_18004CCDD, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva RtlFreeHandle, rva algn_18004CD27, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18004CD30, rva algn_18004CDAA, \
                                  rva stru_180146E64>
                RUNTIME_FUNCTION <rva RtlFlsSetValue, rva byte_18004CEED, \
                                  rva stru_180146E6C>
                RUNTIME_FUNCTION <rva sub_18004CEF4, rva byte_18004CF76, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_18004CF7C, rva byte_18004D04F, \
                                  rva stru_180146E94>
                RUNTIME_FUNCTION <rva sub_18004D058, rva algn_18004D0F2, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18004D0F8, rva byte_18004D19D, \
                                  rva stru_180146EC0>
                RUNTIME_FUNCTION <rva sub_18004D1A4, rva byte_18004D31B, \
                                  rva stru_180146EE4>
                RUNTIME_FUNCTION <rva sub_18004D394, rva byte_18004D42D, \
                                  rva stru_180146F14>
                RUNTIME_FUNCTION <rva sub_18004D434, rva algn_18004D53A, \
                                  rva stru_180146F30>
                RUNTIME_FUNCTION <rva RtlCreateProcessParametersEx, \
                                  rva algn_18004D5AA, rva stru_180146F64>
                RUNTIME_FUNCTION <rva RtlCreateProcessParametersWithTemplate, \
                                  rva algn_18004D6D7, rva stru_180146F6C>
                RUNTIME_FUNCTION <rva sub_18004D6E0, rva byte_18004DBD5, \
                                  rva stru_180146F88>
                RUNTIME_FUNCTION <rva sub_18004DBDC, rva byte_18004DC73, \
                                  rva stru_1801430F8>
                RUNTIME_FUNCTION <rva sub_18004DCA8, rva byte_18004DD54, \
                                  rva stru_180146FB0>
                RUNTIME_FUNCTION <rva sub_18004DD5C, rva algn_18004DE28, \
                                  rva stru_180146FD4>
                RUNTIME_FUNCTION <rva RtlQueryEnvironmentVariable_U, \
                                  rva algn_18004DE92, rva stru_1801408A4>
                RUNTIME_FUNCTION <rva RtlSetEnvironmentVariable, rva byte_18004DEFC, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlCreateEnvironmentEx, rva algn_18004E10B, \
                                  rva stru_180146FF0>
                RUNTIME_FUNCTION <rva RtlSetEnvironmentVar, rva byte_18004EAA6, \
                                  rva stru_18014701C>
                RUNTIME_FUNCTION <rva RtlMultiByteToUnicodeN, rva algn_18004EBD7, \
                                  rva stru_180147060>
                RUNTIME_FUNCTION <rva EtwEventWriteEndScenario, rva byte_18004ECBF, \
                                  rva stru_180147088>
                RUNTIME_FUNCTION <rva EvtIntReportEventAndSourceAsync, \
                                  rva algn_18004ED37, rva stru_180146F64>
                RUNTIME_FUNCTION <rva sub_18004ED40, rva algn_18004F108, \
                                  rva stru_1801470B0>
                RUNTIME_FUNCTION <rva EtwEventWriteFull, rva algn_18004F154, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva EtwEventWriteEx, rva algn_18004F1A9, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva EtwEventWrite, rva byte_18004F1DF, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva EtwEventWriteTransfer, rva byte_18004F22F, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva sub_18004F238, rva byte_18004F4A0, \
                                  rva stru_180147108>
                RUNTIME_FUNCTION <rva sub_18004F4FC, rva byte_18004FB40, \
                                  rva stru_180147138>
                RUNTIME_FUNCTION <rva EtwLogTraceEvent, rva byte_18004FB8D, \
                                  rva stru_180147188>
                RUNTIME_FUNCTION <rva sub_18004FB94, rva byte_18004FEC5, \
                                  rva stru_1801471A0>
                RUNTIME_FUNCTION <rva sub_18004FECC, rva algn_180050022, \
                                  rva stru_180147204>
                RUNTIME_FUNCTION <rva sub_180050028, rva byte_18005012C, \
                                  rva stru_18014724C>
                RUNTIME_FUNCTION <rva sub_180050134, rva byte_180050254, \
                                  rva stru_180147274>
                RUNTIME_FUNCTION <rva DbgPrintEx, rva algn_180050336, \
                                  rva stru_1801472A0>
                RUNTIME_FUNCTION <rva EtwUnregisterTraceGuids, rva algn_180050387, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva EtwNotificationUnregister, rva algn_1800504A2, \
                                  rva stru_1801472A8>
                RUNTIME_FUNCTION <rva sub_1800504A8, rva byte_1800504DF, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800504E8, rva algn_18005052D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva EtwSendNotification, rva byte_180050660, \
                                  rva stru_1801472D0>
                RUNTIME_FUNCTION <rva EtwTraceMessage, rva algn_18005068F, \
                                  rva stru_1801472F0>
                RUNTIME_FUNCTION <rva EtwTraceMessageVa, rva algn_180050759, \
                                  rva stru_1801472F8>
                RUNTIME_FUNCTION <rva RtlSetLastWin32ErrorAndNtStatusFromNtStatus, \
                                  rva algn_180050774, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlSetLastWin32Error, rva algn_1800507ED, \
                                  rva stru_180147318>
                RUNTIME_FUNCTION <rva RtlNtStatusToDosError, rva algn_180050968, \
                                  rva stru_180147338>
                RUNTIME_FUNCTION <rva DbgPrint, rva algn_1800509B2, \
                                  rva stru_180147368>
                RUNTIME_FUNCTION <rva sub_1800509B8, rva algn_180050C02, \
                                  rva stru_180147370>
                RUNTIME_FUNCTION <rva sub_180050C08, rva algn_180050C8A, \
                                  rva stru_1801473C4>
                RUNTIME_FUNCTION <rva sub_180050C90, rva algn_180050CB8, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlWow64GetCurrentMachine, rva algn_180050DCA, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlUnwind, rva algn_180050EC4, \
                                  rva stru_1801473DC>
                RUNTIME_FUNCTION <rva RtlCopyContext, rva algn_180051022, \
                                  rva stru_180147404>
                RUNTIME_FUNCTION <rva RtlRaiseException, rva byte_18005125D, \
                                  rva stru_180147430>
                RUNTIME_FUNCTION <rva sub_180051270, rva algn_1800515D8, \
                                  rva stru_180147450>
                RUNTIME_FUNCTION <rva RtlCaptureStackBackTrace, rva algn_180051678, \
                                  rva stru_180147484>
                RUNTIME_FUNCTION <rva RtlWalkFrameChain, rva algn_1800516BA, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800516C0, rva byte_1800519BC, \
                                  rva stru_1801474A8>
                RUNTIME_FUNCTION <rva sub_1800519C4, rva byte_180051B50, \
                                  rva stru_1801474EC>
                RUNTIME_FUNCTION <rva sub_180051B58, rva algn_180051C08, \
                                  rva stru_180147518>
                RUNTIME_FUNCTION <rva RtlGetExtendedContextLength, rva algn_180051C55,\
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlInitializeExtendedContext, \
                                  rva algn_180051CB1, rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180051CB8, rva byte_180051D5E, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180051D70, rva algn_180051DB7, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlGetExtendedContextLength2, \
                                  rva algn_180051E56, rva stru_18014752C>
                RUNTIME_FUNCTION <rva RtlWow64GetCurrentCpuArea, rva algn_180051ECE, \
                                  rva stru_180147548>
                RUNTIME_FUNCTION <rva RtlWow64GetCpuAreaInfo, rva byte_180051F84, \
                                  rva stru_180147568>
                RUNTIME_FUNCTION <rva RtlInitializeExtendedContext2, \
                                  rva byte_180052136, rva stru_180147584>
                RUNTIME_FUNCTION <rva sub_180052228, rva algn_180052242, \
                                  rva stru_1801475AC>
                RUNTIME_FUNCTION <rva sub_18005246C, rva algn_18005254E, \
                                  rva stru_1801475C4>
                RUNTIME_FUNCTION <rva RtlFindLastBackwardRunClear, rva algn_180052684,\
                                  rva stru_1801475EC>
                RUNTIME_FUNCTION <rva RtlUserThreadStart, rva algn_1800526D9, \
                                  rva stru_18014762C>
                RUNTIME_FUNCTION <rva TpReleaseCleanupGroupMembers, \
                                  rva byte_1800529A5, rva stru_180147654>
                RUNTIME_FUNCTION <rva sub_1800529AC, rva byte_180052AF6, \
                                  rva stru_1801476B8>
                RUNTIME_FUNCTION <rva sub_180052B30, rva algn_180053749, \
                                  rva stru_1801476E4>
                RUNTIME_FUNCTION <rva sub_180053750, rva byte_180053A63, \
                                  rva stru_180147858>
                RUNTIME_FUNCTION <rva sub_180053A6C, rva algn_180053C67, \
                                  rva stru_18014788C>
                RUNTIME_FUNCTION <rva sub_180053C70, rva byte_18005407B, \
                                  rva stru_1801478BC>
                RUNTIME_FUNCTION <rva sub_180054084, rva byte_18005431C, \
                                  rva stru_1801478E4>
                RUNTIME_FUNCTION <rva sub_180054324, rva algn_18005439A, \
                                  rva stru_18014790C>
                RUNTIME_FUNCTION <rva sub_1800543F0, rva byte_18005447C, \
                                  rva stru_180147934>
                RUNTIME_FUNCTION <rva sub_180054484, rva algn_180054519, \
                                  rva stru_180147950>
                RUNTIME_FUNCTION <rva RtlRegisterThreadWithCsrss, rva algn_1800545C7, \
                                  rva stru_1801479FC>
                RUNTIME_FUNCTION <rva sub_1800545D0, rva algn_180054649, \
                                  rva stru_180147A1C>
                RUNTIME_FUNCTION <rva RtlExitUserThread, rva algn_1800546A6, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva TpCheckTerminateWorker, rva byte_180054736, \
                                  rva stru_180147A4C>
                RUNTIME_FUNCTION <rva sub_18005473C, rva algn_180054781, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180054788, rva byte_1800547CD, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800547D4, rva byte_18005486C, \
                                  rva stru_180147A90>
                RUNTIME_FUNCTION <rva sub_180054874, rva algn_1800548C9, \
                                  rva stru_180147A9C>
                RUNTIME_FUNCTION <rva sub_1800548D0, rva byte_1800549E3, \
                                  rva stru_180147AC4>
                RUNTIME_FUNCTION <rva sub_1800549EC, rva algn_180054A11, \
                                  rva stru_180147AE4>
                RUNTIME_FUNCTION <rva sub_180054A50, rva algn_180054AB8, \
                                  rva stru_180147AEC>
                RUNTIME_FUNCTION <rva sub_180054AF4, rva byte_180054C10, \
                                  rva stru_180147AF8>
                RUNTIME_FUNCTION <rva sub_180054C18, rva algn_180054CB2, \
                                  rva stru_180147B1C>
                RUNTIME_FUNCTION <rva TpReleasePool, rva byte_180054EE6, \
                                  rva stru_180147B38>
                RUNTIME_FUNCTION <rva sub_180054EEC, rva byte_180054FF6, \
                                  rva stru_180147B78>
                RUNTIME_FUNCTION <rva sub_180054FFC, rva algn_18005502D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180055040, rva byte_18005523B, \
                                  rva stru_180147BA0>
                RUNTIME_FUNCTION <rva sub_180055244, rva byte_18005541B, \
                                  rva stru_180147BC8>
                RUNTIME_FUNCTION <rva RtlWakeAllConditionVariable, rva byte_18005549C,\
                                  rva stru_180147BF4>
                RUNTIME_FUNCTION <rva sub_1800554A4, rva algn_180055692, \
                                  rva stru_180147C10>
                RUNTIME_FUNCTION <rva sub_180055698, rva byte_1800556BC, \
                                  rva stru_180147C34>
                RUNTIME_FUNCTION <rva sub_1800556C4, rva byte_18005599F, \
                                  rva stru_180147C4C>
                RUNTIME_FUNCTION <rva EtwProcessPrivateLoggerRequest, \
                                  rva byte_180055B1F, rva stru_180147C80>
                RUNTIME_FUNCTION <rva sub_180055B28, rva byte_180055EAC, \
                                  rva stru_180147CA8>
                RUNTIME_FUNCTION <rva sub_180055EB4, rva byte_180055F56, \
                                  rva stru_180147CDC>
                RUNTIME_FUNCTION <rva EtwpCreateEtwThread, rva algn_180056091, \
                                  rva stru_180147CF0>
                RUNTIME_FUNCTION <rva RtlCreateUserThread, rva algn_180056108, \
                                  rva stru_180146F64>
                RUNTIME_FUNCTION <rva sub_180056110, rva byte_18005629B, \
                                  rva stru_180147D08>
                RUNTIME_FUNCTION <rva sub_1800562A4, rva algn_1800563A9, \
                                  rva stru_180147D38>
                RUNTIME_FUNCTION <rva sub_1800563B0, rva byte_180056510, \
                                  rva stru_180147D58>
                RUNTIME_FUNCTION <rva sub_180056518, rva algn_180056BD2, \
                                  rva stru_180147D7C>
                RUNTIME_FUNCTION <rva sub_180056BD8, rva byte_180056C2B, \
                                  rva stru_180147DAC>
                RUNTIME_FUNCTION <rva sub_180056C34, rva byte_180056DC6, \
                                  rva stru_180147DD0>
                RUNTIME_FUNCTION <rva sub_180056DCC, rva byte_1800571D5, \
                                  rva stru_180147E04>
                RUNTIME_FUNCTION <rva sub_1800571DC, rva byte_180057256, \
                                  rva stru_180147E30>
                RUNTIME_FUNCTION <rva sub_18005725C, rva byte_18005733E, \
                                  rva stru_180147E54>
                RUNTIME_FUNCTION <rva sub_180057344, rva algn_180057409, \
                                  rva stru_180147E70>
                RUNTIME_FUNCTION <rva EtwpGetCpuSpeed_0, rva byte_1800574FD, \
                                  rva stru_180147E94>
                RUNTIME_FUNCTION <rva sub_180057504, rva algn_180057667, \
                                  rva stru_180147EB0>
                RUNTIME_FUNCTION <rva sub_180057670, rva byte_1800577B0, \
                                  rva stru_180147ED4>
                RUNTIME_FUNCTION <rva sub_1800577F8, rva byte_18005792B, \
                                  rva stru_180147EF4>
                RUNTIME_FUNCTION <rva sub_180057994, rva algn_180057AFA, \
                                  rva stru_180147F1C>
                RUNTIME_FUNCTION <rva sub_180057B10, rva algn_180057D0A, \
                                  rva stru_180147F48>
                RUNTIME_FUNCTION <rva sub_180057D10, rva algn_180057DC9, \
                                  rva stru_180147F78>
                RUNTIME_FUNCTION <rva RtlGetPersistedStateLocation, \
                                  rva byte_180057F0F, rva stru_180147FA0>
                RUNTIME_FUNCTION <rva sub_180057F18, rva byte_180058073, \
                                  rva stru_180147FCC>
                RUNTIME_FUNCTION <rva sub_18005807C, rva algn_18005810A, \
                                  rva stru_180147FF4>
                RUNTIME_FUNCTION <rva sub_180058110, rva byte_1800581A6, \
                                  rva stru_180148010>
                RUNTIME_FUNCTION <rva sub_1800581AC, rva algn_1800582A1, \
                                  rva stru_180148038>
                RUNTIME_FUNCTION <rva sub_1800582A8, rva byte_18005831E, \
                                  rva stru_180148064>
                RUNTIME_FUNCTION <rva sub_180058324, rva byte_180058530, \
                                  rva stru_180148084>
                RUNTIME_FUNCTION <rva sub_180058538, rva algn_180058572, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180058578, rva algn_1800585C7, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800585D0, rva byte_18005864B, \
                                  rva stru_1801480AC>
                RUNTIME_FUNCTION <rva sub_180058654, rva byte_180058786, \
                                  rva stru_1801480C8>
                RUNTIME_FUNCTION <rva sub_18005878C, rva algn_18005886A, \
                                  rva stru_1801480F0>
                RUNTIME_FUNCTION <rva sub_180058870, rva algn_180058990, \
                                  rva stru_18014811C>
                RUNTIME_FUNCTION <rva RtlGetCurrentUmsThread, rva byte_180058A5D, \
                                  rva stru_180148144>
                RUNTIME_FUNCTION <rva sub_180058A70, rva loc_180058A8F, \
                                  rva stru_180148174>
                RUNTIME_FUNCTION <rva loc_180058A8F, rva loc_180058DB8, \
                                  rva stru_180148180>
                RUNTIME_FUNCTION <rva loc_180058DB8, rva loc_180058DC1, \
                                  rva stru_1801481A8>
                RUNTIME_FUNCTION <rva loc_180058DC1, rva algn_180058F8D, \
                                  rva stru_1801481B8>
                RUNTIME_FUNCTION <rva sub_180058FA0, rva loc_180059052, \
                                  rva stru_180148218>
                RUNTIME_FUNCTION <rva loc_180059052, rva algn_180059201, \
                                  rva stru_180148228>
                RUNTIME_FUNCTION <rva algn_180059201, rva loc_180059202, \ ; jumptable 000000018005918B case 3
                                  rva stru_180148240>
                RUNTIME_FUNCTION <rva loc_180059202, rva algn_1800593E4, \ ; jumptable 000000018005918B case 3
                                  rva stru_180148250>
                RUNTIME_FUNCTION <rva RtlUTF8StringToUnicodeString, \
                                  rva algn_1800594B8, rva stru_180148280>
                RUNTIME_FUNCTION <rva RtlUTF8ToUnicodeN, rva loc_1800594FB, \
                                  rva stru_1801482A4>
                RUNTIME_FUNCTION <rva loc_1800594FB, rva loc_1800595C1, \
                                  rva stru_1801482B4>
                RUNTIME_FUNCTION <rva loc_1800595C1, rva loc_1800595E9, \
                                  rva stru_1801482D4>
                RUNTIME_FUNCTION <rva loc_1800595E9, rva algn_180059868, \
                                  rva stru_1801482E4>
                RUNTIME_FUNCTION <rva sub_180059870, rva algn_180059AB0, \
                                  rva stru_180148334>
                RUNTIME_FUNCTION <rva sub_180059B00, rva algn_180059B68, \
                                  rva stru_180148354>
                RUNTIME_FUNCTION <rva sub_180059B70, rva byte_18005A35E, \
                                  rva stru_18014836C>
                RUNTIME_FUNCTION <rva sub_18005A370, rva algn_18005A64F, \
                                  rva stru_180148398>
                RUNTIME_FUNCTION <rva sub_18005A660, rva loc_18005A722, \
                                  rva stru_1801483C4>
                RUNTIME_FUNCTION <rva loc_18005A722, rva loc_18005A9A8, \
                                  rva stru_1801483DC>
                RUNTIME_FUNCTION <rva loc_18005A9A8, rva loc_18005A9C1, \
                                  rva stru_1801483F0>
                RUNTIME_FUNCTION <rva loc_18005A9C1, rva byte_18005A9FD, \
                                  rva stru_180148400>
                RUNTIME_FUNCTION <rva RtlUnicodeToUTF8N, rva loc_18005AA4A, \
                                  rva stru_180148438>
                RUNTIME_FUNCTION <rva loc_18005AA4A, rva loc_18005AB18, \
                                  rva stru_180148444>
                RUNTIME_FUNCTION <rva loc_18005AB18, rva loc_18005AB24, \
                                  rva stru_18014845C>
                RUNTIME_FUNCTION <rva loc_18005AB24, rva loc_18005ABC9, \
                                  rva stru_18014846C>
                RUNTIME_FUNCTION <rva loc_18005ABC9, rva loc_18005ABE8, \
                                  rva stru_180148484>
                RUNTIME_FUNCTION <rva loc_18005ABE8, rva byte_18005ACC0, \
                                  rva stru_180148494>
                RUNTIME_FUNCTION <rva sub_18005ACC8, rva algn_18005AEA9, \
                                  rva stru_1801484D4>
                RUNTIME_FUNCTION <rva RtlCutoverTimeToSystemTime, rva byte_18005B05B, \
                                  rva stru_1801484F0>
                RUNTIME_FUNCTION <rva RtlpTimeFieldsToTime, rva byte_18005B17C, \
                                  rva stru_180148518>
                RUNTIME_FUNCTION <rva sub_18005B184, rva algn_18005B390, \
                                  rva stru_18014853C>
                RUNTIME_FUNCTION <rva RtlpTimeToTimeFields, rva byte_18005B49F, \
                                  rva stru_180148558>
                RUNTIME_FUNCTION <rva sub_18005B4A8, rva algn_18005B6E1, \
                                  rva stru_18014857C>
                RUNTIME_FUNCTION <rva EtwEventActivityIdControl, rva loc_18005B6FD, \
                                  rva stru_180148598>
                RUNTIME_FUNCTION <rva loc_18005B6FD, rva loc_18005B723, \
                                  rva stru_1801485A0>
                RUNTIME_FUNCTION <rva loc_18005B723, rva loc_18005B729, \
                                  rva stru_1801485B4>
                RUNTIME_FUNCTION <rva loc_18005B729, rva algn_18005B74F, \
                                  rva stru_1801485C4>
                RUNTIME_FUNCTION <rva algn_18005B74F, rva loc_18005B750, \
                                  rva stru_1801485D8>
                RUNTIME_FUNCTION <rva loc_18005B750, rva algn_18005B7B9, \
                                  rva stru_1801485E8>
                RUNTIME_FUNCTION <rva algn_18005B7B9, rva loc_18005B7BA, \
                                  rva stru_1801485FC>
                RUNTIME_FUNCTION <rva loc_18005B7BA, rva algn_18005B7EB, \
                                  rva stru_18014860C>
                RUNTIME_FUNCTION <rva RtlDeleteElementGenericTableAvl, \
                                  rva algn_18005B832, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlDeleteElementGenericTableAvlEx, \
                                  rva byte_18005B896, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18005B89C, rva algn_18005BA22, \
                                  rva stru_180148644>
                RUNTIME_FUNCTION <rva RtlInsertElementGenericTableAvl, \
                                  rva algn_18005BA8E, rva stru_1801434C4>
                RUNTIME_FUNCTION <rva RtlInsertElementGenericTableFullAvl, \
                                  rva algn_18005BBC8, rva stru_18014865C>
                RUNTIME_FUNCTION <rva RtlLookupElementGenericTableFullAvl, \
                                  rva algn_18005BC03, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlLookupElementGenericTableAvl, \
                                  rva byte_18005BC36, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18005BC3C, rva byte_18005BCCF, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18005BCD8, rva byte_18005BD8D, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva MD5Final, rva algn_18005BEF5, \
                                  rva stru_180148684>
                RUNTIME_FUNCTION <rva MD5Update, rva algn_18005C041, \
                                  rva stru_18014869C>
                RUNTIME_FUNCTION <rva sub_18005C050, rva byte_18005C834, \
                                  rva stru_1801486C8>
                RUNTIME_FUNCTION <rva sub_18005C83C, rva algn_18005CA08, \
                                  rva stru_1801486E0>
                RUNTIME_FUNCTION <rva sub_18005CA10, rva algn_18005CA72, \
                                  rva stru_180148704>
                RUNTIME_FUNCTION <rva sub_18005CA78, rva byte_18005CB4B, \
                                  rva stru_180148734>
                RUNTIME_FUNCTION <rva sub_18005CB54, rva algn_18005CBC3, \
                                  rva stru_180148758>
                RUNTIME_FUNCTION <rva RtlQueryFeatureConfiguration, \
                                  rva algn_18005CC71, rva stru_180148770>
                RUNTIME_FUNCTION <rva sub_18005CC8C, rva byte_18005CD45, \
                                  rva stru_1801487B0>
                RUNTIME_FUNCTION <rva sub_18005CD4C, rva byte_18005CDC0, \
                                  rva stru_1801487C4>
                RUNTIME_FUNCTION <rva RtlQueryUnbiasedInterruptTime, \
                                  rva byte_18005CE9E, rva stru_1801487DC>
                RUNTIME_FUNCTION <rva RtlUnlockMemoryBlockLookaside, \
                                  rva algn_18005CF07, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlUnlockMemoryZone, rva byte_18005CF9B, \
                                  rva stru_1801487F4>
                RUNTIME_FUNCTION <rva sub_18005CFA4, rva byte_18005CFDB, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18005CFE4, rva algn_18005D039, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlSetCurrentDirectory_U, rva algn_18005D1D7, \
                                  rva stru_180148804>
                RUNTIME_FUNCTION <rva sub_18005D1E0, rva algn_18005D28F, \
                                  rva stru_18014882C>
                RUNTIME_FUNCTION <rva RtlGetCurrentDirectory_U, rva algn_18005D379, \
                                  rva stru_180148850>
                RUNTIME_FUNCTION <rva sub_18005D380, rva byte_18005D45C, \
                                  rva stru_180148878>
                RUNTIME_FUNCTION <rva RtlLockMemoryBlockLookaside, rva algn_18005D4FA,\
                                  rva stru_1801488A0>
                RUNTIME_FUNCTION <rva RtlLockMemoryZone, rva byte_18005D5A4, \
                                  rva stru_1801488BC>
                RUNTIME_FUNCTION <rva sub_18005D5AC, rva algn_18005D637, \
                                  rva stru_1801488E0>
                RUNTIME_FUNCTION <rva sub_18005D640, rva algn_18005D6CB, \
                                  rva stru_180148904>
                RUNTIME_FUNCTION <rva RtlUnlockModuleSection, rva byte_18005D780, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlLockModuleSection, rva algn_18005D889, \
                                  rva stru_180148928>
                RUNTIME_FUNCTION <rva LdrEnumerateLoadedModules, rva byte_18005D985, \
                                  rva stru_180148944>
                RUNTIME_FUNCTION <rva sub_18005D98C, rva algn_18005D9D6, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlExitUserProcess, rva byte_18005DA9F, \
                                  rva stru_180148984>
                RUNTIME_FUNCTION <rva LdrShutdownProcess, rva algn_18005DD78, \
                                  rva stru_18014899C>
                RUNTIME_FUNCTION <rva sub_18005DD94, rva algn_18005DF13, \
                                  rva stru_1801489F0>
                RUNTIME_FUNCTION <rva RtlReportSilentProcessExit, rva algn_18005E071, \
                                  rva stru_180148A1C>
                RUNTIME_FUNCTION <rva sub_18005E0B0, rva byte_18005E11F, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18005E130, rva algn_18005E14D, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlValidateHeap, rva algn_18005E32A, \
                                  rva stru_180148A50>
                RUNTIME_FUNCTION <rva sub_18005E330, rva algn_18005E469, \
                                  rva stru_180148AAC>
                RUNTIME_FUNCTION <rva RtlLockHeap, rva byte_18005E4FD, \
                                  rva stru_180148ACC>
                RUNTIME_FUNCTION <rva RtlUnlockHeap, rva algn_18005E59A, \
                                  rva stru_180148AE4>
                RUNTIME_FUNCTION <rva sub_18005E5A0, rva byte_18005E5CE, \
                                  rva stru_180148AFC>
                RUNTIME_FUNCTION <rva sub_18005E5D4, rva byte_18005E6A3, \
                                  rva stru_180148B18>
                RUNTIME_FUNCTION <rva sub_18005E6AC, rva byte_18005E790, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18005E798, rva byte_18005E803, \
                                  rva stru_180148B38>
                RUNTIME_FUNCTION <rva sub_18005E80C, rva byte_18005E9CD, \
                                  rva stru_180148B50>
                RUNTIME_FUNCTION <rva sub_18005E9D4, rva byte_18005EB5D, \
                                  rva stru_180148B7C>
                RUNTIME_FUNCTION <rva sub_18005EB70, rva byte_18005EBF6, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18005EBFC, rva byte_18005EDEE, \
                                  rva stru_180148BA4>
                RUNTIME_FUNCTION <rva sub_18005EE3C, rva byte_18005F13D, \
                                  rva stru_180148BD4>
                RUNTIME_FUNCTION <rva sub_18005F144, rva byte_18005F2E6, \
                                  rva stru_180148C08>
                RUNTIME_FUNCTION <rva sub_18005F2EC, rva byte_18005F3BC, \
                                  rva stru_180148C34>
                RUNTIME_FUNCTION <rva sub_18005F3C4, rva byte_18005F406, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_18005F40C, rva byte_18005F473, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18005F47C, rva algn_18005F579, \
                                  rva stru_180148C50>
                RUNTIME_FUNCTION <rva sub_18005F580, rva algn_18005F5DA, \
                                  rva stru_180148C74>
                RUNTIME_FUNCTION <rva sub_18005F5E0, rva algn_18005F8A8, \
                                  rva stru_180148C94>
                RUNTIME_FUNCTION <rva sub_18005F8B0, rva byte_18005F8DF, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18005F8E8, rva algn_18005F99A, \
                                  rva stru_180148CC8>
                RUNTIME_FUNCTION <rva sub_18005F9A0, rva byte_18005FADB, \
                                  rva stru_180148CF0>
                RUNTIME_FUNCTION <rva sub_18005FAE4, rva algn_18005FB7A, \
                                  rva stru_180148D14>
                RUNTIME_FUNCTION <rva sub_18005FB80, rva byte_18005FBAC, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18005FBB4, rva algn_18005FDB1, \
                                  rva stru_180148D3C>
                RUNTIME_FUNCTION <rva sub_18005FDB8, rva algn_18005FF7A, \
                                  rva stru_180148D68>
                RUNTIME_FUNCTION <rva sub_18005FF80, rva byte_180060034, \
                                  rva stru_180148D94>
                RUNTIME_FUNCTION <rva sub_18006003C, rva byte_180060120, \
                                  rva stru_180148DB0>
                RUNTIME_FUNCTION <rva sub_180060128, rva byte_1800601B0, \
                                  rva stru_180148DD8>
                RUNTIME_FUNCTION <rva sub_1800601B8, rva byte_18006020B, \
                                  rva stru_180148E04>
                RUNTIME_FUNCTION <rva sub_180060214, rva algn_180060268, \
                                  rva stru_180148E28>
                RUNTIME_FUNCTION <rva RtlDetectHeapLeaks, rva byte_1800602C6, \
                                  rva stru_180148E44>
                RUNTIME_FUNCTION <rva sub_1800602CC, rva algn_180060421, \
                                  rva stru_180148E5C>
                RUNTIME_FUNCTION <rva sub_180060428, rva byte_18006050D, \
                                  rva stru_180148E80>
                RUNTIME_FUNCTION <rva sub_180060558, rva byte_180060640, \
                                  rva stru_180148EA0>
                RUNTIME_FUNCTION <rva sub_180060648, rva algn_1800606F2, \
                                  rva stru_180148EC0>
                RUNTIME_FUNCTION <rva sub_180060764, rva byte_180060913, \
                                  rva stru_180148EE0>
                RUNTIME_FUNCTION <rva sub_18006091C, rva byte_18006094B, \
                                  rva stru_180148F14>
                RUNTIME_FUNCTION <rva EtwEventWriteNoRegistration, rva algn_180060A4F,\
                                  rva stru_180148F1C>
                RUNTIME_FUNCTION <rva RtlEqualString, rva algn_180060AEF, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva RtlDnsHostNameToComputerName, \
                                  rva algn_180060BF4, rva stru_180148F40>
                RUNTIME_FUNCTION <rva RtlPrefixString, rva algn_180060C79, \
                                  rva stru_180148F58>
                RUNTIME_FUNCTION <rva RtlUnicodeStringToOemString, rva algn_180060D2D,\
                                  rva stru_180148F7C>
                RUNTIME_FUNCTION <rva RtlOemStringToUnicodeString, rva byte_180060E3C,\
                                  rva stru_180148FBC>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeStringToOemString, \
                                  rva byte_180060F2B, rva stru_180149000>
                RUNTIME_FUNCTION <rva sub_180060F34, rva algn_180060FCB, \
                                  rva stru_180149044>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeToOemN, rva algn_180061035, \
                                  rva stru_18014906C>
                RUNTIME_FUNCTION <rva RtlUnicodeToOemN, rva algn_1800610D5, \
                                  rva stru_180149084>
                RUNTIME_FUNCTION <rva RtlOemToUnicodeN, rva algn_180061184, \
                                  rva stru_1801490A8>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeToMultiByteN, \
                                  rva byte_1800611E5, rva stru_1801490D0>
                RUNTIME_FUNCTION <rva sub_1800611EC, rva byte_180061283, \
                                  rva stru_1801430F8>
                RUNTIME_FUNCTION <rva RtlxUnicodeStringToOemSize, rva algn_1800612D2, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlUnicodeStringToAnsiString, \
                                  rva algn_1800613AB, rva stru_1801490E8>
                RUNTIME_FUNCTION <rva RtlUnicodeToMultiByteSize, rva algn_1800613F7, \
                                  rva stru_18014912C>
                RUNTIME_FUNCTION <rva RtlUnicodeToMultiByteN, rva algn_180061479, \
                                  rva stru_180149144>
                RUNTIME_FUNCTION <rva RtlAnsiCharToUnicodeChar, rva algn_180061535, \
                                  rva stru_180149164>
                RUNTIME_FUNCTION <rva RtlInitializeCriticalSection, \
                                  rva byte_1800615EF, rva stru_180149188>
                RUNTIME_FUNCTION <rva sub_1800615F8, rva algn_1800616F1, \
                                  rva stru_1801491AC>
                RUNTIME_FUNCTION <rva TpSetPoolMaxThreads, rva algn_180061769, \
                                  rva stru_1801491B8>
                RUNTIME_FUNCTION <rva TpSetPoolWorkerThreadIdleTimeout, \
                                  rva byte_1800617C0, rva stru_1801491D0>
                RUNTIME_FUNCTION <rva TpAllocPool, rva byte_18006180C, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180061814, rva algn_180061CF9, \
                                  rva stru_1801491D8>
                RUNTIME_FUNCTION <rva sub_180061D00, rva byte_180061D6B, \
                                  rva stru_180149254>
                RUNTIME_FUNCTION <rva sub_180061D74, rva byte_180061E73, \
                                  rva stru_180149278>
                RUNTIME_FUNCTION <rva sub_180061E7C, rva byte_180061F83, \
                                  rva stru_1801492A0>
                RUNTIME_FUNCTION <rva sub_180061F8C, rva algn_1800620EC, \
                                  rva stru_1801492C0>
                RUNTIME_FUNCTION <rva sub_180062100, rva algn_1800622C4, \
                                  rva stru_1801492E4>
                RUNTIME_FUNCTION <rva TpCallbackIndependent, rva algn_180062437, \
                                  rva stru_180149310>
                RUNTIME_FUNCTION <rva RtlUnsubscribeWnfNotificationWithCompletionCallback,\
                                  rva algn_180062482, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlWaitForWnfMetaNotification, \
                                  rva algn_1800625F8, rva stru_18014932C>
                RUNTIME_FUNCTION <rva RtlUnsubscribeWnfStateChangeNotification, \
                                  rva byte_18006261B, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlWakeAddressSingle, rva algn_180062644, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlUnsubscribeWnfNotificationWaitForCompletion, \
                                  rva byte_1800626B5, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800626BC, rva algn_180062826, \
                                  rva stru_180149358>
                RUNTIME_FUNCTION <rva sub_180062830, rva byte_180062945, \
                                  rva stru_180149378>
                RUNTIME_FUNCTION <rva sub_18006294C, rva algn_180062B78, \
                                  rva stru_1801493A0>
                RUNTIME_FUNCTION <rva sub_180062B80, rva byte_180063026, \
                                  rva stru_1801493D0>
                RUNTIME_FUNCTION <rva sub_18006302C, rva algn_1800630F2, \
                                  rva stru_180149418>
                RUNTIME_FUNCTION <rva sub_1800630F8, rva algn_1800631D3, \
                                  rva stru_18014942C>
                RUNTIME_FUNCTION <rva RtlWakeAddressAll, rva byte_1800631F4, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800631FC, rva algn_180063405, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva RtlWaitOnAddress, rva algn_180063449, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180063450, rva byte_18006367B, \
                                  rva stru_18014944C>
                RUNTIME_FUNCTION <rva sub_180063684, rva byte_18006377B, \
                                  rva stru_180149480>
                RUNTIME_FUNCTION <rva sub_180063784, rva byte_1800637F4, \
                                  rva stru_1801494A8>
                RUNTIME_FUNCTION <rva sub_1800637FC, rva algn_1800638B5, \
                                  rva stru_1801494B0>
                RUNTIME_FUNCTION <rva sub_18006396C, rva byte_180063AFF, \
                                  rva stru_1801494D8>
                RUNTIME_FUNCTION <rva sub_180063B10, rva byte_180063B75, \
                                  rva stru_180149500>
                RUNTIME_FUNCTION <rva sub_180063B7C, rva byte_180063BAF, \
                                  rva stru_18014951C>
                RUNTIME_FUNCTION <rva sub_180063BB8, rva algn_180063C43, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlRegisterForWnfMetaNotification, \
                                  rva byte_180063C9D, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva TpTrimPools, rva byte_180063FBC, \
                                  rva stru_180149524>
                RUNTIME_FUNCTION <rva RtlSleepConditionVariableSRW, \
                                  rva algn_180064199, rva stru_18014954C>
                RUNTIME_FUNCTION <rva sub_1800641A0, rva algn_180064261, \
                                  rva stru_180149578>
                RUNTIME_FUNCTION <rva RtlSleepConditionVariableCS, rva byte_1800643CF,\
                                  rva stru_180149598>
                RUNTIME_FUNCTION <rva RtlIsTextUnicode, rva algn_180064909, \
                                  rva stru_1801495C4>
                RUNTIME_FUNCTION <rva RtlInitializeCriticalSectionAndSpinCount, \
                                  rva algn_1800649CC, rva stru_1801495EC>
                RUNTIME_FUNCTION <rva RtlAcquireResourceShared, rva loc_180064AA6, \
                                  rva stru_180149610>
                RUNTIME_FUNCTION <rva loc_180064AA6, rva byte_180064AFA, \
                                  rva stru_18014961C>
                RUNTIME_FUNCTION <rva byte_180064AFA, rva loc_180064B1C, \
                                  rva stru_18014963C>
                RUNTIME_FUNCTION <rva loc_180064B1C, rva byte_180064BA0, \
                                  rva stru_18014964C>
                RUNTIME_FUNCTION <rva RtlAcquireResourceExclusive, rva loc_180064BC6, \
                                  rva stru_18014968C>
                RUNTIME_FUNCTION <rva loc_180064BC6, rva algn_180064C37, \
                                  rva stru_180149698>
                RUNTIME_FUNCTION <rva algn_180064C37, rva loc_180064C5D, \
                                  rva stru_1801496BC>
                RUNTIME_FUNCTION <rva loc_180064C5D, rva algn_180064CE1, \
                                  rva stru_1801496CC>
                RUNTIME_FUNCTION <rva RtlReleaseResource, rva byte_180064DDF, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180064DE8, rva algn_180064F21, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva sub_180064F28, rva byte_180064F8C, \
                                  rva stru_180149714>
                RUNTIME_FUNCTION <rva sub_180064F94, rva algn_180065063, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva RtlEnumerateGenericTable, rva algn_1800650D8, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlDeleteElementGenericTable, \
                                  rva algn_180065161, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlInsertElementGenericTable, \
                                  rva algn_1800651CE, rva stru_1801434C4>
                RUNTIME_FUNCTION <rva RtlInsertElementGenericTableFull, \
                                  rva byte_1800652DB, rva stru_180149734>
                RUNTIME_FUNCTION <rva RtlLookupElementGenericTable, \
                                  rva byte_180065330, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180065338, rva byte_1800653C9, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlDelete, rva algn_180065678, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlDeleteNoSplay, rva algn_180065727, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180065730, rva algn_18006588C, \
                                  rva stru_18014975C>
                RUNTIME_FUNCTION <rva RtlEnumerateGenericTableWithoutSplaying, \
                                  rva algn_180065923, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlIpv6AddressToStringExW, rva algn_180065AB9, \
                                  rva stru_18014977C>
                RUNTIME_FUNCTION <rva RtlIpv6AddressToStringW, rva byte_180065C85, \
                                  rva stru_1801497A8>
                RUNTIME_FUNCTION <rva sub_180065C8C, rva byte_180065CFF, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlFormatMessageEx, rva algn_180066441, \
                                  rva stru_1801497D4>
                RUNTIME_FUNCTION <rva sub_180066448, rva byte_18006655C, \
                                  rva stru_18014980C>
                RUNTIME_FUNCTION <rva sub_180066564, rva algn_1800665E2, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800665E8, rva algn_180066618, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180066620, rva byte_1800666AC, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800666B4, rva byte_18006674E, \
                                  rva stru_180149834>
                RUNTIME_FUNCTION <rva sub_180066754, rva algn_180066789, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlAddProcessTrustLabelAce, rva byte_18006690F, \
                                  rva stru_180149850>
                RUNTIME_FUNCTION <rva sub_180066918, rva algn_180066953, \
                                  rva stru_180147AE4>
                RUNTIME_FUNCTION <rva RtlCreateAndSetSD, rva algn_180066C35, \
                                  rva stru_18014987C>
                RUNTIME_FUNCTION <rva RtlAddAce, rva byte_180066D93, \
                                  rva stru_1801498A4>
                RUNTIME_FUNCTION <rva sub_180066D9C, rva byte_180066FD0, \
                                  rva stru_1801498D0>
                RUNTIME_FUNCTION <rva sub_180066FD8, rva byte_18006713B, \
                                  rva stru_1801498F8>
                RUNTIME_FUNCTION <rva RtlSidDominatesForTrust, rva algn_1800671D6, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva RtlIsValidProcessTrustLabelSid, \
                                  rva algn_18006724B, rva stru_180149928>
                RUNTIME_FUNCTION <rva RtlAddMandatoryAce, rva algn_1800673CE, \
                                  rva stru_180149938>
                RUNTIME_FUNCTION <rva RtlCopySid, rva algn_180067417, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpCallbackSendAlpcMessageOnCompletion, \
                                  rva algn_180067573, rva stru_180149968>
                RUNTIME_FUNCTION <rva RtlClearThreadWorkOnBehalfTicket, \
                                  rva byte_1800675DF, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlInitEnumerationHashTable, rva algn_180067653,\
                                  rva stru_180149990>
                RUNTIME_FUNCTION <rva RtlInitStrongEnumerationHashTable, \
                                  rva algn_180067699, rva stru_180144E30>
                RUNTIME_FUNCTION <rva RtlInsertEntryHashTable, rva byte_180067720, \
                                  rva stru_1801499AC>
                RUNTIME_FUNCTION <rva RtlLookupEntryHashTable, rva byte_180067776, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva sub_18006777C, rva algn_180067811, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlEnumerateEntryHashTable, rva byte_1800678DB, \
                                  rva stru_1801499CC>
                RUNTIME_FUNCTION <rva RtlStronglyEnumerateEntryHashTable, \
                                  rva algn_180067958, rva stru_1801499E4>
                RUNTIME_FUNCTION <rva RtlDeleteFunctionTable, rva algn_180067B99, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlAddFunctionTable, rva algn_180067E84, \
                                  rva stru_1801499FC>
                RUNTIME_FUNCTION <rva RtlDeleteGrowableFunctionTable, \
                                  rva algn_180068033, rva stru_180149A14>
                RUNTIME_FUNCTION <rva RtlAvlRemoveNode, rva algn_1800683D7, \
                                  rva stru_1801438B4>
                RUNTIME_FUNCTION <rva RtlInstallFunctionTableCallback, \
                                  rva algn_1800686E4, rva stru_180149A24>
                RUNTIME_FUNCTION <rva RtlAddGrowableFunctionTable, rva algn_1800688E5,\
                                  rva stru_180149A40>
                RUNTIME_FUNCTION <rva RtlAvlInsertNodeEx, rva byte_180068A8F, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_180068A98, rva algn_180068BE8, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva sub_180068BF0, rva byte_180068C84, \
                                  rva stru_180149A5C>
                RUNTIME_FUNCTION <rva sub_180068C8C, rva byte_180068D0B, \
                                  rva stru_180149A70>
                RUNTIME_FUNCTION <rva sub_180068D14, rva algn_180068D71, \
                                  rva stru_180149A80>
                RUNTIME_FUNCTION <rva sub_180068D78, rva algn_180068E02, \
                                  rva stru_180149A98>
                RUNTIME_FUNCTION <rva sub_180068E08, rva algn_180068E88, \
                                  rva stru_180140AA4>
                RUNTIME_FUNCTION <rva sub_180068E90, rva byte_180068EEE, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_180068EF4, rva algn_180068F2A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180068F30, rva algn_180068F99, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlFindMessage, rva byte_180069094, \
                                  rva stru_180149AA8>
                RUNTIME_FUNCTION <rva sub_1800690F8, rva algn_180069176, \
                                  rva stru_180149AC0>
                RUNTIME_FUNCTION <rva sub_1800691A4, rva byte_1800693C0, \
                                  rva stru_180149ADC>
                RUNTIME_FUNCTION <rva sub_1800693F8, rva algn_1800694F9, \
                                  rva stru_180149B08>
                RUNTIME_FUNCTION <rva RtlQueryPackageIdentity, rva algn_180069549, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva RtlQueryPackageIdentityEx, rva algn_1800695B4, \
                                  rva stru_180149B2C>
                RUNTIME_FUNCTION <rva RtlQueryPackageClaims, rva algn_18006973A, \
                                  rva stru_180149B34>
                RUNTIME_FUNCTION <rva sub_180069740, rva byte_1800698C4, \
                                  rva stru_180149B64>
                RUNTIME_FUNCTION <rva sub_1800698CC, rva algn_1800699D2, \
                                  rva stru_180149B8C>
                RUNTIME_FUNCTION <rva sub_1800699D8, rva algn_180069A56, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlGUIDFromString, rva algn_180069B36, \
                                  rva stru_180149BB4>
                RUNTIME_FUNCTION <rva RtlStringFromGUIDEx, rva algn_180069C4A, \
                                  rva stru_180149BC8>
                RUNTIME_FUNCTION <rva sub_180069C50, rva byte_180069DAB, \
                                  rva stru_180149BF0>
                RUNTIME_FUNCTION <rva sub_180069DB4, rva byte_180069E20, \
                                  rva stru_180149C00>
                RUNTIME_FUNCTION <rva sub_180069E28, rva algn_180069E87, \
                                  rva stru_180149C24>
                RUNTIME_FUNCTION <rva RtlDecodePointer, rva algn_180069F24, \
                                  rva stru_180149C40>
                RUNTIME_FUNCTION <rva sub_180069FB4, rva algn_18006A0E1, \
                                  rva stru_180149C58>
                RUNTIME_FUNCTION <rva sub_18006A0E8, rva byte_18006A255, \
                                  rva stru_180149C88>
                RUNTIME_FUNCTION <rva sub_18006A25C, rva algn_18006A314, \
                                  rva stru_180149CAC>
                RUNTIME_FUNCTION <rva LdrFindEntryForAddress, rva algn_18006A369, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva sub_18006A370, rva algn_18006A46C, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_18006A4C8, rva algn_18006A797, \
                                  rva stru_180149CEC>
                RUNTIME_FUNCTION <rva LdrUnloadAlternateResourceModuleEx, \
                                  rva byte_18006A99E, rva stru_180149D10>
                RUNTIME_FUNCTION <rva sub_18006A9A4, rva byte_18006AAEB, \
                                  rva stru_180149D48>
                RUNTIME_FUNCTION <rva sub_18006AAF4, rva byte_18006AD0C, \
                                  rva stru_180149DA8>
                RUNTIME_FUNCTION <rva sub_18006AD14, rva byte_18006AD84, \
                                  rva stru_180149DC4>
                RUNTIME_FUNCTION <rva sub_18006AD8C, rva algn_18006ADC8, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18006ADD0, rva byte_18006B00E, \
                                  rva stru_180149DF0>
                RUNTIME_FUNCTION <rva sub_18006B054, rva byte_18006B0B0, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006B190, rva algn_18006B1F8, \
                                  rva stru_180149E04>
                RUNTIME_FUNCTION <rva sub_18006B200, rva byte_18006B2F6, \
                                  rva stru_180149E14>
                RUNTIME_FUNCTION <rva sub_18006B2FC, rva algn_18006B41A, \
                                  rva stru_180149E3C>
                RUNTIME_FUNCTION <rva sub_18006B420, rva algn_18006B597, \
                                  rva stru_180149E68>
                RUNTIME_FUNCTION <rva RtlGetActiveActivationContext, \
                                  rva algn_18006B664, rva stru_180149E8C>
                RUNTIME_FUNCTION <rva RtlGetThreadWorkOnBehalfTicket, \
                                  rva byte_18006B6FF, rva stru_180149EB8>
                RUNTIME_FUNCTION <rva sub_18006B71C, rva byte_18006B8BB, \
                                  rva stru_180149EDC>
                RUNTIME_FUNCTION <rva sub_18006B8C4, rva byte_18006BACB, \
                                  rva stru_180149F0C>
                RUNTIME_FUNCTION <rva sub_18006BAD4, rva byte_18006BB5C, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18006BB64, rva byte_18006BC9F, \
                                  rva stru_180149F40>
                RUNTIME_FUNCTION <rva sub_18006BCA8, rva byte_18006BFDE, \
                                  rva stru_180149F68>
                RUNTIME_FUNCTION <rva LdrGetProcedureAddressEx, rva algn_18006C011, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18006C018, rva byte_18006C0EE, \
                                  rva stru_180149F84>
                RUNTIME_FUNCTION <rva sub_18006C0F4, rva algn_18006C3F8, \
                                  rva stru_180149FAC>
                RUNTIME_FUNCTION <rva sub_18006C430, rva algn_18006C4B5, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006C4C0, rva byte_18006C55C, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006C570, rva algn_18006C694, \
                                  rva stru_18014A008>
                RUNTIME_FUNCTION <rva sub_18006C6A0, rva algn_18006C798, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18006C7A0, rva byte_18006CE3C, \
                                  rva stru_18014A020>
                RUNTIME_FUNCTION <rva sub_18006CE44, rva algn_18006CED7, \
                                  rva stru_18014A038>
                RUNTIME_FUNCTION <rva sub_18006CEE0, rva algn_18006CFB3, \
                                  rva stru_18014A058>
                RUNTIME_FUNCTION <rva RtlCopySecurityDescriptor, rva algn_18006D06C, \
                                  rva stru_18014A080>
                RUNTIME_FUNCTION <rva RtlSelfRelativeToAbsoluteSD, rva algn_18006D22E,\
                                  rva stru_18014A090>
                RUNTIME_FUNCTION <rva RtlMakeSelfRelativeSD, rva algn_18006D3B2, \
                                  rva stru_18014A0B8>
                RUNTIME_FUNCTION <rva sub_18006D510, rva byte_18006D8DC, \
                                  rva stru_18014A0E0>
                RUNTIME_FUNCTION <rva RtlAllocateAndInitializeSid, rva byte_18006D9EF,\
                                  rva stru_18014A108>
                RUNTIME_FUNCTION <rva sub_18006D9F8, rva algn_18006DAC2, \
                                  rva stru_18014A130>
                RUNTIME_FUNCTION <rva sub_18006DAC8, rva algn_18006DB28, \
                                  rva stru_18014A158>
                RUNTIME_FUNCTION <rva sub_18006DB30, rva algn_18006DB7A, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlMultiAppendUnicodeStringBuffer, \
                                  rva algn_18006DCC4, rva stru_18014A170>
                RUNTIME_FUNCTION <rva RtlpEnsureBufferSize, rva algn_18006DD77, \
                                  rva stru_18014A19C>
                RUNTIME_FUNCTION <rva RtlRestoreContext, rva algn_18006DE82, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlGuardCheckLongJumpTarget, rva algn_18006DF89,\
                                  rva stru_18014A1C0>
                RUNTIME_FUNCTION <rva sub_18006DF90, rva algn_18006DFB8, \
                                  rva stru_18014A1E4>
                RUNTIME_FUNCTION <rva sub_18006DFC0, rva byte_18006E0EB, \
                                  rva stru_18014A200>
                RUNTIME_FUNCTION <rva sub_18006E0F4, rva algn_18006E18A, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlpWow64SetContextOnAmd64, rva algn_18006E319, \
                                  rva stru_18014A214>
                RUNTIME_FUNCTION <rva sub_18006E320, rva byte_18006E3FB, \
                                  rva stru_18014A240>
                RUNTIME_FUNCTION <rva sub_18006E404, rva byte_18006E430, \
                                  rva stru_18014A258>
                RUNTIME_FUNCTION <rva sub_18006E438, rva byte_18006E57E, \
                                  rva stru_18014A260>
                RUNTIME_FUNCTION <rva sub_18006E584, rva byte_18006E5D0, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006E5D8, rva algn_18006E8F9, \
                                  rva stru_18014A288>
                RUNTIME_FUNCTION <rva sub_18006E900, rva byte_18006EA6B, \
                                  rva stru_18014A2B0>
                RUNTIME_FUNCTION <rva sub_18006EAB4, rva algn_18006EB63, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlInitializeSListHead, rva algn_18006EB89, \
                                  rva stru_18014A2E0>
                RUNTIME_FUNCTION <rva RtlpWow64GetContextOnAmd64, rva algn_18006ECD8, \
                                  rva stru_18014A2F8>
                RUNTIME_FUNCTION <rva sub_18006ECE0, rva byte_18006ED7B, \
                                  rva stru_18014A320>
                RUNTIME_FUNCTION <rva RtlCleanUpTEBLangLists, rva byte_18006EE56, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18006EE5C, rva algn_18006EEA4, \
                                  rva stru_18014A338>
                RUNTIME_FUNCTION <rva RtlpLoadUserUIByPolicy, rva algn_18006EF9A, \
                                  rva stru_18014A340>
                RUNTIME_FUNCTION <rva RtlpInitializeLangRegistryInfo, \
                                  rva algn_18006EFC6, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlpMuiFreeLangRegistryInfo, rva algn_18006F01A,\
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006F020, rva algn_18006F16D, \
                                  rva stru_18014A364>
                RUNTIME_FUNCTION <rva RtlpMuiRegLoadRegistryInfo, rva algn_18006F261, \
                                  rva stru_18014A384>
                RUNTIME_FUNCTION <rva RtlpMuiRegFreeRegistryInfo, rva byte_18006F47D, \
                                  rva stru_18014A3A4>
                RUNTIME_FUNCTION <rva sub_18006F484, rva algn_18006F4E7, \
                                  rva stru_18014A3C8>
                RUNTIME_FUNCTION <rva sub_18006F4F0, rva byte_18006F5E3, \
                                  rva stru_18014A3E4>
                RUNTIME_FUNCTION <rva sub_18006F5EC, rva byte_18006F6FE, \
                                  rva stru_18014A414>
                RUNTIME_FUNCTION <rva sub_18006F704, rva algn_18006F799, \
                                  rva stru_18014A43C>
                RUNTIME_FUNCTION <rva sub_18006F7A0, rva algn_18006F8DA, \
                                  rva stru_18014A460>
                RUNTIME_FUNCTION <rva sub_18006F8E0, rva byte_18006F906, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18006F90C, rva algn_18006F972, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18006F978, rva algn_18006F9D3, \
                                  rva stru_18014A478>
                RUNTIME_FUNCTION <rva TpSetDefaultPoolStackInformation, \
                                  rva algn_18006FAF3, rva stru_18014A490>
                RUNTIME_FUNCTION <rva sub_18006FB30, rva algn_18006FD97, \
                                  rva stru_18014A4C8>
                RUNTIME_FUNCTION <rva sub_18006FDA0, rva algn_18006FE87, \
                                  rva stru_18014A510>
                RUNTIME_FUNCTION <rva sub_18006FE90, rva byte_18006FEEF, \
                                  rva stru_18014A52C>
                RUNTIME_FUNCTION <rva sub_18006FEF8, rva algn_18006FF39, \
                                  rva stru_18014A544>
                RUNTIME_FUNCTION <rva TpCallbackMayRunLong, rva algn_18006FFA2, \
                                  rva stru_18014A55C>
                RUNTIME_FUNCTION <rva sub_18006FFA8, rva byte_1800700A3, \
                                  rva stru_18014A574>
                RUNTIME_FUNCTION <rva sub_1800700AC, rva algn_1800700F9, \
                                  rva stru_18014A598>
                RUNTIME_FUNCTION <rva sub_180070100, rva algn_18007016F, \
                                  rva stru_18014A5C0>
                RUNTIME_FUNCTION <rva RtlValidSecurityDescriptor, rva byte_18007027D, \
                                  rva stru_18014A5E8>
                RUNTIME_FUNCTION <rva sub_180070284, rva algn_180070385, \
                                  rva stru_18014A60C>
                RUNTIME_FUNCTION <rva AlpcInitializeMessageAttribute, \
                                  rva algn_1800703E8, rva stru_180140ACC>
                RUNTIME_FUNCTION <rva AlpcGetMessageAttribute, rva byte_18007041E, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180070488, rva byte_18007053C, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180070544, rva algn_180070616, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva LdrFindResource_U, rva algn_1800706F2, \
                                  rva stru_18014A634>
                RUNTIME_FUNCTION <rva AlpcFreeCompletionListMessage, \
                                  rva algn_180070803, rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlAllocateActivationContextStack, \
                                  rva algn_180070886, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlFreeThreadActivationContextStack, \
                                  rva byte_1800708C0, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlFreeActivationContextStack, \
                                  rva byte_18007099F, rva stru_180144E54>
                RUNTIME_FUNCTION <rva RtlDeactivateActivationContext, \
                                  rva algn_180070B12, rva stru_18014A65C>
                RUNTIME_FUNCTION <rva sub_180070B18, rva algn_180070C2D, \
                                  rva stru_18014A688>
                RUNTIME_FUNCTION <rva sub_180070C40, rva algn_180070D0D, \
                                  rva stru_18014A6B8>
                RUNTIME_FUNCTION <rva sub_180070D80, rva byte_180070DBC, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180070DC4, rva algn_180070DF2, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180070DF8, rva algn_180070EB2, \
                                  rva stru_18014A6DC>
                RUNTIME_FUNCTION <rva sub_180070EB8, rva byte_180071153, \
                                  rva stru_18014A6E8>
                RUNTIME_FUNCTION <rva sub_180071238, rva algn_1800713B9, \
                                  rva stru_18014A714>
                RUNTIME_FUNCTION <rva sub_180071510, rva byte_18007155F, \
                                  rva stru_18014A738>
                RUNTIME_FUNCTION <rva RtlLocateExtendedFeature2, rva algn_1800715C5, \
                                  rva stru_18014A758>
                RUNTIME_FUNCTION <rva sub_180071640, rva byte_18007171D, \
                                  rva stru_18014A778>
                RUNTIME_FUNCTION <rva sub_180071724, rva algn_180071817, \
                                  rva stru_18014A79C>
                RUNTIME_FUNCTION <rva sub_180071820, rva byte_18007187D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180071884, rva algn_1800718D2, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800718D8, rva byte_1800719AE, \
                                  rva stru_18014A7B4>
                RUNTIME_FUNCTION <rva sub_1800719B4, rva algn_180071F02, \
                                  rva stru_18014A7D8>
                RUNTIME_FUNCTION <rva RtlEncodePointer, rva algn_180071F39, \
                                  rva stru_18014A800>
                RUNTIME_FUNCTION <rva sub_180071F40, rva byte_18007205B, \
                                  rva stru_18014A818>
                RUNTIME_FUNCTION <rva sub_180072064, rva byte_18007231F, \
                                  rva stru_18014A838>
                RUNTIME_FUNCTION <rva RtlActivateActivationContext, \
                                  rva algn_180072370, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlActivateActivationContextEx, \
                                  rva byte_1800724A3, rva stru_18014A86C>
                RUNTIME_FUNCTION <rva sub_1800724AC, rva algn_18007261A, \
                                  rva stru_18014A890>
                RUNTIME_FUNCTION <rva sub_180072620, rva byte_180072A3B, \
                                  rva stru_18014A8C0>
                RUNTIME_FUNCTION <rva sub_180072A44, rva byte_180072B65, \
                                  rva stru_18014A8F4>
                RUNTIME_FUNCTION <rva sub_180072B6C, rva algn_180072E22, \
                                  rva stru_18014A91C>
                RUNTIME_FUNCTION <rva RtlCreateActivationContext, rva byte_180072F7D, \
                                  rva stru_18014A950>
                RUNTIME_FUNCTION <rva sub_180072F84, rva algn_180073001, \
                                  rva stru_18014A978>
                RUNTIME_FUNCTION <rva sub_180073008, rva algn_1800730D4, \
                                  rva stru_18014A9A0>
                RUNTIME_FUNCTION <rva LdrAddLoadAsDataTable, rva algn_1800732F9, \
                                  rva stru_18014A9B8>
                RUNTIME_FUNCTION <rva sub_180073300, rva algn_180073377, \
                                  rva stru_18014AA00>
                RUNTIME_FUNCTION <rva RtlCreateHashTableEx_0, rva byte_180073506, \
                                  rva stru_18014AA28>
                RUNTIME_FUNCTION <rva sub_180073554, rva byte_18007360D, \
                                  rva stru_18014AA50>
                RUNTIME_FUNCTION <rva sub_180073650, rva algn_180073801, \
                                  rva stru_18014AA64>
                RUNTIME_FUNCTION <rva sub_180073808, rva byte_180073853, \
                                  rva stru_18014AA9C>
                RUNTIME_FUNCTION <rva LdrRemoveLoadAsDataTable, rva algn_180073BD3, \
                                  rva stru_18014AABC>
                RUNTIME_FUNCTION <rva RtlValidRelativeSecurityDescriptor, \
                                  rva algn_180073D4A, rva stru_18014AB14>
                RUNTIME_FUNCTION <rva RtlSetHeapInformation, rva algn_180073E8A, \
                                  rva stru_18014AB24>
                RUNTIME_FUNCTION <rva sub_180073E90, rva algn_180073F48, \
                                  rva stru_18014AB3C>
                RUNTIME_FUNCTION <rva RtlQueryHeapInformation, rva byte_180074095, \
                                  rva stru_18014AB6C>
                RUNTIME_FUNCTION <rva sub_18007409C, rva byte_180074174, \
                                  rva stru_18014AB9C>
                RUNTIME_FUNCTION <rva sub_18007417C, rva byte_18007421C, \
                                  rva stru_18014ABC4>
                RUNTIME_FUNCTION <rva sub_180074230, rva byte_180074265, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18007426C, rva byte_18007438B, \
                                  rva stru_18014ABF0>
                RUNTIME_FUNCTION <rva sub_180074394, rva algn_180074567, \
                                  rva stru_18014AC24>
                RUNTIME_FUNCTION <rva sub_180074570, rva algn_1800746D0, \
                                  rva stru_18014AC50>
                RUNTIME_FUNCTION <rva LdrGetDllHandleByMapping, rva byte_18007478C, \
                                  rva stru_18014AC64>
                RUNTIME_FUNCTION <rva sub_180074794, rva algn_180074824, \
                                  rva stru_18014AC94>
                RUNTIME_FUNCTION <rva sub_180074844, rva algn_180074969, \
                                  rva stru_18014ACA8>
                RUNTIME_FUNCTION <rva sub_180074970, rva algn_180074A64, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180074B38, rva byte_180074B9D, \
                                  rva stru_18014ACD4>
                RUNTIME_FUNCTION <rva RtlIsCurrentProcess, rva algn_180074BD6, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva LdrInitializeThunk, rva byte_180074C00, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180074C08, rva byte_180074C56, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180074C5C, rva byte_1800750AE, \
                                  rva stru_18014ACF0>
                RUNTIME_FUNCTION <rva sub_1800750B4, rva byte_18007515B, \
                                  rva stru_18014AD24>
                RUNTIME_FUNCTION <rva RtlFreeSid, rva algn_1800751A2, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800752AC, rva byte_180075400, \
                                  rva stru_18014AD3C>
                RUNTIME_FUNCTION <rva sub_180075408, rva byte_180075460, \
                                  rva stru_18014AD68>
                RUNTIME_FUNCTION <rva sub_180075468, rva algn_1800754CA, \
                                  rva stru_18014AD80>
                RUNTIME_FUNCTION <rva sub_1800754D0, rva algn_180075593, \
                                  rva stru_18014AD98>
                RUNTIME_FUNCTION <rva RtlUnicodeStringToInteger, rva algn_180075706, \
                                  rva stru_18014ADC8>
                RUNTIME_FUNCTION <rva RtlpQueryDefaultUILanguage, rva byte_180075855, \
                                  rva stru_18014AE0C>
                RUNTIME_FUNCTION <rva sub_18007585C, rva byte_1800758DE, \
                                  rva stru_18014AE30>
                RUNTIME_FUNCTION <rva sub_1800758E4, rva algn_1800759A2, \
                                  rva stru_18014AE4C>
                RUNTIME_FUNCTION <rva RtlNtStatusToDosErrorNoTeb, rva byte_180075A8B, \
                                  rva stru_18014AE70>
                RUNTIME_FUNCTION <rva sub_180075A94, rva algn_180075B2A, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlCharToInteger, rva byte_180075BE0, \
                                  rva stru_18014AE88>
                RUNTIME_FUNCTION <rva TpAllocIoCompletion, rva algn_180075E61, \
                                  rva stru_18014AEB8>
                RUNTIME_FUNCTION <rva sub_180075E68, rva byte_180075EE3, \
                                  rva stru_180149B2C>
                RUNTIME_FUNCTION <rva sub_180075EEC, rva algn_180075F49, \
                                  rva stru_18014AF18>
                RUNTIME_FUNCTION <rva ZwQuerySystemTime_0, rva algn_180075F63, \
                                  rva stru_18014AF44>
                RUNTIME_FUNCTION <rva RtlGetSystemPreferredUILanguages, \
                                  rva algn_18007617A, rva stru_18014AF60>
                RUNTIME_FUNCTION <rva sub_180076180, rva algn_180076253, \
                                  rva stru_18014AF8C>
                RUNTIME_FUNCTION <rva RtlCreateUserStack, rva byte_180076546, \
                                  rva stru_18014AFCC>
                RUNTIME_FUNCTION <rva sub_18007654C, rva algn_180076730, \
                                  rva stru_18014B028>
                RUNTIME_FUNCTION <rva RtlSetSecurityObject, rva byte_180076775, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18007677C, rva algn_180076CB1, \
                                  rva stru_18014B084>
                RUNTIME_FUNCTION <rva sub_180076CB8, rva algn_180076D5A, \
                                  rva stru_18014B0B8>
                RUNTIME_FUNCTION <rva RtlTryAcquireSRWLockShared, rva algn_180076DC4, \
                                  rva stru_18014B0D0>
                RUNTIME_FUNCTION <rva RtlExpandEnvironmentStrings_U, \
                                  rva algn_180076E48, rva stru_18014B0E8>
                RUNTIME_FUNCTION <rva ApiSetQueryApiSetPresence, rva algn_180076F2D, \
                                  rva stru_18014B104>
                RUNTIME_FUNCTION <rva RtlAddressInSectionTable, rva algn_180076F6B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlNumberOfSetBits, rva algn_18007707A, \
                                  rva stru_18014B118>
                RUNTIME_FUNCTION <rva LdrGetDllHandleByName, rva algn_180077111, \
                                  rva stru_18014B140>
                RUNTIME_FUNCTION <rva RtlIsDosDeviceName_U, rva algn_180077149, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlAcquirePrivilege, rva byte_180077363, \
                                  rva stru_18014B170>
                RUNTIME_FUNCTION <rva sub_18007736C, rva algn_1800773AB, \
                                  rva stru_18014B198>
                RUNTIME_FUNCTION <rva RtlImpersonateSelfEx, rva algn_1800774E2, \
                                  rva stru_18014B1B4>
                RUNTIME_FUNCTION <rva sub_180077528, rva algn_1800775C1, \
                                  rva stru_18014B1E0>
                RUNTIME_FUNCTION <rva RtlIpv6AddressToStringExA, rva algn_1800776AC, \
                                  rva stru_18014B204>
                RUNTIME_FUNCTION <rva RtlIpv6AddressToStringA, rva algn_180077841, \
                                  rva stru_18014B230>
                RUNTIME_FUNCTION <rva RtlAddAccessAllowedAce, rva algn_18007786F, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180077894, rva byte_18007798E, \
                                  rva stru_18014B25C>
                RUNTIME_FUNCTION <rva sub_180077994, rva algn_180077B39, \
                                  rva stru_18014B27C>
                RUNTIME_FUNCTION <rva RtlSidHashLookup, rva algn_180077C48, \
                                  rva stru_18014B2A8>
                RUNTIME_FUNCTION <rva RtlIpv4StringToAddressExA, rva algn_180077CCC, \
                                  rva stru_18014B2D4>
                RUNTIME_FUNCTION <rva RtlIpv4StringToAddressA, rva algn_180077EC2, \
                                  rva stru_18014B300>
                RUNTIME_FUNCTION <rva sub_180077EF8, rva algn_180077FE2, \
                                  rva stru_18014B330>
                RUNTIME_FUNCTION <rva sub_180077FE8, rva byte_18007823B, \
                                  rva stru_18014B354>
                RUNTIME_FUNCTION <rva sub_180078244, rva algn_180078302, \
                                  rva stru_18014B37C>
                RUNTIME_FUNCTION <rva sub_180078308, rva byte_1800783B5, \
                                  rva stru_180142D0C>
                RUNTIME_FUNCTION <rva sub_1800783BC, rva algn_1800784C7, \
                                  rva stru_18014B390>
                RUNTIME_FUNCTION <rva sub_1800784D0, rva algn_180078556, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800785C0, rva byte_1800786D4, \
                                  rva stru_18014B3B0>
                RUNTIME_FUNCTION <rva sub_1800786DC, rva algn_180078741, \
                                  rva stru_18014B3F4>
                RUNTIME_FUNCTION <rva RtlDeleteAce, rva algn_1800787CA, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800787D0, rva byte_18007881C, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180078830, rva algn_180078877, \
                                  rva stru_18014B424>
                RUNTIME_FUNCTION <rva sub_180078880, rva algn_18007890D, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180078920, rva byte_180078A0E, \
                                  rva stru_18014B434>
                RUNTIME_FUNCTION <rva sub_180078A14, rva algn_180078B95, \
                                  rva stru_18014B45C>
                RUNTIME_FUNCTION <rva TpCancelAsyncIoOperation, rva byte_180078BFE, \
                                  rva stru_18014B484>
                RUNTIME_FUNCTION <rva sub_180078C2C, rva byte_180078CFC, \
                                  rva stru_1801427CC>
                RUNTIME_FUNCTION <rva RtlQueryInformationAcl, rva algn_180078E03, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva RtlDuplicateUnicodeString, rva byte_180078F40, \
                                  rva stru_18014B49C>
                RUNTIME_FUNCTION <rva RtlAddAccessAllowedAceEx, rva byte_180078FBE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180078FC4, rva algn_1800790E9, \
                                  rva stru_18014B4D4>
                RUNTIME_FUNCTION <rva sub_1800790F0, rva algn_18007918B, \
                                  rva stru_18014B4F8>
                RUNTIME_FUNCTION <rva RtlAdjustPrivilege, rva algn_1800792B5, \
                                  rva stru_18014B520>
                RUNTIME_FUNCTION <rva sub_1800792D0, rva algn_18007930D, \
                                  rva stru_18014B53C>
                RUNTIME_FUNCTION <rva sub_180079340, rva algn_1800793C2, \
                                  rva stru_18014B554>
                RUNTIME_FUNCTION <rva sub_1800793C8, rva byte_1800794BE, \
                                  rva stru_18014B57C>
                RUNTIME_FUNCTION <rva TpAlpcRegisterCompletionList, \
                                  rva byte_18007952D, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180079534, rva algn_1800795C6, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpAlpcUnregisterCompletionList, \
                                  rva algn_180079606, rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpWaitForAlpcCompletion, rva algn_180079671, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva TpAllocAlpcCompletion, rva byte_18007969E, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva TpReleaseAlpcCompletion, rva byte_180079716, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18007971C, rva algn_180079773, \
                                  rva stru_18014B5A0>
                RUNTIME_FUNCTION <rva TpAllocAlpcCompletionEx, rva byte_18007979E, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800797A4, rva algn_180079A1A, \
                                  rva stru_18014B5B8>
                RUNTIME_FUNCTION <rva sub_180079A78, rva algn_180079B0A, \
                                  rva stru_18014B618>
                RUNTIME_FUNCTION <rva RtlWow64GetSharedInfoProcess, \
                                  rva byte_180079B85, rva stru_180149A14>
                RUNTIME_FUNCTION <rva RtlNewSecurityObjectEx, rva algn_180079C54, \
                                  rva stru_18014B638>
                RUNTIME_FUNCTION <rva RtlFindExportedRoutineByName, \
                                  rva algn_180079D62, rva stru_18014B640>
                RUNTIME_FUNCTION <rva RtlQueryActivationContextApplicationSettings, \
                                  rva algn_180079F3A, rva stru_18014B658>
                RUNTIME_FUNCTION <rva sub_180079F40, rva byte_180079F90, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180079F98, rva byte_180079FDC, \
                                  rva stru_18014B680>
                RUNTIME_FUNCTION <rva RtlInterlockedClearBitRun, rva algn_18007A089, \
                                  rva stru_18014B698>
                RUNTIME_FUNCTION <rva RtlVerifyVersionInfo, rva byte_18007A2D0, \
                                  rva stru_18014B6B0>
                RUNTIME_FUNCTION <rva sub_18007A2F8, rva algn_18007A38A, \
                                  rva stru_18014B6E4>
                RUNTIME_FUNCTION <rva LdrQueryImageFileExecutionOptions, \
                                  rva algn_18007A3C6, rva stru_180140F00>
                RUNTIME_FUNCTION <rva LdrQueryImageFileExecutionOptionsEx, \
                                  rva byte_18007A45C, rva stru_18014B70C>
                RUNTIME_FUNCTION <rva LdrQueryImageFileKeyOption, rva algn_18007A54C, \
                                  rva stru_18014B730>
                RUNTIME_FUNCTION <rva RtlCreateMemoryBlockLookaside, \
                                  rva algn_18007A725, rva stru_18014B764>
                RUNTIME_FUNCTION <rva RtlCreateMemoryZone, rva algn_18007A7CB, \
                                  rva stru_18014B790>
                RUNTIME_FUNCTION <rva RtlConvertDeviceFamilyInfoToString, \
                                  rva algn_18007A8B7, rva stru_18014B7CC>
                RUNTIME_FUNCTION <rva sub_18007A8C0, rva byte_18007AAAC, \
                                  rva stru_18014B7E0>
                RUNTIME_FUNCTION <rva sub_18007ABBC, rva algn_18007AC0E, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlTimeToSecondsSince1980, rva algn_18007AC5A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlTimeToElapsedTimeFields, rva byte_18007ACF0, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18007ACF8, rva algn_18007AD41, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlTimeToSecondsSince1970, rva algn_18007AD8A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlWow64GetProcessMachines, rva algn_18007AED6, \
                                  rva stru_18014B814>
                RUNTIME_FUNCTION <rva RtlAreBitsSet, rva algn_18007AF10, \
                                  rva stru_18014B840>
                RUNTIME_FUNCTION <rva RtlDeleteHashTable, rva algn_18007AFC5, \
                                  rva stru_180140EEC>
                RUNTIME_FUNCTION <rva RtlpNtQueryValueKey, rva algn_18007B0E8, \
                                  rva stru_18014B858>
                RUNTIME_FUNCTION <rva RtlSetAllBits, rva byte_18007B146, \
                                  rva stru_18014B880>
                RUNTIME_FUNCTION <rva sub_18007B14C, rva byte_18007B1BB, \
                                  rva stru_18014B898>
                RUNTIME_FUNCTION <rva RtlIpv4AddressToStringExW, rva algn_18007B296, \
                                  rva stru_18014B8B4>
                RUNTIME_FUNCTION <rva RtlIpv4AddressToStringW, rva algn_18007B2EB, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_18007B310, rva algn_18007B553, \
                                  rva stru_18014B8DC>
                RUNTIME_FUNCTION <rva RtlpCheckDynamicTimeZoneInformation, \
                                  rva byte_18007B70F, rva stru_18014B910>
                RUNTIME_FUNCTION <rva sub_18007B7CC, rva algn_18007B978, \
                                  rva stru_18014B92C>
                RUNTIME_FUNCTION <rva sub_18007B980, rva byte_18007BAE4, \
                                  rva stru_18014B958>
                RUNTIME_FUNCTION <rva sub_18007BAEC, rva byte_18007BBB4, \
                                  rva stru_18014B984>
                RUNTIME_FUNCTION <rva RtlSidDominates, rva algn_18007BCDA, \
                                  rva stru_18014B9A4>
                RUNTIME_FUNCTION <rva sub_18007BCE0, rva algn_18007BD30, \
                                  rva stru_18014B9BC>
                RUNTIME_FUNCTION <rva RtlDowncaseUnicodeString, rva algn_18007BDD7, \
                                  rva stru_18014B9D4>
                RUNTIME_FUNCTION <rva sub_18007BE18, rva algn_18007BF11, \
                                  rva stru_18014BA18>
                RUNTIME_FUNCTION <rva EtwWriteUMSecurityEvent, rva algn_18007BFC2, \
                                  rva stru_18014BA44>
                RUNTIME_FUNCTION <rva RtlSidHashInitialize, rva algn_18007C07A, \
                                  rva stru_18014BA68>
                RUNTIME_FUNCTION <rva RtlGetUserPreferredUILanguages, \
                                  rva algn_18007C302, rva stru_18014BA8C>
                RUNTIME_FUNCTION <rva RtlRemoveEntryHashTable, rva byte_18007C376, \
                                  rva stru_18014BAB8>
                RUNTIME_FUNCTION <rva TpReleaseIoCompletion, rva algn_18007C429, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18007C430, rva algn_18007C644, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlWow64IsWowGuestMachineSupported, \
                                  rva byte_18007C77C, rva stru_18014BAD0>
                RUNTIME_FUNCTION <rva sub_18007C784, rva algn_18007C84C, \
                                  rva stru_18014BB04>
                RUNTIME_FUNCTION <rva RtlGetLocaleFileMappingAddress, \
                                  rva algn_18007C8D7, rva stru_18014BB1C>
                RUNTIME_FUNCTION <rva sub_18007C8E0, rva algn_18007C9CE, \
                                  rva stru_18014BB38>
                RUNTIME_FUNCTION <rva sub_18007C9E0, rva byte_18007CAAE, \
                                  rva stru_18014BB60>
                RUNTIME_FUNCTION <rva sub_18007CAB4, rva byte_18007CB40, \
                                  rva stru_18014BB7C>
                RUNTIME_FUNCTION <rva RtlPublishWnfStateData, rva byte_18007CBFF, \
                                  rva stru_18014BB94>
                RUNTIME_FUNCTION <rva sub_18007CC10, rva algn_18007CCCF, \
                                  rva stru_18014BBB8>
                RUNTIME_FUNCTION <rva RtlIpv6StringToAddressExA, rva algn_18007CD6C, \
                                  rva stru_18014BBDC>
                RUNTIME_FUNCTION <rva RtlIpv6StringToAddressA, rva byte_18007CFF4, \
                                  rva stru_18014BC08>
                RUNTIME_FUNCTION <rva sub_18007CFFC, rva algn_18007D09A, \
                                  rva stru_18014BC30>
                RUNTIME_FUNCTION <rva RtlCreateTagHeap, rva byte_18007D0FC, \
                                  rva stru_18014BC38>
                RUNTIME_FUNCTION <rva LdrLockLoaderLock, rva byte_18007D250, \
                                  rva stru_18014BC7C>
                RUNTIME_FUNCTION <rva sub_18007D258, rva algn_18007D398, \
                                  rva stru_18014BCBC>
                RUNTIME_FUNCTION <rva sub_18007D3A0, rva algn_18007D554, \
                                  rva stru_18014BCDC>
                RUNTIME_FUNCTION <rva RtlSystemTimeToLocalTime, rva byte_18007D5BE, \
                                  rva stru_18014BD10>
                RUNTIME_FUNCTION <rva sub_18007D5D0, rva algn_18007D625, \
                                  rva stru_18014BD24>
                RUNTIME_FUNCTION <rva RtlCheckForOrphanedCriticalSections, \
                                  rva algn_18007D64D, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18007D660, rva algn_18007D6C8, \
                                  rva stru_18014BD4C>
                RUNTIME_FUNCTION <rva RtlDeleteSecurityObject, rva algn_18007D743, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlDestroyProcessParameters, rva algn_18007D793,\
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlIpv4AddressToStringExA, rva algn_18007D872, \
                                  rva stru_18014BDB4>
                RUNTIME_FUNCTION <rva RtlIpv4AddressToStringA, rva algn_18007D8C9, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_18007D8D0, rva byte_18007D8EC, \
                                  rva stru_18014BDDC>
                RUNTIME_FUNCTION <rva sub_18007D8F4, rva algn_18007D98D, \
                                  rva stru_18014BDF4>
                RUNTIME_FUNCTION <rva RtlImageDirectoryEntryToData, \
                                  rva algn_18007D9C9, rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18007DA30, rva algn_18007DAD5, \
                                  rva stru_18014BE18>
                RUNTIME_FUNCTION <rva LdrLoadAlternateResourceModule, \
                                  rva byte_18007DD25, rva stru_18014BE30>
                RUNTIME_FUNCTION <rva sub_18007DD2C, rva algn_18007DD95, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlInitializeGenericTableAvl, \
                                  rva algn_18007DDF9, rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlGetProductInfo, rva algn_18007DF37, \
                                  rva stru_18014BE60>
                RUNTIME_FUNCTION <rva LdrUnlockLoaderLock, rva byte_18007E00E, \
                                  rva stru_18014BE90>
                RUNTIME_FUNCTION <rva sub_18007E014, rva algn_18007E071, \
                                  rva stru_18014BEC8>
                RUNTIME_FUNCTION <rva RtlpApplyLengthFunction, rva algn_18007E117, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18007E120, rva algn_18007E168, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18007E170, rva byte_18007E1BC, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18007E1C4, rva algn_18007E2D7, \
                                  rva stru_18014BED4>
                RUNTIME_FUNCTION <rva sub_18007E2E0, rva byte_18007E3AE, \
                                  rva stru_18014BF04>
                RUNTIME_FUNCTION <rva RtlConvertSharedToExclusive, rva algn_18007E421,\
                                  rva stru_18014BF2C>
                RUNTIME_FUNCTION <rva RtlQueryInformationActiveActivationContext, \
                                  rva algn_18007E459, rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18007E460, rva algn_18007E607, \
                                  rva stru_18014BF44>
                RUNTIME_FUNCTION <rva sub_18007E610, rva algn_18007E689, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18007E690, rva algn_18007E73A, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlGetElementGenericTable, rva algn_18007E7D1, \
                                  rva stru_18014BF70>
                RUNTIME_FUNCTION <rva sub_18007E7D8, rva algn_18007E855, \
                                  rva stru_18014BF88>
                RUNTIME_FUNCTION <rva RtlAcquireReleaseSRWLockExclusive, \
                                  rva byte_18007E880, rva stru_18014BFA0>
                RUNTIME_FUNCTION <rva TpAllocCleanupGroup, rva byte_18007E94B, \
                                  rva stru_18014BFB8>
                RUNTIME_FUNCTION <rva sub_18007E954, rva byte_18007E9C9, \
                                  rva stru_18014BFF0>
                RUNTIME_FUNCTION <rva sub_18007E9F0, rva loc_18007EA37, \
                                  rva stru_18014C014>
                RUNTIME_FUNCTION <rva loc_18007EA37, rva loc_18007EE70, \
                                  rva stru_18014C024>
                RUNTIME_FUNCTION <rva loc_18007EE70, rva algn_18007EEB4, \
                                  rva stru_18014C044>
                RUNTIME_FUNCTION <rva RtlUnregisterFeatureConfigurationChangeNotification,\
                                  rva algn_18007EEE9, rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18007EEF0, rva algn_18007EF31, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpWaitForWork, rva byte_18007EF73, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18007EF7C, rva algn_18007EFC2, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva LdrGetDllDirectory, rva algn_18007F052, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18007F058, rva byte_18007F0DF, \
                                  rva stru_18014C064>
                RUNTIME_FUNCTION <rva sub_18007F0F0, rva algn_18007F1E8, \
                                  rva stru_18014C06C>
                RUNTIME_FUNCTION <rva ntdll_8, rva byte_18007F27E, rva stru_18014C094>
                RUNTIME_FUNCTION <rva TpWaitForJobNotification, rva algn_18007F315, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpReleaseJobNotification, rva byte_18007F380, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18007F388, rva algn_18007F471, \
                                  rva stru_18014C0D4>
                RUNTIME_FUNCTION <rva sub_18007F478, rva algn_18007F4CC, \
                                  rva stru_18014C0F4>
                RUNTIME_FUNCTION <rva TpAllocJobNotification, rva algn_18007F6B9, \
                                  rva stru_18014C10C>
                RUNTIME_FUNCTION <rva RtlFreeUserStack, rva algn_18007F6ED, \
                                  rva stru_18014C138>
                RUNTIME_FUNCTION <rva sub_18007F710, rva byte_18007F820, \
                                  rva stru_18014C140>
                RUNTIME_FUNCTION <rva RtlpGetNameFromLangInfoNode, rva algn_18007F8C8,\
                                  rva stru_18014C168>
                RUNTIME_FUNCTION <rva RtlDecompressBufferEx, rva algn_18007F94F, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva RtlSetUnhandledExceptionFilter, \
                                  rva byte_18007F9E0, rva stru_18014C188>
                RUNTIME_FUNCTION <rva RtlSetSearchPathMode, rva algn_18007FAF1, \
                                  rva stru_18014C1A0>
                RUNTIME_FUNCTION <rva sub_18007FAF8, rva algn_18007FCA4, \
                                  rva stru_18014C1BC>
                RUNTIME_FUNCTION <rva LdrSetDllDirectory, rva algn_18007FDEA, \
                                  rva stru_18014C1D8>
                RUNTIME_FUNCTION <rva sub_18007FE10, rva algn_18007FE4D, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18007FE60, rva algn_18007FF99, \
                                  rva stru_18014C1F4>
                RUNTIME_FUNCTION <rva RtlUserFiberStart, rva algn_18007FFF5, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlApplyRXactNoFlush, rva algn_180080021, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlAbortRXact, rva byte_18008006F, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180080078, rva algn_180080172, \
                                  rva stru_18014C21C>
                RUNTIME_FUNCTION <rva TpDisassociateCallback, rva algn_1800801EE, \
                                  rva stru_18014C248>
                RUNTIME_FUNCTION <rva RtlNormalizeString, rva algn_180080278, \
                                  rva stru_18014C260>
                RUNTIME_FUNCTION <rva sub_180080280, rva byte_180080300, \
                                  rva stru_18014C274>
                RUNTIME_FUNCTION <rva sub_180080308, rva byte_180080433, \
                                  rva stru_18014C290>
                RUNTIME_FUNCTION <rva sub_18008043C, rva algn_180080569, \
                                  rva stru_18014C2B8>
                RUNTIME_FUNCTION <rva sub_180080570, rva byte_1800805B5, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800805F0, rva algn_180080708, \
                                  rva stru_18014C2E4>
                RUNTIME_FUNCTION <rva sub_180080740, rva byte_1800808B0, \
                                  rva stru_18014C308>
                RUNTIME_FUNCTION <rva LdrProcessInitializationComplete, \
                                  rva algn_18008094F, rva stru_18014C32C>
                RUNTIME_FUNCTION <rva sub_1800809AC, rva algn_180080B49, \
                                  rva stru_18014C344>
                RUNTIME_FUNCTION <rva RtlReleasePrivilege, rva algn_180080BF6, \
                                  rva stru_18014C368>
                RUNTIME_FUNCTION <rva RtlSetProtectedPolicy, rva byte_180080E8E, \
                                  rva stru_18014C384>
                RUNTIME_FUNCTION <rva sub_180080E94, rva algn_180080F61, \
                                  rva stru_18014C3B0>
                RUNTIME_FUNCTION <rva LdrFindResourceEx_U, rva algn_180081047, \
                                  rva stru_18014C3DC>
                RUNTIME_FUNCTION <rva TpSetPoolMaxThreadsSoftLimit, \
                                  rva algn_1800810D9, rva stru_18014C404>
                RUNTIME_FUNCTION <rva RtlStartRXact, rva byte_1800811DB, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlAddAttributeActionToRXact, \
                                  rva byte_180081363, rva stru_18014C40C>
                RUNTIME_FUNCTION <rva sub_18008136C, rva algn_18008138C, \
                                  rva stru_18014C434>
                RUNTIME_FUNCTION <rva RtlGetFullPathName_U, rva algn_1800813C4, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva EtwGetTraceLoggerHandle, rva algn_180081408, \
                                  rva stru_18014C44C>
                RUNTIME_FUNCTION <rva EtwGetTraceEnableLevel, rva algn_180081441, \
                                  rva stru_18014C464>
                RUNTIME_FUNCTION <rva EtwGetTraceEnableFlags, rva algn_180081481, \
                                  rva stru_18014C47C>
                RUNTIME_FUNCTION <rva sub_180081488, rva algn_1800814E2, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800814E8, rva byte_1800815A4, \
                                  rva stru_18014C494>
                RUNTIME_FUNCTION <rva sub_1800815AC, rva algn_180081615, \
                                  rva stru_18014C4B4>
                RUNTIME_FUNCTION <rva RtlpGetLCIDFromLangInfoNode, rva algn_180081668,\
                                  rva stru_18014C4D8>
                RUNTIME_FUNCTION <rva sub_180081670, rva algn_18008174A, \
                                  rva stru_18014C4F4>
                RUNTIME_FUNCTION <rva sub_180081760, rva algn_180081990, \
                                  rva stru_18014C520>
                RUNTIME_FUNCTION <rva RtlQueryProtectedPolicy, rva algn_180081A29, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva TpReleaseCleanupGroup, rva algn_180081A8E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlUpdateTimer, rva algn_180081B91, \
                                  rva stru_18014C548>
                RUNTIME_FUNCTION <rva LdrGetProcedureAddress, rva byte_180081BBE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180081BC4, rva algn_180081C36, \
                                  rva stru_18014C5A4>
                RUNTIME_FUNCTION <rva RtlpLoadMachineUIByPolicy, rva algn_180081D19, \
                                  rva stru_18014C5D4>
                RUNTIME_FUNCTION <rva RtlCreateBoundaryDescriptor, rva algn_180081E0D,\
                                  rva stru_180148644>
                RUNTIME_FUNCTION <rva sub_180081E20, rva algn_1800821AD, \
                                  rva stru_18014C5F8>
                RUNTIME_FUNCTION <rva RtlpNtEnumerateSubKey, rva algn_1800822B7, \
                                  rva stru_18014C61C>
                RUNTIME_FUNCTION <rva sub_1800822F0, rva byte_1800824BB, \
                                  rva stru_18014C644>
                RUNTIME_FUNCTION <rva RtlGetExePath, rva byte_18008258B, \
                                  rva stru_18014C66C>
                RUNTIME_FUNCTION <rva sub_180082594, rva byte_18008283D, \
                                  rva stru_18014C684>
                RUNTIME_FUNCTION <rva sub_180082844, rva algn_1800828B1, \
                                  rva stru_18014C6AC>
                RUNTIME_FUNCTION <rva sub_1800828D0, rva byte_18008293B, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_180082944, rva algn_1800829EE, \
                                  rva stru_18014C6D8>
                RUNTIME_FUNCTION <rva RtlCompressBuffer, rva algn_180082A84, \
                                  rva stru_1801410F8>
                RUNTIME_FUNCTION <rva RtlCreateTimerQueue, rva byte_180082B3D, \
                                  rva stru_18014C700>
                RUNTIME_FUNCTION <rva sub_180082B44, rva algn_180082BEE, \
                                  rva stru_18014C73C>
                RUNTIME_FUNCTION <rva RtlSetEnvironmentStrings, rva byte_180082D0B, \
                                  rva stru_18014C75C>
                RUNTIME_FUNCTION <rva sub_180082D14, rva algn_180082ECD, \
                                  rva stru_18014C7B4>
                RUNTIME_FUNCTION <rva RtlQueryWnfMetaNotification, rva algn_180082F26,\
                                  rva stru_18014B424>
                RUNTIME_FUNCTION <rva sub_180082F4C, rva byte_180083026, \
                                  rva stru_18014C800>
                RUNTIME_FUNCTION <rva sub_18008302C, rva byte_180083100, \
                                  rva stru_18014C824>
                RUNTIME_FUNCTION <rva sub_180083108, rva byte_1800831FC, \
                                  rva stru_18014C860>
                RUNTIME_FUNCTION <rva sub_180083204, rva byte_18008326B, \
                                  rva stru_18014C874>
                RUNTIME_FUNCTION <rva sub_180083274, rva byte_1800833B0, \
                                  rva stru_18014C8A0>
                RUNTIME_FUNCTION <rva sub_1800833B8, rva byte_1800833FD, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180083404, rva byte_1800834BF, \
                                  rva stru_18014C8D4>
                RUNTIME_FUNCTION <rva sub_1800834D0, rva algn_180083528, \
                                  rva stru_18014C8E8>
                RUNTIME_FUNCTION <rva RtlQueryTokenHostIdAsUlong64, \
                                  rva byte_1800835B4, rva stru_18014C900>
                RUNTIME_FUNCTION <rva sub_1800835BC, rva byte_180083660, \
                                  rva stru_18014C914>
                RUNTIME_FUNCTION <rva TpSetPoolMinThreads, rva algn_1800836EA, \
                                  rva stru_18014C950>
                RUNTIME_FUNCTION <rva RtlLockCurrentThread, rva byte_1800837A0, \
                                  rva stru_18014C96C>
                RUNTIME_FUNCTION <rva sub_1800837A8, rva algn_180083816, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18008384C, rva byte_1800838B4, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800838BC, rva algn_18008398C, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva RtlGetSearchPath, rva algn_180083A0B, \
                                  rva stru_18014C98C>
                RUNTIME_FUNCTION <rva RtlGetActiveConsoleId, rva byte_180083A3E, \
                                  rva stru_18014C9A4>
                RUNTIME_FUNCTION <rva sub_180083A50, rva algn_180083A81, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180083A90, rva algn_180083AF0, \
                                  rva stru_18014C9BC>
                RUNTIME_FUNCTION <rva sub_180083B00, rva algn_180083C81, \
                                  rva stru_18014C9E8>
                RUNTIME_FUNCTION <rva RtlQueryWnfStateDataWithExplicitScope, \
                                  rva algn_180083D4F, rva stru_18014CA04>
                RUNTIME_FUNCTION <rva RtlIsPackageSid, rva algn_180083DA3, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlpMergeSecurityAttributeInformation, \
                                  rva byte_180083F8F, rva stru_18014CA3C>
                RUNTIME_FUNCTION <rva sub_180083F98, rva algn_180083FD8, \
                                  rva stru_18014CA64>
                RUNTIME_FUNCTION <rva sub_180083FE0, rva algn_180084063, \
                                  rva stru_180149B2C>
                RUNTIME_FUNCTION <rva RtlCreateVirtualAccountSid, rva byte_1800841DD, \
                                  rva stru_18014CA7C>
                RUNTIME_FUNCTION <rva sub_1800841E4, rva algn_180084370, \
                                  rva stru_18014CAA4>
                RUNTIME_FUNCTION <rva RtlCheckPortableOperatingSystem, \
                                  rva byte_18008443F, rva stru_18014CAD0>
                RUNTIME_FUNCTION <rva LdrGetKnownDllSectionHandle, rva byte_180084502,\
                                  rva stru_18014CAF0>
                RUNTIME_FUNCTION <rva sub_18008452C, rva byte_18008461F, \
                                  rva stru_18014CB10>
                RUNTIME_FUNCTION <rva LdrProcessRelocationBlockEx_0, \
                                  rva byte_1800846F4, rva stru_18014CB34>
                RUNTIME_FUNCTION <rva sub_1800846FC, rva byte_1800847B4, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180084820, rva algn_180084879, \
                                  rva stru_18014CB5C>
                RUNTIME_FUNCTION <rva sub_180084880, rva byte_1800848EE, \
                                  rva stru_18014CB7C>
                RUNTIME_FUNCTION <rva sub_1800848F4, rva byte_180084956, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18008495C, rva algn_1800849A4, \
                                  rva stru_18014CB94>
                RUNTIME_FUNCTION <rva RtlDeleteTimerQueueEx, rva byte_180084B2C, \
                                  rva stru_18014CBB8>
                RUNTIME_FUNCTION <rva sub_180084B34, rva byte_180084B7B, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva LdrRegisterDllNotification, rva byte_180084C55, \
                                  rva stru_18014CC10>
                RUNTIME_FUNCTION <rva sub_180084C5C, rva byte_180084CFD, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlTestAndPublishWnfStateData, \
                                  rva algn_180084DB8, rva stru_18014CC34>
                RUNTIME_FUNCTION <rva RtlExtendCorrelationVector, rva byte_180084E2E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180084E34, rva algn_180084E6F, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlIncrementCorrelationVector, \
                                  rva byte_180084F5C, rva stru_18014CC58>
                RUNTIME_FUNCTION <rva sub_180084F64, rva algn_180084FAA, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpWaitForIoCompletion, rva algn_180085032, \
                                  rva stru_18014CC74>
                RUNTIME_FUNCTION <rva sub_180085038, rva byte_18008517D, \
                                  rva stru_18014CC90>
                RUNTIME_FUNCTION <rva RtlQueryRegistryValuesEx, rva algn_1800851CE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlDestroyMemoryBlockLookaside, \
                                  rva algn_180085234, rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlDestroyMemoryZone, rva byte_18008529D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800852A4, rva byte_1800852E0, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800852E8, rva algn_1800853C6, \
                                  rva stru_1801463C0>
                RUNTIME_FUNCTION <rva sub_1800853F0, rva algn_180085445, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180085450, rva byte_18008549D, \
                                  rva stru_18014CCAC>
                RUNTIME_FUNCTION <rva sub_1800854B0, rva algn_1800854DA, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800854E0, rva algn_18008550F, \
                                  rva stru_18014CCC4>
                RUNTIME_FUNCTION <rva EtwRegisterTraceGuidsA, rva algn_180085551, \
                                  rva stru_18014CCE0>
                RUNTIME_FUNCTION <rva RtlConvertSRWLockExclusiveToShared, \
                                  rva byte_18008557F, rva stru_18014CCE8>
                RUNTIME_FUNCTION <rva RtlCopyMappedMemory, rva algn_1800855D8, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800855E0, rva byte_18008561D, \
                                  rva stru_18014CD00>
                RUNTIME_FUNCTION <rva RtlCopyString, rva algn_180085684, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpDisablePoolCallbackChecks, rva algn_1800856D0,\
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlDestroyHandleTable, rva algn_180085783, \
                                  rva stru_18014CD28>
                RUNTIME_FUNCTION <rva sub_180085800, rva algn_180085832, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlInitializeCorrelationVector, \
                                  rva algn_1800858B2, rva stru_18014CD40>
                RUNTIME_FUNCTION <rva sub_1800858B8, rva algn_18008598B, \
                                  rva stru_18014CD60>
                RUNTIME_FUNCTION <rva TpSetPoolThreadBasePriority, rva algn_180085A0C,\
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlAddAccessDeniedAceEx, rva byte_180085A5E, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlSetSystemBootStatus, rva byte_180085A9B, \
                                  rva stru_18014CCE0>
                RUNTIME_FUNCTION <rva sub_180085AA4, rva algn_180085AE9, \
                                  rva stru_18014CD70>
                RUNTIME_FUNCTION <rva RtlCheckSandboxedToken, rva algn_180085B71, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180085B80, rva byte_180085B9B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180085C60, rva algn_180085CE9, \
                                  rva stru_18014CD88>
                RUNTIME_FUNCTION <rva AlpcRegisterCompletionList, rva algn_180085E07, \
                                  rva stru_18014CDAC>
                RUNTIME_FUNCTION <rva RtlEraseUnicodeString, rva algn_180085E49, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlNewSecurityObjectWithMultipleInheritance, \
                                  rva algn_180085EF0, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva RtlFindNextForwardRunClear, rva algn_1800860D5, \
                                  rva stru_180147608>
                RUNTIME_FUNCTION <rva RtlFindClearBits, rva byte_1800863DC, \
                                  rva stru_18014CDB4>
                RUNTIME_FUNCTION <rva sub_1800863F0, rva algn_180086458, \
                                  rva stru_18014CDDC>
                RUNTIME_FUNCTION <rva sub_180086460, rva loc_18008649F, \
                                  rva stru_18014CDF4>
                RUNTIME_FUNCTION <rva loc_18008649F, rva loc_180086504, \
                                  rva stru_18014CE04>
                RUNTIME_FUNCTION <rva loc_180086504, rva loc_180086A53, \
                                  rva stru_18014CE1C>
                RUNTIME_FUNCTION <rva loc_180086A53, rva loc_180086A65, \
                                  rva stru_18014CE30>
                RUNTIME_FUNCTION <rva loc_180086A65, rva algn_180086AEC, \
                                  rva stru_18014CE40>
                RUNTIME_FUNCTION <rva RtlImageRvaToVa, rva algn_180086B66, \
                                  rva stru_18014CE6C>
                RUNTIME_FUNCTION <rva RtlpWow64CtxFromAmd64, rva algn_180086D51, \
                                  rva stru_18014CE8C>
                RUNTIME_FUNCTION <rva sub_180086D58, rva byte_180086E3E, \
                                  rva stru_18014CEAC>
                RUNTIME_FUNCTION <rva RtlUnlockCurrentThread, rva algn_180086ED7, \
                                  rva stru_18014CED4>
                RUNTIME_FUNCTION <rva sub_180086EE0, rva byte_180086F33, \
                                  rva stru_18014A258>
                RUNTIME_FUNCTION <rva sub_180086F3C, rva byte_18008721F, \
                                  rva stru_18014CEDC>
                RUNTIME_FUNCTION <rva sub_180087228, rva algn_180087290, \
                                  rva stru_18014CF08>
                RUNTIME_FUNCTION <rva RtlReplaceSystemDirectoryInPath, \
                                  rva byte_180087344, rva stru_1801434C4>
                RUNTIME_FUNCTION <rva sub_18008734C, rva byte_18008739F, \
                                  rva stru_18014CF24>
                RUNTIME_FUNCTION <rva RtlFindUnicodeSubstring, rva byte_18008745C, \
                                  rva stru_18014CF3C>
                RUNTIME_FUNCTION <rva sub_180087464, rva byte_1800874FB, \
                                  rva stru_18014CF60>
                RUNTIME_FUNCTION <rva sub_180087504, rva byte_1800875EF, \
                                  rva stru_18014CF7C>
                RUNTIME_FUNCTION <rva sub_1800875F8, rva algn_1800877C2, \
                                  rva stru_18014CFAC>
                RUNTIME_FUNCTION <rva sub_180087840, rva algn_180087931, \
                                  rva stru_18014CFD8>
                RUNTIME_FUNCTION <rva sub_180087938, rva algn_180087A39, \
                                  rva stru_18014D010>
                RUNTIME_FUNCTION <rva sub_180087A40, rva algn_180087B7A, \
                                  rva stru_18014D034>
                RUNTIME_FUNCTION <rva sub_180087B80, rva algn_180087BF1, \
                                  rva stru_18014D05C>
                RUNTIME_FUNCTION <rva sub_180087BF8, rva byte_180087C84, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180087C8C, rva byte_180087D73, \
                                  rva stru_18014D074>
                RUNTIME_FUNCTION <rva sub_180087D7C, rva byte_180087E43, \
                                  rva stru_18014D0A0>
                RUNTIME_FUNCTION <rva sub_180087E4C, rva algn_180087EF8, \
                                  rva stru_18014D0C0>
                RUNTIME_FUNCTION <rva sub_180087F00, rva algn_180087F57, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlContractHashTable, rva algn_180087FD4, \
                                  rva stru_18014D0E4>
                RUNTIME_FUNCTION <rva RtlCreateSystemVolumeInformationFolder, \
                                  rva algn_180088267, rva stru_18014D104>
                RUNTIME_FUNCTION <rva sub_180088270, rva algn_180088459, \
                                  rva stru_18014D128>
                RUNTIME_FUNCTION <rva sub_180088460, rva byte_1800885B6, \
                                  rva stru_18014D15C>
                RUNTIME_FUNCTION <rva sub_1800885BC, rva algn_1800886B9, \
                                  rva stru_18014D188>
                RUNTIME_FUNCTION <rva RtlNewSecurityObject, rva byte_180088700, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva sub_180088708, rva byte_18008873D, \
                                  rva stru_18014D1B0>
                RUNTIME_FUNCTION <rva sub_180088744, rva algn_180088799, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlCapabilityCheckForSingleSessionSku, \
                                  rva algn_180088822, rva stru_18014D1C8>
                RUNTIME_FUNCTION <rva RtlExpandHashTable, rva algn_1800889F7, \
                                  rva stru_18014D1EC>
                RUNTIME_FUNCTION <rva RtlRemovePrivileges, rva algn_180088AEF, \
                                  rva stru_18014D210>
                RUNTIME_FUNCTION <rva RtlCreateUserProcessEx, rva algn_180088BBA, \
                                  rva stru_18014D238>
                RUNTIME_FUNCTION <rva sub_180088BC0, rva algn_180088E96, \
                                  rva stru_18014D258>
                RUNTIME_FUNCTION <rva RtlSelfRelativeToAbsoluteSD2, \
                                  rva algn_180089028, rva stru_18014D28C>
                RUNTIME_FUNCTION <rva RtlDosSearchPath_U, rva algn_180089258, \
                                  rva stru_18014D2B4>
                RUNTIME_FUNCTION <rva RtlSetThreadIsCritical, rva byte_1800892D4, \
                                  rva stru_18014D2E0>
                RUNTIME_FUNCTION <rva sub_1800892DC, rva algn_1800895CB, \
                                  rva stru_18014D2FC>
                RUNTIME_FUNCTION <rva LdrFlushAlternateResourceModules, \
                                  rva byte_1800896DF, rva stru_18014D348>
                RUNTIME_FUNCTION <rva sub_1800896E8, rva algn_180089764, \
                                  rva stru_18014D378>
                RUNTIME_FUNCTION <rva RtlConnectToSm, rva byte_1800898FB, \
                                  rva stru_18014D39C>
                RUNTIME_FUNCTION <rva RtlSetProcessPreferredUILanguages, \
                                  rva byte_180089A9C, rva stru_18014D3BC>
                RUNTIME_FUNCTION <rva RtlSendMsgToSm, rva byte_180089B53, \
                                  rva stru_18014D3E0>
                RUNTIME_FUNCTION <rva sub_180089B5C, rva byte_180089C60, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva RtlFindSetBits, rva algn_180089F81, \
                                  rva stru_18014D3FC>
                RUNTIME_FUNCTION <rva EtwEventWriteStartScenario, rva byte_18008A07C, \
                                  rva stru_18014D424>
                RUNTIME_FUNCTION <rva LdrResRelease, rva algn_18008A198, \
                                  rva stru_18014D450>
                RUNTIME_FUNCTION <rva RtlConvertExclusiveToShared, rva algn_18008A1C6,\
                                  rva stru_18014D490>
                RUNTIME_FUNCTION <rva RtlLookupFirstMatchingElementGenericTableAvl, \
                                  rva byte_18008A25E, rva stru_18014D4A8>
                RUNTIME_FUNCTION <rva sub_18008A264, rva algn_18008A382, \
                                  rva stru_18014D4C0>
                RUNTIME_FUNCTION <rva sub_18008A388, rva algn_18008A437, \
                                  rva stru_180149928>
                RUNTIME_FUNCTION <rva sub_18008A440, rva byte_18008A5F5, \
                                  rva stru_18014D4E8>
                RUNTIME_FUNCTION <rva sub_18008A5FC, rva algn_18008A65A, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18008A660, rva byte_18008A6C0, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlGetProcessPreferredUILanguages, \
                                  rva byte_18008A785, rva stru_18014D508>
                RUNTIME_FUNCTION <rva sub_18008A78C, rva byte_18008A83B, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_18008A844, rva algn_18008A8B2, \
                                  rva stru_18014D52C>
                RUNTIME_FUNCTION <rva RtlDestroyAtomTable, rva algn_18008A96C, \
                                  rva stru_18014D544>
                RUNTIME_FUNCTION <rva RtlEmptyAtomTable, rva algn_18008A9F8, \
                                  rva stru_18014D568>
                RUNTIME_FUNCTION <rva RtlAddActionToRXact, rva algn_18008AA43, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva EtwSetMark, rva byte_18008AA74, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18008AA7C, rva algn_18008AB10, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva RtlAddAuditAccessAceEx, rva byte_18008AB6E, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008AB74, rva algn_18008AC4B, \
                                  rva stru_180142D0C>
                RUNTIME_FUNCTION <rva RtlWriteRegistryValue, rva algn_18008ACED, \
                                  rva stru_180143134>
                RUNTIME_FUNCTION <rva RtlFreeOemString, rva algn_18008AD18, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva LdrVerifyImageMatchesChecksumEx, \
                                  rva byte_18008B03C, rva stru_18014D590>
                RUNTIME_FUNCTION <rva sub_18008B050, rva byte_18008B1D5, \
                                  rva stru_18014D628>
                RUNTIME_FUNCTION <rva sub_18008B1DC, rva algn_18008B28A, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18008B290, rva algn_18008B318, \
                                  rva stru_18014D650>
                RUNTIME_FUNCTION <rva RtlCompareString, rva algn_18008B3C3, \
                                  rva stru_18014D668>
                RUNTIME_FUNCTION <rva RtlAllocateAndInitializeSidEx, \
                                  rva byte_18008B47E, rva stru_18014D694>
                RUNTIME_FUNCTION <rva RtlAddAuditAccessAce, rva algn_18008B4C9, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008B4D0, rva byte_18008B535, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_18008B53C, rva byte_18008B5E3, \
                                  rva stru_18014D6B8>
                RUNTIME_FUNCTION <rva sub_18008B5EC, rva algn_18008B6F7, \
                                  rva stru_18014D6DC>
                RUNTIME_FUNCTION <rva RtlInitializeRXact, rva algn_18008B88E, \
                                  rva stru_18014D6F4>
                RUNTIME_FUNCTION <rva LdrAddDllDirectory, rva algn_18008BA93, \
                                  rva stru_18014D720>
                RUNTIME_FUNCTION <rva RtlGetSystemBootStatus, rva algn_18008BACB, \
                                  rva stru_18014CCE0>
                RUNTIME_FUNCTION <rva RtlpVerifyAndCommitUILanguageSettings, \
                                  rva algn_18008BC35, rva stru_18014D768>
                RUNTIME_FUNCTION <rva RtlSetProcessIsCritical, rva algn_18008BCB1, \
                                  rva stru_18014D798>
                RUNTIME_FUNCTION <rva RtlSetCurrentEnvironment, rva algn_18008BE24, \
                                  rva stru_18014D7B4>
                RUNTIME_FUNCTION <rva RtlAddAccessDeniedAce, rva byte_18008BE4F, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008BE58, rva algn_18008BFA2, \
                                  rva stru_18014D7DC>
                RUNTIME_FUNCTION <rva LdrRemoveDllDirectory, rva algn_18008C068, \
                                  rva stru_18014D804>
                RUNTIME_FUNCTION <rva RtlDeleteRegistryValue, rva byte_18008C11C, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva EtwRegisterSecurityProvider, rva algn_18008C168,\
                                  rva stru_18014D820>
                RUNTIME_FUNCTION <rva LdrSetMUICacheType, rva byte_18008C1D2, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18008C1F0, rva algn_18008C21A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlInitializeNtUserPfn, rva algn_18008C337, \
                                  rva stru_18014E08C>
                RUNTIME_FUNCTION <rva RtlResetNtUserPfn, rva algn_18008C3B0, \
                                  rva stru_18014E0A4>
                RUNTIME_FUNCTION <rva sub_18008C3F8, rva byte_18008C4B7, \
                                  rva stru_18014E0AC>
                RUNTIME_FUNCTION <rva __security_check_cookie, rva byte_18008C4EE, \
                                  rva stru_18014E0C0>
                RUNTIME_FUNCTION <rva sub_18008C4F4, rva algn_18008C50F, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva __report_gsfailure, rva algn_18008C668, \
                                  rva stru_18014E0C4>
                RUNTIME_FUNCTION <rva __report_rangecheckfailure, rva byte_18008C683, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva __report_securityfailure, rva algn_18008C711, \
                                  rva stru_18014C404>
                RUNTIME_FUNCTION <rva loc_18008C740, rva algn_18008C748, \
                                  rva stru_18014E220>
                RUNTIME_FUNCTION <rva sub_18008C760, rva algn_18008C7EB, \
                                  rva stru_18014E3F0>
                RUNTIME_FUNCTION <rva sub_18008C800, rva algn_18008C818, \
                                  rva stru_18014E420>
                RUNTIME_FUNCTION <rva sub_18008C820, rva algn_18008C866, \
                                  rva stru_18014E424>
                RUNTIME_FUNCTION <rva sub_18008C870, rva algn_18008C8B6, \
                                  rva stru_18014E430>
                RUNTIME_FUNCTION <rva sub_18008C8C0, rva algn_18008C909, \
                                  rva stru_18014E43C>
                RUNTIME_FUNCTION <rva sub_18008C910, rva byte_18008C959, \
                                  rva stru_18014E448>
                RUNTIME_FUNCTION <rva __C_specific_handler, rva algn_18008CB38, \
                                  rva stru_18014EC4C>
                RUNTIME_FUNCTION <rva __iscsym, rva algn_18008CB8D, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva __iscsymf, rva algn_18008CBDA, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva atoi, rva byte_18008CE3F, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva _i64toa, rva byte_18008CE9B, rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ltoa, rva algn_18008CED8, rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ui64toa, rva algn_18008CEFA, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ultoa, rva algn_18008CF1A, rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18008CF20, rva byte_18008CF96, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_18008CF9C, rva algn_18008D00A, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva _i64tow, rva byte_18008D03B, rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ltow, rva algn_18008D078, rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ui64tow, rva algn_18008D09A, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva _ultow, rva algn_18008D0BA, rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18008D0C0, rva algn_18008D151, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva sub_18008D158, rva byte_18008D1E0, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva _lfind, rva algn_18008D294, rva stru_18014E4BC>
                RUNTIME_FUNCTION <rva _local_unwind, rva algn_18008D2C8, \
                                  rva stru_18014E4D4>
                RUNTIME_FUNCTION <rva sub_18008D300, rva byte_18008D360, \
                                  rva stru_18014E4E8>
                RUNTIME_FUNCTION <rva _memicmp, rva byte_18008D37F, \
                                  rva stru_18014E4DC>
                RUNTIME_FUNCTION <rva _snprintf, rva algn_18008D435, \
                                  rva stru_18014E504>
                RUNTIME_FUNCTION <rva _snwprintf, rva algn_18008D515, \
                                  rva stru_18014E510>
                RUNTIME_FUNCTION <rva _splitpath, rva algn_18008D5A8, \
                                  rva stru_180143134>
                RUNTIME_FUNCTION <rva sub_18008D5B0, rva algn_18008D828, \
                                  rva stru_18014E51C>
                RUNTIME_FUNCTION <rva _stricmp, rva algn_18008D88F, \
                                  rva stru_18014E4DC>
                RUNTIME_FUNCTION <rva _strlwr_s, rva byte_18008D933, \
                                  rva stru_18014E534>
                RUNTIME_FUNCTION <rva sub_18008D93C, rva algn_18008D999, \
                                  rva stru_18014E4E8>
                RUNTIME_FUNCTION <rva _strnicmp, rva algn_18008D9AF, \
                                  rva stru_18014E4DC>
                RUNTIME_FUNCTION <rva _strupr, rva algn_18008DA07, rva stru_18014E544>
                RUNTIME_FUNCTION <rva _strupr_s, rva algn_18008DA73, \
                                  rva stru_18014E534>
                RUNTIME_FUNCTION <rva swprintf, rva algn_18008DB2C, \
                                  rva stru_18014E550>
                RUNTIME_FUNCTION <rva sub_18008DB5C, rva algn_18008DBA9, \
                                  rva stru_18014CED4>
                RUNTIME_FUNCTION <rva sub_18008DBB0, rva algn_18008DC22, \
                                  rva stru_180151974>
                RUNTIME_FUNCTION <rva sub_18008DC84, rva algn_18008DD22, \
                                  rva stru_18014E55C>
                RUNTIME_FUNCTION <rva _vsnprintf, rva byte_18008DD46, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008DD4C, rva algn_18008DDF2, \
                                  rva stru_18014ED1C>
                RUNTIME_FUNCTION <rva _vsnwprintf, rva byte_18008DE16, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008DE1C, rva algn_18008DEFA, \
                                  rva stru_18014E568>
                RUNTIME_FUNCTION <rva _wcslwr, rva algn_18008DFAF, rva stru_18014E544>
                RUNTIME_FUNCTION <rva _wcslwr_s, rva algn_18008E035, \
                                  rva stru_18014E578>
                RUNTIME_FUNCTION <rva _wcsnicmp, rva algn_18008E0AA, \
                                  rva stru_18014E4E8>
                RUNTIME_FUNCTION <rva _wcsnset_s, rva algn_18008E138, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _wcsset_s, rva algn_18008E197, \
                                  rva stru_18014E58C>
                RUNTIME_FUNCTION <rva _wcstoi64, rva algn_18008E1C9, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva _wcstoui64, rva byte_18008E1FC, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18008E204, rva algn_18008E461, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva _wcsupr_s, rva algn_18008E525, \
                                  rva stru_18014E578>
                RUNTIME_FUNCTION <rva _wtoi, rva algn_18008E54F, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva atan, rva algn_18008E806, rva stru_18014E598>
                RUNTIME_FUNCTION <rva atan2, rva algn_18008EF44, rva stru_18014E5A4>
                RUNTIME_FUNCTION <rva bsearch, rva algn_18008F044, rva stru_1801511CC>
                RUNTIME_FUNCTION <rva bsearch_s, rva algn_18008F156, \
                                  rva stru_1801511CC>
                RUNTIME_FUNCTION <rva ceil, rva algn_18008F271, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva cos, rva algn_18008F691, rva stru_18014E5D4>
                RUNTIME_FUNCTION <rva sin, rva byte_18008FAB5, rva stru_18014E5E4>
                RUNTIME_FUNCTION <rva fabs, rva algn_18008FC3A, rva stru_18014E5F4>
                RUNTIME_FUNCTION <rva floor, rva byte_18008FD3F, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva log, rva algn_180090146, rva stru_1801410F8>
                RUNTIME_FUNCTION <rva longjmp, rva algn_180090178, rva stru_180140D90>
                RUNTIME_FUNCTION <rva mbstowcs, rva algn_18009024D, \
                                  rva stru_180145330>
                RUNTIME_FUNCTION <rva memcmp, rva byte_180090357, rva stru_18014E608>
                RUNTIME_FUNCTION <rva qsort, rva loc_1800903C7, rva stru_18014E62C>
                RUNTIME_FUNCTION <rva loc_1800903C7, rva loc_180090698, \
                                  rva stru_18014E644>
                RUNTIME_FUNCTION <rva loc_180090698, rva loc_1800906B0, \
                                  rva stru_18014E664>
                RUNTIME_FUNCTION <rva loc_1800906B0, rva loc_1800906D0, \
                                  rva stru_18014E674>
                RUNTIME_FUNCTION <rva loc_1800906D0, rva algn_1800906F0, \
                                  rva stru_18014E664>
                RUNTIME_FUNCTION <rva qsort_s, rva loc_180090766, rva stru_18014E694>
                RUNTIME_FUNCTION <rva loc_180090766, rva loc_180090A5D, \
                                  rva stru_18014E6B0>
                RUNTIME_FUNCTION <rva loc_180090A5D, rva loc_180090A75, \
                                  rva stru_18014E6CC>
                RUNTIME_FUNCTION <rva loc_180090A75, rva loc_180090A8D, \
                                  rva stru_18014E6DC>
                RUNTIME_FUNCTION <rva loc_180090A8D, rva algn_180090AAE, \
                                  rva stru_18014E6CC>
                RUNTIME_FUNCTION <rva sprintf, rva algn_180090B45, rva stru_18014E6F8>
                RUNTIME_FUNCTION <rva sqrt, rva algn_180090C4E, rva stru_18014E700>
                RUNTIME_FUNCTION <rva sscanf, rva byte_180090C95, rva stru_18014E708>
                RUNTIME_FUNCTION <rva sub_180090C9C, rva byte_180090D1F, \
                                  rva stru_180148F14>
                RUNTIME_FUNCTION <rva strcat, rva byte_180090DC0, rva stru_18014E710>
                RUNTIME_FUNCTION <rva strcpy, rva algn_180090E87, rva stru_18014E714>
                RUNTIME_FUNCTION <rva strcmp, rva byte_180090F80, rva stru_18014E718>
                RUNTIME_FUNCTION <rva strcspn, rva byte_180091031, rva stru_18014E71C>
                RUNTIME_FUNCTION <rva strlen, rva byte_1800910F8, rva stru_18014E730>
                RUNTIME_FUNCTION <rva strncat, rva algn_1800912A5, rva stru_18014E738>
                RUNTIME_FUNCTION <rva strncmp, rva byte_180091375, rva stru_18014E740>
                RUNTIME_FUNCTION <rva strncpy, rva algn_1800914F2, rva stru_18014E748>
                RUNTIME_FUNCTION <rva strpbrk, rva byte_1800915BF, rva stru_18014E74C>
                RUNTIME_FUNCTION <rva strspn, rva algn_1800916C3, rva stru_18014E760>
                RUNTIME_FUNCTION <rva sub_18009172C, rva algn_180091949, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva strtol, rva algn_180091978, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180091980, rva algn_1800919A8, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva strtoul, rva byte_1800919DB, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva tan, rva algn_180091CB8, rva stru_18014E774>
                RUNTIME_FUNCTION <rva sub_180091CC0, rva algn_180091E87, \
                                  rva stru_18014E780>
                RUNTIME_FUNCTION <rva tolower, rva byte_180091EBD, rva stru_180140A18>
                RUNTIME_FUNCTION <rva toupper, rva algn_180091F2D, rva stru_18014E790>
                RUNTIME_FUNCTION <rva towlower, rva algn_180091F65, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva wcsncpy, rva algn_1800921A9, rva stru_18014E798>
                RUNTIME_FUNCTION <rva sub_18009232C, rva byte_18009253C, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva wcstol, rva algn_180092578, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180092580, rva algn_1800925A8, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva wcstoul, rva byte_1800925DB, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva wcstombs, rva byte_180092664, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva __GSHandlerCheck, rva algn_180092689, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva __GSHandlerCheckCommon, rva algn_1800926EB, \
                                  rva stru_1801494A8>
                RUNTIME_FUNCTION <rva sub_180092700, rva algn_180092718, \
                                  rva stru_18014E7A8>
                RUNTIME_FUNCTION <rva locret_180092720, rva algn_180092721, \
                                  rva stru_18014E7AC>
                RUNTIME_FUNCTION <rva nullsub_1, rva algn_180092731, \
                                  rva stru_18014E7B0>
                RUNTIME_FUNCTION <rva sub_1800927D0, rva algn_1800929E8, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva sub_1800929F0, rva byte_180092A13, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180092A40, rva algn_180093299, \
                                  rva stru_18014E7B4>
                RUNTIME_FUNCTION <rva sub_1800932A0, rva algn_1800932E7, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800932F0, rva algn_180093341, \
                                  rva stru_18014E7D8>
                RUNTIME_FUNCTION <rva sub_180093348, rva algn_1800933C8, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_1800933D0, rva byte_180093CDC, \
                                  rva stru_18014E7EC>
                RUNTIME_FUNCTION <rva sub_180093CE4, rva byte_180093D2D, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180093D34, rva byte_180093D85, \
                                  rva stru_18014E7D8>
                RUNTIME_FUNCTION <rva sub_180093D8C, rva algn_180093E11, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_180093FC0, rva byte_18009427E, \
                                  rva stru_18014E810>
                RUNTIME_FUNCTION <rva sub_180094294, rva algn_1800942F9, \
                                  rva stru_180149B2C>
                RUNTIME_FUNCTION <rva sub_180094300, rva algn_1800943BA, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800943C0, rva algn_1800944E7, \
                                  rva stru_18014E844>
                RUNTIME_FUNCTION <rva sub_1800944F0, rva algn_1800949B0, \
                                  rva stru_18014E864>
                RUNTIME_FUNCTION <rva sub_1800949C0, rva byte_180094A4B, \
                                  rva stru_1801507E8>
                RUNTIME_FUNCTION <rva sub_180094AA0, rva byte_180094B8F, \
                                  rva stru_18014E890>
                RUNTIME_FUNCTION <rva sub_180094B98, rva byte_180094DFF, \
                                  rva stru_18014E8BC>
                RUNTIME_FUNCTION <rva sub_180094E08, rva algn_180094E67, \
                                  rva stru_18014E8B0>
                RUNTIME_FUNCTION <rva sub_180094E70, rva algn_180094E97, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_180094EA0, rva algn_180095118, \
                                  rva stru_18014E8E0>
                RUNTIME_FUNCTION <rva sub_180095120, rva byte_18009514E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180095154, rva algn_180095228, \
                                  rva stru_18014E8D8>
                RUNTIME_FUNCTION <rva sub_1800953E0, rva byte_1800953FD, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180095404, rva byte_180095480, \
                                  rva stru_18014E8F4>
                RUNTIME_FUNCTION <rva sub_180095488, rva algn_1800954A7, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800954B0, rva byte_1800954C1, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800954D8, rva algn_180095506, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180095510, rva byte_18009560E, \
                                  rva stru_18014E928>
                RUNTIME_FUNCTION <rva sub_180095614, rva byte_1800957D3, \
                                  rva stru_18014E950>
                RUNTIME_FUNCTION <rva sub_1800957DC, rva byte_180095943, \
                                  rva stru_18014E964>
                RUNTIME_FUNCTION <rva sub_18009594C, rva algn_180095972, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180095980, rva algn_180096238, \
                                  rva stru_18014E934>
                RUNTIME_FUNCTION <rva sub_180096260, rva algn_180096312, \
                                  rva stru_18014E980>
                RUNTIME_FUNCTION <rva sub_180096318, rva byte_18009632C, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180096334, rva byte_18009637D, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180096384, rva algn_1800963D1, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18009641C, rva byte_1800964BE, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva _i64toa_s, rva algn_180096524, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ltoa_s, rva algn_180096553, rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ui64toa_s, rva algn_180096574, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ultoa_s, rva byte_180096594, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva sub_18009659C, rva algn_1800966C9, \
                                  rva stru_18014E994>
                RUNTIME_FUNCTION <rva sub_1800966D0, rva algn_1800967F1, \
                                  rva stru_18014E994>
                RUNTIME_FUNCTION <rva _i64tow_s, rva algn_180096824, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ltow_s, rva algn_180096853, rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ui64tow_s, rva algn_180096874, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _ultow_s, rva byte_180096894, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva sub_18009689C, rva algn_1800969D9, \
                                  rva stru_18014E9B0>
                RUNTIME_FUNCTION <rva sub_1800969E0, rva algn_180096B18, \
                                  rva stru_18014E9B0>
                RUNTIME_FUNCTION <rva _makepath_s, rva algn_180096C64, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva _snprintf_s, rva algn_180096C8E, \
                                  rva stru_18014E9D8>
                RUNTIME_FUNCTION <rva _vsnprintf_s, rva algn_180096D35, \
                                  rva stru_18014E9E4>
                RUNTIME_FUNCTION <rva _snscanf_s, rva algn_180096D79, \
                                  rva stru_18014E9F4>
                RUNTIME_FUNCTION <rva _snwprintf_s, rva byte_180096D9E, \
                                  rva stru_18014E9D8>
                RUNTIME_FUNCTION <rva _vsnwprintf_s, rva algn_180096E50, \
                                  rva stru_18014EA00>
                RUNTIME_FUNCTION <rva _snwscanf_s, rva algn_180096E99, \
                                  rva stru_18014E9F4>
                RUNTIME_FUNCTION <rva _splitpath_s, rva algn_18009712D, \
                                  rva stru_18014EA14>
                RUNTIME_FUNCTION <rva _strnset_s, rva algn_1800971C1, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva _strset_s, rva algn_180097222, \
                                  rva stru_18014E58C>
                RUNTIME_FUNCTION <rva _wmakepath_s, rva algn_1800973A4, \
                                  rva stru_18014E534>
                RUNTIME_FUNCTION <rva _wsplitpath_s, rva byte_18009765E, \
                                  rva stru_18014EA14>
                RUNTIME_FUNCTION <rva memcpy_s, rva byte_1800976FC, \
                                  rva stru_18014E578>
                RUNTIME_FUNCTION <rva memmove_s, rva algn_180097768, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva sprintf_s, rva algn_18009778E, \
                                  rva stru_18014EA30>
                RUNTIME_FUNCTION <rva vsprintf_s, rva algn_1800977E8, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva sscanf_s, rva byte_18009783D, \
                                  rva stru_18014EA3C>
                RUNTIME_FUNCTION <rva strcat_s, rva algn_1800978E3, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva strcpy_s, rva algn_18009796F, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva strncat_s, rva byte_180097A80, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva strncpy_s, rva algn_180097B6E, \
                                  rva stru_18014EA48>
                RUNTIME_FUNCTION <rva strtok_s, rva byte_180097CDC, \
                                  rva stru_18014EA54>
                RUNTIME_FUNCTION <rva swprintf_s, rva algn_180097D0E, \
                                  rva stru_18014EA30>
                RUNTIME_FUNCTION <rva vswprintf_s, rva algn_180097D72, \
                                  rva stru_18014E534>
                RUNTIME_FUNCTION <rva swscanf_s, rva algn_180097DCE, \
                                  rva stru_18014EA3C>
                RUNTIME_FUNCTION <rva wcscat_s, rva algn_180097E7A, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva wcscpy_s, rva algn_180097F04, \
                                  rva stru_18014E9CC>
                RUNTIME_FUNCTION <rva wcsncat_s, rva algn_180098023, \
                                  rva stru_18014E534>
                RUNTIME_FUNCTION <rva wcsncpy_s, rva byte_180098120, \
                                  rva stru_18014EA6C>
                RUNTIME_FUNCTION <rva wcstok_s, rva byte_18009823B, \
                                  rva stru_18014E578>
                RUNTIME_FUNCTION <rva sub_180098244, rva byte_180098A70, \
                                  rva stru_18014EA7C>
                RUNTIME_FUNCTION <rva sub_180098A78, rva byte_180098AC6, \
                                  rva stru_18014EABC>
                RUNTIME_FUNCTION <rva sub_180098ACC, rva algn_180098BA1, \
                                  rva stru_18014EACC>
                RUNTIME_FUNCTION <rva sub_180098BA8, rva byte_180098C93, \
                                  rva stru_18014EAA4>
                RUNTIME_FUNCTION <rva sub_180098C9C, rva byte_180098CE5, \
                                  rva stru_18014EAE0>
                RUNTIME_FUNCTION <rva sub_180098CEC, rva byte_180098D3E, \
                                  rva stru_18014EAEC>
                RUNTIME_FUNCTION <rva sub_180098D44, rva byte_180098DAF, \
                                  rva stru_18014EB04>
                RUNTIME_FUNCTION <rva sub_180098DB8, rva algn_180098F58, \
                                  rva stru_18014EB44>
                RUNTIME_FUNCTION <rva sub_180098F60, rva byte_1800990E0, \
                                  rva stru_18014EB5C>
                RUNTIME_FUNCTION <rva sub_1800990E8, rva byte_18009910F, \
                                  rva stru_18014E4DC>
                RUNTIME_FUNCTION <rva sub_180099118, rva byte_180099ABD, \
                                  rva stru_18014EB1C>
                RUNTIME_FUNCTION <rva sub_180099AC4, rva byte_180099B34, \
                                  rva stru_18014EB38>
                RUNTIME_FUNCTION <rva sub_180099B3C, rva byte_180099C64, \
                                  rva stru_18014EBA4>
                RUNTIME_FUNCTION <rva sub_180099C6C, rva byte_18009A590, \
                                  rva stru_18014EB7C>
                RUNTIME_FUNCTION <rva sub_18009A5EC, rva byte_18009A646, \
                                  rva stru_18014EABC>
                RUNTIME_FUNCTION <rva sub_18009A64C, rva byte_18009A885, \
                                  rva stru_18014EBE0>
                RUNTIME_FUNCTION <rva sub_18009A88C, rva byte_18009AA3F, \
                                  rva stru_18014EBF8>
                RUNTIME_FUNCTION <rva sub_18009AA48, rva byte_18009AABD, \
                                  rva stru_18014EBC0>
                RUNTIME_FUNCTION <rva sub_18009AAC4, rva byte_18009AB15, \
                                  rva stru_18014EBCC>
                RUNTIME_FUNCTION <rva sub_18009AB1C, rva algn_18009B4E8, \
                                  rva stru_18014EB1C>
                RUNTIME_FUNCTION <rva sub_18009B50C, rva byte_18009B54F, \
                                  rva stru_18014E544>
                RUNTIME_FUNCTION <rva sub_18009B558, rva algn_18009B5F8, \
                                  rva stru_18014EC20>
                RUNTIME_FUNCTION <rva RtlCompleteProcessCloning, rva algn_18009B6F1, \
                                  rva stru_18014F3AC>
                RUNTIME_FUNCTION <rva RtlPrepareForProcessCloning, rva algn_18009B817,\
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18009B820, rva algn_18009B881, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_18009B888, rva byte_18009B963, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_18009B96C, rva byte_18009BA4D, \
                                  rva stru_18014FA44>
                RUNTIME_FUNCTION <rva sub_18009BA54, rva algn_18009BB97, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18009BBA0, rva byte_18009BC1D, \
                                  rva stru_18014FA1C>
                RUNTIME_FUNCTION <rva sub_18009BC24, rva algn_18009BD11, \
                                  rva stru_18014FA24>
                RUNTIME_FUNCTION <rva sub_18009BD18, rva byte_18009BE05, \
                                  rva stru_18014B7CC>
                RUNTIME_FUNCTION <rva sub_18009BE0C, rva algn_18009BF62, \
                                  rva stru_18014FA0C>
                RUNTIME_FUNCTION <rva sub_18009C044, rva algn_18009C328, \
                                  rva stru_18014F9EC>
                RUNTIME_FUNCTION <rva sub_18009C330, rva byte_18009C4DE, \
                                  rva stru_18014F9D0>
                RUNTIME_FUNCTION <rva RtlLookupFunctionTable, rva byte_18009C584, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva sub_18009C58C, rva algn_18009C696, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlGetSystemTimeAndBias, rva algn_18009C78C, \
                                  rva stru_18014B7CC>
                RUNTIME_FUNCTION <rva sub_18009C828, rva algn_18009C8F9, \
                                  rva stru_180150774>
                RUNTIME_FUNCTION <rva sub_18009C914, rva algn_18009CA98, \
                                  rva stru_1801517A4>
                RUNTIME_FUNCTION <rva sub_18009CAA0, rva byte_18009CAF4, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18009CAFC, rva byte_18009CB5E, \
                                  rva stru_180147AEC>
                RUNTIME_FUNCTION <rva __GSHandlerCheck_SEH, rva algn_18009CBE9, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18009CC20, rva algn_18009CC26, \
                                  rva stru_18014D838>
                RUNTIME_FUNCTION <rva sub_18009CC30, rva algn_18009CC36, \
                                  rva stru_18014D83C>
                RUNTIME_FUNCTION <rva sub_18009CC40, rva algn_18009CC46, \
                                  rva stru_18014D840>
                RUNTIME_FUNCTION <rva sub_18009CC50, rva algn_18009CC56, \
                                  rva stru_18014D844>
                RUNTIME_FUNCTION <rva sub_18009CC60, rva algn_18009CC66, \
                                  rva stru_18014D848>
                RUNTIME_FUNCTION <rva sub_18009CC70, rva algn_18009CC76, \
                                  rva stru_18014D84C>
                RUNTIME_FUNCTION <rva sub_18009CC80, rva algn_18009CC86, \
                                  rva stru_18014D850>
                RUNTIME_FUNCTION <rva sub_18009CC90, rva algn_18009CC96, \
                                  rva stru_18014D854>
                RUNTIME_FUNCTION <rva NtdllDefWindowProc_A, rva algn_18009CCA6, \
                                  rva stru_18014D858>
                RUNTIME_FUNCTION <rva NtdllDefWindowProc_W, rva algn_18009CCB6, \
                                  rva stru_18014D85C>
                RUNTIME_FUNCTION <rva sub_18009CCC0, rva algn_18009CCC6, \
                                  rva stru_18014D860>
                RUNTIME_FUNCTION <rva sub_18009CCD0, rva algn_18009CCD6, \
                                  rva stru_18014D864>
                RUNTIME_FUNCTION <rva sub_18009CCE0, rva algn_18009CCE6, \
                                  rva stru_18014D868>
                RUNTIME_FUNCTION <rva sub_18009CCF0, rva algn_18009CCF6, \
                                  rva stru_18014D86C>
                RUNTIME_FUNCTION <rva sub_18009CD00, rva algn_18009CD06, \
                                  rva stru_18014D870>
                RUNTIME_FUNCTION <rva sub_18009CD10, rva algn_18009CD16, \
                                  rva stru_18014D874>
                RUNTIME_FUNCTION <rva sub_18009CD20, rva algn_18009CD26, \
                                  rva stru_18014D878>
                RUNTIME_FUNCTION <rva sub_18009CD30, rva algn_18009CD36, \
                                  rva stru_18014D87C>
                RUNTIME_FUNCTION <rva sub_18009CD40, rva algn_18009CD46, \
                                  rva stru_18014D880>
                RUNTIME_FUNCTION <rva sub_18009CD50, rva algn_18009CD56, \
                                  rva stru_18014D884>
                RUNTIME_FUNCTION <rva NtdllDialogWndProc_A, rva algn_18009CD66, \
                                  rva stru_18014D888>
                RUNTIME_FUNCTION <rva NtdllDialogWndProc_W, rva algn_18009CD76, \
                                  rva stru_18014D88C>
                RUNTIME_FUNCTION <rva sub_18009CD80, rva algn_18009CD86, \
                                  rva stru_18014D890>
                RUNTIME_FUNCTION <rva sub_18009CD90, rva algn_18009CD96, \
                                  rva stru_18014D894>
                RUNTIME_FUNCTION <rva sub_18009CDA0, rva algn_18009CDA6, \
                                  rva stru_18014D898>
                RUNTIME_FUNCTION <rva sub_18009CDB0, rva algn_18009CDB6, \
                                  rva stru_18014D89C>
                RUNTIME_FUNCTION <rva sub_18009CDC0, rva algn_18009CDC6, \
                                  rva stru_18014D8A0>
                RUNTIME_FUNCTION <rva sub_18009CDD0, rva algn_18009CDD6, \
                                  rva stru_18014D8A4>
                RUNTIME_FUNCTION <rva sub_18009CDE0, rva algn_18009CDE6, \
                                  rva stru_18014D8A8>
                RUNTIME_FUNCTION <rva sub_18009CDF0, rva algn_18009CDF6, \
                                  rva stru_18014D8AC>
                RUNTIME_FUNCTION <rva sub_18009CE00, rva algn_18009CE06, \
                                  rva stru_18014D8B0>
                RUNTIME_FUNCTION <rva sub_18009CE10, rva algn_18009CE16, \
                                  rva stru_18014D8B4>
                RUNTIME_FUNCTION <rva sub_18009CE20, rva algn_18009CE26, \
                                  rva stru_18014D8B8>
                RUNTIME_FUNCTION <rva sub_18009CE30, rva algn_18009CE36, \
                                  rva stru_18014D8BC>
                RUNTIME_FUNCTION <rva sub_18009CE40, rva algn_18009CE46, \
                                  rva stru_18014D8C0>
                RUNTIME_FUNCTION <rva sub_18009CE50, rva algn_18009CE56, \
                                  rva stru_18014D8C4>
                RUNTIME_FUNCTION <rva sub_18009CE60, rva algn_18009CE66, \
                                  rva stru_18014D8C8>
                RUNTIME_FUNCTION <rva sub_18009CE70, rva algn_18009CE76, \
                                  rva stru_18014D8CC>
                RUNTIME_FUNCTION <rva sub_18009CE80, rva algn_18009CE86, \
                                  rva stru_18014D8D0>
                RUNTIME_FUNCTION <rva sub_18009CE90, rva algn_18009CE96, \
                                  rva stru_18014D8D4>
                RUNTIME_FUNCTION <rva sub_18009CEA0, rva algn_18009CEA6, \
                                  rva stru_18014D8D8>
                RUNTIME_FUNCTION <rva sub_18009CEB0, rva algn_18009CEB6, \
                                  rva stru_18014D8DC>
                RUNTIME_FUNCTION <rva sub_18009CEC0, rva algn_18009CEC6, \
                                  rva stru_18014D8E0>
                RUNTIME_FUNCTION <rva sub_18009CED0, rva algn_18009CED6, \
                                  rva stru_18014D8E4>
                RUNTIME_FUNCTION <rva sub_18009CEE0, rva algn_18009CEE6, \
                                  rva stru_18014D8E8>
                RUNTIME_FUNCTION <rva sub_18009CEF0, rva algn_18009CEF6, \
                                  rva stru_18014D8EC>
                RUNTIME_FUNCTION <rva sub_18009CF00, rva algn_18009CF06, \
                                  rva stru_18014D8F0>
                RUNTIME_FUNCTION <rva sub_18009CF10, rva algn_18009CF16, \
                                  rva stru_18014D8F4>
                RUNTIME_FUNCTION <rva sub_18009CF20, rva algn_18009CF26, \
                                  rva stru_18014D8F8>
                RUNTIME_FUNCTION <rva sub_18009CF30, rva algn_18009CF36, \
                                  rva stru_18014D8FC>
                RUNTIME_FUNCTION <rva sub_18009CF40, rva algn_18009CF46, \
                                  rva stru_18014D900>
                RUNTIME_FUNCTION <rva sub_18009CF50, rva algn_18009CF56, \
                                  rva stru_18014D904>
                RUNTIME_FUNCTION <rva sub_18009CF60, rva algn_18009CF66, \
                                  rva stru_18014D908>
                RUNTIME_FUNCTION <rva sub_18009CF70, rva algn_18009CF76, \
                                  rva stru_18014D90C>
                RUNTIME_FUNCTION <rva sub_18009CF80, rva algn_18009CF86, \
                                  rva stru_18014D910>
                RUNTIME_FUNCTION <rva sub_18009CF90, rva algn_18009CF96, \
                                  rva stru_18014D914>
                RUNTIME_FUNCTION <rva sub_18009CFA0, rva algn_18009CFA6, \
                                  rva stru_18014D918>
                RUNTIME_FUNCTION <rva sub_18009CFB0, rva algn_18009CFB6, \
                                  rva stru_18014D91C>
                RUNTIME_FUNCTION <rva sub_18009CFC0, rva algn_18009CFC6, \
                                  rva stru_18014D920>
                RUNTIME_FUNCTION <rva ZwAccessCheck, rva algn_18009CFE8, \
                                  rva stru_18014D928>
                RUNTIME_FUNCTION <rva ZwWorkerFactoryWorkerReady, rva algn_18009D008, \
                                  rva stru_18014D92C>
                RUNTIME_FUNCTION <rva ZwAcceptConnectPort, rva algn_18009D028, \
                                  rva stru_18014D930>
                RUNTIME_FUNCTION <rva ZwMapUserPhysicalPagesScatter, \
                                  rva algn_18009D048, rva stru_18014D934>
                RUNTIME_FUNCTION <rva ZwWaitForSingleObject, rva algn_18009D068, \
                                  rva stru_18014D938>
                RUNTIME_FUNCTION <rva ZwCallbackReturn, rva algn_18009D088, \
                                  rva stru_18014D93C>
                RUNTIME_FUNCTION <rva ZwReadFile, rva algn_18009D0A8, \
                                  rva stru_18014D940>
                RUNTIME_FUNCTION <rva ZwDeviceIoControlFile, rva algn_18009D0C8, \
                                  rva stru_18014D944>
                RUNTIME_FUNCTION <rva ZwWriteFile, rva algn_18009D0E8, \
                                  rva stru_18014D948>
                RUNTIME_FUNCTION <rva ZwRemoveIoCompletion, rva algn_18009D108, \
                                  rva stru_18014D94C>
                RUNTIME_FUNCTION <rva ZwReleaseSemaphore, rva algn_18009D128, \
                                  rva stru_18014D950>
                RUNTIME_FUNCTION <rva ZwReplyWaitReceivePort, rva algn_18009D148, \
                                  rva stru_18014D954>
                RUNTIME_FUNCTION <rva ZwReplyPort, rva algn_18009D168, \
                                  rva stru_18014D958>
                RUNTIME_FUNCTION <rva ZwSetInformationThread, rva algn_18009D188, \
                                  rva stru_18014D95C>
                RUNTIME_FUNCTION <rva ZwSetEvent, rva algn_18009D1A8, \
                                  rva stru_18014D960>
                RUNTIME_FUNCTION <rva ZwClose, rva algn_18009D1C8, rva stru_18014D964>
                RUNTIME_FUNCTION <rva ZwQueryObject, rva algn_18009D1E8, \
                                  rva stru_18014D968>
                RUNTIME_FUNCTION <rva ZwQueryInformationFile, rva algn_18009D208, \
                                  rva stru_18014D96C>
                RUNTIME_FUNCTION <rva ZwOpenKey, rva algn_18009D228, \
                                  rva stru_18014D970>
                RUNTIME_FUNCTION <rva ZwEnumerateValueKey, rva algn_18009D248, \
                                  rva stru_18014D974>
                RUNTIME_FUNCTION <rva ZwFindAtom, rva algn_18009D268, \
                                  rva stru_18014D978>
                RUNTIME_FUNCTION <rva ZwQueryDefaultLocale, rva algn_18009D288, \
                                  rva stru_18014D97C>
                RUNTIME_FUNCTION <rva ZwQueryKey, rva algn_18009D2A8, \
                                  rva stru_18014D980>
                RUNTIME_FUNCTION <rva ZwQueryValueKey, rva algn_18009D2C8, \
                                  rva stru_18014D984>
                RUNTIME_FUNCTION <rva ZwAllocateVirtualMemory, rva algn_18009D2E8, \
                                  rva stru_18014D988>
                RUNTIME_FUNCTION <rva ZwQueryInformationProcess, rva algn_18009D308, \
                                  rva stru_18014D98C>
                RUNTIME_FUNCTION <rva ZwWaitForMultipleObjects32, rva algn_18009D328, \
                                  rva stru_18014D990>
                RUNTIME_FUNCTION <rva ZwWriteFileGather, rva algn_18009D348, \
                                  rva stru_18014D994>
                RUNTIME_FUNCTION <rva ZwSetInformationProcess, rva algn_18009D368, \
                                  rva stru_18014D998>
                RUNTIME_FUNCTION <rva ZwCreateKey, rva algn_18009D388, \
                                  rva stru_18014D99C>
                RUNTIME_FUNCTION <rva ZwFreeVirtualMemory, rva algn_18009D3A8, \
                                  rva stru_18014D9A0>
                RUNTIME_FUNCTION <rva ZwImpersonateClientOfPort, rva algn_18009D3C8, \
                                  rva stru_18014D9A4>
                RUNTIME_FUNCTION <rva ZwReleaseMutant, rva algn_18009D3E8, \
                                  rva stru_18014D9A8>
                RUNTIME_FUNCTION <rva ZwQueryInformationToken, rva algn_18009D408, \
                                  rva stru_18014D9AC>
                RUNTIME_FUNCTION <rva ZwRequestWaitReplyPort, rva algn_18009D428, \
                                  rva stru_18014D9B0>
                RUNTIME_FUNCTION <rva ZwQueryVirtualMemory, rva algn_18009D448, \
                                  rva stru_18014D9B4>
                RUNTIME_FUNCTION <rva ZwOpenThreadToken, rva algn_18009D468, \
                                  rva stru_18014D9B8>
                RUNTIME_FUNCTION <rva ZwQueryInformationThread, rva algn_18009D488, \
                                  rva stru_18014D9BC>
                RUNTIME_FUNCTION <rva ZwOpenProcess, rva algn_18009D4A8, \
                                  rva stru_18014D9C0>
                RUNTIME_FUNCTION <rva ZwSetInformationFile, rva algn_18009D4C8, \
                                  rva stru_18014D9C4>
                RUNTIME_FUNCTION <rva ZwMapViewOfSection, rva algn_18009D4E8, \
                                  rva stru_18014D9C8>
                RUNTIME_FUNCTION <rva ZwAccessCheckAndAuditAlarm, rva algn_18009D508, \
                                  rva stru_18014D9CC>
                RUNTIME_FUNCTION <rva ZwUnmapViewOfSection, rva algn_18009D528, \
                                  rva stru_18014D9D0>
                RUNTIME_FUNCTION <rva ZwReplyWaitReceivePortEx, rva algn_18009D548, \
                                  rva stru_18014D9D4>
                RUNTIME_FUNCTION <rva ZwTerminateProcess, rva algn_18009D568, \
                                  rva stru_18014D9D8>
                RUNTIME_FUNCTION <rva ZwSetEventBoostPriority, rva algn_18009D588, \
                                  rva stru_18014D9DC>
                RUNTIME_FUNCTION <rva ZwReadFileScatter, rva algn_18009D5A8, \
                                  rva stru_18014D9E0>
                RUNTIME_FUNCTION <rva ZwOpenThreadTokenEx, rva algn_18009D5C8, \
                                  rva stru_18014D9E4>
                RUNTIME_FUNCTION <rva ZwOpenProcessTokenEx, rva algn_18009D5E8, \
                                  rva stru_18014D9E8>
                RUNTIME_FUNCTION <rva ZwQueryPerformanceCounter, rva algn_18009D608, \
                                  rva stru_18014D9EC>
                RUNTIME_FUNCTION <rva ZwEnumerateKey, rva algn_18009D628, \
                                  rva stru_18014D9F0>
                RUNTIME_FUNCTION <rva ZwOpenFile, rva algn_18009D648, \
                                  rva stru_18014D9F4>
                RUNTIME_FUNCTION <rva ZwDelayExecution, rva algn_18009D668, \
                                  rva stru_18014D9F8>
                RUNTIME_FUNCTION <rva ZwQueryDirectoryFile, rva algn_18009D688, \
                                  rva stru_18014D9FC>
                RUNTIME_FUNCTION <rva ZwQuerySystemInformation, rva algn_18009D6A8, \
                                  rva stru_18014DA00>
                RUNTIME_FUNCTION <rva ZwOpenSection, rva algn_18009D6C8, \
                                  rva stru_18014DA04>
                RUNTIME_FUNCTION <rva ZwQueryTimer, rva algn_18009D6E8, \
                                  rva stru_18014DA08>
                RUNTIME_FUNCTION <rva ZwFsControlFile, rva algn_18009D708, \
                                  rva stru_18014DA0C>
                RUNTIME_FUNCTION <rva ZwWriteVirtualMemory, rva algn_18009D728, \
                                  rva stru_18014DA10>
                RUNTIME_FUNCTION <rva ZwCloseObjectAuditAlarm, rva algn_18009D748, \
                                  rva stru_18014DA14>
                RUNTIME_FUNCTION <rva ZwDuplicateObject, rva algn_18009D768, \
                                  rva stru_18014DA18>
                RUNTIME_FUNCTION <rva ZwQueryAttributesFile, rva algn_18009D788, \
                                  rva stru_18014DA1C>
                RUNTIME_FUNCTION <rva ZwClearEvent, rva algn_18009D7A8, \
                                  rva stru_18014DA20>
                RUNTIME_FUNCTION <rva ZwReadVirtualMemory, rva algn_18009D7C8, \
                                  rva stru_18014DA24>
                RUNTIME_FUNCTION <rva ZwOpenEvent, rva algn_18009D7E8, \
                                  rva stru_18014DA28>
                RUNTIME_FUNCTION <rva ZwAdjustPrivilegesToken, rva algn_18009D808, \
                                  rva stru_18014DA2C>
                RUNTIME_FUNCTION <rva ZwDuplicateToken, rva algn_18009D828, \
                                  rva stru_18014DA30>
                RUNTIME_FUNCTION <rva ZwContinue, rva algn_18009D848, \
                                  rva stru_18014DA34>
                RUNTIME_FUNCTION <rva ZwQueryDefaultUILanguage, rva algn_18009D868, \
                                  rva stru_18014DA38>
                RUNTIME_FUNCTION <rva ZwQueueApcThread, rva algn_18009D888, \
                                  rva stru_18014DA3C>
                RUNTIME_FUNCTION <rva ZwYieldExecution, rva algn_18009D8A8, \
                                  rva stru_18014DA40>
                RUNTIME_FUNCTION <rva ZwAddAtom, rva algn_18009D8C8, \
                                  rva stru_18014DA44>
                RUNTIME_FUNCTION <rva ZwCreateEvent, rva algn_18009D8E8, \
                                  rva stru_18014DA48>
                RUNTIME_FUNCTION <rva ZwQueryVolumeInformationFile, \
                                  rva algn_18009D908, rva stru_18014DA4C>
                RUNTIME_FUNCTION <rva ZwCreateSection, rva algn_18009D928, \
                                  rva stru_18014DA50>
                RUNTIME_FUNCTION <rva ZwFlushBuffersFile, rva algn_18009D948, \
                                  rva stru_18014DA54>
                RUNTIME_FUNCTION <rva ZwApphelpCacheControl, rva algn_18009D968, \
                                  rva stru_18014DA58>
                RUNTIME_FUNCTION <rva ZwCreateProcessEx, rva algn_18009D988, \
                                  rva stru_18014DA5C>
                RUNTIME_FUNCTION <rva ZwCreateThread, rva algn_18009D9A8, \
                                  rva stru_18014DA60>
                RUNTIME_FUNCTION <rva ZwIsProcessInJob, rva algn_18009D9C8, \
                                  rva stru_18014DA64>
                RUNTIME_FUNCTION <rva ZwProtectVirtualMemory, rva algn_18009D9E8, \
                                  rva stru_18014DA68>
                RUNTIME_FUNCTION <rva ZwQuerySection, rva algn_18009DA08, \
                                  rva stru_18014DA6C>
                RUNTIME_FUNCTION <rva ZwResumeThread, rva algn_18009DA28, \
                                  rva stru_18014DA70>
                RUNTIME_FUNCTION <rva ZwTerminateThread, rva algn_18009DA48, \
                                  rva stru_18014DA74>
                RUNTIME_FUNCTION <rva ZwReadRequestData, rva algn_18009DA68, \
                                  rva stru_18014DA78>
                RUNTIME_FUNCTION <rva ZwCreateFile, rva algn_18009DA88, \
                                  rva stru_18014DA7C>
                RUNTIME_FUNCTION <rva ZwQueryEvent, rva algn_18009DAA8, \
                                  rva stru_18014DA80>
                RUNTIME_FUNCTION <rva ZwWriteRequestData, rva algn_18009DAC8, \
                                  rva stru_18014DA84>
                RUNTIME_FUNCTION <rva ZwOpenDirectoryObject, rva algn_18009DAE8, \
                                  rva stru_18014DA88>
                RUNTIME_FUNCTION <rva ZwAccessCheckByTypeAndAuditAlarm, \
                                  rva algn_18009DB08, rva stru_18014DA8C>
                RUNTIME_FUNCTION <rva ZwQuerySystemTime, rva algn_18009DB15, \
                                  rva stru_18014DA90>
                RUNTIME_FUNCTION <rva ZwWaitForMultipleObjects, rva algn_18009DB38, \
                                  rva stru_18014DA94>
                RUNTIME_FUNCTION <rva ZwSetInformationObject, rva algn_18009DB58, \
                                  rva stru_18014DA98>
                RUNTIME_FUNCTION <rva ZwCancelIoFile, rva algn_18009DB78, \
                                  rva stru_18014DA9C>
                RUNTIME_FUNCTION <rva ZwTraceEvent, rva algn_18009DB98, \
                                  rva stru_18014DAA0>
                RUNTIME_FUNCTION <rva ZwPowerInformation, rva algn_18009DBB8, \
                                  rva stru_18014DAA4>
                RUNTIME_FUNCTION <rva ZwSetValueKey, rva algn_18009DBD8, \
                                  rva stru_18014DAA8>
                RUNTIME_FUNCTION <rva ZwCancelTimer, rva algn_18009DBF8, \
                                  rva stru_18014DAAC>
                RUNTIME_FUNCTION <rva ZwSetTimer, rva algn_18009DC18, \
                                  rva stru_18014DAB0>
                RUNTIME_FUNCTION <rva ZwAccessCheckByType, rva algn_18009DC38, \
                                  rva stru_18014DAB4>
                RUNTIME_FUNCTION <rva ZwAccessCheckByTypeResultList, \
                                  rva algn_18009DC58, rva stru_18014DAB8>
                RUNTIME_FUNCTION <rva ZwAccessCheckByTypeResultListAndAuditAlarm, \
                                  rva algn_18009DC78, rva stru_18014DABC>
                RUNTIME_FUNCTION <rva ZwAccessCheckByTypeResultListAndAuditAlarmByHandle,\
                                  rva algn_18009DC98, rva stru_18014DAC0>
                RUNTIME_FUNCTION <rva ZwAcquireCrossVmMutant, rva algn_18009DCB8, \
                                  rva stru_18014DAC4>
                RUNTIME_FUNCTION <rva ZwAcquireProcessActivityReference, \
                                  rva algn_18009DCD8, rva stru_18014DAC8>
                RUNTIME_FUNCTION <rva ZwAddAtomEx, rva algn_18009DCF8, \
                                  rva stru_18014DACC>
                RUNTIME_FUNCTION <rva ZwAddBootEntry, rva algn_18009DD18, \
                                  rva stru_18014DAD0>
                RUNTIME_FUNCTION <rva ZwAddDriverEntry, rva algn_18009DD38, \
                                  rva stru_18014DAD4>
                RUNTIME_FUNCTION <rva ZwAdjustGroupsToken, rva algn_18009DD58, \
                                  rva stru_18014DAD8>
                RUNTIME_FUNCTION <rva ZwAdjustTokenClaimsAndDeviceGroups, \
                                  rva algn_18009DD78, rva stru_18014DADC>
                RUNTIME_FUNCTION <rva ZwAlertResumeThread, rva algn_18009DD98, \
                                  rva stru_18014DAE0>
                RUNTIME_FUNCTION <rva ZwAlertThread, rva algn_18009DDB8, \
                                  rva stru_18014DAE4>
                RUNTIME_FUNCTION <rva ZwAlertThreadByThreadId, rva algn_18009DDD8, \
                                  rva stru_18014DAE8>
                RUNTIME_FUNCTION <rva ZwAllocateLocallyUniqueId, rva algn_18009DDF8, \
                                  rva stru_18014DAEC>
                RUNTIME_FUNCTION <rva ZwAllocateReserveObject, rva algn_18009DE18, \
                                  rva stru_18014DAF0>
                RUNTIME_FUNCTION <rva ZwAllocateUserPhysicalPages, rva algn_18009DE38,\
                                  rva stru_18014DAF4>
                RUNTIME_FUNCTION <rva ZwAllocateUserPhysicalPagesEx, \
                                  rva algn_18009DE58, rva stru_18014DAF8>
                RUNTIME_FUNCTION <rva ZwAllocateUuids, rva algn_18009DE78, \
                                  rva stru_18014DAFC>
                RUNTIME_FUNCTION <rva ZwAllocateVirtualMemoryEx, rva algn_18009DE98, \
                                  rva stru_18014DB00>
                RUNTIME_FUNCTION <rva ZwAlpcAcceptConnectPort, rva algn_18009DEB8, \
                                  rva stru_18014DB04>
                RUNTIME_FUNCTION <rva ZwAlpcCancelMessage, rva algn_18009DED8, \
                                  rva stru_18014DB08>
                RUNTIME_FUNCTION <rva ZwAlpcConnectPort, rva algn_18009DEF8, \
                                  rva stru_18014DB0C>
                RUNTIME_FUNCTION <rva ZwAlpcConnectPortEx, rva algn_18009DF18, \
                                  rva stru_18014DB10>
                RUNTIME_FUNCTION <rva ZwAlpcCreatePort, rva algn_18009DF38, \
                                  rva stru_18014DB14>
                RUNTIME_FUNCTION <rva ZwAlpcCreatePortSection, rva algn_18009DF58, \
                                  rva stru_18014DB18>
                RUNTIME_FUNCTION <rva ZwAlpcCreateResourceReserve, rva algn_18009DF78,\
                                  rva stru_18014DB1C>
                RUNTIME_FUNCTION <rva ZwAlpcCreateSectionView, rva algn_18009DF98, \
                                  rva stru_18014DB20>
                RUNTIME_FUNCTION <rva ZwAlpcCreateSecurityContext, rva algn_18009DFB8,\
                                  rva stru_18014DB24>
                RUNTIME_FUNCTION <rva ZwAlpcDeletePortSection, rva algn_18009DFD8, \
                                  rva stru_18014DB28>
                RUNTIME_FUNCTION <rva ZwAlpcDeleteResourceReserve, rva algn_18009DFF8,\
                                  rva stru_18014DB2C>
                RUNTIME_FUNCTION <rva ZwAlpcDeleteSectionView, rva algn_18009E018, \
                                  rva stru_18014DB30>
                RUNTIME_FUNCTION <rva ZwAlpcDeleteSecurityContext, rva algn_18009E038,\
                                  rva stru_18014DB34>
                RUNTIME_FUNCTION <rva ZwAlpcDisconnectPort, rva algn_18009E058, \
                                  rva stru_18014DB38>
                RUNTIME_FUNCTION <rva ZwAlpcImpersonateClientContainerOfPort, \
                                  rva algn_18009E078, rva stru_18014DB3C>
                RUNTIME_FUNCTION <rva ZwAlpcImpersonateClientOfPort, \
                                  rva algn_18009E098, rva stru_18014DB40>
                RUNTIME_FUNCTION <rva ZwAlpcOpenSenderProcess, rva algn_18009E0B8, \
                                  rva stru_18014DB44>
                RUNTIME_FUNCTION <rva ZwAlpcOpenSenderThread, rva algn_18009E0D8, \
                                  rva stru_18014DB48>
                RUNTIME_FUNCTION <rva ZwAlpcQueryInformation, rva algn_18009E0F8, \
                                  rva stru_18014DB4C>
                RUNTIME_FUNCTION <rva ZwAlpcQueryInformationMessage, \
                                  rva algn_18009E118, rva stru_18014DB50>
                RUNTIME_FUNCTION <rva ZwAlpcRevokeSecurityContext, rva algn_18009E138,\
                                  rva stru_18014DB54>
                RUNTIME_FUNCTION <rva ZwAlpcSendWaitReceivePort, rva algn_18009E158, \
                                  rva stru_18014DB58>
                RUNTIME_FUNCTION <rva ZwAlpcSetInformation, rva algn_18009E178, \
                                  rva stru_18014DB5C>
                RUNTIME_FUNCTION <rva ZwAreMappedFilesTheSame, rva algn_18009E198, \
                                  rva stru_18014DB60>
                RUNTIME_FUNCTION <rva ZwAssignProcessToJobObject, rva algn_18009E1B8, \
                                  rva stru_18014DB64>
                RUNTIME_FUNCTION <rva ZwAssociateWaitCompletionPacket, \
                                  rva algn_18009E1D8, rva stru_18014DB68>
                RUNTIME_FUNCTION <rva ZwCallEnclave, rva algn_18009E1F8, \
                                  rva stru_18014DB6C>
                RUNTIME_FUNCTION <rva ZwCancelIoFileEx, rva algn_18009E218, \
                                  rva stru_18014DB70>
                RUNTIME_FUNCTION <rva ZwCancelSynchronousIoFile, rva algn_18009E238, \
                                  rva stru_18014DB74>
                RUNTIME_FUNCTION <rva ZwCancelTimer2, rva algn_18009E258, \
                                  rva stru_18014DB78>
                RUNTIME_FUNCTION <rva ZwCancelWaitCompletionPacket, \
                                  rva algn_18009E278, rva stru_18014DB7C>
                RUNTIME_FUNCTION <rva ZwCommitComplete, rva algn_18009E298, \
                                  rva stru_18014DB80>
                RUNTIME_FUNCTION <rva ZwCommitEnlistment, rva algn_18009E2B8, \
                                  rva stru_18014DB84>
                RUNTIME_FUNCTION <rva ZwCommitRegistryTransaction, rva algn_18009E2D8,\
                                  rva stru_18014DB88>
                RUNTIME_FUNCTION <rva ZwCommitTransaction, rva algn_18009E2F8, \
                                  rva stru_18014DB8C>
                RUNTIME_FUNCTION <rva ZwCompactKeys, rva algn_18009E318, \
                                  rva stru_18014DB90>
                RUNTIME_FUNCTION <rva ZwCompareObjects, rva algn_18009E338, \
                                  rva stru_18014DB94>
                RUNTIME_FUNCTION <rva ZwCompareSigningLevels, rva algn_18009E358, \
                                  rva stru_18014DB98>
                RUNTIME_FUNCTION <rva ZwCompareTokens, rva algn_18009E378, \
                                  rva stru_18014DB9C>
                RUNTIME_FUNCTION <rva ZwCompleteConnectPort, rva algn_18009E398, \
                                  rva stru_18014DBA0>
                RUNTIME_FUNCTION <rva ZwCompressKey, rva algn_18009E3B8, \
                                  rva stru_18014DBA4>
                RUNTIME_FUNCTION <rva ZwConnectPort, rva algn_18009E3D8, \
                                  rva stru_18014DBA8>
                RUNTIME_FUNCTION <rva ZwContinueEx, rva algn_18009E3F8, \
                                  rva stru_18014DBAC>
                RUNTIME_FUNCTION <rva ZwConvertBetweenAuxiliaryCounterAndPerformanceCounter,\
                                  rva algn_18009E418, rva stru_18014DBB0>
                RUNTIME_FUNCTION <rva ZwCopyFileChunk, rva algn_18009E438, \
                                  rva stru_18014DBB4>
                RUNTIME_FUNCTION <rva ZwCreateCrossVmEvent, rva algn_18009E458, \
                                  rva stru_18014DBB8>
                RUNTIME_FUNCTION <rva ZwCreateCrossVmMutant, rva algn_18009E478, \
                                  rva stru_18014DBBC>
                RUNTIME_FUNCTION <rva ZwCreateDebugObject, rva algn_18009E498, \
                                  rva stru_18014DBC0>
                RUNTIME_FUNCTION <rva ZwCreateDirectoryObject, rva algn_18009E4B8, \
                                  rva stru_18014DBC4>
                RUNTIME_FUNCTION <rva ZwCreateDirectoryObjectEx, rva algn_18009E4D8, \
                                  rva stru_18014DBC8>
                RUNTIME_FUNCTION <rva ZwCreateEnclave, rva algn_18009E4F8, \
                                  rva stru_18014DBCC>
                RUNTIME_FUNCTION <rva ZwCreateEnlistment, rva algn_18009E518, \
                                  rva stru_18014DBD0>
                RUNTIME_FUNCTION <rva ZwCreateEventPair, rva algn_18009E538, \
                                  rva stru_18014DBD4>
                RUNTIME_FUNCTION <rva ZwCreateIRTimer, rva algn_18009E558, \
                                  rva stru_18014DBD8>
                RUNTIME_FUNCTION <rva ZwCreateIoCompletion, rva algn_18009E578, \
                                  rva stru_18014DBDC>
                RUNTIME_FUNCTION <rva ZwCreateJobObject, rva algn_18009E598, \
                                  rva stru_18014DBE0>
                RUNTIME_FUNCTION <rva ZwCreateJobSet, rva algn_18009E5B8, \
                                  rva stru_18014DBE4>
                RUNTIME_FUNCTION <rva ZwCreateKeyTransacted, rva algn_18009E5D8, \
                                  rva stru_18014DBE8>
                RUNTIME_FUNCTION <rva ZwCreateKeyedEvent, rva algn_18009E5F8, \
                                  rva stru_18014DBEC>
                RUNTIME_FUNCTION <rva ZwCreateLowBoxToken, rva algn_18009E618, \
                                  rva stru_18014DBF0>
                RUNTIME_FUNCTION <rva ZwCreateMailslotFile, rva algn_18009E638, \
                                  rva stru_18014DBF4>
                RUNTIME_FUNCTION <rva ZwCreateMutant, rva algn_18009E658, \
                                  rva stru_18014DBF8>
                RUNTIME_FUNCTION <rva ZwCreateNamedPipeFile, rva algn_18009E678, \
                                  rva stru_18014DBFC>
                RUNTIME_FUNCTION <rva ZwCreatePagingFile, rva algn_18009E698, \
                                  rva stru_18014DC00>
                RUNTIME_FUNCTION <rva ZwCreatePartition, rva algn_18009E6B8, \
                                  rva stru_18014DC04>
                RUNTIME_FUNCTION <rva ZwCreatePort, rva algn_18009E6D8, \
                                  rva stru_18014DC08>
                RUNTIME_FUNCTION <rva ZwCreatePrivateNamespace, rva algn_18009E6F8, \
                                  rva stru_18014DC0C>
                RUNTIME_FUNCTION <rva ZwCreateProcess, rva algn_18009E718, \
                                  rva stru_18014DC10>
                RUNTIME_FUNCTION <rva ZwCreateProfile, rva algn_18009E738, \
                                  rva stru_18014DC14>
                RUNTIME_FUNCTION <rva ZwCreateProfileEx, rva algn_18009E758, \
                                  rva stru_18014DC18>
                RUNTIME_FUNCTION <rva ZwCreateRegistryTransaction, rva algn_18009E778,\
                                  rva stru_18014DC1C>
                RUNTIME_FUNCTION <rva ZwCreateResourceManager, rva algn_18009E798, \
                                  rva stru_18014DC20>
                RUNTIME_FUNCTION <rva ZwCreateSectionEx, rva algn_18009E7B8, \
                                  rva stru_18014DC24>
                RUNTIME_FUNCTION <rva ZwCreateSemaphore, rva algn_18009E7D8, \
                                  rva stru_18014DC28>
                RUNTIME_FUNCTION <rva ZwCreateSymbolicLinkObject, rva algn_18009E7F8, \
                                  rva stru_18014DC2C>
                RUNTIME_FUNCTION <rva ZwCreateThreadEx, rva algn_18009E818, \
                                  rva stru_18014DC30>
                RUNTIME_FUNCTION <rva ZwCreateTimer, rva algn_18009E838, \
                                  rva stru_18014DC34>
                RUNTIME_FUNCTION <rva ZwCreateTimer2, rva algn_18009E858, \
                                  rva stru_18014DC38>
                RUNTIME_FUNCTION <rva ZwCreateToken, rva algn_18009E878, \
                                  rva stru_18014DC3C>
                RUNTIME_FUNCTION <rva ZwCreateTokenEx, rva algn_18009E898, \
                                  rva stru_18014DC40>
                RUNTIME_FUNCTION <rva ZwCreateTransaction, rva algn_18009E8B8, \
                                  rva stru_18014DC44>
                RUNTIME_FUNCTION <rva ZwCreateTransactionManager, rva algn_18009E8D8, \
                                  rva stru_18014DC48>
                RUNTIME_FUNCTION <rva ZwCreateUserProcess, rva algn_18009E8F8, \
                                  rva stru_18014DC4C>
                RUNTIME_FUNCTION <rva ZwCreateWaitCompletionPacket, \
                                  rva algn_18009E918, rva stru_18014DC50>
                RUNTIME_FUNCTION <rva ZwCreateWaitablePort, rva algn_18009E938, \
                                  rva stru_18014DC54>
                RUNTIME_FUNCTION <rva ZwCreateWnfStateName, rva algn_18009E958, \
                                  rva stru_18014DC58>
                RUNTIME_FUNCTION <rva ZwCreateWorkerFactory, rva algn_18009E978, \
                                  rva stru_18014DC5C>
                RUNTIME_FUNCTION <rva ZwDebugActiveProcess, rva algn_18009E998, \
                                  rva stru_18014DC60>
                RUNTIME_FUNCTION <rva ZwDebugContinue, rva algn_18009E9B8, \
                                  rva stru_18014DC64>
                RUNTIME_FUNCTION <rva ZwDeleteAtom, rva algn_18009E9D8, \
                                  rva stru_18014DC68>
                RUNTIME_FUNCTION <rva ZwDeleteBootEntry, rva algn_18009E9F8, \
                                  rva stru_18014DC6C>
                RUNTIME_FUNCTION <rva ZwDeleteDriverEntry, rva algn_18009EA18, \
                                  rva stru_18014DC70>
                RUNTIME_FUNCTION <rva ZwDeleteFile, rva algn_18009EA38, \
                                  rva stru_18014DC74>
                RUNTIME_FUNCTION <rva ZwDeleteKey, rva algn_18009EA58, \
                                  rva stru_18014DC78>
                RUNTIME_FUNCTION <rva ZwDeleteObjectAuditAlarm, rva algn_18009EA78, \
                                  rva stru_18014DC7C>
                RUNTIME_FUNCTION <rva ZwDeletePrivateNamespace, rva algn_18009EA98, \
                                  rva stru_18014DC80>
                RUNTIME_FUNCTION <rva ZwDeleteValueKey, rva algn_18009EAB8, \
                                  rva stru_18014DC84>
                RUNTIME_FUNCTION <rva ZwDeleteWnfStateData, rva algn_18009EAD8, \
                                  rva stru_18014DC88>
                RUNTIME_FUNCTION <rva ZwDeleteWnfStateName, rva algn_18009EAF8, \
                                  rva stru_18014DC8C>
                RUNTIME_FUNCTION <rva ZwDirectGraphicsCall, rva algn_18009EB18, \
                                  rva stru_18014DC90>
                RUNTIME_FUNCTION <rva ZwDisableLastKnownGood, rva algn_18009EB38, \
                                  rva stru_18014DC94>
                RUNTIME_FUNCTION <rva ZwDisplayString, rva algn_18009EB58, \
                                  rva stru_18014DC98>
                RUNTIME_FUNCTION <rva ZwDrawText, rva algn_18009EB78, \
                                  rva stru_18014DC9C>
                RUNTIME_FUNCTION <rva ZwEnableLastKnownGood, rva algn_18009EB98, \
                                  rva stru_18014DCA0>
                RUNTIME_FUNCTION <rva ZwEnumerateBootEntries, rva algn_18009EBB8, \
                                  rva stru_18014DCA4>
                RUNTIME_FUNCTION <rva ZwEnumerateDriverEntries, rva algn_18009EBD8, \
                                  rva stru_18014DCA8>
                RUNTIME_FUNCTION <rva ZwEnumerateSystemEnvironmentValuesEx, \
                                  rva algn_18009EBF8, rva stru_18014DCAC>
                RUNTIME_FUNCTION <rva ZwEnumerateTransactionObject, \
                                  rva algn_18009EC18, rva stru_18014DCB0>
                RUNTIME_FUNCTION <rva ZwExtendSection, rva algn_18009EC38, \
                                  rva stru_18014DCB4>
                RUNTIME_FUNCTION <rva ZwFilterBootOption, rva algn_18009EC58, \
                                  rva stru_18014DCB8>
                RUNTIME_FUNCTION <rva ZwFilterToken, rva algn_18009EC78, \
                                  rva stru_18014DCBC>
                RUNTIME_FUNCTION <rva ZwFilterTokenEx, rva algn_18009EC98, \
                                  rva stru_18014DCC0>
                RUNTIME_FUNCTION <rva ZwFlushBuffersFileEx, rva algn_18009ECB8, \
                                  rva stru_18014DCC4>
                RUNTIME_FUNCTION <rva ZwFlushInstallUILanguage, rva algn_18009ECD8, \
                                  rva stru_18014DCC8>
                RUNTIME_FUNCTION <rva ZwFlushInstructionCache, rva algn_18009ECF8, \
                                  rva stru_18014DCCC>
                RUNTIME_FUNCTION <rva ZwFlushKey, rva algn_18009ED18, \
                                  rva stru_18014DCD0>
                RUNTIME_FUNCTION <rva ZwFlushProcessWriteBuffers, rva algn_18009ED38, \
                                  rva stru_18014DCD4>
                RUNTIME_FUNCTION <rva ZwFlushVirtualMemory, rva algn_18009ED58, \
                                  rva stru_18014DCD8>
                RUNTIME_FUNCTION <rva ZwFlushWriteBuffer, rva algn_18009ED78, \
                                  rva stru_18014DCDC>
                RUNTIME_FUNCTION <rva ZwFreeUserPhysicalPages, rva algn_18009ED98, \
                                  rva stru_18014DCE0>
                RUNTIME_FUNCTION <rva ZwFreezeRegistry, rva algn_18009EDB8, \
                                  rva stru_18014DCE4>
                RUNTIME_FUNCTION <rva ZwFreezeTransactions, rva algn_18009EDD8, \
                                  rva stru_18014DCE8>
                RUNTIME_FUNCTION <rva ZwGetCachedSigningLevel, rva algn_18009EDF8, \
                                  rva stru_18014DCEC>
                RUNTIME_FUNCTION <rva ZwGetCompleteWnfStateSubscription, \
                                  rva algn_18009EE18, rva stru_18014DCF0>
                RUNTIME_FUNCTION <rva ZwGetContextThread, rva algn_18009EE38, \
                                  rva stru_18014DCF4>
                RUNTIME_FUNCTION <rva ZwGetCurrentProcessorNumber, rva algn_18009EE58,\
                                  rva stru_18014DCF8>
                RUNTIME_FUNCTION <rva ZwGetCurrentProcessorNumberEx, \
                                  rva algn_18009EE78, rva stru_18014DCFC>
                RUNTIME_FUNCTION <rva ZwGetDevicePowerState, rva algn_18009EE98, \
                                  rva stru_18014DD00>
                RUNTIME_FUNCTION <rva ZwGetMUIRegistryInfo, rva algn_18009EEB8, \
                                  rva stru_18014DD04>
                RUNTIME_FUNCTION <rva ZwGetNextProcess, rva algn_18009EED8, \
                                  rva stru_18014DD08>
                RUNTIME_FUNCTION <rva ZwGetNextThread, rva algn_18009EEF8, \
                                  rva stru_18014DD0C>
                RUNTIME_FUNCTION <rva ZwGetNlsSectionPtr, rva algn_18009EF18, \
                                  rva stru_18014DD10>
                RUNTIME_FUNCTION <rva ZwGetNotificationResourceManager, \
                                  rva algn_18009EF38, rva stru_18014DD14>
                RUNTIME_FUNCTION <rva ZwGetWriteWatch, rva algn_18009EF58, \
                                  rva stru_18014DD18>
                RUNTIME_FUNCTION <rva ZwImpersonateAnonymousToken, rva algn_18009EF78,\
                                  rva stru_18014DD1C>
                RUNTIME_FUNCTION <rva ZwImpersonateThread, rva algn_18009EF98, \
                                  rva stru_18014DD20>
                RUNTIME_FUNCTION <rva ZwInitializeEnclave, rva algn_18009EFB8, \
                                  rva stru_18014DD24>
                RUNTIME_FUNCTION <rva ZwInitializeNlsFiles, rva algn_18009EFD8, \
                                  rva stru_18014DD28>
                RUNTIME_FUNCTION <rva ZwInitializeRegistry, rva algn_18009EFF8, \
                                  rva stru_18014DD2C>
                RUNTIME_FUNCTION <rva ZwInitiatePowerAction, rva algn_18009F018, \
                                  rva stru_18014DD30>
                RUNTIME_FUNCTION <rva ZwIsSystemResumeAutomatic, rva algn_18009F038, \
                                  rva stru_18014DD34>
                RUNTIME_FUNCTION <rva ZwIsUILanguageComitted, rva algn_18009F058, \
                                  rva stru_18014DD38>
                RUNTIME_FUNCTION <rva ZwListenPort, rva algn_18009F078, \
                                  rva stru_18014DD3C>
                RUNTIME_FUNCTION <rva ZwLoadDriver, rva algn_18009F098, \
                                  rva stru_18014DD40>
                RUNTIME_FUNCTION <rva ZwLoadEnclaveData, rva algn_18009F0B8, \
                                  rva stru_18014DD44>
                RUNTIME_FUNCTION <rva ZwLoadKey, rva algn_18009F0D8, \
                                  rva stru_18014DD48>
                RUNTIME_FUNCTION <rva ZwLoadKey2, rva algn_18009F0F8, \
                                  rva stru_18014DD4C>
                RUNTIME_FUNCTION <rva ZwLoadKeyEx, rva algn_18009F118, \
                                  rva stru_18014DD50>
                RUNTIME_FUNCTION <rva ZwLockFile, rva algn_18009F138, \
                                  rva stru_18014DD54>
                RUNTIME_FUNCTION <rva ZwLockProductActivationKeys, rva algn_18009F158,\
                                  rva stru_18014DD58>
                RUNTIME_FUNCTION <rva ZwLockRegistryKey, rva algn_18009F178, \
                                  rva stru_18014DD5C>
                RUNTIME_FUNCTION <rva ZwLockVirtualMemory, rva algn_18009F198, \
                                  rva stru_18014DD60>
                RUNTIME_FUNCTION <rva ZwMakePermanentObject, rva algn_18009F1B8, \
                                  rva stru_18014DD64>
                RUNTIME_FUNCTION <rva ZwMakeTemporaryObject, rva algn_18009F1D8, \
                                  rva stru_18014DD68>
                RUNTIME_FUNCTION <rva ZwManageHotPatch, rva algn_18009F1F8, \
                                  rva stru_18014DD6C>
                RUNTIME_FUNCTION <rva ZwManagePartition, rva algn_18009F218, \
                                  rva stru_18014DD70>
                RUNTIME_FUNCTION <rva ZwMapCMFModule, rva algn_18009F238, \
                                  rva stru_18014DD74>
                RUNTIME_FUNCTION <rva ZwMapUserPhysicalPages, rva algn_18009F258, \
                                  rva stru_18014DD78>
                RUNTIME_FUNCTION <rva ZwMapViewOfSectionEx, rva algn_18009F278, \
                                  rva stru_18014DD7C>
                RUNTIME_FUNCTION <rva ZwModifyBootEntry, rva algn_18009F298, \
                                  rva stru_18014DD80>
                RUNTIME_FUNCTION <rva ZwModifyDriverEntry, rva algn_18009F2B8, \
                                  rva stru_18014DD84>
                RUNTIME_FUNCTION <rva ZwNotifyChangeDirectoryFile, rva algn_18009F2D8,\
                                  rva stru_18014DD88>
                RUNTIME_FUNCTION <rva ZwNotifyChangeDirectoryFileEx, \
                                  rva algn_18009F2F8, rva stru_18014DD8C>
                RUNTIME_FUNCTION <rva ZwNotifyChangeKey, rva algn_18009F318, \
                                  rva stru_18014DD90>
                RUNTIME_FUNCTION <rva ZwNotifyChangeMultipleKeys, rva algn_18009F338, \
                                  rva stru_18014DD94>
                RUNTIME_FUNCTION <rva ZwNotifyChangeSession, rva algn_18009F358, \
                                  rva stru_18014DD98>
                RUNTIME_FUNCTION <rva ZwOpenEnlistment, rva algn_18009F378, \
                                  rva stru_18014DD9C>
                RUNTIME_FUNCTION <rva ZwOpenEventPair, rva algn_18009F398, \
                                  rva stru_18014DDA0>
                RUNTIME_FUNCTION <rva ZwOpenIoCompletion, rva algn_18009F3B8, \
                                  rva stru_18014DDA4>
                RUNTIME_FUNCTION <rva ZwOpenJobObject, rva algn_18009F3D8, \
                                  rva stru_18014DDA8>
                RUNTIME_FUNCTION <rva ZwOpenKeyEx, rva algn_18009F3F8, \
                                  rva stru_18014DDAC>
                RUNTIME_FUNCTION <rva ZwOpenKeyTransacted, rva algn_18009F418, \
                                  rva stru_18014DDB0>
                RUNTIME_FUNCTION <rva ZwOpenKeyTransactedEx, rva algn_18009F438, \
                                  rva stru_18014DDB4>
                RUNTIME_FUNCTION <rva ZwOpenKeyedEvent, rva algn_18009F458, \
                                  rva stru_18014DDB8>
                RUNTIME_FUNCTION <rva ZwOpenMutant, rva algn_18009F478, \
                                  rva stru_18014DDBC>
                RUNTIME_FUNCTION <rva ZwOpenObjectAuditAlarm, rva algn_18009F498, \
                                  rva stru_18014DDC0>
                RUNTIME_FUNCTION <rva ZwOpenPartition, rva algn_18009F4B8, \
                                  rva stru_18014DDC4>
                RUNTIME_FUNCTION <rva ZwOpenPrivateNamespace, rva algn_18009F4D8, \
                                  rva stru_18014DDC8>
                RUNTIME_FUNCTION <rva ZwOpenProcessToken, rva algn_18009F4F8, \
                                  rva stru_18014DDCC>
                RUNTIME_FUNCTION <rva ZwOpenRegistryTransaction, rva algn_18009F518, \
                                  rva stru_18014DDD0>
                RUNTIME_FUNCTION <rva ZwOpenResourceManager, rva algn_18009F538, \
                                  rva stru_18014DDD4>
                RUNTIME_FUNCTION <rva ZwOpenSemaphore, rva algn_18009F558, \
                                  rva stru_18014DDD8>
                RUNTIME_FUNCTION <rva ZwOpenSession, rva algn_18009F578, \
                                  rva stru_18014DDDC>
                RUNTIME_FUNCTION <rva ZwOpenSymbolicLinkObject, rva algn_18009F598, \
                                  rva stru_18014DDE0>
                RUNTIME_FUNCTION <rva ZwOpenThread, rva algn_18009F5B8, \
                                  rva stru_18014DDE4>
                RUNTIME_FUNCTION <rva ZwOpenTimer, rva algn_18009F5D8, \
                                  rva stru_18014DDE8>
                RUNTIME_FUNCTION <rva ZwOpenTransaction, rva algn_18009F5F8, \
                                  rva stru_18014DDEC>
                RUNTIME_FUNCTION <rva ZwOpenTransactionManager, rva algn_18009F618, \
                                  rva stru_18014DDF0>
                RUNTIME_FUNCTION <rva ZwPlugPlayControl, rva algn_18009F638, \
                                  rva stru_18014DDF4>
                RUNTIME_FUNCTION <rva ZwPrePrepareComplete, rva algn_18009F658, \
                                  rva stru_18014DDF8>
                RUNTIME_FUNCTION <rva ZwPrePrepareEnlistment, rva algn_18009F678, \
                                  rva stru_18014DDFC>
                RUNTIME_FUNCTION <rva ZwPrepareComplete, rva algn_18009F698, \
                                  rva stru_18014DE00>
                RUNTIME_FUNCTION <rva ZwPrepareEnlistment, rva algn_18009F6B8, \
                                  rva stru_18014DE04>
                RUNTIME_FUNCTION <rva ZwPrivilegeCheck, rva algn_18009F6D8, \
                                  rva stru_18014DE08>
                RUNTIME_FUNCTION <rva ZwPrivilegeObjectAuditAlarm, rva algn_18009F6F8,\
                                  rva stru_18014DE0C>
                RUNTIME_FUNCTION <rva ZwPrivilegedServiceAuditAlarm, \
                                  rva algn_18009F718, rva stru_18014DE10>
                RUNTIME_FUNCTION <rva ZwPropagationComplete, rva algn_18009F738, \
                                  rva stru_18014DE14>
                RUNTIME_FUNCTION <rva ZwPropagationFailed, rva algn_18009F758, \
                                  rva stru_18014DE18>
                RUNTIME_FUNCTION <rva ZwPssCaptureVaSpaceBulk, rva algn_18009F778, \
                                  rva stru_18014DE1C>
                RUNTIME_FUNCTION <rva ZwPulseEvent, rva algn_18009F798, \
                                  rva stru_18014DE20>
                RUNTIME_FUNCTION <rva ZwQueryAuxiliaryCounterFrequency, \
                                  rva algn_18009F7B8, rva stru_18014DE24>
                RUNTIME_FUNCTION <rva ZwQueryBootEntryOrder, rva algn_18009F7D8, \
                                  rva stru_18014DE28>
                RUNTIME_FUNCTION <rva ZwQueryBootOptions, rva algn_18009F7F8, \
                                  rva stru_18014DE2C>
                RUNTIME_FUNCTION <rva ZwQueryDebugFilterState, rva algn_18009F818, \
                                  rva stru_18014DE30>
                RUNTIME_FUNCTION <rva ZwQueryDirectoryFileEx, rva algn_18009F838, \
                                  rva stru_18014DE34>
                RUNTIME_FUNCTION <rva ZwQueryDirectoryObject, rva algn_18009F858, \
                                  rva stru_18014DE38>
                RUNTIME_FUNCTION <rva ZwQueryDriverEntryOrder, rva algn_18009F878, \
                                  rva stru_18014DE3C>
                RUNTIME_FUNCTION <rva ZwQueryEaFile, rva algn_18009F898, \
                                  rva stru_18014DE40>
                RUNTIME_FUNCTION <rva ZwQueryFullAttributesFile, rva algn_18009F8B8, \
                                  rva stru_18014DE44>
                RUNTIME_FUNCTION <rva ZwQueryInformationAtom, rva algn_18009F8D8, \
                                  rva stru_18014DE48>
                RUNTIME_FUNCTION <rva ZwQueryInformationByName, rva algn_18009F8F8, \
                                  rva stru_18014DE4C>
                RUNTIME_FUNCTION <rva ZwQueryInformationEnlistment, \
                                  rva algn_18009F918, rva stru_18014DE50>
                RUNTIME_FUNCTION <rva ZwQueryInformationJobObject, rva algn_18009F938,\
                                  rva stru_18014DE54>
                RUNTIME_FUNCTION <rva ZwQueryInformationPort, rva algn_18009F958, \
                                  rva stru_18014DE58>
                RUNTIME_FUNCTION <rva ZwQueryInformationResourceManager, \
                                  rva algn_18009F978, rva stru_18014DE5C>
                RUNTIME_FUNCTION <rva ZwQueryInformationTransaction, \
                                  rva algn_18009F998, rva stru_18014DE60>
                RUNTIME_FUNCTION <rva ZwQueryInformationTransactionManager, \
                                  rva algn_18009F9B8, rva stru_18014DE64>
                RUNTIME_FUNCTION <rva ZwQueryInformationWorkerFactory, \
                                  rva algn_18009F9D8, rva stru_18014DE68>
                RUNTIME_FUNCTION <rva ZwQueryInstallUILanguage, rva algn_18009F9F8, \
                                  rva stru_18014DE6C>
                RUNTIME_FUNCTION <rva ZwQueryIntervalProfile, rva algn_18009FA18, \
                                  rva stru_18014DE70>
                RUNTIME_FUNCTION <rva ZwQueryIoCompletion, rva algn_18009FA38, \
                                  rva stru_18014DE74>
                RUNTIME_FUNCTION <rva ZwQueryLicenseValue, rva algn_18009FA58, \
                                  rva stru_18014DE78>
                RUNTIME_FUNCTION <rva ZwQueryMultipleValueKey, rva algn_18009FA78, \
                                  rva stru_18014DE7C>
                RUNTIME_FUNCTION <rva ZwQueryMutant, rva algn_18009FA98, \
                                  rva stru_18014DE80>
                RUNTIME_FUNCTION <rva ZwQueryOpenSubKeys, rva algn_18009FAB8, \
                                  rva stru_18014DE84>
                RUNTIME_FUNCTION <rva ZwQueryOpenSubKeysEx, rva algn_18009FAD8, \
                                  rva stru_18014DE88>
                RUNTIME_FUNCTION <rva ZwQueryPortInformationProcess, \
                                  rva algn_18009FAF8, rva stru_18014DE8C>
                RUNTIME_FUNCTION <rva ZwQueryQuotaInformationFile, rva algn_18009FB18,\
                                  rva stru_18014DE90>
                RUNTIME_FUNCTION <rva ZwQuerySecurityAttributesToken, \
                                  rva algn_18009FB38, rva stru_18014DE94>
                RUNTIME_FUNCTION <rva ZwQuerySecurityObject, rva algn_18009FB58, \
                                  rva stru_18014DE98>
                RUNTIME_FUNCTION <rva ZwQuerySecurityPolicy, rva algn_18009FB78, \
                                  rva stru_18014DE9C>
                RUNTIME_FUNCTION <rva ZwQuerySemaphore, rva algn_18009FB98, \
                                  rva stru_18014DEA0>
                RUNTIME_FUNCTION <rva ZwQuerySymbolicLinkObject, rva algn_18009FBB8, \
                                  rva stru_18014DEA4>
                RUNTIME_FUNCTION <rva ZwQuerySystemEnvironmentValue, \
                                  rva algn_18009FBD8, rva stru_18014DEA8>
                RUNTIME_FUNCTION <rva ZwQuerySystemEnvironmentValueEx, \
                                  rva algn_18009FBF8, rva stru_18014DEAC>
                RUNTIME_FUNCTION <rva ZwQuerySystemInformationEx, rva algn_18009FC18, \
                                  rva stru_18014DEB0>
                RUNTIME_FUNCTION <rva ZwQueryTimerResolution, rva algn_18009FC38, \
                                  rva stru_18014DEB4>
                RUNTIME_FUNCTION <rva ZwQueryWnfStateData, rva algn_18009FC58, \
                                  rva stru_18014DEB8>
                RUNTIME_FUNCTION <rva ZwQueryWnfStateNameInformation, \
                                  rva algn_18009FC78, rva stru_18014DEBC>
                RUNTIME_FUNCTION <rva ZwQueueApcThreadEx, rva algn_18009FC98, \
                                  rva stru_18014DEC0>
                RUNTIME_FUNCTION <rva ZwQueueApcThreadEx2, rva algn_18009FCB8, \
                                  rva stru_18014DEC4>
                RUNTIME_FUNCTION <rva ZwRaiseException, rva algn_18009FCD8, \
                                  rva stru_18014DEC8>
                RUNTIME_FUNCTION <rva ZwRaiseHardError, rva algn_18009FCF8, \
                                  rva stru_18014DECC>
                RUNTIME_FUNCTION <rva ZwReadOnlyEnlistment, rva algn_18009FD18, \
                                  rva stru_18014DED0>
                RUNTIME_FUNCTION <rva ZwRecoverEnlistment, rva algn_18009FD38, \
                                  rva stru_18014DED4>
                RUNTIME_FUNCTION <rva ZwRecoverResourceManager, rva algn_18009FD58, \
                                  rva stru_18014DED8>
                RUNTIME_FUNCTION <rva ZwRecoverTransactionManager, rva algn_18009FD78,\
                                  rva stru_18014DEDC>
                RUNTIME_FUNCTION <rva ZwRegisterProtocolAddressInformation, \
                                  rva algn_18009FD98, rva stru_18014DEE0>
                RUNTIME_FUNCTION <rva ZwRegisterThreadTerminatePort, \
                                  rva algn_18009FDB8, rva stru_18014DEE4>
                RUNTIME_FUNCTION <rva ZwReleaseKeyedEvent, rva algn_18009FDD8, \
                                  rva stru_18014DEE8>
                RUNTIME_FUNCTION <rva ZwReleaseWorkerFactoryWorker, \
                                  rva algn_18009FDF8, rva stru_18014DEEC>
                RUNTIME_FUNCTION <rva ZwRemoveIoCompletionEx, rva algn_18009FE18, \
                                  rva stru_18014DEF0>
                RUNTIME_FUNCTION <rva ZwRemoveProcessDebug, rva algn_18009FE38, \
                                  rva stru_18014DEF4>
                RUNTIME_FUNCTION <rva ZwRenameKey, rva algn_18009FE58, \
                                  rva stru_18014DEF8>
                RUNTIME_FUNCTION <rva ZwRenameTransactionManager, rva algn_18009FE78, \
                                  rva stru_18014DEFC>
                RUNTIME_FUNCTION <rva ZwReplaceKey, rva algn_18009FE98, \
                                  rva stru_18014DF00>
                RUNTIME_FUNCTION <rva ZwReplacePartitionUnit, rva algn_18009FEB8, \
                                  rva stru_18014DF04>
                RUNTIME_FUNCTION <rva ZwReplyWaitReplyPort, rva algn_18009FED8, \
                                  rva stru_18014DF08>
                RUNTIME_FUNCTION <rva ZwRequestPort, rva algn_18009FEF8, \
                                  rva stru_18014DF0C>
                RUNTIME_FUNCTION <rva ZwResetEvent, rva algn_18009FF18, \
                                  rva stru_18014DF10>
                RUNTIME_FUNCTION <rva ZwResetWriteWatch, rva algn_18009FF38, \
                                  rva stru_18014DF14>
                RUNTIME_FUNCTION <rva ZwRestoreKey, rva algn_18009FF58, \
                                  rva stru_18014DF18>
                RUNTIME_FUNCTION <rva ZwResumeProcess, rva algn_18009FF78, \
                                  rva stru_18014DF1C>
                RUNTIME_FUNCTION <rva ZwRevertContainerImpersonation, \
                                  rva algn_18009FF98, rva stru_18014DF20>
                RUNTIME_FUNCTION <rva ZwRollbackComplete, rva algn_18009FFB8, \
                                  rva stru_18014DF24>
                RUNTIME_FUNCTION <rva ZwRollbackEnlistment, rva algn_18009FFD8, \
                                  rva stru_18014DF28>
                RUNTIME_FUNCTION <rva ZwRollbackRegistryTransaction, \
                                  rva algn_18009FFF8, rva stru_18014DF2C>
                RUNTIME_FUNCTION <rva ZwRollbackTransaction, rva algn_1800A0018, \
                                  rva stru_18014DF30>
                RUNTIME_FUNCTION <rva ZwRollforwardTransactionManager, \
                                  rva algn_1800A0038, rva stru_18014DF34>
                RUNTIME_FUNCTION <rva ZwSaveKey, rva algn_1800A0058, \
                                  rva stru_18014DF38>
                RUNTIME_FUNCTION <rva ZwSaveKeyEx, rva algn_1800A0078, \
                                  rva stru_18014DF3C>
                RUNTIME_FUNCTION <rva ZwSaveMergedKeys, rva algn_1800A0098, \
                                  rva stru_18014DF40>
                RUNTIME_FUNCTION <rva ZwSecureConnectPort, rva algn_1800A00B8, \
                                  rva stru_18014DF44>
                RUNTIME_FUNCTION <rva ZwSerializeBoot, rva algn_1800A00D8, \
                                  rva stru_18014DF48>
                RUNTIME_FUNCTION <rva ZwSetBootEntryOrder, rva algn_1800A00F8, \
                                  rva stru_18014DF4C>
                RUNTIME_FUNCTION <rva ZwSetBootOptions, rva algn_1800A0118, \
                                  rva stru_18014DF50>
                RUNTIME_FUNCTION <rva ZwSetCachedSigningLevel, rva algn_1800A0138, \
                                  rva stru_18014DF54>
                RUNTIME_FUNCTION <rva ZwSetCachedSigningLevel2, rva algn_1800A0158, \
                                  rva stru_18014DF58>
                RUNTIME_FUNCTION <rva ZwSetContextThread, rva algn_1800A0178, \
                                  rva stru_18014DF5C>
                RUNTIME_FUNCTION <rva ZwSetDebugFilterState, rva algn_1800A0198, \
                                  rva stru_18014DF60>
                RUNTIME_FUNCTION <rva ZwSetDefaultHardErrorPort, rva algn_1800A01B8, \
                                  rva stru_18014DF64>
                RUNTIME_FUNCTION <rva ZwSetDefaultLocale, rva algn_1800A01D8, \
                                  rva stru_18014DF68>
                RUNTIME_FUNCTION <rva ZwSetDefaultUILanguage, rva algn_1800A01F8, \
                                  rva stru_18014DF6C>
                RUNTIME_FUNCTION <rva ZwSetDriverEntryOrder, rva algn_1800A0218, \
                                  rva stru_18014DF70>
                RUNTIME_FUNCTION <rva ZwSetEaFile, rva algn_1800A0238, \
                                  rva stru_18014DF74>
                RUNTIME_FUNCTION <rva ZwSetHighEventPair, rva algn_1800A0258, \
                                  rva stru_18014DF78>
                RUNTIME_FUNCTION <rva ZwSetHighWaitLowEventPair, rva algn_1800A0278, \
                                  rva stru_18014DF7C>
                RUNTIME_FUNCTION <rva ZwSetIRTimer, rva algn_1800A0298, \
                                  rva stru_18014DF80>
                RUNTIME_FUNCTION <rva ZwSetInformationDebugObject, rva algn_1800A02B8,\
                                  rva stru_18014DF84>
                RUNTIME_FUNCTION <rva ZwSetInformationEnlistment, rva algn_1800A02D8, \
                                  rva stru_18014DF88>
                RUNTIME_FUNCTION <rva ZwSetInformationJobObject, rva algn_1800A02F8, \
                                  rva stru_18014DF8C>
                RUNTIME_FUNCTION <rva ZwSetInformationKey, rva algn_1800A0318, \
                                  rva stru_18014DF90>
                RUNTIME_FUNCTION <rva ZwSetInformationResourceManager, \
                                  rva algn_1800A0338, rva stru_18014DF94>
                RUNTIME_FUNCTION <rva ZwSetInformationSymbolicLink, \
                                  rva algn_1800A0358, rva stru_18014DF98>
                RUNTIME_FUNCTION <rva ZwSetInformationToken, rva algn_1800A0378, \
                                  rva stru_18014DF9C>
                RUNTIME_FUNCTION <rva ZwSetInformationTransaction, rva algn_1800A0398,\
                                  rva stru_18014DFA0>
                RUNTIME_FUNCTION <rva ZwSetInformationTransactionManager, \
                                  rva algn_1800A03B8, rva stru_18014DFA4>
                RUNTIME_FUNCTION <rva ZwSetInformationVirtualMemory, \
                                  rva algn_1800A03D8, rva stru_18014DFA8>
                RUNTIME_FUNCTION <rva ZwSetInformationWorkerFactory, \
                                  rva algn_1800A03F8, rva stru_18014DFAC>
                RUNTIME_FUNCTION <rva ZwSetIntervalProfile, rva algn_1800A0418, \
                                  rva stru_18014DFB0>
                RUNTIME_FUNCTION <rva ZwSetIoCompletion, rva algn_1800A0438, \
                                  rva stru_18014DFB4>
                RUNTIME_FUNCTION <rva ZwSetIoCompletionEx, rva algn_1800A0458, \
                                  rva stru_18014DFB8>
                RUNTIME_FUNCTION <rva ZwSetLdtEntries, rva algn_1800A0478, \
                                  rva stru_18014DFBC>
                RUNTIME_FUNCTION <rva ZwSetLowEventPair, rva algn_1800A0498, \
                                  rva stru_18014DFC0>
                RUNTIME_FUNCTION <rva ZwSetLowWaitHighEventPair, rva algn_1800A04B8, \
                                  rva stru_18014DFC4>
                RUNTIME_FUNCTION <rva ZwSetQuotaInformationFile, rva algn_1800A04D8, \
                                  rva stru_18014DFC8>
                RUNTIME_FUNCTION <rva ZwSetSecurityObject, rva algn_1800A04F8, \
                                  rva stru_18014DFCC>
                RUNTIME_FUNCTION <rva ZwSetSystemEnvironmentValue, rva algn_1800A0518,\
                                  rva stru_18014DFD0>
                RUNTIME_FUNCTION <rva ZwSetSystemEnvironmentValueEx, \
                                  rva algn_1800A0538, rva stru_18014DFD4>
                RUNTIME_FUNCTION <rva ZwSetSystemInformation, rva algn_1800A0558, \
                                  rva stru_18014DFD8>
                RUNTIME_FUNCTION <rva ZwSetSystemPowerState, rva algn_1800A0578, \
                                  rva stru_18014DFDC>
                RUNTIME_FUNCTION <rva ZwSetSystemTime, rva algn_1800A0598, \
                                  rva stru_18014DFE0>
                RUNTIME_FUNCTION <rva ZwSetThreadExecutionState, rva algn_1800A05B8, \
                                  rva stru_18014DFE4>
                RUNTIME_FUNCTION <rva ZwSetTimer2, rva algn_1800A05D8, \
                                  rva stru_18014DFE8>
                RUNTIME_FUNCTION <rva ZwSetTimerEx, rva algn_1800A05F8, \
                                  rva stru_18014DFEC>
                RUNTIME_FUNCTION <rva ZwSetTimerResolution, rva algn_1800A0618, \
                                  rva stru_18014DFF0>
                RUNTIME_FUNCTION <rva ZwSetUuidSeed, rva algn_1800A0638, \
                                  rva stru_18014DFF4>
                RUNTIME_FUNCTION <rva ZwSetVolumeInformationFile, rva algn_1800A0658, \
                                  rva stru_18014DFF8>
                RUNTIME_FUNCTION <rva ZwSetWnfProcessNotificationEvent, \
                                  rva algn_1800A0678, rva stru_18014DFFC>
                RUNTIME_FUNCTION <rva ZwShutdownSystem, rva algn_1800A0698, \
                                  rva stru_18014E000>
                RUNTIME_FUNCTION <rva ZwShutdownWorkerFactory, rva algn_1800A06B8, \
                                  rva stru_18014E004>
                RUNTIME_FUNCTION <rva ZwSignalAndWaitForSingleObject, \
                                  rva algn_1800A06D8, rva stru_18014E008>
                RUNTIME_FUNCTION <rva ZwSinglePhaseReject, rva algn_1800A06F8, \
                                  rva stru_18014E00C>
                RUNTIME_FUNCTION <rva ZwStartProfile, rva algn_1800A0718, \
                                  rva stru_18014E010>
                RUNTIME_FUNCTION <rva ZwStopProfile, rva algn_1800A0738, \
                                  rva stru_18014E014>
                RUNTIME_FUNCTION <rva ZwSubscribeWnfStateChange, rva algn_1800A0758, \
                                  rva stru_18014E018>
                RUNTIME_FUNCTION <rva ZwSuspendProcess, rva algn_1800A0778, \
                                  rva stru_18014E01C>
                RUNTIME_FUNCTION <rva ZwSuspendThread, rva algn_1800A0798, \
                                  rva stru_18014E020>
                RUNTIME_FUNCTION <rva ZwSystemDebugControl, rva algn_1800A07B8, \
                                  rva stru_18014E024>
                RUNTIME_FUNCTION <rva ZwTerminateEnclave, rva algn_1800A07D8, \
                                  rva stru_18014E028>
                RUNTIME_FUNCTION <rva ZwTerminateJobObject, rva algn_1800A07F8, \
                                  rva stru_18014E02C>
                RUNTIME_FUNCTION <rva ZwTestAlert, rva algn_1800A0818, \
                                  rva stru_18014E030>
                RUNTIME_FUNCTION <rva ZwThawRegistry, rva algn_1800A0838, \
                                  rva stru_18014E034>
                RUNTIME_FUNCTION <rva ZwThawTransactions, rva algn_1800A0858, \
                                  rva stru_18014E038>
                RUNTIME_FUNCTION <rva ZwTraceControl, rva algn_1800A0878, \
                                  rva stru_18014E03C>
                RUNTIME_FUNCTION <rva ZwTranslateFilePath, rva algn_1800A0898, \
                                  rva stru_18014E040>
                RUNTIME_FUNCTION <rva ZwUmsThreadYield, rva algn_1800A08B8, \
                                  rva stru_18014E044>
                RUNTIME_FUNCTION <rva ZwUnloadDriver, rva algn_1800A08D8, \
                                  rva stru_18014E048>
                RUNTIME_FUNCTION <rva ZwUnloadKey, rva algn_1800A08F8, \
                                  rva stru_18014E04C>
                RUNTIME_FUNCTION <rva ZwUnloadKey2, rva algn_1800A0918, \
                                  rva stru_18014E050>
                RUNTIME_FUNCTION <rva ZwUnloadKeyEx, rva algn_1800A0938, \
                                  rva stru_18014E054>
                RUNTIME_FUNCTION <rva ZwUnlockFile, rva algn_1800A0958, \
                                  rva stru_18014E058>
                RUNTIME_FUNCTION <rva ZwUnlockVirtualMemory, rva algn_1800A0978, \
                                  rva stru_18014E05C>
                RUNTIME_FUNCTION <rva ZwUnmapViewOfSectionEx, rva algn_1800A0998, \
                                  rva stru_18014E060>
                RUNTIME_FUNCTION <rva ZwUnsubscribeWnfStateChange, rva algn_1800A09B8,\
                                  rva stru_18014E064>
                RUNTIME_FUNCTION <rva ZwUpdateWnfStateData, rva algn_1800A09D8, \
                                  rva stru_18014E068>
                RUNTIME_FUNCTION <rva ZwVdmControl, rva algn_1800A09F8, \
                                  rva stru_18014E06C>
                RUNTIME_FUNCTION <rva ZwWaitForAlertByThreadId, rva algn_1800A0A18, \
                                  rva stru_18014E070>
                RUNTIME_FUNCTION <rva ZwWaitForDebugEvent, rva algn_1800A0A38, \
                                  rva stru_18014E074>
                RUNTIME_FUNCTION <rva ZwWaitForKeyedEvent, rva algn_1800A0A58, \
                                  rva stru_18014E078>
                RUNTIME_FUNCTION <rva ZwWaitForWorkViaWorkerFactory, \
                                  rva algn_1800A0A78, rva stru_18014E07C>
                RUNTIME_FUNCTION <rva ZwWaitHighEventPair, rva algn_1800A0A98, \
                                  rva stru_18014E080>
                RUNTIME_FUNCTION <rva ZwLoadKey3, rva algn_1800A0AB8, \
                                  rva stru_18014E084>
                RUNTIME_FUNCTION <rva ZwWaitLowEventPair, rva byte_1800A0AD8, \
                                  rva stru_18014E088>
                RUNTIME_FUNCTION <rva _guard_dispatch_icall_nop, rva byte_1800A0AF2, \
                                  rva stru_18014E0D0>
                RUNTIME_FUNCTION <rva DbgBreakPoint, rva byte_1800A0B12, \
                                  rva stru_18014E0D8>
                RUNTIME_FUNCTION <rva DbgUserBreakPoint, rva byte_1800A0B22, \
                                  rva stru_18014E0DC>
                RUNTIME_FUNCTION <rva sub_1800A0B30, rva algn_1800A0B32, \
                                  rva stru_18014E0E0>
                RUNTIME_FUNCTION <rva sub_1800A0B40, rva algn_1800A0B56, \
                                  rva stru_18014E0E4>
                RUNTIME_FUNCTION <rva sub_1800A0B60, rva byte_1800A0B79, \
                                  rva stru_18014E0E8>
                RUNTIME_FUNCTION <rva RtlFirstEntrySList, rva algn_1800A0B97, \
                                  rva stru_18014E0F0>
                RUNTIME_FUNCTION <rva RtlInterlockedPopEntrySList, rva algn_1800A0BD3,\
                                  rva stru_18014E0F4>
                RUNTIME_FUNCTION <rva RtlInterlockedPushEntrySList_0, \
                                  rva algn_1800A0C11, rva stru_18014E100>
                RUNTIME_FUNCTION <rva RtlInterlockedFlushSList_0, rva algn_1800A0C44, \
                                  rva stru_18014E10C>
                RUNTIME_FUNCTION <rva RtlInterlockedPushListSList, rva algn_1800A0C83,\
                                  rva stru_18014E118>
                RUNTIME_FUNCTION <rva sub_1800A0CA0, rva byte_1800A0CBC, \
                                  rva stru_18014E128>
                RUNTIME_FUNCTION <rva sub_1800A0CD0, rva algn_1800A0D12, \
                                  rva stru_18014E130>
                RUNTIME_FUNCTION <rva KiUserApcDispatcher, rva algn_1800A0DA3, \
                                  rva stru_18014E148>
                RUNTIME_FUNCTION <rva sub_1800A0DB0, rva algn_1800A0E32, \
                                  rva stru_18014E1A4>
                RUNTIME_FUNCTION <rva KiUserCallbackDispatcher, rva byte_1800A0E7B, \
                                  rva stru_18014E1AC>
                RUNTIME_FUNCTION <rva KiUserExceptionDispatcher, rva algn_1800A0EEC, \
                                  rva stru_18014E1BC>
                RUNTIME_FUNCTION <rva KiRaiseUserExceptionDispatcher, \
                                  rva algn_1800A0F49, rva stru_18014E214>
                RUNTIME_FUNCTION <rva RtlEnclaveCallDispatch, rva algn_1800A0FC7, \
                                  rva stru_18014E224>
                RUNTIME_FUNCTION <rva sub_1800A0FD0, rva byte_1800A109F, \
                                  rva stru_18014E238>
                RUNTIME_FUNCTION <rva sub_1800A10B0, rva byte_1800A1120, \
                                  rva stru_18014E290>
                RUNTIME_FUNCTION <rva RtlCaptureContext, rva byte_1800A11DF, \
                                  rva stru_18014E298>
                RUNTIME_FUNCTION <rva sub_1800A11F0, rva algn_1800A1265, \
                                  rva stru_18014E2A4>
                RUNTIME_FUNCTION <rva RtlCaptureContext2, rva algn_1800A1370, \
                                  rva stru_18014E2B0>
                RUNTIME_FUNCTION <rva sub_1800A1380, rva byte_1800A16FC, \
                                  rva stru_18014E2C0>
                RUNTIME_FUNCTION <rva sub_1800A1710, rva byte_1800A18DC, \
                                  rva stru_18014E2D4>
                RUNTIME_FUNCTION <rva nullsub_2, rva algn_1800A18F1, \
                                  rva stru_18014E32C>
                RUNTIME_FUNCTION <rva RtlRaiseNoncontinuableException, \
                                  rva algn_1800A196A, rva stru_18014E330>
                RUNTIME_FUNCTION <rva RtlCompareMemory, rva algn_1800A19FA, \
                                  rva stru_18014E340>
                RUNTIME_FUNCTION <rva RtlCompareMemoryUlong, rva algn_1800A1A24, \
                                  rva stru_18014E34C>
                RUNTIME_FUNCTION <rva RtlCopyMemoryNonTemporal, rva byte_1800A1B3E, \
                                  rva stru_18014E358>
                RUNTIME_FUNCTION <rva loc_1800A1B50, rva byte_1800A1B5E, \
                                  rva stru_18014E35C>
                RUNTIME_FUNCTION <rva RtlFillMemoryNonTemporal, rva byte_1800A1C59, \
                                  rva stru_18014E360>
                RUNTIME_FUNCTION <rva RtlGetCurrentProcessorNumber, \
                                  rva algn_1800A1CA8, rva stru_18014E368>
                RUNTIME_FUNCTION <rva RtlGetCurrentProcessorNumberEx, \
                                  rva algn_1800A1D09, rva stru_18014E36C>
                RUNTIME_FUNCTION <rva RtlRaiseExceptionForReturnAddressHijack, \
                                  rva algn_1800A1D65, rva stru_18014E370>
                RUNTIME_FUNCTION <rva nullsub_3, rva byte_1800A211C, \
                                  rva stru_18014E380>
                RUNTIME_FUNCTION <rva sub_1800A2130, rva algn_1800A2141, \
                                  rva stru_18014E384>
                RUNTIME_FUNCTION <rva sub_1800A2150, rva byte_1800A227F, \
                                  rva stru_18014E38C>
                RUNTIME_FUNCTION <rva __chkstk, rva byte_1800A22DD, \
                                  rva stru_18014E3E0>
                RUNTIME_FUNCTION <rva loc_1800A22F0, rva byte_1800A22FB, \
                                  rva stru_18014E458>
                RUNTIME_FUNCTION <rva loc_1800A2310, rva byte_1800A231B, \
                                  rva stru_18014E45C>
                RUNTIME_FUNCTION <rva loc_1800A2330, rva byte_1800A233B, \
                                  rva stru_18014E460>
                RUNTIME_FUNCTION <rva sub_1800A2350, rva byte_1800A2354, \
                                  rva stru_18014E468>
                RUNTIME_FUNCTION <rva loc_1800A2370, rva algn_1800A2390, \
                                  rva stru_18014E470>
                RUNTIME_FUNCTION <rva sub_1800A23A0, rva algn_1800A23B5, \
                                  rva stru_18014E474>
                RUNTIME_FUNCTION <rva sub_1800A23C0, rva algn_1800A2410, \
                                  rva stru_18014E488>
                RUNTIME_FUNCTION <rva sub_1800A2420, rva byte_1800A2435, \
                                  rva stru_18014E48C>
                RUNTIME_FUNCTION <rva sub_1800A2450, rva byte_1800A2FB6, \
                                  rva stru_18014E4A0>
                RUNTIME_FUNCTION <rva _setjmp, rva byte_1800A3060, rva stru_18014E4F8>
                RUNTIME_FUNCTION <rva loc_1800A3070, rva byte_1800A3075, \
                                  rva stru_18014E4FC>
                RUNTIME_FUNCTION <rva _setjmpex, rva byte_1800A3120, \
                                  rva stru_18014E500>
                RUNTIME_FUNCTION <rva pow, rva algn_1800A3CE1, rva stru_18014E618>
                RUNTIME_FUNCTION <rva sub_1800A3D00, rva algn_1800A3DEF, \
                                  rva stru_18014E920>
                RUNTIME_FUNCTION <rva sub_1800A3E00, rva algn_1800A3E10, \
                                  rva stru_18014E988>
                RUNTIME_FUNCTION <rva memmove, rva algn_1800A40EA, rva stru_18014E4B8>
                RUNTIME_FUNCTION <rva memset, rva algn_1800A41E9, rva stru_18014E610>
                RUNTIME_FUNCTION <rva loc_1800A41F0, rva byte_1800A4278, \
                                  rva stru_1801408D4>
                RUNTIME_FUNCTION <rva loc_1800A427E, rva byte_1800A42C3, \
                                  rva stru_180140924>
                RUNTIME_FUNCTION <rva loc_1800A42C9, rva loc_1800A42E7, \
                                  rva stru_1801409E0>
                RUNTIME_FUNCTION <rva loc_1800A42E7, rva byte_1800A432D, \
                                  rva stru_1801409E8>
                RUNTIME_FUNCTION <rva loc_1800A4333, rva byte_1800A4351, \
                                  rva stru_180140A10>
                RUNTIME_FUNCTION <rva loc_1800A4357, rva byte_1800A43A6, \
                                  rva stru_180140A60>
                RUNTIME_FUNCTION <rva loc_1800A43AC, rva loc_1800A43CE, \
                                  rva stru_18014169C>
                RUNTIME_FUNCTION <rva loc_1800A43CE, rva byte_1800A43E8, \
                                  rva stru_1801416A4>
                RUNTIME_FUNCTION <rva loc_1800A43EE, rva loc_1800A440F, \
                                  rva stru_1801416FC>
                RUNTIME_FUNCTION <rva loc_1800A440F, rva byte_1800A4460, \
                                  rva stru_180141704>
                RUNTIME_FUNCTION <rva loc_1800A4466, rva byte_1800A4484, \
                                  rva stru_18014184C>
                RUNTIME_FUNCTION <rva loc_1800A448A, rva loc_1800A44A8, \
                                  rva stru_180141898>
                RUNTIME_FUNCTION <rva loc_1800A44A8, rva algn_1800A44C2, \
                                  rva stru_1801418A0>
                RUNTIME_FUNCTION <rva loc_1800A44C8, rva byte_1800A4558, \
                                  rva stru_1801418F8>
                RUNTIME_FUNCTION <rva loc_1800A455E, rva loc_1800A457C, \
                                  rva stru_1801419BC>
                RUNTIME_FUNCTION <rva loc_1800A457C, rva byte_1800A45D0, \
                                  rva stru_1801419C4>
                RUNTIME_FUNCTION <rva loc_1800A45D6, rva algn_1800A45F2, \
                                  rva stru_180141A38>
                RUNTIME_FUNCTION <rva loc_1800A45F8, rva byte_1800A4630, \
                                  rva stru_180141DF4>
                RUNTIME_FUNCTION <rva loc_1800A4636, rva byte_1800A4688, \
                                  rva stru_180141E38>
                RUNTIME_FUNCTION <rva loc_1800A468E, rva byte_1800A46A9, \
                                  rva stru_180141E88>
                RUNTIME_FUNCTION <rva loc_1800A46AF, rva byte_1800A46C7, \
                                  rva stru_180141FA4>
                RUNTIME_FUNCTION <rva loc_1800A46CD, rva loc_1800A46EE, \
                                  rva stru_180142060>
                RUNTIME_FUNCTION <rva loc_1800A46EE, rva loc_1800A473A, \
                                  rva stru_180142068>
                RUNTIME_FUNCTION <rva loc_1800A473A, rva byte_1800A477B, \
                                  rva stru_180142070>
                RUNTIME_FUNCTION <rva loc_1800A4790, rva byte_1800A47AB, \
                                  rva stru_180142100>
                RUNTIME_FUNCTION <rva loc_1800A47B1, rva loc_1800A47D6, \
                                  rva stru_180142414>
                RUNTIME_FUNCTION <rva loc_1800A47D6, rva byte_1800A47F3, \
                                  rva stru_18014241C>
                RUNTIME_FUNCTION <rva loc_1800A47F9, rva byte_1800A4820, \
                                  rva stru_180142474>
                RUNTIME_FUNCTION <rva loc_1800A4826, rva loc_1800A484E, \
                                  rva stru_180142514>
                RUNTIME_FUNCTION <rva loc_1800A484E, rva loc_1800A486B, \
                                  rva stru_18014251C>
                RUNTIME_FUNCTION <rva loc_1800A486B, rva loc_1800A48E1, \
                                  rva stru_180142524>
                RUNTIME_FUNCTION <rva loc_1800A48E1, rva byte_1800A4919, \
                                  rva stru_18014252C>
                RUNTIME_FUNCTION <rva loc_1800A491F, rva byte_1800A493E, \
                                  rva stru_180142630>
                RUNTIME_FUNCTION <rva loc_1800A4944, rva loc_1800A495C, \
                                  rva stru_1801426FC>
                RUNTIME_FUNCTION <rva loc_1800A495C, rva byte_1800A4974, \
                                  rva stru_180142704>
                RUNTIME_FUNCTION <rva loc_1800A497A, rva algn_1800A4992, \
                                  rva stru_18014279C>
                RUNTIME_FUNCTION <rva loc_1800A49A0, rva loc_1800A49C3, \
                                  rva stru_180142AA8>
                RUNTIME_FUNCTION <rva loc_1800A49C3, rva byte_1800A49E3, \
                                  rva stru_180142AB0>
                RUNTIME_FUNCTION <rva loc_1800A49E9, rva algn_1800A4A1A, \
                                  rva stru_180142AF0>
                RUNTIME_FUNCTION <rva loc_1800A4A20, rva algn_1800A4A3A, \
                                  rva stru_180142CEC>
                RUNTIME_FUNCTION <rva loc_1800A4A40, rva loc_1800A4A5A, \
                                  rva stru_180142DF0>
                RUNTIME_FUNCTION <rva loc_1800A4A5A, rva loc_1800A4A77, \
                                  rva stru_180142DF8>
                RUNTIME_FUNCTION <rva loc_1800A4A77, rva algn_1800A4AA2, \
                                  rva stru_180142E00>
                RUNTIME_FUNCTION <rva loc_1800A4AA8, rva loc_1800A4AC2, \
                                  rva stru_180142E68>
                RUNTIME_FUNCTION <rva loc_1800A4AC2, rva loc_1800A4ADF, \
                                  rva stru_180142E70>
                RUNTIME_FUNCTION <rva loc_1800A4ADF, rva algn_1800A4B01, \
                                  rva stru_180142E78>
                RUNTIME_FUNCTION <rva loc_1800A4B10, rva algn_1800A4B2D, \
                                  rva stru_180142EEC>
                RUNTIME_FUNCTION <rva loc_1800A4B40, rva byte_1800A4B80, \
                                  rva stru_180142F30>
                RUNTIME_FUNCTION <rva loc_1800A4B86, rva byte_1800A4C58, \
                                  rva stru_180142FD0>
                RUNTIME_FUNCTION <rva loc_1800A4C5E, rva algn_1800A4C9A, \
                                  rva stru_180143000>
                RUNTIME_FUNCTION <rva loc_1800A4CA0, rva byte_1800A4D21, \
                                  rva stru_18014328C>
                RUNTIME_FUNCTION <rva loc_1800A4D27, rva byte_1800A4D7B, \
                                  rva stru_180143704>
                RUNTIME_FUNCTION <rva loc_1800A4D81, rva byte_1800A4DA6, \
                                  rva stru_180143A5C>
                RUNTIME_FUNCTION <rva loc_1800A4DAC, rva loc_1800A4DCC, \
                                  rva stru_180143BC4>
                RUNTIME_FUNCTION <rva loc_1800A4DCC, rva loc_1800A4DEA, \
                                  rva stru_180143BCC>
                RUNTIME_FUNCTION <rva loc_1800A4DEA, rva loc_1800A4E0A, \
                                  rva stru_180143BD4>
                RUNTIME_FUNCTION <rva loc_1800A4E0A, rva loc_1800A4E28, \
                                  rva stru_180143BDC>
                RUNTIME_FUNCTION <rva loc_1800A4E28, rva loc_1800A4E48, \
                                  rva stru_180143BE4>
                RUNTIME_FUNCTION <rva loc_1800A4E48, rva byte_1800A4EA0, \
                                  rva stru_180143BEC>
                RUNTIME_FUNCTION <rva loc_1800A4EA6, rva algn_1800A4EEE, \
                                  rva stru_180143D8C>
                RUNTIME_FUNCTION <rva loc_1800A4F00, rva algn_1800A4F4A, \
                                  rva stru_180143FB8>
                RUNTIME_FUNCTION <rva loc_1800A4F50, rva algn_1800A4FAC, \
                                  rva stru_180144074>
                RUNTIME_FUNCTION <rva loc_1800A4FC0, rva algn_1800A500A, \
                                  rva stru_180144738>
                RUNTIME_FUNCTION <rva loc_1800A5010, rva algn_1800A5056, \
                                  rva stru_1801447D4>
                RUNTIME_FUNCTION <rva loc_1800A5060, rva byte_1800A509C, \
                                  rva stru_180144A74>
                RUNTIME_FUNCTION <rva loc_1800A50B0, rva algn_1800A50CD, \
                                  rva stru_180144B20>
                RUNTIME_FUNCTION <rva loc_1800A50E0, rva byte_1800A50F9, \
                                  rva stru_180144B80>
                RUNTIME_FUNCTION <rva loc_1800A50FF, rva algn_1800A511A, \
                                  rva stru_180144D6C>
                RUNTIME_FUNCTION <rva loc_1800A5120, rva byte_1800A513B, \
                                  rva stru_180144DDC>
                RUNTIME_FUNCTION <rva loc_1800A5141, rva byte_1800A5168, \
                                  rva stru_180144F08>
                RUNTIME_FUNCTION <rva loc_1800A516E, rva byte_1800A5189, \
                                  rva stru_180145300>
                RUNTIME_FUNCTION <rva loc_1800A518F, rva algn_1800A51BA, \
                                  rva stru_180145370>
                RUNTIME_FUNCTION <rva loc_1800A51C0, rva byte_1800A51FD, \
                                  rva stru_180146398>
                RUNTIME_FUNCTION <rva loc_1800A5203, rva byte_1800A5224, \
                                  rva stru_180146400>
                RUNTIME_FUNCTION <rva loc_1800A522A, rva byte_1800A5247, \
                                  rva stru_1801468C8>
                RUNTIME_FUNCTION <rva loc_1800A524D, rva byte_1800A5271, \
                                  rva stru_180146910>
                RUNTIME_FUNCTION <rva loc_1800A5277, rva algn_1800A5294, \
                                  rva stru_180146960>
                RUNTIME_FUNCTION <rva loc_1800A52A0, rva byte_1800A52E0, \
                                  rva stru_180147058>
                RUNTIME_FUNCTION <rva loc_1800A52E6, rva byte_1800A531B, \
                                  rva stru_1801470F8>
                RUNTIME_FUNCTION <rva loc_1800A5321, rva byte_1800A534F, \
                                  rva stru_180147180>
                RUNTIME_FUNCTION <rva loc_1800A5355, rva loc_1800A536D, \
                                  rva stru_1801471F4>
                RUNTIME_FUNCTION <rva loc_1800A536D, rva byte_1800A5393, \
                                  rva stru_1801471FC>
                RUNTIME_FUNCTION <rva loc_1800A5399, rva byte_1800A53B1, \
                                  rva stru_180147244>
                RUNTIME_FUNCTION <rva loc_1800A53B7, rva byte_1800A53DD, \
                                  rva stru_1801474E4>
                RUNTIME_FUNCTION <rva loc_1800A53E3, rva byte_1800A5408, \
                                  rva stru_180147510>
                RUNTIME_FUNCTION <rva loc_1800A540E, rva byte_1800A54D5, \
                                  rva stru_18014764C>
                RUNTIME_FUNCTION <rva loc_1800A54DB, rva loc_1800A54F9, \
                                  rva stru_1801476A0>
                RUNTIME_FUNCTION <rva loc_1800A54F9, rva loc_1800A552B, \
                                  rva stru_1801476A8>
                RUNTIME_FUNCTION <rva loc_1800A552B, rva algn_1800A5547, \
                                  rva stru_1801476B0>
                RUNTIME_FUNCTION <rva loc_1800A5550, rva loc_1800A5571, \
                                  rva stru_1801477DC>
                RUNTIME_FUNCTION <rva loc_1800A5571, rva loc_1800A5592, \
                                  rva stru_1801477E4>
                RUNTIME_FUNCTION <rva loc_1800A5592, rva loc_1800A55B3, \
                                  rva stru_1801477EC>
                RUNTIME_FUNCTION <rva loc_1800A55B3, rva loc_1800A55D4, \
                                  rva stru_1801477F4>
                RUNTIME_FUNCTION <rva loc_1800A55D4, rva loc_1800A55F5, \
                                  rva stru_1801477FC>
                RUNTIME_FUNCTION <rva loc_1800A55F5, rva loc_1800A5616, \
                                  rva stru_180147804>
                RUNTIME_FUNCTION <rva loc_1800A5616, rva loc_1800A5637, \
                                  rva stru_18014780C>
                RUNTIME_FUNCTION <rva loc_1800A5637, rva loc_1800A5752, \
                                  rva stru_180147814>
                RUNTIME_FUNCTION <rva loc_1800A5752, rva loc_1800A5777, \
                                  rva stru_180147838>
                RUNTIME_FUNCTION <rva loc_1800A5777, rva loc_1800A5798, \
                                  rva stru_180147840>
                RUNTIME_FUNCTION <rva loc_1800A5798, rva loc_1800A5806, \
                                  rva stru_180147848>
                RUNTIME_FUNCTION <rva loc_1800A5806, rva byte_1800A5820, \
                                  rva stru_180147850>
                RUNTIME_FUNCTION <rva loc_1800A5826, rva loc_1800A5859, \
                                  rva stru_1801479D4>
                RUNTIME_FUNCTION <rva loc_1800A5859, rva loc_1800A5889, \
                                  rva stru_1801479DC>
                RUNTIME_FUNCTION <rva loc_1800A5889, rva loc_1800A58B9, \
                                  rva stru_1801479E4>
                RUNTIME_FUNCTION <rva loc_1800A58B9, rva loc_1800A58D8, \
                                  rva stru_1801479EC>
                RUNTIME_FUNCTION <rva loc_1800A58D8, rva algn_1800A58F2, \
                                  rva stru_1801479F4>
                RUNTIME_FUNCTION <rva loc_1800A58F8, rva byte_1800A5914, \
                                  rva stru_180147A44>
                RUNTIME_FUNCTION <rva loc_1800A591A, rva byte_1800A5930, \
                                  rva stru_180147A88>
                RUNTIME_FUNCTION <rva loc_1800A5936, rva byte_1800A5956, \
                                  rva stru_180147ABC>
                RUNTIME_FUNCTION <rva loc_1800A595C, rva byte_1800A597E, \
                                  rva stru_180147B70>
                RUNTIME_FUNCTION <rva loc_1800A5984, rva byte_1800A599F, \
                                  rva stru_180147B98>
                RUNTIME_FUNCTION <rva loc_1800A59A5, rva byte_1800A59CD, \
                                  rva stru_18014897C>
                RUNTIME_FUNCTION <rva loc_1800A59D3, rva loc_1800A59ED, \
                                  rva stru_1801489E0>
                RUNTIME_FUNCTION <rva loc_1800A59ED, rva algn_1800A5A0A, \
                                  rva stru_1801489E8>
                RUNTIME_FUNCTION <rva loc_1800A5A10, rva loc_1800A5A2E, \
                                  rva stru_180148A9C>
                RUNTIME_FUNCTION <rva loc_1800A5A2E, rva byte_1800A5A55, \
                                  rva stru_180148AA4>
                RUNTIME_FUNCTION <rva loc_1800A5A5B, rva byte_1800A5AEC, \
                                  rva stru_180148BC8>
                RUNTIME_FUNCTION <rva loc_1800A5AF2, rva byte_1800A5B29, \
                                  rva stru_180148FB0>
                RUNTIME_FUNCTION <rva loc_1800A5B2F, rva byte_1800A5B66, \
                                  rva stru_180148FF4>
                RUNTIME_FUNCTION <rva loc_1800A5B6C, rva byte_1800A5BA3, \
                                  rva stru_180149038>
                RUNTIME_FUNCTION <rva loc_1800A5BA9, rva byte_1800A5BE3, \
                                  rva stru_180149120>
                RUNTIME_FUNCTION <rva loc_1800A5BE9, rva loc_1800A5C06, \
                                  rva stru_180149238>
                RUNTIME_FUNCTION <rva loc_1800A5C06, rva loc_1800A5C45, \
                                  rva stru_180149240>
                RUNTIME_FUNCTION <rva loc_1800A5C45, rva byte_1800A5D30, \
                                  rva stru_18014924C>
                RUNTIME_FUNCTION <rva loc_1800A5D36, rva byte_1800A5D46, \
                                  rva stru_180149410>
                RUNTIME_FUNCTION <rva loc_1800A5D4C, rva byte_1800A5D67, \
                                  rva stru_180149CE4>
                RUNTIME_FUNCTION <rva loc_1800A5D6D, rva byte_1800A5D88, \
                                  rva stru_180149D40>
                RUNTIME_FUNCTION <rva loc_1800A5D8E, rva loc_1800A5DCA, \
                                  rva stru_180149D98>
                RUNTIME_FUNCTION <rva loc_1800A5DCA, rva byte_1800A5DE4, \
                                  rva stru_180149DA0>
                RUNTIME_FUNCTION <rva loc_1800A5DEA, rva byte_1800A5E7F, \
                                  rva stru_180149DE8>
                RUNTIME_FUNCTION <rva loc_1800A5E85, rva loc_1800A5EA2, \
                                  rva stru_180149FF8>
                RUNTIME_FUNCTION <rva loc_1800A5EA2, rva byte_1800A5EE1, \
                                  rva stru_18014A000>
                RUNTIME_FUNCTION <rva loc_1800A5EE7, rva algn_1800A5F02, \
                                  rva stru_18014A4C0>
                RUNTIME_FUNCTION <rva loc_1800A5F08, rva byte_1800A5F97, \
                                  rva stru_18014A508>
                RUNTIME_FUNCTION <rva loc_1800A5F9D, rva byte_1800A5FB8, \
                                  rva stru_18014A5B8>
                RUNTIME_FUNCTION <rva loc_1800A5FBE, rva byte_1800A5FD9, \
                                  rva stru_18014A9F8>
                RUNTIME_FUNCTION <rva loc_1800A5FDF, rva algn_1800A5FFA, \
                                  rva stru_18014AB0C>
                RUNTIME_FUNCTION <rva loc_1800A6000, rva algn_1800A6032, \
                                  rva stru_18014AB64>
                RUNTIME_FUNCTION <rva loc_1800A6038, rva byte_1800A605B, \
                                  rva stru_18014AC1C>
                RUNTIME_FUNCTION <rva loc_1800A6061, rva byte_1800A6077, \
                                  rva stru_18014AC8C>
                RUNTIME_FUNCTION <rva loc_1800A607D, rva byte_1800A609B, \
                                  rva stru_18014AD1C>
                RUNTIME_FUNCTION <rva loc_1800A60A1, rva loc_1800A60C8, \
                                  rva stru_18014AF08>
                RUNTIME_FUNCTION <rva loc_1800A60C8, rva algn_1800A611A, \
                                  rva stru_18014AF10>
                RUNTIME_FUNCTION <rva loc_1800A6120, rva byte_1800A613C, \
                                  rva stru_18014AF3C>
                RUNTIME_FUNCTION <rva loc_1800A6142, rva byte_1800A6184, \
                                  rva stru_18014AFC4>
                RUNTIME_FUNCTION <rva loc_1800A618A, rva loc_1800A619C, \
                                  rva stru_18014B018>
                RUNTIME_FUNCTION <rva loc_1800A619C, rva byte_1800A61AE, \
                                  rva stru_18014B020>
                RUNTIME_FUNCTION <rva loc_1800A61B4, rva byte_1800A61D1, \
                                  rva stru_18014B07C>
                RUNTIME_FUNCTION <rva loc_1800A61D7, rva byte_1800A61ED, \
                                  rva stru_18014B168>
                RUNTIME_FUNCTION <rva loc_1800A61F3, rva algn_1800A625A, \
                                  rva stru_18014B3E8>
                RUNTIME_FUNCTION <rva loc_1800A6260, rva byte_1800A627C, \
                                  rva stru_18014B41C>
                RUNTIME_FUNCTION <rva loc_1800A6282, rva byte_1800A62A8, \
                                  rva stru_18014B4CC>
                RUNTIME_FUNCTION <rva loc_1800A62AE, rva loc_1800A62DC, \
                                  rva stru_18014B608>
                RUNTIME_FUNCTION <rva loc_1800A62DC, rva byte_1800A6334, \
                                  rva stru_18014B610>
                RUNTIME_FUNCTION <rva loc_1800A633A, rva byte_1800A636B, \
                                  rva stru_18014BA0C>
                RUNTIME_FUNCTION <rva loc_1800A6371, rva byte_1800A6398, \
                                  rva stru_18014BC74>
                RUNTIME_FUNCTION <rva loc_1800A639E, rva byte_1800A63BB, \
                                  rva stru_18014BCB4>
                RUNTIME_FUNCTION <rva loc_1800A63C1, rva algn_1800A63F9, \
                                  rva stru_18014BD44>
                RUNTIME_FUNCTION <rva loc_1800A6400, rva byte_1800A641D, \
                                  rva stru_18014BDAC>
                RUNTIME_FUNCTION <rva loc_1800A6423, rva byte_1800A6440, \
                                  rva stru_18014BEC0>
                RUNTIME_FUNCTION <rva loc_1800A6446, rva byte_1800A6487, \
                                  rva stru_18014BFE8>
                RUNTIME_FUNCTION <rva loc_1800A648D, rva byte_1800A64B3, \
                                  rva stru_18014C0CC>
                RUNTIME_FUNCTION <rva loc_1800A64B9, rva loc_1800A64D7, \
                                  rva stru_18014C594>
                RUNTIME_FUNCTION <rva loc_1800A64D7, rva byte_1800A64F1, \
                                  rva stru_18014C59C>
                RUNTIME_FUNCTION <rva loc_1800A64F7, rva byte_1800A6511, \
                                  rva stru_18014C734>
                RUNTIME_FUNCTION <rva loc_1800A6517, rva loc_1800A6538, \
                                  rva stru_18014C7A4>
                RUNTIME_FUNCTION <rva loc_1800A6538, rva byte_1800A6559, \
                                  rva stru_18014C7AC>
                RUNTIME_FUNCTION <rva loc_1800A655F, rva byte_1800A657C, \
                                  rva stru_18014C7F8>
                RUNTIME_FUNCTION <rva loc_1800A6582, rva byte_1800A659F, \
                                  rva stru_18014C858>
                RUNTIME_FUNCTION <rva loc_1800A65A5, rva algn_1800A65C2, \
                                  rva stru_18014C948>
                RUNTIME_FUNCTION <rva loc_1800A65C8, rva byte_1800A6600, \
                                  rva stru_18014C9E0>
                RUNTIME_FUNCTION <rva loc_1800A6606, rva byte_1800A6627, \
                                  rva stru_18014CA34>
                RUNTIME_FUNCTION <rva loc_1800A662D, rva loc_1800A664B, \
                                  rva stru_18014CC00>
                RUNTIME_FUNCTION <rva loc_1800A664B, rva byte_1800A6668, \
                                  rva stru_18014CC08>
                RUNTIME_FUNCTION <rva loc_1800A666E, rva byte_1800A669E, \
                                  rva stru_18014CD20>
                RUNTIME_FUNCTION <rva loc_1800A66A4, rva byte_1800A66ED, \
                                  rva stru_18014D340>
                RUNTIME_FUNCTION <rva loc_1800A66F3, rva byte_1800A670E, \
                                  rva stru_18014D370>
                RUNTIME_FUNCTION <rva loc_1800A6714, rva loc_1800A6731, \
                                  rva stru_18014D608>
                RUNTIME_FUNCTION <rva loc_1800A6731, rva loc_1800A674E, \
                                  rva stru_18014D610>
                RUNTIME_FUNCTION <rva loc_1800A674E, rva loc_1800A676C, \
                                  rva stru_18014D618>
                RUNTIME_FUNCTION <rva loc_1800A676C, rva algn_1800A67C2, \
                                  rva stru_18014D620>
                RUNTIME_FUNCTION <rva loc_1800A67C8, rva byte_1800A67E5, \
                                  rva stru_18014D760>
                RUNTIME_FUNCTION <rva loc_1800A67EB, rva algn_1800A6817, \
                                  rva stru_18014E83C>
                RUNTIME_FUNCTION <rva loc_1800A6818, rva loc_1800A6874, \
                                  rva stru_180140CE8>
                RUNTIME_FUNCTION <rva loc_1800A6874, rva loc_1800A68AA, \
                                  rva stru_180141348>
                RUNTIME_FUNCTION <rva loc_1800A68AA, rva algn_1800A68CB, \
                                  rva stru_1801417FC>
                RUNTIME_FUNCTION <rva loc_1800A68CC, rva algn_1800A68F7, \
                                  rva stru_180141D80>
                RUNTIME_FUNCTION <rva loc_1800A68F8, rva loc_1800A6918, \
                                  rva stru_180142B28>
                RUNTIME_FUNCTION <rva loc_1800A6918, rva loc_1800A69A6, \
                                  rva stru_1801430E8>
                RUNTIME_FUNCTION <rva loc_1800A69A6, rva loc_1800A6A18, \
                                  rva stru_180143B18>
                RUNTIME_FUNCTION <rva loc_1800A6A18, rva algn_1800A6A23, \
                                  rva stru_180143B34>
                RUNTIME_FUNCTION <rva loc_1800A6A24, rva algn_1800A6A65, \
                                  rva stru_180143F88>
                RUNTIME_FUNCTION <rva loc_1800A6A66, rva algn_1800A7463, \
                                  rva stru_180144030>
                RUNTIME_FUNCTION <rva loc_1800A7464, rva algn_1800A74BF, \
                                  rva stru_180144528>
                RUNTIME_FUNCTION <rva loc_1800A74F2, rva loc_1800A750A, \
                                  rva stru_1801487E4>
                RUNTIME_FUNCTION <rva loc_1800A750A, rva algn_1800A7543, \
                                  rva stru_180149C48>
                RUNTIME_FUNCTION <rva loc_1800A7544, rva algn_1800A7563, \
                                  rva stru_18014A160>
                RUNTIME_FUNCTION <rva loc_1800A7564, rva algn_1800A7603, \
                                  rva stru_180140848>
                RUNTIME_FUNCTION <rva loc_1800A7604, rva loc_1800A7706, \
                                  rva stru_18014087C>
                RUNTIME_FUNCTION <rva loc_1800A7706, rva loc_1800A7724, \
                                  rva stru_180140914>
                RUNTIME_FUNCTION <rva loc_1800A7724, rva algn_1800A7901, \
                                  rva stru_180140944>
                RUNTIME_FUNCTION <rva loc_1800A7924, rva loc_1800A7932, \
                                  rva stru_180140964>
                RUNTIME_FUNCTION <rva loc_1800A7A16, rva loc_1800A7A3E, \
                                  rva stru_180140984>
                RUNTIME_FUNCTION <rva loc_1800A7A3E, rva algn_1800A7ABB, \
                                  rva stru_1801409D0>
                RUNTIME_FUNCTION <rva loc_1800A7ABC, rva loc_1800A7B74, \
                                  rva stru_180140A50>
                RUNTIME_FUNCTION <rva loc_1800A7B74, rva algn_1800A7B8B, \
                                  rva stru_180140A8C>
                RUNTIME_FUNCTION <rva loc_1800A7B8C, rva algn_1800A7BE3, \
                                  rva stru_180140ABC>
                RUNTIME_FUNCTION <rva loc_1800A7BE4, rva loc_1800A7C0A, \
                                  rva stru_180140AF4>
                RUNTIME_FUNCTION <rva loc_1800A7C0A, rva loc_1800A7C2C, \
                                  rva stru_180140B14>
                RUNTIME_FUNCTION <rva loc_1800A7C2C, rva algn_1800A7CCF, \
                                  rva stru_180140B60>
                RUNTIME_FUNCTION <rva loc_1800A7CD0, rva loc_1800A7D12, \
                                  rva stru_180140B88>
                RUNTIME_FUNCTION <rva loc_1800A7D12, rva loc_1800A7D22, \
                                  rva stru_180140BA8>
                RUNTIME_FUNCTION <rva loc_1800A7D22, rva algn_1800A7D67, \
                                  rva stru_180140BD0>
                RUNTIME_FUNCTION <rva loc_1800A7D68, rva algn_1800A7DD3, \
                                  rva stru_180140C08>
                RUNTIME_FUNCTION <rva loc_1800A7DD4, rva loc_1800A7EFE, \
                                  rva stru_180140C34>
                RUNTIME_FUNCTION <rva loc_1800A7EFE, rva algn_1800A7F45, \
                                  rva stru_180140C4C>
                RUNTIME_FUNCTION <rva loc_1800A7F46, rva loc_1800A7F6C, \
                                  rva stru_180140C78>
                RUNTIME_FUNCTION <rva loc_1800A7F6C, rva algn_1800A800B, \
                                  rva stru_180140CA0>
                RUNTIME_FUNCTION <rva loc_1800A800C, rva loc_1800A8448, \
                                  rva stru_180140CC8>
                RUNTIME_FUNCTION <rva loc_1800A8450, rva loc_1800A84C4, \
                                  rva stru_180140D30>
                RUNTIME_FUNCTION <rva loc_1800A84C4, rva loc_1800A84E2, \
                                  rva stru_180140D50>
                RUNTIME_FUNCTION <rva loc_1800A84E2, rva algn_1800A8585, \
                                  rva stru_180140D80>
                RUNTIME_FUNCTION <rva loc_1800A8586, rva algn_1800A8601, \
                                  rva stru_180140DB0>
                RUNTIME_FUNCTION <rva loc_1800A8602, rva algn_1800A8663, \
                                  rva stru_180140DEC>
                RUNTIME_FUNCTION <rva loc_1800A8664, rva algn_1800A872F, \
                                  rva stru_180140E10>
                RUNTIME_FUNCTION <rva loc_1800A8730, rva algn_1800A87A3, \
                                  rva stru_180140E50>
                RUNTIME_FUNCTION <rva loc_1800A87A4, rva loc_1800A8824, \
                                  rva stru_180140E78>
                RUNTIME_FUNCTION <rva loc_1800A8824, rva algn_1800A88A5, \
                                  rva stru_180140EB4>
                RUNTIME_FUNCTION <rva loc_1800A88A6, rva loc_1800A88DC, \
                                  rva stru_180140EDC>
                RUNTIME_FUNCTION <rva loc_1800A88DC, rva loc_1800A88E6, \
                                  rva stru_180140F1C>
                RUNTIME_FUNCTION <rva loc_1800A88E6, rva loc_1800A8910, \
                                  rva stru_180140F38>
                RUNTIME_FUNCTION <rva loc_1800A8910, rva algn_1800A8941, \
                                  rva stru_180140F60>
                RUNTIME_FUNCTION <rva loc_1800A8942, rva loc_1800A89A4, \
                                  rva stru_180140F88>
                RUNTIME_FUNCTION <rva loc_1800A89A4, rva algn_1800A8A39, \
                                  rva stru_180140FA8>
                RUNTIME_FUNCTION <rva loc_1800A8A3A, rva algn_1800A8A6F, \
                                  rva stru_180140FD0>
                RUNTIME_FUNCTION <rva loc_1800A8A70, rva algn_1800A8A8F, \
                                  rva stru_180140FEC>
                RUNTIME_FUNCTION <rva loc_1800A8A90, rva loc_1800A8AD4, \
                                  rva stru_180141018>
                RUNTIME_FUNCTION <rva loc_1800A8AD4, rva loc_1800A8B84, \
                                  rva stru_180141044>
                RUNTIME_FUNCTION <rva loc_1800A8B84, rva loc_1800A8BB0, \
                                  rva stru_180141068>
                RUNTIME_FUNCTION <rva loc_1800A8BB0, rva algn_1800A8C3D, \
                                  rva stru_180141090>
                RUNTIME_FUNCTION <rva loc_1800A8C3E, rva algn_1800A8C63, \
                                  rva stru_1801410C0>
                RUNTIME_FUNCTION <rva loc_1800A8C64, rva loc_1800A8D5E, \
                                  rva stru_1801410E8>
                RUNTIME_FUNCTION <rva loc_1800A8D5E, rva loc_1800A8D8A, \
                                  rva stru_180141108>
                RUNTIME_FUNCTION <rva loc_1800A8D8A, rva algn_1800A8DAF, \
                                  rva stru_180141128>
                RUNTIME_FUNCTION <rva loc_1800A8DB0, rva loc_1800A8DF6, \
                                  rva stru_180141154>
                RUNTIME_FUNCTION <rva loc_1800A8DF6, rva algn_1800A8E09, \
                                  rva stru_180141174>
                RUNTIME_FUNCTION <rva loc_1800A8E0A, rva loc_1800A8E76, \
                                  rva stru_1801411A0>
                RUNTIME_FUNCTION <rva loc_1800A8E76, rva algn_1800A8EE5, \
                                  rva stru_1801411C0>
                RUNTIME_FUNCTION <rva loc_1800A8EE6, rva algn_1800A8EFD, \
                                  rva stru_1801411DC>
                RUNTIME_FUNCTION <rva loc_1800A8EFE, rva loc_1800A8F1C, \
                                  rva stru_18014121C>
                RUNTIME_FUNCTION <rva loc_1800A8F1C, rva loc_1800A8F32, \
                                  rva stru_18014123C>
                RUNTIME_FUNCTION <rva loc_1800A8F32, rva algn_1800A8F45, \
                                  rva stru_180141284>
                RUNTIME_FUNCTION <rva loc_1800A8F46, rva loc_1800A8F78, \
                                  rva stru_18014129C>
                RUNTIME_FUNCTION <rva loc_1800A8F8A, rva algn_1800A8FDB, \
                                  rva stru_1801412C4>
                RUNTIME_FUNCTION <rva loc_1800A8FDC, rva algn_1800A90ED, \
                                  rva stru_1801412EC>
                RUNTIME_FUNCTION <rva loc_1800A90EE, rva algn_1800A914F, \
                                  rva stru_180141308>
                RUNTIME_FUNCTION <rva loc_1800A9150, rva algn_1800A915D, \
                                  rva stru_180141368>
                RUNTIME_FUNCTION <rva loc_1800A915E, rva loc_1800A91FC, \
                                  rva stru_18014138C>
                RUNTIME_FUNCTION <rva loc_1800A91FC, rva loc_1800A9234, \
                                  rva stru_1801413AC>
                RUNTIME_FUNCTION <rva loc_1800A9234, rva loc_1800A92B4, \
                                  rva stru_1801413E8>
                RUNTIME_FUNCTION <rva loc_1800A92B4, rva loc_1800A92CA, \
                                  rva stru_18014140C>
                RUNTIME_FUNCTION <rva loc_1800A92CA, rva algn_1800A93B3, \
                                  rva stru_180141438>
                RUNTIME_FUNCTION <rva loc_1800A93B4, rva loc_1800A93BE, \
                                  rva stru_180141464>
                RUNTIME_FUNCTION <rva loc_1800A93BE, rva algn_1800A93E5, \
                                  rva stru_1801414B0>
                RUNTIME_FUNCTION <rva loc_1800A93E6, rva loc_1800A9404, \
                                  rva stru_1801414DC>
                RUNTIME_FUNCTION <rva loc_1800A9404, rva loc_1800A940E, \
                                  rva stru_180141500>
                RUNTIME_FUNCTION <rva loc_1800A940E, rva loc_1800A949E, \
                                  rva stru_180141534>
                RUNTIME_FUNCTION <rva loc_1800A949E, rva loc_1800A94BE, \
                                  rva stru_180141558>
                RUNTIME_FUNCTION <rva loc_1800A94BE, rva algn_1800A94C5, \
                                  rva stru_180141570>
                RUNTIME_FUNCTION <rva loc_1800A94C6, rva algn_1800A94E3, \
                                  rva stru_180141594>
                RUNTIME_FUNCTION <rva loc_1800A94E4, rva algn_1800A9513, \
                                  rva stru_1801415AC>
                RUNTIME_FUNCTION <rva loc_1800A9514, rva algn_1800A9737, \
                                  rva stru_1801415E0>
                RUNTIME_FUNCTION <rva loc_1800A9738, rva algn_1800A9787, \
                                  rva stru_1801415FC>
                RUNTIME_FUNCTION <rva loc_1800A9788, rva loc_1800A979E, \
                                  rva stru_180141620>
                RUNTIME_FUNCTION <rva loc_1800A979E, rva algn_1800A97C9, \
                                  rva stru_180141644>
                RUNTIME_FUNCTION <rva loc_1800A97CA, rva loc_1800A97DE, \
                                  rva stru_18014168C>
                RUNTIME_FUNCTION <rva loc_1800A97DE, rva loc_1800A9818, \
                                  rva stru_1801416EC>
                RUNTIME_FUNCTION <rva loc_1800A9818, rva loc_1800A9843, \
                                  rva stru_18014175C>
                RUNTIME_FUNCTION <rva loc_1800A9843, rva loc_1800A98BA, \
                                  rva stru_18014176C>
                RUNTIME_FUNCTION <rva loc_1800A98BA, rva loc_1800A996C, \
                                  rva stru_180141788>
                RUNTIME_FUNCTION <rva loc_1800A996C, rva loc_1800A998A, \
                                  rva stru_1801417AC>
                RUNTIME_FUNCTION <rva loc_1800A998A, rva loc_1800A9A14, \
                                  rva stru_1801417D4>
                RUNTIME_FUNCTION <rva loc_1800A9A14, rva algn_1800A9E81, \
                                  rva stru_18014183C>
                RUNTIME_FUNCTION <rva loc_1800A9E82, rva loc_1800A9E8C, \
                                  rva stru_180141888>
                RUNTIME_FUNCTION <rva loc_1800A9E8C, rva loc_1800A9F08, \
                                  rva stru_1801418E8>
                RUNTIME_FUNCTION <rva loc_1800A9F08, rva loc_1800AA020, \
                                  rva stru_180141920>
                RUNTIME_FUNCTION <rva loc_1800AA020, rva algn_1800AA033, \
                                  rva stru_18014193C>
                RUNTIME_FUNCTION <rva loc_1800AA034, rva loc_1800AA044, \
                                  rva stru_18014195C>
                RUNTIME_FUNCTION <rva loc_1800AA044, rva algn_1800AA08D, \
                                  rva stru_1801419AC>
                RUNTIME_FUNCTION <rva loc_1800AA0A0, rva loc_1800AA13C, \
                                  rva stru_1801419E4>
                RUNTIME_FUNCTION <rva loc_1800AA13C, rva algn_1800AA147, \
                                  rva stru_180141A54>
                RUNTIME_FUNCTION <rva loc_1800AA148, rva algn_1800AA2A3, \
                                  rva stru_180141A7C>
                RUNTIME_FUNCTION <rva loc_1800AA2A4, rva algn_1800AA41D, \
                                  rva stru_180141AA4>
                RUNTIME_FUNCTION <rva loc_1800AA436, rva algn_1800AA4D9, \
                                  rva stru_180141AD8>
                RUNTIME_FUNCTION <rva loc_1800AA4DA, rva loc_1800AA4E4, \
                                  rva stru_180141B00>
                RUNTIME_FUNCTION <rva loc_1800AA4E4, rva algn_1800AA663, \
                                  rva stru_180141B2C>
                RUNTIME_FUNCTION <rva loc_1800AA664, rva algn_1800AA6B3, \
                                  rva stru_180141B54>
                RUNTIME_FUNCTION <rva loc_1800AA6B4, rva loc_1800AA75C, \
                                  rva stru_180141B80>
                RUNTIME_FUNCTION <rva loc_1800AA75C, rva algn_1800AA81B, \
                                  rva stru_180141BB0>
                RUNTIME_FUNCTION <rva loc_1800AA81C, rva loc_1800AA8D8, \
                                  rva stru_180141BDC>
                RUNTIME_FUNCTION <rva loc_1800AA8D8, rva loc_1800AA90E, \
                                  rva stru_180141C04>
                RUNTIME_FUNCTION <rva loc_1800AA90E, rva loc_1800AA96A, \
                                  rva stru_180141C30>
                RUNTIME_FUNCTION <rva loc_1800AA96A, rva algn_1800AA987, \
                                  rva stru_180141C54>
                RUNTIME_FUNCTION <rva loc_1800AA988, rva algn_1800AAA27, \
                                  rva stru_180141C78>
                RUNTIME_FUNCTION <rva loc_1800AAA28, rva loc_1800AAC2A, \
                                  rva stru_180141C9C>
                RUNTIME_FUNCTION <rva loc_1800AAC2A, rva algn_1800AADDB, \
                                  rva stru_180141CC4>
                RUNTIME_FUNCTION <rva loc_1800AADDC, rva loc_1800AAE40, \
                                  rva stru_180141CEC>
                RUNTIME_FUNCTION <rva loc_1800AAE40, rva algn_1800AAE7D, \
                                  rva stru_180141D08>
                RUNTIME_FUNCTION <rva loc_1800AAE7E, rva algn_1800AAEEF, \
                                  rva stru_180141D24>
                RUNTIME_FUNCTION <rva loc_1800AAEF0, rva algn_1800AAF2D, \
                                  rva stru_180141D40>
                RUNTIME_FUNCTION <rva loc_1800AAF2E, rva algn_1800AB119, \
                                  rva stru_180141D64>
                RUNTIME_FUNCTION <rva loc_1800AB11A, rva algn_1800AB12D, \
                                  rva stru_180141D9C>
                RUNTIME_FUNCTION <rva loc_1800AB12E, rva algn_1800AB13D, \
                                  rva stru_180141DC4>
                RUNTIME_FUNCTION <rva loc_1800AB13E, rva algn_1800AB18B, \
                                  rva stru_180141E28>
                RUNTIME_FUNCTION <rva loc_1800AB18C, rva algn_1800AB193, \
                                  rva stru_180141E48>
                RUNTIME_FUNCTION <rva loc_1800AB194, rva loc_1800AB1BC, \
                                  rva stru_180141EA8>
                RUNTIME_FUNCTION <rva loc_1800AB1BC, rva loc_1800AB1FA, \
                                  rva stru_180141EE8>
                RUNTIME_FUNCTION <rva loc_1800AB1FA, rva algn_1800AB21F, \
                                  rva stru_180141F10>
                RUNTIME_FUNCTION <rva loc_1800AB220, rva loc_1800AB22E, \
                                  rva stru_180141F54>
                RUNTIME_FUNCTION <rva loc_1800AB22E, rva loc_1800AB27C, \
                                  rva stru_180141F94>
                RUNTIME_FUNCTION <rva loc_1800AB27C, rva algn_1800AB295, \
                                  rva stru_180141FC4>
                RUNTIME_FUNCTION <rva loc_1800AB296, rva algn_1800AB2A7, \
                                  rva stru_180141FE8>
                RUNTIME_FUNCTION <rva loc_1800AB2A8, rva algn_1800AB2F7, \
                                  rva stru_180142050>
                RUNTIME_FUNCTION <rva loc_1800AB2F8, rva loc_1800AB30E, \
                                  rva stru_18014208C>
                RUNTIME_FUNCTION <rva loc_1800AB30E, rva algn_1800AB3C7, \
                                  rva stru_1801420B0>
                RUNTIME_FUNCTION <rva loc_1800AB3C8, rva algn_1800AB419, \
                                  rva stru_1801420F0>
                RUNTIME_FUNCTION <rva loc_1800AB446, rva loc_1800AB45C, \
                                  rva stru_180142120>
                RUNTIME_FUNCTION <rva loc_1800AB45C, rva loc_1800AB467, \
                                  rva stru_180142194>
                RUNTIME_FUNCTION <rva loc_1800AB467, rva loc_1800AB46C, \
                                  rva stru_1801421A4>
                RUNTIME_FUNCTION <rva loc_1800AB46C, rva loc_1800ABCA4, \
                                  rva stru_1801421C4>
                RUNTIME_FUNCTION <rva loc_1800ABCA4, rva loc_1800ABCAF, \
                                  rva stru_1801421D8>
                RUNTIME_FUNCTION <rva loc_1800ABCAF, rva algn_1800ABCD9, \
                                  rva stru_1801421EC>
                RUNTIME_FUNCTION <rva loc_1800ABCDA, rva loc_1800ABDB0, \
                                  rva stru_180142234>
                RUNTIME_FUNCTION <rva loc_1800ABDB0, rva loc_1800ABDBC, \
                                  rva stru_1801422D8>
                RUNTIME_FUNCTION <rva loc_1800ABDBC, rva loc_1800ABDC1, \
                                  rva stru_1801422E8>
                RUNTIME_FUNCTION <rva loc_1800ABDC1, rva loc_1800AC5DC, \
                                  rva stru_18014230C>
                RUNTIME_FUNCTION <rva loc_1800AC5DC, rva algn_1800AC5E7, \
                                  rva stru_180142320>
                RUNTIME_FUNCTION <rva loc_1800AC5E8, rva algn_1800AC621, \
                                  rva stru_180142344>
                RUNTIME_FUNCTION <rva loc_1800AC622, rva loc_1800AC6F8, \
                                  rva stru_180142378>
                RUNTIME_FUNCTION <rva loc_1800AC6F8, rva algn_1800AC731, \
                                  rva stru_1801423A0>
                RUNTIME_FUNCTION <rva loc_1800AC732, rva loc_1800AC756, \
                                  rva stru_1801423B8>
                RUNTIME_FUNCTION <rva loc_1800AC756, rva algn_1800AC7C3, \
                                  rva stru_180142404>
                RUNTIME_FUNCTION <rva loc_1800AC7C4, rva algn_1800AC7D7, \
                                  rva stru_180142430>
                RUNTIME_FUNCTION <rva loc_1800AC7D8, rva loc_1800AC7E6, \
                                  rva stru_180142464>
                RUNTIME_FUNCTION <rva loc_1800AC7E6, rva loc_1800AC80C, \
                                  rva stru_180142498>
                RUNTIME_FUNCTION <rva loc_1800AC80C, rva loc_1800AC83E, \
                                  rva stru_180142504>
                RUNTIME_FUNCTION <rva loc_1800AC83E, rva loc_1800AC854, \
                                  rva stru_180142550>
                RUNTIME_FUNCTION <rva loc_1800AC854, rva loc_1800AC874, \
                                  rva stru_18014256C>
                RUNTIME_FUNCTION <rva loc_1800AC874, rva loc_1800AC898, \
                                  rva stru_180142584>
                RUNTIME_FUNCTION <rva loc_1800AC8CA, rva algn_1800AC915, \
                                  rva stru_1801425A0>
                RUNTIME_FUNCTION <rva loc_1800AC916, rva algn_1800AC93D, \
                                  rva stru_1801425C4>
                RUNTIME_FUNCTION <rva loc_1800AC93E, rva loc_1800AC9BC, \
                                  rva stru_1801425EC>
                RUNTIME_FUNCTION <rva loc_1800AC9E0, rva loc_1800AC9F6, \
                                  rva stru_18014264C>
                RUNTIME_FUNCTION <rva loc_1800ACA04, rva algn_1800ACA0B, \
                                  rva stru_180142664>
                RUNTIME_FUNCTION <rva loc_1800ACA0C, rva algn_1800ACA3B, \
                                  rva stru_180142680>
                RUNTIME_FUNCTION <rva loc_1800ACA3C, rva loc_1800ACA58, \
                                  rva stru_1801426A4>
                RUNTIME_FUNCTION <rva loc_1800ACA58, rva algn_1800ACA75, \
                                  rva stru_1801426EC>
                RUNTIME_FUNCTION <rva loc_1800ACA76, rva loc_1800ACABC, \
                                  rva stru_180142724>
                RUNTIME_FUNCTION <rva loc_1800ACABC, rva loc_1800ACB16, \
                                  rva stru_18014274C>
                RUNTIME_FUNCTION <rva loc_1800ACB16, rva loc_1800ACB68, \
                                  rva stru_180142768>
                RUNTIME_FUNCTION <rva loc_1800ACB68, rva loc_1800ACB74, \
                                  rva stru_1801427BC>
                RUNTIME_FUNCTION <rva loc_1800ACB74, rva algn_1800ACBFB, \
                                  rva stru_1801427F0>
                RUNTIME_FUNCTION <rva loc_1800ACBFC, rva algn_1800ACC3F, \
                                  rva stru_180142810>
                RUNTIME_FUNCTION <rva loc_1800ACC40, rva algn_1800ACC85, \
                                  rva stru_18014284C>
                RUNTIME_FUNCTION <rva loc_1800ACC86, rva algn_1800ACE43, \
                                  rva stru_180142874>
                RUNTIME_FUNCTION <rva loc_1800ACE44, rva loc_1800ACF1A, \
                                  rva stru_18014289C>
                RUNTIME_FUNCTION <rva loc_1800ACF1A, rva algn_1800ACF97, \
                                  rva stru_1801428C0>
                RUNTIME_FUNCTION <rva loc_1800ACF98, rva algn_1800AD05D, \
                                  rva stru_1801428E8>
                RUNTIME_FUNCTION <rva loc_1800AD05E, rva algn_1800AD123, \
                                  rva stru_180142908>
                RUNTIME_FUNCTION <rva loc_1800AD124, rva algn_1800AD183, \
                                  rva stru_180142928>
                RUNTIME_FUNCTION <rva loc_1800AD184, rva algn_1800AD1FB, \
                                  rva stru_180142950>
                RUNTIME_FUNCTION <rva loc_1800AD1FC, rva loc_1800AD206, \
                                  rva stru_180142968>
                RUNTIME_FUNCTION <rva loc_1800AD206, rva loc_1800AD2C8, \
                                  rva stru_1801429A0>
                RUNTIME_FUNCTION <rva loc_1800AD2C8, rva loc_1800AD2D2, \
                                  rva stru_180142A98>
                RUNTIME_FUNCTION <rva loc_1800AD2D2, rva loc_1800AD2DC, \
                                  rva stru_180142AE0>
                RUNTIME_FUNCTION <rva loc_1800AD2DC, rva algn_1800AD3E3, \
                                  rva stru_180142B54>
                RUNTIME_FUNCTION <rva loc_1800AD3E4, rva algn_1800AD43B, \
                                  rva stru_180142B94>
                RUNTIME_FUNCTION <rva loc_1800AD43C, rva loc_1800AD656, \
                                  rva stru_180142BD8>
                RUNTIME_FUNCTION <rva loc_1800AD656, rva loc_1800AD668, \
                                  rva stru_180142C04>
                RUNTIME_FUNCTION <rva loc_1800AD668, rva loc_1800AD708, \
                                  rva stru_180142C48>
                RUNTIME_FUNCTION <rva loc_1800AD708, rva loc_1800AD75A, \
                                  rva stru_180142C68>
                RUNTIME_FUNCTION <rva loc_1800AD75A, rva loc_1800AD81A, \
                                  rva stru_180142C94>
                RUNTIME_FUNCTION <rva loc_1800AD81A, rva algn_1800AD833, \
                                  rva stru_180142CAC>
                RUNTIME_FUNCTION <rva loc_1800AD834, rva loc_1800AD894, \
                                  rva stru_180142CFC>
                RUNTIME_FUNCTION <rva loc_1800AD894, rva loc_1800AD8A8, \
                                  rva stru_180142D38>
                RUNTIME_FUNCTION <rva loc_1800AD8A8, rva algn_1800AD8CF, \
                                  rva stru_180142D60>
                RUNTIME_FUNCTION <rva loc_1800AD8D0, rva algn_1800AD8FB, \
                                  rva stru_180142DE0>
                RUNTIME_FUNCTION <rva loc_1800AD8FC, rva loc_1800AD97C, \
                                  rva stru_180142E58>
                RUNTIME_FUNCTION <rva loc_1800AD97C, rva loc_1800AD99A, \
                                  rva stru_180142E98>
                RUNTIME_FUNCTION <rva loc_1800AD99A, rva algn_1800ADB51, \
                                  rva stru_180142EDC>
                RUNTIME_FUNCTION <rva loc_1800ADB52, rva loc_1800ADBCC, \
                                  rva stru_180142F20>
                RUNTIME_FUNCTION <rva loc_1800ADBCC, rva loc_1800ADD5C, \
                                  rva stru_180142F64>
                RUNTIME_FUNCTION <rva loc_1800ADD5C, rva loc_1800ADDAA, \
                                  rva stru_180142F84>
                RUNTIME_FUNCTION <rva loc_1800ADDAA, rva loc_1800ADEB4, \
                                  rva stru_180142FC0>
                RUNTIME_FUNCTION <rva loc_1800ADEB4, rva loc_1800ADFF2, \
                                  rva stru_180143048>
                RUNTIME_FUNCTION <rva loc_1800ADFF2, rva loc_1800AE018, \
                                  rva stru_180143084>
                RUNTIME_FUNCTION <rva loc_1800AE018, rva algn_1800AE0B3, \
                                  rva stru_1801430AC>
                RUNTIME_FUNCTION <rva loc_1800AE0B4, rva algn_1800AE129, \
                                  rva stru_180143124>
                RUNTIME_FUNCTION <rva loc_1800AE12A, rva algn_1800AE21F, \
                                  rva stru_180143168>
                RUNTIME_FUNCTION <rva loc_1800AE220, rva loc_1800AE320, \
                                  rva stru_180143228>
                RUNTIME_FUNCTION <rva loc_1800AE320, rva algn_1800AE379, \
                                  rva stru_18014327C>
                RUNTIME_FUNCTION <rva loc_1800AE37A, rva algn_1800AE38B, \
                                  rva stru_1801432A8>
                RUNTIME_FUNCTION <rva loc_1800AE3AA, rva loc_1800AE690, \
                                  rva stru_1801432DC>
                RUNTIME_FUNCTION <rva loc_1800AE690, rva loc_1800AE72E, \
                                  rva stru_180143308>
                RUNTIME_FUNCTION <rva loc_1800AE72E, rva loc_1800AE858, \
                                  rva stru_18014333C>
                RUNTIME_FUNCTION <rva loc_1800AE858, rva loc_1800AE884, \
                                  rva stru_180143394>
                RUNTIME_FUNCTION <rva loc_1800AE884, rva loc_1800AE88E, \
                                  rva stru_1801433AC>
                RUNTIME_FUNCTION <rva loc_1800AE88E, rva loc_1800AE8B4, \
                                  rva stru_1801433D8>
                RUNTIME_FUNCTION <rva loc_1800AE8B4, rva loc_1800AE8BE, \
                                  rva stru_180143404>
                RUNTIME_FUNCTION <rva loc_1800AE8BE, rva loc_1800AEA20, \
                                  rva stru_180143430>
                RUNTIME_FUNCTION <rva loc_1800AEA20, rva loc_1800AEA50, \
                                  rva stru_180143448>
                RUNTIME_FUNCTION <rva loc_1800AEA50, rva algn_1800AEC1B, \
                                  rva stru_180143484>
                RUNTIME_FUNCTION <rva loc_1800AEC1C, rva loc_1800AECB8, \
                                  rva stru_1801434B4>
                RUNTIME_FUNCTION <rva loc_1800AECB8, rva loc_1800AED72, \
                                  rva stru_1801434F0>
                RUNTIME_FUNCTION <rva loc_1800AED72, rva algn_1800AEDEB, \
                                  rva stru_18014351C>
                RUNTIME_FUNCTION <rva loc_1800AEDEC, rva algn_1800AEE5F, \
                                  rva stru_18014354C>
                RUNTIME_FUNCTION <rva loc_1800AEE60, rva loc_1800AF246, \
                                  rva stru_180143578>
                RUNTIME_FUNCTION <rva loc_1800AF246, rva algn_1800AF79B, \
                                  rva stru_1801435A4>
                RUNTIME_FUNCTION <rva loc_1800AF79C, rva algn_1800AF8FF, \
                                  rva stru_1801435D0>
                RUNTIME_FUNCTION <rva loc_1800AF900, rva algn_1800AF95D, \
                                  rva stru_1801435F8>
                RUNTIME_FUNCTION <rva loc_1800AF95E, rva algn_1800AFCCD, \
                                  rva stru_180143624>
                RUNTIME_FUNCTION <rva loc_1800AFCCE, rva loc_1800AFCE0, \
                                  rva stru_180143648>
                RUNTIME_FUNCTION <rva loc_1800AFCE0, rva algn_1800AFD3B, \
                                  rva stru_180143670>
                RUNTIME_FUNCTION <rva loc_1800AFD3C, rva algn_1800AFD65, \
                                  rva stru_18014368C>
                RUNTIME_FUNCTION <rva loc_1800AFD66, rva algn_1800AFF31, \
                                  rva stru_1801436B4>
                RUNTIME_FUNCTION <rva loc_1800AFF32, rva algn_1800AFF9D, \
                                  rva stru_1801436F4>
                RUNTIME_FUNCTION <rva loc_1800AFF9E, rva algn_1800AFFDD, \
                                  rva stru_180143720>
                RUNTIME_FUNCTION <rva loc_1800AFFDE, rva algn_1800AFFE5, \
                                  rva stru_18014374C>
                RUNTIME_FUNCTION <rva loc_1800AFFE6, rva loc_1800B007E, \
                                  rva stru_180143778>
                RUNTIME_FUNCTION <rva loc_1800B007E, rva loc_1800B00A7, \
                                  rva stru_180143844>
                RUNTIME_FUNCTION <rva loc_1800B00A7, rva loc_1800B0117, \
                                  rva stru_180143854>
                RUNTIME_FUNCTION <rva loc_1800B0117, rva loc_1800B01B6, \
                                  rva stru_180143874>
                RUNTIME_FUNCTION <rva loc_1800B01B6, rva loc_1800B0234, \
                                  rva stru_1801438A4>
                RUNTIME_FUNCTION <rva loc_1800B0234, rva loc_1800B024A, \
                                  rva stru_1801438E0>
                RUNTIME_FUNCTION <rva loc_1800B024A, rva algn_1800B0431, \
                                  rva stru_180143904>
                RUNTIME_FUNCTION <rva loc_1800B0432, rva loc_1800B047C, \
                                  rva stru_180143930>
                RUNTIME_FUNCTION <rva loc_1800B047C, rva loc_1800B0486, \
                                  rva stru_1801439AC>
                RUNTIME_FUNCTION <rva loc_1800B0486, rva loc_1800B0524, \
                                  rva stru_1801439BC>
                RUNTIME_FUNCTION <rva loc_1800B0524, rva loc_1800B05A6, \
                                  rva stru_1801439E0>
                RUNTIME_FUNCTION <rva loc_1800B05A6, rva algn_1800B06A9, \
                                  rva stru_180143A0C>
                RUNTIME_FUNCTION <rva loc_1800B06AA, rva algn_1800B0783, \
                                  rva stru_180143A4C>
                RUNTIME_FUNCTION <rva loc_1800B0784, rva loc_1800B08BE, \
                                  rva stru_180143A7C>
                RUNTIME_FUNCTION <rva loc_1800B08BE, rva algn_1800B08CD, \
                                  rva stru_180143AA8>
                RUNTIME_FUNCTION <rva loc_1800B08CE, rva loc_1800B09AA, \
                                  rva stru_180143AD4>
                RUNTIME_FUNCTION <rva loc_1800B09E2, rva algn_1800B09EF, \
                                  rva stru_180143C00>
                RUNTIME_FUNCTION <rva loc_1800B09F0, rva algn_1800B0A59, \
                                  rva stru_180143C2C>
                RUNTIME_FUNCTION <rva loc_1800B0A5A, rva algn_1800B0AD5, \
                                  rva stru_180143C58>
                RUNTIME_FUNCTION <rva loc_1800B0AD6, rva loc_1800B0C5E, \
                                  rva stru_180143C80>
                RUNTIME_FUNCTION <rva loc_1800B0C5E, rva loc_1800B0C96, \
                                  rva stru_180143CA4>
                RUNTIME_FUNCTION <rva loc_1800B0C96, rva loc_1800B0CA6, \
                                  rva stru_180143D08>
                RUNTIME_FUNCTION <rva loc_1800B0CA6, rva loc_1800B0D4A, \
                                  rva stru_180143D18>
                RUNTIME_FUNCTION <rva loc_1800B0D4A, rva algn_1800B0DED, \
                                  rva stru_180143D38>
                RUNTIME_FUNCTION <rva loc_1800B0DEE, rva algn_1800B0E21, \
                                  rva stru_180143D5C>
                RUNTIME_FUNCTION <rva loc_1800B0E22, rva loc_1800B1450, \
                                  rva stru_180143DB4>
                RUNTIME_FUNCTION <rva loc_1800B1450, rva loc_1800B1482, \
                                  rva stru_180143E18>
                RUNTIME_FUNCTION <rva loc_1800B1482, rva algn_1800B167B, \
                                  rva stru_180143E28>
                RUNTIME_FUNCTION <rva loc_1800B167C, rva loc_1800B1699, \
                                  rva stru_180143E78>
                RUNTIME_FUNCTION <rva loc_1800B1699, rva loc_1800B16D3, \
                                  rva stru_180143E88>
                RUNTIME_FUNCTION <rva loc_1800B16D3, rva loc_1800B175E, \
                                  rva stru_180143E9C>
                RUNTIME_FUNCTION <rva loc_1800B175E, rva loc_1800B1787, \
                                  rva stru_180143F2C>
                RUNTIME_FUNCTION <rva loc_1800B1787, rva loc_1800B179F, \
                                  rva stru_180143F3C>
                RUNTIME_FUNCTION <rva loc_1800B179F, rva algn_1800B17CB, \
                                  rva stru_180143F50>
                RUNTIME_FUNCTION <rva loc_1800B17CC, rva algn_1800B1813, \
                                  rva stru_180143F70>
                RUNTIME_FUNCTION <rva loc_1800B1814, rva loc_1800B1A28, \
                                  rva stru_180143FD8>
                RUNTIME_FUNCTION <rva loc_1800B1A28, rva algn_1800B1B09, \
                                  rva stru_180144000>
                RUNTIME_FUNCTION <rva loc_1800B1B0A, rva loc_1800B1B1A, \
                                  rva stru_180144148>
                RUNTIME_FUNCTION <rva loc_1800B1B1A, rva loc_1800B1B58, \
                                  rva stru_180144158>
                RUNTIME_FUNCTION <rva loc_1800B1B58, rva loc_1800B1B7F, \
                                  rva stru_18014416C>
                RUNTIME_FUNCTION <rva loc_1800B1B7F, rva algn_1800B1CC5, \
                                  rva stru_180144184>
                RUNTIME_FUNCTION <rva loc_1800B1CC6, rva loc_1800B1D30, \
                                  rva stru_1801441B4>
                RUNTIME_FUNCTION <rva loc_1800B1D30, rva loc_1800B1D3D, \
                                  rva stru_180144288>
                RUNTIME_FUNCTION <rva loc_1800B1D3D, rva loc_1800B1DA3, \
                                  rva stru_180144298>
                RUNTIME_FUNCTION <rva loc_1800B1DA3, rva loc_1800B1DB5, \
                                  rva stru_1801442AC>
                RUNTIME_FUNCTION <rva loc_1800B1DB5, rva loc_1800B1EE2, \
                                  rva stru_1801442C8>
                RUNTIME_FUNCTION <rva loc_1800B1EE2, rva loc_1800B1F2C, \
                                  rva stru_180144380>
                RUNTIME_FUNCTION <rva loc_1800B1F2C, rva loc_1800B1F81, \
                                  rva stru_180144390>
                RUNTIME_FUNCTION <rva loc_1800B1F81, rva loc_1800B20B8, \
                                  rva stru_1801443AC>
                RUNTIME_FUNCTION <rva loc_1800B20B8, rva loc_1800B20DA, \
                                  rva stru_1801443EC>
                RUNTIME_FUNCTION <rva loc_1800B20DA, rva loc_1800B224F, \
                                  rva stru_180144490>
                RUNTIME_FUNCTION <rva loc_1800B224F, rva algn_1800B23C1, \
                                  rva stru_1801444A0>
                RUNTIME_FUNCTION <rva loc_1800B23C2, rva algn_1800B24AD, \
                                  rva stru_1801444D4>
                RUNTIME_FUNCTION <rva loc_1800B24AE, rva algn_1800B256B, \
                                  rva stru_18014455C>
                RUNTIME_FUNCTION <rva loc_1800B256C, rva algn_1800B2595, \
                                  rva stru_180144580>
                RUNTIME_FUNCTION <rva loc_1800B2596, rva loc_1800B25B0, \
                                  rva stru_1801445F0>
                RUNTIME_FUNCTION <rva loc_1800B25B0, rva algn_1800B26A1, \
                                  rva stru_180144600>
                RUNTIME_FUNCTION <rva loc_1800B26A2, rva algn_1800B2AF7, \
                                  rva stru_18014468C>
                RUNTIME_FUNCTION <rva loc_1800B2AF8, rva loc_1800B2B1A, \
                                  rva stru_1801446C4>
                RUNTIME_FUNCTION <rva loc_1800B2B1A, rva algn_1800B2F5F, \
                                  rva stru_180144708>
                RUNTIME_FUNCTION <rva loc_1800B2F60, rva algn_1800B3187, \
                                  rva stru_180144790>
                RUNTIME_FUNCTION <rva loc_1800B3188, rva loc_1800B31B0, \
                                  rva stru_1801447EC>
                RUNTIME_FUNCTION <rva loc_1800B31B0, rva loc_1800B3210, \
                                  rva stru_180144814>
                RUNTIME_FUNCTION <rva loc_1800B3210, rva loc_1800B3560, \
                                  rva stru_18014483C>
                RUNTIME_FUNCTION <rva loc_1800B3560, rva loc_1800B35C4, \
                                  rva stru_180144864>
                RUNTIME_FUNCTION <rva loc_1800B35C4, rva algn_1800B3635, \
                                  rva stru_18014488C>
                RUNTIME_FUNCTION <rva loc_1800B3636, rva algn_1800B363D, \
                                  rva stru_1801448D0>
                RUNTIME_FUNCTION <rva loc_1800B363E, rva algn_1800B36C7, \
                                  rva stru_180144934>
                RUNTIME_FUNCTION <rva loc_1800B36C8, rva loc_1800B36DB, \
                                  rva stru_1801449F0>
                RUNTIME_FUNCTION <rva loc_1800B36DB, rva algn_1800B38C3, \
                                  rva stru_180144A00>
                RUNTIME_FUNCTION <rva loc_1800B38C4, rva loc_1800B39DA, \
                                  rva stru_180144A2C>
                RUNTIME_FUNCTION <rva loc_1800B39DA, rva algn_1800B3B05, \
                                  rva stru_180144ACC>
                RUNTIME_FUNCTION <rva loc_1800B3B06, rva algn_1800B3DBF, \
                                  rva stru_180144B10>
                RUNTIME_FUNCTION <rva loc_1800B3DC0, rva loc_1800B3DCA, \
                                  rva stru_180144B40>
                RUNTIME_FUNCTION <rva loc_1800B3DCA, rva loc_1800B3DD4, \
                                  rva stru_180144B70>
                RUNTIME_FUNCTION <rva loc_1800B3DD4, rva loc_1800B3E41, \
                                  rva stru_180144CFC>
                RUNTIME_FUNCTION <rva loc_1800B3E41, rva loc_1800B3E84, \
                                  rva stru_180144D10>
                RUNTIME_FUNCTION <rva loc_1800B3E84, rva algn_1800B3E9B, \
                                  rva stru_180144DEC>
                RUNTIME_FUNCTION <rva loc_1800B3E9C, rva loc_1800B3EA6, \
                                  rva stru_180144E94>
                RUNTIME_FUNCTION <rva loc_1800B3EA6, rva loc_1800B41B8, \
                                  rva stru_180144EF8>
                RUNTIME_FUNCTION <rva loc_1800B41B8, rva algn_1800B4325, \
                                  rva stru_180144F34>
                RUNTIME_FUNCTION <rva loc_1800B4326, rva algn_1800B43FD, \
                                  rva stru_180144F68>
                RUNTIME_FUNCTION <rva loc_1800B43FE, rva loc_1800B4428, \
                                  rva stru_180144F80>
                RUNTIME_FUNCTION <rva loc_1800B4428, rva loc_1800B4432, \
                                  rva stru_180144FB4>
                RUNTIME_FUNCTION <rva loc_1800B4432, rva algn_1800B445F, \
                                  rva stru_180144FDC>
                RUNTIME_FUNCTION <rva loc_1800B4460, rva loc_1800B4478, \
                                  rva stru_180144FFC>
                RUNTIME_FUNCTION <rva loc_1800B4478, rva algn_1800B44DD, \
                                  rva stru_180145028>
                RUNTIME_FUNCTION <rva loc_1800B44DE, rva loc_1800B44EC, \
                                  rva stru_180145054>
                RUNTIME_FUNCTION <rva loc_1800B44EC, rva loc_1800B44F6, \
                                  rva stru_18014507C>
                RUNTIME_FUNCTION <rva loc_1800B44F6, rva loc_1800B4500, \
                                  rva stru_1801450A8>
                RUNTIME_FUNCTION <rva loc_1800B4500, rva loc_1800B4572, \
                                  rva stru_1801450DC>
                RUNTIME_FUNCTION <rva loc_1800B4572, rva loc_1800B45B6, \
                                  rva stru_180145120>
                RUNTIME_FUNCTION <rva loc_1800B45B6, rva loc_1800B45DE, \
                                  rva stru_18014514C>
                RUNTIME_FUNCTION <rva loc_1800B45DE, rva loc_1800B4890, \
                                  rva stru_1801451CC>
                RUNTIME_FUNCTION <rva loc_1800B4890, rva loc_1800B48BA, \
                                  rva stru_1801451EC>
                RUNTIME_FUNCTION <rva loc_1800B48BA, rva algn_1800B49AD, \
                                  rva stru_180145220>
                RUNTIME_FUNCTION <rva loc_1800B49AE, rva loc_1800B49C4, \
                                  rva stru_180145254>
                RUNTIME_FUNCTION <rva loc_1800B49C4, rva algn_1800B4A63, \
                                  rva stru_180145284>
                RUNTIME_FUNCTION <rva loc_1800B4A64, rva algn_1800B4AEB, \
                                  rva stru_1801452B8>
                RUNTIME_FUNCTION <rva loc_1800B4AEC, rva loc_1800B4AF6, \
                                  rva stru_1801452F0>
                RUNTIME_FUNCTION <rva loc_1800B4AF6, rva loc_1800B4C7E, \
                                  rva stru_180145320>
                RUNTIME_FUNCTION <rva loc_1800B4C7E, rva loc_1800B5110, \
                                  rva stru_18014539C>
                RUNTIME_FUNCTION <rva loc_1800B5110, rva loc_1800B511A, \
                                  rva stru_1801453CC>
                RUNTIME_FUNCTION <rva loc_1800B511A, rva loc_1800B51D0, \
                                  rva stru_1801453F8>
                RUNTIME_FUNCTION <rva loc_1800B51D0, rva algn_1800B525B, \
                                  rva stru_180145438>
                RUNTIME_FUNCTION <rva loc_1800B525C, rva loc_1800B52E0, \
                                  rva stru_180145460>
                RUNTIME_FUNCTION <rva loc_1800B52E0, rva algn_1800B5327, \
                                  rva stru_180145488>
                RUNTIME_FUNCTION <rva loc_1800B5328, rva algn_1800B5367, \
                                  rva stru_1801454A0>
                RUNTIME_FUNCTION <rva loc_1800B5368, rva loc_1800B53F0, \
                                  rva stru_1801454C4>
                RUNTIME_FUNCTION <rva loc_1800B53F0, rva loc_1800B54D4, \
                                  rva stru_1801454E8>
                RUNTIME_FUNCTION <rva loc_1800B54D4, rva loc_1800B5506, \
                                  rva stru_180145524>
                RUNTIME_FUNCTION <rva loc_1800B5514, rva loc_1800B55E4, \
                                  rva stru_180145554>
                RUNTIME_FUNCTION <rva loc_1800B55E4, rva loc_1800B55FE, \
                                  rva stru_180145578>
                RUNTIME_FUNCTION <rva loc_1800B55FE, rva loc_1800B5608, \
                                  rva stru_1801455A4>
                RUNTIME_FUNCTION <rva loc_1800B5608, rva loc_1800B563A, \
                                  rva stru_1801455CC>
                RUNTIME_FUNCTION <rva loc_1800B563A, rva loc_1800B5694, \
                                  rva stru_1801455F8>
                RUNTIME_FUNCTION <rva loc_1800B5694, rva loc_1800B56A6, \
                                  rva stru_180145624>
                RUNTIME_FUNCTION <rva loc_1800B56A6, rva algn_1800B575D, \
                                  rva stru_180145648>
                RUNTIME_FUNCTION <rva loc_1800B575E, rva algn_1800B576F, \
                                  rva stru_180145660>
                RUNTIME_FUNCTION <rva loc_1800B5770, rva loc_1800B578E, \
                                  rva stru_180145688>
                RUNTIME_FUNCTION <rva loc_1800B578E, rva loc_1800B57A0, \
                                  rva stru_1801456AC>
                RUNTIME_FUNCTION <rva loc_1800B57A0, rva algn_1800B57C7, \
                                  rva stru_1801456D8>
                RUNTIME_FUNCTION <rva loc_1800B57C8, rva loc_1800B57F0, \
                                  rva stru_1801456F8>
                RUNTIME_FUNCTION <rva loc_1800B57F0, rva algn_1800B588F, \
                                  rva stru_18014572C>
                RUNTIME_FUNCTION <rva loc_1800B5890, rva algn_1800B5933, \
                                  rva stru_180145750>
                RUNTIME_FUNCTION <rva loc_1800B5934, rva algn_1800B5965, \
                                  rva stru_180145770>
                RUNTIME_FUNCTION <rva loc_1800B5966, rva loc_1800B5970, \
                                  rva stru_1801457A0>
                RUNTIME_FUNCTION <rva loc_1800B597E, rva loc_1800B5996, \
                                  rva stru_1801457D0>
                RUNTIME_FUNCTION <rva loc_1800B5996, rva loc_1800B59AE, \
                                  rva stru_1801457E8>
                RUNTIME_FUNCTION <rva loc_1800B59AE, rva algn_1800B5A5D, \
                                  rva stru_18014581C>
                RUNTIME_FUNCTION <rva loc_1800B5A5E, rva loc_1800B5A68, \
                                  rva stru_180145840>
                RUNTIME_FUNCTION <rva loc_1800B5A68, rva loc_1800B5A80, \
                                  rva stru_180145860>
                RUNTIME_FUNCTION <rva loc_1800B5A80, rva loc_1800B5C22, \
                                  rva stru_18014588C>
                RUNTIME_FUNCTION <rva loc_1800B5C22, rva loc_1800B5C82, \
                                  rva stru_1801458B4>
                RUNTIME_FUNCTION <rva loc_1800B5C82, rva loc_1800B5CC0, \
                                  rva stru_1801458E8>
                RUNTIME_FUNCTION <rva loc_1800B5CC0, rva loc_1800B5CDE, \
                                  rva stru_180145914>
                RUNTIME_FUNCTION <rva loc_1800B5CDE, rva loc_1800B5D26, \
                                  rva stru_180145934>
                RUNTIME_FUNCTION <rva loc_1800B5D26, rva loc_1800B5E7A, \
                                  rva stru_18014595C>
                RUNTIME_FUNCTION <rva loc_1800B5E7A, rva algn_1800B5E99, \
                                  rva stru_180145990>
                RUNTIME_FUNCTION <rva loc_1800B5E9A, rva loc_1800B5EB4, \
                                  rva stru_1801459B0>
                RUNTIME_FUNCTION <rva loc_1800B5EB4, rva loc_1800B5FFC, \
                                  rva stru_1801459D8>
                RUNTIME_FUNCTION <rva loc_1800B5FFC, rva algn_1800B605F, \
                                  rva stru_180145A0C>
                RUNTIME_FUNCTION <rva loc_1800B6060, rva loc_1800B6068, \
                                  rva stru_180145A74>
                RUNTIME_FUNCTION <rva loc_1800B6068, rva loc_1800B61C2, \
                                  rva stru_180145A84>
                RUNTIME_FUNCTION <rva loc_1800B61C2, rva loc_1800B62FA, \
                                  rva stru_180145AA0>
                RUNTIME_FUNCTION <rva loc_1800B62FA, rva loc_1800B6301, \
                                  rva stru_180145B88>
                RUNTIME_FUNCTION <rva loc_1800B6301, rva loc_1800B632C, \
                                  rva stru_180145B98>
                RUNTIME_FUNCTION <rva loc_1800B632C, rva loc_1800B6367, \
                                  rva stru_180145BB0>
                RUNTIME_FUNCTION <rva loc_1800B6367, rva algn_1800B6371, \
                                  rva stru_180145BD8>
                RUNTIME_FUNCTION <rva loc_1800B6372, rva loc_1800B6390, \
                                  rva stru_180145C04>
                RUNTIME_FUNCTION <rva loc_1800B6390, rva loc_1800B642E, \
                                  rva stru_180145C24>
                RUNTIME_FUNCTION <rva loc_1800B642E, rva algn_1800B6535, \
                                  rva stru_180145C44>
                RUNTIME_FUNCTION <rva loc_1800B6536, rva algn_1800B66BF, \
                                  rva stru_180145C70>
                RUNTIME_FUNCTION <rva loc_1800B66C0, rva algn_1800B681F, \
                                  rva stru_180145C94>
                RUNTIME_FUNCTION <rva loc_1800B6820, rva loc_1800B68C2, \
                                  rva stru_180145CBC>
                RUNTIME_FUNCTION <rva loc_1800B68C2, rva loc_1800B68CC, \
                                  rva stru_180145CE0>
                RUNTIME_FUNCTION <rva loc_1800B68CC, rva algn_1800B6941, \
                                  rva stru_180145D20>
                RUNTIME_FUNCTION <rva loc_1800B6942, rva loc_1800B6AD2, \
                                  rva stru_180145D54>
                RUNTIME_FUNCTION <rva loc_1800B6AD2, rva loc_1800B6C74, \
                                  rva stru_180145D7C>
                RUNTIME_FUNCTION <rva loc_1800B6C74, rva loc_1800B6C96, \
                                  rva stru_180145DA4>
                RUNTIME_FUNCTION <rva loc_1800B6C96, rva algn_1800B6CA1, \
                                  rva stru_180145DE8>
                RUNTIME_FUNCTION <rva loc_1800B6CA2, rva loc_1800B6CAC, \
                                  rva stru_180145E10>
                RUNTIME_FUNCTION <rva loc_1800B6CAC, rva algn_1800B6CE1, \
                                  rva stru_180145E3C>
                RUNTIME_FUNCTION <rva loc_1800B6CE2, rva loc_1800B6CEC, \
                                  rva stru_180145E70>
                RUNTIME_FUNCTION <rva loc_1800B6CEC, rva algn_1800B6D43, \
                                  rva stru_180145EB4>
                RUNTIME_FUNCTION <rva loc_1800B6D44, rva loc_1800B6D5C, \
                                  rva stru_180145ECC>
                RUNTIME_FUNCTION <rva loc_1800B6D5C, rva loc_1800B6D64, \
                                  rva stru_180145F2C>
                RUNTIME_FUNCTION <rva loc_1800B6D64, rva loc_1800B6D6C, \
                                  rva stru_180145F78>
                RUNTIME_FUNCTION <rva loc_1800B6D6C, rva algn_1800B6E11, \
                                  rva stru_180145FC4>
                RUNTIME_FUNCTION <rva loc_1800B6E12, rva algn_1800B6E53, \
                                  rva stru_180145FEC>
                RUNTIME_FUNCTION <rva loc_1800B6E54, rva loc_1800B6EA8, \
                                  rva stru_180146010>
                RUNTIME_FUNCTION <rva loc_1800B6EA8, rva algn_1800B6EC3, \
                                  rva stru_18014603C>
                RUNTIME_FUNCTION <rva loc_1800B6EC4, rva loc_1800B6ECE, \
                                  rva stru_180146064>
                RUNTIME_FUNCTION <rva loc_1800B6ECE, rva loc_1800B6F06, \
                                  rva stru_180146088>
                RUNTIME_FUNCTION <rva loc_1800B6F06, rva algn_1800B6F35, \
                                  rva stru_1801460A0>
                RUNTIME_FUNCTION <rva loc_1800B6F36, rva loc_1800B6FCE, \
                                  rva stru_1801460D4>
                RUNTIME_FUNCTION <rva loc_1800B6FCE, rva algn_1800B7295, \
                                  rva stru_180146108>
                RUNTIME_FUNCTION <rva loc_1800B7296, rva loc_1800B731E, \
                                  rva stru_18014613C>
                RUNTIME_FUNCTION <rva loc_1800B731E, rva loc_1800B7332, \
                                  rva stru_180146164>
                RUNTIME_FUNCTION <rva loc_1800B7332, rva loc_1800B73A6, \
                                  rva stru_18014619C>
                RUNTIME_FUNCTION <rva loc_1800B73A6, rva loc_1800B7404, \
                                  rva stru_1801461C0>
                RUNTIME_FUNCTION <rva loc_1800B7404, rva algn_1800B742F, \
                                  rva stru_1801461EC>
                RUNTIME_FUNCTION <rva loc_1800B7430, rva loc_1800B745E, \
                                  rva stru_180146214>
                RUNTIME_FUNCTION <rva loc_1800B745E, rva algn_1800B75C5, \
                                  rva stru_180146244>
                RUNTIME_FUNCTION <rva loc_1800B75C6, rva algn_1800B75ED, \
                                  rva stru_180146268>
                RUNTIME_FUNCTION <rva loc_1800B75EE, rva algn_1800B769F, \
                                  rva stru_180146298>
                RUNTIME_FUNCTION <rva loc_1800B76A0, rva algn_1800B7801, \
                                  rva stru_1801462CC>
                RUNTIME_FUNCTION <rva loc_1800B7802, rva algn_1800B7813, \
                                  rva stru_1801462EC>
                RUNTIME_FUNCTION <rva loc_1800B7814, rva loc_1800B7824, \
                                  rva stru_180146308>
                RUNTIME_FUNCTION <rva loc_1800B7824, rva algn_1800B7887, \
                                  rva stru_180146328>
                RUNTIME_FUNCTION <rva loc_1800B7888, rva loc_1800B793E, \
                                  rva stru_18014634C>
                RUNTIME_FUNCTION <rva loc_1800B793E, rva loc_1800B7950, \
                                  rva stru_180146388>
                RUNTIME_FUNCTION <rva loc_1800B7950, rva algn_1800B798F, \
                                  rva stru_1801463B0>
                RUNTIME_FUNCTION <rva loc_1800B7990, rva loc_1800B79A6, \
                                  rva stru_180146428>
                RUNTIME_FUNCTION <rva loc_1800B79A6, rva algn_1800B79C3, \
                                  rva stru_180146458>
                RUNTIME_FUNCTION <rva loc_1800B79C4, rva algn_1800B79E3, \
                                  rva stru_180146480>
                RUNTIME_FUNCTION <rva loc_1800B79E4, rva algn_1800B7A2D, \
                                  rva stru_1801464A4>
                RUNTIME_FUNCTION <rva loc_1800B7A2E, rva loc_1800B7A8A, \
                                  rva stru_1801464C4>
                RUNTIME_FUNCTION <rva loc_1800B7A8A, rva loc_1800B7B0E, \
                                  rva stru_1801464E4>
                RUNTIME_FUNCTION <rva loc_1800B7B0E, rva loc_1800B7B22, \
                                  rva stru_180146514>
                RUNTIME_FUNCTION <rva loc_1800B7B22, rva algn_1800B7C59, \
                                  rva stru_18014655C>
                RUNTIME_FUNCTION <rva loc_1800B7C5A, rva loc_1800B7DA8, \
                                  rva stru_180146590>
                RUNTIME_FUNCTION <rva loc_1800B7DA8, rva loc_1800B7DEE, \
                                  rva stru_1801465B4>
                RUNTIME_FUNCTION <rva loc_1800B7DEE, rva loc_1800B7E0A, \
                                  rva stru_1801465CC>
                RUNTIME_FUNCTION <rva loc_1800B7E0A, rva loc_1800B7E26, \
                                  rva stru_18014660C>
                RUNTIME_FUNCTION <rva loc_1800B7E26, rva algn_1800B7E7B, \
                                  rva stru_180146638>
                RUNTIME_FUNCTION <rva loc_1800B7E7C, rva algn_1800B7F15, \
                                  rva stru_18014666C>
                RUNTIME_FUNCTION <rva loc_1800B7F16, rva algn_1800B8381, \
                                  rva stru_1801466A0>
                RUNTIME_FUNCTION <rva loc_1800B8382, rva loc_1800B83F6, \
                                  rva stru_1801466F8>
                RUNTIME_FUNCTION <rva loc_1800B83F6, rva algn_1800B845B, \
                                  rva stru_180146720>
                RUNTIME_FUNCTION <rva loc_1800B845C, rva loc_1800B8668, \
                                  rva stru_18014674C>
                RUNTIME_FUNCTION <rva loc_1800B8676, rva loc_1800B86FE, \
                                  rva stru_180146770>
                RUNTIME_FUNCTION <rva loc_1800B86FE, rva algn_1800B871B, \
                                  rva stru_180146790>
                RUNTIME_FUNCTION <rva loc_1800B871C, rva algn_1800B875B, \
                                  rva stru_1801467E0>
                RUNTIME_FUNCTION <rva loc_1800B875C, rva loc_1800B8766, \
                                  rva stru_180146810>
                RUNTIME_FUNCTION <rva loc_1800B8766, rva algn_1800B877B, \
                                  rva stru_180146830>
                RUNTIME_FUNCTION <rva loc_1800B877C, rva algn_1800B87D9, \
                                  rva stru_180146870>
                RUNTIME_FUNCTION <rva loc_1800B87DA, rva algn_1800B888D, \
                                  rva stru_1801468B8>
                RUNTIME_FUNCTION <rva loc_1800B888E, rva algn_1800B894B, \
                                  rva stru_180146900>
                RUNTIME_FUNCTION <rva loc_1800B894C, rva algn_1800B899D, \
                                  rva stru_180146950>
                RUNTIME_FUNCTION <rva loc_1800B899E, rva loc_1800B89A8, \
                                  rva stru_180146980>
                RUNTIME_FUNCTION <rva loc_1800B89A8, rva algn_1800B8A13, \
                                  rva stru_1801469A8>
                RUNTIME_FUNCTION <rva loc_1800B8A14, rva loc_1800B8DC4, \
                                  rva stru_180146A20>
                RUNTIME_FUNCTION <rva loc_1800B8DC4, rva algn_1800B9111, \
                                  rva stru_180146A74>
                RUNTIME_FUNCTION <rva loc_1800B9112, rva algn_1800B91E1, \
                                  rva stru_180146AC4>
                RUNTIME_FUNCTION <rva loc_1800B91E2, rva algn_1800B928B, \
                                  rva stru_180146B08>
                RUNTIME_FUNCTION <rva loc_1800B928C, rva algn_1800B9321, \
                                  rva stru_180146B3C>
                RUNTIME_FUNCTION <rva loc_1800B9322, rva loc_1800B9412, \
                                  rva stru_180146B80>
                RUNTIME_FUNCTION <rva loc_1800B941E, rva loc_1800B9584, \
                                  rva stru_180146BA8>
                RUNTIME_FUNCTION <rva loc_1800B9584, rva algn_1800B9631, \
                                  rva stru_180146BD0>
                RUNTIME_FUNCTION <rva loc_1800B9632, rva loc_1800B96F2, \
                                  rva stru_180146C14>
                RUNTIME_FUNCTION <rva loc_1800B96F2, rva loc_1800B9768, \
                                  rva stru_180146C40>
                RUNTIME_FUNCTION <rva loc_1800B9768, rva algn_1800B97C3, \
                                  rva stru_180146C6C>
                RUNTIME_FUNCTION <rva loc_1800B97C4, rva algn_1800B981D, \
                                  rva stru_180146C90>
                RUNTIME_FUNCTION <rva loc_1800B981E, rva loc_1800B9828, \
                                  rva stru_180146CE0>
                RUNTIME_FUNCTION <rva loc_1800B9828, rva loc_1800B9832, \
                                  rva stru_180146D04>
                RUNTIME_FUNCTION <rva loc_1800B9832, rva algn_1800B984F, \
                                  rva stru_180146D20>
                RUNTIME_FUNCTION <rva loc_1800B9850, rva loc_1800B985A, \
                                  rva stru_180146D60>
                RUNTIME_FUNCTION <rva loc_1800B985A, rva loc_1800B9864, \
                                  rva stru_180146DA0>
                RUNTIME_FUNCTION <rva loc_1800B9864, rva loc_1800B986E, \
                                  rva stru_180146DDC>
                RUNTIME_FUNCTION <rva loc_1800B986E, rva loc_1800B98AA, \
                                  rva stru_180146E04>
                RUNTIME_FUNCTION <rva loc_1800B98AA, rva loc_1800B9952, \
                                  rva stru_180146E20>
                RUNTIME_FUNCTION <rva loc_1800B9952, rva loc_1800B9970, \
                                  rva stru_180146E40>
                RUNTIME_FUNCTION <rva loc_1800B9970, rva algn_1800B9981, \
                                  rva stru_180146E84>
                RUNTIME_FUNCTION <rva loc_1800B9982, rva loc_1800B998C, \
                                  rva stru_180146EB0>
                RUNTIME_FUNCTION <rva loc_1800B998C, rva loc_1800B99BA, \
                                  rva stru_180146ED4>
                RUNTIME_FUNCTION <rva loc_1800B99BA, rva loc_1800B99CA, \
                                  rva stru_180146F04>
                RUNTIME_FUNCTION <rva loc_1800B99CA, rva algn_1800B9A27, \
                                  rva stru_180146F54>
                RUNTIME_FUNCTION <rva loc_1800B9A28, rva loc_1800B9B0A, \
                                  rva stru_180146FA0>
                RUNTIME_FUNCTION <rva loc_1800B9B0A, rva loc_1800B9B30, \
                                  rva stru_180146FC4>
                RUNTIME_FUNCTION <rva loc_1800B9B30, rva algn_1800B9BD9, \
                                  rva stru_18014700C>
                RUNTIME_FUNCTION <rva loc_1800B9BDA, rva loc_1800B9C14, \
                                  rva stru_180147048>
                RUNTIME_FUNCTION <rva loc_1800B9C14, rva loc_1800B9CC6, \
                                  rva stru_180147078>
                RUNTIME_FUNCTION <rva loc_1800B9CC6, rva loc_1800B9CDA, \
                                  rva stru_1801470A0>
                RUNTIME_FUNCTION <rva loc_1800B9CDA, rva algn_1800B9D79, \
                                  rva stru_1801470E8>
                RUNTIME_FUNCTION <rva loc_1800B9D7A, rva algn_1800B9DA9, \
                                  rva stru_180147128>
                RUNTIME_FUNCTION <rva loc_1800B9DC0, rva loc_1800BA09C, \
                                  rva stru_180147170>
                RUNTIME_FUNCTION <rva loc_1800BA09C, rva algn_1800BA0C1, \
                                  rva stru_180147190>
                RUNTIME_FUNCTION <rva loc_1800BA0C2, rva algn_1800BA0EF, \
                                  rva stru_1801471E4>
                RUNTIME_FUNCTION <rva loc_1800BA0F0, rva algn_1800BA1AD, \
                                  rva stru_180147234>
                RUNTIME_FUNCTION <rva loc_1800BA1AE, rva loc_1800BA1F6, \
                                  rva stru_180147264>
                RUNTIME_FUNCTION <rva loc_1800BA1F6, rva loc_1800BA2C0, \
                                  rva stru_180147290>
                RUNTIME_FUNCTION <rva loc_1800BA30C, rva loc_1800BA31A, \
                                  rva stru_1801472C0>
                RUNTIME_FUNCTION <rva loc_1800BA31A, rva loc_1800BA32A, \
                                  rva stru_180147308>
                RUNTIME_FUNCTION <rva loc_1800BA32A, rva algn_1800BA361, \
                                  rva stru_180147328>
                RUNTIME_FUNCTION <rva loc_1800BA362, rva algn_1800BA36D, \
                                  rva stru_180147358>
                RUNTIME_FUNCTION <rva loc_1800BA36E, rva algn_1800BA3ED, \
                                  rva stru_1801473B4>
                RUNTIME_FUNCTION <rva loc_1800BA3EE, rva loc_1800BA408, \
                                  rva stru_1801473CC>
                RUNTIME_FUNCTION <rva loc_1800BA458, rva loc_1800BA4B4, \
                                  rva stru_180147420>
                RUNTIME_FUNCTION <rva loc_1800BA4B4, rva loc_1800BA5EC, \
                                  rva stru_180147474>
                RUNTIME_FUNCTION <rva loc_1800BA5EC, rva algn_1800BA60D, \
                                  rva stru_180147498>
                RUNTIME_FUNCTION <rva loc_1800BA60E, rva algn_1800BA633, \
                                  rva stru_180147538>
                RUNTIME_FUNCTION <rva loc_1800BA634, rva loc_1800BA644, \
                                  rva stru_180147558>
                RUNTIME_FUNCTION <rva loc_1800BA644, rva loc_1800BA684, \
                                  rva stru_180147574>
                RUNTIME_FUNCTION <rva loc_1800BA6DA, rva algn_1800BA72F, \
                                  rva stru_18014759C>
                RUNTIME_FUNCTION <rva loc_1800BA76A, rva loc_1800BA79E, \
                                  rva stru_1801475B4>
                RUNTIME_FUNCTION <rva loc_1800BA7B0, rva algn_1800BA885, \
                                  rva stru_1801475DC>
                RUNTIME_FUNCTION <rva loc_1800BA886, rva algn_1800BA8B5, \
                                  rva stru_1801475F8>
                RUNTIME_FUNCTION <rva loc_1800BA8B6, rva algn_1800BA8C1, \
                                  rva stru_18014761C>
                RUNTIME_FUNCTION <rva loc_1800BA8C2, rva algn_1800BA8D3, \
                                  rva stru_1801476D4>
                RUNTIME_FUNCTION <rva loc_1800BA8D4, rva loc_1800BA902, \
                                  rva stru_1801477CC>
                RUNTIME_FUNCTION <rva loc_1800BA902, rva loc_1800BAA64, \
                                  rva stru_18014787C>
                RUNTIME_FUNCTION <rva loc_1800BAA64, rva algn_1800BAC75, \
                                  rva stru_1801478AC>
                RUNTIME_FUNCTION <rva loc_1800BAC76, rva algn_1800BACF9, \
                                  rva stru_1801478D4>
                RUNTIME_FUNCTION <rva loc_1800BACFA, rva algn_1800BAD3F, \
                                  rva stru_1801478FC>
                RUNTIME_FUNCTION <rva loc_1800BAD40, rva loc_1800BAE20, \
                                  rva stru_180147924>
                RUNTIME_FUNCTION <rva loc_1800BAE20, rva algn_1800BAE2D, \
                                  rva stru_180147940>
                RUNTIME_FUNCTION <rva loc_1800BAE2E, rva loc_1800BAFD6, \
                                  rva stru_1801479C4>
                RUNTIME_FUNCTION <rva loc_1800BAFD6, rva loc_1800BAFE0, \
                                  rva stru_180147A0C>
                RUNTIME_FUNCTION <rva loc_1800BAFE0, rva algn_1800BB0F9, \
                                  rva stru_180147A78>
                RUNTIME_FUNCTION <rva loc_1800BB0FA, rva loc_1800BB128, \
                                  rva stru_180147AD4>
                RUNTIME_FUNCTION <rva loc_1800BB15C, rva algn_1800BB197, \
                                  rva stru_180147B0C>
                RUNTIME_FUNCTION <rva loc_1800BB198, rva loc_1800BB1EC, \
                                  rva stru_180147B28>
                RUNTIME_FUNCTION <rva loc_1800BB1EC, rva loc_1800BB216, \
                                  rva stru_180147B60>
                RUNTIME_FUNCTION <rva loc_1800BB216, rva algn_1800BB277, \
                                  rva stru_180147BB8>
                RUNTIME_FUNCTION <rva loc_1800BB278, rva loc_1800BB28E, \
                                  rva stru_180147BE4>
                RUNTIME_FUNCTION <rva loc_1800BB28E, rva algn_1800BB2B1, \
                                  rva stru_180147C00>
                RUNTIME_FUNCTION <rva loc_1800BB2B2, rva loc_1800BB346, \
                                  rva stru_180147C24>
                RUNTIME_FUNCTION <rva loc_1800BB346, rva loc_1800BB35A, \
                                  rva stru_180147C3C>
                RUNTIME_FUNCTION <rva loc_1800BB35A, rva loc_1800BB3AE, \
                                  rva stru_180147C70>
                RUNTIME_FUNCTION <rva loc_1800BB3AE, rva algn_1800BB403, \
                                  rva stru_180147C98>
                RUNTIME_FUNCTION <rva loc_1800BB404, rva algn_1800BB521, \
                                  rva stru_180147CCC>
                RUNTIME_FUNCTION <rva loc_1800BB522, rva loc_1800BB53A, \
                                  rva stru_180147CF8>
                RUNTIME_FUNCTION <rva loc_1800BB53A, rva loc_1800BB544, \
                                  rva stru_180147D28>
                RUNTIME_FUNCTION <rva loc_1800BB544, rva algn_1800BB5B5, \
                                  rva stru_180147D48>
                RUNTIME_FUNCTION <rva loc_1800BB5B6, rva algn_1800BB5C9, \
                                  rva stru_180147D6C>
                RUNTIME_FUNCTION <rva loc_1800BB5CA, rva loc_1800BB7A2, \
                                  rva stru_180147D9C>
                RUNTIME_FUNCTION <rva loc_1800BB7A2, rva loc_1800BB7E6, \
                                  rva stru_180147DC0>
                RUNTIME_FUNCTION <rva loc_1800BB7E6, rva algn_1800BB7F9, \
                                  rva stru_180147DF4>
                RUNTIME_FUNCTION <rva loc_1800BB7FA, rva algn_1800BB8F7, \
                                  rva stru_180147E20>
                RUNTIME_FUNCTION <rva loc_1800BB8F8, rva algn_1800BB941, \
                                  rva stru_180147E44>
                RUNTIME_FUNCTION <rva loc_1800BB942, rva loc_1800BB95C, \
                                  rva stru_180147E60>
                RUNTIME_FUNCTION <rva loc_1800BB95C, rva algn_1800BB979, \
                                  rva stru_180147E84>
                RUNTIME_FUNCTION <rva loc_1800BB97A, rva loc_1800BB98E, \
                                  rva stru_180147EC4>
                RUNTIME_FUNCTION <rva loc_1800BBA9E, rva algn_1800BBAC7, \
                                  rva stru_180147F0C>
                RUNTIME_FUNCTION <rva loc_1800BBAC8, rva loc_1800BBADE, \
                                  rva stru_180147F38>
                RUNTIME_FUNCTION <rva loc_1800BBADE, rva loc_1800BBB5E, \
                                  rva stru_180147F68>
                RUNTIME_FUNCTION <rva loc_1800BBB5E, rva loc_1800BBB8A, \
                                  rva stru_180147F90>
                RUNTIME_FUNCTION <rva loc_1800BBB8A, rva algn_1800BBD93, \
                                  rva stru_180147FBC>
                RUNTIME_FUNCTION <rva loc_1800BBD94, rva loc_1800BBDE2, \
                                  rva stru_180147FE4>
                RUNTIME_FUNCTION <rva loc_1800BBDE2, rva loc_1800BBE1A, \
                                  rva stru_180148000>
                RUNTIME_FUNCTION <rva loc_1800BBE1A, rva loc_1800BBE5E, \
                                  rva stru_180148028>
                RUNTIME_FUNCTION <rva loc_1800BBE5E, rva loc_1800BBE6E, \
                                  rva stru_180148054>
                RUNTIME_FUNCTION <rva loc_1800BBE6E, rva algn_1800BBE7F, \
                                  rva stru_180148074>
                RUNTIME_FUNCTION <rva loc_1800BBE80, rva loc_1800BBEF6, \
                                  rva stru_18014809C>
                RUNTIME_FUNCTION <rva loc_1800BBEF6, rva algn_1800BBF07, \
                                  rva stru_1801480B8>
                RUNTIME_FUNCTION <rva loc_1800BBF08, rva algn_1800BBF29, \
                                  rva stru_1801480E0>
                RUNTIME_FUNCTION <rva loc_1800BBF2A, rva algn_1800BBF7F, \
                                  rva stru_18014810C>
                RUNTIME_FUNCTION <rva loc_1800BBF80, rva loc_1800BBF8A, \
                                  rva stru_180148134>
                RUNTIME_FUNCTION <rva loc_1800BBF8A, rva loc_1800BBF94, \
                                  rva stru_180148164>
                RUNTIME_FUNCTION <rva loc_1800BBF94, rva loc_1800BBF9E, \
                                  rva stru_1801481E0>
                RUNTIME_FUNCTION <rva loc_1800BBF9E, rva loc_1800BBFF6, \
                                  rva stru_1801481F0>
                RUNTIME_FUNCTION <rva loc_1800BBFF6, rva algn_1800BC03F, \
                                  rva stru_180148268>
                RUNTIME_FUNCTION <rva loc_1800BC040, rva algn_1800BC087, \
                                  rva stru_180148294>
                RUNTIME_FUNCTION <rva loc_1800BC088, rva loc_1800BC09C, \
                                  rva stru_180148304>
                RUNTIME_FUNCTION <rva loc_1800BC09C, rva algn_1800BC1B3, \
                                  rva stru_180148314>
                RUNTIME_FUNCTION <rva loc_1800BC1B4, rva algn_1800BC247, \
                                  rva stru_180148344>
                RUNTIME_FUNCTION <rva loc_1800BC248, rva algn_1800BC29B, \
                                  rva stru_18014835C>
                RUNTIME_FUNCTION <rva loc_1800BC29C, rva loc_1800BC2DC, \
                                  rva stru_180148388>
                RUNTIME_FUNCTION <rva loc_1800BC2DC, rva algn_1800BC30B, \
                                  rva stru_1801483B4>
                RUNTIME_FUNCTION <rva loc_1800BC30C, rva loc_1800BC34B, \
                                  rva stru_180148414>
                RUNTIME_FUNCTION <rva loc_1800BC34B, rva algn_1800BC37B, \
                                  rva stru_180148424>
                RUNTIME_FUNCTION <rva loc_1800BC37C, rva loc_1800BC39A, \
                                  rva stru_1801484AC>
                RUNTIME_FUNCTION <rva loc_1800BC39A, rva algn_1800BC479, \
                                  rva stru_1801484BC>
                RUNTIME_FUNCTION <rva loc_1800BC47A, rva algn_1800BC50F, \
                                  rva stru_1801484E0>
                RUNTIME_FUNCTION <rva loc_1800BC510, rva algn_1800BC593, \
                                  rva stru_180148508>
                RUNTIME_FUNCTION <rva loc_1800BC594, rva loc_1800BC6AC, \
                                  rva stru_18014852C>
                RUNTIME_FUNCTION <rva loc_1800BC6AC, rva algn_1800BC75D, \
                                  rva stru_18014856C>
                RUNTIME_FUNCTION <rva loc_1800BC75E, rva loc_1800BC77C, \
                                  rva stru_180148588>
                RUNTIME_FUNCTION <rva loc_1800BC77C, rva loc_1800BC786, \
                                  rva stru_180148620>
                RUNTIME_FUNCTION <rva loc_1800BC786, rva algn_1800BC7A9, \
                                  rva stru_180148630>
                RUNTIME_FUNCTION <rva loc_1800BC7AA, rva algn_1800BC7B9, \
                                  rva stru_180148674>
                RUNTIME_FUNCTION <rva loc_1800BC7BA, rva algn_1800BC7C1, \
                                  rva stru_1801486B8>
                RUNTIME_FUNCTION <rva loc_1800BC7C2, rva algn_1800BC83F, \
                                  rva stru_180148714>
                RUNTIME_FUNCTION <rva loc_1800BC840, rva algn_1800BC89D, \
                                  rva stru_180148748>
                RUNTIME_FUNCTION <rva loc_1800BC89E, rva loc_1800BC8DC, \
                                  rva stru_180148760>
                RUNTIME_FUNCTION <rva loc_1800BC8DC, rva loc_1800BC8F0, \
                                  rva stru_180148784>
                RUNTIME_FUNCTION <rva loc_1800BC8F0, rva algn_1800BC8F7, \
                                  rva stru_1801487CC>
                RUNTIME_FUNCTION <rva loc_1800BC8F8, rva loc_1800BC95E, \
                                  rva stru_18014881C>
                RUNTIME_FUNCTION <rva loc_1800BC95E, rva loc_1800BC9AC, \
                                  rva stru_180148840>
                RUNTIME_FUNCTION <rva loc_1800BC9AC, rva loc_1800BCA8E, \
                                  rva stru_180148868>
                RUNTIME_FUNCTION <rva loc_1800BCA8E, rva algn_1800BCC49, \
                                  rva stru_180148890>
                RUNTIME_FUNCTION <rva loc_1800BCC4A, rva loc_1800BCC5C, \
                                  rva stru_1801488AC>
                RUNTIME_FUNCTION <rva loc_1800BCC5C, rva algn_1800BCCB5, \
                                  rva stru_1801488D0>
                RUNTIME_FUNCTION <rva loc_1800BCCB6, rva loc_1800BCCD8, \
                                  rva stru_1801488F4>
                RUNTIME_FUNCTION <rva loc_1800BCCD8, rva loc_1800BCCFA, \
                                  rva stru_180148918>
                RUNTIME_FUNCTION <rva loc_1800BCCFA, rva algn_1800BCD31, \
                                  rva stru_180148934>
                RUNTIME_FUNCTION <rva loc_1800BCD32, rva loc_1800BCD3C, \
                                  rva stru_18014896C>
                RUNTIME_FUNCTION <rva loc_1800BCD3C, rva loc_1800BCD7A, \
                                  rva stru_18014898C>
                RUNTIME_FUNCTION <rva loc_1800BCD7A, rva loc_1800BCD88, \
                                  rva stru_180148A0C>
                RUNTIME_FUNCTION <rva loc_1800BCD88, rva algn_1800BCE57, \
                                  rva stru_180148A40>
                RUNTIME_FUNCTION <rva loc_1800BCE58, rva loc_1800BCE98, \
                                  rva stru_180148A8C>
                RUNTIME_FUNCTION <rva loc_1800BCE98, rva algn_1800BCF43, \
                                  rva stru_180148ABC>
                RUNTIME_FUNCTION <rva loc_1800BCF44, rva loc_1800BCFA0, \
                                  rva stru_180148AD4>
                RUNTIME_FUNCTION <rva loc_1800BCFA0, rva loc_1800BCFFC, \
                                  rva stru_180148AEC>
                RUNTIME_FUNCTION <rva loc_1800BCFFC, rva loc_1800BD076, \
                                  rva stru_180148B08>
                RUNTIME_FUNCTION <rva loc_1800BD076, rva loc_1800BD082, \
                                  rva stru_180148B28>
                RUNTIME_FUNCTION <rva loc_1800BD082, rva algn_1800BD0AD, \
                                  rva stru_180148B40>
                RUNTIME_FUNCTION <rva loc_1800BD0AE, rva loc_1800BD0EC, \
                                  rva stru_180148B6C>
                RUNTIME_FUNCTION <rva loc_1800BD0EC, rva algn_1800BD119, \
                                  rva stru_180148B94>
                RUNTIME_FUNCTION <rva loc_1800BD11A, rva algn_1800BD35F, \
                                  rva stru_180148BF8>
                RUNTIME_FUNCTION <rva loc_1800BD360, rva algn_1800BD3C9, \
                                  rva stru_180148C24>
                RUNTIME_FUNCTION <rva loc_1800BD3CA, rva loc_1800BD3E8, \
                                  rva stru_180148C64>
                RUNTIME_FUNCTION <rva loc_1800BD3E8, rva algn_1800BD495, \
                                  rva stru_180148C84>
                RUNTIME_FUNCTION <rva loc_1800BD496, rva algn_1800BD4E7, \
                                  rva stru_180148CB8>
                RUNTIME_FUNCTION <rva loc_1800BD4E8, rva loc_1800BD522, \
                                  rva stru_180148CE0>
                RUNTIME_FUNCTION <rva loc_1800BD522, rva loc_1800BD54C, \
                                  rva stru_180148D2C>
                RUNTIME_FUNCTION <rva loc_1800BD54C, rva loc_1800BD81E, \
                                  rva stru_180148D58>
                RUNTIME_FUNCTION <rva loc_1800BD81E, rva algn_1800BD825, \
                                  rva stru_180148D84>
                RUNTIME_FUNCTION <rva loc_1800BD826, rva loc_1800BD8E0, \
                                  rva stru_180148DA0>
                RUNTIME_FUNCTION <rva loc_1800BD8E0, rva loc_1800BD900, \
                                  rva stru_180148DC8>
                RUNTIME_FUNCTION <rva loc_1800BD900, rva algn_1800BD9C3, \
                                  rva stru_180148DF4>
                RUNTIME_FUNCTION <rva loc_1800BD9C4, rva loc_1800BDA4A, \
                                  rva stru_180148E18>
                RUNTIME_FUNCTION <rva loc_1800BDA4A, rva algn_1800BDA5F, \
                                  rva stru_180148E34>
                RUNTIME_FUNCTION <rva loc_1800BDA60, rva loc_1800BDBEC, \
                                  rva stru_180148E4C>
                RUNTIME_FUNCTION <rva loc_1800BDBEC, rva algn_1800BDBF7, \
                                  rva stru_180148E70>
                RUNTIME_FUNCTION <rva loc_1800BDBF8, rva algn_1800BDC05, \
                                  rva stru_180148E90>
                RUNTIME_FUNCTION <rva loc_1800BDC06, rva loc_1800BDC66, \
                                  rva stru_180148ED0>
                RUNTIME_FUNCTION <rva loc_1800BDC76, rva loc_1800BDE42, \
                                  rva stru_180148F04>
                RUNTIME_FUNCTION <rva loc_1800BDE42, rva loc_1800BDE50, \
                                  rva stru_180148F30>
                RUNTIME_FUNCTION <rva loc_1800BDE50, rva algn_1800BDE6F, \
                                  rva stru_180148F6C>
                RUNTIME_FUNCTION <rva loc_1800BDE70, rva loc_1800BDEA0, \
                                  rva stru_180148FA0>
                RUNTIME_FUNCTION <rva loc_1800BDEA0, rva algn_1800BDECF, \
                                  rva stru_180148FE4>
                RUNTIME_FUNCTION <rva loc_1800BDED0, rva loc_1800BDF00, \
                                  rva stru_180149028>
                RUNTIME_FUNCTION <rva loc_1800BDF00, rva algn_1800BDF9D, \
                                  rva stru_18014905C>
                RUNTIME_FUNCTION <rva loc_1800BDF9E, rva loc_1800BDFBA, \
                                  rva stru_180149074>
                RUNTIME_FUNCTION <rva loc_1800BDFBA, rva algn_1800BE055, \
                                  rva stru_180149098>
                RUNTIME_FUNCTION <rva loc_1800BE056, rva loc_1800BE110, \
                                  rva stru_1801490C0>
                RUNTIME_FUNCTION <rva loc_1800BE110, rva algn_1800BE12F, \
                                  rva stru_1801490D8>
                RUNTIME_FUNCTION <rva loc_1800BE130, rva loc_1800BE172, \
                                  rva stru_180149110>
                RUNTIME_FUNCTION <rva loc_1800BE172, rva algn_1800BE1CF, \
                                  rva stru_180149134>
                RUNTIME_FUNCTION <rva loc_1800BE1D0, rva loc_1800BE258, \
                                  rva stru_180149154>
                RUNTIME_FUNCTION <rva loc_1800BE258, rva loc_1800BE30E, \
                                  rva stru_180149178>
                RUNTIME_FUNCTION <rva loc_1800BE30E, rva loc_1800BE3BE, \
                                  rva stru_18014919C>
                RUNTIME_FUNCTION <rva loc_1800BE3BE, rva loc_1800BE3EC, \
                                  rva stru_1801491C0>
                RUNTIME_FUNCTION <rva loc_1800BE3EC, rva loc_1800BE4F0, \
                                  rva stru_180149228>
                RUNTIME_FUNCTION <rva loc_1800BE4F0, rva algn_1800BE4FF, \
                                  rva stru_180149268>
                RUNTIME_FUNCTION <rva loc_1800BE500, rva loc_1800BE50E, \
                                  rva stru_180149290>
                RUNTIME_FUNCTION <rva loc_1800BE50E, rva loc_1800BE518, \
                                  rva stru_1801492B0>
                RUNTIME_FUNCTION <rva loc_1800BE518, rva algn_1800BE5FD, \
                                  rva stru_1801492D4>
                RUNTIME_FUNCTION <rva loc_1800BE5FE, rva algn_1800BE6BD, \
                                  rva stru_180149300>
                RUNTIME_FUNCTION <rva loc_1800BE6BE, rva loc_1800BE6F6, \
                                  rva stru_18014931C>
                RUNTIME_FUNCTION <rva loc_1800BE6F6, rva loc_1800BE75A, \
                                  rva stru_180149348>
                RUNTIME_FUNCTION <rva loc_1800BE75A, rva algn_1800BE7C1, \
                                  rva stru_180149368>
                RUNTIME_FUNCTION <rva loc_1800BE7C2, rva algn_1800BE7EB, \
                                  rva stru_180149390>
                RUNTIME_FUNCTION <rva loc_1800BE7EC, rva loc_1800BE89E, \
                                  rva stru_1801493C0>
                RUNTIME_FUNCTION <rva loc_1800BE89E, rva algn_1800BE8C3, \
                                  rva stru_180149400>
                RUNTIME_FUNCTION <rva loc_1800BE8C4, rva loc_1800BE90C, \
                                  rva stru_18014943C>
                RUNTIME_FUNCTION <rva loc_1800BE90C, rva algn_1800BEB39, \
                                  rva stru_180149470>
                RUNTIME_FUNCTION <rva loc_1800BEB3A, rva loc_1800BEB44, \
                                  rva stru_180149498>
                RUNTIME_FUNCTION <rva loc_1800BEB44, rva algn_1800BEBCB, \
                                  rva stru_1801494C8>
                RUNTIME_FUNCTION <rva loc_1800BEBCC, rva loc_1800BEBDC, \
                                  rva stru_1801494F0>
                RUNTIME_FUNCTION <rva loc_1800BEBDC, rva algn_1800BEC11, \
                                  rva stru_18014950C>
                RUNTIME_FUNCTION <rva loc_1800BEC12, rva algn_1800BECEB, \
                                  rva stru_18014953C>
                RUNTIME_FUNCTION <rva loc_1800BECEC, rva algn_1800BED57, \
                                  rva stru_180149568>
                RUNTIME_FUNCTION <rva loc_1800BED58, rva loc_1800BEDEA, \
                                  rva stru_180149588>
                RUNTIME_FUNCTION <rva loc_1800BEDEA, rva loc_1800BEE7C, \
                                  rva stru_1801495B4>
                RUNTIME_FUNCTION <rva loc_1800BEE88, rva loc_1800BEF78, \
                                  rva stru_1801495DC>
                RUNTIME_FUNCTION <rva loc_1800BEF78, rva loc_1800BF028, \
                                  rva stru_180149600>
                RUNTIME_FUNCTION <rva loc_1800BF028, rva algn_1800BF099, \
                                  rva stru_18014966C>
                RUNTIME_FUNCTION <rva loc_1800BF09A, rva algn_1800BF10B, \
                                  rva stru_1801496F0>
                RUNTIME_FUNCTION <rva loc_1800BF10C, rva loc_1800BF122, \
                                  rva stru_18014974C>
                RUNTIME_FUNCTION <rva loc_1800BF122, rva algn_1800BF147, \
                                  rva stru_18014976C>
                RUNTIME_FUNCTION <rva loc_1800BF148, rva algn_1800BF15B, \
                                  rva stru_180149798>
                RUNTIME_FUNCTION <rva loc_1800BF15C, rva loc_1800BF268, \
                                  rva stru_1801497C4>
                RUNTIME_FUNCTION <rva loc_1800BF268, rva algn_1800BF577, \
                                  rva stru_1801497FC>
                RUNTIME_FUNCTION <rva loc_1800BF578, rva algn_1800BF649, \
                                  rva stru_180149824>
                RUNTIME_FUNCTION <rva loc_1800BF64A, rva algn_1800BF659, \
                                  rva stru_180149840>
                RUNTIME_FUNCTION <rva loc_1800BF65A, rva loc_1800BF682, \
                                  rva stru_18014986C>
                RUNTIME_FUNCTION <rva loc_1800BF682, rva algn_1800BF71B, \
                                  rva stru_180149894>
                RUNTIME_FUNCTION <rva loc_1800BF71C, rva loc_1800BF736, \
                                  rva stru_1801498C0>
                RUNTIME_FUNCTION <rva loc_1800BF736, rva algn_1800BF8F9, \
                                  rva stru_1801498E8>
                RUNTIME_FUNCTION <rva loc_1800BF8FA, rva algn_1800BF90D, \
                                  rva stru_180149918>
                RUNTIME_FUNCTION <rva loc_1800BF90E, rva loc_1800BF936, \
                                  rva stru_180149958>
                RUNTIME_FUNCTION <rva loc_1800BF936, rva algn_1800BF945, \
                                  rva stru_180149980>
                RUNTIME_FUNCTION <rva loc_1800BF946, rva algn_1800BF94D, \
                                  rva stru_18014999C>
                RUNTIME_FUNCTION <rva loc_1800BF94E, rva algn_1800BF955, \
                                  rva stru_1801499BC>
                RUNTIME_FUNCTION <rva loc_1800BF956, rva loc_1800BF96A, \
                                  rva stru_1801499D4>
                RUNTIME_FUNCTION <rva loc_1800BF96A, rva loc_1800BF97E, \
                                  rva stru_1801499EC>
                RUNTIME_FUNCTION <rva loc_1800BF97E, rva loc_1800BF998, \
                                  rva stru_180149A88>
                RUNTIME_FUNCTION <rva loc_1800BF998, rva algn_1800BF9B7, \
                                  rva stru_180149ACC>
                RUNTIME_FUNCTION <rva loc_1800BF9B8, rva loc_1800BF9C2, \
                                  rva stru_180149AF8>
                RUNTIME_FUNCTION <rva loc_1800BF9C2, rva algn_1800BF9F5, \
                                  rva stru_180149B1C>
                RUNTIME_FUNCTION <rva loc_1800BF9F6, rva loc_1800BFA00, \
                                  rva stru_180149B54>
                RUNTIME_FUNCTION <rva loc_1800BFA00, rva algn_1800BFA0F, \
                                  rva stru_180149B7C>
                RUNTIME_FUNCTION <rva loc_1800BFA10, rva algn_1800BFB05, \
                                  rva stru_180149BA4>
                RUNTIME_FUNCTION <rva loc_1800BFB06, rva loc_1800BFB10, \
                                  rva stru_180149BE0>
                RUNTIME_FUNCTION <rva loc_1800BFB10, rva algn_1800BFB4B, \
                                  rva stru_180149C14>
                RUNTIME_FUNCTION <rva loc_1800BFB4C, rva loc_1800BFB76, \
                                  rva stru_180149C30>
                RUNTIME_FUNCTION <rva loc_1800BFB9E, rva loc_1800BFBB0, \
                                  rva stru_180149C78>
                RUNTIME_FUNCTION <rva loc_1800BFBB0, rva loc_1800BFBBA, \
                                  rva stru_180149C9C>
                RUNTIME_FUNCTION <rva loc_1800BFBBA, rva loc_1800BFBC4, \
                                  rva stru_180149CD4>
                RUNTIME_FUNCTION <rva loc_1800BFBD2, rva loc_1800BFC2E, \
                                  rva stru_180149D00>
                RUNTIME_FUNCTION <rva loc_1800BFC2E, rva algn_1800BFC73, \
                                  rva stru_180149D88>
                RUNTIME_FUNCTION <rva loc_1800BFC74, rva loc_1800BFCEC, \
                                  rva stru_180149E2C>
                RUNTIME_FUNCTION <rva loc_1800BFCEC, rva algn_1800BFD03, \
                                  rva stru_180149E58>
                RUNTIME_FUNCTION <rva loc_1800BFD04, rva loc_1800BFD1C, \
                                  rva stru_180149E7C>
                RUNTIME_FUNCTION <rva loc_1800BFD1C, rva algn_1800BFD65, \
                                  rva stru_180149EA8>
                RUNTIME_FUNCTION <rva loc_1800BFD66, rva loc_1800BFDAE, \
                                  rva stru_180149ECC>
                RUNTIME_FUNCTION <rva loc_1800BFDAE, rva algn_1800BFE63, \
                                  rva stru_180149EFC>
                RUNTIME_FUNCTION <rva loc_1800BFE64, rva algn_1800BFF37, \
                                  rva stru_180149F30>
                RUNTIME_FUNCTION <rva loc_1800BFF38, rva loc_1800BFFB2, \
                                  rva stru_180149F58>
                RUNTIME_FUNCTION <rva loc_1800BFFB2, rva loc_1800C0016, \
                                  rva stru_180149F74>
                RUNTIME_FUNCTION <rva loc_1800C0016, rva algn_1800C0031, \
                                  rva stru_180149F9C>
                RUNTIME_FUNCTION <rva loc_1800C0032, rva loc_1800C00D0, \
                                  rva stru_180149FE8>
                RUNTIME_FUNCTION <rva loc_1800C00D0, rva loc_1800C00E6, \
                                  rva stru_18014A048>
                RUNTIME_FUNCTION <rva loc_1800C00E6, rva algn_1800C0121, \
                                  rva stru_18014A070>
                RUNTIME_FUNCTION <rva loc_1800C0122, rva loc_1800C012C, \
                                  rva stru_18014A0A8>
                RUNTIME_FUNCTION <rva loc_1800C012C, rva loc_1800C0136, \
                                  rva stru_18014A0D0>
                RUNTIME_FUNCTION <rva loc_1800C0136, rva algn_1800C0169, \
                                  rva stru_18014A0F8>
                RUNTIME_FUNCTION <rva loc_1800C016A, rva loc_1800C017E, \
                                  rva stru_18014A120>
                RUNTIME_FUNCTION <rva loc_1800C017E, rva algn_1800C01AB, \
                                  rva stru_18014A148>
                RUNTIME_FUNCTION <rva loc_1800C01AC, rva loc_1800C01B6, \
                                  rva stru_18014A18C>
                RUNTIME_FUNCTION <rva loc_1800C01B6, rva loc_1800C01C0, \
                                  rva stru_18014A1B0>
                RUNTIME_FUNCTION <rva loc_1800C01C0, rva loc_1800C0222, \
                                  rva stru_18014A1D4>
                RUNTIME_FUNCTION <rva loc_1800C0222, rva algn_1800C02B3, \
                                  rva stru_18014A230>
                RUNTIME_FUNCTION <rva loc_1800C02B4, rva algn_1800C02F5, \
                                  rva stru_18014A248>
                RUNTIME_FUNCTION <rva loc_1800C02F6, rva loc_1800C0302, \
                                  rva stru_18014A278>
                RUNTIME_FUNCTION <rva loc_1800C0302, rva loc_1800C0378, \
                                  rva stru_18014A2A0>
                RUNTIME_FUNCTION <rva loc_1800C0378, rva algn_1800C0421, \
                                  rva stru_18014A2D0>
                RUNTIME_FUNCTION <rva loc_1800C0422, rva algn_1800C042D, \
                                  rva stru_18014A2E8>
                RUNTIME_FUNCTION <rva loc_1800C042E, rva loc_1800C04F0, \
                                  rva stru_18014A310>
                RUNTIME_FUNCTION <rva loc_1800C04F0, rva loc_1800C0500, \
                                  rva stru_18014A328>
                RUNTIME_FUNCTION <rva loc_1800C0500, rva loc_1800C05B4, \
                                  rva stru_18014A354>
                RUNTIME_FUNCTION <rva loc_1800C05B4, rva loc_1800C0662, \
                                  rva stru_18014A374>
                RUNTIME_FUNCTION <rva loc_1800C0662, rva loc_1800C06E2, \
                                  rva stru_18014A394>
                RUNTIME_FUNCTION <rva loc_1800C06E2, rva loc_1800C07B0, \
                                  rva stru_18014A3B8>
                RUNTIME_FUNCTION <rva loc_1800C07B0, rva loc_1800C0802, \
                                  rva stru_18014A3D4>
                RUNTIME_FUNCTION <rva loc_1800C0802, rva algn_1800C0845, \
                                  rva stru_18014A404>
                RUNTIME_FUNCTION <rva loc_1800C0846, rva algn_1800C087D, \
                                  rva stru_18014A42C>
                RUNTIME_FUNCTION <rva loc_1800C087E, rva algn_1800C08AB, \
                                  rva stru_18014A450>
                RUNTIME_FUNCTION <rva loc_1800C08AC, rva loc_1800C0938, \
                                  rva stru_18014A468>
                RUNTIME_FUNCTION <rva loc_1800C0938, rva algn_1800C094F, \
                                  rva stru_18014A480>
                RUNTIME_FUNCTION <rva loc_1800C0950, rva loc_1800C095A, \
                                  rva stru_18014A4B0>
                RUNTIME_FUNCTION <rva loc_1800C095A, rva algn_1800C0A17, \
                                  rva stru_18014A4F8>
                RUNTIME_FUNCTION <rva loc_1800C0A18, rva algn_1800C0A53, \
                                  rva stru_18014A51C>
                RUNTIME_FUNCTION <rva loc_1800C0A54, rva algn_1800C0A6D, \
                                  rva stru_18014A534>
                RUNTIME_FUNCTION <rva loc_1800C0A6E, rva loc_1800C0A8E, \
                                  rva stru_18014A54C>
                RUNTIME_FUNCTION <rva loc_1800C0A8E, rva algn_1800C0A9B, \
                                  rva stru_18014A564>
                RUNTIME_FUNCTION <rva loc_1800C0A9C, rva algn_1800C0AB5, \
                                  rva stru_18014A588>
                RUNTIME_FUNCTION <rva loc_1800C0AB6, rva algn_1800C0AE5, \
                                  rva stru_18014A5D8>
                RUNTIME_FUNCTION <rva loc_1800C0AE6, rva loc_1800C0AF4, \
                                  rva stru_18014A624>
                RUNTIME_FUNCTION <rva loc_1800C0AF4, rva algn_1800C0B9B, \
                                  rva stru_18014A64C>
                RUNTIME_FUNCTION <rva loc_1800C0B9C, rva algn_1800C0CCD, \
                                  rva stru_18014A678>
                RUNTIME_FUNCTION <rva loc_1800C0CCE, rva loc_1800C0DAC, \
                                  rva stru_18014A6A8>
                RUNTIME_FUNCTION <rva loc_1800C0DAC, rva loc_1800C0E66, \
                                  rva stru_18014A6CC>
                RUNTIME_FUNCTION <rva loc_1800C0E66, rva loc_1800C0EB2, \
                                  rva stru_18014A704>
                RUNTIME_FUNCTION <rva loc_1800C0EC0, rva loc_1800C0F08, \
                                  rva stru_18014A728>
                RUNTIME_FUNCTION <rva loc_1800C0F08, rva algn_1800C0F4D, \
                                  rva stru_18014A748>
                RUNTIME_FUNCTION <rva loc_1800C0F4E, rva algn_1800C1007, \
                                  rva stru_18014A768>
                RUNTIME_FUNCTION <rva loc_1800C1008, rva loc_1800C10C2, \
                                  rva stru_18014A78C>
                RUNTIME_FUNCTION <rva loc_1800C10C2, rva algn_1800C1155, \
                                  rva stru_18014A7C8>
                RUNTIME_FUNCTION <rva loc_1800C1156, rva loc_1800C1278, \
                                  rva stru_18014A7F0>
                RUNTIME_FUNCTION <rva loc_1800C1278, rva algn_1800C12B1, \
                                  rva stru_18014A808>
                RUNTIME_FUNCTION <rva loc_1800C12B2, rva algn_1800C134D, \
                                  rva stru_18014A828>
                RUNTIME_FUNCTION <rva loc_1800C134E, rva algn_1800C1463, \
                                  rva stru_18014A85C>
                RUNTIME_FUNCTION <rva loc_1800C1464, rva algn_1800C148B, \
                                  rva stru_18014A880>
                RUNTIME_FUNCTION <rva loc_1800C148C, rva algn_1800C14EB, \
                                  rva stru_18014A8B0>
                RUNTIME_FUNCTION <rva loc_1800C14EC, rva loc_1800C173A, \
                                  rva stru_18014A8E4>
                RUNTIME_FUNCTION <rva loc_1800C173A, rva loc_1800C17D6, \
                                  rva stru_18014A90C>
                RUNTIME_FUNCTION <rva loc_1800C17D6, rva loc_1800C1972, \
                                  rva stru_18014A940>
                RUNTIME_FUNCTION <rva loc_1800C1972, rva algn_1800C19D7, \
                                  rva stru_18014A968>
                RUNTIME_FUNCTION <rva loc_1800C19D8, rva loc_1800C1A4E, \
                                  rva stru_18014A990>
                RUNTIME_FUNCTION <rva loc_1800C1A4E, rva algn_1800C1A99, \
                                  rva stru_18014A9A8>
                RUNTIME_FUNCTION <rva loc_1800C1A9A, rva loc_1800C1AA4, \
                                  rva stru_18014A9E8>
                RUNTIME_FUNCTION <rva loc_1800C1AA4, rva loc_1800C1B92, \
                                  rva stru_18014AA18>
                RUNTIME_FUNCTION <rva loc_1800C1B92, rva algn_1800C1B99, \
                                  rva stru_18014AA40>
                RUNTIME_FUNCTION <rva loc_1800C1B9A, rva loc_1800C1BA4, \
                                  rva stru_18014AA8C>
                RUNTIME_FUNCTION <rva loc_1800C1BA4, rva algn_1800C1BC1, \
                                  rva stru_18014AAAC>
                RUNTIME_FUNCTION <rva loc_1800C1BC2, rva loc_1800C1BCC, \
                                  rva stru_18014AAFC>
                RUNTIME_FUNCTION <rva loc_1800C1BCC, rva loc_1800C1D0E, \
                                  rva stru_18014AB2C>
                RUNTIME_FUNCTION <rva loc_1800C1D0E, rva loc_1800C1D18, \
                                  rva stru_18014AB8C>
                RUNTIME_FUNCTION <rva loc_1800C1D18, rva algn_1800C2105, \
                                  rva stru_18014ABB4>
                RUNTIME_FUNCTION <rva loc_1800C2106, rva algn_1800C21A9, \
                                  rva stru_18014ABE0>
                RUNTIME_FUNCTION <rva loc_1800C21AA, rva algn_1800C22CF, \
                                  rva stru_18014AC40>
                RUNTIME_FUNCTION <rva loc_1800C22D0, rva algn_1800C22FF, \
                                  rva stru_18014ACC4>
                RUNTIME_FUNCTION <rva loc_1800C236E, rva loc_1800C238A, \
                                  rva stru_18014ACE0>
                RUNTIME_FUNCTION <rva loc_1800C238A, rva loc_1800C23CA, \
                                  rva stru_18014AD2C>
                RUNTIME_FUNCTION <rva loc_1800C23CA, rva algn_1800C2507, \
                                  rva stru_18014AD58>
                RUNTIME_FUNCTION <rva loc_1800C2508, rva loc_1800C251E, \
                                  rva stru_18014AD70>
                RUNTIME_FUNCTION <rva loc_1800C251E, rva algn_1800C253D, \
                                  rva stru_18014AD88>
                RUNTIME_FUNCTION <rva loc_1800C253E, rva algn_1800C27FF, \
                                  rva stru_18014ADB8>
                RUNTIME_FUNCTION <rva loc_1800C2800, rva loc_1800C28C4, \
                                  rva stru_18014ADFC>
                RUNTIME_FUNCTION <rva loc_1800C28C4, rva loc_1800C28CC, \
                                  rva stru_18014AE20>
                RUNTIME_FUNCTION <rva loc_1800C28CC, rva algn_1800C293F, \
                                  rva stru_18014AE3C>
                RUNTIME_FUNCTION <rva loc_1800C2940, rva algn_1800C298F, \
                                  rva stru_18014AE60>
                RUNTIME_FUNCTION <rva loc_1800C2990, rva algn_1800C29F9, \
                                  rva stru_18014AE78>
                RUNTIME_FUNCTION <rva loc_1800C29FA, rva algn_1800C2ABF, \
                                  rva stru_18014AEA8>
                RUNTIME_FUNCTION <rva loc_1800C2AC0, rva algn_1800C2B0B, \
                                  rva stru_18014AEF8>
                RUNTIME_FUNCTION <rva loc_1800C2B0C, rva algn_1800C2E1B, \
                                  rva stru_18014AF7C>
                RUNTIME_FUNCTION <rva loc_1800C2E1C, rva loc_1800C2ED0, \
                                  rva stru_18014AFB4>
                RUNTIME_FUNCTION <rva loc_1800C2EF8, rva algn_1800C2F25, \
                                  rva stru_18014B008>
                RUNTIME_FUNCTION <rva loc_1800C2F26, rva algn_1800C306B, \
                                  rva stru_18014B06C>
                RUNTIME_FUNCTION <rva loc_1800C306C, rva loc_1800C3DA6, \
                                  rva stru_18014B0A8>
                RUNTIME_FUNCTION <rva loc_1800C3DA6, rva loc_1800C3DBC, \
                                  rva stru_18014B0D8>
                RUNTIME_FUNCTION <rva loc_1800C3DBC, rva loc_1800C3DD2, \
                                  rva stru_18014B0F4>
                RUNTIME_FUNCTION <rva loc_1800C3DD2, rva algn_1800C3E8B, \
                                  rva stru_18014B130>
                RUNTIME_FUNCTION <rva loc_1800C3E8C, rva algn_1800C3FBB, \
                                  rva stru_18014B188>
                RUNTIME_FUNCTION <rva loc_1800C3FBC, rva algn_1800C3FDB, \
                                  rva stru_18014B1A4>
                RUNTIME_FUNCTION <rva loc_1800C3FDC, rva loc_1800C3FE6, \
                                  rva stru_18014B1D0>
                RUNTIME_FUNCTION <rva loc_1800C3FE6, rva algn_1800C400F, \
                                  rva stru_18014B1F4>
                RUNTIME_FUNCTION <rva loc_1800C4010, rva algn_1800C4069, \
                                  rva stru_18014B220>
                RUNTIME_FUNCTION <rva loc_1800C406A, rva loc_1800C419E, \
                                  rva stru_18014B24C>
                RUNTIME_FUNCTION <rva loc_1800C419E, rva algn_1800C41B7, \
                                  rva stru_18014B26C>
                RUNTIME_FUNCTION <rva loc_1800C41B8, rva algn_1800C41F3, \
                                  rva stru_18014B298>
                RUNTIME_FUNCTION <rva loc_1800C41F4, rva loc_1800C4232, \
                                  rva stru_18014B2C4>
                RUNTIME_FUNCTION <rva loc_1800C4232, rva loc_1800C438C, \
                                  rva stru_18014B2F0>
                RUNTIME_FUNCTION <rva loc_1800C438C, rva loc_1800C4458, \
                                  rva stru_18014B320>
                RUNTIME_FUNCTION <rva loc_1800C4458, rva loc_1800C449C, \
                                  rva stru_18014B344>
                RUNTIME_FUNCTION <rva loc_1800C449C, rva algn_1800C44D9, \
                                  rva stru_18014B36C>
                RUNTIME_FUNCTION <rva loc_1800C44DA, rva loc_1800C45C2, \
                                  rva stru_18014B3A0>
                RUNTIME_FUNCTION <rva loc_1800C45C2, rva loc_1800C4678, \
                                  rva stru_18014B3D8>
                RUNTIME_FUNCTION <rva loc_1800C4678, rva algn_1800C46AD, \
                                  rva stru_18014B44C>
                RUNTIME_FUNCTION <rva loc_1800C46AE, rva loc_1800C4954, \
                                  rva stru_18014B474>
                RUNTIME_FUNCTION <rva loc_1800C4954, rva loc_1800C496A, \
                                  rva stru_18014B48C>
                RUNTIME_FUNCTION <rva loc_1800C4974, rva loc_1800C49EE, \
                                  rva stru_18014B4E8>
                RUNTIME_FUNCTION <rva loc_1800C49EE, rva algn_1800C4A4D, \
                                  rva stru_18014B510>
                RUNTIME_FUNCTION <rva loc_1800C4A4E, rva algn_1800C4AFB, \
                                  rva stru_18014B544>
                RUNTIME_FUNCTION <rva loc_1800C4AFC, rva loc_1800C4BC8, \
                                  rva stru_18014B56C>
                RUNTIME_FUNCTION <rva loc_1800C4BC8, rva algn_1800C4CC3, \
                                  rva stru_18014B590>
                RUNTIME_FUNCTION <rva loc_1800C4CC4, rva loc_1800C4CE8, \
                                  rva stru_18014B5A8>
                RUNTIME_FUNCTION <rva loc_1800C4CE8, rva algn_1800C4D35, \
                                  rva stru_18014B5F8>
                RUNTIME_FUNCTION <rva loc_1800C4D36, rva loc_1800C4DF2, \
                                  rva stru_18014B628>
                RUNTIME_FUNCTION <rva loc_1800C4DF2, rva loc_1800C4E32, \
                                  rva stru_18014B670>
                RUNTIME_FUNCTION <rva loc_1800C4E32, rva algn_1800C4E3D, \
                                  rva stru_18014B688>
                RUNTIME_FUNCTION <rva loc_1800C4E3E, rva algn_1800C4E5F, \
                                  rva stru_18014B6A0>
                RUNTIME_FUNCTION <rva loc_1800C4E60, rva loc_1800C4FFA, \
                                  rva stru_18014B6D4>
                RUNTIME_FUNCTION <rva loc_1800C4FFA, rva algn_1800C505B, \
                                  rva stru_18014B6FC>
                RUNTIME_FUNCTION <rva loc_1800C505C, rva loc_1800C506C, \
                                  rva stru_18014B720>
                RUNTIME_FUNCTION <rva loc_1800C506C, rva algn_1800C5297, \
                                  rva stru_18014B754>
                RUNTIME_FUNCTION <rva loc_1800C5298, rva algn_1800C52DB, \
                                  rva stru_18014B780>
                RUNTIME_FUNCTION <rva loc_1800C52DC, rva loc_1800C52E6, \
                                  rva stru_18014B798>
                RUNTIME_FUNCTION <rva loc_1800C52E6, rva loc_1800C598E, \
                                  rva stru_18014B804>
                RUNTIME_FUNCTION <rva loc_1800C598E, rva algn_1800C5A39, \
                                  rva stru_18014B830>
                RUNTIME_FUNCTION <rva loc_1800C5A3A, rva algn_1800C5ACD, \
                                  rva stru_18014B848>
                RUNTIME_FUNCTION <rva loc_1800C5ACE, rva loc_1800C5AD8, \
                                  rva stru_18014B870>
                RUNTIME_FUNCTION <rva loc_1800C5AD8, rva loc_1800C5AEE, \
                                  rva stru_18014B888>
                RUNTIME_FUNCTION <rva loc_1800C5AEE, rva algn_1800C5AFF, \
                                  rva stru_18014B8A4>
                RUNTIME_FUNCTION <rva loc_1800C5B00, rva algn_1800C5B13, \
                                  rva stru_18014B8CC>
                RUNTIME_FUNCTION <rva loc_1800C5B14, rva loc_1800C5D08, \
                                  rva stru_18014B900>
                RUNTIME_FUNCTION <rva loc_1800C5D08, rva loc_1800C5D12, \
                                  rva stru_18014B948>
                RUNTIME_FUNCTION <rva loc_1800C5D12, rva loc_1800C5D1C, \
                                  rva stru_18014B974>
                RUNTIME_FUNCTION <rva loc_1800C5D1C, rva loc_1800C5D24, \
                                  rva stru_18014B994>
                RUNTIME_FUNCTION <rva loc_1800C5D24, rva algn_1800C5D47, \
                                  rva stru_18014B9C4>
                RUNTIME_FUNCTION <rva loc_1800C5D48, rva loc_1800C5D52, \
                                  rva stru_18014B9FC>
                RUNTIME_FUNCTION <rva loc_1800C5D82, rva algn_1800C5DE1, \
                                  rva stru_18014BA34>
                RUNTIME_FUNCTION <rva loc_1800C5DE2, rva loc_1800C5DF0, \
                                  rva stru_18014BA58>
                RUNTIME_FUNCTION <rva loc_1800C5DF0, rva loc_1800C5DFA, \
                                  rva stru_18014BA7C>
                RUNTIME_FUNCTION <rva loc_1800C5DFA, rva loc_1800C61CC, \
                                  rva stru_18014BAA8>
                RUNTIME_FUNCTION <rva loc_1800C61CC, rva loc_1800C61E4, \
                                  rva stru_18014BAC0>
                RUNTIME_FUNCTION <rva loc_1800C6212, rva loc_1800C6224, \
                                  rva stru_18014BAF4>
                RUNTIME_FUNCTION <rva loc_1800C6224, rva algn_1800C625F, \
                                  rva stru_18014BB0C>
                RUNTIME_FUNCTION <rva loc_1800C6260, rva algn_1800C627B, \
                                  rva stru_18014BB28>
                RUNTIME_FUNCTION <rva loc_1800C627C, rva loc_1800C6286, \
                                  rva stru_18014BB50>
                RUNTIME_FUNCTION <rva loc_1800C6286, rva algn_1800C62AD, \
                                  rva stru_18014BB6C>
                RUNTIME_FUNCTION <rva loc_1800C62AE, rva loc_1800C62D6, \
                                  rva stru_18014BB84>
                RUNTIME_FUNCTION <rva loc_1800C62D6, rva loc_1800C630C, \
                                  rva stru_18014BBA8>
                RUNTIME_FUNCTION <rva loc_1800C630C, rva loc_1800C6370, \
                                  rva stru_18014BBCC>
                RUNTIME_FUNCTION <rva loc_1800C6370, rva algn_1800C658B, \
                                  rva stru_18014BBF8>
                RUNTIME_FUNCTION <rva loc_1800C658C, rva loc_1800C674E, \
                                  rva stru_18014BC20>
                RUNTIME_FUNCTION <rva loc_1800C674E, rva loc_1800C69C2, \
                                  rva stru_18014BC64>
                RUNTIME_FUNCTION <rva loc_1800C69C2, rva algn_1800C6A7B, \
                                  rva stru_18014BCA4>
                RUNTIME_FUNCTION <rva loc_1800C6A7C, rva loc_1800C6AA4, \
                                  rva stru_18014BCCC>
                RUNTIME_FUNCTION <rva loc_1800C6AA4, rva loc_1800C6B5C, \
                                  rva stru_18014BD00>
                RUNTIME_FUNCTION <rva loc_1800C6B5C, rva loc_1800C6F4A, \
                                  rva stru_18014BD9C>
                RUNTIME_FUNCTION <rva loc_1800C6F4A, rva loc_1800C6F82, \
                                  rva stru_18014BDCC>
                RUNTIME_FUNCTION <rva loc_1800C6F82, rva algn_1800C6FB7, \
                                  rva stru_18014BDE4>
                RUNTIME_FUNCTION <rva loc_1800C6FB8, rva loc_1800C700A, \
                                  rva stru_18014BE08>
                RUNTIME_FUNCTION <rva loc_1800C700A, rva algn_1800C702F, \
                                  rva stru_18014BE20>
                RUNTIME_FUNCTION <rva loc_1800C7030, rva algn_1800C7223, \
                                  rva stru_18014BE50>
                RUNTIME_FUNCTION <rva loc_1800C7224, rva loc_1800C72CC, \
                                  rva stru_18014BE80>
                RUNTIME_FUNCTION <rva loc_1800C72CC, rva algn_1800C72FF, \
                                  rva stru_18014BEB0>
                RUNTIME_FUNCTION <rva loc_1800C7300, rva algn_1800C73B1, \
                                  rva stru_18014BEF4>
                RUNTIME_FUNCTION <rva loc_1800C73B2, rva algn_1800C73D1, \
                                  rva stru_18014BF1C>
                RUNTIME_FUNCTION <rva loc_1800C73D2, rva algn_1800C74BD, \
                                  rva stru_18014BF34>
                RUNTIME_FUNCTION <rva loc_1800C74BE, rva algn_1800C74D7, \
                                  rva stru_18014BF60>
                RUNTIME_FUNCTION <rva loc_1800C74D8, rva algn_1800C7513, \
                                  rva stru_18014BF78>
                RUNTIME_FUNCTION <rva loc_1800C7514, rva algn_1800C7525, \
                                  rva stru_18014BF90>
                RUNTIME_FUNCTION <rva loc_1800C7526, rva algn_1800C7539, \
                                  rva stru_18014BFA8>
                RUNTIME_FUNCTION <rva loc_1800C753A, rva loc_1800C7578, \
                                  rva stru_18014BFD8>
                RUNTIME_FUNCTION <rva loc_1800C7578, rva loc_1800C7618, \
                                  rva stru_18014C004>
                RUNTIME_FUNCTION <rva loc_1800C7618, rva loc_1800C765C, \
                                  rva stru_18014C054>
                RUNTIME_FUNCTION <rva loc_1800C765C, rva loc_1800C766E, \
                                  rva stru_18014C0BC>
                RUNTIME_FUNCTION <rva loc_1800C766E, rva loc_1800C76A6, \
                                  rva stru_18014C0E4>
                RUNTIME_FUNCTION <rva loc_1800C76A6, rva algn_1800C76C5, \
                                  rva stru_18014C0FC>
                RUNTIME_FUNCTION <rva loc_1800C76C6, rva algn_1800C7745, \
                                  rva stru_18014C128>
                RUNTIME_FUNCTION <rva loc_1800C7746, rva algn_1800C7775, \
                                  rva stru_18014C158>
                RUNTIME_FUNCTION <rva loc_1800C7776, rva algn_1800C77A9, \
                                  rva stru_18014C178>
                RUNTIME_FUNCTION <rva loc_1800C77AA, rva algn_1800C77E3, \
                                  rva stru_18014C190>
                RUNTIME_FUNCTION <rva loc_1800C77E4, rva loc_1800C782A, \
                                  rva stru_18014C1AC>
                RUNTIME_FUNCTION <rva loc_1800C782A, rva loc_1800C7836, \
                                  rva stru_18014C1C8>
                RUNTIME_FUNCTION <rva loc_1800C7836, rva loc_1800C7878, \
                                  rva stru_18014C1E4>
                RUNTIME_FUNCTION <rva loc_1800C7878, rva loc_1800C7978, \
                                  rva stru_18014C20C>
                RUNTIME_FUNCTION <rva loc_1800C7978, rva loc_1800C79D8, \
                                  rva stru_18014C238>
                RUNTIME_FUNCTION <rva loc_1800C79D8, rva algn_1800C79F7, \
                                  rva stru_18014C250>
                RUNTIME_FUNCTION <rva loc_1800C79F8, rva algn_1800C7A2F, \
                                  rva stru_18014C280>
                RUNTIME_FUNCTION <rva loc_1800C7A30, rva algn_1800C7ACF, \
                                  rva stru_18014C2A8>
                RUNTIME_FUNCTION <rva loc_1800C7AD0, rva loc_1800C81CC, \
                                  rva stru_18014C2D4>
                RUNTIME_FUNCTION <rva loc_1800C820E, rva algn_1800C8269, \
                                  rva stru_18014C2F8>
                RUNTIME_FUNCTION <rva loc_1800C826A, rva algn_1800C8281, \
                                  rva stru_18014C31C>
                RUNTIME_FUNCTION <rva loc_1800C8282, rva loc_1800C830A, \
                                  rva stru_18014C334>
                RUNTIME_FUNCTION <rva loc_1800C830A, rva loc_1800C8314, \
                                  rva stru_18014C358>
                RUNTIME_FUNCTION <rva loc_1800C8314, rva loc_1800C832E, \
                                  rva stru_18014C374>
                RUNTIME_FUNCTION <rva loc_1800C832E, rva algn_1800C839F, \
                                  rva stru_18014C3A0>
                RUNTIME_FUNCTION <rva loc_1800C83A0, rva loc_1800C84A0, \
                                  rva stru_18014C3CC>
                RUNTIME_FUNCTION <rva loc_1800C84A0, rva algn_1800C8547, \
                                  rva stru_18014C3F4>
                RUNTIME_FUNCTION <rva loc_1800C8548, rva loc_1800C85BE, \
                                  rva stru_18014C424>
                RUNTIME_FUNCTION <rva loc_1800C85BE, rva algn_1800C8603, \
                                  rva stru_18014C43C>
                RUNTIME_FUNCTION <rva loc_1800C8604, rva loc_1800C863E, \
                                  rva stru_18014C454>
                RUNTIME_FUNCTION <rva loc_1800C863E, rva algn_1800C865D, \
                                  rva stru_18014C46C>
                RUNTIME_FUNCTION <rva loc_1800C865E, rva algn_1800C867D, \
                                  rva stru_18014C484>
                RUNTIME_FUNCTION <rva loc_1800C867E, rva loc_1800C86A2, \
                                  rva stru_18014C4A4>
                RUNTIME_FUNCTION <rva loc_1800C86A2, rva loc_1800C86CE, \
                                  rva stru_18014C4C8>
                RUNTIME_FUNCTION <rva loc_1800C86CE, rva loc_1800C8720, \
                                  rva stru_18014C4E4>
                RUNTIME_FUNCTION <rva loc_1800C8720, rva algn_1800C8781, \
                                  rva stru_18014C510>
                RUNTIME_FUNCTION <rva loc_1800C8782, rva loc_1800C8812, \
                                  rva stru_18014C538>
                RUNTIME_FUNCTION <rva loc_1800C8812, rva loc_1800C883A, \
                                  rva stru_18014C584>
                RUNTIME_FUNCTION <rva loc_1800C883A, rva algn_1800C8987, \
                                  rva stru_18014C5C4>
                RUNTIME_FUNCTION <rva loc_1800C8988, rva algn_1800C8A2F, \
                                  rva stru_18014C5E8>
                RUNTIME_FUNCTION <rva loc_1800C8A30, rva loc_1800C8A3A, \
                                  rva stru_18014C634>
                RUNTIME_FUNCTION <rva loc_1800C8A3A, rva loc_1800C8AB8, \
                                  rva stru_18014C65C>
                RUNTIME_FUNCTION <rva loc_1800C8ADA, rva algn_1800C8AF3, \
                                  rva stru_18014C674>
                RUNTIME_FUNCTION <rva loc_1800C8AF4, rva algn_1800C8E35, \
                                  rva stru_18014C69C>
                RUNTIME_FUNCTION <rva loc_1800C8E36, rva loc_1800C8F5C, \
                                  rva stru_18014C6C8>
                RUNTIME_FUNCTION <rva loc_1800C8F5C, rva loc_1800C8F7A, \
                                  rva stru_18014C6F0>
                RUNTIME_FUNCTION <rva loc_1800C8F7A, rva loc_1800C8F84, \
                                  rva stru_18014C724>
                RUNTIME_FUNCTION <rva loc_1800C8F84, rva loc_1800C902C, \
                                  rva stru_18014C74C>
                RUNTIME_FUNCTION <rva loc_1800C902C, rva algn_1800C90CD, \
                                  rva stru_18014C794>
                RUNTIME_FUNCTION <rva loc_1800C90CE, rva loc_1800C9106, \
                                  rva stru_18014C7E8>
                RUNTIME_FUNCTION <rva loc_1800C9106, rva algn_1800C9189, \
                                  rva stru_18014C814>
                RUNTIME_FUNCTION <rva loc_1800C918A, rva algn_1800C9273, \
                                  rva stru_18014C848>
                RUNTIME_FUNCTION <rva loc_1800C9274, rva algn_1800C9349, \
                                  rva stru_18014C890>
                RUNTIME_FUNCTION <rva loc_1800C934A, rva loc_1800C940E, \
                                  rva stru_18014C8C4>
                RUNTIME_FUNCTION <rva loc_1800C940E, rva algn_1800C9435, \
                                  rva stru_18014C8F0>
                RUNTIME_FUNCTION <rva loc_1800C9436, rva loc_1800C943E, \
                                  rva stru_18014C938>
                RUNTIME_FUNCTION <rva loc_1800C943E, rva loc_1800C9474, \
                                  rva stru_18014C95C>
                RUNTIME_FUNCTION <rva loc_1800C9474, rva algn_1800C949F, \
                                  rva stru_18014C97C>
                RUNTIME_FUNCTION <rva loc_1800C94B6, rva loc_1800C94C4, \
                                  rva stru_18014C994>
                RUNTIME_FUNCTION <rva loc_1800C94C4, rva loc_1800C94DC, \
                                  rva stru_18014C9AC>
                RUNTIME_FUNCTION <rva loc_1800C94DC, rva loc_1800C94F0, \
                                  rva stru_18014C9F4>
                RUNTIME_FUNCTION <rva loc_1800C94F0, rva loc_1800C97D0, \
                                  rva stru_18014CA54>
                RUNTIME_FUNCTION <rva loc_1800C97D0, rva loc_1800C980C, \
                                  rva stru_18014CA6C>
                RUNTIME_FUNCTION <rva loc_1800C980C, rva loc_1800C9816, \
                                  rva stru_18014CA94>
                RUNTIME_FUNCTION <rva loc_1800C9816, rva loc_1800C9834, \
                                  rva stru_18014CAC0>
                RUNTIME_FUNCTION <rva loc_1800C9834, rva loc_1800C9846, \
                                  rva stru_18014CAE0>
                RUNTIME_FUNCTION <rva loc_1800C9846, rva algn_1800C98B9, \
                                  rva stru_18014CB00>
                RUNTIME_FUNCTION <rva loc_1800C98BA, rva algn_1800C98D7, \
                                  rva stru_18014CB24>
                RUNTIME_FUNCTION <rva loc_1800C98D8, rva algn_1800C9953, \
                                  rva stru_18014CB4C>
                RUNTIME_FUNCTION <rva loc_1800C9954, rva loc_1800C9996, \
                                  rva stru_18014CB6C>
                RUNTIME_FUNCTION <rva loc_1800C9996, rva algn_1800C99CF, \
                                  rva stru_18014CB84>
                RUNTIME_FUNCTION <rva loc_1800C99D0, rva loc_1800C9A42, \
                                  rva stru_18014CBA8>
                RUNTIME_FUNCTION <rva loc_1800C9A42, rva loc_1800C9A4C, \
                                  rva stru_18014CBF0>
                RUNTIME_FUNCTION <rva loc_1800C9A4C, rva algn_1800C9A5D, \
                                  rva stru_18014CC24>
                RUNTIME_FUNCTION <rva loc_1800C9A5E, rva loc_1800C9A94, \
                                  rva stru_18014CC48>
                RUNTIME_FUNCTION <rva loc_1800C9A94, rva loc_1800C9AF2, \
                                  rva stru_18014CC80>
                RUNTIME_FUNCTION <rva loc_1800C9AF2, rva loc_1800C9B08, \
                                  rva stru_18014CCB4>
                RUNTIME_FUNCTION <rva loc_1800C9B08, rva loc_1800C9B9C, \
                                  rva stru_18014CCD0>
                RUNTIME_FUNCTION <rva loc_1800C9B9C, rva algn_1800C9BCF, \
                                  rva stru_18014CCF0>
                RUNTIME_FUNCTION <rva loc_1800C9BD0, rva loc_1800C9C20, \
                                  rva stru_18014CD30>
                RUNTIME_FUNCTION <rva loc_1800C9C20, rva algn_1800C9C2F, \
                                  rva stru_18014CD50>
                RUNTIME_FUNCTION <rva loc_1800C9C52, rva loc_1800C9C72, \
                                  rva stru_18014CD78>
                RUNTIME_FUNCTION <rva loc_1800C9C84, rva loc_1800C9C9A, \
                                  rva stru_18014CD9C>
                RUNTIME_FUNCTION <rva loc_1800C9CE4, rva algn_1800C9D65, \
                                  rva stru_18014CDCC>
                RUNTIME_FUNCTION <rva loc_1800C9D66, rva algn_1800C9DB9, \
                                  rva stru_18014CDE4>
                RUNTIME_FUNCTION <rva loc_1800C9DBA, rva algn_1800C9E6F, \
                                  rva stru_18014CE50>
                RUNTIME_FUNCTION <rva loc_1800C9E70, rva algn_1800C9E9D, \
                                  rva stru_18014CE7C>
                RUNTIME_FUNCTION <rva loc_1800C9E9E, rva algn_1800C9EDD, \
                                  rva stru_18014CE9C>
                RUNTIME_FUNCTION <rva loc_1800C9EDE, rva algn_1800C9F31, \
                                  rva stru_18014CEC4>
                RUNTIME_FUNCTION <rva loc_1800C9F32, rva algn_1800C9FDB, \
                                  rva stru_18014CEF8>
                RUNTIME_FUNCTION <rva loc_1800C9FDC, rva algn_1800CA053, \
                                  rva stru_18014CF14>
                RUNTIME_FUNCTION <rva loc_1800CA054, rva algn_1800CA093, \
                                  rva stru_18014CF2C>
                RUNTIME_FUNCTION <rva loc_1800CA094, rva algn_1800CA0C5, \
                                  rva stru_18014CF50>
                RUNTIME_FUNCTION <rva loc_1800CA0C6, rva loc_1800CA106, \
                                  rva stru_18014CF6C>
                RUNTIME_FUNCTION <rva loc_1800CA106, rva loc_1800CA172, \
                                  rva stru_18014CF9C>
                RUNTIME_FUNCTION <rva loc_1800CA172, rva loc_1800CA192, \
                                  rva stru_18014CFC8>
                RUNTIME_FUNCTION <rva loc_1800CA1D8, rva algn_1800CA1E7, \
                                  rva stru_18014D000>
                RUNTIME_FUNCTION <rva loc_1800CA1E8, rva loc_1800CA206, \
                                  rva stru_18014D024>
                RUNTIME_FUNCTION <rva loc_1800CA206, rva algn_1800CA30D, \
                                  rva stru_18014D04C>
                RUNTIME_FUNCTION <rva loc_1800CA30E, rva loc_1800CA330, \
                                  rva stru_18014D064>
                RUNTIME_FUNCTION <rva loc_1800CA330, rva algn_1800CA385, \
                                  rva stru_18014D090>
                RUNTIME_FUNCTION <rva loc_1800CA386, rva loc_1800CA3AC, \
                                  rva stru_18014D0B0>
                RUNTIME_FUNCTION <rva loc_1800CA3AC, rva algn_1800CA3B9, \
                                  rva stru_18014D0D4>
                RUNTIME_FUNCTION <rva loc_1800CA3BA, rva loc_1800CA4CE, \
                                  rva stru_18014D0F4>
                RUNTIME_FUNCTION <rva loc_1800CA4CE, rva loc_1800CA530, \
                                  rva stru_18014D118>
                RUNTIME_FUNCTION <rva loc_1800CA530, rva algn_1800CA6DF, \
                                  rva stru_18014D14C>
                RUNTIME_FUNCTION <rva loc_1800CA6E0, rva loc_1800CA726, \
                                  rva stru_18014D178>
                RUNTIME_FUNCTION <rva loc_1800CA726, rva algn_1800CA791, \
                                  rva stru_18014D1A0>
                RUNTIME_FUNCTION <rva loc_1800CA792, rva algn_1800CA7AF, \
                                  rva stru_18014D1B8>
                RUNTIME_FUNCTION <rva loc_1800CA7B0, rva algn_1800CA7C5, \
                                  rva stru_18014D1DC>
                RUNTIME_FUNCTION <rva loc_1800CA7C6, rva loc_1800CA7FE, \
                                  rva stru_18014D200>
                RUNTIME_FUNCTION <rva loc_1800CA7FE, rva loc_1800CA808, \
                                  rva stru_18014D228>
                RUNTIME_FUNCTION <rva loc_1800CA808, rva loc_1800CA812, \
                                  rva stru_18014D248>
                RUNTIME_FUNCTION <rva loc_1800CA812, rva algn_1800CA8F7, \
                                  rva stru_18014D27C>
                RUNTIME_FUNCTION <rva loc_1800CA9B2, rva loc_1800CA9FC, \
                                  rva stru_18014D2A4>
                RUNTIME_FUNCTION <rva loc_1800CA9FC, rva loc_1800CAA04, \
                                  rva stru_18014D2D0>
                RUNTIME_FUNCTION <rva loc_1800CAA04, rva loc_1800CAA38, \
                                  rva stru_18014D2EC>
                RUNTIME_FUNCTION <rva loc_1800CAA38, rva loc_1800CAA58, \
                                  rva stru_18014D330>
                RUNTIME_FUNCTION <rva loc_1800CAA58, rva algn_1800CAA91, \
                                  rva stru_18014D38C>
                RUNTIME_FUNCTION <rva loc_1800CAA92, rva loc_1800CAAF8, \
                                  rva stru_18014D3D0>
                RUNTIME_FUNCTION <rva loc_1800CAAF8, rva loc_1800CAB02, \
                                  rva stru_18014D3EC>
                RUNTIME_FUNCTION <rva loc_1800CAB02, rva algn_1800CAB99, \
                                  rva stru_18014D414>
                RUNTIME_FUNCTION <rva loc_1800CAB9A, rva loc_1800CAC76, \
                                  rva stru_18014D440>
                RUNTIME_FUNCTION <rva loc_1800CAC76, rva algn_1800CADDF, \
                                  rva stru_18014D480>
                RUNTIME_FUNCTION <rva loc_1800CADE0, rva algn_1800CAE09, \
                                  rva stru_18014D498>
                RUNTIME_FUNCTION <rva loc_1800CAE0A, rva loc_1800CAE70, \
                                  rva stru_18014D4D8>
                RUNTIME_FUNCTION <rva loc_1800CAE70, rva algn_1800CAEBF, \
                                  rva stru_18014D51C>
                RUNTIME_FUNCTION <rva loc_1800CAEC0, rva algn_1800CAEF5, \
                                  rva stru_18014D534>
                RUNTIME_FUNCTION <rva loc_1800CAEF6, rva algn_1800CAF21, \
                                  rva stru_18014D558>
                RUNTIME_FUNCTION <rva loc_1800CAF22, rva algn_1800CAF67, \
                                  rva stru_18014D580>
                RUNTIME_FUNCTION <rva loc_1800CAF68, rva algn_1800CAFA3, \
                                  rva stru_18014D5F8>
                RUNTIME_FUNCTION <rva loc_1800CAFA4, rva algn_1800CAFAF, \
                                  rva stru_18014D640>
                RUNTIME_FUNCTION <rva loc_1800CAFB0, rva algn_1800CAFC9, \
                                  rva stru_18014D658>
                RUNTIME_FUNCTION <rva loc_1800CAFCA, rva loc_1800CAFF0, \
                                  rva stru_18014D684>
                RUNTIME_FUNCTION <rva loc_1800CAFF0, rva loc_1800CAFFA, \
                                  rva stru_18014D6A8>
                RUNTIME_FUNCTION <rva loc_1800CAFFA, rva algn_1800CB017, \
                                  rva stru_18014D6CC>
                RUNTIME_FUNCTION <rva loc_1800CB018, rva loc_1800CB1A8, \
                                  rva stru_18014D710>
                RUNTIME_FUNCTION <rva loc_1800CB1A8, rva algn_1800CB1F1, \
                                  rva stru_18014D750>
                RUNTIME_FUNCTION <rva loc_1800CB1F2, rva loc_1800CB244, \
                                  rva stru_18014D788>
                RUNTIME_FUNCTION <rva loc_1800CB244, rva algn_1800CB275, \
                                  rva stru_18014D7A4>
                RUNTIME_FUNCTION <rva loc_1800CB2CA, rva loc_1800CB2F0, \
                                  rva stru_18014D7CC>
                RUNTIME_FUNCTION <rva loc_1800CB2F0, rva loc_1800CB3B8, \
                                  rva stru_18014D7F4>
                RUNTIME_FUNCTION <rva loc_1800CB3B8, rva loc_1800CB3E6, \
                                  rva stru_18014D810>
                RUNTIME_FUNCTION <rva loc_1800CB3E6, rva algn_1800CB404, \
                                  rva stru_18014D828>
                RUNTIME_FUNCTION <rva LdrAppxHandleIntegrityFailure, \
                                  rva algn_1800CB6B9, rva stru_18014EC2C>
                RUNTIME_FUNCTION <rva sub_1800CB6C0, rva algn_1800CB741, \
                                  rva stru_18014EC88>
                RUNTIME_FUNCTION <rva sub_1800CB748, rva algn_1800CB83A, \
                                  rva stru_18014EC98>
                RUNTIME_FUNCTION <rva sub_1800CB840, rva byte_1800CB98D, \
                                  rva stru_18014EC4C>
                RUNTIME_FUNCTION <rva sub_1800CB994, rva algn_1800CBBB3, \
                                  rva stru_18014EC68>
                RUNTIME_FUNCTION <rva RtlAppxIsFileOwnedByTrustedInstaller, \
                                  rva algn_1800CBD2A, rva stru_18014ECB0>
                RUNTIME_FUNCTION <rva RtlDisableThreadProfiling, rva algn_1800CBD8C, \
                                  rva stru_180147AEC>
                RUNTIME_FUNCTION <rva RtlEnableThreadProfiling, rva algn_1800CBE94, \
                                  rva stru_18014ECDC>
                RUNTIME_FUNCTION <rva RtlQueryThreadProfiling, rva algn_1800CBEC2, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlReadThreadProfilingData, rva algn_1800CC022, \
                                  rva stru_18014ECC0>
                RUNTIME_FUNCTION <rva RtlAppendPathElement, rva algn_1800CC271, \
                                  rva stru_18014ECF4>
                RUNTIME_FUNCTION <rva RtlDosLongPathNameToNtPathName_U_WithStatus, \
                                  rva algn_1800CC2A2, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlDosLongPathNameToRelativeNtPathName_U_WithStatus,\
                                  rva algn_1800CC2D2, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlNtPathNameToDosPathName, rva byte_1800CC4E0, \
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_1800CC4E8, rva algn_1800CC554, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva DbgUiConnectToDbg, rva algn_1800CC5C6, \
                                  rva stru_1801410F8>
                RUNTIME_FUNCTION <rva sub_1800CC620, rva algn_1800CC8AD, \
                                  rva stru_18014ED1C>
                RUNTIME_FUNCTION <rva DbgUiDebugActiveProcess, rva byte_1800CC91C, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva DbgUiIssueRemoteBreakin, rva algn_1800CC9AF, \
                                  rva stru_18014ED28>
                RUNTIME_FUNCTION <rva DbgUiRemoteBreakin, rva algn_1800CCA18, \
                                  rva stru_18014ED30>
                RUNTIME_FUNCTION <rva LdrCreateEnclave, rva byte_1800CCB9E, \
                                  rva stru_18014ED90>
                RUNTIME_FUNCTION <rva LdrDeleteEnclave, rva algn_1800CCC37, \
                                  rva stru_18014ED50>
                RUNTIME_FUNCTION <rva LdrInitializeEnclave, rva algn_1800CCD38, \
                                  rva stru_18014ECDC>
                RUNTIME_FUNCTION <rva sub_1800CCD40, rva algn_1800CCDD8, \
                                  rva stru_18014ED60>
                RUNTIME_FUNCTION <rva LdrLoadEnclaveModule, rva algn_1800CCF61, \
                                  rva stru_18014ED70>
                RUNTIME_FUNCTION <rva sub_1800CCF68, rva byte_1800CD02B, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800CD034, rva byte_1800CD113, \
                                  rva stru_1801459E8>
                RUNTIME_FUNCTION <rva sub_1800CD11C, rva byte_1800CD206, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800CD20C, rva algn_1800CD287, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800CD290, rva byte_1800CD2D6, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800CD2DC, rva byte_1800CD394, \
                                  rva stru_18014EE4C>
                RUNTIME_FUNCTION <rva sub_1800CD39C, rva byte_1800CD4CB, \
                                  rva stru_18014EE64>
                RUNTIME_FUNCTION <rva sub_1800CD4D4, rva algn_1800CD5A8, \
                                  rva stru_18014EE34>
                RUNTIME_FUNCTION <rva sub_1800CD5B0, rva algn_1800CD6CA, \
                                  rva stru_18014EDD0>
                RUNTIME_FUNCTION <rva LdrCallEnclave_0, rva algn_1800CD772, \
                                  rva stru_18014EDEC>
                RUNTIME_FUNCTION <rva sub_1800CD778, rva byte_1800CD945, \
                                  rva stru_18014EE1C>
                RUNTIME_FUNCTION <rva sub_1800CD94C, rva algn_1800CDA05, \
                                  rva stru_18014EE84>
                RUNTIME_FUNCTION <rva sub_1800CDA28, rva byte_1800CDAA0, \
                                  rva stru_18014EE9C>
                RUNTIME_FUNCTION <rva sub_1800CDAA8, rva algn_1800CDB99, \
                                  rva stru_18014EEBC>
                RUNTIME_FUNCTION <rva sub_1800CDBA0, rva algn_1800CDD68, \
                                  rva stru_18014EEA4>
                RUNTIME_FUNCTION <rva sub_1800CDD70, rva algn_1800CDDE3, \
                                  rva stru_18014EECC>
                RUNTIME_FUNCTION <rva LdrIsModuleSxsRedirected, rva algn_1800CDE35, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800CDE40, rva algn_1800CDEE1, \
                                  rva stru_18014EF44>
                RUNTIME_FUNCTION <rva sub_1800CDEF0, rva algn_1800CDFE5, \
                                  rva stru_18014EF24>
                RUNTIME_FUNCTION <rva LdrQueryModuleServiceTags, rva algn_1800CE08C, \
                                  rva stru_18014EED8>
                RUNTIME_FUNCTION <rva sub_1800CE0A0, rva byte_1800CE0CF, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800CE0D8, rva loc_1800CE43D, \
                                  rva stru_18014EEEC>
                RUNTIME_FUNCTION <rva loc_1800CE43D, rva algn_1800CE482, \
                                  rva stru_18014EF1C>
                RUNTIME_FUNCTION <rva LdrSetImplicitPathOptions, rva algn_1800CE4EF, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva LdrUnregisterDllNotification, \
                                  rva byte_1800CE5A0, rva stru_1801410A0>
                RUNTIME_FUNCTION <rva LdrVerifyImageMatchesChecksum, \
                                  rva algn_1800CE60A, rva stru_180148F14>
                RUNTIME_FUNCTION <rva sub_1800CE658, rva byte_1800CE7E0, \
                                  rva stru_18014EF54>
                RUNTIME_FUNCTION <rva LdrQueryOptionalDelayLoadedAPI, \
                                  rva algn_1800CE8A8, rva stru_1801434C4>
                RUNTIME_FUNCTION <rva LdrResolveDelayLoadsFromDll, rva byte_1800CE8F0,\
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800CE8F8, rva byte_1800CE99C, \
                                  rva stru_18014EF68>
                RUNTIME_FUNCTION <rva sub_1800CE9A4, rva byte_1800CEA33, \
                                  rva stru_18014EF80>
                RUNTIME_FUNCTION <rva sub_1800CEA3C, rva algn_1800CEAEA, \
                                  rva stru_18014EF68>
                RUNTIME_FUNCTION <rva sub_1800CEAF0, rva algn_1800CEC82, \
                                  rva stru_18014F094>
                RUNTIME_FUNCTION <rva sub_1800CEC88, rva byte_1800CECE6, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_1800CECEC, rva byte_1800CED56, \
                                  rva stru_18014F06C>
                RUNTIME_FUNCTION <rva sub_1800CED5C, rva byte_1800CEDEC, \
                                  rva stru_18014F0B0>
                RUNTIME_FUNCTION <rva sub_1800CEDF4, rva algn_1800CF097, \
                                  rva stru_18014F018>
                RUNTIME_FUNCTION <rva sub_1800CF0A0, rva algn_1800CF241, \
                                  rva stru_18014F044>
                RUNTIME_FUNCTION <rva sub_1800CF248, rva algn_1800CF343, \
                                  rva stru_18014F0C0>
                RUNTIME_FUNCTION <rva sub_1800CF350, rva byte_1800CF4DD, \
                                  rva stru_18014F078>
                RUNTIME_FUNCTION <rva sub_1800CF4E4, rva algn_1800CF5E9, \
                                  rva stru_18014EFD8>
                RUNTIME_FUNCTION <rva sub_1800CF5F0, rva byte_1800CF8ED, \
                                  rva stru_18014EFF0>
                RUNTIME_FUNCTION <rva sub_1800CF8F4, rva algn_1800CFA67, \
                                  rva stru_18014EFB4>
                RUNTIME_FUNCTION <rva sub_1800CFA70, rva byte_1800CFB7C, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_1800CFB84, rva algn_1800CFCC8, \
                                  rva stru_18014EF94>
                RUNTIME_FUNCTION <rva sub_1800CFCD0, rva byte_1800CFDCC, \
                                  rva stru_18014F0DC>
                RUNTIME_FUNCTION <rva sub_1800CFDD4, rva byte_1800CFEAD, \
                                  rva stru_18014F0F8>
                RUNTIME_FUNCTION <rva sub_1800CFEB4, rva byte_1800CFF8D, \
                                  rva stru_18014F0F8>
                RUNTIME_FUNCTION <rva sub_1800CFF94, rva byte_1800D006D, \
                                  rva stru_18014F0F8>
                RUNTIME_FUNCTION <rva sub_1800D0074, rva algn_1800D0182, \
                                  rva stru_18014F030>
                RUNTIME_FUNCTION <rva sub_1800D0188, rva byte_1800D0254, \
                                  rva stru_1801434C4>
                RUNTIME_FUNCTION <rva sub_1800D025C, rva algn_1800D02D0, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800D02E0, rva algn_1800D0302, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800D0354, rva algn_1800D03C5, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva LdrInitShimEngineDynamic, rva byte_1800D04D6, \
                                  rva stru_18014F28C>
                RUNTIME_FUNCTION <rva sub_1800D04DC, rva byte_1800D0615, \
                                  rva stru_18014F10C>
                RUNTIME_FUNCTION <rva sub_1800D061C, rva algn_1800D06F7, \
                                  rva stru_18014F1B8>
                RUNTIME_FUNCTION <rva sub_1800D0700, rva algn_1800D0739, \
                                  rva stru_18014F24C>
                RUNTIME_FUNCTION <rva sub_1800D0740, rva byte_1800D0950, \
                                  rva stru_18014F26C>
                RUNTIME_FUNCTION <rva sub_1800D0958, rva algn_1800D09F8, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1800D0A00, rva byte_1800D0DE6, \
                                  rva stru_18014F1CC>
                RUNTIME_FUNCTION <rva sub_1800D0DEC, rva byte_1800D0EA5, \
                                  rva stru_18014F230>
                RUNTIME_FUNCTION <rva sub_1800D0EAC, rva algn_1800D1C9A, \
                                  rva stru_18014F148>
                RUNTIME_FUNCTION <rva sub_1800D1CA0, rva algn_1800D1CD9, \
                                  rva stru_18014F244>
                RUNTIME_FUNCTION <rva sub_1800D1CE0, rva loc_1800D3E07, \
                                  rva stru_18014F1F0>
                RUNTIME_FUNCTION <rva loc_1800D3E07, rva byte_1800D3E24, \
                                  rva stru_18014F228>
                RUNTIME_FUNCTION <rva sub_1800D3E2C, rva byte_1800D4033, \
                                  rva stru_18014F178>
                RUNTIME_FUNCTION <rva sub_1800D403C, rva byte_1800D40DD, \
                                  rva stru_180149A70>
                RUNTIME_FUNCTION <rva sub_1800D40E4, rva algn_1800D41A9, \
                                  rva stru_18014ECDC>
                RUNTIME_FUNCTION <rva sub_1800D41B0, rva byte_1800D4383, \
                                  rva stru_18014F198>
                RUNTIME_FUNCTION <rva sub_1800D4474, rva algn_1800D459A, \
                                  rva stru_18014F168>
                RUNTIME_FUNCTION <rva sub_1800D45A0, rva byte_1800D483F, \
                                  rva stru_18014F124>
                RUNTIME_FUNCTION <rva sub_1800D48B4, rva algn_1800D4981, \
                                  rva stru_18014F2A0>
                RUNTIME_FUNCTION <rva sub_1800D4988, rva algn_1800D4A29, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800D4A30, rva byte_1800D4AAC, \
                                  rva stru_18014F2B8>
                RUNTIME_FUNCTION <rva sub_1800D4AB4, rva byte_1800D4DDE, \
                                  rva stru_18014F2D8>
                RUNTIME_FUNCTION <rva sub_1800D4DE4, rva algn_1800D4E97, \
                                  rva stru_18014F2C8>
                RUNTIME_FUNCTION <rva sub_1800D4EA0, rva byte_1800D5073, \
                                  rva stru_18014F300>
                RUNTIME_FUNCTION <rva sub_1800D507C, rva byte_1800D50D6, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800D50DC, rva byte_1800D51A3, \
                                  rva stru_18014F320>
                RUNTIME_FUNCTION <rva sub_1800D51AC, rva byte_1800D51EC, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800D51F4, rva algn_1800D52B0, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800D52D0, rva byte_1800D53A5, \
                                  rva stru_18014F344>
                RUNTIME_FUNCTION <rva sub_1800D53AC, rva byte_1800D54E3, \
                                  rva stru_18014F354>
                RUNTIME_FUNCTION <rva RtlComputePrivatizedDllName_U, \
                                  rva algn_1800D5897, rva stru_18014F32C>
                RUNTIME_FUNCTION <rva sub_1800D58E4, rva byte_1800D594D, \
                                  rva stru_1801413BC>
                RUNTIME_FUNCTION <rva sub_1800D5954, rva algn_1800D59C4, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva RtlCreateProcessReflection, rva algn_1800D5F56, \
                                  rva stru_18014F378>
                RUNTIME_FUNCTION <rva sub_1800D5F60, rva algn_1800D62C3, \
                                  rva stru_18014F360>
                RUNTIME_FUNCTION <rva RtlCloneUserProcess, rva algn_1800D6556, \
                                  rva stru_18014F3BC>
                RUNTIME_FUNCTION <rva RtlCreateProcessParameters, rva algn_1800D65C4, \
                                  rva stru_180146F64>
                RUNTIME_FUNCTION <rva RtlWow64LogMessageInEventLogger, \
                                  rva algn_1800D6801, rva stru_18014F398>
                RUNTIME_FUNCTION <rva RtlCreateUserSecurityObject, rva algn_1800D68AE,\
                                  rva stru_18014ED1C>
                RUNTIME_FUNCTION <rva RtlDefaultNpAcl, rva algn_1800D6C86, \
                                  rva stru_18014F3D8>
                RUNTIME_FUNCTION <rva RtlNewInstanceSecurityObject, \
                                  rva algn_1800D6DB3, rva stru_18014F418>
                RUNTIME_FUNCTION <rva RtlNewSecurityGrantedAccess, rva algn_1800D6EE4,\
                                  rva stru_18014F3FC>
                RUNTIME_FUNCTION <rva RtlQuerySecurityObject, rva algn_1800D71F7, \
                                  rva stru_18014F440>
                RUNTIME_FUNCTION <rva RtlSetSecurityObjectEx, rva algn_1800D723A, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva RtlCreateQueryDebugBuffer, rva byte_1800D74E0, \
                                  rva stru_18014F598>
                RUNTIME_FUNCTION <rva RtlDestroyQueryDebugBuffer, rva algn_1800D7533, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlQueryProcessBackTraceInformation, \
                                  rva loc_1800D76A3, rva stru_18014F518>
                RUNTIME_FUNCTION <rva loc_1800D76A3, rva byte_1800D76BE, \
                                  rva stru_18014F548>
                RUNTIME_FUNCTION <rva RtlQueryProcessDebugInformation, \
                                  rva algn_1800D7BA2, rva stru_18014F574>
                RUNTIME_FUNCTION <rva RtlQueryProcessHeapInformation, \
                                  rva loc_1800D7F65, rva stru_18014F4DC>
                RUNTIME_FUNCTION <rva loc_1800D7F65, rva byte_1800D7F80, \
                                  rva stru_18014F510>
                RUNTIME_FUNCTION <rva RtlQueryProcessLockInformation, \
                                  rva loc_1800D820E, rva stru_18014F488>
                RUNTIME_FUNCTION <rva loc_1800D820E, rva algn_1800D8229, \
                                  rva stru_18014F4D4>
                RUNTIME_FUNCTION <rva sub_1800D8230, rva algn_1800D8329, \
                                  rva stru_18014F550>
                RUNTIME_FUNCTION <rva RtlSetProcessDebugInformation, \
                                  rva algn_1800D84D9, rva stru_18014F564>
                RUNTIME_FUNCTION <rva sub_1800D84E0, rva algn_1800D855A, \
                                  rva stru_18014F5D4>
                RUNTIME_FUNCTION <rva sub_1800D8560, rva algn_1800D8851, \
                                  rva stru_18014F5B4>
                RUNTIME_FUNCTION <rva RtlCommitDebugInfo_0, rva algn_1800D88EA, \
                                  rva stru_18014F5A8>
                RUNTIME_FUNCTION <rva sub_1800D88F0, rva byte_1800D8AA6, \
                                  rva stru_18014F458>
                RUNTIME_FUNCTION <rva sub_1800D8ADC, rva algn_1800D8B25, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlpQueryProcessDebugInformationFromWow64, \
                                  rva algn_1800D8BC8, rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlpQueryProcessDebugInformationRemote, \
                                  rva algn_1800D8CB7, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800D8CC0, rva byte_1800D8DBD, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800D8DD0, rva algn_1800D8E12, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva sub_1800D8E20, rva byte_1800D8E8F, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800D8E98, rva byte_1800D8FA5, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800D8FAC, rva algn_1800D9390, \
                                  rva stru_18014F46C>
                RUNTIME_FUNCTION <rva sub_1800D93A0, rva algn_1800D958A, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800D95C0, rva byte_1800D969D, \
                                  rva stru_180141318>
                RUNTIME_FUNCTION <rva sub_1800D96A4, rva algn_1800D9762, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_1800D9768, rva algn_1800DA1C7, \
                                  rva stru_18014F708>
                RUNTIME_FUNCTION <rva sub_1800DA1D0, rva byte_1800DA263, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800DA26C, rva byte_1800DA36B, \
                                  rva stru_18014F6F8>
                RUNTIME_FUNCTION <rva sub_1800DA374, rva algn_1800DA472, \
                                  rva stru_18014F5E4>
                RUNTIME_FUNCTION <rva sub_1800DA478, rva byte_1800DA58F, \
                                  rva stru_180145E8C>
                RUNTIME_FUNCTION <rva sub_1800DA598, rva algn_1800DA67A, \
                                  rva stru_18014F610>
                RUNTIME_FUNCTION <rva sub_1800DA680, rva byte_1800DA756, \
                                  rva stru_18014F658>
                RUNTIME_FUNCTION <rva sub_1800DA75C, rva algn_1800DA889, \
                                  rva stru_18014F63C>
                RUNTIME_FUNCTION <rva sub_1800DA890, rva algn_1800DA902, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800DA974, rva byte_1800DAA1B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800DAA24, rva algn_1800DAB8A, \
                                  rva stru_18014F670>
                RUNTIME_FUNCTION <rva sub_1800DABC8, rva algn_1800DAEEA, \
                                  rva stru_18014F68C>
                RUNTIME_FUNCTION <rva sub_1800DAEF0, rva byte_1800DB07D, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_1800DB084, rva byte_1800DB143, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800DB14C, rva byte_1800DB19D, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800DB1A4, rva algn_1800DB228, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800DB230, rva algn_1800DB429, \
                                  rva stru_18014F624>
                RUNTIME_FUNCTION <rva sub_1800DB430, rva algn_1800DB4E9, \
                                  rva stru_18014F604>
                RUNTIME_FUNCTION <rva sub_1800DB4F0, rva algn_1800DBDE2, \
                                  rva stru_18014F6D4>
                RUNTIME_FUNCTION <rva RtlApplicationVerifierStop, rva byte_1800DBE8C, \
                                  rva stru_18014CED4>
                RUNTIME_FUNCTION <rva sub_1800DBE94, rva algn_1800DBF7A, \
                                  rva stru_18014ED1C>
                RUNTIME_FUNCTION <rva RtlWow64GetThreadContext, rva algn_1800DBFC3, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlWow64GetThreadSelectorEntry, \
                                  rva algn_1800DC162, rva stru_18014F780>
                RUNTIME_FUNCTION <rva RtlWow64SuspendProcess, rva algn_1800DC2ED, \
                                  rva stru_18014F72C>
                RUNTIME_FUNCTION <rva RtlWow64SuspendThread, rva byte_1800DC540, \
                                  rva stru_18014F744>
                RUNTIME_FUNCTION <rva sub_1800DC548, rva algn_1800DC653, \
                                  rva stru_18014F764>
                RUNTIME_FUNCTION <rva RtlDecodeRemotePointer, rva algn_1800DC716, \
                                  rva stru_180149A14>
                RUNTIME_FUNCTION <rva RtlEncodeRemotePointer, rva byte_1800DC77F, \
                                  rva stru_180149A14>
                RUNTIME_FUNCTION <rva RtlWerpReportException_0, rva algn_1800DC8B2, \
                                  rva stru_18014F860>
                RUNTIME_FUNCTION <rva RtlReportException, rva algn_1800DC984, \
                                  rva stru_180147518>
                RUNTIME_FUNCTION <rva RtlReportExceptionEx, rva loc_1800DCDE6, \
                                  rva stru_18014F7E8>
                RUNTIME_FUNCTION <rva loc_1800DCDE6, rva algn_1800DCE58, \
                                  rva stru_18014F81C>
                RUNTIME_FUNCTION <rva sub_1800DCE60, rva loc_1800DD246, \
                                  rva stru_18014F7A8>
                RUNTIME_FUNCTION <rva loc_1800DD246, rva byte_1800DD2BB, \
                                  rva stru_18014F7E0>
                RUNTIME_FUNCTION <rva sub_1800DD2DC, rva byte_1800DD4E0, \
                                  rva stru_18014F884>
                RUNTIME_FUNCTION <rva sub_1800DD4E8, rva byte_1800DD58D, \
                                  rva stru_18014F8E0>
                RUNTIME_FUNCTION <rva sub_1800DD594, rva byte_1800DD63D, \
                                  rva stru_18014F8D0>
                RUNTIME_FUNCTION <rva WerReportExceptionWorker, rva byte_1800DD6F3, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1800DD6FC, rva byte_1800DD7E4, \
                                  rva stru_18014F8A8>
                RUNTIME_FUNCTION <rva sub_1800DD7EC, rva algn_1800DD839, \
                                  rva stru_18014F824>
                RUNTIME_FUNCTION <rva sub_1800DD840, rva byte_1800DD89C, \
                                  rva stru_18014CED4>
                RUNTIME_FUNCTION <rva sub_1800DD8A4, rva byte_1800DDA04, \
                                  rva stru_18014F850>
                RUNTIME_FUNCTION <rva sub_1800DDA0C, rva algn_1800DDA48, \
                                  rva stru_18014C138>
                RUNTIME_FUNCTION <rva sub_1800DDA50, rva byte_1800DDA90, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1800DDA98, rva byte_1800DDACF, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800DDAD8, rva algn_1800DDB07, \
                                  rva stru_180148F14>
                RUNTIME_FUNCTION <rva sub_1800DDB10, rva byte_1800DDBEE, \
                                  rva stru_18014F830>
                RUNTIME_FUNCTION <rva sub_1800DDBF4, rva byte_1800DDCEC, \
                                  rva stru_18014F928>
                RUNTIME_FUNCTION <rva sub_1800DDCF4, rva byte_1800DDD5D, \
                                  rva stru_18014F5A8>
                RUNTIME_FUNCTION <rva ShipAssert, rva loc_1800DDE6A, \
                                  rva stru_18014F8F0>
                RUNTIME_FUNCTION <rva loc_1800DDE6A, rva algn_1800DDE8A, \
                                  rva stru_18014F920>
                RUNTIME_FUNCTION <rva sub_1800DDECC, rva byte_1800DDF4F, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800DDF58, rva byte_1800DDFCF, \
                                  rva stru_18014F5D4>
                RUNTIME_FUNCTION <rva sub_1800DDFD8, rva algn_1800DE36A, \
                                  rva stru_18014F938>
                RUNTIME_FUNCTION <rva WerReportSQMEvent, rva byte_1800DE415, \
                                  rva stru_18014F960>
                RUNTIME_FUNCTION <rva sub_1800DE41C, rva byte_1800DE4C5, \
                                  rva stru_18014F950>
                RUNTIME_FUNCTION <rva sub_1800DE4CC, rva byte_1800DE575, \
                                  rva stru_18014F950>
                RUNTIME_FUNCTION <rva sub_1800DE57C, rva byte_1800DE61D, \
                                  rva stru_180145DB4>
                RUNTIME_FUNCTION <rva sub_1800DE624, rva algn_1800DE749, \
                                  rva stru_18014F97C>
                RUNTIME_FUNCTION <rva sub_1800DE788, rva algn_1800DE832, \
                                  rva stru_1801467A0>
                RUNTIME_FUNCTION <rva sub_1800DE838, rva algn_1800DE8C2, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_1800DE8C8, rva algn_1800DE951, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_1800DE958, rva byte_1800DE9FD, \
                                  rva stru_1801467A0>
                RUNTIME_FUNCTION <rva sub_1800DEA04, rva algn_1800DEAA9, \
                                  rva stru_1801467A0>
                RUNTIME_FUNCTION <rva LdrUpdatePackageSearchPath, rva byte_1800DEB9E, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_1800DEBA4, rva algn_1800DEC47, \
                                  rva stru_180140CF8>
                RUNTIME_FUNCTION <rva sub_1800DEC50, rva byte_1800DECB5, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800DECBC, rva byte_1800DECF3, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800DECFC, rva algn_1800DED71, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800DED78, rva byte_1800DEDBB, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800DEDC4, rva byte_1800DEE56, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800DEE5C, rva byte_1800DF18C, \
                                  rva stru_18014FA50>
                RUNTIME_FUNCTION <rva sub_1800DF194, rva byte_1800DF24D, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800DF254, rva byte_1800DF2F6, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800DF2FC, rva byte_1800DF3A6, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800DF3AC, rva loc_1800DF54E, \
                                  rva stru_18014FA74>
                RUNTIME_FUNCTION <rva loc_1800DF54E, rva algn_1800DF569, \
                                  rva stru_18014FAA0>
                RUNTIME_FUNCTION <rva sub_1800DF570, rva algn_1800DF6BA, \
                                  rva stru_18014FAA8>
                RUNTIME_FUNCTION <rva RtlZombifyActivationContext, rva algn_1800DF738,\
                                  rva stru_18014F06C>
                RUNTIME_FUNCTION <rva sub_1800DF740, rva loc_1800DF7B1, \
                                  rva stru_18014FB24>
                RUNTIME_FUNCTION <rva loc_1800DF7B1, rva algn_1800DF7D2, \
                                  rva stru_18014FB44>
                RUNTIME_FUNCTION <rva sub_1800DF7D8, rva loc_1800DF8DC, \
                                  rva stru_18014FAE8>
                RUNTIME_FUNCTION <rva loc_1800DF8DC, rva byte_1800DF8FD, \
                                  rva stru_18014FB1C>
                RUNTIME_FUNCTION <rva sub_1800DF904, rva loc_1800DF974, \
                                  rva stru_18014FAC0>
                RUNTIME_FUNCTION <rva loc_1800DF974, rva algn_1800DF995, \
                                  rva stru_18014FAE0>
                RUNTIME_FUNCTION <rva sub_1800DFA08, rva byte_1800DFC90, \
                                  rva stru_18014FB70>
                RUNTIME_FUNCTION <rva sub_1800DFC98, rva algn_1800DFF17, \
                                  rva stru_18014FB58>
                RUNTIME_FUNCTION <rva sub_1800DFF20, rva algn_1800DFFD7, \
                                  rva stru_18014FB4C>
                RUNTIME_FUNCTION <rva sub_1800DFFE0, rva byte_1800E0196, \
                                  rva stru_18014FB84>
                RUNTIME_FUNCTION <rva sub_1800E019C, rva algn_1800E0257, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800E0260, rva byte_1800E031C, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800E0324, rva byte_1800E03A0, \
                                  rva stru_180144E54>
                RUNTIME_FUNCTION <rva sub_1800E03A8, rva algn_1800E048A, \
                                  rva stru_18014FB9C>
                RUNTIME_FUNCTION <rva sub_1800E0490, rva algn_1800E0509, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlComputeImportTableHash, rva algn_1800E0763, \
                                  rva stru_18014FBB8>
                RUNTIME_FUNCTION <rva AlpcAdjustCompletionListConcurrencyCount, \
                                  rva algn_1800E0792, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva DbgPrintReturnControlC, rva byte_1800E0840, \
                                  rva stru_180147368>
                RUNTIME_FUNCTION <rva DbgPrompt, rva algn_1800E088B, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva vDbgPrintEx, rva algn_1800E08E8, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva vDbgPrintExWithPrefix, rva byte_1800E090E, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800E0914, rva algn_1800E09D4, \
                                  rva stru_18014F610>
                RUNTIME_FUNCTION <rva RtlGrowFunctionTable, rva byte_1800E0ADC, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva LdrEnumResources, rva algn_1800E0DB3, \
                                  rva stru_18014FBD0>
                RUNTIME_FUNCTION <rva LdrFindResourceDirectory_U, rva algn_1800E0DDA, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva LdrGetFileNameFromLoadAsDataTable, \
                                  rva byte_1800E0E23, rva stru_18014EE9C>
                RUNTIME_FUNCTION <rva sub_1800E0E2C, rva byte_1800E105D, \
                                  rva stru_18014FC44>
                RUNTIME_FUNCTION <rva sub_1800E1064, rva loc_1800E11CD, \
                                  rva stru_18014FBE8>
                RUNTIME_FUNCTION <rva loc_1800E11CD, rva algn_1800E11E8, \
                                  rva stru_18014FC18>
                RUNTIME_FUNCTION <rva sub_1800E11F0, rva byte_1800E12BB, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva sub_1800E12C4, rva algn_1800E14A8, \
                                  rva stru_18014FC20>
                RUNTIME_FUNCTION <rva sub_1800E14B0, rva byte_1800E15A3, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800E15AC, rva byte_1800E167C, \
                                  rva stru_18014FC60>
                RUNTIME_FUNCTION <rva sub_1800E1684, rva algn_1800E172A, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlCreateUserFiberShadowStack, \
                                  rva algn_1800E17A8, rva stru_180140C5C>
                RUNTIME_FUNCTION <rva RtlCreateUserProcess, rva algn_1800E1830, \
                                  rva stru_18014FC7C>
                RUNTIME_FUNCTION <rva RtlFreeUserFiberShadowStack, rva algn_1800E1867,\
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800E1888, rva algn_1800E190C, \
                                  rva stru_18014EE9C>
                RUNTIME_FUNCTION <rva RtlQueryImageMitigationPolicy, \
                                  rva algn_1800E2427, rva stru_18014FCAC>
                RUNTIME_FUNCTION <rva RtlSetImageMitigationPolicy, rva algn_1800E34F2,\
                                  rva stru_18014FC84>
                RUNTIME_FUNCTION <rva sub_1800E354C, rva byte_1800E3660, \
                                  rva stru_18014FD14>
                RUNTIME_FUNCTION <rva sub_1800E3668, rva algn_1800E36E2, \
                                  rva stru_18014FCE4>
                RUNTIME_FUNCTION <rva sub_1800E36E8, rva algn_1800E38C2, \
                                  rva stru_18014FCF4>
                RUNTIME_FUNCTION <rva sub_1800E38C8, rva algn_1800E3A45, \
                                  rva stru_18014FCD4>
                RUNTIME_FUNCTION <rva LdrProcessRelocationBlock, rva algn_1800E3A75, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800E3A8C, rva byte_1800E3B53, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_1800E3B5C, rva algn_1800E3CD7, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlQueryModuleInformation, rva algn_1800E3F4B, \
                                  rva stru_18014FD34>
                RUNTIME_FUNCTION <rva LdrResFindResource, rva algn_1800E3FD8, \
                                  rva stru_18014CED4>
                RUNTIME_FUNCTION <rva sub_1800E3FE0, rva byte_1800E414D, \
                                  rva stru_18014FDAC>
                RUNTIME_FUNCTION <rva sub_1800E4154, rva algn_1800E44C2, \
                                  rva stru_18014FD8C>
                RUNTIME_FUNCTION <rva sub_1800E44C8, rva byte_1800E4574, \
                                  rva stru_18014ED60>
                RUNTIME_FUNCTION <rva sub_1800E457C, rva byte_1800E4C5F, \
                                  rva stru_18014FD58>
                RUNTIME_FUNCTION <rva sub_1800E4C68, rva byte_1800E4CA5, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_1800E4CAC, rva byte_1800E4D00, \
                                  rva stru_1801463C0>
                RUNTIME_FUNCTION <rva sub_1800E4D08, rva algn_1800E4F12, \
                                  rva stru_18014FDC4>
                RUNTIME_FUNCTION <rva RtlConsoleMultiByteToUnicodeN, \
                                  rva algn_1800E5088, rva stru_1801438B4>
                RUNTIME_FUNCTION <rva RtlCustomCPToUnicodeN, rva byte_1800E51DC, \
                                  rva stru_18014FDF8>
                RUNTIME_FUNCTION <rva RtlInitNlsTables, rva byte_1800E535B, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlResetRtlTranslations, rva algn_1800E558E, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva RtlUnicodeToCustomCPN, rva algn_1800E56C8, \
                                  rva stru_18014FDF8>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeToCustomCPN, rva byte_1800E581B,\
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_1800E5824, rva byte_1800E591E, \
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_1800E5924, rva byte_1800E5A3B, \
                                  rva stru_18014FE0C>
                RUNTIME_FUNCTION <rva RtlGetMultiTimePrecise, rva algn_1800E5C2E, \
                                  rva stru_18014FE2C>
                RUNTIME_FUNCTION <rva RtlLocalTimeToSystemTime, rva byte_1800E5CBE, \
                                  rva stru_18014BD10>
                RUNTIME_FUNCTION <rva sub_1800E5CF8, rva algn_1800E5E72, \
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva PfxFindPrefix, rva algn_1800E5FCE, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva PfxInsertPrefix, rva algn_1800E6114, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva PfxRemovePrefix, rva algn_1800E61E4, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlApplyRXact, rva algn_1800E6296, \
                                  rva stru_18014FE44>
                RUNTIME_FUNCTION <rva RtlCopySidAndAttributesArray, \
                                  rva algn_1800E63B5, rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlGetSessionProperties, rva algn_1800E648A, \
                                  rva stru_18014FE54>
                RUNTIME_FUNCTION <rva RtlIsUntrustedObject, rva algn_1800E6610, \
                                  rva stru_18014FE8C>
                RUNTIME_FUNCTION <rva RtlNormalizeSecurityDescriptor, \
                                  rva algn_1800E6AEA, rva stru_18014FEC4>
                RUNTIME_FUNCTION <rva RtlReplaceSidInSd, rva algn_1800E6E07, \
                                  rva stru_18014FEAC>
                RUNTIME_FUNCTION <rva RtlRunDecodeUnicodeString, rva byte_1800E6E60, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlRunEncodeUnicodeString, rva algn_1800E6F21, \
                                  rva stru_1801427CC>
                RUNTIME_FUNCTION <rva RtlSidEqualLevel, rva byte_1800E6FDF, \
                                  rva stru_180149928>
                RUNTIME_FUNCTION <rva RtlSidIsHigherLevel, rva byte_1800E706F, \
                                  rva stru_180149928>
                RUNTIME_FUNCTION <rva sub_1800E70A0, rva algn_1800E72FA, \
                                  rva stru_18014FF18>
                RUNTIME_FUNCTION <rva sub_1800E7300, rva byte_1800E742F, \
                                  rva stru_18014F3BC>
                RUNTIME_FUNCTION <rva sub_1800E7438, rva byte_1800E772D, \
                                  rva stru_18014FF38>
                RUNTIME_FUNCTION <rva sub_1800E7734, rva byte_1800E7F50, \
                                  rva stru_18014FEF4>
                RUNTIME_FUNCTION <rva RtlConvertToAutoInheritSecurityObject_0, \
                                  rva byte_1800E84A3, rva stru_18014FF70>
                RUNTIME_FUNCTION <rva sub_1800E84AC, rva algn_1800E8737, \
                                  rva stru_18014FEDC>
                RUNTIME_FUNCTION <rva sub_1800E8740, rva byte_1800E88FE, \
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_1800E8904, rva byte_1800E8A4D, \
                                  rva stru_18014FE70>
                RUNTIME_FUNCTION <rva sub_1800E8A54, rva algn_1800E8BA8, \
                                  rva stru_18014FF50>
                RUNTIME_FUNCTION <rva RtlTryConvertSRWLockSharedToExclusiveOrRelease, \
                                  rva byte_1800E8C20, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlDumpResource, rva algn_1800E8C7A, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlQueryCriticalSectionOwner, rva loc_1800E8EE2,\
                                  rva stru_18014FFE8>
                RUNTIME_FUNCTION <rva loc_1800E8EE2, rva byte_1800E8EFF, \
                                  rva stru_180150014>
                RUNTIME_FUNCTION <rva RtlpNotOwnerCriticalSection, rva loc_1800E9052, \
                                  rva stru_18014FF88>
                RUNTIME_FUNCTION <rva loc_1800E9052, rva algn_1800E9072, \
                                  rva stru_18014FFA8>
                RUNTIME_FUNCTION <rva sub_1800E9078, rva loc_1800E922E, \
                                  rva stru_18014FFB0>
                RUNTIME_FUNCTION <rva loc_1800E922E, rva algn_1800E9249, \
                                  rva stru_18014FFE0>
                RUNTIME_FUNCTION <rva RtlpUnWaitCriticalSection, rva byte_1800E929F, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlAddAccessAllowedObjectAce, \
                                  rva algn_1800E930A, rva stru_180140F00>
                RUNTIME_FUNCTION <rva RtlAddAccessDeniedObjectAce, rva algn_1800E936A,\
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva RtlAddAccessFilterAce, rva algn_1800E9575, \
                                  rva stru_18015007C>
                RUNTIME_FUNCTION <rva RtlAddCompoundAce, rva algn_1800E9758, \
                                  rva stru_18015009C>
                RUNTIME_FUNCTION <rva RtlAddResourceAttributeAce, rva algn_1800E9AA1, \
                                  rva stru_180150054>
                RUNTIME_FUNCTION <rva RtlAddScopedPolicyIDAce, rva byte_1800E9C2C, \
                                  rva stru_180150034>
                RUNTIME_FUNCTION <rva sub_1800E9C34, rva algn_1800E9D21, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800E9D70, rva algn_1800E9EF4, \
                                  rva stru_180149A40>
                RUNTIME_FUNCTION <rva RtlpConvertAbsoluteToRelativeSecurityAttribute, \
                                  rva algn_1800EA264, rva stru_180145E8C>
                RUNTIME_FUNCTION <rva RtlpConvertRelativeToAbsoluteSecurityAttribute, \
                                  rva algn_1800EA77A, rva stru_180145E8C>
                RUNTIME_FUNCTION <rva sub_1800EA780, rva byte_1800EA95E, \
                                  rva stru_18015001C>
                RUNTIME_FUNCTION <rva sub_1800EA9CC, rva byte_1800EAB44, \
                                  rva stru_1801500B8>
                RUNTIME_FUNCTION <rva sub_1800EAB4C, rva algn_1800EABB7, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800EABC0, rva byte_1800EAC3B, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800EACC0, rva byte_1800EAD50, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800EAD58, rva algn_1800EAF89, \
                                  rva stru_180140EEC>
                RUNTIME_FUNCTION <rva RtlPinAtomInAtomTable, rva byte_1800EB03E, \
                                  rva stru_1801500E8>
                RUNTIME_FUNCTION <rva sub_1800EB060, rva algn_1800EB0CD, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlResetMemoryBlockLookaside, \
                                  rva algn_1800EB133, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlResetMemoryZone, rva algn_1800EB18B, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlUnicodeStringToCountedOemString, \
                                  rva loc_1800EB2AD, rva stru_180150148>
                RUNTIME_FUNCTION <rva loc_1800EB2AD, rva algn_1800EB2E7, \
                                  rva stru_180150170>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeStringToAnsiString, \
                                  rva loc_1800EB3B5, rva stru_18015017C>
                RUNTIME_FUNCTION <rva loc_1800EB3B5, rva algn_1800EB3EC, \
                                  rva stru_1801501A0>
                RUNTIME_FUNCTION <rva RtlUpcaseUnicodeStringToCountedOemString, \
                                  rva loc_1800EB4ED, rva stru_180150114>
                RUNTIME_FUNCTION <rva loc_1800EB4ED, rva algn_1800EB527, \
                                  rva stru_18015013C>
                RUNTIME_FUNCTION <rva RtlAppendAsciizToString, rva algn_1800EB590, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlAppendStringToString, rva algn_1800EB5ED, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlUpperString, rva byte_1800EB660, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlAreBitsClear, rva algn_1800EB725, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlAreBitsClearEx, rva algn_1800EB7E9, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlClearBitsEx, rva algn_1800EB8E1, \
                                  rva stru_1801501D8>
                RUNTIME_FUNCTION <rva RtlCopyBitMap, rva algn_1800EBAF3, \
                                  rva stru_180150220>
                RUNTIME_FUNCTION <rva RtlExtractBitMap, rva algn_1800EBC94, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva RtlFindClearBitsEx, rva algn_1800EBF8C, \
                                  rva stru_180150204>
                RUNTIME_FUNCTION <rva RtlFindClearRuns, rva algn_1800EC275, \
                                  rva stru_180145E8C>
                RUNTIME_FUNCTION <rva RtlFindLongestRunClear, rva algn_1800EC2B9, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlFindSetBitsAndClear, rva algn_1800EC65A, \
                                  rva stru_18014F440>
                RUNTIME_FUNCTION <rva RtlFindSetBitsAndClearEx, rva algn_1800EC9CB, \
                                  rva stru_1801501EC>
                RUNTIME_FUNCTION <rva RtlFindSetBitsEx, rva algn_1800ECD0A, \
                                  rva stru_180150204>
                RUNTIME_FUNCTION <rva RtlInterlockedSetBitRun, rva algn_1800ECDC1, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800ECDC8, rva algn_1800ECE98, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlNumberOfClearBits, rva byte_1800ECEBB, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlNumberOfClearBitsEx, rva algn_1800ECEEE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlNumberOfClearBitsInRange, rva algn_1800ECF24,\
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlNumberOfSetBitsEx, rva algn_1800ED0C3, \
                                  rva stru_1801501AC>
                RUNTIME_FUNCTION <rva RtlNumberOfSetBitsInRange, rva algn_1800ED342, \
                                  rva stru_1801419F4>
                RUNTIME_FUNCTION <rva RtlSetAllBitsEx, rva algn_1800ED3B6, \
                                  rva stru_180150218>
                RUNTIME_FUNCTION <rva RtlSetBitsEx, rva byte_1800ED46E, \
                                  rva stru_1801501C4>
                RUNTIME_FUNCTION <rva sub_1800ED474, rva algn_1800ED631, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlAssert, rva byte_1800ED75C, \
                                  rva stru_18015023C>
                RUNTIME_FUNCTION <rva RtlDeleteBarrier, rva algn_1800ED7B9, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlBarrier_0, rva algn_1800ED8CA, \
                                  rva stru_180145330>
                RUNTIME_FUNCTION <rva RtlGetCallersAddress, rva algn_1800ED92A, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva RtlInt64ToUnicodeString, rva algn_1800ED9C9, \
                                  rva stru_180150254>
                RUNTIME_FUNCTION <rva sub_1800ED9D0, rva byte_1800EDAB3, \
                                  rva stru_18015026C>
                RUNTIME_FUNCTION <rva RtlCheckBootStatusIntegrity, rva algn_1800EDC50,\
                                  rva stru_18015030C>
                RUNTIME_FUNCTION <rva RtlCheckSystemBootStatusIntegrity, \
                                  rva algn_1800EDCB7, rva stru_18014CED4>
                RUNTIME_FUNCTION <rva RtlCreateBootStatusDataFile, rva algn_1800EDE16,\
                                  rva stru_1801502E0>
                RUNTIME_FUNCTION <rva RtlGetSetBootStatusData, rva algn_1800EDF72, \
                                  rva stru_1801502F0>
                RUNTIME_FUNCTION <rva RtlRestoreBootStatusDefaults, \
                                  rva algn_1800EE0E7, rva stru_1801502A0>
                RUNTIME_FUNCTION <rva RtlRestoreSystemBootStatusDefaults, \
                                  rva algn_1800EE126, rva stru_180147100>
                RUNTIME_FUNCTION <rva RtlUnlockBootStatusData, rva byte_1800EE18B, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva sub_1800EE194, rva byte_1800EE1E4, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800EE1EC, rva byte_1800EE34B, \
                                  rva stru_1801502D0>
                RUNTIME_FUNCTION <rva sub_1800EE354, rva byte_1800EE47D, \
                                  rva stru_1801502B8>
                RUNTIME_FUNCTION <rva sub_1800EE484, rva algn_1800EE4CC, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva RtlSetPortableOperatingSystem, \
                                  rva byte_1800EE51B, rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlCreateRegistryKey, rva algn_1800EE562, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlQueryRegistryValueWithFallback, \
                                  rva algn_1800EE6C9, rva stru_180150338>
                RUNTIME_FUNCTION <rva RtlQueryRegistryValues, rva algn_1800EE6EE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1800EE720, rva algn_1800EE7A1, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800EE7A8, rva algn_1800EEA71, \
                                  rva stru_180150320>
                RUNTIME_FUNCTION <rva sub_1800EEA78, rva algn_1800EEB49, \
                                  rva stru_1801503E0>
                RUNTIME_FUNCTION <rva sub_1800EEB50, rva algn_1800EED0E, \
                                  rva stru_18014F46C>
                RUNTIME_FUNCTION <rva RtlConvertLCIDToString, rva algn_1800EEE0E, \
                                  rva stru_1801503C0>
                RUNTIME_FUNCTION <rva RtlGetThreadLangIdByIndex, rva algn_1800EEEE1, \
                                  rva stru_180150430>
                RUNTIME_FUNCTION <rva RtlGetUILanguageInfo, rva algn_1800EF365, \
                                  rva stru_180150458>
                RUNTIME_FUNCTION <rva RtlRestoreThreadPreferredUILanguages, \
                                  rva algn_1800EF447, rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800EF450, rva byte_1800EF520, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_1800EF528, rva byte_1800EF62E, \
                                  rva stru_18015039C>
                RUNTIME_FUNCTION <rva sub_1800EF634, rva byte_1800EF926, \
                                  rva stru_180150410>
                RUNTIME_FUNCTION <rva sub_1800EF92C, rva algn_1800EFA6F, \
                                  rva stru_1801504D0>
                RUNTIME_FUNCTION <rva RtlpCleanupRegistryKeys, rva byte_1800EFECD, \
                                  rva stru_180150350>
                RUNTIME_FUNCTION <rva sub_1800EFED4, rva algn_1800EFF68, \
                                  rva stru_18014BEC8>
                RUNTIME_FUNCTION <rva RtlpConvertCultureNamesToLCIDs, \
                                  rva algn_1800F0174, rva stru_18014FF18>
                RUNTIME_FUNCTION <rva RtlpConvertLCIDsToCultureNames, \
                                  rva algn_1800F0392, rva stru_180150378>
                RUNTIME_FUNCTION <rva sub_1800F0398, rva byte_1800F0416, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F041C, rva algn_1800F0569, \
                                  rva stru_1801504E8>
                RUNTIME_FUNCTION <rva sub_1800F0570, rva algn_1800F075A, \
                                  rva stru_1801504FC>
                RUNTIME_FUNCTION <rva sub_1800F0760, rva algn_1800F07F7, \
                                  rva stru_180140EEC>
                RUNTIME_FUNCTION <rva sub_1800F0874, rva byte_1800F095C, \
                                  rva stru_1801503F8>
                RUNTIME_FUNCTION <rva RtlpSetInstallLanguage, rva algn_1800F0EB2, \
                                  rva stru_1801504AC>
                RUNTIME_FUNCTION <rva sub_1800F0EB8, rva algn_1800F1079, \
                                  rva stru_1801504A0>
                RUNTIME_FUNCTION <rva RtlpSetUserPreferredUILanguages, \
                                  rva algn_1800F1D41, rva stru_18015047C>
                RUNTIME_FUNCTION <rva sub_1800F1D48, rva byte_1800F1D80, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlCompactHeap, rva loc_1800F2345, \
                                  rva stru_180150630>
                RUNTIME_FUNCTION <rva loc_1800F2345, rva loc_1800F2363, \
                                  rva stru_180150664>
                RUNTIME_FUNCTION <rva loc_1800F2363, rva algn_1800F238A, \
                                  rva stru_18015066C>
                RUNTIME_FUNCTION <rva RtlGetProcessHeaps, rva algn_1800F2414, \
                                  rva stru_180147AEC>
                RUNTIME_FUNCTION <rva sub_1800F2440, rva byte_1800F249E, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800F24A4, rva byte_1800F269D, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F26A4, rva byte_1800F27DB, \
                                  rva stru_180150710>
                RUNTIME_FUNCTION <rva RtlMultipleAllocateHeap, rva byte_1800F2860, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva RtlMultipleFreeHeap, rva algn_1800F28D8, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlQueryTagHeap, rva loc_1800F2A8B, \
                                  rva stru_180150674>
                RUNTIME_FUNCTION <rva loc_1800F2A8B, rva algn_1800F2AB2, \
                                  rva stru_18015069C>
                RUNTIME_FUNCTION <rva sub_1800F2AB8, rva byte_1800F2B7F, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F2B88, rva algn_1800F2C74, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlSetUserFlagsHeap, rva loc_1800F2FBD, \
                                  rva stru_1801506A4>
                RUNTIME_FUNCTION <rva loc_1800F2FBD, rva loc_1800F2FDB, \
                                  rva stru_1801506E4>
                RUNTIME_FUNCTION <rva loc_1800F2FDB, rva algn_1800F3021, \
                                  rva stru_1801506EC>
                RUNTIME_FUNCTION <rva sub_1800F3028, rva algn_1800F3159, \
                                  rva stru_180150724>
                RUNTIME_FUNCTION <rva RtlValidateProcessHeaps, rva byte_1800F327D, \
                                  rva stru_180150610>
                RUNTIME_FUNCTION <rva sub_1800F32A0, rva byte_1800F345E, \
                                  rva stru_1801505D8>
                RUNTIME_FUNCTION <rva sub_1800F3464, rva byte_1800F34A6, \
                                  rva stru_1801494A8>
                RUNTIME_FUNCTION <rva sub_1800F34AC, rva algn_1800F36B3, \
                                  rva stru_180149DA8>
                RUNTIME_FUNCTION <rva sub_1800F36C0, rva byte_1800F39DD, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F39F0, rva algn_1800F3B01, \
                                  rva stru_1801505A8>
                RUNTIME_FUNCTION <rva sub_1800F3B10, rva byte_1800F3D2E, \
                                  rva stru_18015056C>
                RUNTIME_FUNCTION <rva sub_1800F3D34, rva byte_1800F3E2E, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800F3E34, rva byte_1800F3E7F, \
                                  rva stru_180150608>
                RUNTIME_FUNCTION <rva sub_1800F3E88, rva byte_1800F3F7B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800F3F84, rva algn_1800F4184, \
                                  rva stru_180150550>
                RUNTIME_FUNCTION <rva sub_1800F4190, rva algn_1800F420F, \
                                  rva stru_1801505C0>
                RUNTIME_FUNCTION <rva sub_1800F4220, rva byte_1800F423C, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800F4244, rva byte_1800F4310, \
                                  rva stru_18015053C>
                RUNTIME_FUNCTION <rva sub_1800F4318, rva algn_1800F4552, \
                                  rva stru_180150518>
                RUNTIME_FUNCTION <rva sub_1800F4558, rva algn_1800F46AC, \
                                  rva stru_1801506F4>
                RUNTIME_FUNCTION <rva sub_1800F46C0, rva algn_1800F4807, \
                                  rva stru_18015058C>
                RUNTIME_FUNCTION <rva sub_1800F4810, rva algn_1800F48F7, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800F4900, rva byte_1800F49CB, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_1800F49D4, rva algn_1800F4B39, \
                                  rva stru_180149A40>
                RUNTIME_FUNCTION <rva sub_1800F4B40, rva byte_1800F4D35, \
                                  rva stru_1801505C8>
                RUNTIME_FUNCTION <rva sub_1800F4D3C, rva algn_1800F55C9, \
                                  rva stru_1801505F0>
                RUNTIME_FUNCTION <rva RtlCompareAltitudes, rva algn_1800F57C4, \
                                  rva stru_1801419F4>
                RUNTIME_FUNCTION <rva RtlDecompressBuffer, rva algn_1800F5848, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva RtlDecompressFragment, rva byte_1800F58E0, \
                                  rva stru_180140AA4>
                RUNTIME_FUNCTION <rva sub_1800F591C, rva algn_1800F59DA, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlConstructCrossVmMutexPath_0, \
                                  rva algn_1800F5B49, rva stru_180150750>
                RUNTIME_FUNCTION <rva RtlCopyExtendedContext, rva algn_1800F5B9A, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlGetExtendedFeaturesMask, rva algn_1800F5BB6, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlSetExtendedFeaturesMask, rva byte_1800F5C0C, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800F5C14, rva byte_1800F5C9C, \
                                  rva stru_180150768>
                RUNTIME_FUNCTION <rva sub_1800F6264, rva algn_1800F62E3, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva RtlZeroHeap, rva loc_1800F67AC, \
                                  rva stru_180150798>
                RUNTIME_FUNCTION <rva loc_1800F67AC, rva loc_1800F67CA, \
                                  rva stru_1801507D8>
                RUNTIME_FUNCTION <rva loc_1800F67CA, rva byte_1800F681F, \
                                  rva stru_1801507E0>
                RUNTIME_FUNCTION <rva sub_1800F6828, rva byte_1800F6890, \
                                  rva stru_1801507E8>
                RUNTIME_FUNCTION <rva sub_1800F6898, rva byte_1800F6ABC, \
                                  rva stru_180150784>
                RUNTIME_FUNCTION <rva sub_1800F6B58, rva byte_1800F6CFC, \
                                  rva stru_1801438B4>
                RUNTIME_FUNCTION <rva RtlCreateUmsCompletionList, rva loc_1800F6DEB, \
                                  rva stru_1801508F4>
                RUNTIME_FUNCTION <rva loc_1800F6DEB, rva algn_1800F6E21, \
                                  rva stru_180150918>
                RUNTIME_FUNCTION <rva RtlCreateUmsThreadContext, rva loc_1800F6F03, \
                                  rva stru_180150828>
                RUNTIME_FUNCTION <rva loc_1800F6F03, rva algn_1800F6F39, \
                                  rva stru_180150848>
                RUNTIME_FUNCTION <rva RtlDeleteUmsCompletionList, rva loc_1800F6F7C, \
                                  rva stru_18015089C>
                RUNTIME_FUNCTION <rva loc_1800F6F7C, rva algn_1800F6F8C, \
                                  rva stru_1801508BC>
                RUNTIME_FUNCTION <rva RtlDeleteUmsThreadContext, rva loc_1800F6FE1, \
                                  rva stru_180150850>
                RUNTIME_FUNCTION <rva loc_1800F6FE1, rva algn_1800F6FF1, \
                                  rva stru_180150870>
                RUNTIME_FUNCTION <rva RtlDequeueUmsCompletionListItems, \
                                  rva byte_1800F707F, rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlEnterUmsSchedulingMode, rva loc_1800F712B, \
                                  rva stru_1801507F8>
                RUNTIME_FUNCTION <rva loc_1800F712B, rva byte_1800F715F, \
                                  rva stru_180150820>
                RUNTIME_FUNCTION <rva RtlExecuteUmsThread, rva byte_1800F735F, \
                                  rva stru_1801508C4>
                RUNTIME_FUNCTION <rva RtlGetNextUmsListItem, rva loc_1800F738C, \
                                  rva stru_180150878>
                RUNTIME_FUNCTION <rva loc_1800F738C, rva algn_1800F7394, \
                                  rva stru_180150894>
                RUNTIME_FUNCTION <rva RtlGetUmsCompletionListEvent, \
                                  rva algn_1800F73F7, rva stru_18014CDAC>
                RUNTIME_FUNCTION <rva RtlUmsThreadYield, rva algn_1800F7569, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F7570, rva algn_1800F7632, \
                                  rva stru_1801508E0>
                RUNTIME_FUNCTION <rva sub_1800F7638, rva algn_1800F7692, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva RtlLookupElementGenericTableFull, \
                                  rva byte_1800F771B, rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlEnumerateGenericTableLikeADirectory, \
                                  rva algn_1800F7896, rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlGetElementGenericTableAvl, \
                                  rva algn_1800F79B7, rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlDeregisterSecureMemoryCacheCallback, \
                                  rva algn_1800F7A6C, rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlFlushSecureMemoryCache, rva algn_1800F7AE7, \
                                  rva stru_180148F14>
                RUNTIME_FUNCTION <rva RtlRegisterSecureMemoryCacheCallback, \
                                  rva byte_1800F7B9B, rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F7BA4, rva byte_1800F7D15, \
                                  rva stru_180150920>
                RUNTIME_FUNCTION <rva sub_1800F7D68, rva byte_1800F7DFE, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800F7E68, rva byte_1800F7F0B, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800F7F14, rva algn_1800F7F53, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800F7F60, rva algn_1800F80D2, \
                                  rva stru_180150980>
                RUNTIME_FUNCTION <rva sub_1800F80D8, rva algn_1800F8238, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800F8240, rva byte_1800F82B4, \
                                  rva stru_18015098C>
                RUNTIME_FUNCTION <rva sub_1800F82BC, rva algn_1800F84F7, \
                                  rva stru_180150968>
                RUNTIME_FUNCTION <rva sub_1800F8500, rva byte_1800F8664, \
                                  rva stru_18015093C>
                RUNTIME_FUNCTION <rva sub_1800F866C, rva algn_1800F87E8, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_1800F87F0, rva loc_1800F8B5E, \
                                  rva stru_1801509F4>
                RUNTIME_FUNCTION <rva loc_1800F8B5E, rva loc_1800F8B7C, \
                                  rva stru_180150A30>
                RUNTIME_FUNCTION <rva loc_1800F8B7C, rva byte_1800F8BA3, \
                                  rva stru_180150A38>
                RUNTIME_FUNCTION <rva sub_1800F8BAC, rva loc_1800F8CB3, \
                                  rva stru_180150BB0>
                RUNTIME_FUNCTION <rva loc_1800F8CB3, rva loc_1800F8CD1, \
                                  rva stru_180150BE8>
                RUNTIME_FUNCTION <rva loc_1800F8CD1, rva algn_1800F8CF8, \
                                  rva stru_180150BF0>
                RUNTIME_FUNCTION <rva sub_1800F8D00, rva byte_1800F8FEC, \
                                  rva stru_180150A40>
                RUNTIME_FUNCTION <rva sub_1800F8FF4, rva loc_1800F90EB, \
                                  rva stru_180150CE4>
                RUNTIME_FUNCTION <rva loc_1800F90EB, rva loc_1800F9109, \
                                  rva stru_180150D20>
                RUNTIME_FUNCTION <rva loc_1800F9109, rva byte_1800F9130, \
                                  rva stru_180150D28>
                RUNTIME_FUNCTION <rva sub_1800F9138, rva byte_1800F91F3, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800F91FC, rva loc_1800F94A3, \
                                  rva stru_1801509AC>
                RUNTIME_FUNCTION <rva loc_1800F94A3, rva loc_1800F94C1, \
                                  rva stru_1801509E4>
                RUNTIME_FUNCTION <rva loc_1800F94C1, rva algn_1800F94E8, \
                                  rva stru_1801509EC>
                RUNTIME_FUNCTION <rva sub_1800F94F0, rva loc_1800F9649, \
                                  rva stru_180150B38>
                RUNTIME_FUNCTION <rva loc_1800F9649, rva loc_1800F9667, \
                                  rva stru_180150B74>
                RUNTIME_FUNCTION <rva loc_1800F9667, rva byte_1800F968E, \
                                  rva stru_180150B7C>
                RUNTIME_FUNCTION <rva sub_1800F9694, rva loc_1800F9793, \
                                  rva stru_180150AEC>
                RUNTIME_FUNCTION <rva loc_1800F9793, rva loc_1800F97B1, \
                                  rva stru_180150B28>
                RUNTIME_FUNCTION <rva loc_1800F97B1, rva algn_1800F97D8, \
                                  rva stru_180150B30>
                RUNTIME_FUNCTION <rva sub_1800F97E0, rva loc_1800F9D14, \
                                  rva stru_180150BF8>
                RUNTIME_FUNCTION <rva loc_1800F9D14, rva loc_1800F9D32, \
                                  rva stru_180150C38>
                RUNTIME_FUNCTION <rva loc_1800F9D32, rva byte_1800F9D5C, \
                                  rva stru_180150C40>
                RUNTIME_FUNCTION <rva sub_1800F9D64, rva loc_1800F9EE4, \
                                  rva stru_180150C48>
                RUNTIME_FUNCTION <rva loc_1800F9EE4, rva loc_1800F9F02, \
                                  rva stru_180150C88>
                RUNTIME_FUNCTION <rva loc_1800F9F02, rva algn_1800F9F29, \
                                  rva stru_180150C90>
                RUNTIME_FUNCTION <rva sub_1800F9F30, rva loc_1800FA079, \
                                  rva stru_180150C98>
                RUNTIME_FUNCTION <rva loc_1800FA079, rva loc_1800FA097, \
                                  rva stru_180150CD4>
                RUNTIME_FUNCTION <rva loc_1800FA097, rva byte_1800FA0BE, \
                                  rva stru_180150CDC>
                RUNTIME_FUNCTION <rva sub_1800FA0C4, rva loc_1800FA1FC, \
                                  rva stru_180150A58>
                RUNTIME_FUNCTION <rva loc_1800FA1FC, rva loc_1800FA21A, \
                                  rva stru_180150A94>
                RUNTIME_FUNCTION <rva loc_1800FA21A, rva algn_1800FA241, \
                                  rva stru_180150A9C>
                RUNTIME_FUNCTION <rva sub_1800FA248, rva loc_1800FA2B1, \
                                  rva stru_180150B84>
                RUNTIME_FUNCTION <rva loc_1800FA2B1, rva byte_1800FA2CF, \
                                  rva stru_180150BA8>
                RUNTIME_FUNCTION <rva sub_1800FA2D8, rva loc_1800FA3AF, \
                                  rva stru_180150AA4>
                RUNTIME_FUNCTION <rva loc_1800FA3AF, rva loc_1800FA3CD, \
                                  rva stru_180150ADC>
                RUNTIME_FUNCTION <rva loc_1800FA3CD, rva byte_1800FA3F4, \
                                  rva stru_180150AE4>
                RUNTIME_FUNCTION <rva sub_1800FA424, rva byte_1800FA9FC, \
                                  rva stru_180150D30>
                RUNTIME_FUNCTION <rva sub_1800FAA04, rva algn_1800FABBA, \
                                  rva stru_180149A14>
                RUNTIME_FUNCTION <rva sub_1800FABC0, rva algn_1800FB354, \
                                  rva stru_180150994>
                RUNTIME_FUNCTION <rva RtlIsNameInExpression, rva loc_1800FB431, \
                                  rva stru_180150DCC>
                RUNTIME_FUNCTION <rva loc_1800FB431, rva algn_1800FB452, \
                                  rva stru_180150DF4>
                RUNTIME_FUNCTION <rva RtlIsNameInUnUpcasedExpression, \
                                  rva loc_1800FB503, rva stru_180150DA0>
                RUNTIME_FUNCTION <rva loc_1800FB503, rva byte_1800FB535, \
                                  rva stru_180150DC4>
                RUNTIME_FUNCTION <rva sub_1800FB53C, rva byte_1800FBAAB, \
                                  rva stru_180150D78>
                RUNTIME_FUNCTION <rva sub_1800FBAB4, rva loc_1800FBB3E, \
                                  rva stru_180150D48>
                RUNTIME_FUNCTION <rva loc_1800FBB3E, rva algn_1800FBB78, \
                                  rva stru_180150D6C>
                RUNTIME_FUNCTION <rva RtlFlushNonVolatileMemory, rva byte_1800FBC2E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FBC34, rva algn_1800FBCC1, \
                                  rva stru_180150DFC>
                RUNTIME_FUNCTION <rva RtlEthernetAddressToStringA, rva algn_1800FBD34,\
                                  rva stru_180140AA4>
                RUNTIME_FUNCTION <rva RtlEthernetAddressToStringW, rva algn_1800FBDA6,\
                                  rva stru_180140AA4>
                RUNTIME_FUNCTION <rva RtlEthernetStringToAddressA, rva algn_1800FBEE5,\
                                  rva stru_180150E0C>
                RUNTIME_FUNCTION <rva RtlEthernetStringToAddressW, rva algn_1800FC029,\
                                  rva stru_180150E0C>
                RUNTIME_FUNCTION <rva RtlValidateCorrelationVector, \
                                  rva byte_1800FC10C, rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800FC114, rva byte_1800FC17F, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlFillNonVolatileMemory, rva algn_1800FC255, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlFlushNonVolatileMemoryRanges, \
                                  rva algn_1800FC2E8, rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlGetNonVolatileToken, rva byte_1800FC37B, \
                                  rva stru_180150E2C>
                RUNTIME_FUNCTION <rva RtlWriteNonVolatileMemory, rva byte_1800FC43C, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlFormatMessage, rva algn_1800FC4A1, \
                                  rva stru_180147100>
                RUNTIME_FUNCTION <rva sub_1800FC4A8, rva byte_1800FC4CD, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FC4D4, rva byte_1800FC5C5, \
                                  rva stru_18014A79C>
                RUNTIME_FUNCTION <rva RtlGenerate8dot3Name, rva byte_1800FCABE, \
                                  rva stru_180150E54>
                RUNTIME_FUNCTION <rva RtlIsNameLegalDOS8Dot3, rva byte_1800FCC73, \
                                  rva stru_180150E38>
                RUNTIME_FUNCTION <rva sub_1800FCC7C, rva algn_1800FCD44, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlGetConsoleSessionForegroundProcessId, \
                                  rva algn_1800FCD81, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FCDA8, rva algn_1800FCE47, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva RtlIsValidLocaleName, rva byte_1800FCF15, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800FCF1C, rva algn_1800FCFB9, \
                                  rva stru_180150E74>
                RUNTIME_FUNCTION <rva sub_1800FCFC0, rva algn_1800FD032, \
                                  rva stru_1801434C4>
                RUNTIME_FUNCTION <rva sub_1800FD038, rva byte_1800FD14D, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800FD154, rva byte_1800FD1AB, \
                                  rva stru_180150EA8>
                RUNTIME_FUNCTION <rva sub_1800FD1B4, rva byte_1800FD253, \
                                  rva stru_180150F08>
                RUNTIME_FUNCTION <rva sub_1800FD25C, rva byte_1800FD334, \
                                  rva stru_180150EE4>
                RUNTIME_FUNCTION <rva sub_1800FD33C, rva byte_1800FD3FC, \
                                  rva stru_180150ECC>
                RUNTIME_FUNCTION <rva sub_1800FD404, rva algn_1800FD487, \
                                  rva stru_180150EB8>
                RUNTIME_FUNCTION <rva sub_1800FD490, rva algn_1800FD707, \
                                  rva stru_180150E88>
                RUNTIME_FUNCTION <rva sub_1800FD720, rva algn_1800FD742, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FD750, rva byte_1800FD7AE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800FD7B4, rva algn_1800FD934, \
                                  rva stru_180150F10>
                RUNTIME_FUNCTION <rva RtlHeapTrkInitialize, rva byte_1800FDCD4, \
                                  rva stru_180150F8C>
                RUNTIME_FUNCTION <rva sub_1800FDCDC, rva byte_1800FDE03, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva sub_1800FDE0C, rva byte_1800FDE9F, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800FDEA8, rva algn_1800FE011, \
                                  rva stru_180150338>
                RUNTIME_FUNCTION <rva sub_1800FE018, rva byte_1800FE164, \
                                  rva stru_1801438B4>
                RUNTIME_FUNCTION <rva sub_1800FE16C, rva byte_1800FE1E4, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800FE1EC, rva algn_1800FE25A, \
                                  rva stru_180150F28>
                RUNTIME_FUNCTION <rva sub_1800FE260, rva byte_1800FE300, \
                                  rva stru_180149928>
                RUNTIME_FUNCTION <rva sub_1800FE310, rva algn_1800FE4D7, \
                                  rva stru_1801454F8>
                RUNTIME_FUNCTION <rva sub_1800FE4E0, rva byte_1800FE6DD, \
                                  rva stru_180150F78>
                RUNTIME_FUNCTION <rva sub_1800FE6E4, rva byte_1800FE7CF, \
                                  rva stru_180150F34>
                RUNTIME_FUNCTION <rva sub_1800FE7D8, rva byte_1800FE843, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_1800FE84C, rva byte_1800FE91F, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800FE928, rva byte_1800FEA0D, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800FEA14, rva byte_1800FEB4C, \
                                  rva stru_180142D0C>
                RUNTIME_FUNCTION <rva sub_1800FEB54, rva algn_1800FED29, \
                                  rva stru_180150F50>
                RUNTIME_FUNCTION <rva RtlIdnToNameprepUnicode, rva byte_1800FEDAE, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva RtlInitializeContext, rva algn_1800FEEF0, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlRemoteCall, rva byte_1800FF07C, \
                                  rva stru_180150FA0>
                RUNTIME_FUNCTION <rva RtlIsPartialPlaceholderFileHandle, \
                                  rva algn_1800FF0EC, rva stru_180144E30>
                RUNTIME_FUNCTION <rva RtlIsCurrentThread, rva algn_1800FF209, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FF27C, rva algn_1800FF339, \
                                  rva stru_180150FE8>
                RUNTIME_FUNCTION <rva sub_1800FF340, rva loc_1800FF351, \
                                  rva stru_180150FC0>
                RUNTIME_FUNCTION <rva loc_1800FF351, rva byte_1800FF39C, \
                                  rva stru_180150FE0>
                RUNTIME_FUNCTION <rva sub_1800FF3A4, rva algn_1800FF3E2, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FF418, rva byte_1800FF446, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1800FF484, rva byte_1800FF513, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800FF60C, rva byte_1800FF6CC, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1800FF6D4, rva byte_1800FF774, \
                                  rva stru_1801427CC>
                RUNTIME_FUNCTION <rva sub_1800FF77C, rva algn_1800FF7A2, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800FF7A8, rva byte_1800FF7EF, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_1800FF7F8, rva byte_1800FF96D, \
                                  rva stru_180145E8C>
                RUNTIME_FUNCTION <rva sub_1800FF974, rva byte_1800FF9E4, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_1800FF9EC, rva byte_1800FFAA5, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800FFAF4, rva byte_1800FFBB4, \
                                  rva stru_180151048>
                RUNTIME_FUNCTION <rva sub_1800FFBBC, rva algn_1800FFCC7, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_1800FFCD0, rva byte_1800FFE2B, \
                                  rva stru_180151018>
                RUNTIME_FUNCTION <rva sub_1800FFE34, rva algn_1800FFE78, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1800FFE80, rva algn_1800FFF01, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1800FFF74, rva algn_180100039, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_180100040, rva byte_180100106, \
                                  rva stru_18014EF80>
                RUNTIME_FUNCTION <rva sub_1801001A8, rva algn_180100685, \
                                  rva stru_180151030>
                RUNTIME_FUNCTION <rva RtlIsNormalizedString, rva algn_180100712, \
                                  rva stru_180151058>
                RUNTIME_FUNCTION <rva sub_180100718, rva algn_180100758, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva RtlUnhandledExceptionFilter2, \
                                  rva algn_180100B51, rva stru_18015106C>
                RUNTIME_FUNCTION <rva sub_180100B58, rva byte_180100CF4, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_180100CFC, rva byte_180100EC0, \
                                  rva stru_180143458>
                RUNTIME_FUNCTION <rva sub_180100EC8, rva algn_180100F27, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180100F60, rva byte_180100F7E, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180100F90, rva algn_180100FC6, \
                                  rva stru_18014C138>
                RUNTIME_FUNCTION <rva sub_180100FD0, rva algn_1801011F7, \
                                  rva stru_1801510D8>
                RUNTIME_FUNCTION <rva sub_180101200, rva algn_180101251, \
                                  rva stru_1801510CC>
                RUNTIME_FUNCTION <rva sub_180101260, rva algn_180101373, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_180101390, rva algn_180101430, \
                                  rva stru_180151098>
                RUNTIME_FUNCTION <rva sub_180101474, rva byte_18010154E, \
                                  rva stru_1801510B8>
                RUNTIME_FUNCTION <rva sub_180101554, rva algn_18010162A, \
                                  rva stru_1801510A8>
                RUNTIME_FUNCTION <rva sub_180101630, rva byte_1801016F0, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1801016F8, rva algn_1801017A2, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_1801017A8, rva algn_1801017C2, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1801017C8, rva byte_1801017E0, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1801017E8, rva algn_18010192B, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva RtlNotifyFeatureUsage, rva byte_1801019BD, \
                                  rva stru_18015112C>
                RUNTIME_FUNCTION <rva RtlQueryAllFeatureConfigurations, \
                                  rva algn_180101A6E, rva stru_180151100>
                RUNTIME_FUNCTION <rva RtlQueryFeatureUsageNotificationSubscriptions, \
                                  rva algn_180101B02, rva stru_1801510F0>
                RUNTIME_FUNCTION <rva RtlSetFeatureConfigurations, rva algn_180101C03,\
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_180101C30, rva algn_180101C67, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180101C70, rva algn_180101D12, \
                                  rva stru_180151118>
                RUNTIME_FUNCTION <rva sub_180101D18, rva algn_180101E23, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_180101E30, rva byte_180101E9C, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlOsDeploymentState, rva loc_180101FC5, \
                                  rva stru_18015113C>
                RUNTIME_FUNCTION <rva loc_180101FC5, rva algn_180101FE4, \
                                  rva stru_180151168>
                RUNTIME_FUNCTION <rva RtlQueryValidationRunlevel, rva algn_1801020A7, \
                                  rva stru_180151170>
                RUNTIME_FUNCTION <rva RtlRaiseCustomSystemEventTrigger, \
                                  rva algn_180102301, rva stru_180151188>
                RUNTIME_FUNCTION <rva sub_180102308, rva byte_18010235B, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180102364, rva algn_180102455, \
                                  rva stru_1801511A4>
                RUNTIME_FUNCTION <rva sub_180102460, rva algn_180102477, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180102480, rva algn_1801024AE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlRaiseStatus, rva algn_180102512, \
                                  rva stru_1801511B8>
                RUNTIME_FUNCTION <rva sub_180102520, rva algn_1801025F2, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180102600, rva byte_180102640, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseAdd, rva byte_1801026C0, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseCreate, rva byte_1801027FE, \
                                  rva stru_1801511E8>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseDestroy, rva algn_180102889, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseEnumerate, rva algn_180102957, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseFind, rva algn_1801029D8, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseLock, rva byte_1801029FE, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva RtlTraceDatabaseValidate, rva algn_180102A7A, \
                                  rva stru_180141F20>
                RUNTIME_FUNCTION <rva sub_180102A80, rva byte_180102AC6, \
                                  rva stru_1801511C4>
                RUNTIME_FUNCTION <rva sub_180102ACC, rva byte_180102AFE, \
                                  rva stru_18014A258>
                RUNTIME_FUNCTION <rva sub_180102B04, rva byte_180102CA6, \
                                  rva stru_1801511CC>
                RUNTIME_FUNCTION <rva sub_180102CAC, rva algn_180102D56, \
                                  rva stru_180140B44>
                RUNTIME_FUNCTION <rva RtlUnicodeStringToUTF8String, \
                                  rva algn_180102E58, rva stru_180151200>
                RUNTIME_FUNCTION <rva RtlUdiv128, rva byte_180102EBC, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_180102EC4, rva algn_1801030CF, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva RtlWow64PopAllCrossProcessWorkFromWorkList, \
                                  rva loc_1801031FB, rva stru_180151214>
                RUNTIME_FUNCTION <rva loc_1801031FB, rva algn_180103205, \
                                  rva stru_180151234>
                RUNTIME_FUNCTION <rva RtlWow64PopCrossProcessWorkFromFreeList, \
                                  rva loc_180103288, rva stru_18015123C>
                RUNTIME_FUNCTION <rva loc_180103288, rva algn_180103292, \
                                  rva stru_18015126C>
                RUNTIME_FUNCTION <rva RtlWow64PushCrossProcessWorkOntoFreeList, \
                                  rva loc_18010332B, rva stru_18015129C>
                RUNTIME_FUNCTION <rva loc_18010332B, rva algn_180103335, \
                                  rva stru_1801512BC>
                RUNTIME_FUNCTION <rva RtlWow64PushCrossProcessWorkOntoWorkList, \
                                  rva loc_180103539, rva stru_180151274>
                RUNTIME_FUNCTION <rva loc_180103539, rva algn_180103543, \
                                  rva stru_180151294>
                RUNTIME_FUNCTION <rva RtlWow64RequestCrossProcessHeavyFlush, \
                                  rva loc_1801035A8, rva stru_1801512C4>
                RUNTIME_FUNCTION <rva loc_1801035A8, rva algn_1801035B2, \
                                  rva stru_1801512E4>
                RUNTIME_FUNCTION <rva sub_1801035B8, rva byte_18010377C, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlpGetUserOrMachineUILanguage4NLS, \
                                  rva byte_1801039BE, rva stru_18015150C>
                RUNTIME_FUNCTION <rva sub_1801039C4, rva algn_180103AD9, \
                                  rva stru_180141318>
                RUNTIME_FUNCTION <rva sub_180103AE0, rva algn_180103B72, \
                                  rva stru_180140C5C>
                RUNTIME_FUNCTION <rva sub_180103B78, rva algn_180103D3A, \
                                  rva stru_18015147C>
                RUNTIME_FUNCTION <rva sub_180103D40, rva byte_180103EF0, \
                                  rva stru_1801513CC>
                RUNTIME_FUNCTION <rva sub_180103EF8, rva byte_180103FCB, \
                                  rva stru_1801513B4>
                RUNTIME_FUNCTION <rva sub_180103FD4, rva algn_180104117, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_180104120, rva byte_1801043DE, \
                                  rva stru_1801514DC>
                RUNTIME_FUNCTION <rva sub_1801043E4, rva algn_180104438, \
                                  rva stru_180150768>
                RUNTIME_FUNCTION <rva RtlpMuiRegCreateRegistryInfo, \
                                  rva algn_180104472, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180104478, rva byte_18010450F, \
                                  rva stru_18015146C>
                RUNTIME_FUNCTION <rva sub_180104518, rva byte_180104584, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18010458C, rva algn_1801046B1, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1801046B8, rva byte_180104804, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18010480C, rva byte_1801049C5, \
                                  rva stru_18014EC4C>
                RUNTIME_FUNCTION <rva sub_1801049CC, rva algn_180104B41, \
                                  rva stru_180151538>
                RUNTIME_FUNCTION <rva sub_180104B48, rva byte_180104C74, \
                                  rva stru_180151550>
                RUNTIME_FUNCTION <rva sub_180104C7C, rva byte_180104D9C, \
                                  rva stru_180151524>
                RUNTIME_FUNCTION <rva sub_180104DA4, rva byte_180104ED5, \
                                  rva stru_180149724>
                RUNTIME_FUNCTION <rva sub_180104EDC, rva byte_180104FC6, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180104FCC, rva algn_180105038, \
                                  rva stru_1801494A8>
                RUNTIME_FUNCTION <rva sub_180105068, rva algn_1801050D9, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1801050E0, rva byte_1801052EF, \
                                  rva stru_1801514F4>
                RUNTIME_FUNCTION <rva sub_1801052F8, rva byte_18010585F, \
                                  rva stru_1801512FC>
                RUNTIME_FUNCTION <rva sub_180105868, rva byte_1801058C6, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_1801058CC, rva byte_18010592D, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_180105934, rva algn_180105992, \
                                  rva stru_180144E30>
                RUNTIME_FUNCTION <rva sub_180105998, rva byte_180105A6F, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180105A78, rva algn_180105C32, \
                                  rva stru_1801514C4>
                RUNTIME_FUNCTION <rva sub_180105C38, rva algn_180105F29, \
                                  rva stru_180151498>
                RUNTIME_FUNCTION <rva RtlpRefreshCachedUILanguage, rva algn_180106012,\
                                  rva stru_1801512EC>
                RUNTIME_FUNCTION <rva sub_180106070, rva algn_180106139, \
                                  rva stru_18015133C>
                RUNTIME_FUNCTION <rva sub_180106140, rva algn_18010630A, \
                                  rva stru_180151458>
                RUNTIME_FUNCTION <rva sub_180106310, rva algn_180106671, \
                                  rva stru_18015140C>
                RUNTIME_FUNCTION <rva sub_180106678, rva byte_18010673E, \
                                  rva stru_18014ECDC>
                RUNTIME_FUNCTION <rva sub_180106744, rva algn_180106979, \
                                  rva stru_18015142C>
                RUNTIME_FUNCTION <rva sub_180106980, rva byte_1801069D3, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1801069DC, rva byte_180106ACF, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180106AD8, rva byte_180106D4E, \
                                  rva stru_180151314>
                RUNTIME_FUNCTION <rva sub_180106D54, rva algn_1801071B1, \
                                  rva stru_1801513E4>
                RUNTIME_FUNCTION <rva sub_1801071B8, rva algn_180107252, \
                                  rva stru_180149A14>
                RUNTIME_FUNCTION <rva sub_180107258, rva byte_180107625, \
                                  rva stru_180151348>
                RUNTIME_FUNCTION <rva sub_18010762C, rva byte_180107866, \
                                  rva stru_18015139C>
                RUNTIME_FUNCTION <rva sub_18010786C, rva algn_1801079A2, \
                                  rva stru_180145230>
                RUNTIME_FUNCTION <rva sub_1801079A8, rva byte_180107B2E, \
                                  rva stru_180151370>
                RUNTIME_FUNCTION <rva RtlpNtCreateKey, rva algn_180107BC1, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva RtlpNtSetValueKey, rva byte_180107C0B, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_180107C14, rva algn_180107C86, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180107CA4, rva loc_180107FB1, \
                                  rva stru_180151730>
                RUNTIME_FUNCTION <rva loc_180107FB1, rva byte_180107FCF, \
                                  rva stru_180151758>
                RUNTIME_FUNCTION <rva sub_180108008, rva algn_180108079, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180108080, rva algn_180108098, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1801080A0, rva byte_180108136, \
                                  rva stru_1801516E4>
                RUNTIME_FUNCTION <rva sub_18010813C, rva byte_1801081BD, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_1801081C4, rva byte_180108254, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_18010825C, rva algn_1801082EC, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_180108300, rva loc_18010838B, \
                                  rva stru_180151664>
                RUNTIME_FUNCTION <rva loc_18010838B, rva algn_1801083A9, \
                                  rva stru_18015168C>
                RUNTIME_FUNCTION <rva sub_1801083B0, rva algn_180108543, \
                                  rva stru_1801515E0>
                RUNTIME_FUNCTION <rva sub_180108550, rva byte_1801085A5, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_1801085AC, rva algn_180108655, \
                                  rva stru_180151694>
                RUNTIME_FUNCTION <rva sub_180108660, rva algn_180108687, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180108690, rva algn_1801086B1, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_1801086B8, rva byte_18010872B, \
                                  rva stru_180151614>
                RUNTIME_FUNCTION <rva sub_180108734, rva algn_1801087BA, \
                                  rva stru_180151604>
                RUNTIME_FUNCTION <rva sub_1801087C0, rva byte_1801088DF, \
                                  rva stru_18014F28C>
                RUNTIME_FUNCTION <rva sub_1801088E8, rva byte_180108BC0, \
                                  rva stru_1801515C4>
                RUNTIME_FUNCTION <rva sub_180108BC8, rva byte_180108C96, \
                                  rva stru_1801515B8>
                RUNTIME_FUNCTION <rva sub_180108C9C, rva algn_180108DF7, \
                                  rva stru_1801515A4>
                RUNTIME_FUNCTION <rva sub_180108E00, rva byte_180108E6C, \
                                  rva stru_180151724>
                RUNTIME_FUNCTION <rva sub_180108E74, rva algn_180108EC2, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180108EC8, rva algn_180108F64, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180108F70, rva algn_180109038, \
                                  rva stru_1801515F8>
                RUNTIME_FUNCTION <rva sub_180109040, rva algn_180109126, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_180109130, rva byte_180109184, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18010918C, rva algn_1801091EC, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180109200, rva byte_1801093EF, \
                                  rva stru_18015156C>
                RUNTIME_FUNCTION <rva sub_1801093F8, rva byte_18010946C, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_180109474, rva byte_18010955D, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180109564, rva byte_180109744, \
                                  rva stru_180151590>
                RUNTIME_FUNCTION <rva sub_18010974C, rva byte_1801098F6, \
                                  rva stru_1801501EC>
                RUNTIME_FUNCTION <rva sub_1801098FC, rva byte_180109BD3, \
                                  rva stru_1801516A8>
                RUNTIME_FUNCTION <rva sub_180109BDC, rva algn_180109C61, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_180109C68, rva algn_180109CF8, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_180109D00, rva algn_180109D82, \
                                  rva stru_180151704>
                RUNTIME_FUNCTION <rva sub_180109D88, rva byte_180109E2F, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_180109E38, rva algn_180109EE9, \
                                  rva stru_1801516CC>
                RUNTIME_FUNCTION <rva sub_180109EF0, rva byte_180109F63, \
                                  rva stru_1801516F4>
                RUNTIME_FUNCTION <rva sub_180109F6C, rva byte_18010A013, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_18010A01C, rva algn_18010A0C1, \
                                  rva stru_1801516CC>
                RUNTIME_FUNCTION <rva sub_18010A0C8, rva byte_18010A146, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_18010A14C, rva byte_18010A1C0, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_18010A1C8, rva byte_18010A26E, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_18010A274, rva byte_18010A304, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_18010A30C, rva algn_18010A397, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_18010A3A0, rva algn_18010A448, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_18010A450, rva algn_18010A4F8, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_18010A500, rva algn_18010A5A8, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_18010A5B0, rva algn_18010A658, \
                                  rva stru_18015164C>
                RUNTIME_FUNCTION <rva sub_18010A660, rva algn_18010A719, \
                                  rva stru_180151634>
                RUNTIME_FUNCTION <rva sub_18010A720, rva byte_18010A794, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_18010A79C, rva byte_18010A810, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_18010A818, rva byte_18010A88C, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_18010A894, rva byte_18010AC0F, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18010AC18, rva byte_18010ADDF, \
                                  rva stru_180149A24>
                RUNTIME_FUNCTION <rva sub_18010ADE8, rva algn_18010AE4C, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18010AE60, rva algn_18010AEEB, \
                                  rva stru_180151760>
                RUNTIME_FUNCTION <rva sub_18010AF00, rva algn_18010AF2B, \
                                  rva stru_180140F00>
                RUNTIME_FUNCTION <rva sub_18010AF54, rva byte_18010B04E, \
                                  rva stru_180151774>
                RUNTIME_FUNCTION <rva sub_18010B054, rva algn_18010B09A, \
                                  rva stru_18014EE9C>
                RUNTIME_FUNCTION <rva sub_18010B0A0, rva algn_18010B0D7, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18010B118, rva algn_18010B289, \
                                  rva stru_18015178C>
                RUNTIME_FUNCTION <rva sub_18010B290, rva byte_18010B30D, \
                                  rva stru_1801517BC>
                RUNTIME_FUNCTION <rva sub_18010B314, rva algn_18010B3F2, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18010B3F8, rva byte_18010B44C, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_18010B454, rva algn_18010B4A8, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_18010B4B0, rva byte_18010B586, \
                                  rva stru_1801517CC>
                RUNTIME_FUNCTION <rva sub_18010B58C, rva algn_18010B6B9, \
                                  rva stru_1801517E0>
                RUNTIME_FUNCTION <rva sub_18010B814, rva algn_18010B8EA, \
                                  rva stru_180151838>
                RUNTIME_FUNCTION <rva sub_18010B8F0, rva byte_18010B943, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18010B94C, rva byte_18010BC20, \
                                  rva stru_1801517F4>
                RUNTIME_FUNCTION <rva sub_18010BC28, rva loc_18010BC82, \
                                  rva stru_180151810>
                RUNTIME_FUNCTION <rva loc_18010BC82, rva byte_18010BCA0, \
                                  rva stru_180151830>
                RUNTIME_FUNCTION <rva sub_18010BCA8, rva algn_18010C2D9, \
                                  rva stru_1801511CC>
                RUNTIME_FUNCTION <rva sub_18010C334, rva algn_18010C5E5, \
                                  rva stru_180151868>
                RUNTIME_FUNCTION <rva sub_18010C5F0, rva byte_18010C65E, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_18010C670, rva algn_18010C7A9, \
                                  rva stru_18015184C>
                RUNTIME_FUNCTION <rva sub_18010C7B0, rva algn_18010C8B3, \
                                  rva stru_180151880>
                RUNTIME_FUNCTION <rva sub_18010C8C0, rva algn_18010CA49, \
                                  rva stru_1801518B4>
                RUNTIME_FUNCTION <rva sub_18010CA50, rva byte_18010CCAE, \
                                  rva stru_18015189C>
                RUNTIME_FUNCTION <rva sub_18010CCB4, rva byte_18010D3B6, \
                                  rva stru_1801518C8>
                RUNTIME_FUNCTION <rva sub_18010D3BC, rva byte_18010D9FD, \
                                  rva stru_1801518E0>
                RUNTIME_FUNCTION <rva sub_18010DA04, rva algn_18010DA47, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18010DA50, rva byte_18010DAAE, \
                                  rva stru_180151910>
                RUNTIME_FUNCTION <rva sub_18010DAB4, rva byte_18010DB5C, \
                                  rva stru_1801518F8>
                RUNTIME_FUNCTION <rva sub_18010DB64, rva byte_18010DCCC, \
                                  rva stru_180151934>
                RUNTIME_FUNCTION <rva sub_18010DCD4, rva byte_18010DD6C, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18010DD74, rva algn_18010DE42, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18010DE48, rva byte_18010DE9C, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva sub_18010DFBC, rva algn_18010E007, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18010E010, rva algn_18010E08A, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18010E090, rva byte_18010E0FC, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_18010E104, rva byte_18010E19F, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18010E1A8, rva byte_18010E23B, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18010E244, rva algn_18010E38A, \
                                  rva stru_180151964>
                RUNTIME_FUNCTION <rva sub_18010E390, rva algn_18010E47A, \
                                  rva stru_180151950>
                RUNTIME_FUNCTION <rva sub_18010E480, rva byte_18010E516, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18010E51C, rva algn_18010E569, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18010E610, rva algn_18010E6FA, \
                                  rva stru_18015197C>
                RUNTIME_FUNCTION <rva sub_18010E700, rva byte_18010E775, \
                                  rva stru_180151974>
                RUNTIME_FUNCTION <rva sub_18010E77C, rva byte_18010EADF, \
                                  rva stru_180151988>
                RUNTIME_FUNCTION <rva sub_18010EAE8, rva algn_18010EBC2, \
                                  rva stru_1801519A0>
                RUNTIME_FUNCTION <rva sub_18010EBC8, rva loc_18010EC11, \
                                  rva stru_1801519BC>
                RUNTIME_FUNCTION <rva loc_18010EC11, rva byte_18010EC2F, \
                                  rva stru_1801519DC>
                RUNTIME_FUNCTION <rva sub_18010EC38, rva algn_18010EDB7, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18010EDC0, rva byte_18010EE4D, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18010EE54, rva byte_18010EEED, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva sub_18010EEF4, rva byte_18010F05C, \
                                  rva stru_18014FEDC>
                RUNTIME_FUNCTION <rva sub_18010F064, rva byte_18010F17F, \
                                  rva stru_18014A79C>
                RUNTIME_FUNCTION <rva sub_18010F188, rva byte_18010F1DC, \
                                  rva stru_1801519B0>
                RUNTIME_FUNCTION <rva sub_18010F1E4, rva byte_18010F283, \
                                  rva stru_180149418>
                RUNTIME_FUNCTION <rva sub_18010F28C, rva byte_18010F31F, \
                                  rva stru_180140954>
                RUNTIME_FUNCTION <rva sub_18010F328, rva byte_18010F3BB, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18010F3C4, rva byte_18010F49E, \
                                  rva stru_1801519E4>
                RUNTIME_FUNCTION <rva sub_18010F4A4, rva byte_18010F516, \
                                  rva stru_18015146C>
                RUNTIME_FUNCTION <rva sub_18010F51C, rva byte_18010F644, \
                                  rva stru_1801519F4>
                RUNTIME_FUNCTION <rva sub_18010F64C, rva algn_18010F698, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18010F794, rva byte_18010F955, \
                                  rva stru_180151A04>
                RUNTIME_FUNCTION <rva sub_18010F95C, rva byte_18010FA3F, \
                                  rva stru_180151A20>
                RUNTIME_FUNCTION <rva sub_18010FA48, rva algn_18010FBE9, \
                                  rva stru_180149A40>
                RUNTIME_FUNCTION <rva sub_18010FBF0, rva algn_18010FC6D, \
                                  rva stru_180149A5C>
                RUNTIME_FUNCTION <rva MD4Final, rva algn_18010FD42, \
                                  rva stru_180148684>
                RUNTIME_FUNCTION <rva sub_18010FD7C, rva algn_180110304, \
                                  rva stru_1801486C8>
                RUNTIME_FUNCTION <rva MD4Update, rva algn_180110439, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva EtwEnumerateProcessRegGuids, rva loc_18011050B, \
                                  rva stru_180151A38>
                RUNTIME_FUNCTION <rva loc_18011050B, rva algn_18011052E, \
                                  rva stru_180151A68>
                RUNTIME_FUNCTION <rva EtwEventWriteString, rva algn_18011076A, \
                                  rva stru_180151A70>
                RUNTIME_FUNCTION <rva sub_180110770, rva algn_180110854, \
                                  rva stru_180151A94>
                RUNTIME_FUNCTION <rva EtwCreateTraceInstanceId, rva algn_1801108AE, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva EtwTraceEventInstance, rva algn_180110A5A, \
                                  rva stru_180151AAC>
                RUNTIME_FUNCTION <rva sub_180110A60, rva byte_180110BCC, \
                                  rva stru_180151B04>
                RUNTIME_FUNCTION <rva sub_180110BD4, rva loc_180110C19, \
                                  rva stru_180151AD4>
                RUNTIME_FUNCTION <rva loc_180110C19, rva algn_180110C3A, \
                                  rva stru_180151AFC>
                RUNTIME_FUNCTION <rva sub_180110C40, rva algn_180110D39, \
                                  rva stru_180151B54>
                RUNTIME_FUNCTION <rva sub_180110DA8, rva algn_180110E37, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180110E40, rva byte_180110F0C, \
                                  rva stru_180151B1C>
                RUNTIME_FUNCTION <rva sub_180110F14, rva algn_180110F71, \
                                  rva stru_180151AC8>
                RUNTIME_FUNCTION <rva sub_180110F78, rva loc_1801112BB, \
                                  rva stru_180151B6C>
                RUNTIME_FUNCTION <rva loc_1801112BB, rva loc_1801112D3, \
                                  rva stru_180151BB0>
                RUNTIME_FUNCTION <rva loc_1801112D3, rva algn_1801112F9, \
                                  rva stru_180151BB8>
                RUNTIME_FUNCTION <rva sub_180111300, rva byte_1801114F0, \
                                  rva stru_180151B34>
                RUNTIME_FUNCTION <rva sub_1801114F8, rva byte_18011164E, \
                                  rva stru_180151BC0>
                RUNTIME_FUNCTION <rva sub_180111654, rva algn_180111797, \
                                  rva stru_180151BDC>
                RUNTIME_FUNCTION <rva sub_1801117A0, rva algn_18011180B, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva EvtIntReportAuthzEventAndSourceAsync, \
                                  rva algn_18011188A, rva stru_180146F64>
                RUNTIME_FUNCTION <rva sub_180111890, rva algn_180111961, \
                                  rva stru_180151BFC>
                RUNTIME_FUNCTION <rva sub_180111968, rva algn_180111A46, \
                                  rva stru_180140D04>
                RUNTIME_FUNCTION <rva sub_180111A50, rva algn_180111AD9, \
                                  rva stru_180141FF8>
                RUNTIME_FUNCTION <rva TpQueryPoolStackInformation, rva byte_180111B50,\
                                  rva stru_180151C10>
                RUNTIME_FUNCTION <rva sub_180111B58, rva algn_180111BA5, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva TpSetDefaultPoolMaxThreads, rva algn_180111CEF, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva TpSetPoolThreadCpuSets, rva algn_180111DA7, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva sub_180111DB0, rva algn_180111E56, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_180111E60, rva algn_180111F04, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180111F10, rva byte_180111FDB, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva TpCallbackDetectedUnrecoverableError, \
                                  rva algn_180112018, rva stru_180140A9C>
                RUNTIME_FUNCTION <rva TpCallbackSendPendingAlpcMessage, \
                                  rva algn_1801120D6, rva stru_180140A18>
                RUNTIME_FUNCTION <rva TpDbgDumpHeapUsage, rva byte_18011218E, \
                                  rva stru_180151C1C>
                RUNTIME_FUNCTION <rva sub_180112194, rva byte_180112223, \
                                  rva stru_18014F9A4>
                RUNTIME_FUNCTION <rva sub_18011222C, rva byte_1801122D6, \
                                  rva stru_1801507E8>
                RUNTIME_FUNCTION <rva sub_1801122DC, rva loc_18011233F, \
                                  rva stru_180151C34>
                RUNTIME_FUNCTION <rva loc_18011233F, rva byte_180112355, \
                                  rva stru_180151C58>
                RUNTIME_FUNCTION <rva sub_18011235C, rva algn_18011237A, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180112394, rva byte_180112434, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_18011243C, rva algn_1801124D1, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_1801124D8, rva byte_18011256D, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_180112574, rva algn_180112609, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_180112610, rva byte_1801126A5, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_1801126AC, rva byte_180112720, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_180112728, rva byte_18011279C, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_1801127A4, rva byte_18011281C, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_180112824, rva byte_18011289C, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_1801128A4, rva algn_180112918, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_180112920, rva algn_180112999, \
                                  rva stru_180151624>
                RUNTIME_FUNCTION <rva sub_1801129A0, rva algn_180112A39, \
                                  rva stru_1801413BC>
                RUNTIME_FUNCTION <rva sub_180112A40, rva byte_180112AB4, \
                                  rva stru_1801516BC>
                RUNTIME_FUNCTION <rva sub_180112ABC, rva byte_180112B6B, \
                                  rva stru_1801516F4>
                RUNTIME_FUNCTION <rva sub_180112B74, rva algn_180112BF2, \
                                  rva stru_18014F994>
                RUNTIME_FUNCTION <rva sub_180112BF8, rva algn_180112CA1, \
                                  rva stru_180151704>
                RUNTIME_FUNCTION <rva sub_180112CA8, rva byte_180112D26, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_180112D2C, rva algn_180112D82, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva RtlSetIoCompletionCallback, rva loc_180112F0E, \
                                  rva stru_180151C60>
                RUNTIME_FUNCTION <rva loc_180112F0E, rva loc_180112F2B, \
                                  rva stru_180151C98>
                RUNTIME_FUNCTION <rva loc_180112F2B, rva byte_180112F45, \
                                  rva stru_180151CA0>
                RUNTIME_FUNCTION <rva sub_180112F4C, rva loc_1801130B9, \
                                  rva stru_180151D48>
                RUNTIME_FUNCTION <rva loc_1801130B9, rva algn_180113105, \
                                  rva stru_180151D74>
                RUNTIME_FUNCTION <rva sub_180113110, rva byte_180113256, \
                                  rva stru_180151D7C>
                RUNTIME_FUNCTION <rva sub_18011325C, rva loc_180113344, \
                                  rva stru_180151CD0>
                RUNTIME_FUNCTION <rva loc_180113344, rva byte_18011335F, \
                                  rva stru_180151CFC>
                RUNTIME_FUNCTION <rva sub_180113388, rva byte_180113463, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_18011346C, rva loc_1801134E0, \
                                  rva stru_180151CA8>
                RUNTIME_FUNCTION <rva loc_1801134E0, rva byte_1801134FB, \
                                  rva stru_180151CC8>
                RUNTIME_FUNCTION <rva sub_180113504, rva loc_180113646, \
                                  rva stru_180151D04>
                RUNTIME_FUNCTION <rva loc_180113646, rva byte_180113683, \
                                  rva stru_180151D40>
                RUNTIME_FUNCTION <rva sub_18011368C, rva algn_180113721, \
                                  rva stru_180151714>
                RUNTIME_FUNCTION <rva sub_180113728, rva algn_1801137F6, \
                                  rva stru_180151D90>
                RUNTIME_FUNCTION <rva SbExecuteProcedure, rva byte_180113824, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_18011382C, rva algn_18011392A, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180113930, rva algn_1801139C2, \
                                  rva stru_1801410A0>
                RUNTIME_FUNCTION <rva sub_1801139C8, rva byte_180113A7E, \
                                  rva stru_180151DB0>
                RUNTIME_FUNCTION <rva PssNtCaptureSnapshot, rva algn_180113FB0, \
                                  rva stru_180151DE4>
                RUNTIME_FUNCTION <rva PssNtDuplicateSnapshot, rva algn_180114036, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva PssNtFreeRemoteSnapshot, rva algn_180114245, \
                                  rva stru_180151DC4>
                RUNTIME_FUNCTION <rva PssNtFreeSnapshot, rva algn_1801143D4, \
                                  rva stru_180140D90>
                RUNTIME_FUNCTION <rva PssNtFreeWalkMarker, rva algn_18011440A, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva PssNtQuerySnapshot, rva algn_1801146AB, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva PssNtValidateDescriptor, rva loc_1801147B9, \
                                  rva stru_180151E14>
                RUNTIME_FUNCTION <rva loc_1801147B9, rva algn_180114844, \
                                  rva stru_180151E44>
                RUNTIME_FUNCTION <rva PssNtWalkSnapshot, rva algn_180114929, \
                                  rva stru_180140ACC>
                RUNTIME_FUNCTION <rva sub_180114930, rva algn_180114991, \
                                  rva stru_180151E00>
                RUNTIME_FUNCTION <rva sub_180114998, rva algn_180114B88, \
                                  rva stru_180151E4C>
                RUNTIME_FUNCTION <rva sub_180114B90, rva byte_180114CE4, \
                                  rva stru_180151E6C>
                RUNTIME_FUNCTION <rva sub_180114CEC, rva byte_180114E86, \
                                  rva stru_180141F2C>
                RUNTIME_FUNCTION <rva sub_180114E8C, rva byte_18011510C, \
                                  rva stru_180151E80>
                RUNTIME_FUNCTION <rva sub_180115114, rva byte_180115213, \
                                  rva stru_180151EB4>
                RUNTIME_FUNCTION <rva sub_18011521C, rva byte_180115303, \
                                  rva stru_180151ECC>
                RUNTIME_FUNCTION <rva sub_18011530C, rva algn_180115811, \
                                  rva stru_180151E9C>
                RUNTIME_FUNCTION <rva sub_180115820, rva byte_1801159AD, \
                                  rva stru_1801438B4>
                RUNTIME_FUNCTION <rva sub_1801159B4, rva algn_180115C85, \
                                  rva stru_180151F18>
                RUNTIME_FUNCTION <rva sub_180115C90, rva byte_180115CC0, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180115CD0, rva algn_180115D4A, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_180115D50, rva algn_180115D84, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180115D90, rva algn_180115DF0, \
                                  rva stru_1801408A4>
                RUNTIME_FUNCTION <rva sub_180115E00, rva algn_180115E30, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_180115E40, rva algn_180115EBA, \
                                  rva stru_180140A68>
                RUNTIME_FUNCTION <rva sub_180115EC0, rva algn_1801160E9, \
                                  rva stru_180151F04>
                RUNTIME_FUNCTION <rva sub_180116164, rva byte_180116414, \
                                  rva stru_180151EE0>
                RUNTIME_FUNCTION <rva sub_18011641C, rva byte_180116760, \
                                  rva stru_180151F38>
                RUNTIME_FUNCTION <rva sub_180116768, rva byte_180116993, \
                                  rva stru_180142AFC>
                RUNTIME_FUNCTION <rva sub_18011699C, rva algn_180116A19, \
                                  rva stru_18014ED50>
                RUNTIME_FUNCTION <rva sub_180116AD4, rva algn_180116BF9, \
                                  rva stru_180151F54>
                RUNTIME_FUNCTION <rva sub_180116C00, rva algn_180116D78, \
                                  rva stru_1801511A4>
                RUNTIME_FUNCTION <rva sub_180116D80, rva byte_180116F00, \
                                  rva stru_180151F68>
                RUNTIME_FUNCTION <rva sub_180116F08, rva byte_1801170AF, \
                                  rva stru_1801505F0>
                RUNTIME_FUNCTION <rva sub_1801170B8, rva algn_180117618, \
                                  rva stru_180151F7C>
                RUNTIME_FUNCTION <rva sub_180117620, rva algn_180117CCA, \
                                  rva stru_180151FA0>
                RUNTIME_FUNCTION <rva sub_180117CD0, rva byte_180117CFB, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180117D04, rva algn_180117E5A, \
                                  rva stru_180151FE0>
                RUNTIME_FUNCTION <rva sub_180117E60, rva algn_180117FE2, \
                                  rva stru_180151FC0>
                RUNTIME_FUNCTION <rva sub_180117FE8, rva byte_180118136, \
                                  rva stru_18015201C>
                RUNTIME_FUNCTION <rva sub_18011813C, rva algn_1801181E7, \
                                  rva stru_180152038>
                RUNTIME_FUNCTION <rva sub_1801181F0, rva byte_180118250, \
                                  rva stru_180151FFC>
                RUNTIME_FUNCTION <rva sub_180118258, rva byte_1801182F6, \
                                  rva stru_18015200C>
                RUNTIME_FUNCTION <rva sub_1801182FC, rva byte_1801184D5, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_1801184DC, rva algn_180118822, \
                                  rva stru_180152074>
                RUNTIME_FUNCTION <rva sub_180118828, rva algn_180118DF9, \
                                  rva stru_180152094>
                RUNTIME_FUNCTION <rva sub_180118E00, rva byte_180118F6D, \
                                  rva stru_180152060>
                RUNTIME_FUNCTION <rva sub_180118F74, rva byte_180118FF0, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180118FF8, rva byte_180119105, \
                                  rva stru_18015009C>
                RUNTIME_FUNCTION <rva sub_18011910C, rva byte_1801191AE, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_180119218, rva byte_18011924B, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_180119254, rva algn_18011985A, \
                                  rva stru_180152048>
                RUNTIME_FUNCTION <rva sub_180119860, rva algn_1801199D2, \
                                  rva stru_180152060>
                RUNTIME_FUNCTION <rva sub_1801199D8, rva byte_1801199F0, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva sub_1801199F8, rva byte_180119CBF, \
                                  rva stru_1801520AC>
                RUNTIME_FUNCTION <rva sub_180119CC8, rva byte_180119F9D, \
                                  rva stru_1801520D0>
                RUNTIME_FUNCTION <rva sub_180119FA4, rva algn_18011A0CE, \
                                  rva stru_1801520E8>
                RUNTIME_FUNCTION <rva sub_18011B008, rva algn_18011B0A2, \
                                  rva stru_18014F9A4>
                RUNTIME_FUNCTION <rva sub_18011B0A8, rva byte_18011B155, \
                                  rva stru_18014F9B0>
                RUNTIME_FUNCTION <rva sub_18011B15C, rva byte_18011B19C, \
                                  rva stru_180148724>
                RUNTIME_FUNCTION <rva sub_18011B1A4, rva loc_18011B1F0, \
                                  rva stru_180148794>
                RUNTIME_FUNCTION <rva loc_18011B1F0, rva byte_18011B21B, \
                                  rva stru_1801487A0>
                RUNTIME_FUNCTION <rva sub_18011B248, rva algn_18011B2B9, \
                                  rva stru_1801411EC>
                RUNTIME_FUNCTION <rva sub_18011B2C0, rva byte_18011B35B, \
                                  rva stru_180142244>
                RUNTIME_FUNCTION <rva sub_18011B364, rva byte_18011B3A6, \
                                  rva stru_1801408DC>
                RUNTIME_FUNCTION <rva sub_18011B3AC, rva algn_18011B3F8, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18011B400, rva algn_18011B449, \
                                  rva stru_180140A18>
                RUNTIME_FUNCTION <rva sub_18011B450, rva algn_18011B592, \
                                  rva stru_180151920>
                RUNTIME_FUNCTION <rva RtlAllocateMemoryBlockLookaside, \
                                  rva byte_18011C11C, rva stru_18014B7A8>
                RUNTIME_FUNCTION <rva RtlFreeMemoryBlockLookaside, rva loc_18011C1AC, \
                                  rva stru_180140A9C>
                RUNTIME_FUNCTION <rva loc_18011C1AC, rva algn_18011C1F9, \
                                  rva stru_18014B7BC>
                align 1000h
_pdata          ends
