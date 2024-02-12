NtQueryInformationProcess proc near     ; DATA XREF: .pdata:0000000140103254↑o
                                        ; PAGE:000000014098A628↓o

var_9E8         = dword ptr -9E8h
var_9C8         = qword ptr -9C8h
var_9C0         = qword ptr -9C0h
var_9B8         = qword ptr -9B8h
var_9A8         = qword ptr -9A8h
var_9A0         = dword ptr -9A0h
var_99C         = byte ptr -99Ch
var_99B         = byte ptr -99Bh
var_99A         = byte ptr -99Ah
var_999         = byte ptr -999h
var_998         = dword ptr -998h
var_990         = qword ptr -990h
var_988         = dword ptr -988h
var_980         = qword ptr -980h
var_978         = word ptr -978h
var_974         = dword ptr -974h
var_970         = dword ptr -970h
var_968         = qword ptr -968h
var_960         = dword ptr -960h
var_958         = qword ptr -958h
var_950         = qword ptr -950h
var_948         = qword ptr -948h
var_940         = qword ptr -940h
var_938         = dword ptr -938h
var_934         = dword ptr -934h
var_930         = dword ptr -930h
var_92C         = dword ptr -92Ch
var_928         = dword ptr -928h
var_920         = qword ptr -920h
var_918         = qword ptr -918h
var_910         = qword ptr -910h
var_908         = xmmword ptr -908h
var_8F8         = xmmword ptr -8F8h
var_8E8         = xmmword ptr -8E8h
var_8D8         = dword ptr -8D8h
var_8D4         = dword ptr -8D4h
var_8D0         = dword ptr -8D0h
var_8C8         = qword ptr -8C8h
var_8C0         = qword ptr -8C0h
var_8B8         = qword ptr -8B8h
var_8B0         = qword ptr -8B0h
var_8A8         = qword ptr -8A8h
var_8A0         = qword ptr -8A0h
var_898         = qword ptr -898h
var_890         = qword ptr -890h
var_888         = qword ptr -888h
var_880         = qword ptr -880h
var_878         = xmmword ptr -878h
var_868         = xmmword ptr -868h
var_858         = xmmword ptr -858h
var_848         = qword ptr -848h
var_840         = qword ptr -840h
var_838         = qword ptr -838h
var_830         = qword ptr -830h
var_828         = qword ptr -828h
var_820         = qword ptr -820h
var_818         = qword ptr -818h
var_810         = qword ptr -810h
var_808         = dword ptr -808h
var_804         = dword ptr -804h
var_800         = qword ptr -800h
var_7F8         = qword ptr -7F8h
var_7F0         = qword ptr -7F0h
var_7E8         = xmmword ptr -7E8h
var_7D8         = dword ptr -7D8h
var_7D0         = xmmword ptr -7D0h
var_7C0         = xmmword ptr -7C0h
var_7B0         = xmmword ptr -7B0h
var_798         = xmmword ptr -798h
var_788         = xmmword ptr -788h
var_778         = xmmword ptr -778h
var_768         = xmmword ptr -768h
var_758         = xmmword ptr -758h
var_748         = xmmword ptr -748h
var_738         = xmmword ptr -738h
var_728         = xmmword ptr -728h
var_718         = xmmword ptr -718h
var_708         = xmmword ptr -708h
var_6F8         = xmmword ptr -6F8h
var_6E8         = xmmword ptr -6E8h
var_6D8         = xmmword ptr -6D8h
var_6C8         = xmmword ptr -6C8h
var_6B8         = xmmword ptr -6B8h
var_6A8         = qword ptr -6A8h
var_698         = qword ptr -698h
var_690         = xmmword ptr -690h
var_680         = qword ptr -680h
var_678         = qword ptr -678h
var_668         = xmmword ptr -668h
var_658         = qword ptr -658h
var_650         = dword ptr -650h
var_648         = xmmword ptr -648h
var_638         = xmmword ptr -638h
var_628         = xmmword ptr -628h
var_618         = xmmword ptr -618h
var_608         = xmmword ptr -608h
var_5F8         = xmmword ptr -5F8h
var_5E8         = xmmword ptr -5E8h
var_5D8         = xmmword ptr -5D8h
var_5C8         = qword ptr -5C8h
var_5C0         = dword ptr -5C0h
var_5B8         = xmmword ptr -5B8h
var_5A8         = xmmword ptr -5A8h
var_598         = qword ptr -598h
var_590         = xmmword ptr -590h
var_580         = xmmword ptr -580h
var_570         = xmmword ptr -570h
var_560         = xmmword ptr -560h
var_550         = xmmword ptr -550h
var_540         = xmmword ptr -540h
var_528         = xmmword ptr -528h
var_518         = xmmword ptr -518h
var_508         = xmmword ptr -508h
var_4F8         = xmmword ptr -4F8h
var_4E8         = xmmword ptr -4E8h
var_4D8         = xmmword ptr -4D8h
var_4C8         = xmmword ptr -4C8h
var_4B8         = xmmword ptr -4B8h
var_4A8         = xmmword ptr -4A8h
var_498         = qword ptr -498h
var_488         = xmmword ptr -488h
var_478         = xmmword ptr -478h
var_468         = xmmword ptr -468h
var_458         = xmmword ptr -458h
var_448         = xmmword ptr -448h
var_438         = xmmword ptr -438h
var_428         = xmmword ptr -428h
var_418         = xmmword ptr -418h
var_408         = xmmword ptr -408h
var_3F8         = byte ptr -3F8h
var_3F0         = qword ptr -3F0h
var_348         = byte ptr -348h
var_340         = qword ptr -340h
var_298         = byte ptr -298h
var_E8          = byte ptr -0E8h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407E7930 SIZE 00000210 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 9B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+9E8h+var_48], rax
                mov     r13d, r9d
                mov     rsi, r8
                movsxd  rdi, edx
                mov     r12, rcx
                mov     [rsp+9E8h+var_990], rcx
                mov     [rsp+9E8h+var_910], r8
                mov     [rsp+9E8h+var_800], r8
                mov     [rsp+9E8h+var_8D0], r13d
                mov     r15, [rsp+9E8h+arg_20]
                mov     [rsp+9E8h+var_968], r15
                xorps   xmm0, xmm0
                movups  [rsp+9E8h+var_590], xmm0
                movups  [rsp+9E8h+var_580], xmm0
                movups  [rsp+9E8h+var_570], xmm0
                xor     r14d, r14d
                mov     [rsp+9E8h+var_988], r14d
                mov     [rsp+9E8h+var_950], r14
                mov     [rsp+9E8h+var_974], r14d
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+9E8h+var_348]
                call    memset
                mov     [rsp+9E8h+var_940], r14
                mov     [rsp+9E8h+var_998], r14d
                mov     [rsp+9E8h+var_8D8], r14d
                mov     [rsp+9E8h+var_808], r14d
                xorps   xmm0, xmm0
                movups  [rsp+9E8h+var_7D0], xmm0
                movups  [rsp+9E8h+var_7C0], xmm0
                movups  [rsp+9E8h+var_7B0], xmm0
                xorps   xmm1, xmm1
                xor     eax, eax
                movups  [rsp+9E8h+var_528], xmm1
                movups  [rsp+9E8h+var_518], xmm1
                movups  [rsp+9E8h+var_508], xmm1
                movups  [rsp+9E8h+var_4F8], xmm1
                movups  [rsp+9E8h+var_4E8], xmm1
                movups  [rsp+9E8h+var_4D8], xmm1
                movups  [rsp+9E8h+var_4C8], xmm1
                movups  [rsp+9E8h+var_4B8], xmm1
                movups  [rsp+9E8h+var_4A8], xmm1
                mov     [rsp+9E8h+var_498], rax
                movups  [rsp+9E8h+var_868], xmm0
                movups  [rsp+9E8h+var_858], xmm0
                mov     [rsp+9E8h+var_848], rax
                mov     [rsp+9E8h+var_918], r14
                movups  [rsp+9E8h+var_690], xmm0
                mov     [rsp+9E8h+var_8C0], r14
                movups  [rsp+9E8h+var_5B8], xmm1
                movups  [rsp+9E8h+var_5A8], xmm1
                mov     [rsp+9E8h+var_598], rax
                mov     [rsp+9E8h+var_8C8], r14
                mov     [rsp+9E8h+var_958], r14
                mov     [rsp+9E8h+var_978], r14w
                mov     [rsp+9E8h+var_9A8], r14
                mov     [rsp+9E8h+var_898], r14
                mov     [rsp+9E8h+var_938], r14d
                movups  [rsp+9E8h+var_708], xmm0
                movups  [rsp+9E8h+var_6F8], xmm0
                movups  [rsp+9E8h+var_6E8], xmm0
                movups  [rsp+9E8h+var_6D8], xmm0
                movups  [rsp+9E8h+var_6C8], xmm0
                movups  [rsp+9E8h+var_6B8], xmm0
                mov     [rsp+9E8h+var_6A8], rax
                movups  [rsp+9E8h+var_798], xmm1
                movups  [rsp+9E8h+var_788], xmm1
                movups  [rsp+9E8h+var_778], xmm1
                movups  [rsp+9E8h+var_768], xmm1
                movups  [rsp+9E8h+var_758], xmm1
                movups  [rsp+9E8h+var_748], xmm1
                movups  [rsp+9E8h+var_738], xmm1
                mov     rax, gs:188h
                movzx   ebx, byte ptr [rax+232h]
                mov     [rsp+9E8h+var_99B], bl
                mov     rax, gs:188h
                mov     [rsp+9E8h+var_948], rax
                test    bl, bl
                jz      loc_1406C3BF5

loc_1406C3B60:                          ; DATA XREF: .rdata:0000000140074D5C↑o
;   __try { // __except at loc_1406C3BF0
                cmp     edi, 3Dh ; '='
                jz      short loc_1406C3B9B
                cmp     edi, 41h ; 'A'
                jnz     short loc_1406C3B6F
                lea     eax, [rdi-3Ah]
                jmp     short loc_1406C3B9E
; ---------------------------------------------------------------------------

loc_1406C3B6F:                          ; CODE XREF: NtQueryInformationProcess+248↑j
                lea     eax, [rdi-46h]
                test    eax, 0FFFFFFFBh
                jz      short loc_1406C3B9B
                cmp     edi, 5Ch ; '\'
                jnz     short loc_1406C3B83
                lea     eax, [rdi-55h]
                jmp     short loc_1406C3B9E
; ---------------------------------------------------------------------------

loc_1406C3B83:                          ; CODE XREF: NtQueryInformationProcess+25C↑j
                cmp     edi, 5Eh ; '^'
                jnz     short loc_1406C3B8D
                lea     eax, [rdi-57h]
                jmp     short loc_1406C3B9E
; ---------------------------------------------------------------------------

loc_1406C3B8D:                          ; CODE XREF: NtQueryInformationProcess+266↑j
                mov     eax, 3
                cmp     edi, 57h ; 'W'
                cmovz   rax, r14
                jmp     short loc_1406C3B9E
; ---------------------------------------------------------------------------

loc_1406C3B9B:                          ; CODE XREF: NtQueryInformationProcess+243↑j
                                        ; NtQueryInformationProcess+257↑j
                mov     rax, r14

loc_1406C3B9E:                          ; CODE XREF: NtQueryInformationProcess+24D↑j
                                        ; NtQueryInformationProcess+261↑j ...
                test    r13d, r13d
                jz      short loc_1406C3BD1
                test    rsi, rax
                jnz     loc_1406C7548
                lea     rcx, [rsi+r13]
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                ja      short loc_1406C3BC4
                cmp     rcx, rsi
                jnb     short loc_1406C3BDB

loc_1406C3BC4:                          ; CODE XREF: NtQueryInformationProcess+29D↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406C3BDB
; ---------------------------------------------------------------------------

loc_1406C3BD1:                          ; CODE XREF: NtQueryInformationProcess+281↑j
                mov     rdx, 7FFFFFFF0000h

loc_1406C3BDB:                          ; CODE XREF: NtQueryInformationProcess+2A2↑j
                                        ; NtQueryInformationProcess+2AF↑j
                test    r15, r15
                jz      short loc_1406C3BEE
                mov     rcx, r15
                cmp     r15, rdx
                cmovnb  rcx, rdx
                mov     eax, [rcx]
                mov     [rcx], eax

loc_1406C3BEE:                          ; CODE XREF: NtQueryInformationProcess+2BE↑j
                jmp     short loc_1406C3BFF
;   } // starts at 1406C3B60
; ---------------------------------------------------------------------------

loc_1406C3BF0:                          ; DATA XREF: .rdata:0000000140074D5C↑o
                                        ; .rdata:000000014007528C↑o
;   __except(1) // owned by 1406C3B60
;   __except(1) // owned by 1406C7548
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C3BF5:                          ; CODE XREF: NtQueryInformationProcess+23A↑j
                mov     rdx, 7FFFFFFF0000h

loc_1406C3BFF:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C3BEE↑j
                cmp     edi, 61h        ; switch 98 cases
                ja      def_1406C3C19   ; jumptable 00000001406C3C19 default case, cases 5,6,8,9,11,13,16,17,25,35,40,41,48,53,56,57,62,63,68,78,80,83,86,90,91,93,95
                lea     rcx, cs:140000000h
                mov     eax, ds:(jpt_1406C3C19 - 140000000h)[rcx+rdi*4]
                add     rax, rcx
                jmp     rax             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406C3C1F:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 27
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                cmp     r13d, 10h
                jnb     short loc_1406C3C69
                lea     rsi, [rsp+9E8h+var_690]
                mov     ecx, r14d
                jmp     short loc_1406C3C6D
; ---------------------------------------------------------------------------

loc_1406C3C69:                          ; CODE XREF: NtQueryInformationProcess+33A↑j
                lea     ecx, [r13-10h]

loc_1406C3C6D:                          ; CODE XREF: NtQueryInformationProcess+347↑j
                mov     rax, [rsp+9E8h+var_800]
                add     rax, 10h
                cmp     r13d, 10h
                cmovnb  r14, rax
                mov     [rsp+9E8h+var_988], ecx
                lea     r9, [rsp+9E8h+var_988]
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_14070A958
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     r12d, 0C0000004h
                test    edi, edi
                js      short loc_1406C3CBC
                test    r14, r14
                cmovz   edi, r12d

loc_1406C3CBC:                          ; CODE XREF: NtQueryInformationProcess+393↑j
                test    r15, r15
                jz      loc_1406C5B46
                mov     ecx, 80000000h
                lea     eax, [rdi+rcx]
                test    ecx, eax
                jnz     short loc_1406C3CDA
                cmp     edi, r12d
                jnz     loc_1406C5B46

loc_1406C3CDA:                          ; CODE XREF: NtQueryInformationProcess+3AF↑j
                mov     eax, [rsp+9E8h+var_988]
                add     eax, 10h

loc_1406C3CE1:                          ; DATA XREF: .rdata:0000000140074D6C↑o
;   __try { // __except at loc_1406C3CE9
                mov     [r15], eax
                jmp     loc_1406C5B46
;   } // starts at 1406C3CE1
; ---------------------------------------------------------------------------

loc_1406C3CE9:                          ; DATA XREF: .rdata:0000000140074D6C↑o
;   __except(1) // owned by 1406C3CE1
                mov     edi, eax
                jmp     loc_1406C5B46
; ---------------------------------------------------------------------------

loc_1406C3CF0:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 43
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                mov     r12, [rsp+9E8h+var_9A8]
                mov     rbx, [r12+5A0h]
                mov     [rsp+9E8h+var_940], rbx
                test    rbx, rbx
                jz      short loc_1406C3D72
                lea     rcx, [r12+458h]
                call    sub_14024C840
                test    al, al
                jz      short loc_1406C3D6B
                mov     rcx, rbx
                call    ObfReferenceObject
                lea     rcx, [r12+458h]
                call    sub_14024C380
                jmp     short loc_1406C3D8C
; ---------------------------------------------------------------------------

loc_1406C3D6B:                          ; CODE XREF: NtQueryInformationProcess+432↑j
                mov     edi, 0C000010Ah
                jmp     short loc_1406C3D8C
; ---------------------------------------------------------------------------

loc_1406C3D72:                          ; CODE XREF: NtQueryInformationProcess+421↑j
                lea     rdx, [rsp+9E8h+var_940]
                mov     rcx, r12
                call    PsReferenceProcessFilePointer
                mov     edi, eax
                mov     rbx, [rsp+9E8h+var_940]

loc_1406C3D8C:                          ; CODE XREF: NtQueryInformationProcess+449↑j
                                        ; NtQueryInformationProcess+450↑j
                mov     edx, 79517350h
                mov     rcx, r12
                call    ObfDereferenceObjectWithTag
                test    edi, edi
                js      loc_1406C5B46
                lea     rdx, [rsp+9E8h+var_958]
                mov     rcx, rbx
                call    IoQueryFileDosDeviceName
                mov     r12d, eax
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                test    r12d, r12d
                js      short loc_1406C3E33
                mov     rbx, [rsp+9E8h+var_958]
                movzx   edi, word ptr [rbx+2]
                lea     edi, [rdi+10h]

loc_1406C3DD0:                          ; DATA XREF: .rdata:0000000140074D7C↑o
;   __try { // __except at loc_1406C3E1A
                cmp     edi, r13d
                jbe     short loc_1406C3DE2
                mov     r12d, 0C0000004h
                mov     [rsp+9E8h+var_9A0], r12d
                jmp     short loc_1406C3E10
; ---------------------------------------------------------------------------

loc_1406C3DE2:                          ; CODE XREF: NtQueryInformationProcess+4B3↑j
                movzx   eax, word ptr [rbx]
                mov     [rsi], ax
                movzx   eax, word ptr [rbx+2]
                mov     [rsi+2], ax
                movzx   eax, word ptr [rbx+2]
                test    ax, ax
                jz      short loc_1406C3E0C
                lea     r14, [rsi+10h]
                mov     r8d, eax
                mov     rdx, [rbx+8]
                mov     rcx, r14
                call    memmove

loc_1406C3E0C:                          ; CODE XREF: NtQueryInformationProcess+4D7↑j
                mov     [rsi+8], r14

loc_1406C3E10:                          ; CODE XREF: NtQueryInformationProcess+4C0↑j
                test    r15, r15
                jz      short loc_1406C3E18
                mov     [r15], edi

loc_1406C3E18:                          ; CODE XREF: NtQueryInformationProcess+4F3↑j
                jmp     short loc_1406C3E29
;   } // starts at 1406C3DD0
; ---------------------------------------------------------------------------

