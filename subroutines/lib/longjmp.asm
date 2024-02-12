longjmp         proc near               ; CODE XREF: sub_1403965B0+109148↓p
                                        ; sub_140396600+10910A↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, edx
                mov     rdi, rcx
                mov     rdx, [rcx+10h]
                mov     rcx, [rcx+50h]
                call    sub_140345260
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_1403F93E0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
longjmp         endp

algn_1403D02E2:                         ; DATA XREF: .pdata:00000001400E01D8↑o
                align 20h
; Exported entry 2605. TmInitSystemPhase2
; [00000007 BYTES: COLLAPSED FUNCTION TmInitSystemPhase2. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D030C:                         ; DATA XREF: .pdata:00000001400E01E4↑o
                align 20h
; Exported entry 2604. TmInitSystem
; [00000007 BYTES: COLLAPSED FUNCTION TmInitSystem. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D032C:                         ; DATA XREF: .pdata:00000001400E01F0↑o
                align 20h
; Exported entry 1534. NtCommitComplete
; [00000007 BYTES: COLLAPSED FUNCTION NtCommitComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D034C:                         ; DATA XREF: .pdata:00000001400E01FC↑o
                align 20h
; Exported entry 1535. NtCommitEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtCommitEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D036C:                         ; DATA XREF: .pdata:00000001400E0208↑o
                align 20h
; Exported entry 1536. NtCommitTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtCommitTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D038C:                         ; DATA XREF: .pdata:00000001400E0214↑o
                align 20h
; Exported entry 1541. NtCreateEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtCreateEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D03AC:                         ; DATA XREF: .pdata:00000001400E0220↑o
                align 20h
; Exported entry 1544. NtCreateResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtCreateResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D03CC:                         ; DATA XREF: .pdata:00000001400E022C↑o
                align 20h
; Exported entry 1546. NtCreateTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtCreateTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D03EC:                         ; DATA XREF: .pdata:00000001400E0238↑o
                align 20h
; Exported entry 1547. NtCreateTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION NtCreateTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D040C:                         ; DATA XREF: .pdata:00000001400E0244↑o
                align 20h
; Exported entry 1553. NtEnumerateTransactionObject
; [00000007 BYTES: COLLAPSED FUNCTION NtEnumerateTransactionObject. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D042C:                         ; DATA XREF: .pdata:00000001400E0250↑o
                align 20h
; Exported entry 1556. NtFreezeTransactions
; [00000007 BYTES: COLLAPSED FUNCTION NtFreezeTransactions. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D044C:                         ; DATA XREF: .pdata:00000001400E025C↑o
                align 20h
; Exported entry 1559. NtGetNotificationResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtGetNotificationResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D046C:                         ; DATA XREF: .pdata:00000001400E0268↑o
                align 20h
; Exported entry 1567. NtOpenEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtOpenEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D048C:                         ; DATA XREF: .pdata:00000001400E0274↑o
                align 20h
; Exported entry 1572. NtOpenResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtOpenResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D04AC:                         ; DATA XREF: .pdata:00000001400E0280↑o
                align 20h
; Exported entry 1576. NtOpenTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtOpenTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D04CC:                         ; DATA XREF: .pdata:00000001400E028C↑o
                align 20h
; Exported entry 1577. NtOpenTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION NtOpenTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D04EC:                         ; DATA XREF: .pdata:00000001400E0298↑o
                align 20h
; Exported entry 1578. NtPrePrepareComplete
; [00000007 BYTES: COLLAPSED FUNCTION NtPrePrepareComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D050C:                         ; DATA XREF: .pdata:00000001400E02A4↑o
                align 20h
; Exported entry 1579. NtPrePrepareEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtPrePrepareEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D052C:                         ; DATA XREF: .pdata:00000001400E02B0↑o
                align 20h
; Exported entry 1580. NtPrepareComplete
; [00000007 BYTES: COLLAPSED FUNCTION NtPrepareComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D054C:                         ; DATA XREF: .pdata:00000001400E02BC↑o
                align 20h
; Exported entry 1581. NtPrepareEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtPrepareEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D056C:                         ; DATA XREF: .pdata:00000001400E02C8↑o
                align 20h
; Exported entry 1582. NtPropagationComplete
; [00000007 BYTES: COLLAPSED FUNCTION NtPropagationComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D058C:                         ; DATA XREF: .pdata:00000001400E02D4↑o
                align 20h
; Exported entry 1583. NtPropagationFailed
; [00000007 BYTES: COLLAPSED FUNCTION NtPropagationFailed. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D05AC:                         ; DATA XREF: .pdata:00000001400E02E0↑o
                align 20h
; Exported entry 1590. NtQueryInformationEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtQueryInformationEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D05CC:                         ; DATA XREF: .pdata:00000001400E02EC↑o
                align 20h
; Exported entry 1593. NtQueryInformationResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtQueryInformationResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D05EC:                         ; DATA XREF: .pdata:00000001400E02F8↑o
                align 20h
; Exported entry 1596. NtQueryInformationTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtQueryInformationTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D060C:                         ; DATA XREF: .pdata:00000001400E0304↑o
                align 20h
; Exported entry 1597. NtQueryInformationTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION NtQueryInformationTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D062C:                         ; DATA XREF: .pdata:00000001400E0310↑o
                align 20h
; Exported entry 1606. NtReadOnlyEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtReadOnlyEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D064C:                         ; DATA XREF: .pdata:00000001400E031C↑o
                align 20h
; Exported entry 1607. NtRecoverEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtRecoverEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D066C:                         ; DATA XREF: .pdata:00000001400E0328↑o
                align 20h
; Exported entry 1608. NtRecoverResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtRecoverResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D068C:                         ; DATA XREF: .pdata:00000001400E0334↑o
                align 20h
; Exported entry 1609. NtRecoverTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION NtRecoverTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D06AC:                         ; DATA XREF: .pdata:00000001400E0340↑o
                align 20h
; Exported entry 1612. NtRollbackComplete
; [00000007 BYTES: COLLAPSED FUNCTION NtRollbackComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D06CC:                         ; DATA XREF: .pdata:00000001400E034C↑o
                align 20h
; Exported entry 1613. NtRollbackEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtRollbackEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D06EC:                         ; DATA XREF: .pdata:00000001400E0358↑o
                align 20h
; Exported entry 1614. NtRollbackTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtRollbackTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D070C:                         ; DATA XREF: .pdata:00000001400E0364↑o
                align 20h
; Exported entry 1618. NtSetInformationEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION NtSetInformationEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D072C:                         ; DATA XREF: .pdata:00000001400E0370↑o
                align 20h
; Exported entry 1621. NtSetInformationResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION NtSetInformationResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D074C:                         ; DATA XREF: .pdata:00000001400E037C↑o
                align 20h
; Exported entry 1624. NtSetInformationTransaction
; [00000007 BYTES: COLLAPSED FUNCTION NtSetInformationTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D076C:                         ; DATA XREF: .pdata:00000001400E0388↑o
                align 20h
; Exported entry 1630. NtThawTransactions
; [00000007 BYTES: COLLAPSED FUNCTION NtThawTransactions. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D078C:                         ; DATA XREF: .pdata:00000001400E0394↑o
                align 20h
; Exported entry 2592. TmCancelPropagationRequest
; [00000007 BYTES: COLLAPSED FUNCTION TmCancelPropagationRequest. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D07AC:                         ; DATA XREF: .pdata:00000001400E03A0↑o
                align 20h
; Exported entry 2593. TmCommitComplete
; [00000007 BYTES: COLLAPSED FUNCTION TmCommitComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D07CC:                         ; DATA XREF: .pdata:00000001400E03AC↑o
                align 20h
; Exported entry 2594. TmCommitEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmCommitEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D07EC:                         ; DATA XREF: .pdata:00000001400E03B8↑o
                align 20h
; Exported entry 2595. TmCommitTransaction
; [00000007 BYTES: COLLAPSED FUNCTION TmCommitTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D080C:                         ; DATA XREF: .pdata:00000001400E03C4↑o
                align 20h
; Exported entry 2596. TmCreateEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmCreateEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D082C:                         ; DATA XREF: .pdata:00000001400E03D0↑o
                align 20h
; Exported entry 2597. TmCurrentTransaction
; [00000007 BYTES: COLLAPSED FUNCTION TmCurrentTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D084C:                         ; DATA XREF: .pdata:00000001400E03DC↑o
                align 20h
; Exported entry 2598. TmDereferenceEnlistmentKey
; [00000007 BYTES: COLLAPSED FUNCTION TmDereferenceEnlistmentKey. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D086C:                         ; DATA XREF: .pdata:00000001400E03E8↑o
                align 20h
; Exported entry 2599. TmEnableCallbacks
; [00000007 BYTES: COLLAPSED FUNCTION TmEnableCallbacks. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D088C:                         ; DATA XREF: .pdata:00000001400E03F4↑o
                align 20h
; Exported entry 2600. TmEndPropagationRequest
; [00000007 BYTES: COLLAPSED FUNCTION TmEndPropagationRequest. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D08AC:                         ; DATA XREF: .pdata:00000001400E0400↑o
                align 20h
; Exported entry 2602. TmFreezeTransactions
; [00000007 BYTES: COLLAPSED FUNCTION TmFreezeTransactions. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D08CC:                         ; DATA XREF: .pdata:00000001400E040C↑o
                align 20h
; Exported entry 2603. TmGetTransactionId
; [00000007 BYTES: COLLAPSED FUNCTION TmGetTransactionId. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D08EC:                         ; DATA XREF: .pdata:00000001400E0418↑o
                align 20h
; Exported entry 2606. TmInitializeTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION TmInitializeTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D090C:                         ; DATA XREF: .pdata:00000001400E0424↑o
                align 20h
; Exported entry 2607. TmIsKTMCommitCoordinator
; [00000007 BYTES: COLLAPSED FUNCTION TmIsKTMCommitCoordinator. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D092C:                         ; DATA XREF: .pdata:00000001400E0430↑o
                align 20h
; Exported entry 2608. TmIsTransactionActive
; [00000007 BYTES: COLLAPSED FUNCTION TmIsTransactionActive. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D094C:                         ; DATA XREF: .pdata:00000001400E043C↑o
                align 20h
; Exported entry 2609. TmPrePrepareComplete
; [00000007 BYTES: COLLAPSED FUNCTION TmPrePrepareComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D096C:                         ; DATA XREF: .pdata:00000001400E0448↑o
                align 20h
; Exported entry 2610. TmPrePrepareEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmPrePrepareEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D098C:                         ; DATA XREF: .pdata:00000001400E0454↑o
                align 20h
; Exported entry 2611. TmPrepareComplete
; [00000007 BYTES: COLLAPSED FUNCTION TmPrepareComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D09AC:                         ; DATA XREF: .pdata:00000001400E0460↑o
                align 20h
; Exported entry 2612. TmPrepareEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmPrepareEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D09CC:                         ; DATA XREF: .pdata:00000001400E046C↑o
                align 20h
; Exported entry 2613. TmPropagationComplete
; [00000007 BYTES: COLLAPSED FUNCTION TmPropagationComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D09EC:                         ; DATA XREF: .pdata:00000001400E0478↑o
                align 20h
; Exported entry 2614. TmPropagationFailed
; [00000007 BYTES: COLLAPSED FUNCTION TmPropagationFailed. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0A0C:                         ; DATA XREF: .pdata:00000001400E0484↑o
                align 20h
; Exported entry 2615. TmReadOnlyEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmReadOnlyEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0A2C:                         ; DATA XREF: .pdata:00000001400E0490↑o
                align 20h
; Exported entry 2616. TmRecoverEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmRecoverEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0A4C:                         ; DATA XREF: .pdata:00000001400E049C↑o
                align 20h
; Exported entry 2617. TmRecoverResourceManager
; [00000007 BYTES: COLLAPSED FUNCTION TmRecoverResourceManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0A6C:                         ; DATA XREF: .pdata:00000001400E04A8↑o
                align 20h
; Exported entry 2618. TmRecoverTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION TmRecoverTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0A8C:                         ; DATA XREF: .pdata:00000001400E04B4↑o
                align 20h
; Exported entry 2619. TmReferenceEnlistmentKey
; [00000007 BYTES: COLLAPSED FUNCTION TmReferenceEnlistmentKey. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0AAC:                         ; DATA XREF: .pdata:00000001400E04C0↑o
                align 20h
; Exported entry 2620. TmRenameTransactionManager
; [00000007 BYTES: COLLAPSED FUNCTION TmRenameTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0ACC:                         ; DATA XREF: .pdata:00000001400E04CC↑o
                align 20h
; Exported entry 2621. TmRequestOutcomeEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmRequestOutcomeEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0AEC:                         ; DATA XREF: .pdata:00000001400E04D8↑o
                align 20h
; Exported entry 2623. TmRollbackComplete
; [00000007 BYTES: COLLAPSED FUNCTION TmRollbackComplete. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0B0C:                         ; DATA XREF: .pdata:00000001400E04E4↑o
                align 20h
; Exported entry 2624. TmRollbackEnlistment
; [00000007 BYTES: COLLAPSED FUNCTION TmRollbackEnlistment. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0B2C:                         ; DATA XREF: .pdata:00000001400E04F0↑o
                align 20h
; Exported entry 2625. TmRollbackTransaction
; [00000007 BYTES: COLLAPSED FUNCTION TmRollbackTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0B4C:                         ; DATA XREF: .pdata:00000001400E04FC↑o
                align 20h
; Exported entry 2626. TmSetCurrentTransaction
; [00000007 BYTES: COLLAPSED FUNCTION TmSetCurrentTransaction. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0B6C:                         ; DATA XREF: .pdata:00000001400E0508↑o
                align 20h
; Exported entry 2627. TmSinglePhaseReject
; [00000007 BYTES: COLLAPSED FUNCTION TmSinglePhaseReject. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0B8C:                         ; DATA XREF: .pdata:00000001400E0514↑o
                align 20h
; Exported entry 2628. TmThawTransactions
; [00000007 BYTES: COLLAPSED FUNCTION TmThawTransactions. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0BAC:                         ; DATA XREF: .pdata:00000001400E0520↑o
                align 20h
; [00000007 BYTES: COLLAPSED FUNCTION NtRegisterProtocolAddressInformation. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0BCC:                         ; DATA XREF: .pdata:00000001400E052C↑o
                align 20h
; [00000007 BYTES: COLLAPSED FUNCTION NtRenameTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0BEC:                         ; DATA XREF: .pdata:00000001400E0538↑o
                align 20h
; [00000007 BYTES: COLLAPSED FUNCTION NtSetInformationTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0C0C:                         ; DATA XREF: .pdata:00000001400E0544↑o
                align 20h
; [00000007 BYTES: COLLAPSED FUNCTION NtSinglePhaseReject. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0C2C:                         ; DATA XREF: .pdata:00000001400E0550↑o
                align 20h
; [00000007 BYTES: COLLAPSED FUNCTION NtRollforwardTransactionManager. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 5 dup(0CCh)
algn_1403D0C4C:                         ; DATA XREF: .pdata:00000001400E055C↑o
                align 20h
; Exported entry 2983. _strupr

; =============== S U B R O U T I N E =======================================