loc_1406C3E1A:                          ; DATA XREF: .rdata:0000000140074D7C↑o
;   __except(1) // owned by 1406C3DD0
                mov     r12d, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rbx, [rsp+9E8h+var_958]

loc_1406C3E29:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C3E18↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406C3E33:                          ; CODE XREF: NtQueryInformationProcess+49F↑j
                                        ; NtQueryInformationProcess+2D1F↓j ...
                mov     eax, r12d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C3E3B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     byte ptr [rsp+9E8h+var_9C0], bl ; jumptable 00000001406C3C19 cases 15,42
                mov     [rsp+9E8h+var_9C8], r15
                mov     r9d, r13d
                mov     r8, rsi
                mov     edx, edi
                mov     rcx, r12
                call    sub_140909940
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C3E59:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                xor     edx, edx        ; jumptable 00000001406C3C19 case 0
                mov     r8d, 0A8h
                lea     rcx, [rsp+9E8h+var_3F8]
                call    memset
                mov     [rsp+9E8h+var_99C], 0
                cmp     r13d, 40h ; '@'
                jnz     short loc_1406C3EC4
                mov     rdi, rsi
                mov     [rsp+9E8h+var_958], rsi
                mov     eax, r14d

loc_1406C3E87:                          ; DATA XREF: .rdata:0000000140074D8C↑o
;   __try { // __except at loc_1406C3E92
                mov     r13d, 40h ; '@'
                mov     [rsi], r13
                jmp     short loc_1406C3EB6
;   } // starts at 1406C3E87
; ---------------------------------------------------------------------------

loc_1406C3E92:                          ; DATA XREF: .rdata:0000000140074D8C↑o
;   __except(1) // owned by 1406C3E87
                xor     r14d, r14d
                lea     r13d, [r14+40h]
                movzx   ebx, [rsp+9E8h+var_99B]
                mov     rdi, [rsp+9E8h+var_958]
                mov     r12, [rsp+9E8h+var_990]
                mov     rsi, rdi
                mov     r15, [rsp+9E8h+var_968]

loc_1406C3EB6:                          ; CODE XREF: NtQueryInformationProcess+570↑j
                test    eax, eax
                js      loc_1406C7524
                add     rsi, 8
                jmp     short loc_1406C3ED9
; ---------------------------------------------------------------------------

loc_1406C3EC4:                          ; CODE XREF: NtQueryInformationProcess+557↑j
                cmp     r13d, 30h ; '0'
                jnz     loc_1406C746B
                mov     rdi, r14
                mov     [rsp+9E8h+var_958], r14

loc_1406C3ED9:                          ; CODE XREF: NtQueryInformationProcess+5A2↑j
                mov     [rsp+9E8h+var_988], r13d
                mov     [rsp+9E8h+var_980], rsi
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     r12d, eax
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C3F21:                          ; DATA XREF: .rdata:0000000140074D9C↑o
;   __try { // __except at loc_1406C3F4F
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     eax, [rbx+7D4h]
                mov     [rsi], eax
                lea     rdx, [rsi+8]
                mov     rax, [rbx+550h]
                mov     [rdx], rax
                test    byte ptr [rbx+3E0h], 1
                jz      short loc_1406C3F4D
                mov     rcx, rbx
                call    sub_140891158

loc_1406C3F4D:                          ; CODE XREF: NtQueryInformationProcess+623↑j
                jmp     short loc_1406C3F78
;   } // starts at 1406C3F21
; ---------------------------------------------------------------------------

loc_1406C3F4F:                          ; DATA XREF: .rdata:0000000140074D9C↑o
;   __except(1) // owned by 1406C3F21
                mov     r12d, eax
                mov     [rsp+9E8h+var_9A0], eax
                xor     r14d, r14d
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rsi, [rsp+9E8h+var_980]
                mov     rdi, [rsp+9E8h+var_958]
                mov     r13d, [rsp+9E8h+var_988]
                mov     r15, [rsp+9E8h+var_968]

loc_1406C3F78:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C3F4D↑j
                mov     rcx, rbx
                test    r12d, r12d
                js      loc_1406C68A3
                mov     [rsp+9E8h+var_980], r14
                call    sub_140310288
                mov     [rsp+9E8h+var_998], eax
                lea     ecx, [rax-1]
                test    eax, ecx
                jz      short loc_1406C3FAA
                mov     rax, [rsp+9E8h+var_948]
                cmp     rbx, [rax+220h]
                jnz     short loc_1406C4006

loc_1406C3FAA:                          ; CODE XREF: NtQueryInformationProcess+677↑j
                xor     r9d, r9d
                lea     r8, [rsp+9E8h+var_998]
                lea     rdx, [rsp+9E8h+var_3F8]
                mov     rcx, rbx
                call    sub_1403102A0
                mov     r8d, [rsp+9E8h+var_998]
                lea     eax, [r8-1]
                test    r8d, eax
                jnz     short loc_1406C3FD6
                bsf     edx, r8d
                jmp     short loc_1406C3FF4
; ---------------------------------------------------------------------------

loc_1406C3FD6:                          ; CODE XREF: NtQueryInformationProcess+6AE↑j
                mov     rax, [rsp+9E8h+var_948]
                cmp     rbx, [rax+220h]
                jnz     short loc_1406C4006
                movzx   edx, word ptr [rax+230h]
                bt      r8, rdx
                jnb     short loc_1406C4006

loc_1406C3FF4:                          ; CODE XREF: NtQueryInformationProcess+6B4↑j
                cmp     edx, 14h
                jz      short loc_1406C4006
                mov     rax, [rsp+rdx*8+9E8h+var_3F0]
                mov     [rsp+9E8h+var_980], rax

loc_1406C4006:                          ; CODE XREF: NtQueryInformationProcess+688↑j
                                        ; NtQueryInformationProcess+6C5↑j ...
                test    rdi, rdi
                jz      short loc_1406C401C
                xor     r8d, r8d
                lea     rdx, [rsp+9E8h+var_99C]
                mov     rcx, rbx
                call    sub_1405E8DA8
                nop

loc_1406C401C:                          ; CODE XREF: NtQueryInformationProcess+6E9↑j
                                        ; DATA XREF: .rdata:0000000140074DAC↑o
;   __try { // __except at loc_1406C412D
                mov     rax, [rsp+9E8h+var_980]
                mov     [rsi+10h], rax
                movsx   eax, byte ptr [rbx+280h]
                mov     [rsi+18h], eax
                mov     rax, [rbx+440h]
                mov     [rsi+20h], rax
                mov     rax, [rbx+540h]
                mov     [rsi+28h], rax
                test    rdi, rdi
                jz      loc_1406C4120
                mov     [rdi+38h], r14d
                mov     rcx, rbx
                call    PsIsProtectedProcess
                test    eax, eax
                jz      short loc_1406C4069
                mov     ecx, 1
                mov     [rdi+38h], ecx
                mov     r14d, ecx

loc_1406C4069:                          ; CODE XREF: NtQueryInformationProcess+73C↑j
                mov     rax, [rbx+580h]
                test    rax, rax
                jz      short loc_1406C4095
                movzx   ecx, word ptr [rax+8]
                mov     eax, 14Ch
                cmp     cx, ax
                jz      short loc_1406C408D
                mov     eax, 1C4h
                cmp     cx, ax
                jnz     short loc_1406C4095

loc_1406C408D:                          ; CODE XREF: NtQueryInformationProcess+761↑j
                or      r14d, 2
                mov     [rdi+38h], r14d

loc_1406C4095:                          ; CODE XREF: NtQueryInformationProcess+753↑j
                                        ; NtQueryInformationProcess+76B↑j
                lea     rcx, [rbx+464h]
                mov     eax, [rcx]
                test    eax, 40000008h
                jz      short loc_1406C40A9
                or      dword ptr [rdi+38h], 4

loc_1406C40A9:                          ; CODE XREF: NtQueryInformationProcess+783↑j
                mov     eax, [rdi+38h]
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     edx, [rbx+460h]
                shr     edx, 4
                xor     edx, eax
                and     edx, 8
                xor     edx, eax
                mov     [rdi+38h], edx
                mov     eax, [rbx+278h]
                shr     eax, 3
                and     eax, 1
                add     eax, [rbx+378h]
                jz      short loc_1406C40DE
                or      edx, 10h
                mov     [rdi+38h], edx

loc_1406C40DE:                          ; CODE XREF: NtQueryInformationProcess+7B6↑j
                mov     ecx, [rcx]
                shr     ecx, 0Fh
                xor     ecx, edx
                and     ecx, 20h
                xor     ecx, edx
                mov     [rdi+38h], ecx
                cmp     [rsp+9E8h+var_99C], 0
                jz      short loc_1406C40FA
                or      ecx, 40h
                mov     [rdi+38h], ecx

loc_1406C40FA:                          ; CODE XREF: NtQueryInformationProcess+7D2↑j
                test    byte ptr [rbx+3E0h], 1
                jz      short loc_1406C410A
                bts     ecx, 7
                mov     [rdi+38h], ecx

loc_1406C410A:                          ; CODE XREF: NtQueryInformationProcess+7E1↑j
                cmp     qword ptr [rbx+8C0h], 0
                jz      short loc_1406C411B
                bts     ecx, 8
                mov     [rdi+38h], ecx

loc_1406C411B:                          ; CODE XREF: NtQueryInformationProcess+7F2↑j
                mov     r12d, [rsp+9E8h+var_9A0]

loc_1406C4120:                          ; CODE XREF: NtQueryInformationProcess+728↑j
                test    r15, r15
                jz      short loc_1406C4128
                mov     [r15], r13d

loc_1406C4128:                          ; CODE XREF: NtQueryInformationProcess+803↑j
                jmp     loc_1406C668A
;   } // starts at 1406C401C
; ---------------------------------------------------------------------------

loc_1406C412D:                          ; DATA XREF: .rdata:0000000140074DAC↑o
;   __except(1) // owned by 1406C401C
                mov     r12d, eax
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C668A
; ---------------------------------------------------------------------------

loc_1406C413A:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 12
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     ebx, [rcx+5F8h]
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4191:                          ; DATA XREF: .rdata:0000000140074DBC↑o
;   __try { // __except at loc_1406C41A0
                mov     [rsi], ebx
                test    r15, r15
                jz      short loc_1406C419B
                mov     [r15], r13d

loc_1406C419B:                          ; CODE XREF: NtQueryInformationProcess+876↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4191
; ---------------------------------------------------------------------------

loc_1406C41A0:                          ; DATA XREF: .rdata:0000000140074DBC↑o
;   __except(1) // owned by 1406C4191
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C41A5:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     byte ptr [rsp+9E8h+var_9C0], bl ; jumptable 00000001406C3C19 case 1
                mov     [rsp+9E8h+var_9C8], r15
                mov     r9d, r13d
                mov     r8, rsi
                mov     rcx, r12
                call    sub_1406C2760
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C41C1:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     byte ptr [rsp+9E8h+var_9C8], bl ; jumptable 00000001406C3C19 case 14
                mov     r9, r15
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_140909798
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C41DB:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 30h ; '0' ; jumptable 00000001406C3C19 case 2
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_708]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140605A70
                mov     rax, qword ptr [rsp+9E8h+var_6E8+8]
                mov     qword ptr [rsp+9E8h+var_7D0], rax
                mov     rax, qword ptr [rsp+9E8h+var_6D8]
                mov     qword ptr [rsp+9E8h+var_7D0+8], rax
                mov     rax, qword ptr [rsp+9E8h+var_6D8+8]
                mov     qword ptr [rsp+9E8h+var_7C0], rax
                mov     rax, qword ptr [rsp+9E8h+var_6C8]
                mov     qword ptr [rsp+9E8h+var_7C0+8], rax
                mov     rax, qword ptr [rsp+9E8h+var_6C8+8]
                mov     qword ptr [rsp+9E8h+var_7B0], rax
                mov     rax, qword ptr [rsp+9E8h+var_6B8]
                mov     qword ptr [rsp+9E8h+var_7B0+8], rax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C42A0:                          ; DATA XREF: .rdata:0000000140074DCC↑o
;   __try { // __except at loc_1406C42D0
                movups  xmm0, [rsp+9E8h+var_7D0]
                movups  xmmword ptr [rsi], xmm0
                movups  xmm1, [rsp+9E8h+var_7C0]
                movups  xmmword ptr [rsi+10h], xmm1
                movups  xmm0, [rsp+9E8h+var_7B0]
                movups  xmmword ptr [rsi+20h], xmm0
                test    r15, r15
                jz      short loc_1406C42CB
                mov     [r15], r13d

loc_1406C42CB:                          ; CODE XREF: NtQueryInformationProcess+9A6↑j
                jmp     loc_1406C5B46
;   } // starts at 1406C42A0
; ---------------------------------------------------------------------------

loc_1406C42D0:                          ; DATA XREF: .rdata:0000000140074DCC↑o
;   __except(1) // owned by 1406C42A0
                mov     edi, eax
                jmp     loc_1406C5B46
; ---------------------------------------------------------------------------

loc_1406C42D7:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                lea     eax, [r13-58h]  ; jumptable 00000001406C3C19 case 3
                test    eax, 0FFFFFFE7h
                jnz     loc_1406C746B
                cmp     r13d, 68h ; 'h'
                jz      loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rax, [rbx+490h]
                mov     qword ptr [rsp+9E8h+var_798], rax
                mov     rax, [rbx+498h]
                mov     qword ptr [rsp+9E8h+var_798+8], rax
                mov     eax, [rbx+684h]
                mov     dword ptr [rsp+9E8h+var_788], eax
                lea     rdx, [rsp+9E8h+var_590]
                mov     rcx, rbx
                call    KeStackAttachProcess
                lea     rax, [rsp+9E8h+var_8D8]
                mov     [rsp+9E8h+var_9C0], rax
                lea     rax, [rsp+9E8h+var_8C0]
                mov     [rsp+9E8h+var_9C8], rax
                lea     r9, [rsp+9E8h+var_8C8]
                lea     r8, [rsp+9E8h+var_738]
                lea     rdx, [rsp+9E8h+var_778]
                lea     rcx, [rsp+9E8h+var_788+8]
                call    sub_14030F7D8
                mov     [rsp+9E8h+var_9A0], eax
                lea     rcx, [rsp+9E8h+var_590]
                call    KeUnstackDetachProcess
                lea     r9, [rsp+9E8h+var_778+8]
                lea     r8, [rsp+9E8h+var_768]
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1406C2734
                lea     r9, [rsp+9E8h+var_768+8]
                lea     r8, [rsp+9E8h+var_758]
                xor     edx, edx
                call    sub_1406C2734
                mov     rcx, [rbx+648h]
                shl     rcx, 0Ch
                mov     qword ptr [rsp+9E8h+var_758+8], rcx
                mov     rax, [rsp+9E8h+var_9A8]
                mov     rcx, [rax+650h]
                shl     rcx, 0Ch
                mov     qword ptr [rsp+9E8h+var_748], rcx
                mov     rax, [rsp+9E8h+var_9A8]
                mov     rcx, [rax+928h]
                shl     rcx, 0Ch
                mov     qword ptr [rsp+9E8h+var_738+8], rcx
                mov     rax, qword ptr [rsp+9E8h+var_758+8]
                mov     qword ptr [rsp+9E8h+var_748+8], rax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     eax, [rsp+9E8h+var_9A0]
                test    eax, eax
                js      loc_1406C7524

loc_1406C4459:                          ; DATA XREF: .rdata:0000000140074DDC↑o
;   __try { // __except at loc_1406C4479
                mov     r8, r13
                lea     rdx, [rsp+9E8h+var_798]
                mov     rcx, rsi
                call    memmove
                test    r15, r15
                jz      short loc_1406C4474
                mov     [r15], r13d

loc_1406C4474:                          ; CODE XREF: NtQueryInformationProcess+B4F↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4459
; ---------------------------------------------------------------------------

loc_1406C4479:                          ; DATA XREF: .rdata:0000000140074DDC↑o
;   __except(1) // owned by 1406C4459
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C447E:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 20h ; ' ' ; jumptable 00000001406C3C19 case 4
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_938]
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_1406C3850
                nop

loc_1406C44D7:                          ; DATA XREF: .rdata:0000000140074DEC↑o
;   __try { // __except at loc_1406C4518
                mov     ecx, cs:dword_140CFC418
                mov     eax, eax
                imul    rax, rcx
                mov     [rsi+10h], rax
                mov     eax, [rsp+9E8h+var_938]
                imul    rax, rcx
                mov     [rsi+18h], rax
                mov     rax, [rbx+468h]
                mov     [rsi], rax
                mov     rax, [rbx+840h]
                mov     [rsi+8], rax
                test    r15, r15
                jz      short loc_1406C4513
                mov     [r15], r13d

loc_1406C4513:                          ; CODE XREF: NtQueryInformationProcess+BEE↑j
                jmp     loc_1406C5B39
;   } // starts at 1406C44D7
; ---------------------------------------------------------------------------

loc_1406C4518:                          ; DATA XREF: .rdata:0000000140074DEC↑o
;   __except(1) // owned by 1406C44D7
                mov     edi, eax
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C5B39
; ---------------------------------------------------------------------------

loc_1406C4524:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 92
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C4567:                          ; DATA XREF: .rdata:0000000140074DFC↑o
;   __try { // __except at loc_1406C4580
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     rax, [rcx+8F8h]
                mov     [rsi], rax
                test    r15, r15
                jz      short loc_1406C457E
                mov     [r15], r13d

loc_1406C457E:                          ; CODE XREF: NtQueryInformationProcess+C59↑j
                jmp     short loc_1406C4587
;   } // starts at 1406C4567
; ---------------------------------------------------------------------------

loc_1406C4580:                          ; DATA XREF: .rdata:0000000140074DFC↑o
;   __except(1) // owned by 1406C4567
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]

loc_1406C4587:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C457E↑j
                                        ; NtQueryInformationProcess:loc_1406C4730↓j ...
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_1406C4591:                          ; CODE XREF: NtQueryInformationProcess+15EC↓j
                                        ; NtQueryInformationProcess:loc_1406C4F24↓j ...
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4598:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 7
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     rax, [rcx+578h]
                neg     rax
                sbb     rdx, rdx
                mov     [rsp+9E8h+var_950], rdx
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C45FE:                          ; DATA XREF: .rdata:0000000140074E0C↑o
;   __try { // __except at loc_1406C4616
                mov     rax, [rsp+9E8h+var_950]
                mov     [rsi], rax
                test    r15, r15
                jz      short loc_1406C4611
                mov     [r15], r13d

loc_1406C4611:                          ; CODE XREF: NtQueryInformationProcess+CEC↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C45FE
; ---------------------------------------------------------------------------

loc_1406C4616:                          ; DATA XREF: .rdata:0000000140074E0C↑o
;   __except(1) // owned by 1406C45FE
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C461B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 30
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                lea     r8, [rsp+9E8h+var_950]
                movzx   edx, bl
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140885B98
                mov     edi, eax
                mov     rdx, [rsp+9E8h+var_950]
                test    eax, eax
                cmovs   rdx, r14
                mov     [rsp+9E8h+var_950], rdx
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4699:                          ; DATA XREF: .rdata:0000000140074E1C↑o
;   __try { // __except at loc_1406C46B1
                mov     rax, [rsp+9E8h+var_950]
                mov     [rsi], rax
                test    r15, r15
                jz      short loc_1406C46AC
                mov     [r15], r13d

loc_1406C46AC:                          ; CODE XREF: NtQueryInformationProcess+D87↑j
                jmp     loc_1406C5B46
;   } // starts at 1406C4699
; ---------------------------------------------------------------------------

loc_1406C46B1:                          ; DATA XREF: .rdata:0000000140074E1C↑o
;   __except(1) // owned by 1406C4699
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_950]
                test    rcx, rcx
                jz      short loc_1406C46CA
                movzx   edx, [rsp+9E8h+var_99B]
                call    ObCloseHandle

loc_1406C46CA:                          ; CODE XREF: NtQueryInformationProcess+D9E↑j
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C46D1:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 31
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C4714:                          ; DATA XREF: .rdata:0000000140074E2C↑o
;   __try { // __except at loc_1406C4735
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+464h]
                shr     eax, 1
                not     eax
                and     eax, 1
                mov     [rsi], eax
                test    r15, r15
                jz      short loc_1406C4730
                mov     [r15], r13d

loc_1406C4730:                          ; CODE XREF: NtQueryInformationProcess+E0B↑j
                jmp     loc_1406C4587
;   } // starts at 1406C4714
; ---------------------------------------------------------------------------

loc_1406C4735:                          ; DATA XREF: .rdata:0000000140074E2C↑o
;   __except(1) // owned by 1406C4714
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C4741:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_934], r14d ; jumptable 00000001406C3C19 case 20
                lea     eax, [r13-4]
                test    eax, 0FFFFFFFBh
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_934]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140714F2C
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C47B3:                          ; DATA XREF: .rdata:0000000140074E3C↑o
;   __try { // __except at loc_1406C47D6
                mov     [rsi], edi
                cmp     r13d, 4
                jz      short loc_1406C47C5
                mov     eax, [rsp+9E8h+var_934]
                mov     [rsi+4], eax

loc_1406C47C5:                          ; CODE XREF: NtQueryInformationProcess+E99↑j
                test    r15, r15
                jz      short loc_1406C47D1
                mov     dword ptr [r15], 4

loc_1406C47D1:                          ; CODE XREF: NtQueryInformationProcess+EA8↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C47B3
; ---------------------------------------------------------------------------

loc_1406C47D6:                          ; DATA XREF: .rdata:0000000140074E3C↑o
;   __except(1) // owned by 1406C47B3
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C47DB:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 10
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 410h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                call    SkIsSecureKernel

loc_1406C4817:                          ; CODE XREF: NtQueryInformationProcess+3769↓j
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C482F:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 19
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C5B46
                mov     rcx, [rsp+9E8h+var_9A8]
                movzx   ebx, byte ptr [rcx+467h]
                and     ebx, 1
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C488C:                          ; DATA XREF: .rdata:0000000140074E4C↑o
;   __try { // __except at loc_1406C489B
                mov     [rsi], ebx
                test    r15, r15
                jz      short loc_1406C4896
                mov     [r15], r13d

loc_1406C4896:                          ; CODE XREF: NtQueryInformationProcess+F71↑j
                jmp     loc_1406C5B46
;   } // starts at 1406C488C
; ---------------------------------------------------------------------------

loc_1406C489B:                          ; DATA XREF: .rdata:0000000140074E4C↑o
;   __except(1) // owned by 1406C488C
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C48A0:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 22
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C5B46
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     ebx, [rcx+278h]
                shr     ebx, 1
                and     ebx, 1
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C48FE:                          ; DATA XREF: .rdata:0000000140074E5C↑o
;   __try { // __except at loc_1406C490D
                mov     [rsi], ebx
                test    r15, r15
                jz      short loc_1406C4908
                mov     [r15], r13d

loc_1406C4908:                          ; CODE XREF: NtQueryInformationProcess+FE3↑j
                jmp     loc_1406C5B46
;   } // starts at 1406C48FE
; ---------------------------------------------------------------------------

loc_1406C490D:                          ; DATA XREF: .rdata:0000000140074E5C↑o
;   __except(1) // owned by 1406C48FE
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4912:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 24h ; '$' ; jumptable 00000001406C3C19 case 23
                jb      loc_1406C746B
                cmp     r13d, 30h ; '0'
                jnz     short loc_1406C4940

loc_1406C4922:                          ; DATA XREF: .rdata:0000000140074E6C↑o
;   __try { // __except at loc_1406C493B
                mov     edi, [rsi+28h]
                mov     [rsp+9E8h+var_970], edi
;   } // starts at 1406C4922

loc_1406C4929:                          ; DATA XREF: .rdata:0000000140074E6C↑o
                test    edi, 0FFFFFFFEh
                jz      short loc_1406C494D
                mov     eax, 0C000000Dh
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C493B:                          ; DATA XREF: .rdata:0000000140074E6C↑o
;   __except(1) // owned by 1406C4922
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4940:                          ; CODE XREF: NtQueryInformationProcess+1000↑j
                cmp     r13d, 24h ; '$'
                jnz     loc_1406C746B
                mov     edi, r14d

loc_1406C494D:                          ; CODE XREF: NtQueryInformationProcess+100F↑j
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     r8d, edi
                mov     rdx, rsi
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_1406C7720
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                test    edi, edi
                js      loc_1406C5B46
                test    r15, r15
                jz      loc_1406C5B46

loc_1406C49B6:                          ; DATA XREF: .rdata:0000000140074E7C↑o
;   __try { // __except at loc_1406C49BE
                mov     [r15], r13d
                jmp     loc_1406C5B46
;   } // starts at 1406C49B6
; ---------------------------------------------------------------------------

loc_1406C49BE:                          ; DATA XREF: .rdata:0000000140074E7C↑o
;   __except(1) // owned by 1406C49B6
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C49C3:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 24
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_1402A9C50
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4A20:                          ; DATA XREF: .rdata:0000000140074E8C↑o
;   __try { // __except at loc_1406C4A2F
                mov     [rsi], ebx
                test    r15, r15
                jz      short loc_1406C4A2A
                mov     [r15], r13d

loc_1406C4A2A:                          ; CODE XREF: NtQueryInformationProcess+1105↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4A20
; ---------------------------------------------------------------------------

loc_1406C4A2F:                          ; DATA XREF: .rdata:0000000140074E8C↑o
;   __except(1) // owned by 1406C4A20
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4A34:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 2         ; jumptable 00000001406C3C19 case 18
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                movzx   eax, byte ptr [rcx+5B7h]
                mov     byte ptr [rsp+9E8h+var_978+1], al
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4A90:                          ; DATA XREF: .rdata:0000000140074E9C↑o
;   __try { // __except at loc_1406C4AA5
                movzx   eax, [rsp+9E8h+var_978]
                mov     [rsi], ax
                test    r15, r15
                jz      short loc_1406C4AA0
                mov     [r15], r13d

loc_1406C4AA0:                          ; CODE XREF: NtQueryInformationProcess+117B↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4A90
; ---------------------------------------------------------------------------

loc_1406C4AA5:                          ; DATA XREF: .rdata:0000000140074E9C↑o
;   __except(1) // owned by 1406C4A90
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4AAA:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 26
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_1406C4AFF
                mov     r14, [rax]

loc_1406C4AFF:                          ; CODE XREF: NtQueryInformationProcess+11DA↑j
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4B0A:                          ; DATA XREF: .rdata:0000000140074EAC↑o
;   __try { // __except at loc_1406C4B1E
                mov     [rsi], r14
                test    r15, r15
                jz      short loc_1406C4B19
                mov     dword ptr [r15], 8

loc_1406C4B19:                          ; CODE XREF: NtQueryInformationProcess+11F0↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4B0A
; ---------------------------------------------------------------------------

loc_1406C4B1E:                          ; DATA XREF: .rdata:0000000140074EAC↑o
;   __except(1) // owned by 1406C4B0A
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4B23:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 28
                jnz     loc_1406C746B

loc_1406C4B2D:                          ; DATA XREF: .rdata:0000000140074EBC↑o
;   __try { // __except at loc_1406C4B41
                mov     ecx, 1
                mov     [rsi], ecx
                test    r15, r15
                jz      short loc_1406C4B3C
                mov     [r15], r13d

loc_1406C4B3C:                          ; CODE XREF: NtQueryInformationProcess+1217↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4B2D
; ---------------------------------------------------------------------------

loc_1406C4B41:                          ; DATA XREF: .rdata:0000000140074EBC↑o
;   __except(1) // owned by 1406C4B2D
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4B46:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 29
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     ebx, [rcx+464h]
                shr     ebx, 0Dh
                and     ebx, 1
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C4BA3:                          ; DATA XREF: .rdata:0000000140074ECC↑o
;   __try { // __except at loc_1406C4BB2
                mov     [rsi], ebx
                test    r15, r15
                jz      short loc_1406C4BAD
                mov     [r15], r13d

loc_1406C4BAD:                          ; CODE XREF: NtQueryInformationProcess+1288↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C4BA3
; ---------------------------------------------------------------------------

loc_1406C4BB2:                          ; DATA XREF: .rdata:0000000140074ECC↑o
;   __except(1) // owned by 1406C4BA3
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4BB7:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 10h       ; jumptable 00000001406C3C19 case 32
                jb      loc_1406C746B
                movzx   ecx, bl
                call    sub_1407050C8
                test    eax, eax
                jnz     loc_1406C701A
                lea     ecx, [r13-10h]
                mov     rax, 0CCCCCCCCCCCCCCCDh
                mul     rcx
                shr     rdx, 7
                mov     [rsp+9E8h+var_980], rdx
                lea     r13, [rsi+10h]
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                mov     r12, [rsp+9E8h+var_9A8]
                mov     rcx, r12
                call    sub_140639CB4
                mov     rbx, rax
                mov     [rsp+9E8h+var_8C8], rax
                test    rax, rax
                jz      loc_1406C4E79
                mov     rcx, rax
                call    sub_14094E164
                mov     r8, rax
                mov     [rsp+9E8h+var_8C0], rax
                test    rax, rax
                jz      loc_1406C4E58

loc_1406C4C65:                          ; DATA XREF: .rdata:0000000140074EDC↑o
;   __try { // __except at loc_1406C4E16
                mov     [rsi+8], r14d
                xor     edx, edx
                mov     eax, [rax+48h]
                div     dword ptr [r8+4]
                mov     [rsp+9E8h+var_930], edx
                mov     r12d, 0C0000004h

loc_1406C4C7F:                          ; CODE XREF: NtQueryInformationProcess+14E4↓j
                mov     [rsp+9E8h+var_8D4], r14d
                cmp     r14d, [r8+4]
                jnb     loc_1406C4E09
                lea     rax, [rdx+rdx*4]
                shl     rax, 5
                add     rax, r8
                lea     rcx, [rsp+9E8h+var_668]
                movups  xmm0, xmmword ptr [rax+50h]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [rax+60h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+70h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+80h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+90h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+0A0h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm0, xmmword ptr [rax+0B0h]
                movups  xmmword ptr [rcx+60h], xmm0
                movups  xmm1, xmmword ptr [rax+0C0h]
                movups  xmmword ptr [rcx+70h], xmm1
                movups  xmm0, xmmword ptr [rax+0D0h]
                movups  xmmword ptr [rcx+80h], xmm0
                movups  xmm1, xmmword ptr [rax+0E0h]
                movups  xmmword ptr [rcx+90h], xmm1
                mov     rax, [rsi]
                mov     r9, [rsp+9E8h+var_658]
                cmp     rax, r9
                jz      short loc_1406C4D27
                test    rax, rax
                jnz     loc_1406C4DF0

loc_1406C4D27:                          ; CODE XREF: NtQueryInformationProcess+13FC↑j
                mov     eax, [rsp+9E8h+var_650]
                test    eax, eax
                jz      loc_1406C4DF0
                inc     dword ptr [rsi+8]
                mov     rcx, [rsp+9E8h+var_980]
                test    ecx, ecx
                jz      loc_1406C4DE8
                dec     ecx
                mov     [rsp+9E8h+var_980], rcx
                mov     [rsp+9E8h+var_804], ecx
                mov     [r13+0], r9
                movaps  xmm0, [rsp+9E8h+var_668]
                movups  xmmword ptr [r13+8], xmm0
                mov     [r13+18h], eax
                movaps  xmm0, [rsp+9E8h+var_648]
                movups  xmmword ptr [r13+20h], xmm0
                movaps  xmm1, [rsp+9E8h+var_638]
                movups  xmmword ptr [r13+30h], xmm1
                movaps  xmm0, [rsp+9E8h+var_628]
                movups  xmmword ptr [r13+40h], xmm0
                movaps  xmm1, [rsp+9E8h+var_618]
                movups  xmmword ptr [r13+50h], xmm1
                movaps  xmm0, [rsp+9E8h+var_608]
                movups  xmmword ptr [r13+60h], xmm0
                movaps  xmm1, [rsp+9E8h+var_5F8]
                movups  xmmword ptr [r13+70h], xmm1
                movaps  xmm0, [rsp+9E8h+var_5E8]
                movups  xmmword ptr [r13+80h], xmm0
                movaps  xmm1, [rsp+9E8h+var_5D8]
                movups  xmmword ptr [r13+90h], xmm1
                add     r13, 0A0h
                mov     [rsp+9E8h+var_680], r13
                jmp     short loc_1406C4DF0
; ---------------------------------------------------------------------------

loc_1406C4DE8:                          ; CODE XREF: NtQueryInformationProcess+1420↑j
                mov     edi, r12d
                mov     [rsp+9E8h+var_9A0], r12d

loc_1406C4DF0:                          ; CODE XREF: NtQueryInformationProcess+1401↑j
                                        ; NtQueryInformationProcess+1410↑j ...
                test    edx, edx
                jnz     short loc_1406C4DF8
                mov     edx, [r8+4]

loc_1406C4DF8:                          ; CODE XREF: NtQueryInformationProcess+14D2↑j
                dec     edx
                mov     [rsp+9E8h+var_930], edx
                inc     r14d
                jmp     loc_1406C4C7F
; ---------------------------------------------------------------------------

loc_1406C4E09:                          ; CODE XREF: NtQueryInformationProcess+136B↑j
                test    r15, r15
                jz      short loc_1406C4E14
                sub     r13d, esi
                mov     [r15], r13d

loc_1406C4E14:                          ; CODE XREF: NtQueryInformationProcess+14EC↑j
                jmp     short loc_1406C4E2C
;   } // starts at 1406C4C65
; ---------------------------------------------------------------------------

loc_1406C4E16:                          ; DATA XREF: .rdata:0000000140074EDC↑o
;   __except(1) // owned by 1406C4C65
                mov     edi, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rbx, [rsp+9E8h+var_8C8]
                mov     r8, [rsp+9E8h+var_8C0]

loc_1406C4E2C:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C4E14↑j
                mov     rdx, r8
                mov     rcx, rbx
                call    sub_14094DD14
                mov     r12, [rsp+9E8h+var_9A8]
                mov     rcx, r12
                call    PsReleaseProcessExitSynchronization
                mov     edx, 79517350h
                mov     rcx, r12
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4E58:                          ; CODE XREF: NtQueryInformationProcess+133F↑j
                mov     edi, 0C000000Dh
                mov     rcx, r12
                call    PsReleaseProcessExitSynchronization
                mov     edx, 79517350h
                mov     rcx, r12
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4E79:                          ; CODE XREF: NtQueryInformationProcess+1323↑j
                mov     edi, 0C000010Ah
                mov     edx, 79517350h
                mov     rcx, r12
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4E92:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 34
                jnz     loc_1406C746B
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C4EE0
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     r10, [rsp+9E8h+var_9A8]
                jmp     short loc_1406C4EE8
; ---------------------------------------------------------------------------

loc_1406C4EE0:                          ; CODE XREF: NtQueryInformationProcess+1580↑j
                call    PsGetCurrentProcess
                mov     r10, rax

loc_1406C4EE8:                          ; CODE XREF: NtQueryInformationProcess+15BE↑j
                lea     rdx, [rsp+9E8h+var_974]
                mov     rcx, r10
                call    sub_14070F5A8
                mov     ebx, eax
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C4F0A
                mov     edx, 79517350h
                mov     rcx, r10
                call    ObfDereferenceObjectWithTag

loc_1406C4F0A:                          ; CODE XREF: NtQueryInformationProcess+15DB↑j
                test    ebx, ebx
                js      loc_1406C4591

loc_1406C4F12:                          ; DATA XREF: .rdata:0000000140074EEC↑o
;   __try { // __except at loc_1406C4F29
                mov     eax, [rsp+9E8h+var_974]
                mov     [rsi], eax
                test    r15, r15
                jz      short loc_1406C4F24
                mov     dword ptr [r15], 4

loc_1406C4F24:                          ; CODE XREF: NtQueryInformationProcess+15FB↑j
                jmp     loc_1406C4591
;   } // starts at 1406C4F12
; ---------------------------------------------------------------------------

loc_1406C4F29:                          ; DATA XREF: .rdata:0000000140074EEC↑o
;   __except(1) // owned by 1406C4F12
                mov     ebx, eax
                jmp     loc_1406C4591
; ---------------------------------------------------------------------------

loc_1406C4F30:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_8B8], r14 ; jumptable 00000001406C3C19 case 36
                cmp     r13d, 4
                jnz     loc_1406C746B
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1406C4F5F
                call    PsGetCurrentProcess
                mov     rdx, rax
                mov     [rsp+9E8h+var_968], rax
                mov     [rsp+9E8h+var_9A8], rax
                jmp     short loc_1406C4FAE
; ---------------------------------------------------------------------------

loc_1406C4F5F:                          ; CODE XREF: NtQueryInformationProcess+1626↑j
                mov     r8, cs:PsProcessType
                mov     [rsp+9E8h+var_880], r14
                mov     [rsp+9E8h+var_9C0], r14
                lea     rax, [rsp+9E8h+var_880]
                mov     [rsp+9E8h+var_9C8], rax
                movzx   r9d, bl
                mov     edx, 20h ; ' '
                mov     rcx, r12
                call    ObReferenceObjectByHandle
                mov     rdx, [rsp+9E8h+var_880]
                mov     [rsp+9E8h+var_968], rdx
                mov     [rsp+9E8h+var_9A8], rdx
                test    eax, eax
                js      loc_1406C7524

loc_1406C4FAE:                          ; CODE XREF: NtQueryInformationProcess+163D↑j
                mov     [rsp+9E8h+var_9A0], r14d
                mov     r13d, 1
                nop     dword ptr [rax+00000000h]

loc_1406C4FC0:                          ; CODE XREF: NtQueryInformationProcess+1762↓j
                mov     eax, [rdx+528h]
                test    eax, eax
                jz      short loc_1406C4FFD

loc_1406C4FCA:                          ; DATA XREF: .rdata:0000000140074EFC↑o
;   __try { // __except at loc_1406C4FDA
                mov     [rsi], eax
                test    r15, r15
                jz      short loc_1406C4FD8
                mov     dword ptr [r15], 4

loc_1406C4FD8:                          ; CODE XREF: NtQueryInformationProcess+16AF↑j
                jmp     short loc_1406C4FE7
;   } // starts at 1406C4FCA
; ---------------------------------------------------------------------------

loc_1406C4FDA:                          ; DATA XREF: .rdata:0000000140074EFC↑o
;   __except(1) // owned by 1406C4FCA
                mov     r14d, eax
                mov     rdx, [rsp+9E8h+var_9A8]
                mov     r12, [rsp+9E8h+var_990]

loc_1406C4FE7:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C4FD8↑j
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C4FF5
                mov     rcx, rdx
                call    PsDereferenceSiloContext

loc_1406C4FF5:                          ; CODE XREF: NtQueryInformationProcess+16CB↑j
                                        ; NtQueryInformationProcess+31E9↓j ...
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C4FFD:                          ; CODE XREF: NtQueryInformationProcess+16A8↑j
                lea     rcx, [rsp+9E8h+var_8B8]
                call    KeQuerySystemTimePrecise
                mov     rdi, gs:20h
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     rbx, rax
                mov     ecx, r13d
                call    sub_1402D2900
                mov     ecx, eax
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                xor     ecx, eax
                mov     edx, [rdi+2D10h]
                xor     edx, ecx
                mov     ecx, [rdi+2D38h]
                xor     ecx, [rdi+7E90h]
                xor     ecx, [rdi+7E80h]
                xor     ecx, edx
                xor     ecx, ebx
                xor     ecx, dword ptr [rsp+9E8h+var_8B8+4]
                xor     ecx, dword ptr [rsp+9E8h+var_8B8]
                xor     eax, eax
                mov     rdx, [rsp+9E8h+var_968]
                lock cmpxchg [rdx+528h], ecx
                mov     rdx, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_968], rdx
                mov     r14d, [rsp+9E8h+var_9A0]
                jmp     loc_1406C4FC0
; ---------------------------------------------------------------------------

loc_1406C5087:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 40h ; '@' ; jumptable 00000001406C3C19 case 37
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                mov     r13, [rsp+9E8h+var_9A8]
                mov     rax, [rsp+9E8h+var_948]
                mov     ebx, 1
                cmp     r13, [rax+220h]
                jz      short loc_1406C513D
                lea     rcx, [r13+458h]
                call    sub_14024C840
                test    al, al
                jnz     short loc_1406C5102
                mov     edi, 0C000010Ah
                mov     r12, r14
                mov     r14d, ebx
                jmp     short loc_1406C5153
; ---------------------------------------------------------------------------

loc_1406C5102:                          ; CODE XREF: NtQueryInformationProcess+17D3↑j
                mov     r12, [r13+518h]
                test    r12, r12
                jz      short loc_1406C5127
                mov     rcx, r12
                call    ObfReferenceObject
                lea     rcx, [r13+458h]
                call    sub_14024C380
                mov     r14d, ebx
                jmp     short loc_1406C5153
; ---------------------------------------------------------------------------

loc_1406C5127:                          ; CODE XREF: NtQueryInformationProcess+17EC↑j
                mov     edi, 0C000000Dh
                lea     rcx, [r13+458h]
                call    sub_14024C380
                mov     r14d, ebx
                jmp     short loc_1406C5153
; ---------------------------------------------------------------------------

loc_1406C513D:                          ; CODE XREF: NtQueryInformationProcess+17C3↑j
                mov     r12, [r13+518h]
                mov     eax, edi
                mov     edi, 0C000010Ah
                test    r12, r12
                cmovz   eax, edi
                mov     edi, eax

loc_1406C5153:                          ; CODE XREF: NtQueryInformationProcess+17E0↑j
                                        ; NtQueryInformationProcess+1805↑j ...
                mov     edx, 79517350h
                mov     rcx, r13
                call    ObfDereferenceObjectWithTag
                test    edi, edi
                js      loc_1406C5B46
                mov     r8, rsi
                mov     edx, ebx
                mov     rcx, r12
                call    MmGetSectionInformation
                mov     edi, eax
                test    r14d, r14d
                jz      short loc_1406C5184
                mov     rcx, r12
                call    PsDereferenceSiloContext

loc_1406C5184:                          ; CODE XREF: NtQueryInformationProcess+185A↑j
                test    edi, edi
                js      loc_1406C5B46
                test    r15, r15
                jz      loc_1406C5B46

loc_1406C5195:                          ; DATA XREF: .rdata:0000000140074F0C↑o
;   __try { // __except at loc_1406C51A3
                mov     r13d, 40h ; '@'
                mov     [r15], r13d
                jmp     loc_1406C5B46
;   } // starts at 1406C5195
; ---------------------------------------------------------------------------

loc_1406C51A3:                          ; DATA XREF: .rdata:0000000140074F0C↑o
;   __except(1) // owned by 1406C5195
                mov     edi, eax
                jmp     loc_1406C5B46
; ---------------------------------------------------------------------------

loc_1406C51AA:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 33
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C51F1:                          ; DATA XREF: .rdata:0000000140074F1C↑o
;   __try { // __except at loc_1406C5211
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+464h]
                shr     eax, 1Bh
                and     eax, 7
                mov     [rsi], eax
                test    r15, r15
                jz      short loc_1406C520C
                mov     [r15], r13d

loc_1406C520C:                          ; CODE XREF: NtQueryInformationProcess+18E7↑j
                jmp     loc_1406C4587
;   } // starts at 1406C51F1
; ---------------------------------------------------------------------------

loc_1406C5211:                          ; DATA XREF: .rdata:0000000140074F1C↑o
;   __except(1) // owned by 1406C51F1
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C521D:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 10h       ; jumptable 00000001406C3C19 case 38
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_898]
                mov     rdi, [rsp+9E8h+var_9A8]
                mov     rcx, rdi
                call    PsQueryTotalCycleTimeProcess
                nop

loc_1406C5276:                          ; DATA XREF: .rdata:0000000140074F2C↑o
;   __try { // __except at loc_1406C5292
                mov     [rsi], rax
                mov     rax, [rsp+9E8h+var_898]
                mov     [rsi+8], rax
                test    r15, r15
                jz      short loc_1406C528D
                mov     [r15], r13d

loc_1406C528D:                          ; CODE XREF: NtQueryInformationProcess+1968↑j
                jmp     loc_1406C702B
;   } // starts at 1406C5276
; ---------------------------------------------------------------------------

loc_1406C5292:                          ; DATA XREF: .rdata:0000000140074F2C↑o
;   __except(1) // owned by 1406C5276
                mov     ebx, eax
                mov     rdi, [rsp+9E8h+var_9A8]
                jmp     loc_1406C702B
; ---------------------------------------------------------------------------

loc_1406C529E:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 39
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C52E1:                          ; DATA XREF: .rdata:0000000140074F3C↑o
;   __try { // __except at loc_1406C5301
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+460h]
                shr     eax, 0Ch
                and     eax, 7
                mov     [rsi], eax
                test    r15, r15
                jz      short loc_1406C52FC
                mov     [r15], r13d

loc_1406C52FC:                          ; CODE XREF: NtQueryInformationProcess+19D7↑j
                jmp     loc_1406C4587
;   } // starts at 1406C52E1
; ---------------------------------------------------------------------------

loc_1406C5301:                          ; DATA XREF: .rdata:0000000140074F3C↑o
;   __except(1) // owned by 1406C52E1
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C530D:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 28h ; '(' ; jumptable 00000001406C3C19 case 69
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     qword ptr [rsp+9E8h+var_858+8], r14
                mov     [rsp+9E8h+var_848], r14
                mov     rax, [rsp+9E8h+var_9A8]
                mov     rcx, [rax+510h]
                test    rcx, rcx
                jnz     short loc_1406C537A
                mov     r14d, 0C00001AEh
                jmp     loc_1406C5484
; ---------------------------------------------------------------------------

loc_1406C537A:                          ; CODE XREF: NtQueryInformationProcess+1A4D↑j
                lea     rdx, [rsp+9E8h+var_590]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    KeStackAttachProcess
                mov     [rsp+9E8h+var_9C8], r14
                mov     r9d, 28h ; '('
                lea     r8, [rsp+9E8h+var_5B8]
                lea     edx, [r9-0Ch]
                xor     ecx, ecx
                call    ZwQueryInformationJobObject
                mov     [rsp+9E8h+var_9C8], r14
                mov     r9d, 98h
                lea     r8, [rsp+9E8h+var_528]
                mov     edx, 9
                xor     ecx, ecx
                call    ZwQueryInformationJobObject
                lea     rcx, [rsp+9E8h+var_590]
                call    KeUnstackDetachProcess
                mov     rax, qword ptr [rsp+9E8h+var_5B8]
                mov     qword ptr [rsp+9E8h+var_868+8], rax
                mov     rax, qword ptr [rsp+9E8h+var_5B8+8]
                mov     qword ptr [rsp+9E8h+var_858], rax
                mov     rax, qword ptr [rsp+9E8h+var_5A8]
                mov     qword ptr [rsp+9E8h+var_868], rax
                test    dword ptr [rsp+9E8h+var_518], 200000h
                mov     rax, [rsp+9E8h+var_848]
                cmovnz  rax, [rsp+9E8h+var_498]
                mov     [rsp+9E8h+var_848], rax
                test    dword ptr [rsp+9E8h+var_518], 200h
                mov     rax, qword ptr [rsp+9E8h+var_858+8]
                cmovnz  rax, qword ptr [rsp+9E8h+var_4B8+8]
                mov     qword ptr [rsp+9E8h+var_858+8], rax

loc_1406C544E:                          ; DATA XREF: .rdata:0000000140074F4C↑o
;   __try { // __except at loc_1406C5481
                movups  xmm0, [rsp+9E8h+var_868]
                movups  xmmword ptr [rsi], xmm0
                movups  xmm1, [rsp+9E8h+var_858]
                movups  xmmword ptr [rsi+10h], xmm1
                movsd   xmm0, [rsp+9E8h+var_848]
                movsd   qword ptr [rsi+20h], xmm0
                test    r15, r15
                jz      short loc_1406C547F
                mov     dword ptr [r15], 28h ; '('
;   } // starts at 1406C544E

loc_1406C547F:                          ; CODE XREF: NtQueryInformationProcess+1B56↑j
                                        ; DATA XREF: .rdata:0000000140074F4C↑o
                jmp     short loc_1406C5484
; ---------------------------------------------------------------------------

loc_1406C5481:                          ; DATA XREF: .rdata:0000000140074F4C↑o
;   __except(1) // owned by 1406C544E
                mov     r14d, eax

loc_1406C5484:                          ; CODE XREF: NtQueryInformationProcess+1A55↑j
                                        ; NtQueryInformationProcess:loc_1406C547F↑j
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C549B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_888], r14 ; jumptable 00000001406C3C19 case 44
                cmp     r13d, 8
                jnz     loc_1406C746B

loc_1406C54AD:                          ; DATA XREF: .rdata:0000000140074F5C↑o
;   __try { // __except at loc_1406C55A1
                mov     rdi, [rsi]
                mov     [rsp+9E8h+var_678], rdi
;   } // starts at 1406C54AD

loc_1406C54B8:                          ; DATA XREF: .rdata:0000000140074F5C↑o
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_940]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:IoFileObjectType
                mov     edx, 100020h
                mov     rcx, rdi
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                test    eax, eax
                js      loc_1406C4587
                lea     rdx, [rsp+9E8h+var_888]
                call    PsReferenceProcessFilePointer
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     rcx, [rsp+9E8h+var_940]
                test    edi, edi
                js      loc_1406C5BF9
                mov     rsi, [rcx+28h]
                mov     rbx, [rsp+9E8h+var_888]
                mov     rdi, [rbx+28h]
                mov     r12d, r14d
                mov     eax, 0C0000001h
                cmp     rsi, rdi
                cmovnz  r12d, eax
                call    PsDereferenceSiloContext
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, r12d
                cmp     rsi, rdi
                jnz     short loc_1406C559C
                test    r15, r15
                jz      short loc_1406C559C

loc_1406C5597:                          ; DATA XREF: .rdata:0000000140074F6C↑o
;   __try { // __except at loc_1406C559C
                mov     [r15], r14d
                jmp     short $+2
;   } // starts at 1406C5597
; ---------------------------------------------------------------------------

loc_1406C559C:                          ; CODE XREF: NtQueryInformationProcess+1C70↑j
                                        ; NtQueryInformationProcess+1C75↑j ...
;   __except(1) // owned by 1406C5597
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C55A1:                          ; DATA XREF: .rdata:0000000140074F5C↑o
;   __except(1) // owned by 1406C54AD
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C55A6:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 45
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+460h]
                mov     [rsp+9E8h+var_970], ecx
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     edx, [rsp+9E8h+var_970]
                mov     eax, edx
                shr     eax, 13h
                and     eax, 1
                and     edx, 40000h

loc_1406C5617:                          ; DATA XREF: .rdata:0000000140074F7C↑o
;   __try { // __except at loc_1406C5630
                mov     ecx, eax
                or      ecx, 2
                test    edx, edx
                cmovz   ecx, eax
                mov     [rsi], ecx
                test    r15, r15
                jz      short loc_1406C562B
                mov     [r15], r13d

loc_1406C562B:                          ; CODE XREF: NtQueryInformationProcess+1D06↑j
                jmp     loc_1406C58A8
;   } // starts at 1406C5617
; ---------------------------------------------------------------------------

loc_1406C5630:                          ; DATA XREF: .rdata:0000000140074F7C↑o
;   __except(1) // owned by 1406C5617
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5635:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                lea     eax, [r13-8]    ; jumptable 00000001406C3C19 case 21
                test    eax, 0FFFFFFF7h
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_140310288
                mov     [rsp+9E8h+var_998], eax
                lea     ecx, [rax-1]
                test    eax, ecx
                jz      short loc_1406C56AE

loc_1406C5695:                          ; CODE XREF: NtQueryInformationProcess+1DAF↓j
                mov     edi, 0C000000Dh
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C56AE:                          ; CODE XREF: NtQueryInformationProcess+1D73↑j
                xor     r9d, r9d
                lea     r8, [rsp+9E8h+var_998]
                lea     rdx, [rsp+9E8h+var_348]
                mov     rcx, rbx
                call    sub_1403102A0
                mov     ecx, [rsp+9E8h+var_998]
                lea     eax, [rcx-1]
                test    ecx, eax
                jnz     short loc_1406C5695
                bsf     edx, ecx
                mov     rcx, [rsp+rdx*8+9E8h+var_340]

loc_1406C56DC:                          ; DATA XREF: .rdata:0000000140074F8C↑o
;   __try { // __except at loc_1406C56F6
                cmp     r13d, 10h
                jnz     short loc_1406C56E6
                mov     [rsi+8], dx

loc_1406C56E6:                          ; CODE XREF: NtQueryInformationProcess+1DC0↑j
                mov     [rsi], rcx
                test    r15, r15
                jz      short loc_1406C56F1
                mov     [r15], r13d

loc_1406C56F1:                          ; CODE XREF: NtQueryInformationProcess+1DCC↑j
                jmp     loc_1406C5B39
;   } // starts at 1406C56DC
; ---------------------------------------------------------------------------

loc_1406C56F6:                          ; DATA XREF: .rdata:0000000140074F8C↑o
;   __except(1) // owned by 1406C56DC
                mov     edi, eax
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C5B39
; ---------------------------------------------------------------------------

loc_1406C5702:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                test    r15, r15        ; jumptable 00000001406C3C19 case 47
                jz      loc_1406C747B
                test    r13b, 1
                jnz     loc_1406C747B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     r8, [rsp+9E8h+var_9A8]
                mov     rcx, r8
                call    sub_140310288
                mov     [rsp+9E8h+var_998], eax

loc_1406C575D:                          ; DATA XREF: .rdata:0000000140074F9C↑o
;   __try { // __except at loc_1406C57A3
                mov     ecx, [rsp+9E8h+var_988]

loc_1406C5761:                          ; CODE XREF: NtQueryInformationProcess+1E6D↓j
                bsf     edx, eax
                add     ecx, 2
                mov     [rsp+9E8h+var_988], ecx
                cmp     ecx, r13d
                ja      short loc_1406C577F
                mov     [rsi], dx
                add     rsi, 2
                mov     [rsp+9E8h+var_698], rsi

loc_1406C577F:                          ; CODE XREF: NtQueryInformationProcess+1E4E↑j
                lea     rax, [rsp+9E8h+var_998]
                btr     [rax], edx
                mov     eax, [rsp+9E8h+var_998]
                test    eax, eax
                jnz     short loc_1406C5761
                mov     [r15], ecx
                cmp     r13d, ecx
                sbb     ebx, ebx
                and     ebx, 0C0000023h
                mov     [rsp+9E8h+var_9A0], ebx
                jmp     short loc_1406C57AE
;   } // starts at 1406C575D
; ---------------------------------------------------------------------------

loc_1406C57A3:                          ; DATA XREF: .rdata:0000000140074F9C↑o
;   __except(1) // owned by 1406C575D
                mov     ebx, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     r8, [rsp+9E8h+var_9A8]

loc_1406C57AE:                          ; CODE XREF: NtQueryInformationProcess+1E81↑j
                mov     edx, 79517350h
                mov     rcx, r8
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C57C2:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 46
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+464h]
                mov     [rsp+9E8h+var_970], ecx
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                mov     eax, [rsp+9E8h+var_970]
                and     eax, 200000h

loc_1406C582A:                          ; DATA XREF: .rdata:0000000140074FAC↑o
;   __try { // __except at loc_1406C583B
                setnz   r14b
                mov     [rsi], r14d
                test    r15, r15
                jz      short loc_1406C5839
                mov     [r15], r13d

loc_1406C5839:                          ; CODE XREF: NtQueryInformationProcess+1F14↑j
                jmp     short loc_1406C58A8
;   } // starts at 1406C582A
; ---------------------------------------------------------------------------

loc_1406C583B:                          ; DATA XREF: .rdata:0000000140074FAC↑o
;   __except(1) // owned by 1406C582A
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5840:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 49
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rax, [rsp+9E8h+var_9A8]
                mov     rbx, [rax+548h]
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C589D:                          ; DATA XREF: .rdata:0000000140074FBC↑o
;   __try { // __except at loc_1406C58AF
                mov     [rsi], rbx
                test    r15, r15
                jz      short loc_1406C58A8
                mov     [r15], r13d
;   } // starts at 1406C589D

loc_1406C58A8:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C419B↑j
                                        ; NtQueryInformationProcess:loc_1406C4474↑j ...
                xor     eax, eax
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C58AF:                          ; DATA XREF: .rdata:0000000140074FBC↑o
;   __except(1) // owned by 1406C589D
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C58B4:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                movups  [rsp+9E8h+var_560], xmm0 ; jumptable 00000001406C3C19 case 50
                movups  [rsp+9E8h+var_550], xmm0
                movups  [rsp+9E8h+var_540], xmm0
                mov     [rsp+9E8h+var_960], r14d
                movups  [rsp+9E8h+var_908], xmm0
                mov     [rsp+9E8h+var_7F0], r14
                cmp     bl, 1
                jz      short loc_1406C58F3
                mov     eax, 0C0000001h
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C58F3:                          ; CODE XREF: NtQueryInformationProcess+1FC7↑j
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                mov     r9b, 1
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                lea     rcx, [rbx+458h]
                call    sub_14024C840
                test    al, al
                jnz     short loc_1406C595B
                mov     edi, 0C000010Ah
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C595B:                          ; CODE XREF: NtQueryInformationProcess+2020↑j
                lea     rdx, [rsp+9E8h+var_560]
                mov     rcx, rbx
                call    KeStackAttachProcess
                nop

loc_1406C596C:                          ; DATA XREF: .rdata:0000000140074FCC↑o
;   __try { // __except at loc_1406C5A61
                mov     rax, [rbx+580h]
                test    rax, rax
                jz      short loc_1406C597B
                mov     r14, [rax]

loc_1406C597B:                          ; CODE XREF: NtQueryInformationProcess+2056↑j
                test    r14, r14
                jz      short loc_1406C59D6
                mov     eax, [r14+10h]
                mov     [rsp+9E8h+var_7F8], rax
                mov     eax, [rax+68h]
                mov     [rsp+9E8h+var_960], eax
                mov     rbx, [rsp+9E8h+var_7F8]
                mov     rbx, [rbx+70h]
                mov     [rsp+9E8h+var_890], rbx
                mov     word ptr [rsp+9E8h+var_908], bx
                movzx   eax, word ptr [rsp+9E8h+var_890+2]
                mov     word ptr [rsp+9E8h+var_908+2], ax
                mov     eax, dword ptr [rsp+9E8h+var_890+4]
                mov     qword ptr [rsp+9E8h+var_908+8], rax
                jmp     loc_1406C5A5B
; ---------------------------------------------------------------------------

loc_1406C59D6:                          ; CODE XREF: NtQueryInformationProcess+205E↑j
                mov     rax, [rbx+550h]
                mov     rcx, [rax+20h]
                mov     [rsp+9E8h+var_8B0], rcx
                mov     rax, rcx
                add     rax, 0A4h
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                cmovnb  rax, rdx
                mov     eax, [rax]
                mov     [rsp+9E8h+var_960], eax
                xorps   xmm0, xmm0
                movups  [rsp+9E8h+var_7E8], xmm0
                mov     rcx, [rsp+9E8h+var_8B0]
                add     rcx, 0B0h
                cmp     rcx, rdx
                cmovnb  rcx, rdx
                mov     eax, [rcx]
                mov     dword ptr [rsp+9E8h+var_7E8], eax
                mov     rax, [rcx+8]
                mov     qword ptr [rsp+9E8h+var_7E8+8], rax
                movaps  xmm0, [rsp+9E8h+var_7E8]
                movdqa  [rsp+9E8h+var_908], xmm0
                movzx   ebx, word ptr [rsp+9E8h+var_908]

loc_1406C5A5B:                          ; CODE XREF: NtQueryInformationProcess+20B1↑j
                mov     edi, [rsp+9E8h+var_9A0]
                jmp     short loc_1406C5A83
;   } // starts at 1406C596C
; ---------------------------------------------------------------------------

loc_1406C5A61:                          ; DATA XREF: .rdata:0000000140074FCC↑o
;   __except(1) // owned by 1406C596C
                mov     edi, eax
                movzx   ebx, word ptr [rsp+9E8h+var_908]
                mov     rsi, [rsp+9E8h+var_910]
                mov     r13d, [rsp+9E8h+var_8D0]
                mov     r15, [rsp+9E8h+var_968]

loc_1406C5A83:                          ; CODE XREF: NtQueryInformationProcess+213F↑j
                lea     rcx, [rsp+9E8h+var_560]
                call    KeUnstackDetachProcess
                test    edi, edi
                js      loc_1406C5B28

loc_1406C5A98:                          ; DATA XREF: .rdata:0000000140074FDC↑o
;   __try { // __except at loc_1406C5ACA
                movzx   eax, bx
                add     eax, 6
                test    r15, r15
                jz      short loc_1406C5AA6
                mov     [r15], eax

loc_1406C5AA6:                          ; CODE XREF: NtQueryInformationProcess+2181↑j
                cmp     r13d, eax
                jnb     short loc_1406C5ABB
                mov     r12d, 0C0000004h
                mov     edi, r12d
                mov     [rsp+9E8h+var_9A0], r12d
                jmp     short loc_1406C5AC8
; ---------------------------------------------------------------------------

loc_1406C5ABB:                          ; CODE XREF: NtQueryInformationProcess+2189↑j
                mov     eax, [rsp+9E8h+var_960]
                mov     [rsi], eax
                mov     [rsi+4], bx

loc_1406C5AC8:                          ; CODE XREF: NtQueryInformationProcess+2199↑j
                jmp     short loc_1406C5AE0
;   } // starts at 1406C5A98
; ---------------------------------------------------------------------------

loc_1406C5ACA:                          ; DATA XREF: .rdata:0000000140074FDC↑o
;   __except(1) // owned by 1406C5A98
                mov     edi, eax
                mov     [rsp+9E8h+var_9A0], eax
                movzx   ebx, word ptr [rsp+9E8h+var_908]
                mov     rsi, [rsp+9E8h+var_910]

loc_1406C5AE0:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C5AC8↑j
                test    edi, edi
                js      short loc_1406C5B28
                test    bx, bx
                jz      short loc_1406C5B28
                movzx   ebx, bx
                call    PsGetCurrentProcess
                mov     r8, rax
                lea     rax, [rsp+9E8h+var_7F0]
                mov     [rsp+9E8h+var_9B8], rax
                mov     byte ptr [rsp+9E8h+var_9C0], 1
                mov     [rsp+9E8h+var_9C8], rbx
                lea     r9, [rsi+6]
                mov     rdx, qword ptr [rsp+9E8h+var_908+8]
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    MmCopyVirtualMemory
                mov     edi, eax
                jmp     short loc_1406C5B2D
; ---------------------------------------------------------------------------

loc_1406C5B28:                          ; CODE XREF: NtQueryInformationProcess+2172↑j
                                        ; NtQueryInformationProcess+21C2↑j ...
                mov     rbx, [rsp+9E8h+var_9A8]

loc_1406C5B2D:                          ; CODE XREF: NtQueryInformationProcess+2206↑j
                lea     rcx, [rbx+458h]
                call    sub_14024C380

loc_1406C5B39:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C4513↑j
                                        ; NtQueryInformationProcess+BFF↑j ...
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_1406C5B46:                          ; CODE XREF: NtQueryInformationProcess+39F↑j
                                        ; NtQueryInformationProcess+3B4↑j ...
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5B4D:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 10h       ; jumptable 00000001406C3C19 case 51
                jnb     short loc_1406C5B6D
                test    r15, r15
                jz      loc_1406C746B

loc_1406C5B5C:                          ; DATA XREF: .rdata:0000000140074FEC↑o
;   __try { // __except at loc_1406C5B68
                mov     dword ptr [r15], 10h
                jmp     loc_1406C746B
;   } // starts at 1406C5B5C
; ---------------------------------------------------------------------------

loc_1406C5B68:                          ; DATA XREF: .rdata:0000000140074FEC↑o
;   __except(1) // owned by 1406C5B5C
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5B6D:                          ; CODE XREF: NtQueryInformationProcess+2231↑j
                mov     r8, cs:PsProcessType
                mov     [rsp+9E8h+var_8A8], r14
                mov     [rsp+9E8h+var_9C0], r14
                lea     rax, [rsp+9E8h+var_8A8]
                mov     [rsp+9E8h+var_9C8], rax
                movzx   r9d, bl
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_948]
                mov     rcx, rbx
                call    sub_1402675A0
                mov     r14, [rsp+9E8h+var_8A8]
                mov     rcx, r14
                call    sub_140639CB4
                test    rax, rax
                jnz     short loc_1406C5BD3
                mov     edi, 0C000010Ah
                jmp     short loc_1406C5BEE
; ---------------------------------------------------------------------------

loc_1406C5BD3:                          ; CODE XREF: NtQueryInformationProcess+22AA↑j
                mov     r9, r15
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rcx, rax
                call    sub_14094DF64
                mov     edi, eax
                mov     rcx, r14
                call    PsReleaseProcessExitSynchronization

loc_1406C5BEE:                          ; CODE XREF: NtQueryInformationProcess+22B1↑j
                mov     rcx, rbx
                call    sub_14021E1F0
                mov     rcx, r14

loc_1406C5BF9:                          ; CODE XREF: NtQueryInformationProcess+1C38↑j
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5C05:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_92C], r14d ; jumptable 00000001406C3C19 case 52
                mov     [rsp+9E8h+var_99A], 0
                mov     [rsp+9E8h+var_999], 0
                cmp     r13d, 8
                jnz     loc_1406C746B

loc_1406C5C21:                          ; DATA XREF: .rdata:0000000140074FFC↑o
;   __try { // __except at loc_1406C633A
                mov     edi, [rsi]
                mov     [rsp+9E8h+var_7D8], edi
;   } // starts at 1406C5C21

loc_1406C5C2A:                          ; DATA XREF: .rdata:0000000140074FFC↑o
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C5C68
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                jns     short loc_1406C5C72
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C5C68:                          ; CODE XREF: NtQueryInformationProcess+230E↑j
                call    PsGetCurrentProcess
                mov     [rsp+9E8h+var_9A8], rax

loc_1406C5C72:                          ; CODE XREF: NtQueryInformationProcess+2341↑j
                lea     eax, [rdi-1]    ; switch 16 cases
                cmp     eax, 0Fh
                ja      def_1406C5C91   ; jumptable 00000001406C5C91 default case, case 5
                cdqe
                lea     rdx, cs:140000000h
                mov     ecx, ds:(jpt_1406C5C91 - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406C5C97:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 1

loc_1406C5C9C:                          ; DATA XREF: .rdata:000000014007500C↑o
;   __try { // __except at loc_1406C5CF6
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D0h]
                test    al, 40h
                jnz     short loc_1406C5CBE
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5CBE:                          ; CODE XREF: NtQueryInformationProcess+238D↑j
                test    al, 10h
                jz      short loc_1406C5CD1
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5CD1:                          ; CODE XREF: NtQueryInformationProcess+23A0↑j
                test    al, 20h
                jz      short loc_1406C5CE4
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5CE4:                          ; CODE XREF: NtQueryInformationProcess+23B3↑j
                test    al, 8
                jz      short loc_1406C5CF1
                mov     eax, [rsi+4]
                or      eax, 8
                mov     [rsi+4], eax

loc_1406C5CF1:                          ; CODE XREF: NtQueryInformationProcess+23C6↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5C9C
; ---------------------------------------------------------------------------

loc_1406C5CF6:                          ; DATA XREF: .rdata:000000014007500C↑o
;   __except(loc_1407E7946) // owned by 1406C5C9C
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5D04:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 3
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140639CB4
                test    rax, rax
                jz      short loc_1406C5D69
                lea     r8, [rsp+9E8h+var_999]
                lea     rdx, [rsp+9E8h+var_99A]
                mov     rcx, rax
                call    sub_140380CF0
                nop

loc_1406C5D2B:                          ; DATA XREF: .rdata:000000014007501C↑o
;   __try { // __except at loc_1406C5D51
                mov     [rsi+4], r14d
                cmp     [rsp+9E8h+var_99A], 0
                jz      short loc_1406C5D3F
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax

loc_1406C5D3F:                          ; CODE XREF: NtQueryInformationProcess+2414↑j
                cmp     [rsp+9E8h+var_999], 0
                jz      short loc_1406C5D4F
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax

loc_1406C5D4F:                          ; CODE XREF: NtQueryInformationProcess+2424↑j
                jmp     short loc_1406C5D5A
;   } // starts at 1406C5D2B
; ---------------------------------------------------------------------------

loc_1406C5D51:                          ; DATA XREF: .rdata:000000014007501C↑o
;   __except(loc_1407E795C) // owned by 1406C5D2B
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]

loc_1406C5D5A:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C5D4F↑j
                mov     rcx, [rsp+9E8h+var_9A8]
                call    PsReleaseProcessExitSynchronization
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5D69:                          ; CODE XREF: NtQueryInformationProcess+23F6↑j
                mov     edi, 0C000010Ah
                mov     [rsp+9E8h+var_9A0], edi
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5D77:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 4

loc_1406C5D7C:                          ; DATA XREF: .rdata:000000014007502C↑o
;   __try { // __except at loc_1406C5DDC
                mov     [rsi+4], r14d
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+9D0h]
                bt      ecx, 0Ch
                jnb     short loc_1406C5D99
                mov     eax, [rsi+4]
                or      eax, 1
                jmp     short loc_1406C5DA5
; ---------------------------------------------------------------------------

loc_1406C5D99:                          ; CODE XREF: NtQueryInformationProcess+246F↑j
                bt      ecx, 0Dh
                jnb     short loc_1406C5DA8
                mov     eax, [rsi+4]
                or      eax, 2

loc_1406C5DA5:                          ; CODE XREF: NtQueryInformationProcess+2477↑j
                mov     [rsi+4], eax

loc_1406C5DA8:                          ; CODE XREF: NtQueryInformationProcess+247D↑j
                call    sub_1403F11AC
                test    eax, eax
                jz      short loc_1406C5DD7
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+0A30h]
                test    cl, 2
                jz      short loc_1406C5DC9
                mov     eax, [rsi+4]
                or      eax, 4
                jmp     short loc_1406C5DD4
; ---------------------------------------------------------------------------

loc_1406C5DC9:                          ; CODE XREF: NtQueryInformationProcess+249F↑j
                test    cl, 4
                jz      short loc_1406C5DD7
                mov     eax, [rsi+4]
                or      eax, 8

loc_1406C5DD4:                          ; CODE XREF: NtQueryInformationProcess+24A7↑j
                mov     [rsi+4], eax

loc_1406C5DD7:                          ; CODE XREF: NtQueryInformationProcess+248F↑j
                                        ; NtQueryInformationProcess+24AC↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5D7C
; ---------------------------------------------------------------------------

loc_1406C5DDC:                          ; DATA XREF: .rdata:000000014007502C↑o
;   __except(loc_1407E7972) // owned by 1406C5D7C
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5DEA:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 2

loc_1406C5DEF:                          ; DATA XREF: .rdata:000000014007503C↑o
;   __try { // __except at loc_1406C5E4A
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D0h]
                bt      eax, 8
                jnb     short loc_1406C5E0C
                mov     eax, [rsi+4]
                or      eax, 1
                jmp     short loc_1406C5E18
; ---------------------------------------------------------------------------

loc_1406C5E0C:                          ; CODE XREF: NtQueryInformationProcess+24E2↑j
                bt      eax, 0Bh
                jnb     short loc_1406C5E1B
                mov     eax, [rsi+4]
                or      eax, 8

loc_1406C5E18:                          ; CODE XREF: NtQueryInformationProcess+24EA↑j
                mov     [rsi+4], eax

loc_1406C5E1B:                          ; CODE XREF: NtQueryInformationProcess+24F0↑j
                mov     eax, [rcx+9D0h]
                bt      eax, 9
                jnb     short loc_1406C5E36
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5E36:                          ; CODE XREF: NtQueryInformationProcess+2505↑j
                bt      eax, 0Ah
                jnb     short loc_1406C5E45
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax

loc_1406C5E45:                          ; CODE XREF: NtQueryInformationProcess+251A↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5DEF
; ---------------------------------------------------------------------------

loc_1406C5E4A:                          ; DATA XREF: .rdata:000000014007503C↑o
;   __except(loc_1407E7988) // owned by 1406C5DEF
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5E58:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 6

loc_1406C5E5D:                          ; DATA XREF: .rdata:000000014007504C↑o
;   __try { // __except at loc_1406C5E7E
                mov     [rsi+4], r14d
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+9D0h]
                test    cl, cl
                jns     short loc_1406C5E79
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax

loc_1406C5E79:                          ; CODE XREF: NtQueryInformationProcess+254E↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5E5D
; ---------------------------------------------------------------------------

loc_1406C5E7E:                          ; DATA XREF: .rdata:000000014007504C↑o
;   __except(loc_1407E799E) // owned by 1406C5E5D
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5E8C:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 7

loc_1406C5E91:                          ; DATA XREF: .rdata:000000014007505C↑o
;   __try { // __except at loc_1406C5ED8
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D0h]
                test    al, 1
                jz      short loc_1406C5EB3
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5EB3:                          ; CODE XREF: NtQueryInformationProcess+2582↑j
                test    al, 2
                jz      short loc_1406C5EC6
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C5EC6:                          ; CODE XREF: NtQueryInformationProcess+2595↑j
                test    al, 4
                jz      short loc_1406C5ED3
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax

loc_1406C5ED3:                          ; CODE XREF: NtQueryInformationProcess+25A8↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5E91
; ---------------------------------------------------------------------------

loc_1406C5ED8:                          ; DATA XREF: .rdata:000000014007505C↑o
;   __except(loc_1407E79B4) // owned by 1406C5E91
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5EE6:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 8
                lea     rdx, [rsp+9E8h+var_92C]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_14071E360
                nop

loc_1406C5EFE:                          ; DATA XREF: .rdata:000000014007506C↑o
;   __try { // __except at loc_1406C5F0D
                mov     eax, [rsp+9E8h+var_92C]
                mov     [rsi+4], eax
                jmp     loc_1406C631C
;   } // starts at 1406C5EFE
; ---------------------------------------------------------------------------

loc_1406C5F0D:                          ; DATA XREF: .rdata:000000014007506C↑o
;   __except(loc_1407E79CA) // owned by 1406C5EFE
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5F1B:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 9

loc_1406C5F20:                          ; DATA XREF: .rdata:000000014007507C↑o
;   __try { // __except at loc_1406C5F51
                mov     [rsi+4], r14d
                mov     rax, [rsp+9E8h+var_9A8]
                mov     ecx, [rax+9D0h]
                bt      ecx, 10h
                jnb     short loc_1406C5F3D
                mov     eax, [rsi+4]
                or      eax, 1
                jmp     short loc_1406C5F49
; ---------------------------------------------------------------------------

loc_1406C5F3D:                          ; CODE XREF: NtQueryInformationProcess+2613↑j
                bt      ecx, 11h
                jnb     short loc_1406C5F4C
                mov     eax, [rsi+4]
                or      eax, 2

loc_1406C5F49:                          ; CODE XREF: NtQueryInformationProcess+261B↑j
                mov     [rsi+4], eax

loc_1406C5F4C:                          ; CODE XREF: NtQueryInformationProcess+2621↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5F20
; ---------------------------------------------------------------------------

loc_1406C5F51:                          ; DATA XREF: .rdata:000000014007507C↑o
;   __except(loc_1407E79E0) // owned by 1406C5F20
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5F5F:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 10

loc_1406C5F64:                          ; DATA XREF: .rdata:000000014007508C↑o
;   __try { // __except at loc_1406C5FCD
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D0h]
                bt      eax, 13h
                jnb     short loc_1406C5F81
                mov     eax, [rsi+4]
                or      eax, 1
                jmp     short loc_1406C5F8D
; ---------------------------------------------------------------------------

loc_1406C5F81:                          ; CODE XREF: NtQueryInformationProcess+2657↑j
                bt      eax, 14h
                jnb     short loc_1406C5F90
                mov     eax, [rsi+4]
                or      eax, 8

loc_1406C5F8D:                          ; CODE XREF: NtQueryInformationProcess+265F↑j
                mov     [rsi+4], eax

loc_1406C5F90:                          ; CODE XREF: NtQueryInformationProcess+2665↑j
                mov     eax, [rcx+9D0h]
                bt      eax, 15h
                jnb     short loc_1406C5FA4
                mov     eax, [rsi+4]
                or      eax, 2
                jmp     short loc_1406C5FB0
; ---------------------------------------------------------------------------

loc_1406C5FA4:                          ; CODE XREF: NtQueryInformationProcess+267A↑j
                bt      eax, 16h
                jnb     short loc_1406C5FB3
                mov     eax, [rsi+4]
                or      eax, 10h

loc_1406C5FB0:                          ; CODE XREF: NtQueryInformationProcess+2682↑j
                mov     [rsi+4], eax

loc_1406C5FB3:                          ; CODE XREF: NtQueryInformationProcess+2688↑j
                test    dword ptr [rcx+9D0h], 40000h
                jz      short loc_1406C5FC8
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax

loc_1406C5FC8:                          ; CODE XREF: NtQueryInformationProcess+269D↑j
                jmp     loc_1406C631C
;   } // starts at 1406C5F64
; ---------------------------------------------------------------------------

loc_1406C5FCD:                          ; DATA XREF: .rdata:000000014007508C↑o
;   __except(loc_1407E79F6) // owned by 1406C5F64
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C5FDB:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 11

loc_1406C5FE0:                          ; DATA XREF: .rdata:000000014007509C↑o
;   __try { // __except at loc_1406C5FFC
                mov     [rsi+4], r14d
                call    PsGetWin32KFilterSet
                mov     ecx, [rsi+4]
                and     ecx, 0FFFFFFF0h
                and     eax, 0Fh
                or      ecx, eax
                mov     [rsi+4], ecx
                jmp     loc_1406C631C
;   } // starts at 1406C5FE0
; ---------------------------------------------------------------------------

loc_1406C5FFC:                          ; DATA XREF: .rdata:000000014007509C↑o
;   __except(loc_1407E7A0C) // owned by 1406C5FE0
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C600A:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 12

loc_1406C600F:                          ; DATA XREF: .rdata:00000001400750AC↑o
;   __try { // __except at loc_1406C610E
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D4h]
                test    al, 1
                jz      short loc_1406C6031
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6031:                          ; CODE XREF: NtQueryInformationProcess+2700↑j
                test    al, 4
                jz      short loc_1406C6044
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6044:                          ; CODE XREF: NtQueryInformationProcess+2713↑j
                bt      eax, 0Ah
                jnb     short loc_1406C6059
                mov     eax, [rsi+4]
                or      eax, 10h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6059:                          ; CODE XREF: NtQueryInformationProcess+2728↑j
                test    al, 10h
                jz      short loc_1406C606C
                mov     eax, [rsi+4]
                or      eax, 40h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C606C:                          ; CODE XREF: NtQueryInformationProcess+273B↑j
                test    al, 40h
                jz      short loc_1406C6080
                mov     eax, [rsi+4]
                bts     eax, 8
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6080:                          ; CODE XREF: NtQueryInformationProcess+274E↑j
                bt      eax, 8
                jnb     short loc_1406C6096
                mov     eax, [rsi+4]
                bts     eax, 0Ah
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6096:                          ; CODE XREF: NtQueryInformationProcess+2764↑j
                test    al, 2
                jz      short loc_1406C60A9
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C60A9:                          ; CODE XREF: NtQueryInformationProcess+2778↑j
                test    al, 8
                jz      short loc_1406C60BC
                mov     eax, [rsi+4]
                or      eax, 8
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C60BC:                          ; CODE XREF: NtQueryInformationProcess+278B↑j
                bt      eax, 0Bh
                jnb     short loc_1406C60D1
                mov     eax, [rsi+4]
                or      eax, 20h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C60D1:                          ; CODE XREF: NtQueryInformationProcess+27A0↑j
                test    al, 20h
                jz      short loc_1406C60E5
                mov     eax, [rsi+4]
                bts     eax, 7
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C60E5:                          ; CODE XREF: NtQueryInformationProcess+27B3↑j
                test    al, al
                jns     short loc_1406C60F9
                mov     eax, [rsi+4]
                bts     eax, 9
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C60F9:                          ; CODE XREF: NtQueryInformationProcess+27C7↑j
                bt      eax, 9
                jnb     short loc_1406C6109
                mov     eax, [rsi+4]
                bts     eax, 0Bh
                mov     [rsi+4], eax

loc_1406C6109:                          ; CODE XREF: NtQueryInformationProcess+27DD↑j
                jmp     loc_1406C631C
;   } // starts at 1406C600F
; ---------------------------------------------------------------------------

loc_1406C610E:                          ; DATA XREF: .rdata:00000001400750AC↑o
;   __except(loc_1407E7A22) // owned by 1406C600F
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C611C:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 13
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140721BF8
                nop

loc_1406C612C:                          ; DATA XREF: .rdata:00000001400750BC↑o
;   __try { // __except at loc_1406C615E
                mov     [rsi+4], r14d
                sub     eax, 1
                jz      short loc_1406C6150
                sub     eax, 1
                jz      short loc_1406C6147
                cmp     eax, 1
                jnz     short loc_1406C6159
                mov     eax, [rsi+4]
                or      eax, 2
                jmp     short loc_1406C6156
; ---------------------------------------------------------------------------

loc_1406C6147:                          ; CODE XREF: NtQueryInformationProcess+2818↑j
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax

loc_1406C6150:                          ; CODE XREF: NtQueryInformationProcess+2813↑j
                mov     eax, [rsi+4]
                or      eax, 1

loc_1406C6156:                          ; CODE XREF: NtQueryInformationProcess+2825↑j
                mov     [rsi+4], eax

loc_1406C6159:                          ; CODE XREF: NtQueryInformationProcess+281D↑j
                jmp     loc_1406C631C
;   } // starts at 1406C612C
; ---------------------------------------------------------------------------

loc_1406C615E:                          ; DATA XREF: .rdata:00000001400750BC↑o
;   __except(loc_1407E7A38) // owned by 1406C612C
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C616C:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 16
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_1405CED18
                nop

loc_1406C617C:                          ; DATA XREF: .rdata:00000001400750CC↑o
;   __try { // __except at loc_1406C61A0
                mov     [rsi+4], r14d
                sub     eax, 1
                jz      short loc_1406C6192
                cmp     eax, 1
                jnz     short loc_1406C619B
                mov     eax, [rsi+4]
                or      eax, 2
                jmp     short loc_1406C6198
; ---------------------------------------------------------------------------

loc_1406C6192:                          ; CODE XREF: NtQueryInformationProcess+2863↑j
                mov     eax, [rsi+4]
                or      eax, 1

loc_1406C6198:                          ; CODE XREF: NtQueryInformationProcess+2870↑j
                mov     [rsi+4], eax

loc_1406C619B:                          ; CODE XREF: NtQueryInformationProcess+2868↑j
                jmp     loc_1406C631C
;   } // starts at 1406C617C
; ---------------------------------------------------------------------------

loc_1406C61A0:                          ; DATA XREF: .rdata:00000001400750CC↑o
;   __except(loc_1407E7A4E) // owned by 1406C617C
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C61AE:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 14

loc_1406C61B3:                          ; DATA XREF: .rdata:00000001400750DC↑o
;   __try { // __except at loc_1406C6218
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D0h]
                bt      eax, 1Eh
                jnb     short loc_1406C61D7
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax
                mov     eax, [rcx+9D0h]

loc_1406C61D7:                          ; CODE XREF: NtQueryInformationProcess+28A6↑j
                test    eax, eax
                jns     short loc_1406C61E4
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax

loc_1406C61E4:                          ; CODE XREF: NtQueryInformationProcess+28B9↑j
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D4h]
                bt      eax, 0Ch
                jnb     short loc_1406C6204
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6204:                          ; CODE XREF: NtQueryInformationProcess+28D3↑j
                bt      eax, 0Dh
                jnb     short loc_1406C6213
                mov     eax, [rsi+4]
                or      eax, 8
                mov     [rsi+4], eax

loc_1406C6213:                          ; CODE XREF: NtQueryInformationProcess+28E8↑j
                jmp     loc_1406C631C
;   } // starts at 1406C61B3
; ---------------------------------------------------------------------------

loc_1406C6218:                          ; DATA XREF: .rdata:00000001400750DC↑o
;   __except(loc_1407E7A64) // owned by 1406C61B3
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     loc_1406C631C
; ---------------------------------------------------------------------------

loc_1406C6226:                          ; CODE XREF: NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: PAGE:jpt_1406C5C91↓o
                mov     [rsp+9E8h+var_9A0], r14d ; jumptable 00000001406C5C91 case 15

loc_1406C622B:                          ; DATA XREF: .rdata:00000001400750EC↑o
;   __try { // __except at loc_1406C6309
                mov     [rsi+4], r14d
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+9D4h]
                bt      eax, 0Eh
                jnb     short loc_1406C624F
                mov     eax, [rsi+4]
                or      eax, 1
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C624F:                          ; CODE XREF: NtQueryInformationProcess+291E↑j
                bt      eax, 0Fh
                jnb     short loc_1406C6264
                mov     eax, [rsi+4]
                or      eax, 2
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6264:                          ; CODE XREF: NtQueryInformationProcess+2933↑j
                bt      eax, 11h
                jnb     short loc_1406C6279
                mov     eax, [rsi+4]
                or      eax, 4
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C6279:                          ; CODE XREF: NtQueryInformationProcess+2948↑j
                bt      eax, 12h
                jnb     short loc_1406C628E
                mov     eax, [rsi+4]
                or      eax, 8
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C628E:                          ; CODE XREF: NtQueryInformationProcess+295D↑j
                bt      eax, 14h
                jnb     short loc_1406C62A3
                mov     eax, [rsi+4]
                or      eax, 10h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C62A3:                          ; CODE XREF: NtQueryInformationProcess+2972↑j
                bt      eax, 15h
                jnb     short loc_1406C62B8
                mov     eax, [rsi+4]
                or      eax, 20h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C62B8:                          ; CODE XREF: NtQueryInformationProcess+2987↑j
                bt      eax, 16h
                jnb     short loc_1406C62CD
                mov     eax, [rsi+4]
                or      eax, 40h
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C62CD:                          ; CODE XREF: NtQueryInformationProcess+299C↑j
                bt      eax, 17h
                jnb     short loc_1406C62E3
                mov     eax, [rsi+4]
                bts     eax, 7
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C62E3:                          ; CODE XREF: NtQueryInformationProcess+29B1↑j
                bt      eax, 1Eh
                jnb     short loc_1406C62F9
                mov     eax, [rsi+4]
                bts     eax, 8
                mov     [rsi+4], eax
                mov     eax, [rcx+9D4h]

loc_1406C62F9:                          ; CODE XREF: NtQueryInformationProcess+29C7↑j
                test    eax, eax
                jns     short loc_1406C6307
                mov     eax, [rsi+4]
                bts     eax, 9
                mov     [rsi+4], eax

loc_1406C6307:                          ; CODE XREF: NtQueryInformationProcess+29DB↑j
                jmp     short loc_1406C631C
;   } // starts at 1406C622B
; ---------------------------------------------------------------------------

loc_1406C6309:                          ; DATA XREF: .rdata:00000001400750EC↑o
;   __except(loc_1407E7A7A) // owned by 1406C622B
                mov     [rsp+9E8h+var_9A0], eax
                mov     r12, [rsp+9E8h+var_990]
                jmp     short loc_1406C631C
; ---------------------------------------------------------------------------

def_1406C5C91:                          ; CODE XREF: NtQueryInformationProcess+2358↑j
                                        ; NtQueryInformationProcess+2371↑j
                                        ; DATA XREF: ...
                mov     [rsp+9E8h+var_9A0], 0C00000BBh ; jumptable 00000001406C5C91 default case, case 5

loc_1406C631C:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C5CF1↑j
                                        ; NtQueryInformationProcess+23DF↑j ...
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C6331
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag

loc_1406C6331:                          ; CODE XREF: NtQueryInformationProcess+2A00↑j
                mov     eax, [rsp+9E8h+var_9A0]
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C633A:                          ; DATA XREF: .rdata:0000000140074FFC↑o
;   __except(loc_1407E7930) // owned by 1406C5C21
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C633F:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 54
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_140639CB4
                test    rax, rax
                jz      short loc_1406C63CF
                mov     rcx, rax
                call    sub_14094DF54
                nop

loc_1406C63A1:                          ; DATA XREF: .rdata:00000001400750FC↑o
;   __try { // __except at loc_1406C63AC
                test    al, al
                setnz   r14b
                mov     [rsi], r14d
                jmp     short loc_1406C63B3
;   } // starts at 1406C63A1
; ---------------------------------------------------------------------------

loc_1406C63AC:                          ; DATA XREF: .rdata:00000001400750FC↑o
;   __except(1) // owned by 1406C63A1
                mov     edi, eax
                mov     rbx, [rsp+9E8h+var_9A8]

loc_1406C63B3:                          ; CODE XREF: NtQueryInformationProcess+2A8A↑j
                                        ; NtQueryInformationProcess+3069↓j ...
                mov     rcx, rbx
                call    PsReleaseProcessExitSynchronization
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C63CF:                          ; CODE XREF: NtQueryInformationProcess+2A76↑j
                                        ; NtQueryInformationProcess+3051↓j
                mov     edi, 0C000010Ah
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C63E8:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 55
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C642B:                          ; DATA XREF: .rdata:000000014007510C↑o
;   __try { // __except at loc_1406C6448
                mov     dl, 1
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140908F74
                mov     [rsi], eax
                xor     edx, edx
                call    sub_140908F74
                mov     [rsi+4], eax
                jmp     loc_1406C4587
;   } // starts at 1406C642B
; ---------------------------------------------------------------------------

loc_1406C6448:                          ; DATA XREF: .rdata:000000014007510C↑o
;   __except(1) // owned by 1406C642B
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C6454:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_8A0], r14 ; jumptable 00000001406C3C19 case 58
                mov     [rsp+9E8h+var_980], r14
                cmp     r13d, 4
                jb      loc_1406C746B
                mov     rax, gs:188h
                movzx   r8d, byte ptr [rax+232h]
                lea     rax, [rsp+9E8h+var_980]
                mov     [rsp+9E8h+var_9C0], rax
                lea     rax, [rsp+9E8h+var_8A0]
                mov     [rsp+9E8h+var_9C8], rax
                mov     r9d, 1
                mov     edx, r13d
                mov     rcx, rsi
                call    sub_1406909D8
                test    eax, eax
                js      loc_1406C7524
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 440h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                jns     short loc_1406C64F2
                mov     rcx, [rsp+9E8h+var_980]
                call    sub_1402E68C4
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C64F2:                          ; CODE XREF: NtQueryInformationProcess+2BBF↑j
                xorps   xmm0, xmm0
                movups  [rsp+9E8h+var_878], xmm0
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_140639CB4
                test    rax, rax
                jz      short loc_1406C6557
                mov     rcx, [rsp+9E8h+var_8A0]
                mov     qword ptr [rsp+9E8h+var_878], rcx
                shr     r13d, 2
                mov     dword ptr [rsp+9E8h+var_878+8], r13d
                mov     dword ptr [rsp+9E8h+var_878+0Ch], r14d
                xor     r9d, r9d
                lea     r8, [rsp+9E8h+var_878]
                lea     rdx, sub_140581B40
                mov     rcx, rax
                call    ExEnumHandleTable
                mov     rcx, rbx
                call    PsReleaseProcessExitSynchronization
                jmp     short loc_1406C655D
; ---------------------------------------------------------------------------

loc_1406C6557:                          ; CODE XREF: NtQueryInformationProcess+2BED↑j
                mov     r14d, 0C000010Ah

loc_1406C655D:                          ; CODE XREF: NtQueryInformationProcess+2C35↑j
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                test    r15, r15
                jz      short loc_1406C6585

loc_1406C656F:                          ; DATA XREF: .rdata:000000014007511C↑o
;   __try { // __except at loc_1406C6582
                mov     eax, dword ptr [rsp+9E8h+var_878+0Ch]
                lea     eax, ds:0[rax*4]
                mov     [r15], eax
                jmp     short loc_1406C6585
;   } // starts at 1406C656F
; ---------------------------------------------------------------------------

loc_1406C6582:                          ; DATA XREF: .rdata:000000014007511C↑o
;   __except(1) // owned by 1406C656F
                mov     r14d, eax

loc_1406C6585:                          ; CODE XREF: NtQueryInformationProcess+2C4D↑j
                                        ; NtQueryInformationProcess+2C60↑j
                mov     rcx, [rsp+9E8h+var_980]
                call    sub_1402E68C4
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6597:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 60
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C5B46
                mov     [rsp+9E8h+var_9C8], r15
                movzx   r9d, bl
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    PsQueryProcessCommandLine

loc_1406C65EC:                          ; CODE XREF: NtQueryInformationProcess+2E3B↓j
                mov     edi, eax
                test    rbx, rbx
                jz      loc_1406C5B46

loc_1406C65F7:                          ; CODE XREF: NtQueryInformationProcess+3589↓j
                                        ; NtQueryInformationProcess+3592↓j
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C660B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 61
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     r12d, eax
                test    eax, eax
                js      loc_1406C3E33
                cmp     r13d, 1
                jnb     short loc_1406C6658
                mov     r12d, 0C0000004h
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     short loc_1406C6681
; ---------------------------------------------------------------------------

loc_1406C6658:                          ; CODE XREF: NtQueryInformationProcess+2D29↑j
                                        ; DATA XREF: .rdata:000000014007512C↑o
;   __try { // __except at loc_1406C6679
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    PsGetProcessProtection
                mov     [rsi], al
                test    r15, r15
                jz      short loc_1406C6674
                mov     ecx, 1
                mov     [r15], ecx
;   } // starts at 1406C6658

loc_1406C6674:                          ; CODE XREF: NtQueryInformationProcess+2D4A↑j
                                        ; DATA XREF: .rdata:000000014007512C↑o
                mov     r12d, r14d
                jmp     short loc_1406C6681
; ---------------------------------------------------------------------------

loc_1406C6679:                          ; DATA XREF: .rdata:000000014007512C↑o
;   __except(1) // owned by 1406C6658
                mov     r12d, eax
                mov     rbx, [rsp+9E8h+var_9A8]

loc_1406C6681:                          ; CODE XREF: NtQueryInformationProcess+2D36↑j
                                        ; NtQueryInformationProcess+2D57↑j
                test    rbx, rbx
                jz      loc_1406C3E33

loc_1406C668A:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C4128↑j
                                        ; NtQueryInformationProcess+815↑j
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, r12d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C669F:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 59
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+278h]
                shr     eax, 5
                and     eax, 1

loc_1406C66F3:                          ; DATA XREF: .rdata:000000014007513C↑o
;   __try { // __except at loc_1406C66FA
                mov     [rsi], eax
                jmp     loc_1406C4587
;   } // starts at 1406C66F3
; ---------------------------------------------------------------------------

loc_1406C66FA:                          ; DATA XREF: .rdata:000000014007513C↑o
;   __except(1) // owned by 1406C66F3
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C6706:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 64
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_1406C5B46
                mov     [rsp+9E8h+var_9C8], r15
                movzx   r9d, bl
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_1405F1014
                jmp     loc_1406C65EC
; ---------------------------------------------------------------------------

loc_1406C6760:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_928], r14d ; jumptable 00000001406C3C19 case 65
                cmp     r13d, 20h ; ' '
                jz      short loc_1406C6779
                mov     r12d, 0C0000004h
                jmp     loc_1406C6895
; ---------------------------------------------------------------------------

loc_1406C6779:                          ; CODE XREF: NtQueryInformationProcess+2E4C↑j
                                        ; DATA XREF: .rdata:000000014007514C↑o
;   __try { // __except at loc_1406C6892
                movups  xmm0, xmmword ptr [rsi]
                movups  [rsp+9E8h+var_8F8], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  [rsp+9E8h+var_8E8], xmm1
;   } // starts at 1406C6779

loc_1406C6790:                          ; DATA XREF: .rdata:000000014007514C↑o
                cmp     dword ptr [rsp+9E8h+var_8F8], 3
                jz      short loc_1406C67A5
                mov     r12d, 0C0000059h
                jmp     loc_1406C6895
; ---------------------------------------------------------------------------

loc_1406C67A5:                          ; CODE XREF: NtQueryInformationProcess+2E78↑j
                mov     rax, qword ptr [rsp+9E8h+var_8F8]
                shr     rax, 20h
                cmp     eax, 8
                jnb     loc_1406C688A
                cmp     qword ptr [rsp+9E8h+var_8F8+8], 0
                jnz     loc_1406C688A
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     r12d, eax
                test    eax, eax
                js      loc_1406C6895
                lea     rax, [rsp+9E8h+var_8E8+8]
                mov     [rsp+9E8h+var_9C8], rax
                lea     r9, [rsp+9E8h+var_8E8]
                lea     r8, [rsp+9E8h+var_8F8+8]
                lea     rdx, [rsp+9E8h+var_928]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_1403576E0
                mov     ecx, dword ptr [rsp+9E8h+var_8F8+4]
                mov     eax, ecx
                xor     eax, [rsp+9E8h+var_928]
                and     eax, 1
                xor     ecx, eax
                mov     dword ptr [rsp+9E8h+var_8F8+4], ecx
                shl     qword ptr [rsp+9E8h+var_8F8+8], 0Ch
                shl     qword ptr [rsp+9E8h+var_8E8], 0Ch
                shl     qword ptr [rsp+9E8h+var_8E8+8], 0Ch

loc_1406C6869:                          ; DATA XREF: .rdata:000000014007515C↑o
;   __try { // __except at loc_1406C6885
                movups  xmm0, [rsp+9E8h+var_8F8]
                movups  xmmword ptr [rsi], xmm0
                movups  xmm1, [rsp+9E8h+var_8E8]
                movups  xmmword ptr [rsi+10h], xmm1
;   } // starts at 1406C6869

loc_1406C6880:                          ; DATA XREF: .rdata:000000014007515C↑o
                mov     r12d, r14d
                jmp     short loc_1406C6895
; ---------------------------------------------------------------------------

loc_1406C6885:                          ; DATA XREF: .rdata:000000014007515C↑o
;   __except(1) // owned by 1406C6869
                mov     r12d, eax
                jmp     short loc_1406C6895
; ---------------------------------------------------------------------------

loc_1406C688A:                          ; CODE XREF: NtQueryInformationProcess+2E94↑j
                                        ; NtQueryInformationProcess+2EA3↑j
                mov     r12d, 0C000000Dh
                jmp     short loc_1406C6895
; ---------------------------------------------------------------------------

loc_1406C6892:                          ; DATA XREF: .rdata:000000014007514C↑o
;   __except(1) // owned by 1406C6779
                mov     r12d, eax

loc_1406C6895:                          ; CODE XREF: NtQueryInformationProcess+2E54↑j
                                        ; NtQueryInformationProcess+2E80↑j ...
                mov     rcx, [rsp+9E8h+var_9A8]
                test    rcx, rcx
                jz      loc_1406C3E33

loc_1406C68A3:                          ; CODE XREF: NtQueryInformationProcess+65E↑j
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, r12d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C68B5:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 1         ; jumptable 00000001406C3C19 case 70
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C68F8:                          ; DATA XREF: .rdata:000000014007516C↑o
;   __try { // __except at loc_1406C690E
                mov     rcx, [rsp+9E8h+var_9A8]
                cmp     dword ptr [rcx+460h], 0
                setl    al
                mov     [rsi], al
                jmp     loc_1406C4587
;   } // starts at 1406C68F8
; ---------------------------------------------------------------------------

loc_1406C690E:                          ; DATA XREF: .rdata:000000014007516C↑o
;   __except(1) // owned by 1406C68F8
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C691A:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 71
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_140639CB4
                test    rax, rax
                jz      loc_1406C63CF
                mov     rcx, rax
                call    sub_140780900
                nop

loc_1406C6980:                          ; DATA XREF: .rdata:000000014007517C↑o
;   __try { // __except at loc_1406C698E
                test    al, al
                setnz   r14b
                mov     [rsi], r14d
                jmp     loc_1406C63B3
;   } // starts at 1406C6980
; ---------------------------------------------------------------------------

loc_1406C698E:                          ; DATA XREF: .rdata:000000014007517C↑o
;   __except(1) // owned by 1406C6980
                mov     edi, eax
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C63B3
; ---------------------------------------------------------------------------

loc_1406C699A:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                test    r13b, 7         ; jumptable 00000001406C3C19 cases 66,67
                jnz     loc_1406C746B
                cmp     r13d, 0A0h
                ja      loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     r12d, eax
                test    eax, eax
                js      loc_1406C3E33
                cmp     edi, 43h ; 'C'
                setz    r14b
                mov     r9d, r14d
                lea     rdx, [rsp+9E8h+var_E8]
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_14051C844
                lea     ebx, ds:0[rax*8]
                mov     edx, 79517350h
                mov     rcx, [rsp+9E8h+var_9A8]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406C6A1E:                          ; DATA XREF: .rdata:000000014007518C↑o
;   __try { // __except at loc_1406C6A45
                test    r15, r15
                jz      short loc_1406C6A26
                mov     [r15], ebx

loc_1406C6A26:                          ; CODE XREF: NtQueryInformationProcess+3101↑j
                cmp     ebx, r13d
                cmovb   r13d, ebx
                mov     r8d, r13d
                lea     rdx, [rsp+9E8h+var_E8]
                mov     rcx, rsi
                call    memmove
                jmp     loc_1406C3E33
;   } // starts at 1406C6A1E
; ---------------------------------------------------------------------------

loc_1406C6A45:                          ; DATA XREF: .rdata:000000014007518C↑o
;   __except(loc_1407E7A90) // owned by 1406C6A1E
                mov     r12d, eax
                jmp     loc_1406C3E33
; ---------------------------------------------------------------------------

loc_1406C6A4D:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     r9, r15         ; jumptable 00000001406C3C19 case 72
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_14090E108
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6A63:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 3         ; jumptable 00000001406C3C19 case 73
                jnz     loc_1406C746B
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C6AB1
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     short loc_1406C6ABE
; ---------------------------------------------------------------------------

loc_1406C6AB1:                          ; CODE XREF: NtQueryInformationProcess+3151↑j
                call    PsGetCurrentProcess
                mov     rbx, rax
                mov     [rsp+9E8h+var_9A8], rax

loc_1406C6ABE:                          ; CODE XREF: NtQueryInformationProcess+318F↑j
                mov     rcx, rbx
                call    sub_140721BF8
                nop

loc_1406C6AC7:                          ; DATA XREF: .rdata:000000014007519C↑o
;   __try { // __except at loc_1406C6AF8
                xor     ecx, ecx
                mov     [rsi], cx
                mov     [rsi+2], cl
                sub     eax, 1
                jz      short loc_1406C6AE7
                sub     eax, 1
                jz      short loc_1406C6AE3
                cmp     eax, 1
                jnz     short loc_1406C6AEA
                mov     [rsi+2], al
                jmp     short loc_1406C6AEA
; ---------------------------------------------------------------------------

loc_1406C6AE3:                          ; CODE XREF: NtQueryInformationProcess+31B7↑j
                mov     byte ptr [rsi+1], 1

loc_1406C6AE7:                          ; CODE XREF: NtQueryInformationProcess+31B2↑j
                mov     byte ptr [rsi], 1

loc_1406C6AEA:                          ; CODE XREF: NtQueryInformationProcess+31BC↑j
                                        ; NtQueryInformationProcess+31C1↑j
                test    r15, r15
                jz      short loc_1406C6AF6
                mov     dword ptr [r15], 3

loc_1406C6AF6:                          ; CODE XREF: NtQueryInformationProcess+31CD↑j
                jmp     short loc_1406C6B05
;   } // starts at 1406C6AC7
; ---------------------------------------------------------------------------

loc_1406C6AF8:                          ; DATA XREF: .rdata:000000014007519C↑o
;   __except(1) // owned by 1406C6AC7
                mov     r14d, eax
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     r12, [rsp+9E8h+var_990]

loc_1406C6B05:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C6AF6↑j
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      loc_1406C4FF5

loc_1406C6B0F:                          ; CODE XREF: NtQueryInformationProcess+3A79↓j
                                        ; NtQueryInformationProcess+3A8A↓j
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6B24:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 1         ; jumptable 00000001406C3C19 case 74
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C6B67:                          ; DATA XREF: .rdata:00000001400751AC↑o
;   __try { // __except at loc_1406C6B7F
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+87Ch]
                shr     eax, 9
                and     al, r13b
                mov     [rsi], al
                jmp     loc_1406C4587
;   } // starts at 1406C6B67
; ---------------------------------------------------------------------------

loc_1406C6B7F:                          ; DATA XREF: .rdata:00000001400751AC↑o
;   __except(1) // owned by 1406C6B67
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C6B8B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 75
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C6BCE:                          ; DATA XREF: .rdata:00000001400751BC↑o
;   __try { // __except at loc_1406C6BF3
                mov     rcx, [rsp+9E8h+var_9A8]
                cmp     qword ptr [rcx+8C0h], 0
                cmovnz  r14d, dword ptr cs:qword_140C1DE90
                mov     [rsi], r14d
                test    r15, r15
                jz      short loc_1406C6BEE
                mov     [r15], r13d

loc_1406C6BEE:                          ; CODE XREF: NtQueryInformationProcess+32C9↑j
                jmp     loc_1406C4587
;   } // starts at 1406C6BCE
; ---------------------------------------------------------------------------

loc_1406C6BF3:                          ; DATA XREF: .rdata:00000001400751BC↑o
;   __except(1) // owned by 1406C6BCE
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C6BFF:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                xor     edx, edx        ; jumptable 00000001406C3C19 case 76
                mov     r8d, 1B0h
                lea     rcx, [rsp+9E8h+var_298]
                call    memset
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_298]
                mov     rdi, [rsp+9E8h+var_9A8]
                mov     rcx, rdi
                call    sub_140618E00
                nop

loc_1406C6C63:                          ; DATA XREF: .rdata:00000001400751CC↑o
;   __try { // __except at loc_1406C6C90
                mov     r14d, 1B0h
                cmp     r13d, r14d
                cmova   r13d, r14d
                mov     r8d, r13d
                lea     rdx, [rsp+9E8h+var_298]
                mov     rcx, rsi
                call    memmove
                test    r15, r15
                jz      short loc_1406C6C8B
                mov     [r15], r14d

loc_1406C6C8B:                          ; CODE XREF: NtQueryInformationProcess+3366↑j
                jmp     loc_1406C702B
;   } // starts at 1406C6C63
; ---------------------------------------------------------------------------

loc_1406C6C90:                          ; DATA XREF: .rdata:00000001400751CC↑o
;   __except(loc_1407E7AA6) // owned by 1406C6C63
                mov     ebx, eax
                mov     rdi, [rsp+9E8h+var_9A8]
                jmp     loc_1406C702B
; ---------------------------------------------------------------------------

loc_1406C6C9C:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                xor     eax, eax        ; jumptable 00000001406C3C19 case 77
                mov     [rsp+9E8h+var_5C8], rax
                mov     [rsp+9E8h+var_5C0], eax
                cmp     r13d, 0Ch
                jnz     loc_1406C746B
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D44
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1406C6CD5
                mov     eax, 0C0000002h
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6CD5:                          ; CODE XREF: NtQueryInformationProcess+33A9↑j
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406C6D6D
                mov     rax, [rdi+10h]
                lea     rdx, [rsp+9E8h+var_5C8]
                mov     rdi, [rsp+9E8h+var_9A8]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406C6D60

loc_1406C6D29:                          ; DATA XREF: .rdata:00000001400751DC↑o
;   __try { // __except at loc_1406C6D55
                movsd   xmm0, [rsp+9E8h+var_5C8]
                movsd   qword ptr [rsi], xmm0
                mov     eax, [rsp+9E8h+var_5C0]
                mov     [rsi+8], eax
                test    r15, r15
                jz      short loc_1406C6D4C
                mov     dword ptr [r15], 0Ch

loc_1406C6D4C:                          ; CODE XREF: NtQueryInformationProcess+3423↑j
                mov     ebx, r14d
                mov     [rsp+9E8h+var_9A0], ebx
                jmp     short loc_1406C6D60
;   } // starts at 1406C6D29
; ---------------------------------------------------------------------------

loc_1406C6D55:                          ; DATA XREF: .rdata:00000001400751DC↑o
;   __except(loc_1407E7ABC) // owned by 1406C6D29
                mov     ebx, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rdi, [rsp+9E8h+var_9A8]

loc_1406C6D60:                          ; CODE XREF: NtQueryInformationProcess+3407↑j
                                        ; NtQueryInformationProcess+3433↑j
                mov     edx, 79517350h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag

loc_1406C6D6D:                          ; CODE XREF: NtQueryInformationProcess+33E8↑j
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D28
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6D80:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 79
                jnz     loc_1406C746B
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C6DCE
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     short loc_1406C6DDB
; ---------------------------------------------------------------------------

loc_1406C6DCE:                          ; CODE XREF: NtQueryInformationProcess+346E↑j
                call    PsGetCurrentProcess
                mov     rcx, rax
                mov     [rsp+9E8h+var_9A8], rax

loc_1406C6DDB:                          ; CODE XREF: NtQueryInformationProcess+34AC↑j
                                        ; DATA XREF: .rdata:00000001400751EC↑o
;   __try { // __except at loc_1406C6E1C
                mov     [rsi], r14d
                mov     edx, [rcx+9D0h]
                mov     eax, r14d
                bt      edx, 0Eh
                jnb     short loc_1406C6DFA
                mov     eax, 1
                mov     [rsi], eax
                mov     edx, [rcx+9D0h]

loc_1406C6DFA:                          ; CODE XREF: NtQueryInformationProcess+34CB↑j
                bt      edx, 0Fh
                jnb     short loc_1406C6E05
                or      eax, 2
                mov     [rsi], eax

loc_1406C6E05:                          ; CODE XREF: NtQueryInformationProcess+34DE↑j
                mov     eax, [rcx+968h]
                mov     [rsi+4], eax
                test    r15, r15
                jz      short loc_1406C6E1A
                mov     dword ptr [r15], 8

loc_1406C6E1A:                          ; CODE XREF: NtQueryInformationProcess+34F1↑j
                jmp     short loc_1406C6E29
;   } // starts at 1406C6DDB
; ---------------------------------------------------------------------------

loc_1406C6E1C:                          ; DATA XREF: .rdata:00000001400751EC↑o
;   __except(1) // owned by 1406C6DDB
                mov     r14d, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     r12, [rsp+9E8h+var_990]

loc_1406C6E29:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C6E1A↑j
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      loc_1406C4FF5

loc_1406C6E33:                          ; CODE XREF: NtQueryInformationProcess+3B1C↓j
                                        ; NtQueryInformationProcess+3B2D↓j
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6E45:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                test    bl, bl          ; jumptable 00000001406C3C19 case 81
                jnz     loc_1406C701A
                cmp     r13d, 30h ; '0'
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                xor     r9d, r9d
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     r8, rsi
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rdx, rbx
                mov     rcx, [rsp+9E8h+var_948]
                call    sub_1407075C4
                mov     edi, eax
                test    eax, eax
                js      loc_1406C65F7
                test    r15, r15
                jz      loc_1406C65F7
                mov     [r15], r13d
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6ECF:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                movups  [rsp+9E8h+var_488], xmm0 ; jumptable 00000001406C3C19 case 82
                movups  [rsp+9E8h+var_478], xmm0
                movups  [rsp+9E8h+var_468], xmm0
                movups  [rsp+9E8h+var_458], xmm0
                movups  [rsp+9E8h+var_448], xmm0
                movups  [rsp+9E8h+var_438], xmm0
                movups  [rsp+9E8h+var_428], xmm0
                movups  [rsp+9E8h+var_418], xmm0
                movups  [rsp+9E8h+var_408], xmm0
                cmp     r13d, 8
                jb      loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                lea     rdx, [rsp+9E8h+var_488]
                mov     rdi, [rsp+9E8h+var_9A8]
                mov     rcx, rdi
                call    sub_1408F3FA8
                nop

loc_1406C6F6E:                          ; DATA XREF: .rdata:00000001400751FC↑o
;   __try { // __except at loc_1406C6F9C
                mov     ebx, 90h
                cmp     r13d, ebx
                cmovb   ebx, r13d
                mov     r8d, ebx
                lea     rdx, [rsp+9E8h+var_488]
                mov     rcx, rsi
                call    memmove
                test    r15, r15
                jz      short loc_1406C6F95
                mov     [r15], ebx

loc_1406C6F95:                          ; CODE XREF: NtQueryInformationProcess+3670↑j
                mov     [rsp+9E8h+var_9A0], r14d
                jmp     short loc_1406C6FA8
;   } // starts at 1406C6F6E
; ---------------------------------------------------------------------------

loc_1406C6F9C:                          ; DATA XREF: .rdata:00000001400751FC↑o
;   __except(loc_1407E7AD2) // owned by 1406C6F6E
                mov     r14d, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rdi, [rsp+9E8h+var_9A8]

loc_1406C6FA8:                          ; CODE XREF: NtQueryInformationProcess+367A↑j
                mov     edx, 79517350h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     eax, r14d
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C6FBD:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 4         ; jumptable 00000001406C3C19 case 84
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 418h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     rdi, [rsp+9E8h+var_9A8]
                mov     rcx, rdi
                cmp     qword ptr [rdi+3E0h], 0
                jnz     short loc_1406C7024
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_1406C701A:                          ; CODE XREF: NtQueryInformationProcess+12AB↑j
                                        ; NtQueryInformationProcess+3527↑j ...
                mov     eax, 0C0000022h
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C7024:                          ; CODE XREF: NtQueryInformationProcess+36EE↑j
                call    sub_1408914CC
                mov     ebx, eax

loc_1406C702B:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C528D↑j
                                        ; NtQueryInformationProcess+1979↑j ...
                mov     edx, 79517350h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C703F:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_9B8], r14 ; jumptable 00000001406C3C19 case 85
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     r9, r15
                mov     r8d, r13d
                mov     rdx, rsi
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_14093640C
                jmp     loc_1406C4817
; ---------------------------------------------------------------------------

loc_1406C708E:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     edi, 57h ; 'W'  ; jumptable 00000001406C3C19 cases 87,96
                jnz     short loc_1406C709D
                cmp     r13d, 1
                jb      loc_1406C746B

loc_1406C709D:                          ; CODE XREF: NtQueryInformationProcess+3771↑j
                cmp     edi, 60h ; '`'
                jnz     short loc_1406C70AC
                cmp     r13d, 4
                jb      loc_1406C746B

loc_1406C70AC:                          ; CODE XREF: NtQueryInformationProcess+3780↑j
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_1406C7524

loc_1406C70E5:                          ; DATA XREF: .rdata:000000014007520C↑o
;   __try { // __except at loc_1406C710F
                mov     rcx, [rsp+9E8h+var_9A8]
                mov     eax, [rcx+460h]
                shr     eax, 18h
                and     al, 3
                mov     [rsi], al
                cmp     edi, 60h ; '`'
                jnz     short loc_1406C710A
                mov     eax, [rcx+87Ch]
                shr     eax, 11h
                and     eax, 0Ch
                or      [rsi], eax

loc_1406C710A:                          ; CODE XREF: NtQueryInformationProcess+37DA↑j
                jmp     loc_1406C4587
;   } // starts at 1406C70E5
; ---------------------------------------------------------------------------

loc_1406C710F:                          ; DATA XREF: .rdata:000000014007520C↑o
;   __except(1) // owned by 1406C70E5
                mov     ebx, eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C4587
; ---------------------------------------------------------------------------

loc_1406C711B:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                mov     [rsp+9E8h+var_920], r14 ; jumptable 00000001406C3C19 case 89
                cmp     r13d, 8
                jnz     loc_1406C746B
                test    bl, bl
                jz      short loc_1406C7148

loc_1406C7131:                          ; DATA XREF: .rdata:000000014007521C↑o
;   __try { // __except at loc_1406C7143
                mov     rcx, rsi
                cmp     rsi, rdx
                cmovnb  rcx, rdx
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_1406C7148
;   } // starts at 1406C7131
; ---------------------------------------------------------------------------

loc_1406C7143:                          ; DATA XREF: .rdata:000000014007521C↑o
;   __except(1) // owned by 1406C7131
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C7148:                          ; CODE XREF: NtQueryInformationProcess+380F↑j
                                        ; NtQueryInformationProcess+3821↑j
                call    PsGetCurrentProcess
                mov     rcx, rax
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406C701A
                mov     rax, [rsp+9E8h+var_948]
                cmp     rcx, [rax+220h]
                jnz     loc_1406C701A
                lea     rax, [rsp+9E8h+var_920]
                mov     [rsp+9E8h+var_9B8], rax
                mov     byte ptr [rsp+9E8h+var_9C0], bl
                mov     rax, cs:MmSectionObjectType
                mov     [rsp+9E8h+var_9C8], rax
                lea     r9d, [r12+6]
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rcx+518h]
                call    ObOpenObjectByPointer
                test    eax, eax
                js      short loc_1406C71BF

loc_1406C71A6:                          ; DATA XREF: .rdata:000000014007522C↑o
;   __try { // __except at loc_1406C71BF
                mov     rcx, [rsp+9E8h+var_920]
                mov     [rsi], rcx
                test    r15, r15
                jz      short loc_1406C71BD
                mov     dword ptr [r15], 8

loc_1406C71BD:                          ; CODE XREF: NtQueryInformationProcess+3894↑j
                jmp     short $+2
;   } // starts at 1406C71A6
; ---------------------------------------------------------------------------

loc_1406C71BF:                          ; CODE XREF: NtQueryInformationProcess+3884↑j
                                        ; NtQueryInformationProcess:loc_1406C71BD↑j
                                        ; DATA XREF: ...
;   __except(loc_1407E7AE8) // owned by 1406C71A6
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C71C4:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                movups  [rsp+9E8h+var_728], xmm0 ; jumptable 00000001406C3C19 case 88
                movups  [rsp+9E8h+var_718], xmm0
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406C7524
                mov     [rsp+9E8h+var_830], r14
                mov     r12, r14
                mov     [rsp+9E8h+var_828], r14
                mov     rax, r14
                mov     [rsp+9E8h+var_920], rax
                mov     [rsp+9E8h+var_820], rax
                mov     [rsp+9E8h+var_810], r14
                mov     rdi, [rsp+9E8h+var_948]
                mov     rdx, rdi
                mov     rbx, [rsp+9E8h+var_9A8]
                mov     rcx, rbx
                call    sub_140399E30
                mov     rdx, [rbx+920h]
                mov     rcx, rdx
                shr     rcx, 3Dh
                lea     rax, [rcx-3]
                cmp     rax, 1
                ja      short loc_1406C72B7
                mov     rax, rdx
                mov     rdx, 1FFFFFFFFFFFFFFFh
                and     rax, rdx
                mov     [rsp+9E8h+var_920], rax
                mov     [rsp+9E8h+var_820], rax
                mov     r12, [rbx+918h]
                mov     [rsp+9E8h+var_830], r12
                sub     r12, [rbx+900h]
                mov     [rsp+9E8h+var_828], r12
                cmp     rcx, 3
                jnz     short loc_1406C72B7
                mov     r8d, r14d
                bts     r8d, 9
                jmp     short loc_1406C72BF
; ---------------------------------------------------------------------------

loc_1406C72B7:                          ; CODE XREF: NtQueryInformationProcess+3947↑j
                                        ; NtQueryInformationProcess+398B↑j
                mov     r8d, dword ptr [rsp+9E8h+var_810]

loc_1406C72BF:                          ; CODE XREF: NtQueryInformationProcess+3995↑j
                movzx   ecx, byte ptr [rbx+87Bh]
                mov     edx, [rbx+87Ch]
                and     edx, 4
                shl     edx, 5
                mov     eax, ecx
                and     eax, 38h
                or      edx, eax
                add     edx, edx
                and     ecx, 7
                or      edx, ecx
                and     r8d, 0FFFFFE00h
                or      edx, r8d
                mov     dword ptr [rsp+9E8h+var_810], edx
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140399720
                lea     rdx, [rsp+9E8h+var_728]
                mov     rcx, rbx
                call    sub_1405F74EC
                mov     rcx, qword ptr [rsp+9E8h+var_728]
                mov     [rsp+9E8h+var_840], rcx
                mov     rax, qword ptr [rsp+9E8h+var_728+8]
                mov     [rsp+9E8h+var_838], rax
                mov     rdx, qword ptr [rsp+9E8h+var_718]
                mov     [rsp+9E8h+var_818], rdx
                test    r12, r12
                jnz     short loc_1406C7350
                sub     rcx, [rbx+900h]
                mov     [rsp+9E8h+var_828], rcx

loc_1406C7350:                          ; CODE XREF: NtQueryInformationProcess+3A1F↑j
                cmp     [rsp+9E8h+var_920], 0
                jnz     short loc_1406C736D
                sub     rax, [rbx+908h]
                sub     rax, rdx
                mov     [rsp+9E8h+var_820], rax

loc_1406C736D:                          ; CODE XREF: NtQueryInformationProcess+3A39↑j
                                        ; DATA XREF: .rdata:000000014007523C↑o
;   __try { // __except at loc_1406C739E
                mov     edi, 38h ; '8'
                cmp     r13d, edi
                cmovb   edi, r13d
                mov     r8d, edi
                lea     rdx, [rsp+9E8h+var_840]
                mov     rcx, rsi
                call    memmove
                test    r15, r15
                jz      short loc_1406C7394
                mov     [r15], edi

loc_1406C7394:                          ; CODE XREF: NtQueryInformationProcess+3A6F↑j
                mov     [rsp+9E8h+var_9A0], r14d
                jmp     loc_1406C6B0F
;   } // starts at 1406C736D
; ---------------------------------------------------------------------------

loc_1406C739E:                          ; DATA XREF: .rdata:000000014007523C↑o
;   __except(loc_1407E7AFE) // owned by 1406C736D
                mov     r14d, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rbx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C6B0F
; ---------------------------------------------------------------------------

loc_1406C73AF:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 94
                jnz     loc_1406C746B
                mov     [rsp+9E8h+var_9B8], r14
                lea     rax, [rsp+9E8h+var_9A8]
                mov     [rsp+9E8h+var_9C0], rax
                mov     dword ptr [rsp+9E8h+var_9C8], 79517350h
                movzx   r9d, bl
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     [rsp+9E8h+var_9A0], eax
                test    eax, eax
                js      loc_1406C7524
                mov     rcx, [rsp+9E8h+var_9A8]
                test    dword ptr [rcx+460h], 8000h
                jnz     short loc_1406C7419
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, 0C000007Ch
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C7419:                          ; CODE XREF: NtQueryInformationProcess+3AE3↑j
                lock or [rsp+9E8h+var_9E8], 0

loc_1406C741E:                          ; DATA XREF: .rdata:000000014007524C↑o
;   __try { // __except at loc_1406C7441
                mov     rcx, [rsp+9E8h+var_9A8]
                call    sub_140581C04
                mov     [rsi], rax
                test    r15, r15
                jz      short loc_1406C7437
                mov     dword ptr [r15], 8

loc_1406C7437:                          ; CODE XREF: NtQueryInformationProcess+3B0E↑j
                mov     [rsp+9E8h+var_9A0], r14d
                jmp     loc_1406C6E33
;   } // starts at 1406C741E
; ---------------------------------------------------------------------------

loc_1406C7441:                          ; DATA XREF: .rdata:000000014007524C↑o
;   __except(loc_1407E7B14) // owned by 1406C741E
                mov     r14d, eax
                mov     [rsp+9E8h+var_9A0], eax
                mov     rcx, [rsp+9E8h+var_9A8]
                jmp     loc_1406C6E33
; ---------------------------------------------------------------------------

loc_1406C7452:                          ; CODE XREF: NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: PAGE:jpt_1406C3C19↓o
                cmp     r13d, 8         ; jumptable 00000001406C3C19 case 97
                jz      short loc_1406C7475
                test    r15, r15
                jz      short loc_1406C746B

loc_1406C745D:                          ; DATA XREF: .rdata:000000014007525C↑o
;   __try { // __except at loc_1406C7466
                mov     dword ptr [r15], 8
                jmp     short loc_1406C746B
;   } // starts at 1406C745D
; ---------------------------------------------------------------------------

loc_1406C7466:                          ; DATA XREF: .rdata:000000014007525C↑o
;   __except(1) // owned by 1406C745D
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C746B:                          ; CODE XREF: NtQueryInformationProcess+5A8↑j
                                        ; NtQueryInformationProcess+81E↑j ...
                mov     eax, 0C0000004h
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C7475:                          ; CODE XREF: NtQueryInformationProcess+3B36↑j
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406C7485

loc_1406C747B:                          ; CODE XREF: NtQueryInformationProcess+1DE5↑j
                                        ; NtQueryInformationProcess+1DEF↑j
                mov     eax, 0C000000Dh
                jmp     loc_1406C7524
; ---------------------------------------------------------------------------

loc_1406C7485:                          ; CODE XREF: NtQueryInformationProcess+3B59↑j
                call    PsGetCurrentProcess
                mov     r8, [rax+550h]
                test    r8, r8
                jz      short loc_1406C7501
                mov     rcx, r14
                mov     rdx, [rax+580h]
                test    rdx, rdx
                jz      short loc_1406C74A8
                mov     rcx, [rdx]

loc_1406C74A8:                          ; CODE XREF: NtQueryInformationProcess+3B83↑j
                                        ; DATA XREF: .rdata:000000014007526C↑o
;   __try { // __except at loc_1406C74E5
                test    rcx, rcx
                jz      short loc_1406C74C5
                mov     eax, [rcx+474h]
                test    al, 1
                jz      short loc_1406C74E3
                mov     ecx, 1
                mov     dword ptr [rsp+9E8h+var_918], ecx
                jmp     short loc_1406C74E3
; ---------------------------------------------------------------------------

loc_1406C74C5:                          ; CODE XREF: NtQueryInformationProcess+3B8B↑j
                test    byte ptr [r8+7C0h], 1
                mov     eax, dword ptr [rsp+9E8h+var_918]
                mov     ecx, 1
                cmovnz  eax, ecx
                mov     dword ptr [rsp+9E8h+var_918], eax

loc_1406C74E3:                          ; CODE XREF: NtQueryInformationProcess+3B95↑j
                                        ; NtQueryInformationProcess+3BA3↑j
                jmp     short loc_1406C74F8
;   } // starts at 1406C74A8
; ---------------------------------------------------------------------------

loc_1406C74E5:                          ; DATA XREF: .rdata:000000014007526C↑o
;   __except(1) // owned by 1406C74A8
                mov     r14d, eax
                mov     rsi, [rsp+9E8h+var_910]
                mov     r15, [rsp+9E8h+var_968]

loc_1406C74F8:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C74E3↑j
                test    r14d, r14d
                js      loc_1406C4FF5

loc_1406C7501:                          ; CODE XREF: NtQueryInformationProcess+3B74↑j
                                        ; DATA XREF: .rdata:000000014007527C↑o
;   __try { // __except at loc_1406C751D
                mov     rax, [rsp+9E8h+var_918]
                mov     [rsi], rax
                test    r15, r15
                jz      short loc_1406C7518
                mov     dword ptr [r15], 8

loc_1406C7518:                          ; CODE XREF: NtQueryInformationProcess+3BEF↑j
                jmp     loc_1406C4FF5
;   } // starts at 1406C7501
; ---------------------------------------------------------------------------

loc_1406C751D:                          ; DATA XREF: .rdata:000000014007527C↑o
;   __except(loc_1407E7B2A) // owned by 1406C7501
                jmp     short loc_1406C7524
; ---------------------------------------------------------------------------

def_1406C3C19:                          ; CODE XREF: NtQueryInformationProcess+2E2↑j
                                        ; NtQueryInformationProcess+2F9↑j
                                        ; DATA XREF: ...
                mov     eax, 0C0000003h ; jumptable 00000001406C3C19 default case, cases 5,6,8,9,11,13,16,17,25,35,40,41,48,53,56,57,62,63,68,78,80,83,86,90,91,93,95

loc_1406C7524:                          ; CODE XREF: NtQueryInformationProcess:loc_1406C3BF0↑j
                                        ; NtQueryInformationProcess+330↑j ...
                mov     rcx, [rsp+9E8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 9B0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406C7548:                          ; CODE XREF: NtQueryInformationProcess+286↑j
                                        ; DATA XREF: .rdata:000000014007528C↑o
;   __try { // __except at loc_1406C3BF0
                call    ExRaiseDatatypeMisalignment
NtQueryInformationProcess endp
