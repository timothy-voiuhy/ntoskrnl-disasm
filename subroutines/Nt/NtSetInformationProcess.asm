NtSetInformationProcess proc near       ; DATA XREF: .pdata:00000001401022C4↑o
                                        ; PAGE:000000014098B2A8↓o

var_548         = dword ptr -548h
var_528         = qword ptr -528h
var_520         = qword ptr -520h
var_518         = qword ptr -518h
var_508         = qword ptr -508h
var_500         = dword ptr -500h
var_4FC         = dword ptr -4FCh
var_4F8         = qword ptr -4F8h
var_4F0         = qword ptr -4F0h
var_4E8         = dword ptr -4E8h
var_4E0         = dword ptr -4E0h
var_4D8         = qword ptr -4D8h
var_4D0         = dword ptr -4D0h
var_4CC         = word ptr -4CCh
var_4C8         = dword ptr -4C8h
var_4C4         = byte ptr -4C4h
var_4C3         = byte ptr -4C3h
var_4C2         = byte ptr -4C2h
var_4C1         = byte ptr -4C1h
var_4C0         = byte ptr -4C0h
var_4BC         = dword ptr -4BCh
var_4B8         = qword ptr -4B8h
var_4B0         = qword ptr -4B0h
var_4A8         = dword ptr -4A8h
var_4A4         = dword ptr -4A4h
var_4A0         = dword ptr -4A0h
var_498         = qword ptr -498h
var_490         = qword ptr -490h
var_488         = qword ptr -488h
var_480         = qword ptr -480h
var_478         = qword ptr -478h
var_470         = qword ptr -470h
var_468         = qword ptr -468h
var_460         = xmmword ptr -460h
var_450         = dword ptr -450h
var_44C         = dword ptr -44Ch
var_448         = dword ptr -448h
var_444         = dword ptr -444h
var_440         = qword ptr -440h
var_438         = xmmword ptr -438h
var_428         = xmmword ptr -428h
var_418         = xmmword ptr -418h
var_408         = qword ptr -408h
var_400         = qword ptr -400h
var_3F8         = qword ptr -3F8h
var_3F0         = qword ptr -3F0h
var_3E8         = qword ptr -3E8h
var_3E0         = qword ptr -3E0h
var_3D8         = xmmword ptr -3D8h
var_3C8         = qword ptr -3C8h
var_3C0         = dword ptr -3C0h
var_3BC         = dword ptr -3BCh
var_3B8         = dword ptr -3B8h
var_3B4         = dword ptr -3B4h
var_3B0         = dword ptr -3B0h
var_3AC         = dword ptr -3ACh
var_3A8         = dword ptr -3A8h
var_3A4         = dword ptr -3A4h
var_3A0         = dword ptr -3A0h
var_398         = qword ptr -398h
var_390         = qword ptr -390h
var_388         = qword ptr -388h
var_380         = dword ptr -380h
var_378         = qword ptr -378h
var_370         = qword ptr -370h
var_368         = dword ptr -368h
var_364         = dword ptr -364h
var_360         = dword ptr -360h
var_35C         = dword ptr -35Ch
var_358         = dword ptr -358h
var_350         = xmmword ptr -350h
var_340         = xmmword ptr -340h
var_330         = xmmword ptr -330h
var_320         = qword ptr -320h
var_318         = xmmword ptr -318h
var_308         = xmmword ptr -308h
var_2F8         = dword ptr -2F8h
var_2F4         = dword ptr -2F4h
var_2F0         = xmmword ptr -2F0h
var_2E0         = xmmword ptr -2E0h
var_2D0         = qword ptr -2D0h
var_2C8         = xmmword ptr -2C8h
var_2B8         = xmmword ptr -2B8h
var_2A8         = xmmword ptr -2A8h
var_298         = xmmword ptr -298h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = dword ptr -250h
var_248         = xmmword ptr -248h
var_238         = xmmword ptr -238h
var_228         = xmmword ptr -228h
var_218         = xmmword ptr -218h
var_208         = xmmword ptr -208h
var_1F8         = xmmword ptr -1F8h
var_1E8         = xmmword ptr -1E8h
var_1D8         = qword ptr -1D8h
var_1C8         = xmmword ptr -1C8h
var_1B8         = xmmword ptr -1B8h
var_1A8         = xmmword ptr -1A8h
var_198         = xmmword ptr -198h
var_188         = xmmword ptr -188h
var_178         = xmmword ptr -178h
var_168         = xmmword ptr -168h
var_158         = xmmword ptr -158h
var_148         = xmmword ptr -148h
var_138         = byte ptr -138h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = byte ptr -58h
var_48          = qword ptr -48h

; FUNCTION CHUNK AT 00000001407E73D0 SIZE 0000014A BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 510h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+548h+var_48], rax
                mov     edi, r9d
                mov     rbx, r8
                mov     r10d, edx
                mov     [rsp+548h+var_4C8], edx
                mov     rsi, rcx
                mov     [rsp+548h+var_468], rbx
                mov     [rsp+548h+var_4E0], edi
                xor     r14d, r14d
                mov     [rsp+548h+var_508], r14
                xorps   xmm0, xmm0
                movups  [rsp+548h+var_248], xmm0
                mov     [rsp+548h+var_4E8], r14d
                mov     [rsp+548h+var_4CC], r14w
                mov     [rsp+548h+var_370], r14
                mov     [rsp+548h+var_440], r14
                mov     [rsp+548h+var_390], r14
                mov     [rsp+548h+var_4A8], r14d
                movups  [rsp+548h+var_238], xmm0
                mov     rcx, gs:188h
                mov     [rsp+548h+var_4F8], rcx
                movzx   r15d, byte ptr [rcx+232h]
                test    r15b, r15b
                jz      loc_1406A2D9C
                cmp     edx, 5
                jnz     short loc_1406A2B7A
                lea     eax, [rdx-1]
                lea     r13d, [rdx+3]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2B7A:                          ; CODE XREF: NtSetInformationProcess+AC↑j
                cmp     r10d, 11h
                jnz     short loc_1406A2B8D
                lea     eax, [r10-10h]
                lea     r13d, [r10-9]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2B8D:                          ; CODE XREF: NtSetInformationProcess+BE↑j
                cmp     r10d, 19h
                jnz     short loc_1406A2BA0
                lea     eax, [r10-18h]
                lea     r13d, [r10-11h]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2BA0:                          ; CODE XREF: NtSetInformationProcess+D1↑j
                cmp     r10d, 12h
                jnz     short loc_1406A2BB3
                lea     eax, [r10-11h]
                lea     r13d, [r10-0Ah]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2BB3:                          ; CODE XREF: NtSetInformationProcess+E4↑j
                cmp     r10d, 15h
                jnz     short loc_1406A2BC7
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2BC7:                          ; CODE XREF: NtSetInformationProcess+F7↑j
                cmp     r10d, 21h ; '!'
                jnz     short loc_1406A2BDA
                lea     eax, [r10-1Dh]
                lea     r13d, [r10-19h]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2BDA:                          ; CODE XREF: NtSetInformationProcess+10B↑j
                cmp     r10d, 27h ; '''
                jnz     short loc_1406A2BED
                lea     eax, [r10-23h]
                lea     r13d, [r10-1Fh]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2BED:                          ; CODE XREF: NtSetInformationProcess+11E↑j
                cmp     r10d, 23h ; '#'
                jnz     short loc_1406A2C01
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C01:                          ; CODE XREF: NtSetInformationProcess+131↑j
                cmp     r10d, 8
                jnz     short loc_1406A2C12
                mov     r13d, r10d
                mov     eax, r10d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C12:                          ; CODE XREF: NtSetInformationProcess+145↑j
                cmp     r10d, 28h ; '('
                jnz     short loc_1406A2C26
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C26:                          ; CODE XREF: NtSetInformationProcess+156↑j
                cmp     r10d, 29h ; ')'
                jnz     short loc_1406A2C3A
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C3A:                          ; CODE XREF: NtSetInformationProcess+16A↑j
                cmp     r10d, 62h ; 'b'
                jnz     short loc_1406A2C4E
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C4E:                          ; CODE XREF: NtSetInformationProcess+17E↑j
                cmp     r10d, 63h ; 'c'
                jnz     short loc_1406A2C62
                mov     r13d, 8
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C62:                          ; CODE XREF: NtSetInformationProcess+192↑j
                mov     r13d, 8
                cmp     r10d, 2Dh ; '-'
                jnz     short loc_1406A2C77
                lea     eax, [r13-4]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C77:                          ; CODE XREF: NtSetInformationProcess+1AC↑j
                cmp     r10d, 2Eh ; '.'
                jnz     short loc_1406A2C86
                lea     eax, [r10-2Ah]
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C86:                          ; CODE XREF: NtSetInformationProcess+1BB↑j
                cmp     r10d, 31h ; '1'
                jnz     short loc_1406A2C94
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2C94:                          ; CODE XREF: NtSetInformationProcess+1CA↑j
                cmp     r10d, 35h ; '5'
                jnz     short loc_1406A2CA2
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CA2:                          ; CODE XREF: NtSetInformationProcess+1D8↑j
                cmp     r10d, 38h ; '8'
                jnz     short loc_1406A2CB0
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CB0:                          ; CODE XREF: NtSetInformationProcess+1E6↑j
                cmp     r10d, 3Eh ; '>'
                jnz     short loc_1406A2CBE
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CBE:                          ; CODE XREF: NtSetInformationProcess+1F4↑j
                cmp     r10d, 41h ; 'A'
                jnz     short loc_1406A2CCC
                mov     eax, r13d
                jmp     loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CCC:                          ; CODE XREF: NtSetInformationProcess+202↑j
                cmp     r10d, 46h ; 'F'
                jnz     short loc_1406A2CD8
                lea     eax, [r10-45h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CD8:                          ; CODE XREF: NtSetInformationProcess+210↑j
                cmp     r10d, 4Ah ; 'J'
                jnz     short loc_1406A2CE4
                lea     eax, [r10-49h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CE4:                          ; CODE XREF: NtSetInformationProcess+21C↑j
                cmp     r10d, 53h ; 'S'
                jnz     short loc_1406A2CEF
                mov     eax, r13d
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CEF:                          ; CODE XREF: NtSetInformationProcess+228↑j
                cmp     r10d, 5Ah ; 'Z'
                jnz     short loc_1406A2CFB
                lea     eax, [r10-59h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2CFB:                          ; CODE XREF: NtSetInformationProcess+233↑j
                cmp     r10d, 5Bh ; '['
                jnz     short loc_1406A2D07
                lea     eax, [r10-57h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D07:                          ; CODE XREF: NtSetInformationProcess+23F↑j
                cmp     r10d, 5Dh ; ']'
                jnz     short loc_1406A2D13
                lea     eax, [r10-59h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D13:                          ; CODE XREF: NtSetInformationProcess+24B↑j
                cmp     r10d, 5Fh ; '_'
                jnz     short loc_1406A2D1E
                mov     eax, r13d
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D1E:                          ; CODE XREF: NtSetInformationProcess+257↑j
                cmp     r10d, 57h ; 'W'
                jnz     short loc_1406A2D2A
                lea     eax, [r10-56h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D2A:                          ; CODE XREF: NtSetInformationProcess+262↑j
                cmp     r10d, 64h ; 'd'
                jnz     short loc_1406A2D36
                lea     eax, [r10-63h]
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D36:                          ; CODE XREF: NtSetInformationProcess+26E↑j
                cmp     r10d, 65h ; 'e'
                jnz     short loc_1406A2D41
                mov     eax, r13d
                jmp     short loc_1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D41:                          ; CODE XREF: NtSetInformationProcess+27A↑j
                mov     eax, 4
                cmp     r10d, 66h ; 'f'
                cmovz   eax, r13d

loc_1406A2D4E:                          ; CODE XREF: NtSetInformationProcess+B5↑j
                                        ; NtSetInformationProcess+C8↑j ...
;   __try { // __except at loc_1406A2D97
                test    r9d, r9d
                jz      short loc_1406A2D84
                lea     ecx, [rax-1]
                test    rbx, rcx
                jnz     loc_1406A6ED9
                lea     rcx, [r8+rdi]
                mov     r12, 7FFFFFFF0000h
                cmp     rcx, r12
                ja      short loc_1406A2D77
                cmp     rcx, rbx
                jnb     short loc_1406A2D90

loc_1406A2D77:                          ; CODE XREF: NtSetInformationProcess+2B0↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406A2D90
; ---------------------------------------------------------------------------

loc_1406A2D84:                          ; CODE XREF: NtSetInformationProcess+291↑j
                mov     r12, 7FFFFFFF0000h
                jmp     short loc_1406A2D95
; ---------------------------------------------------------------------------

loc_1406A2D90:                          ; CODE XREF: NtSetInformationProcess+2B5↑j
                                        ; NtSetInformationProcess+2C2↑j
                mov     rcx, [rsp+548h+var_4F8]

loc_1406A2D95:                          ; CODE XREF: NtSetInformationProcess+2CE↑j
                jmp     short loc_1406A2DAC
;   } // starts at 1406A2D4E
; ---------------------------------------------------------------------------

loc_1406A2D97:                          ; DATA XREF: .rdata:000000014006F904↑o
                                        ; .rdata:000000014006FDE4↑o
;   __except(1) // owned by 1406A2D4E
;   __except(1) // owned by 1406A6ED9
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A2D9C:                          ; CODE XREF: NtSetInformationProcess+A3↑j
                mov     r13d, 8
                mov     r12, 7FFFFFFF0000h

loc_1406A2DAC:                          ; CODE XREF: NtSetInformationProcess:loc_1406A2D95↑j
                lea     eax, [rdx-1]    ; switch 102 cases
                cmp     eax, 65h
                ja      def_1406A2DD5   ; jumptable 00000001406A2DD5 default case, cases 2-4,7,14,20,26-28,30,36-38,43,44,47,50,51,55,58,60,61,64,69,73,75,76,78,79,81,84,86,88,89,92,94
                cdqe
                lea     r8, cs:140000000h
                movzx   eax, ds:(byte_1406A6FEC - 140000000h)[r8+rax]
                mov     edx, ds:(jpt_1406A2DD5 - 140000000h)[r8+rax*4]
                add     rdx, r8
                jmp     rdx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406A2DDB:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_518], r14 ; jumptable 00000001406A2DD5 cases 15,42
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     edx, 6028h
                mov     rcx, [rsp+548h+var_508]
                call    PsChargeProcessNonPagedPoolQuota
                mov     esi, eax
                test    eax, eax
                js      short loc_1406A2E98
                mov     edx, 6028h
                mov     ecx, 200h
                mov     r8d, 73577350h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1406A2E4B
                mov     esi, 0C0000017h
                jmp     short loc_1406A2E89
; ---------------------------------------------------------------------------

loc_1406A2E4B:                          ; CODE XREF: NtSetInformationProcess+382↑j
                mov     cs:byte_140C4C428, 1
                mov     [rax], r14d
                mov     [rax+8], r14
                lea     rcx, [rax+10h]
                xor     edx, edx
                call    sub_140363550
                mov     rcx, [rsp+548h+var_508]
                xor     eax, eax
                lock cmpxchg [rcx+530h], rbx
                jz      loc_1406A34A4
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     esi, 0C0000048h

loc_1406A2E89:                          ; CODE XREF: NtSetInformationProcess+389↑j
                mov     edx, 6028h
                mov     rcx, [rsp+548h+var_508]
                call    PsReturnProcessNonPagedPoolQuota

loc_1406A2E98:                          ; CODE XREF: NtSetInformationProcess+365↑j
                                        ; NtSetInformationProcess+711↓j ...
                mov     rcx, [rsp+548h+var_508]
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_1406A2EA7:                          ; CODE XREF: NtSetInformationProcess+C96↓j
                                        ; NtSetInformationProcess+1B2B↓j ...
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A2EAE:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 10h        ; jumptable 00000001406A2DD5 case 62
                jnz     loc_1406A6CE6

loc_1406A2EB7:                          ; DATA XREF: .rdata:000000014006F914↑o
;   __try { // __except at loc_1406A2F54
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_238], xmm0
;   } // starts at 1406A2EB7

loc_1406A2EC2:                          ; DATA XREF: .rdata:000000014006F914↑o
                cmp     word ptr [rsp+548h+var_238], 1
                jnz     loc_1406A6069
                cmp     dword ptr [rsp+548h+var_238+4], 0
                jnz     loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                cmp     qword ptr [rsp+548h+var_238+8], 0
                jz      short loc_1406A2F33
                lock or dword ptr [rax+464h], 100h
                jmp     short loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A2F33:                          ; CODE XREF: NtSetInformationProcess+464↑j
                lock and dword ptr [rax+464h], 0FFFFFEFFh

loc_1406A2F3E:                          ; CODE XREF: NtSetInformationProcess+471↑j
                                        ; NtSetInformationProcess+56A↓j ...
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]

loc_1406A2F48:                          ; CODE XREF: NtSetInformationProcess+3AB6↓j
                call    ObfDereferenceObjectWithTag
                xor     eax, eax
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A2F54:                          ; DATA XREF: .rdata:000000014006F914↑o
;   __except(loc_1407E73D0) // owned by 1406A2EB7
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A2F59:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 5
                jnz     loc_1406A6CE6

loc_1406A2F62:                          ; DATA XREF: .rdata:000000014006F924↑o
;   __try { // __except at loc_1406A302F
                mov     ebx, [rbx]
                mov     [rsp+548h+var_368], ebx
;   } // starts at 1406A2F62

loc_1406A2F6B:                          ; DATA XREF: .rdata:000000014006F924↑o
                mov     eax, ebx
                and     eax, 80000000h
                jz      short loc_1406A2F78
                btr     ebx, 1Fh

loc_1406A2F78:                          ; CODE XREF: NtSetInformationProcess+4B2↑j
                neg     eax
                sbb     dil, dil
                and     dil, 2
                lea     eax, [rbx-1]
                cmp     eax, 1Eh
                ja      loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                movsx   eax, byte ptr [rcx+280h]
                cmp     ebx, eax
                jle     short loc_1406A300A
                movzx   r9d, r15b
                mov     r8d, 200h
                mov     rdx, rsi
                mov     rcx, cs:qword_140D2E6F0
                call    sub_14078CBF0
                mov     rcx, [rsp+548h+var_508]
                test    al, al
                jnz     short loc_1406A300A

loc_1406A2FF6:                          ; CODE XREF: NtSetInformationProcess+1C2B↓j
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_1406A3000:                          ; CODE XREF: NtSetInformationProcess+80C↓j
                                        ; NtSetInformationProcess+B21↓j ...
                mov     eax, 0C0000061h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A300A:                          ; CODE XREF: NtSetInformationProcess+512↑j
                                        ; NtSetInformationProcess+534↑j
                mov     dword ptr [rsp+548h+var_528], r14d
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, ebx
                call    sub_1402B7B94
                movzx   edx, dil
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B8008
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A302F:                          ; DATA XREF: .rdata:000000014006F924↑o
;   __except(1) // owned by 1406A2F62
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3034:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 2          ; jumptable 00000001406A2DD5 case 18
                jnz     loc_1406A6CE6

loc_1406A303D:                          ; DATA XREF: .rdata:000000014006F934↑o
;   __try { // __except at loc_1406A30C1
                movzx   ebx, word ptr [rbx]
                mov     [rsp+548h+var_4CC], bx
;   } // starts at 1406A303D

loc_1406A3045:                          ; DATA XREF: .rdata:000000014006F934↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                movzx   r9d, r15b
                mov     r8, rsi
                movzx   edx, byte ptr [rsp+548h+var_4CC+1]
                mov     rcx, [rsp+548h+var_508]
                call    sub_140714764
                mov     edi, eax
                test    eax, eax
                js      short loc_1406A30AB
                test    bl, bl
                setnz   r14b
                mov     edx, r14d
                mov     rcx, [rsp+548h+var_508]
                call    PsSetProcessPriorityByClass

loc_1406A30AB:                          ; CODE XREF: NtSetInformationProcess+5D6↑j
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag

loc_1406A30BA:                          ; CODE XREF: NtSetInformationProcess+13F0↓j
                                        ; NtSetInformationProcess+13FC↓j ...
                mov     eax, edi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A30C1:                          ; DATA XREF: .rdata:000000014006F934↑o
;   __except(1) // owned by 1406A303D
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A30C6:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 1          ; jumptable 00000001406A2DD5 case 25
                jnz     loc_1406A6CE6

loc_1406A30CF:                          ; DATA XREF: .rdata:000000014006F944↑o
;   __try { // __except at loc_1406A3128
                movzx   ebx, byte ptr [rbx]
                mov     [rsp+548h+var_4C0], bl
;   } // starts at 1406A30CF

loc_1406A30D9:                          ; DATA XREF: .rdata:000000014006F944↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                test    bl, bl
                setnz   r14b
                mov     edx, r14d
                mov     rcx, [rsp+548h+var_508]
                call    PsSetProcessPriorityByClass
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A3128:                          ; DATA XREF: .rdata:000000014006F944↑o
;   __except(1) // owned by 1406A30CF
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A312D:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 6
                jnz     loc_1406A6CE6

loc_1406A3136:                          ; DATA XREF: .rdata:000000014006F954↑o
;   __try { // __except at loc_1406A31E0
                mov     edi, [rbx]
                mov     [rsp+548h+var_364], edi
;   } // starts at 1406A3136

loc_1406A313F:                          ; DATA XREF: .rdata:000000014006F954↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      short loc_1406A31D6
                xor     edx, edx
                mov     rcx, [rsp+548h+var_508]
                call    sub_1406A2900
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1406A31C0

loc_1406A31A1:                          ; CODE XREF: NtSetInformationProcess+6FE↓j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_140304980
                mov     rdx, rbx
                mov     rcx, [rsp+548h+var_508]
                call    sub_1406A2900
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1406A31A1

loc_1406A31C0:                          ; CODE XREF: NtSetInformationProcess+6DF↑j
                                        ; NtSetInformationProcess+F5A↓j ...
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A31D6:                          ; CODE XREF: NtSetInformationProcess+6CB↑j
                                        ; NtSetInformationProcess+EF4↓j ...
                mov     esi, 0C000010Ah
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A31E0:                          ; DATA XREF: .rdata:000000014006F954↑o
;   __except(1) // owned by 1406A3136
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A31E5:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 12
                jnz     loc_1406A6CE6

loc_1406A31EE:                          ; DATA XREF: .rdata:000000014006F964↑o
;   __try { // __except at loc_1406A3245
                mov     ebx, [rbx]
                mov     [rsp+548h+var_360], ebx
;   } // starts at 1406A31EE

loc_1406A31F7:                          ; DATA XREF: .rdata:000000014006F964↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     r8d, ebx
                mov     rdx, [rsp+548h+var_4F8]
                mov     rcx, [rsp+548h+var_508]
                call    sub_1406A2A00
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A3245:                          ; DATA XREF: .rdata:000000014006F964↑o
;   __except(1) // owned by 1406A31EE
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A324A:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movzx   r9d, r15b       ; jumptable 00000001406A2DD5 case 1
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140706F34
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3261:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 8
                jnz     short loc_1406A3288
                mov     r12d, r14d
                mov     [rsp+548h+var_450], r14d

loc_1406A3271:                          ; DATA XREF: .rdata:000000014006F974↑o
;   __try { // __except at loc_1406A3283
                mov     rax, [rbx]
                mov     [rsp+548h+var_4D8], rax
                mov     [rsp+548h+var_398], rax
;   } // starts at 1406A3271

loc_1406A3281:                          ; DATA XREF: .rdata:000000014006F974↑o
                jmp     short loc_1406A32BA
; ---------------------------------------------------------------------------

loc_1406A3283:                          ; DATA XREF: .rdata:000000014006F974↑o
;   __except(1) // owned by 1406A3271
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3288:                          ; CODE XREF: NtSetInformationProcess+7A4↑j
                cmp     edi, 10h
                jnz     loc_1406A6CE6

loc_1406A3291:                          ; DATA XREF: .rdata:000000014006F984↑o
;   __try { // __except at loc_1406A34AC
                mov     rax, [rbx]
                mov     [rsp+548h+var_4D8], rax
                mov     [rsp+548h+var_398], rax
                mov     r12d, [rbx+8]
                mov     [rsp+548h+var_450], r12d
;   } // starts at 1406A3291

loc_1406A32AD:                          ; DATA XREF: .rdata:000000014006F984↑o
                test    r12, 0FFFFFFFFFFFFFFF8h
                jnz     loc_1406A6069

loc_1406A32BA:                          ; CODE XREF: NtSetInformationProcess:loc_1406A3281↑j
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     r8, cs:LpcPortObjectType
                mov     [rsp+548h+var_478], r14
                mov     [rsp+548h+var_520], r14
                lea     rax, [rsp+548h+var_478]
                mov     [rsp+548h+var_528], rax
                movzx   r9d, r15b
                xor     edx, edx
                mov     rcx, [rsp+548h+var_4D8]
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+548h+var_478]
                mov     [rsp+548h+var_408], rcx
                test    eax, eax
                js      loc_1406A6EB5
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 800h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                jns     short loc_1406A3364
                mov     rcx, [rsp+548h+var_478]
                call    PsDereferenceSiloContext
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3364:                          ; CODE XREF: NtSetInformationProcess+88E↑j
                mov     edx, r12d
                or      rdx, [rsp+548h+var_478]
                mov     [rsp+548h+var_480], rdx
                mov     rax, [rsp+548h+var_508]
                prefetchw byte ptr [rax+4B0h]
                mov     r15, [rax+4B0h]

loc_1406A338A:                          ; CODE XREF: NtSetInformationProcess+946↓j
                mov     [rsp+548h+var_4D8], r15
                mov     eax, r15d
                and     eax, 7
                cmp     edi, 10h
                jnz     short loc_1406A33D7

loc_1406A339A:                          ; DATA XREF: .rdata:000000014006F994↑o
;   __try { // __except at loc_1406A339F
                mov     [rbx+8], eax
                jmp     short loc_1406A33C1
;   } // starts at 1406A339A
; ---------------------------------------------------------------------------

loc_1406A339F:                          ; DATA XREF: .rdata:000000014006F994↑o
;   __except(1) // owned by 1406A339A
                mov     esi, eax
                xor     r14d, r14d
                lea     r13d, [r14+8]
                mov     r15, [rsp+548h+var_4D8]
                mov     rdx, [rsp+548h+var_480]
                mov     rbx, [rsp+548h+var_468]
                mov     edi, [rsp+548h+var_4E0]

loc_1406A33C1:                          ; CODE XREF: NtSetInformationProcess+8DD↑j
                test    esi, esi
                jns     short loc_1406A33F2
                mov     rcx, [rsp+548h+var_408]
                call    PsDereferenceSiloContext
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A33D7:                          ; CODE XREF: NtSetInformationProcess+8D8↑j
                test    eax, eax
                jz      short loc_1406A33F2
                mov     rcx, [rsp+548h+var_408]
                call    PsDereferenceSiloContext

loc_1406A33E8:                          ; CODE XREF: NtSetInformationProcess+D7F↓j
                                        ; NtSetInformationProcess+DB2↓j ...
                mov     esi, 0C000000Dh
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A33F2:                          ; CODE XREF: NtSetInformationProcess+903↑j
                                        ; NtSetInformationProcess+919↑j
                mov     rcx, [rsp+548h+var_508]
                mov     rax, r15
                lock cmpxchg [rcx+4B0h], rdx
                mov     r15, rax
                jnz     short loc_1406A338A
                test    rax, rax
                jz      loc_1406A34A4
                xorps   xmm0, xmm0
                movdqu  [rsp+548h+var_2F0], xmm0
                xorps   xmm1, xmm1
                movdqu  [rsp+548h+var_2E0], xmm1
                and     r15, 0FFFFFFFFFFFFFFF8h
                mov     [rsp+548h+var_2F8], 300008h
                mov     [rsp+548h+var_2F4], 0Dh
                mov     rax, [rsp+548h+var_508]
                mov     rcx, [rax+440h]
                mov     [rsp+548h+var_2D0], rcx
                mov     esi, 0C0000017h
                nop     dword ptr [rax+00h]

loc_1406A3460:                          ; CODE XREF: NtSetInformationProcess+9CB↓j
                lea     rdx, [rsp+548h+var_2F8]
                mov     rcx, r15
                call    LpcRequestPort
                cmp     eax, esi
                jz      short loc_1406A347B
                cmp     eax, 0C000009Ah
                jnz     short loc_1406A348D

loc_1406A347B:                          ; CODE XREF: NtSetInformationProcess+9B2↑j
                lea     r8, qword_140010660
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread
                jmp     short loc_1406A3460
; ---------------------------------------------------------------------------

loc_1406A348D:                          ; CODE XREF: NtSetInformationProcess+9B9↑j
                mov     rdx, [rsp+548h+var_4F8]
                mov     rcx, [rsp+548h+var_508]
                call    sub_140356624
                mov     rcx, r15
                call    PsDereferenceSiloContext

loc_1406A34A4:                          ; CODE XREF: NtSetInformationProcess+3B4↑j
                                        ; NtSetInformationProcess+94B↑j
                mov     esi, r14d
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A34AC:                          ; DATA XREF: .rdata:000000014006F984↑o
;   __except(1) // owned by 1406A3291
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A34B1:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 10h        ; jumptable 00000001406A2DD5 case 9
                jnz     loc_1406A6CE6

loc_1406A34BA:                          ; DATA XREF: .rdata:000000014006F9A4↑o
;   __try { // __except at loc_1406A34D6
                mov     r9, [rbx]
                mov     [rsp+548h+var_270], r9
;   } // starts at 1406A34BA

loc_1406A34C5:                          ; DATA XREF: .rdata:000000014006F9A4↑o
                mov     r8, rsi
                movzx   edx, r15b
                call    sub_1407BB590
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A34D6:                          ; DATA XREF: .rdata:000000014006F9A4↑o
;   __except(1) // owned by 1406A34BA
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A34DB:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_518], r14 ; jumptable 00000001406A2DD5 case 10
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 220h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, [rsp+548h+var_508]
                call    SkIsSecureKernel

loc_1406A3522:                          ; CODE XREF: NtSetInformationProcess+AC1↓j
                                        ; NtSetInformationProcess+B0A↓j ...
                mov     ebx, eax

loc_1406A3524:                          ; CODE XREF: NtSetInformationProcess+3331↓j
                                        ; NtSetInformationProcess+3341↓j ...
                mov     rcx, [rsp+548h+var_508]

loc_1406A3529:                          ; CODE XREF: NtSetInformationProcess+3EE3↓j
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_1406A3533:                          ; CODE XREF: NtSetInformationProcess+3769↓j
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A353A:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_518], r14 ; jumptable 00000001406A2DD5 case 11
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 220h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, [rsp+548h+var_508]
                call    SkIsSecureKernel
                jmp     short loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A3583:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_518], r14 ; jumptable 00000001406A2DD5 case 13
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, [rsp+548h+var_508]
                call    SkIsSecureKernel
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A35CF:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movzx   edx, r15b       ; jumptable 00000001406A2DD5 case 16
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag

loc_1406A362D:                          ; CODE XREF: NtSetInformationProcess+3963↓j
                mov     eax, 0C0000002h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3637:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 1          ; jumptable 00000001406A2DD5 case 17
                jnz     loc_1406A6CE6

loc_1406A3640:                          ; DATA XREF: .rdata:000000014006F9B4↑o
;   __try { // __except at loc_1406A36F4
                movzx   ebx, byte ptr [rbx]
                mov     [rsp+548h+var_4C4], bl
;   } // starts at 1406A3640

loc_1406A364A:                          ; DATA XREF: .rdata:000000014006F9B4↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     r13, [rsp+548h+var_4F8]
                mov     rdx, r13
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B7B00
                mov     rax, [rsp+548h+var_508]
                test    bl, bl
                jz      short loc_1406A36A5
                or      dword ptr [rax+5F8h], 4
                jmp     short loc_1406A36AC
; ---------------------------------------------------------------------------

loc_1406A36A5:                          ; CODE XREF: NtSetInformationProcess+BDA↑j
                and     dword ptr [rax+5F8h], 0FFFFFFFBh

loc_1406A36AC:                          ; CODE XREF: NtSetInformationProcess+BE3↑j
                mov     rcx, [rsp+548h+var_508]
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_1406A36DA
                movzx   r8d, word ptr [rax+8]
                mov     edx, 14Ch
                cmp     r8w, dx
                jz      short loc_1406A36D8
                mov     eax, 1C4h
                cmp     r8w, ax
                jnz     short loc_1406A36DA

loc_1406A36D8:                          ; CODE XREF: NtSetInformationProcess+C0B↑j
                mov     bl, 1

loc_1406A36DA:                          ; CODE XREF: NtSetInformationProcess+BFB↑j
                                        ; NtSetInformationProcess+C16↑j
                movzx   edx, bl
                call    sub_1406A28D8
                mov     rdx, r13
                mov     rcx, [rsp+548h+var_508]
                call    sub_14035DA58
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A36F4:                          ; DATA XREF: .rdata:000000014006F9B4↑o
;   __except(1) // owned by 1406A3640
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A36F9:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 19
                jnz     loc_1406A6CE6

loc_1406A3702:                          ; DATA XREF: .rdata:000000014006F9C4↑o
;   __try { // __except at loc_1406A37A5
                mov     ebx, [rbx]
                mov     [rsp+548h+var_380], ebx
;   } // starts at 1406A3702

loc_1406A370B:                          ; DATA XREF: .rdata:000000014006F9C4↑o
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A2EA7
                mov     rcx, [rsp+548h+var_508]
                cmp     qword ptr [rcx+8C0h], 0
                jz      short loc_1406A3781
                mov     esi, 0C0000022h
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3781:                          ; CODE XREF: NtSetInformationProcess+CA9↑j
                test    ebx, ebx
                jz      short loc_1406A3795
                lock or dword ptr [rcx+464h], 1000000h
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A3795:                          ; CODE XREF: NtSetInformationProcess+CC3↑j
                lock and dword ptr [rcx+464h], 0FEFFFFFFh
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A37A5:                          ; DATA XREF: .rdata:000000014006F9C4↑o
;   __except(1) // owned by 1406A3702
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A37AA:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 21
                jnz     short loc_1406A37CE

loc_1406A37AF:                          ; DATA XREF: .rdata:000000014006F9D4↑o
;   __try { // __except at loc_1406A37C9
                mov     rax, [rbx]
                mov     qword ptr [rsp+548h+var_248], rax
;   } // starts at 1406A37AF

loc_1406A37BA:                          ; DATA XREF: .rdata:000000014006F9D4↑o
                test    rax, rax
                jnz     short loc_1406A37F9
                mov     eax, 0C000000Dh
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A37C9:                          ; DATA XREF: .rdata:000000014006F9D4↑o
;   __except(1) // owned by 1406A37AF
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A37CE:                          ; CODE XREF: NtSetInformationProcess+CED↑j
                cmp     edi, 10h
                jnz     loc_1406A6CE6

loc_1406A37D7:                          ; DATA XREF: .rdata:000000014006F9E4↑o
;   __try { // __except at loc_1406A3948
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_248], xmm0
;   } // starts at 1406A37D7

loc_1406A37E2:                          ; DATA XREF: .rdata:000000014006F9E4↑o
                xor     edx, edx
                lea     rcx, [rsp+548h+var_248]
                call    sub_140378284
                test    al, al
                jz      loc_1406A6069

loc_1406A37F9:                          ; CODE XREF: NtSetInformationProcess+CFD↑j
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                call    sub_140310288
                lea     ecx, [rax-1]
                test    eax, ecx
                jnz     loc_1406A33E8
                cmp     edi, 8
                jnz     short loc_1406A388D
                bsf     eax, eax
                mov     [rsp+548h+var_4E8], eax
                mov     ecx, eax
                lea     rax, cs:140000000h
                mov     rdx, ds:rva qword_140CFC848[rax+rcx*8]
                and     rdx, qword ptr [rsp+548h+var_248]
                cmp     rdx, qword ptr [rsp+548h+var_248]
                jnz     loc_1406A33E8
                movzx   eax, word ptr [rsp+548h+var_4E8]
                mov     word ptr [rsp+548h+var_248+8], ax
                mov     qword ptr [rsp+548h+var_248], rdx

loc_1406A388D:                          ; CODE XREF: NtSetInformationProcess+D88↑j
                mov     r13, [rsp+548h+var_4F8]
                mov     rcx, r13
                call    sub_1402675A0
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      loc_1406A3936
                mov     rcx, [rsp+548h+var_508]
                call    sub_140581B9C
                lea     rax, [rsp+548h+var_4A8]
                mov     [rsp+548h+var_528], rax
                lea     r9, [rsp+548h+var_248]
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rsp+548h+var_508]
                call    sub_140909CB4
                mov     esi, eax
                mov     rcx, [rsp+548h+var_508]
                call    sub_140581E10
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C380
                test    esi, esi
                js      short loc_1406A393B
                cmp     [rsp+548h+var_4A8], 0
                jz      short loc_1406A3919
                mov     rdx, [rsp+548h+var_508]
                mov     rcx, r13
                call    sub_1405F2404

loc_1406A3919:                          ; CODE XREF: NtSetInformationProcess+E4A↑j
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+460h], 200000h
                mov     rcx, r13
                call    sub_14021E1F0
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A3936:                          ; CODE XREF: NtSetInformationProcess+DED↑j
                mov     esi, 0C000010Ah

loc_1406A393B:                          ; CODE XREF: NtSetInformationProcess+E40↑j
                mov     rcx, r13
                call    sub_14021E1F0
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A3948:                          ; DATA XREF: .rdata:000000014006F9E4↑o
;   __except(1) // owned by 1406A37D7
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A394D:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 22
                jnz     loc_1406A6CE6

loc_1406A3956:                          ; DATA XREF: .rdata:000000014006F9F4↑o
;   __try { // __except at loc_1406A3A1F
                mov     eax, [rbx]
                mov     [rsp+548h+var_35C], eax
;   } // starts at 1406A3956

loc_1406A395F:                          ; DATA XREF: .rdata:000000014006F9F4↑o
                mov     edi, r14d
                test    eax, eax
                setnz   dil
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      loc_1406A31D6
                mov     r13, [rsp+548h+var_4F8]
                mov     rdx, r13
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B7B00
                mov     edx, edi
                mov     rcx, [rsp+548h+var_508]
                call    sub_14073349C
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                mov     rbx, [rax]
                cmp     rbx, rax
                jz      short loc_1406A3A12
                nop     dword ptr [rax+00h]

loc_1406A39F0:                          ; CODE XREF: NtSetInformationProcess+F50↓j
                lea     rcx, [rbx-4E8h]
                mov     edx, edi
                call    sub_14077182C
                mov     rbx, [rbx]
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                cmp     rbx, rax
                jnz     short loc_1406A39F0

loc_1406A3A12:                          ; CODE XREF: NtSetInformationProcess+F2A↑j
                mov     rdx, r13
                call    sub_14035DA58
                jmp     loc_1406A31C0
; ---------------------------------------------------------------------------

loc_1406A3A1F:                          ; DATA XREF: .rdata:000000014006F9F4↑o
;   __except(1) // owned by 1406A3956
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3A24:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 31
                jnz     loc_1406A6CE6
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5

loc_1406A3A66:                          ; DATA XREF: .rdata:000000014006FA04↑o
;   __try { // __except at loc_1406A3A71
                mov     eax, [rbx]
                mov     [rsp+548h+var_44C], eax
                jmp     short loc_1406A3A7C
;   } // starts at 1406A3A66
; ---------------------------------------------------------------------------

loc_1406A3A71:                          ; DATA XREF: .rdata:000000014006FA04↑o
;   __except(1) // owned by 1406A3A66
                mov     esi, eax
                xor     eax, eax
                mov     [rsp+548h+var_44C], eax

loc_1406A3A7C:                          ; CODE XREF: NtSetInformationProcess+FAF↑j
                test    esi, esi
                js      loc_1406A2E98
                test    eax, 0FFFFFFFEh
                jnz     loc_1406A33E8
                test    al, 1
                mov     rax, [rsp+548h+var_508]
                jz      short loc_1406A3AA5
                lock and dword ptr [rax+464h], 0FFFFFFFDh
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A3AA5:                          ; CODE XREF: NtSetInformationProcess+FD6↑j
                lock or dword ptr [rax+464h], 2
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A3AB2:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 23
                jnz     loc_1406A6CE6

loc_1406A3ABB:                          ; DATA XREF: .rdata:000000014006FA14↑o
;   __try { // __except at loc_1406A3B26
                mov     rbx, [rbx]
                mov     [rsp+548h+var_288], rbx
;   } // starts at 1406A3ABB

loc_1406A3AC6:                          ; DATA XREF: .rdata:000000014006FA14↑o
                movzx   edx, r15b
                xor     ecx, ecx
                call    RtlIsSandboxedToken
                test    al, al
                jnz     loc_1406A6D55
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                movzx   r8d, r15b
                mov     rdx, rbx
                mov     rcx, [rsp+548h+var_508]
                call    sub_1408E0D6C
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A3B26:                          ; DATA XREF: .rdata:000000014006FA14↑o
;   __except(1) // owned by 1406A3ABB
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3B2B:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 24
                jnz     loc_1406A6CE6

loc_1406A3B34:                          ; DATA XREF: .rdata:000000014006FA24↑o
;   __try { // __except at loc_1406A3BB8
                mov     ebx, [rbx]
                mov     [rsp+548h+var_358], ebx
;   } // starts at 1406A3B34

loc_1406A3B3D:                          ; DATA XREF: .rdata:000000014006FA24↑o
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 204h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402A9C50
                mov     esi, 0C0000022h
                cmp     ebx, eax
                cmovnz  r14d, esi

loc_1406A3BA1:                          ; CODE XREF: NtSetInformationProcess+1D77↓j
                                        ; NtSetInformationProcess+1DD5↓j ...
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag

loc_1406A3BB0:                          ; CODE XREF: NtSetInformationProcess:loc_1406A6A60↓j
                                        ; NtSetInformationProcess+3FA8↓j
                mov     eax, r14d
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3BB8:                          ; DATA XREF: .rdata:000000014006FA24↑o
;   __except(1) // owned by 1406A3B34
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3BBD:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 29
                jnz     loc_1406A6CE6

loc_1406A3BC6:                          ; DATA XREF: .rdata:000000014006FA34↑o
;   __try { // __except at loc_1406A3C47
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3C0], ebx
;   } // starts at 1406A3BC6

loc_1406A3BCF:                          ; DATA XREF: .rdata:000000014006FA34↑o
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                test    ebx, ebx
                jz      short loc_1406A3C37
                lock or dword ptr [rax+464h], 2000h
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A3C37:                          ; CODE XREF: NtSetInformationProcess+1165↑j
                lock and dword ptr [rax+464h], 0FFFFDFFFh
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A3C47:                          ; DATA XREF: .rdata:000000014006FA34↑o
;   __except(1) // owned by 1406A3BC6
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3C4C:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_470], r14 ; jumptable 00000001406A2DD5 case 32
                test    r9d, r9d
                jz      short loc_1406A3C9C
                lea     eax, [rdi-4]
                test    eax, 0FFFFFFFBh
                jnz     loc_1406A6CE6

loc_1406A3C67:                          ; DATA XREF: .rdata:000000014006FA44↑o
;   __try { // __except at loc_1406A3C97
                mov     ecx, [rbx]
                mov     dword ptr [rsp+548h+var_470], ecx
                cmp     edi, 8
                jnz     short loc_1406A3C81
                mov     eax, [rbx+4]
                mov     dword ptr [rsp+548h+var_470+4], eax
                jmp     short loc_1406A3C89
; ---------------------------------------------------------------------------

loc_1406A3C81:                          ; CODE XREF: NtSetInformationProcess+11B3↑j
                mov     dword ptr [rsp+548h+var_470+4], r14d
;   } // starts at 1406A3C67

loc_1406A3C89:                          ; CODE XREF: NtSetInformationProcess+11BF↑j
                                        ; DATA XREF: .rdata:000000014006FA44↑o
                test    ecx, ecx
                jz      short loc_1406A3C9C
                mov     eax, 0C000000Dh
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3C97:                          ; DATA XREF: .rdata:000000014006FA44↑o
;   __except(1) // owned by 1406A3C67
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3C9C:                          ; CODE XREF: NtSetInformationProcess+1197↑j
                                        ; NtSetInformationProcess+11CB↑j
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                test    edi, edi
                jz      short loc_1406A3CEE
                lea     rdx, [rsp+548h+var_470]
                call    sub_140909068
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A3CEE:                          ; CODE XREF: NtSetInformationProcess+121A↑j
                xor     edx, edx
                call    sub_140909068
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A3CFA:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                lea     eax, [rdi-4]    ; jumptable 00000001406A2DD5 case 33
                test    eax, 0FFFFFFFBh
                jnz     loc_1406A6CE6
                cmp     edi, 4
                jnz     short loc_1406A3D20

loc_1406A3D0D:                          ; DATA XREF: .rdata:000000014006FA54↑o
;   __try { // __except at loc_1406A3D1B
                mov     eax, [rbx]
                mov     [rsp+548h+var_4BC], eax
;   } // starts at 1406A3D0D

loc_1406A3D16:                          ; DATA XREF: .rdata:000000014006FA54↑o
                xor     r12b, r12b
                jmp     short loc_1406A3D39
; ---------------------------------------------------------------------------

loc_1406A3D1B:                          ; DATA XREF: .rdata:000000014006FA54↑o
;   __except(1) // owned by 1406A3D0D
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3D20:                          ; CODE XREF: NtSetInformationProcess+124B↑j
                                        ; DATA XREF: .rdata:000000014006FA64↑o
;   __try { // __except at loc_1406A3E7C
                mov     rax, [rbx]
                mov     [rsp+548h+var_390], rax
;   } // starts at 1406A3D20

loc_1406A3D2B:                          ; DATA XREF: .rdata:000000014006FA64↑o
                mov     r12, rax
                shr     r12, 20h
                mov     [rsp+548h+var_4BC], eax

loc_1406A3D39:                          ; CODE XREF: NtSetInformationProcess+1259↑j
                cmp     eax, 4
                jnb     loc_1406A6069
                cmp     eax, 3
                jb      short loc_1406A3D68
                movzx   r9d, r15b
                mov     r8d, 200h
                mov     rdx, rsi
                mov     rcx, cs:qword_140D2E6F0
                call    sub_14078CBF0
                test    al, al
                jz      loc_1406A3000

loc_1406A3D68:                          ; CODE XREF: NtSetInformationProcess+1285↑j
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      loc_1406A31D6
                mov     r13, [rsp+548h+var_4F8]
                mov     rdx, r13
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B7B00
                mov     r8, [rsp+548h+var_508]
                mov     eax, [r8+464h]
                mov     r9d, [rsp+548h+var_4BC]
                shl     r9d, 1Bh
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_1406A3DF0:                          ; CODE XREF: NtSetInformationProcess+1348↓j
                mov     edx, eax
                mov     ecx, eax
                and     ecx, 0C7FFFFFFh
                or      ecx, r9d
                lock cmpxchg [r8+464h], ecx
                cmp     eax, edx
                jnz     short loc_1406A3DF0
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                mov     rbx, [rax]
                cmp     rbx, rax
                jz      short loc_1406A3E6F
                mov     r14d, [rsp+548h+var_4BC]

loc_1406A3E26:                          ; CODE XREF: NtSetInformationProcess+13AD↓j
                cmp     r12b, 1
                jnz     short loc_1406A3E4C
                mov     eax, [rbx+28h]
                shr     eax, 9
                and     eax, 7
                cmp     eax, r14d
                jge     short loc_1406A3E4C
                xor     r8d, r8d
                mov     edx, r14d
                lea     rcx, [rbx-4E8h]
                call    sub_14032292C

loc_1406A3E4C:                          ; CODE XREF: NtSetInformationProcess+136A↑j
                                        ; NtSetInformationProcess+1378↑j
                mov     edx, r14d
                lea     rcx, [rbx-4E8h]
                call    sub_1402FA570
                mov     rbx, [rbx]
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                cmp     rbx, rax
                jnz     short loc_1406A3E26

loc_1406A3E6F:                          ; CODE XREF: NtSetInformationProcess+135C↑j
                mov     rdx, r13
                call    sub_14035DA58
                jmp     loc_1406A31C0
; ---------------------------------------------------------------------------

loc_1406A3E7C:                          ; DATA XREF: .rdata:000000014006FA64↑o
;   __except(1) // owned by 1406A3D20
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3E81:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 34
                jnz     loc_1406A6CE6
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406A6069

loc_1406A3E94:                          ; DATA XREF: .rdata:000000014006FA74↑o
;   __try { // __except at loc_1406A3ECE
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3BC], ebx
;   } // starts at 1406A3E94

loc_1406A3E9D:                          ; DATA XREF: .rdata:000000014006FA74↑o
                call    PsGetCurrentProcess
                mov     rcx, rax
                mov     edx, ebx
                call    sub_14035E1CC
                mov     edi, eax
                test    eax, eax
                js      loc_1406A30BA
                and     bl, 3
                cmp     bl, 1
                jnz     loc_1406A30BA
                call    sub_14037EB80
                mov     eax, edi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3ECE:                          ; DATA XREF: .rdata:000000014006FA74↑o
;   __except(1) // owned by 1406A3E94
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3ED3:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 39
                jnz     loc_1406A6CE6

loc_1406A3EDC:                          ; DATA XREF: .rdata:000000014006FA84↑o
;   __try { // __except at loc_1406A3FDF
                mov     ebx, [rbx]
                mov     [rsp+548h+var_448], ebx
;   } // starts at 1406A3EDC

loc_1406A3EE5:                          ; DATA XREF: .rdata:000000014006FA84↑o
                call    ?do_max_length@?$codecvt@_WDH@std@@MEBAHXZ ; std::codecvt<wchar_t,char,int>::do_max_length(void)
                cmp     ebx, eax
                ja      loc_1406A6069
                call    sub_14026CE60
                cmp     ebx, eax
                jb      loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jz      loc_1406A31D6
                mov     r13, [rsp+548h+var_4F8]
                mov     rdx, r13
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B7B00
                shl     ebx, 0Ch
                mov     r8, [rsp+548h+var_508]
                mov     eax, [r8+460h]

loc_1406A3F72:                          ; CODE XREF: NtSetInformationProcess+14C9↓j
                mov     edx, eax
                mov     ecx, eax
                and     ecx, 0FFFF8FFFh
                or      ecx, ebx
                lock cmpxchg [r8+460h], ecx
                cmp     eax, edx
                jnz     short loc_1406A3F72
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                mov     rdi, [rax]
                cmp     rdi, rax
                jz      short loc_1406A3FD2
                mov     ebx, [rsp+548h+var_448]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_1406A3FB0:                          ; CODE XREF: NtSetInformationProcess+1510↓j
                lea     rcx, [rdi-4E8h]
                mov     edx, ebx
                call    sub_1402FA864
                mov     rdi, [rdi]
                mov     rcx, [rsp+548h+var_508]
                lea     rax, [rcx+5E0h]
                cmp     rdi, rax
                jnz     short loc_1406A3FB0

loc_1406A3FD2:                          ; CODE XREF: NtSetInformationProcess+14DD↑j
                mov     rdx, r13
                call    sub_14035DA58
                jmp     loc_1406A31C0
; ---------------------------------------------------------------------------

loc_1406A3FDF:                          ; DATA XREF: .rdata:000000014006FA84↑o
;   __except(1) // owned by 1406A3EDC
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A3FE4:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                xor     eax, eax        ; jumptable 00000001406A2DD5 case 35
                movups  [rsp+548h+var_1F8], xmm0
                movups  [rsp+548h+var_1E8], xmm0
                mov     [rsp+548h+var_1D8], rax
                mov     [rsp+548h+var_500], r14d
                mov     [rsp+548h+var_4B8], r14
                mov     [rsp+548h+var_488], r14
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406A6069
                cmp     r15b, 1
                jnz     loc_1406A4AC1
                cmp     edi, 28h ; '('
                jb      loc_1406A6CE6
                lea     ecx, [rdi-10h]
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     rcx
                mov     rsi, rdx
                shr     rsi, 4
                lea     rax, [rsi+rsi*2]
                shl     rax, 3
                sub     rcx, rax
                jnz     loc_1406A6CE6
                cmp     edi, 28h ; '('
                jnz     loc_1406A41F7
                lea     r15, [rsp+548h+var_1F8]
                mov     [rsp+548h+var_4F8], r15

loc_1406A406E:                          ; CODE XREF: NtSetInformationProcess+1755↓j
                                        ; DATA XREF: .rdata:000000014006FA94↑o
;   __try { // __except at loc_1406A45D9
                mov     [rsp+548h+var_388], r15
                mov     [rsp+548h+var_480], r15
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r15
                call    memmove
                nop
;   } // starts at 1406A406E

loc_1406A408D:                          ; DATA XREF: .rdata:000000014006FA94↑o
                cmp     dword ptr [r15+4], 2
                jnb     loc_1406A45D2
                test    dword ptr [r15], 0FFFFFFFEh
                jnz     loc_1406A45D2
                mov     r8d, [r15+8]
                cmp     r8d, 1
                jb      loc_1406A45D2
                cmp     rsi, r8
                jnz     loc_1406A45D2
                mov     ecx, r14d
                mov     [rsp+548h+var_500], ecx
                lea     rdx, [rcx+1]
                lea     rdx, [rcx+rdx*2]
                lea     rdx, [r15+rdx*8]
                nop

loc_1406A40D0:                          ; CODE XREF: NtSetInformationProcess+1626↓j
                cmp     dword ptr [rdx], 0
                jnz     loc_1406A45CB
                inc     ecx
                mov     [rsp+548h+var_500], ecx
                add     rdx, 18h
                cmp     ecx, r8d
                jb      short loc_1406A40D0
                call    PsGetCurrentProcess
                mov     r8, rax
                mov     [rsp+548h+var_508], rax
                mov     [rsp+548h+var_4E0], r14d
                mov     ecx, [r15]
                test    cl, 1
                jz      short loc_1406A4136
                mov     rax, [rax+580h]
                test    rax, rax
                jz      loc_1406A45CB
                movzx   ecx, word ptr [rax+8]
                mov     edx, 14Ch
                cmp     cx, dx
                jz      short loc_1406A412E
                mov     eax, 1C4h
                cmp     cx, ax
                jnz     loc_1406A45CB

loc_1406A412E:                          ; CODE XREF: NtSetInformationProcess+165E↑j
                mov     [rsp+548h+var_4E0], 1

loc_1406A4136:                          ; CODE XREF: NtSetInformationProcess+1640↑j
                mov     eax, [rsp+548h+var_4E0]
                xor     eax, 1
                mov     ecx, eax
                lea     eax, ds:4[rax*4]
                mov     [rsp+548h+var_4C8], eax
                lea     rax, ds:4[rcx*4]
                mov     [rsp+548h+var_468], rax
                mov     [rsp+548h+var_4B0], rbx
                mov     [rsp+548h+var_500], r14d
                mov     esi, r14d
                mov     [rsp+548h+var_4FC], r14d
                xor     edx, edx
                mov     rcx, r8

loc_1406A4177:                          ; CODE XREF: NtSetInformationProcess+1AF2↓j
                call    sub_1406A2900
                mov     [rsp+548h+var_4D8], rax
                mov     eax, [rsp+548h+var_500]
                mov     rbx, [rsp+548h+var_4D8]
                test    rbx, rbx
                jz      loc_1406A45B7
                cmp     eax, [r15+8]
                jnb     loc_1406A45B7
                test    dword ptr [rbx+74h], 400h
                jnz     loc_1406A45A8
                lea     rcx, [rbx+4F8h]
                call    sub_14024C840
                test    al, al
                jz      loc_1406A45A8
                mov     rdi, [rbx+0F0h]
                mov     [rsp+548h+var_3F8], rdi

loc_1406A41CD:                          ; DATA XREF: .rdata:000000014006FAA4↑o
;   __try { // __except at loc_1406A457B
                cmp     [rsp+548h+var_4E0], 0
                jz      short loc_1406A4225
                lea     rbx, [rdi+202Ch]
                mov     [rsp+548h+var_488], rbx
                mov     ecx, [rbx]
                call    sub_1402FC650
                mov     r13, rax
                mov     [rsp+548h+var_4B8], rax
                jmp     short loc_1406A423C
;   } // starts at 1406A41CD
; ---------------------------------------------------------------------------

loc_1406A41F7:                          ; CODE XREF: NtSetInformationProcess+159B↑j
                                        ; DATA XREF: .rdata:000000014006FAA4↑o
                mov     r8d, 736C5450h
                mov     rdx, rdi
                mov     ecx, 9
                call    ExAllocatePoolWithQuotaTag
                mov     r15, rax
                mov     [rsp+548h+var_4F8], rax
                test    rax, rax
                jnz     loc_1406A406E
                mov     eax, 0C000009Ah
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4225:                          ; CODE XREF: NtSetInformationProcess+1712↑j
                                        ; DATA XREF: .rdata:000000014006FAB4↑o
;   __try { // __except at loc_1406A457B
                lea     rbx, [rdi+58h]
                mov     [rsp+548h+var_488], rbx
                mov     r13, [rbx]
                mov     [rsp+548h+var_4B8], r13
;   } // starts at 1406A4225

loc_1406A423C:                          ; CODE XREF: NtSetInformationProcess+1735↑j
                                        ; DATA XREF: .rdata:000000014006FAB4↑o
                test    r13, r13
                jz      loc_1406A4593
                cmp     dword ptr [r15+4], 1
                jnz     loc_1406A441D
                cmp     r13, rbx
                jz      loc_1406A4310

loc_1406A4259:                          ; DATA XREF: .rdata:000000014006FAC4↑o
;   __try { // __except at loc_1406A42F3
                mov     edx, [r15+0Ch]
                mov     r8d, edx
                imul    r8, [rsp+548h+var_468]
                test    r8, r8
                jz      short loc_1406A42A4
                mov     ecx, [rsp+548h+var_4C8]
                dec     ecx
                test    r13, rcx
                jnz     loc_1406A6EDF
                lea     rax, [r8+r13]
                cmp     rax, r12
                ja      short loc_1406A428E
                cmp     rax, r13
                jnb     short loc_1406A42A4

loc_1406A428E:                          ; CODE XREF: NtSetInformationProcess+17C7↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     rax, [rsp+548h+var_388]
                mov     edx, [rax+0Ch]

loc_1406A42A4:                          ; CODE XREF: NtSetInformationProcess+17AC↑j
                                        ; NtSetInformationProcess+17CC↑j
                mov     eax, [rsp+548h+var_500]
                inc     rax
                lea     rax, [rax+rax*2]
                lea     rdi, [r15+rax*8]
                imul    rdx, [rsp+548h+var_468]
                mov     r8d, [rsp+548h+var_4C8]
                mov     rcx, [rdi]
                call    ProbeForWrite
                mov     r8d, [r15+0Ch]
                imul    r8, [rsp+548h+var_468]
                mov     rdx, r13
                mov     rcx, [rdi]
                call    memmove
                lock or [rsp+548h+var_548], 0
;   } // starts at 1406A4259

loc_1406A42E9:                          ; DATA XREF: .rdata:000000014006FAC4↑o
                mov     rdi, [rsp+548h+var_3F8]
                jmp     short loc_1406A4318
; ---------------------------------------------------------------------------

loc_1406A42F3:                          ; DATA XREF: .rdata:000000014006FAC4↑o
                                        ; .rdata:000000014006FDF4↑o
;   __except(1) // owned by 1406A4259
;   __except(1) // owned by 1406A6EDF
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]
                jmp     loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A4310:                          ; CODE XREF: NtSetInformationProcess+1793↑j
                mov     [rsp+548h+var_4B8], r14

loc_1406A4318:                          ; CODE XREF: NtSetInformationProcess+1831↑j
                                        ; DATA XREF: .rdata:000000014006FAD4↑o
;   __try { // __except at loc_1406A4400
                mov     edx, [rsp+548h+var_500]
                lea     rcx, [rdx+rdx*2]
                mov     rax, [rsp+548h+var_4B0]
                or      dword ptr [rax+rcx*8+10h], 1
;   } // starts at 1406A4318

loc_1406A432D:                          ; DATA XREF: .rdata:000000014006FAD4↑o
                                        ; .rdata:000000014006FAE4↑o
;   __try { // __except at loc_1406A435B
                lea     rcx, [rdx+rdx*2]
                mov     rax, [rsp+548h+var_480]
                mov     rdx, [rax+rcx*8+18h]
                cmp     [rsp+548h+var_4E0], 0
                jz      short loc_1406A4355
                mov     rcx, rdx
                call    sub_1402FC650
                mov     [rdi+202Ch], eax
                jmp     short loc_1406A4359
; ---------------------------------------------------------------------------

loc_1406A4355:                          ; CODE XREF: NtSetInformationProcess+1883↑j
                mov     [rdi+58h], rdx

loc_1406A4359:                          ; CODE XREF: NtSetInformationProcess+1893↑j
                jmp     short loc_1406A4373
;   } // starts at 1406A432D
; ---------------------------------------------------------------------------

loc_1406A435B:                          ; DATA XREF: .rdata:000000014006FAE4↑o
;   __except(1) // owned by 1406A432D
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]

loc_1406A4373:                          ; CODE XREF: NtSetInformationProcess:loc_1406A4359↑j
                test    esi, esi
                js      short loc_1406A43CE

loc_1406A4377:                          ; DATA XREF: .rdata:000000014006FAF4↑o
;   __try { // __except at loc_1406A43B1
                mov     eax, [rsp+548h+var_500]
                lea     rcx, [rax+rax*2]
                mov     rax, [rsp+548h+var_4B0]
                lea     rdx, [rax+rcx*8]
                mov     rax, [rsp+548h+var_4D8]
                mov     rcx, [rax+480h]
                mov     [rdx+20h], rcx
                mov     rax, [rsp+548h+var_4B8]
                mov     [rdx+18h], rax
                xor     dword ptr [rdx+10h], 3
                inc     [rsp+548h+var_500]
                jmp     short loc_1406A43C9
;   } // starts at 1406A4377
; ---------------------------------------------------------------------------

loc_1406A43B1:                          ; DATA XREF: .rdata:000000014006FAF4↑o
;   __except(1) // owned by 1406A4377
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]

loc_1406A43C9:                          ; CODE XREF: NtSetInformationProcess+18EF↑j
                jmp     loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A43CE:                          ; CODE XREF: NtSetInformationProcess+18B5↑j
                                        ; DATA XREF: .rdata:000000014006FB04↑o
;   __try { // __except at loc_1406A43E5
                mov     eax, [rsp+548h+var_500]
                lea     rcx, [rax+rax*2]
                mov     rax, [rsp+548h+var_4B0]
                and     dword ptr [rax+rcx*8+10h], 0FFFFFFFEh
                jmp     short loc_1406A43FB
;   } // starts at 1406A43CE
; ---------------------------------------------------------------------------

loc_1406A43E5:                          ; DATA XREF: .rdata:000000014006FB04↑o
;   __except(1) // owned by 1406A43CE
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     esi, [rsp+548h+var_4FC]
                mov     r15, [rsp+548h+var_4F8]

loc_1406A43FB:                          ; CODE XREF: NtSetInformationProcess+1923↑j
                jmp     loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A4400:                          ; DATA XREF: .rdata:000000014006FAD4↑o
;   __except(1) // owned by 1406A4318
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]
                jmp     loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A441D:                          ; CODE XREF: NtSetInformationProcess+178A↑j
                                        ; DATA XREF: .rdata:000000014006FB14↑o
;   __try { // __except at loc_1406A4561
                mov     eax, [rsp+548h+var_500]
                lea     rcx, [rax+rax*2]
                lea     rdi, ds:0[rcx*8]
                mov     rax, [rsp+548h+var_4B0]
                or      dword ptr [rdi+rax+10h], 1
;   } // starts at 1406A441D

loc_1406A443A:                          ; DATA XREF: .rdata:000000014006FB14↑o
                                        ; .rdata:000000014006FB24↑o
;   __try { // __except at loc_1406A44D4
                mov     rax, [rsp+548h+var_480]
                mov     ecx, [rax+0Ch]
                cmp     [rsp+548h+var_4E0], 0
                jz      short loc_1406A4496
                lea     rax, ds:0[rcx*4]
                add     rax, r13
                cmp     rax, r12
                cmovnb  rax, r12
                mov     ecx, [rax]
                call    sub_1402FC650
                mov     rbx, rax
                mov     [rsp+548h+var_488], rax
                mov     rcx, [rdi+r15+18h]
                call    sub_1402FC650
                mov     edx, [r15+0Ch]
                mov     rcx, [rsp+548h+var_4B8]
                lea     r8, [rcx+rdx*4]
                cmp     r8, r12
                cmovnb  r8, r12
                mov     [r8], eax
                jmp     short loc_1406A44D2
; ---------------------------------------------------------------------------

loc_1406A4496:                          ; CODE XREF: NtSetInformationProcess+198A↑j
                lea     rax, ds:0[rcx*8]
                add     rax, r13
                cmp     rax, r12
                cmovnb  rax, r12
                mov     rbx, [rax]
                mov     [rsp+548h+var_488], rbx
                mov     ecx, [r15+0Ch]
                mov     rax, [rsp+548h+var_4B8]
                lea     rdx, [rax+rcx*8]
                cmp     rdx, r12
                cmovnb  rdx, r12
                mov     rax, [rdi+r15+18h]
                mov     [rdx], rax

loc_1406A44D2:                          ; CODE XREF: NtSetInformationProcess+19D4↑j
                jmp     short loc_1406A44F4
;   } // starts at 1406A443A
; ---------------------------------------------------------------------------

loc_1406A44D4:                          ; DATA XREF: .rdata:000000014006FB24↑o
;   __except(1) // owned by 1406A443A
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]
                mov     rbx, [rsp+548h+var_488]

loc_1406A44F4:                          ; CODE XREF: NtSetInformationProcess:loc_1406A44D2↑j
                test    esi, esi
                js      short loc_1406A4532

loc_1406A44F8:                          ; DATA XREF: .rdata:000000014006FB34↑o
;   __try { // __except at loc_1406A4518
                mov     eax, [rsp+548h+var_500]
                lea     rcx, [rax+rax*2]
                mov     rax, [rsp+548h+var_4B0]
                mov     [rax+rcx*8+18h], rbx
                xor     dword ptr [rax+rcx*8+10h], 3
                inc     [rsp+548h+var_500]
                jmp     short loc_1406A4530
;   } // starts at 1406A44F8
; ---------------------------------------------------------------------------

loc_1406A4518:                          ; DATA XREF: .rdata:000000014006FB34↑o
;   __except(1) // owned by 1406A44F8
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]

loc_1406A4530:                          ; CODE XREF: NtSetInformationProcess+1A56↑j
                jmp     short loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A4532:                          ; CODE XREF: NtSetInformationProcess+1A36↑j
                                        ; DATA XREF: .rdata:000000014006FB44↑o
;   __try { // __except at loc_1406A4549
                mov     eax, [rsp+548h+var_500]
                lea     rcx, [rax+rax*2]
                mov     rax, [rsp+548h+var_4B0]
                and     dword ptr [rax+rcx*8+10h], 0FFFFFFFEh
                jmp     short loc_1406A4593
;   } // starts at 1406A4532
; ---------------------------------------------------------------------------

loc_1406A4549:                          ; DATA XREF: .rdata:000000014006FB44↑o
;   __except(1) // owned by 1406A4532
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     esi, [rsp+548h+var_4FC]
                mov     r15, [rsp+548h+var_4F8]
                jmp     short loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A4561:                          ; DATA XREF: .rdata:000000014006FB14↑o
;   __except(1) // owned by 1406A441D
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]
                jmp     short loc_1406A4593
; ---------------------------------------------------------------------------

loc_1406A457B:                          ; DATA XREF: .rdata:000000014006FAA4↑o
                                        ; .rdata:000000014006FAB4↑o
;   __except(1) // owned by 1406A41CD
;   __except(1) // owned by 1406A4225
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax
                xor     r14d, r14d
                mov     r12, 7FFFFFFF0000h
                mov     r15, [rsp+548h+var_4F8]

loc_1406A4593:                          ; CODE XREF: NtSetInformationProcess+177F↑j
                                        ; NtSetInformationProcess+184B↑j ...
                mov     rcx, [rsp+548h+var_4D8]
                add     rcx, 4F8h
                call    sub_14024C380
                test    esi, esi
                js      short loc_1406A45B7

loc_1406A45A8:                          ; CODE XREF: NtSetInformationProcess+16E4↑j
                                        ; NtSetInformationProcess+16F8↑j
                mov     rdx, [rsp+548h+var_4D8]
                mov     rcx, [rsp+548h+var_508]
                jmp     loc_1406A4177
; ---------------------------------------------------------------------------

loc_1406A45B7:                          ; CODE XREF: NtSetInformationProcess+16CD↑j
                                        ; NtSetInformationProcess+16D7↑j ...
                mov     rbx, [rsp+548h+var_4D8]
                test    rbx, rbx
                jz      short loc_1406A45E0
                mov     rcx, rbx
                call    sub_1407229B0
                jmp     short loc_1406A45E0
; ---------------------------------------------------------------------------

loc_1406A45CB:                          ; CODE XREF: NtSetInformationProcess+1613↑j
                                        ; NtSetInformationProcess+164C↑j ...
                mov     esi, 0C000000Dh
                jmp     short loc_1406A45E0
; ---------------------------------------------------------------------------

loc_1406A45D2:                          ; CODE XREF: NtSetInformationProcess+15D2↑j
                                        ; NtSetInformationProcess+15DF↑j ...
                mov     esi, 0C0000004h
                jmp     short loc_1406A45E0
; ---------------------------------------------------------------------------

loc_1406A45D9:                          ; DATA XREF: .rdata:000000014006FA94↑o
;   __except(1) // owned by 1406A406E
                mov     esi, eax
                mov     r15, [rsp+548h+var_4F8]

loc_1406A45E0:                          ; CODE XREF: NtSetInformationProcess+1AFF↑j
                                        ; NtSetInformationProcess+1B09↑j ...
                lea     rax, [rsp+548h+var_1F8]
                cmp     r15, rax
                jz      loc_1406A2EA7
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4602:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movups  [rsp+548h+var_228], xmm0 ; jumptable 00000001406A2DD5 case 40
                movups  [rsp+548h+var_218], xmm0
                movups  [rsp+548h+var_208], xmm0
                lea     eax, [rdi-8]
                test    eax, 0FFFFFFF7h
                jnz     loc_1406A6CE6

loc_1406A4628:                          ; DATA XREF: .rdata:000000014006FB54↑o
;   __try { // __except at loc_1406A490E
                cmp     edi, 8
                jnz     short loc_1406A4642
                mov     qword ptr [rsp+548h+var_460], r14
                mov     rbx, [rbx]
                mov     qword ptr [rsp+548h+var_460+8], rbx
                jmp     short loc_1406A4655
; ---------------------------------------------------------------------------

loc_1406A4642:                          ; CODE XREF: NtSetInformationProcess+1B6B↑j
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_460], xmm0
                mov     rbx, qword ptr [rsp+548h+var_460+8]
;   } // starts at 1406A4628

loc_1406A4655:                          ; CODE XREF: NtSetInformationProcess+1B80↑j
                                        ; DATA XREF: .rdata:000000014006FB54↑o
                mov     rax, qword ptr [rsp+548h+var_460]
                shr     rax, 20h
                test    eax, eax
                jnz     loc_1406A6069
                cmp     dword ptr [rsp+548h+var_460], eax
                jz      short loc_1406A467C
                mov     eax, 0C0000058h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A467C:                          ; CODE XREF: NtSetInformationProcess+1BB0↑j
                mov     rax, rbx
                shl     rax, 10h
                sar     rax, 10h
                cmp     rbx, rax
                jnz     loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                call    PsGetCurrentProcess
                mov     rdi, rax
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                mov     rcx, [rsp+548h+var_508]
                test    al, al
                jnz     short loc_1406A46F1
                cmp     rcx, rdi
                jnz     loc_1406A2FF6

loc_1406A46F1:                          ; CODE XREF: NtSetInformationProcess+1C26↑j
                add     rcx, 458h
                call    sub_14024C840
                mov     rcx, [rsp+548h+var_508]
                test    al, al
                jnz     short loc_1406A471A
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, 0C000010Ah
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A471A:                          ; CODE XREF: NtSetInformationProcess+1C44↑j
                mov     rax, [rcx+580h]
                mov     edx, 14Ch
                test    rax, rax
                jz      short loc_1406A4744
                movzx   r8d, word ptr [rax+8]
                lea     eax, [rdx+78h]
                cmp     r8w, dx
                jz      short loc_1406A473F
                cmp     r8w, ax
                jnz     short loc_1406A4749

loc_1406A473F:                          ; CODE XREF: NtSetInformationProcess+1C77↑j
                mov     r9b, 1
                jmp     short loc_1406A474C
; ---------------------------------------------------------------------------

loc_1406A4744:                          ; CODE XREF: NtSetInformationProcess+1C69↑j
                mov     eax, 1C4h

loc_1406A4749:                          ; CODE XREF: NtSetInformationProcess+1C7D↑j
                xor     r9b, r9b

loc_1406A474C:                          ; CODE XREF: NtSetInformationProcess+1C82↑j
                mov     r8, [rdi+580h]
                test    r9b, r9b
                jnz     loc_1406A483C
                test    r8, r8
                jz      short loc_1406A477A
                movzx   r9d, word ptr [r8+8]
                cmp     r9w, dx
                jz      loc_1406A48F7
                cmp     r9w, ax
                jz      loc_1406A48F7

loc_1406A477A:                          ; CODE XREF: NtSetInformationProcess+1C9F↑j
                lea     rdx, [rsp+548h+var_228]
                call    KeStackAttachProcess
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1408D9558
                mov     esi, 0C000000Dh
                test    eax, eax
                cmovz   r14d, esi
                lea     rcx, [rsp+548h+var_228]
                call    KeUnstackDetachProcess
                mov     rcx, [rsp+548h+var_508]
                test    r14d, r14d
                js      loc_1406A48FD
                mov     r13, [rsp+548h+var_4F8]
                mov     rdx, r13
                call    sub_1402B7B00
                mov     rax, [rsp+548h+var_508]
                mov     [rax+3D8h], rbx
                mov     r8, [rsp+548h+var_508]
                lea     rax, [r8+5E0h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_1406A481B

loc_1406A47E4:                          ; CODE XREF: NtSetInformationProcess+1D59↓j
                test    rbx, rbx
                jz      short loc_1406A47F4
                lock bts dword ptr [rcx-4E8h], 19h
                jmp     short loc_1406A47FD
; ---------------------------------------------------------------------------

loc_1406A47F4:                          ; CODE XREF: NtSetInformationProcess+1D27↑j
                lock btr dword ptr [rcx-4E8h], 19h

loc_1406A47FD:                          ; CODE XREF: NtSetInformationProcess+1D32↑j
                mov     rcx, [rcx]
                mov     r8, [rsp+548h+var_508]
                lea     rax, [r8+5E0h]
                cmp     rcx, rax
                jz      short loc_1406A481B
                mov     rbx, qword ptr [rsp+548h+var_460+8]
                jmp     short loc_1406A47E4
; ---------------------------------------------------------------------------

loc_1406A481B:                          ; CODE XREF: NtSetInformationProcess+1D22↑j
                                        ; NtSetInformationProcess+1D4F↑j
                mov     rdx, r13
                mov     rcx, r8
                call    sub_14035DA58
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A483C:                          ; CODE XREF: NtSetInformationProcess+1C96↑j
                test    r8, r8
                jz      loc_1406A48F7
                movzx   r9d, word ptr [r8+8]
                cmp     r9w, dx
                jz      short loc_1406A485A
                cmp     r9w, ax
                jnz     loc_1406A48F7

loc_1406A485A:                          ; CODE XREF: NtSetInformationProcess+1D8E↑j
                lea     rdx, [rsp+548h+var_228]
                call    KeStackAttachProcess
                call    sub_1403F3108
                cmp     rbx, rax
                jb      short loc_1406A489A

loc_1406A4871:                          ; CODE XREF: NtSetInformationProcess+1DE9↓j
                mov     r14d, 0C000000Dh
                lea     rcx, [rsp+548h+var_228]
                call    KeUnstackDetachProcess
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A489A:                          ; CODE XREF: NtSetInformationProcess+1DAF↑j
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1408D9558
                test    eax, eax
                jz      short loc_1406A4871
                mov     rcx, r14
                mov     rax, [rsp+548h+var_508]
                mov     rdx, [rax+580h]
                test    rdx, rdx
                jz      short loc_1406A48C2
                mov     rcx, [rdx]

loc_1406A48C2:                          ; CODE XREF: NtSetInformationProcess+1DFD↑j
                                        ; DATA XREF: .rdata:000000014006FB64↑o
;   __try { // __except at loc_1406A48D1
                mov     eax, dword ptr [rsp+548h+var_460+8]
                mov     [rcx+488h], eax
                jmp     short loc_1406A48D4
;   } // starts at 1406A48C2
; ---------------------------------------------------------------------------

loc_1406A48D1:                          ; DATA XREF: .rdata:000000014006FB64↑o
;   __except(1) // owned by 1406A48C2
                mov     r14d, eax

loc_1406A48D4:                          ; CODE XREF: NtSetInformationProcess+1E0F↑j
                lea     rcx, [rsp+548h+var_228]
                call    KeUnstackDetachProcess
                mov     rcx, [rsp+548h+var_508]
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A48F7:                          ; CODE XREF: NtSetInformationProcess+1CAA↑j
                                        ; NtSetInformationProcess+1CB4↑j ...
                mov     r14d, 0C00000BBh

loc_1406A48FD:                          ; CODE XREF: NtSetInformationProcess+1CF1↑j
                add     rcx, 458h
                call    sub_14024C380
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A490E:                          ; DATA XREF: .rdata:000000014006FB54↑o
;   __except(1) // owned by 1406A4628
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4913:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                xor     eax, eax        ; jumptable 00000001406A2DD5 case 41
                movups  [rsp+548h+var_340], xmm0
                movups  [rsp+548h+var_330], xmm0
                mov     [rsp+548h+var_320], rax
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406A6069
                mov     rsi, r14
                cmp     edi, 28h ; '('
                jnz     short loc_1406A499E
                test    r15b, r15b
                jz      short loc_1406A497C

loc_1406A4944:                          ; DATA XREF: .rdata:000000014006FB74↑o
;   __try { // __except at loc_1406A4977
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_340], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  [rsp+548h+var_330], xmm1
                movsd   xmm0, qword ptr [rbx+20h]
                movsd   [rsp+548h+var_320], xmm0
;   } // starts at 1406A4944

loc_1406A4969:                          ; DATA XREF: .rdata:000000014006FB74↑o
                lea     rsi, [rbx+20h]
                lea     rbx, [rsp+548h+var_340]
                jmp     short loc_1406A497C
; ---------------------------------------------------------------------------

loc_1406A4977:                          ; DATA XREF: .rdata:000000014006FB74↑o
;   __except(1) // owned by 1406A4944
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A497C:                          ; CODE XREF: NtSetInformationProcess+1E82↑j
                                        ; NtSetInformationProcess+1EB5↑j
                mov     r9d, [rbx]
                cmp     r9d, 40h ; '@'
                ja      loc_1406A6069
                mov     ecx, [rbx+0Ch]
                or      ecx, [rbx+8]
                or      ecx, [rbx+4]
                jnz     loc_1406A6069
                add     rbx, 10h
                jmp     short loc_1406A49D9
; ---------------------------------------------------------------------------

loc_1406A499E:                          ; CODE XREF: NtSetInformationProcess+1E7D↑j
                cmp     edi, 18h
                jnz     loc_1406A6CE6
                mov     r9d, r14d
                test    r15b, r15b
                jz      short loc_1406A49D9

loc_1406A49AF:                          ; DATA XREF: .rdata:000000014006FB84↑o
;   __try { // __except at loc_1406A49D4
                mov     rax, [rbx]
                mov     qword ptr [rsp+548h+var_330], rax
                mov     rax, [rbx+8]
                mov     qword ptr [rsp+548h+var_330+8], rax
;   } // starts at 1406A49AF

loc_1406A49C6:                          ; DATA XREF: .rdata:000000014006FB84↑o
                lea     rsi, [rbx+10h]
                lea     rbx, [rsp+548h+var_330]
                jmp     short loc_1406A49D9
; ---------------------------------------------------------------------------

loc_1406A49D4:                          ; DATA XREF: .rdata:000000014006FB84↑o
;   __except(1) // owned by 1406A49AF
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A49D9:                          ; CODE XREF: NtSetInformationProcess+1EDC↑j
                                        ; NtSetInformationProcess+1EED↑j ...
                mov     rax, [rbx]
                test    rax, rax
                jz      loc_1406A6069
                mov     [rsp+548h+var_378], rax
                mov     [rbx+10h], r14
                mov     dword ptr [rsp+548h+var_528], r14d
                lea     r8, [rsp+548h+var_378]
                mov     rdx, [rbx+8]
                lea     rcx, [rbx+10h]
                call    sub_1406A25C4
                mov     ecx, eax
                test    eax, eax
                js      loc_1406A6EB5
                test    r15b, r15b
                jz      short loc_1406A4A25

loc_1406A4A1A:                          ; DATA XREF: .rdata:000000014006FB94↑o
;   __try { // __except at loc_1406A4A23
                mov     rax, [rbx+10h]
                mov     [rsi], rax
                jmp     short loc_1406A4A25
;   } // starts at 1406A4A1A
; ---------------------------------------------------------------------------

loc_1406A4A23:                          ; DATA XREF: .rdata:000000014006FB94↑o
;   __except(1) // owned by 1406A4A1A
                mov     ecx, eax

loc_1406A4A25:                          ; CODE XREF: NtSetInformationProcess+1F58↑j
                                        ; NtSetInformationProcess+1F61↑j
                mov     eax, ecx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4A2C:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     rsi, 0FFFFFFFFFFFFFFFFh ; jumptable 00000001406A2DD5 case 98
                jnz     loc_1406A6069
                cmp     r15b, 1
                jnz     loc_1406A4AC1
                cmp     edi, 20h ; ' '
                jnz     loc_1406A6CE6
                call    sub_1402B7B28
                test    al, al
                jz      loc_1406A658D   ; jumptable 00000001406A2DD5 case 83
                mov     rax, gs:188h
                mov     r8d, 100000h
                test    [rax+74h], r8d
                jz      loc_1406A658D   ; jumptable 00000001406A2DD5 case 83

loc_1406A4A6F:                          ; DATA XREF: .rdata:000000014006FBA4↑o
;   __try { // __except at loc_1406A4AAC
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_2C8], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  [rsp+548h+var_2B8], xmm1
;   } // starts at 1406A4A6F

loc_1406A4A86:                          ; DATA XREF: .rdata:000000014006FBA4↑o
                lea     r9, [rbx+18h]
                mov     r8d, dword ptr [rsp+548h+var_2B8]
                mov     rdx, qword ptr [rsp+548h+var_2C8+8]
                mov     rcx, qword ptr [rsp+548h+var_2C8]
                call    sub_14090BBF0
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4AAC:                          ; DATA XREF: .rdata:000000014006FBA4↑o
;   __except(1) // owned by 1406A4A6F
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4AB1:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     rsi, 0FFFFFFFFFFFFFFFFh ; jumptable 00000001406A2DD5 case 99
                jnz     loc_1406A6069
                cmp     r15b, 1
                jz      short loc_1406A4ACB

loc_1406A4AC1:                          ; CODE XREF: NtSetInformationProcess+1561↑j
                                        ; NtSetInformationProcess+1F7A↑j
                mov     eax, 0C0000001h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4ACB:                          ; CODE XREF: NtSetInformationProcess+1FFF↑j
                cmp     edi, 8
                jnz     loc_1406A6CE6
                call    sub_1402B7B28
                test    al, al
                jz      loc_1406A658D   ; jumptable 00000001406A2DD5 case 83
                mov     rax, gs:188h
                mov     r8d, 100000h
                test    [rax+74h], r8d
                jz      loc_1406A658D   ; jumptable 00000001406A2DD5 case 83

loc_1406A4AFA:                          ; DATA XREF: .rdata:000000014006FBB4↑o
;   __try { // __except at loc_1406A4B0F
                mov     rcx, [rbx]
                mov     [rsp+548h+var_280], rcx
;   } // starts at 1406A4AFA

loc_1406A4B05:                          ; DATA XREF: .rdata:000000014006FBB4↑o
                call    sub_14090B864
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4B0F:                          ; DATA XREF: .rdata:000000014006FBB4↑o
;   __except(1) // owned by 1406A4AFA
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4B14:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     rsi, 0FFFFFFFFFFFFFFFFh ; jumptable 00000001406A2DD5 case 45
                jnz     loc_1406A6069
                cmp     edi, 4
                jnz     loc_1406A6CE6

loc_1406A4B27:                          ; DATA XREF: .rdata:000000014006FBC4↑o
;   __try { // __except at loc_1406A4B4D
                mov     eax, [rbx]
                mov     [rsp+548h+var_444], eax
;   } // starts at 1406A4B27

loc_1406A4B30:                          ; DATA XREF: .rdata:000000014006FBC4↑o
                test    eax, 0FFFFFFFCh
                jnz     loc_1406A6069
                lea     rdx, [rsp+548h+var_444]
                call    sub_14077BC10
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4B4D:                          ; DATA XREF: .rdata:000000014006FBC4↑o
;   __except(1) // owned by 1406A4B27
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4B52:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 46
                jnz     loc_1406A6CE6

loc_1406A4B5B:                          ; DATA XREF: .rdata:000000014006FBD4↑o
;   __try { // __except at loc_1406A4BD1
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3B8], ebx
;   } // starts at 1406A4B5B

loc_1406A4B64:                          ; DATA XREF: .rdata:000000014006FBD4↑o
                test    ebx, 0FFFFFFFEh
                jnz     loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                test    bl, 1
                jz      short loc_1406A4BC1
                lock or dword ptr [rax+464h], 200000h
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A4BC1:                          ; CODE XREF: NtSetInformationProcess+20EF↑j
                lock and dword ptr [rax+464h], 0FFDFFFFFh
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A4BD1:                          ; DATA XREF: .rdata:000000014006FBD4↑o
;   __except(1) // owned by 1406A4B5B
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4BD6:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 48
                jnz     loc_1406A6CE6

loc_1406A4BDF:                          ; DATA XREF: .rdata:000000014006FBE4↑o
;   __try { // __except at loc_1406A4C43
                mov     edi, [rbx]
                mov     [rsp+548h+var_3B4], edi
;   } // starts at 1406A4BDF

loc_1406A4BE8:                          ; DATA XREF: .rdata:000000014006FBE4↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                call    PsReferencePrimaryToken
                mov     rbx, rax
                mov     edx, edi
                mov     rcx, rax
                call    sub_14071E06C
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A4C43:                          ; DATA XREF: .rdata:000000014006FBE4↑o
;   __except(1) // owned by 1406A4BDF
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4C48:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 49
                jnz     loc_1406A6CE6
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406A6069

loc_1406A4C5B:                          ; DATA XREF: .rdata:000000014006FBF4↑o
;   __try { // __except at loc_1406A4C86
                mov     rbx, [rbx]
                mov     [rsp+548h+var_278], rbx
;   } // starts at 1406A4C5B

loc_1406A4C66:                          ; DATA XREF: .rdata:000000014006FBF4↑o
                movzx   eax, bl
                and     al, 3
                cmp     al, 1
                jnz     loc_1406A6069
                call    PsGetCurrentProcess
                mov     [rax+548h], rbx
                xor     eax, eax
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4C86:                          ; DATA XREF: .rdata:000000014006FBF4↑o
;   __except(1) // owned by 1406A4C5B
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A4C8B:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 52
                jnz     loc_1406A6CE6

loc_1406A4C94:                          ; DATA XREF: .rdata:000000014006FC04↑o
;   __try { // __except at loc_1406A5BC3
                mov     rax, [rbx]
                mov     [rsp+548h+var_4F0], rax
;   } // starts at 1406A4C94

loc_1406A4C9C:                          ; DATA XREF: .rdata:000000014006FC04↑o
                mov     ebx, dword ptr [rsp+548h+var_4F0]
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406A4CAF
                cmp     ebx, 2
                jnz     loc_1406A6069

loc_1406A4CAF:                          ; CODE XREF: NtSetInformationProcess+21E4↑j
                call    PsGetCurrentProcess
                mov     r9, rax
                mov     [rsp+548h+var_508], rax
                dec     ebx             ; switch 16 cases
                cmp     ebx, 0Fh
                ja      def_1406A4CDB   ; jumptable 00000001406A4CDB default case, cases 5,11,12
                movsxd  rcx, ebx
                lea     rax, cs:140000000h
                mov     edx, ds:(jpt_1406A4CDB - 140000000h)[rax+rcx*4]
                add     rdx, rax
                jmp     rdx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406A4CE1:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 1
                test    ecx, 0FFFFFFF0h
                jz      short loc_1406A4CF7
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4CF7:                          ; CODE XREF: NtSetInformationProcess+222B↑j
                mov     edx, ecx
                shr     edx, 1
                and     edx, 1
                jnz     short loc_1406A4D0B
                mov     eax, [r9+9D0h]
                test    al, 10h
                jnz     short loc_1406A4D32

loc_1406A4D0B:                          ; CODE XREF: NtSetInformationProcess+223E↑j
                mov     r8d, ecx
                and     r8d, 1
                jnz     short loc_1406A4D1F
                mov     eax, [r9+9D0h]
                test    al, 40h
                jz      short loc_1406A4D32

loc_1406A4D1F:                          ; CODE XREF: NtSetInformationProcess+2252↑j
                shr     ecx, 3
                and     ecx, 1
                jnz     short loc_1406A4D3C
                mov     eax, [r9+9D0h]
                test    al, 8
                jz      short loc_1406A4D3C

loc_1406A4D32:                          ; CODE XREF: NtSetInformationProcess+2249↑j
                                        ; NtSetInformationProcess+225D↑j ...
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4D3C:                          ; CODE XREF: NtSetInformationProcess+2265↑j
                                        ; NtSetInformationProcess+2270↑j
                test    ecx, ecx
                jz      short loc_1406A4D4E
                test    edx, edx
                jnz     short loc_1406A4D52
                mov     esi, 0C0000030h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4D4E:                          ; CODE XREF: NtSetInformationProcess+227E↑j
                test    edx, edx
                jz      short loc_1406A4D60

loc_1406A4D52:                          ; CODE XREF: NtSetInformationProcess+2282↑j
                lock or dword ptr [r9+9D0h], 10h
                mov     r9, [rsp+548h+var_508]

loc_1406A4D60:                          ; CODE XREF: NtSetInformationProcess+2290↑j
                test    r8d, r8d
                jz      short loc_1406A4D73
                lock and dword ptr [r9+9D0h], 0FFFFFFBFh
                mov     r9, [rsp+548h+var_508]

loc_1406A4D73:                          ; CODE XREF: NtSetInformationProcess+22A3↑j
                test    ecx, ecx
                jz      short loc_1406A4D85
                lock or dword ptr [r9+9D0h], 8
                mov     r9, [rsp+548h+var_508]

loc_1406A4D85:                          ; CODE XREF: NtSetInformationProcess+22B5↑j
                mov     esi, r14d
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4D8D:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 3
                test    ecx, 0FFFFFFFCh
                jz      short loc_1406A4DA3
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4DA3:                          ; CODE XREF: NtSetInformationProcess+22D7↑j
                mov     eax, ecx
                shr     eax, 1
                and     eax, 1
                jnz     short loc_1406A4DBB
                test    cl, 1
                jz      short loc_1406A4DBB
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4DBB:                          ; CODE XREF: NtSetInformationProcess+22EA↑j
                                        ; NtSetInformationProcess+22EF↑j
                test    eax, eax
                jz      short loc_1406A4DCE
                test    cl, 1
                jnz     short loc_1406A4DCE
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4DCE:                          ; CODE XREF: NtSetInformationProcess+22FD↑j
                                        ; NtSetInformationProcess+2302↑j
                mov     rcx, r9
                call    sub_140639CB4
                test    rax, rax
                jnz     short loc_1406A4DEA
                mov     esi, 0C000010Ah

loc_1406A4DE0:                          ; CODE XREF: NtSetInformationProcess+24AE↓j
                                        ; NtSetInformationProcess+24D0↓j ...
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4DEA:                          ; CODE XREF: NtSetInformationProcess+2319↑j
                movzx   edx, byte ptr [rsp+548h+var_4F0+4]
                and     dl, 1
                mov     rcx, rax
                call    sub_14071A2FC
                mov     esi, 0C0000022h
                test    al, al
                cmovnz  esi, r14d
                mov     rcx, [rsp+548h+var_508]
                call    PsReleaseProcessExitSynchronization
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4E19:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 4
                test    ebx, 0FFFFFFF0h
                jz      short loc_1406A4E2F
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4E2F:                          ; CODE XREF: NtSetInformationProcess+2363↑j
                test    bl, 1
                jz      short loc_1406A4E40
                test    bl, 2
                jz      short loc_1406A4E40
                and     ebx, 0FFFFFFFDh
                mov     dword ptr [rsp+548h+var_4F0+4], ebx

loc_1406A4E40:                          ; CODE XREF: NtSetInformationProcess+2372↑j
                                        ; NtSetInformationProcess+2377↑j
                call    sub_14026CE60
                call    sub_1403F11AC
                test    eax, eax
                jz      short loc_1406A4E5F
                test    bl, 4
                jz      short loc_1406A4E5F
                test    bl, 8
                jz      short loc_1406A4E5F
                and     ebx, 0FFFFFFF7h
                mov     dword ptr [rsp+548h+var_4F0+4], ebx

loc_1406A4E5F:                          ; CODE XREF: NtSetInformationProcess+238C↑j
                                        ; NtSetInformationProcess+2391↑j ...
                mov     r15d, ebx
                and     r15d, 1
                jnz     short loc_1406A4E84
                mov     r9, [rsp+548h+var_508]
                test    dword ptr [r9+9D0h], 1000h
                jz      short loc_1406A4E84
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4E84:                          ; CODE XREF: NtSetInformationProcess+23A6↑j
                                        ; NtSetInformationProcess+23B8↑j
                call    sub_14026CE60
                call    sub_1403F11AC
                test    eax, eax
                jz      short loc_1406A4EB1
                test    bl, 4
                jnz     short loc_1406A4EB1
                mov     r9, [rsp+548h+var_508]
                mov     eax, [r9+0A30h]
                test    al, 2
                jz      short loc_1406A4EB6
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4EB1:                          ; CODE XREF: NtSetInformationProcess+23D0↑j
                                        ; NtSetInformationProcess+23D5↑j
                mov     r9, [rsp+548h+var_508]

loc_1406A4EB6:                          ; CODE XREF: NtSetInformationProcess+23E5↑j
                mov     edi, ebx
                shr     edi, 1
                and     edi, 1
                jnz     short loc_1406A4EDB
                test    r15d, r15d
                jnz     short loc_1406A4EDB
                test    dword ptr [r9+9D0h], 2000h
                jz      short loc_1406A4EDB
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4EDB:                          ; CODE XREF: NtSetInformationProcess+23FD↑j
                                        ; NtSetInformationProcess+2402↑j ...
                call    sub_14026CE60
                call    sub_1403F11AC
                test    eax, eax
                jz      short loc_1406A4F0D
                test    bl, 8
                jnz     short loc_1406A4F0D
                test    bl, 4
                jnz     short loc_1406A4F0D
                mov     r9, [rsp+548h+var_508]
                mov     eax, [r9+0A30h]
                test    al, 4
                jz      short loc_1406A4F12
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4F0D:                          ; CODE XREF: NtSetInformationProcess+2427↑j
                                        ; NtSetInformationProcess+242C↑j ...
                mov     r9, [rsp+548h+var_508]

loc_1406A4F12:                          ; CODE XREF: NtSetInformationProcess+2441↑j
                test    r15d, r15d
                jnz     short loc_1406A4F1B
                test    edi, edi
                jz      short loc_1406A4F38

loc_1406A4F1B:                          ; CODE XREF: NtSetInformationProcess+2455↑j
                mov     rcx, [rsp+548h+var_4F8]
                call    sub_140908F94
                mov     r9, [rsp+548h+var_508]
                test    al, al
                jz      short loc_1406A4F38
                mov     esi, 0C0000189h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4F38:                          ; CODE XREF: NtSetInformationProcess+2459↑j
                                        ; NtSetInformationProcess+246C↑j
                mov     esi, r14d
                test    r15d, r15d
                jz      short loc_1406A4F4E
                lock or dword ptr [r9+9D0h], 3000h
                jmp     short loc_1406A4F5E
; ---------------------------------------------------------------------------

loc_1406A4F4E:                          ; CODE XREF: NtSetInformationProcess+247E↑j
                test    edi, edi
                jz      short loc_1406A4F62
                lock or dword ptr [r9+9D0h], 2000h

loc_1406A4F5E:                          ; CODE XREF: NtSetInformationProcess+248C↑j
                mov     ebx, dword ptr [rsp+548h+var_4F0+4]

loc_1406A4F62:                          ; CODE XREF: NtSetInformationProcess+2490↑j
                call    sub_14026CE60
                call    sub_1403F11AC
                test    eax, eax
                jz      loc_1406A4DE0
                test    bl, 4
                jz      short loc_1406A4F8D
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+0A30h], 6
                mov     r9, [rsp+548h+var_508]
                jmp     short loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4F8D:                          ; CODE XREF: NtSetInformationProcess+24B7↑j
                test    bl, 8
                jz      loc_1406A4DE0
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+0A30h], 4
                mov     r9, [rsp+548h+var_508]
                jmp     short loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4FAA:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 2
                test    ebx, 0FFFFFFF0h
                jz      short loc_1406A4FBD
                mov     esi, 0C000000Dh
                jmp     short loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4FBD:                          ; CODE XREF: NtSetInformationProcess+24F4↑j
                test    bl, 1
                jz      short loc_1406A4FCA
                test    bl, 8
                jz      short loc_1406A4FCA
                and     ebx, 0FFFFFFF7h

loc_1406A4FCA:                          ; CODE XREF: NtSetInformationProcess+2500↑j
                                        ; NtSetInformationProcess+2505↑j
                mov     edi, ebx
                and     edi, 1
                jnz     short loc_1406A4FE2
                test    bl, 2
                jnz     short loc_1406A4FDB
                test    bl, 4
                jz      short loc_1406A4FE2

loc_1406A4FDB:                          ; CODE XREF: NtSetInformationProcess+2514↑j
                mov     esi, 0C000000Dh
                jmp     short loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A4FE2:                          ; CODE XREF: NtSetInformationProcess+250F↑j
                                        ; NtSetInformationProcess+2519↑j
                mov     edx, 2
                lea     ecx, [rdx+7]
                call    sub_140721C6C
                test    eax, eax
                jz      short loc_1406A501E
                mov     r9, [rsp+548h+var_508]

def_1406A4CDB:                          ; CODE XREF: NtSetInformationProcess+2201↑j
                                        ; NtSetInformationProcess+221B↑j
                                        ; DATA XREF: ...
                mov     esi, 0C00000BBh ; jumptable 00000001406A4CDB default case, cases 5,11,12

loc_1406A4FFD:                          ; CODE XREF: NtSetInformationProcess+2232↑j
                                        ; NtSetInformationProcess+2277↑j ...
                xor     r12b, r12b

loc_1406A5000:                          ; CODE XREF: NtSetInformationProcess+26BC↓j
                                        ; NtSetInformationProcess+26DF↓j ...
                cmp     r12b, 1
                jnz     loc_1406A2EA7
                mov     rcx, r9
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A501E:                          ; CODE XREF: NtSetInformationProcess+2531↑j
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jz      loc_1406A5181
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A4DE0
                mov     r12b, 1
                call    PsGetCurrentProcess
                mov     r9, [rsp+548h+var_508]
                cmp     r9, rax
                jz      loc_1406A5189
                mov     eax, [r9+9D0h]
                bt      eax, 8
                jnb     loc_1406A5163
                xorps   xmm0, xmm0
                movups  [rsp+548h+var_2A8], xmm0
                movups  [rsp+548h+var_298], xmm0
                lea     r8, [rsp+548h+var_2A8]
                mov     rdx, r9
                xor     ecx, ecx
                call    SeCaptureSubjectContextEx
                movzx   edx, r12b
                lea     rcx, [rsp+548h+var_2A8]
                call    RtlIsSandboxedToken
                movzx   esi, al
                lea     rcx, [rsp+548h+var_2A8]
                call    SeReleaseSubjectContext
                movzx   edx, r15b
                xor     ecx, ecx
                call    RtlIsSandboxedToken
                test    al, al
                jnz     short loc_1406A50F4
                test    sil, sil
                jz      short loc_1406A50F4
                mov     r9, [rsp+548h+var_508]
                test    dword ptr [r9+9D0h], 400h
                jnz     short loc_1406A510D

loc_1406A50F4:                          ; CODE XREF: NtSetInformationProcess+261B↑j
                                        ; NtSetInformationProcess+2620↑j
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                mov     r9, [rsp+548h+var_508]
                test    al, al
                jz      short loc_1406A5177

loc_1406A510D:                          ; CODE XREF: NtSetInformationProcess+2632↑j
                                        ; NtSetInformationProcess+26A6↓j ...
                mov     r10d, 800h

loc_1406A5113:                          ; CODE XREF: NtSetInformationProcess+26B5↓j
                mov     r8d, r14d
                mov     r11d, 900h
                test    edi, edi
                cmovz   r8d, r11d
                neg     edi
                sbb     ecx, ecx
                and     ecx, r11d
                mov     eax, ebx
                mov     edx, ecx
                or      edx, r10d
                and     al, 8
                cmovz   edx, ecx
                mov     ecx, ebx
                shr     ecx, 1
                mov     eax, r8d
                bts     eax, 9
                and     ecx, 1
                cmovz   r8d, eax
                mov     eax, edx
                bts     eax, 9
                test    ecx, ecx
                cmovz   eax, edx
                shr     ebx, 2
                mov     edx, eax
                bts     edx, 0Ah
                and     ebx, 1
                jmp     loc_1406A5251
; ---------------------------------------------------------------------------

loc_1406A5163:                          ; CODE XREF: NtSetInformationProcess+25C2↑j
                test    bl, 8
                jnz     short loc_1406A510D
                test    edi, edi
                jnz     short loc_1406A510D
                mov     r10d, 800h
                test    r10d, eax
                jz      short loc_1406A5113

loc_1406A5177:                          ; CODE XREF: NtSetInformationProcess+264B↑j
                mov     esi, 0C0000022h
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A5181:                          ; CODE XREF: NtSetInformationProcess+2562↑j
                mov     r9, [rsp+548h+var_508]
                xor     r12b, r12b

loc_1406A5189:                          ; CODE XREF: NtSetInformationProcess+25B1↑j
                test    edi, edi
                jnz     short loc_1406A51A4
                test    dword ptr [r9+9D0h], 100h
                jz      short loc_1406A51A4
                mov     esi, 0C0000022h
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A51A4:                          ; CODE XREF: NtSetInformationProcess+26CB↑j
                                        ; NtSetInformationProcess+26D8↑j
                mov     edx, ebx
                shr     edx, 3
                and     edx, 1
                jnz     short loc_1406A51CB
                test    edi, edi
                jnz     short loc_1406A51CB
                mov     r10d, 800h
                test    [r9+9D0h], r10d
                jz      short loc_1406A51D1
                mov     esi, 0C0000022h
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A51CB:                          ; CODE XREF: NtSetInformationProcess+26EC↑j
                                        ; NtSetInformationProcess+26F0↑j
                mov     r10d, 800h

loc_1406A51D1:                          ; CODE XREF: NtSetInformationProcess+26FF↑j
                mov     ecx, ebx
                shr     ecx, 1
                and     ecx, 1
                jz      short loc_1406A51F7
                mov     eax, [r9+9D0h]
                bt      eax, 8
                jnb     short loc_1406A51F7
                bt      eax, 9
                jb      short loc_1406A51F7
                mov     esi, 0C0000022h
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A51F7:                          ; CODE XREF: NtSetInformationProcess+2718↑j
                                        ; NtSetInformationProcess+2725↑j ...
                shr     ebx, 2
                and     ebx, 1
                jz      short loc_1406A521C
                mov     eax, [r9+9D0h]
                bt      eax, 8
                jnb     short loc_1406A521C
                bt      eax, 0Ah
                jb      short loc_1406A521C
                mov     esi, 0C0000022h
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A521C:                          ; CODE XREF: NtSetInformationProcess+273D↑j
                                        ; NtSetInformationProcess+274A↑j ...
                test    edi, edi
                jz      short loc_1406A5228
                mov     r11d, 900h
                jmp     short loc_1406A5231
; ---------------------------------------------------------------------------

loc_1406A5228:                          ; CODE XREF: NtSetInformationProcess+275E↑j
                mov     r11d, r14d
                test    edx, edx
                cmovnz  r11d, r10d

loc_1406A5231:                          ; CODE XREF: NtSetInformationProcess+2766↑j
                mov     r8d, ecx
                xor     r8d, 1
                shl     r8d, 9
                mov     eax, r11d
                bts     eax, 9
                test    ecx, ecx
                cmovz   eax, r11d
                mov     edx, eax
                bts     edx, 0Ah
                test    ebx, ebx

loc_1406A5251:                          ; CODE XREF: NtSetInformationProcess+269E↑j
                cmovz   edx, eax
                mov     eax, r8d
                bts     eax, 0Ah
                test    ebx, ebx
                cmovz   r8d, eax
                lea     rcx, [r9+9D0h]
                call    sub_1402B9B40
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A5000
; ---------------------------------------------------------------------------

loc_1406A527A:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 6
                test    ecx, 0FFFFFFFEh
                jz      short loc_1406A5290
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5290:                          ; CODE XREF: NtSetInformationProcess+27C4↑j
                and     ecx, 1
                jnz     short loc_1406A52AA
                mov     eax, [r9+9D0h]
                test    al, al
                jns     short loc_1406A52AA
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A52AA:                          ; CODE XREF: NtSetInformationProcess+27D3↑j
                                        ; NtSetInformationProcess+27DE↑j
                mov     esi, r14d
                test    ecx, ecx
                jz      loc_1406A4FFD
                lock or dword ptr [r9+9D0h], 80h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A52CB:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 7
                test    ecx, 0FFFFFFF8h
                jz      short loc_1406A52E1
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A52E1:                          ; CODE XREF: NtSetInformationProcess+2815↑j
                mov     eax, [r9+9D0h]
                test    al, 1
                jnz     short loc_1406A52F6
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A52F6:                          ; CODE XREF: NtSetInformationProcess+282A↑j
                test    cl, 4
                jnz     short loc_1406A5305
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5305:                          ; CODE XREF: NtSetInformationProcess+2839↑j
                lock or dword ptr [r9+9D0h], 4
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A531B:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 8
                test    ebx, 0FFFFFFE0h
                jz      short loc_1406A5331
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5331:                          ; CODE XREF: NtSetInformationProcess+2865↑j
                test    bl, 1
                jz      short loc_1406A5343
                test    bl, 8
                jnz     short loc_1406A5340
                test    bl, 10h
                jz      short loc_1406A5343

loc_1406A5340:                          ; CODE XREF: NtSetInformationProcess+2879↑j
                and     ebx, 0FFFFFFE7h

loc_1406A5343:                          ; CODE XREF: NtSetInformationProcess+2874↑j
                                        ; NtSetInformationProcess+287E↑j
                test    bl, 2
                jz      short loc_1406A5350
                test    bl, 10h
                jz      short loc_1406A5350
                and     ebx, 0FFFFFFEFh

loc_1406A5350:                          ; CODE XREF: NtSetInformationProcess+2886↑j
                                        ; NtSetInformationProcess+288B↑j
                mov     r12d, ebx
                shr     r12d, 3
                and     r12d, 1
                jz      short loc_1406A536C
                test    bl, 10h
                jz      short loc_1406A536C
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A536C:                          ; CODE XREF: NtSetInformationProcess+289B↑j
                                        ; NtSetInformationProcess+28A0↑j
                mov     edi, ebx
                shr     edi, 1
                and     edi, 1
                mov     r15d, ebx
                and     r15d, 1
                lea     eax, [r15+rdi]
                cmp     eax, 1
                jbe     short loc_1406A538D
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A538D:                          ; CODE XREF: NtSetInformationProcess+28C1↑j
                test    r15d, r15d
                jnz     short loc_1406A53F7
                cmp     byte ptr [r9+878h], 8
                jb      short loc_1406A53B0
                cmp     byte ptr [r9+879h], 8
                jb      short loc_1406A53B0
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A53B0:                          ; CODE XREF: NtSetInformationProcess+28DA↑j
                                        ; NtSetInformationProcess+28E4↑j
                test    r15d, r15d
                jnz     short loc_1406A53F7
                test    edi, edi
                jnz     short loc_1406A53F7
                mov     dl, 6
                movzx   ecx, byte ptr [r9+878h]
                call    SeCompareSigningLevels
                test    eax, eax
                jz      short loc_1406A53F2
                mov     dl, 6
                mov     rax, [rsp+548h+var_508]
                movzx   ecx, byte ptr [rax+879h]
                call    SeCompareSigningLevels
                test    eax, eax
                jz      short loc_1406A53F2
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A53F2:                          ; CODE XREF: NtSetInformationProcess+290A↑j
                                        ; NtSetInformationProcess+2921↑j
                mov     r9, [rsp+548h+var_508]

loc_1406A53F7:                          ; CODE XREF: NtSetInformationProcess+28D0↑j
                                        ; NtSetInformationProcess+28F3↑j ...
                test    dword ptr [r9+9D0h], 3000000h
                jz      short loc_1406A5421
                test    bl, 10h
                jnz     short loc_1406A5421
                test    edi, edi
                jnz     short loc_1406A5421
                test    r12d, r12d
                jnz     short loc_1406A5421
                test    r15d, r15d
                jnz     short loc_1406A5421
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5421:                          ; CODE XREF: NtSetInformationProcess+2942↑j
                                        ; NtSetInformationProcess+2947↑j ...
                mov     esi, r14d
                test    r15d, r15d
                jz      short loc_1406A5454
                cmp     byte ptr [r9+878h], 8
                jnb     short loc_1406A5440
                mov     byte ptr [r9+878h], 8
                mov     r9, [rsp+548h+var_508]

loc_1406A5440:                          ; CODE XREF: NtSetInformationProcess+2971↑j
                cmp     byte ptr [r9+879h], 8
                jnb     short loc_1406A54A2
                mov     byte ptr [r9+879h], 8
                jmp     short loc_1406A549D
; ---------------------------------------------------------------------------

loc_1406A5454:                          ; CODE XREF: NtSetInformationProcess+2967↑j
                test    edi, edi
                jz      short loc_1406A54A2
                mov     dl, 6
                movzx   ecx, byte ptr [r9+878h]
                call    SeCompareSigningLevels
                test    eax, eax
                jnz     short loc_1406A547A
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A547A:                          ; CODE XREF: NtSetInformationProcess+29A9↑j
                mov     rax, [rsp+548h+var_508]
                movzx   edx, byte ptr [rax+879h]
                mov     cl, 6
                call    SeCompareSigningLevels
                test    eax, eax
                jz      short loc_1406A549D
                mov     rax, [rsp+548h+var_508]
                mov     byte ptr [rax+879h], 6

loc_1406A549D:                          ; CODE XREF: NtSetInformationProcess+2992↑j
                                        ; NtSetInformationProcess+29CF↑j
                mov     r9, [rsp+548h+var_508]

loc_1406A54A2:                          ; CODE XREF: NtSetInformationProcess+2988↑j
                                        ; NtSetInformationProcess+2996↑j
                mov     r10d, 800000h
                test    ebx, ebx
                cmovnz  r14d, r10d
                mov     r8d, r12d
                xor     r8d, 1
                shl     r8d, 18h
                mov     ecx, r14d
                bts     ecx, 18h
                test    r12d, r12d
                cmovz   ecx, r14d
                shr     ebx, 4
                mov     eax, r8d
                bts     eax, 19h
                and     ebx, 1
                cmovz   r8d, eax
                mov     edx, ecx
                bts     edx, 19h
                test    ebx, ebx
                cmovz   edx, ecx
                lea     rcx, [r9+9D0h]
                call    sub_1402B9B40
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A54F9:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     edx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 9
                test    edx, 0FFFFFFFCh
                jz      short loc_1406A550F
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A550F:                          ; CODE XREF: NtSetInformationProcess+2A43↑j
                mov     ecx, edx
                and     ecx, 1
                jnz     short loc_1406A552D
                test    dword ptr [r9+9D0h], 10000h
                jz      short loc_1406A552D
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A552D:                          ; CODE XREF: NtSetInformationProcess+2A54↑j
                                        ; NtSetInformationProcess+2A61↑j
                test    ecx, ecx
                jnz     short loc_1406A554D
                test    dl, 2
                jnz     short loc_1406A554D
                test    dword ptr [r9+9D0h], 20000h
                jz      short loc_1406A554D
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A554D:                          ; CODE XREF: NtSetInformationProcess+2A6F↑j
                                        ; NtSetInformationProcess+2A74↑j ...
                mov     esi, r14d
                test    ecx, ecx
                jz      short loc_1406A5575
                lea     rcx, [r9+9D0h]
                mov     edx, 10000h
                mov     r8d, 20000h
                call    sub_1402B9B40
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5575:                          ; CODE XREF: NtSetInformationProcess+2A92↑j
                test    dl, 2
                jz      loc_1406A4FFD
                lea     rcx, [r9+9D0h]
                mov     edx, 20000h
                mov     r8d, 10000h
                call    sub_1402B9B40
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A559F:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 10
                test    ecx, 0FFFFFFE0h
                jz      short loc_1406A55B5
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A55B5:                          ; CODE XREF: NtSetInformationProcess+2AE9↑j
                test    cl, 1
                jz      short loc_1406A55C2
                test    cl, 8
                jz      short loc_1406A55C2
                and     ecx, 0FFFFFFF7h

loc_1406A55C2:                          ; CODE XREF: NtSetInformationProcess+2AF8↑j
                                        ; NtSetInformationProcess+2AFD↑j
                test    cl, 2
                jz      short loc_1406A55CF
                test    cl, 10h
                jz      short loc_1406A55CF
                and     ecx, 0FFFFFFEFh

loc_1406A55CF:                          ; CODE XREF: NtSetInformationProcess+2B05↑j
                                        ; NtSetInformationProcess+2B0A↑j
                mov     edi, ecx
                and     edi, 1
                mov     r10d, 80000h
                jnz     short loc_1406A55E9
                test    [r9+9D0h], r10d
                jnz     loc_1406A4D32

loc_1406A55E9:                          ; CODE XREF: NtSetInformationProcess+2B1A↑j
                mov     edx, ecx
                shr     edx, 1
                and     edx, 1
                jnz     short loc_1406A5603
                test    dword ptr [r9+9D0h], 200000h
                jnz     loc_1406A4D32

loc_1406A5603:                          ; CODE XREF: NtSetInformationProcess+2B30↑j
                mov     ebx, ecx
                shr     ebx, 2
                and     ebx, 1
                jnz     short loc_1406A5624
                test    dword ptr [r9+9D0h], 40000h
                jz      short loc_1406A5624
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5624:                          ; CODE XREF: NtSetInformationProcess+2B4B↑j
                                        ; NtSetInformationProcess+2B58↑j
                mov     r11d, ecx
                shr     r11d, 3
                and     r11d, 1
                jnz     short loc_1406A564A
                test    edi, edi
                jnz     short loc_1406A564A
                mov     r8d, 100000h
                test    [r9+9D0h], r8d
                jnz     loc_1406A4D32
                jmp     short loc_1406A5650
; ---------------------------------------------------------------------------

loc_1406A564A:                          ; CODE XREF: NtSetInformationProcess+2B6F↑j
                                        ; NtSetInformationProcess+2B73↑j
                mov     r8d, 100000h

loc_1406A5650:                          ; CODE XREF: NtSetInformationProcess+2B88↑j
                shr     ecx, 4
                and     ecx, 1
                jnz     short loc_1406A5673
                test    edx, edx
                jnz     short loc_1406A5673
                test    dword ptr [r9+9D0h], 400000h
                jz      short loc_1406A5673
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5673:                          ; CODE XREF: NtSetInformationProcess+2B96↑j
                                        ; NtSetInformationProcess+2B9A↑j ...
                mov     eax, r14d
                test    edi, edi
                jz      short loc_1406A567F
                mov     eax, r8d
                jmp     short loc_1406A5689
; ---------------------------------------------------------------------------

loc_1406A567F:                          ; CODE XREF: NtSetInformationProcess+2BB8↑j
                mov     r10d, r14d
                test    r11d, r11d
                cmovnz  r10d, r8d

loc_1406A5689:                          ; CODE XREF: NtSetInformationProcess+2BBD↑j
                test    edx, edx
                jz      short loc_1406A5698
                bts     r10d, 15h
                bts     eax, 16h
                jmp     short loc_1406A56A1
; ---------------------------------------------------------------------------

loc_1406A5698:                          ; CODE XREF: NtSetInformationProcess+2BCB↑j
                test    ecx, ecx
                jz      short loc_1406A56A1
                bts     r10d, 16h

loc_1406A56A1:                          ; CODE XREF: NtSetInformationProcess+2BD6↑j
                                        ; NtSetInformationProcess+2BDA↑j
                mov     edx, r10d
                bts     edx, 12h
                test    ebx, ebx
                cmovz   edx, r10d
                lea     rcx, [r9+9D0h]
                mov     r8d, eax
                call    sub_1402B9B40
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A56CA:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 13
                test    ebx, 0FFFFFFF8h
                jz      short loc_1406A56E0
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A56E0:                          ; CODE XREF: NtSetInformationProcess+2C14↑j
                mov     eax, ebx
                and     eax, 1
                jnz     short loc_1406A56F6
                test    bl, 4
                jz      short loc_1406A56F6
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A56F6:                          ; CODE XREF: NtSetInformationProcess+2C25↑j
                                        ; NtSetInformationProcess+2C2A↑j
                test    eax, eax
                jz      short loc_1406A5702
                test    bl, 2
                jz      short loc_1406A5702
                and     ebx, 0FFFFFFFDh

loc_1406A5702:                          ; CODE XREF: NtSetInformationProcess+2C38↑j
                                        ; NtSetInformationProcess+2C3D↑j
                mov     rcx, r9
                call    sub_140721BF8
                mov     r8d, eax
                mov     edx, ebx
                and     edx, 1
                jnz     short loc_1406A572B
                lea     ecx, [rax-1]
                cmp     ecx, 1
                ja      short loc_1406A572B
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A572B:                          ; CODE XREF: NtSetInformationProcess+2C52↑j
                                        ; NtSetInformationProcess+2C5A↑j
                mov     eax, ebx
                shr     eax, 2
                and     eax, 1
                jz      short loc_1406A574A
                cmp     r8d, 1
                jnz     short loc_1406A574A
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A574A:                          ; CODE XREF: NtSetInformationProcess+2C73↑j
                                        ; NtSetInformationProcess+2C79↑j
                shr     ebx, 1
                and     ebx, 1
                jnz     short loc_1406A576A
                test    edx, edx
                jnz     short loc_1406A576E
                cmp     r8d, 3
                jnz     short loc_1406A576A
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A576A:                          ; CODE XREF: NtSetInformationProcess+2C8F↑j
                                        ; NtSetInformationProcess+2C99↑j
                test    edx, edx
                jz      short loc_1406A57A5

loc_1406A576E:                          ; CODE XREF: NtSetInformationProcess+2C93↑j
                mov     rcx, [rsp+548h+var_508]
                test    eax, eax
                jz      short loc_1406A578E
                mov     edx, 2
                call    sub_14071F188
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A578E:                          ; CODE XREF: NtSetInformationProcess+2CB5↑j
                mov     edx, 1
                call    sub_14071F188
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A57A5:                          ; CODE XREF: NtSetInformationProcess+2CAC↑j
                test    ebx, ebx
                jz      short loc_1406A57B8
                mov     edx, 3
                mov     rcx, [rsp+548h+var_508]
                call    sub_14071F188

loc_1406A57B8:                          ; CODE XREF: NtSetInformationProcess+2CE7↑j
                                        ; NtSetInformationProcess+2D77↓j
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A57C5:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 16
                test    ebx, 0FFFFFFFCh
                jz      short loc_1406A57DB
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A57DB:                          ; CODE XREF: NtSetInformationProcess+2D0F↑j
                test    bl, 1
                jz      short loc_1406A57E8
                test    bl, 2
                jz      short loc_1406A57E8
                and     ebx, 0FFFFFFFDh

loc_1406A57E8:                          ; CODE XREF: NtSetInformationProcess+2D1E↑j
                                        ; NtSetInformationProcess+2D23↑j
                mov     rcx, r9
                call    sub_1405CED18
                mov     ecx, ebx
                and     ecx, 1
                jnz     short loc_1406A580B
                cmp     eax, 1
                jnz     short loc_1406A580B
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A580B:                          ; CODE XREF: NtSetInformationProcess+2D35↑j
                                        ; NtSetInformationProcess+2D3A↑j
                shr     ebx, 1
                and     ebx, 1
                jnz     short loc_1406A582A
                test    ecx, ecx
                jnz     short loc_1406A582E
                cmp     eax, 2
                jnz     short loc_1406A582A
                mov     esi, 0C0000022h
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A582A:                          ; CODE XREF: NtSetInformationProcess+2D50↑j
                                        ; NtSetInformationProcess+2D59↑j
                test    ecx, ecx
                jz      short loc_1406A5835

loc_1406A582E:                          ; CODE XREF: NtSetInformationProcess+2D54↑j
                mov     edx, 1
                jmp     short loc_1406A5842
; ---------------------------------------------------------------------------

loc_1406A5835:                          ; CODE XREF: NtSetInformationProcess+2D6C↑j
                test    ebx, ebx
                jz      loc_1406A57B8
                mov     edx, 2

loc_1406A5842:                          ; CODE XREF: NtSetInformationProcess+2D73↑j
                mov     rcx, [rsp+548h+var_508]
                call    sub_1405CED84
                mov     esi, r14d
                mov     r9, [rsp+548h+var_508]
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5859:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ebx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 14
                test    ebx, 0FFFFFFF0h
                jz      short loc_1406A586F
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A586F:                          ; CODE XREF: NtSetInformationProcess+2DA3↑j
                mov     edx, ebx
                and     edx, 1
                jnz     short loc_1406A5887
                test    dword ptr [r9+9D0h], 40000000h
                jnz     loc_1406A4D32

loc_1406A5887:                          ; CODE XREF: NtSetInformationProcess+2DB4↑j
                mov     ecx, ebx
                shr     ecx, 1
                and     ecx, 1
                jnz     short loc_1406A589D
                cmp     [r9+9D0h], ecx
                jl      loc_1406A4D32

loc_1406A589D:                          ; CODE XREF: NtSetInformationProcess+2DCE↑j
                mov     edi, ebx
                shr     edi, 3
                and     edi, 1
                jnz     short loc_1406A58B8
                test    dword ptr [r9+9D4h], 2000h
                jnz     loc_1406A4D32

loc_1406A58B8:                          ; CODE XREF: NtSetInformationProcess+2DE5↑j
                shr     ebx, 2
                and     ebx, 1
                jnz     short loc_1406A58D7
                test    dword ptr [r9+9D4h], 1000h
                jz      short loc_1406A58D7
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A58D7:                          ; CODE XREF: NtSetInformationProcess+2DFE↑j
                                        ; NtSetInformationProcess+2E0B↑j
                test    edx, edx
                jz      short loc_1406A58EC
                lock or dword ptr [r9+9D0h], 40000000h
                mov     r9, [rsp+548h+var_508]

loc_1406A58EC:                          ; CODE XREF: NtSetInformationProcess+2E19↑j
                test    ecx, ecx
                jz      short loc_1406A593C
                lock or dword ptr [r9+9D0h], 80000000h
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+87Ch], 200000h
                mov     edx, 1
                lock xadd cs:qword_140C11438, rdx
                inc     rdx
                mov     r8d, 1
                mov     rcx, [rsp+548h+var_508]
                call    sub_1402B5A80
                mov     rcx, [rsp+548h+var_508]
                call    sub_14034F50C
                mov     r9, [rsp+548h+var_508]

loc_1406A593C:                          ; CODE XREF: NtSetInformationProcess+2E2E↑j
                test    ebx, ebx
                jz      short loc_1406A5951
                lock or dword ptr [r9+9D4h], 1000h
                mov     r9, [rsp+548h+var_508]

loc_1406A5951:                          ; CODE XREF: NtSetInformationProcess+2E7E↑j
                test    edi, edi
                jz      short loc_1406A5966
                lock or dword ptr [r9+9D4h], 2000h
                mov     r9, [rsp+548h+var_508]

loc_1406A5966:                          ; CODE XREF: NtSetInformationProcess+2E93↑j
                mov     esi, r14d
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A596E:                          ; CODE XREF: NtSetInformationProcess+221B↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A4CDB↓o
                mov     ecx, dword ptr [rsp+548h+var_4F0+4] ; jumptable 00000001406A4CDB case 15
                test    ecx, 0FFFFFC00h
                jz      short loc_1406A5984
                mov     esi, 0C000000Dh
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5984:                          ; CODE XREF: NtSetInformationProcess+2EB8↑j
                test    cl, 10h
                jz      short loc_1406A5990
                or      ecx, 1
                mov     dword ptr [rsp+548h+var_4F0+4], ecx

loc_1406A5990:                          ; CODE XREF: NtSetInformationProcess+2EC7↑j
                bt      ecx, 9
                jnb     short loc_1406A599D
                or      ecx, 4
                mov     dword ptr [rsp+548h+var_4F0+4], ecx

loc_1406A599D:                          ; CODE XREF: NtSetInformationProcess+2ED4↑j
                test    cl, 40h
                jz      short loc_1406A59A9
                or      ecx, 20h
                mov     dword ptr [rsp+548h+var_4F0+4], ecx

loc_1406A59A9:                          ; CODE XREF: NtSetInformationProcess+2EE0↑j
                mov     r11d, ecx
                shr     r11d, 4
                and     r11d, 1
                mov     r8d, 100000h
                jnz     short loc_1406A59C9
                test    [r9+9D4h], r8d
                jnz     loc_1406A4D32

loc_1406A59C9:                          ; CODE XREF: NtSetInformationProcess+2EFA↑j
                mov     edx, ecx
                and     edx, 1
                jnz     short loc_1406A59E1
                test    dword ptr [r9+9D4h], 4000h
                jnz     loc_1406A4D32

loc_1406A59E1:                          ; CODE XREF: NtSetInformationProcess+2F0E↑j
                test    edx, edx
                jz      short loc_1406A59FC
                test    dword ptr [r9+9D4h], 4000h
                jnz     short loc_1406A59FC
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A59FC:                          ; CODE XREF: NtSetInformationProcess+2F23↑j
                                        ; NtSetInformationProcess+2F30↑j
                mov     ebx, ecx
                shr     ebx, 9
                and     ebx, 1
                jz      short loc_1406A5A14
                cmp     dword ptr [r9+9D4h], 0
                jge     loc_1406A4D32

loc_1406A5A14:                          ; CODE XREF: NtSetInformationProcess+2F44↑j
                mov     edx, ecx
                shr     edx, 2
                and     edx, 1
                jnz     short loc_1406A5A2F
                test    dword ptr [r9+9D4h], 20000h
                jnz     loc_1406A4D32

loc_1406A5A2F:                          ; CODE XREF: NtSetInformationProcess+2F5C↑j
                test    edx, edx
                jz      short loc_1406A5A4A
                test    dword ptr [r9+9D4h], 20000h
                jnz     short loc_1406A5A4A
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5A4A:                          ; CODE XREF: NtSetInformationProcess+2F71↑j
                                        ; NtSetInformationProcess+2F7E↑j
                mov     edi, ecx
                shr     edi, 6
                and     edi, 1
                jnz     short loc_1406A5A65
                test    dword ptr [r9+9D4h], 400000h
                jnz     loc_1406A4D32

loc_1406A5A65:                          ; CODE XREF: NtSetInformationProcess+2F92↑j
                mov     esi, ecx
                shr     esi, 5
                and     esi, 1
                jnz     short loc_1406A5A86
                test    dword ptr [r9+9D4h], 200000h
                jz      short loc_1406A5A86
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5A86:                          ; CODE XREF: NtSetInformationProcess+2FAD↑j
                                        ; NtSetInformationProcess+2FBA↑j
                mov     r15d, ecx
                shr     r15d, 8
                and     r15d, 1
                jnz     short loc_1406A5AAA
                test    dword ptr [r9+9D4h], 40000000h
                jz      short loc_1406A5AAA
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5AAA:                          ; CODE XREF: NtSetInformationProcess+2FD1↑j
                                        ; NtSetInformationProcess+2FDE↑j
                mov     r10d, ecx
                shr     r10d, 1
                and     r10d, 1
                jnz     short loc_1406A5AC7
                test    dword ptr [r9+9D4h], 8000h
                jnz     loc_1406A4D32

loc_1406A5AC7:                          ; CODE XREF: NtSetInformationProcess+2FF4↑j
                test    r10d, r10d
                jz      short loc_1406A5ADD
                test    dword ptr [r9+9D4h], 8000h
                jz      loc_1406A4D32

loc_1406A5ADD:                          ; CODE XREF: NtSetInformationProcess+300A↑j
                mov     r10d, ecx
                shr     r10d, 3
                and     r10d, 1
                jnz     short loc_1406A5AFB
                test    dword ptr [r9+9D4h], 40000h
                jnz     loc_1406A4D32

loc_1406A5AFB:                          ; CODE XREF: NtSetInformationProcess+3028↑j
                test    r10d, r10d
                jz      short loc_1406A5B11
                test    dword ptr [r9+9D4h], 40000h
                jz      loc_1406A4D32

loc_1406A5B11:                          ; CODE XREF: NtSetInformationProcess+303E↑j
                shr     ecx, 7
                and     ecx, 1
                mov     r10d, 800000h
                jnz     short loc_1406A5B2C
                test    [r9+9D4h], r10d
                jnz     loc_1406A4D32

loc_1406A5B2C:                          ; CODE XREF: NtSetInformationProcess+305D↑j
                test    ecx, ecx
                jz      short loc_1406A5B43
                test    [r9+9D4h], r10d
                jnz     short loc_1406A5B43
                mov     esi, 0C0000022h
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5B43:                          ; CODE XREF: NtSetInformationProcess+306E↑j
                                        ; NtSetInformationProcess+3077↑j
                test    r11d, r11d
                jz      short loc_1406A5B55
                lock or [r9+9D4h], r8d
                mov     r9, [rsp+548h+var_508]

loc_1406A5B55:                          ; CODE XREF: NtSetInformationProcess+3086↑j
                test    ebx, ebx
                jnz     short loc_1406A5B6E
                test    edx, edx
                jz      short loc_1406A5B6E
                lock and dword ptr [r9+9D4h], 7FFFFFFFh
                mov     r9, [rsp+548h+var_508]

loc_1406A5B6E:                          ; CODE XREF: NtSetInformationProcess+3097↑j
                                        ; NtSetInformationProcess+309B↑j
                test    edi, edi
                jz      short loc_1406A5B90
                lock or dword ptr [r9+9D4h], 200000h
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+9D4h], 400000h
                jmp     short loc_1406A5BA0
; ---------------------------------------------------------------------------

loc_1406A5B90:                          ; CODE XREF: NtSetInformationProcess+30B0↑j
                test    esi, esi
                jz      short loc_1406A5BA5
                lock or dword ptr [r9+9D4h], 200000h

loc_1406A5BA0:                          ; CODE XREF: NtSetInformationProcess+30CE↑j
                mov     r9, [rsp+548h+var_508]

loc_1406A5BA5:                          ; CODE XREF: NtSetInformationProcess+30D2↑j
                test    r15d, r15d
                jz      short loc_1406A5BBB
                lock or dword ptr [r9+9D4h], 40000000h
                mov     r9, [rsp+548h+var_508]

loc_1406A5BBB:                          ; CODE XREF: NtSetInformationProcess+30E8↑j
                mov     esi, r14d
                jmp     loc_1406A4FFD
; ---------------------------------------------------------------------------

loc_1406A5BC3:                          ; DATA XREF: .rdata:000000014006FC04↑o
;   __except(1) // owned by 1406A4C94
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5BC8:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     rsi, 0FFFFFFFFFFFFFFFFh ; jumptable 00000001406A2DD5 case 53
                jnz     loc_1406A6069
                cmp     edi, 10h
                jnz     loc_1406A6CE6

loc_1406A5BDB:                          ; DATA XREF: .rdata:000000014006FC14↑o
;   __try { // __except at loc_1406A5C0C
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_350], xmm0
;   } // starts at 1406A5BDB

loc_1406A5BE6:                          ; DATA XREF: .rdata:000000014006FC14↑o
                mov     rcx, qword ptr [rsp+548h+var_350]
                cmp     byte ptr [rsp+548h+var_350+8], 0
                jnz     short loc_1406A5C02
                call    sub_1402FC65C
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5C02:                          ; CODE XREF: NtSetInformationProcess+3136↑j
                call    sub_14033FCBC
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5C0C:                          ; DATA XREF: .rdata:000000014006FC14↑o
;   __except(1) // owned by 1406A5BDB
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5C11:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 54
                jnz     loc_1406A6CE6

loc_1406A5C1A:                          ; DATA XREF: .rdata:000000014006FC24↑o
;   __try { // __except at loc_1406A5C9D
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3B0], ebx
;   } // starts at 1406A5C1A

loc_1406A5C23:                          ; DATA XREF: .rdata:000000014006FC24↑o
                test    ebx, 0FFFFFFFEh
                jnz     loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                call    sub_140639CB4
                test    rax, rax
                jz      short loc_1406A5C92
                and     bl, 1
                movzx   edx, bl
                mov     rcx, rax
                call    sub_14071A2FC
                mov     rcx, [rsp+548h+var_508]
                call    PsReleaseProcessExitSynchronization
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A5C92:                          ; CODE XREF: NtSetInformationProcess+31B3↑j
                                        ; NtSetInformationProcess+382A↓j
                mov     r14d, 0C000010Ah
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A5C9D:                          ; DATA XREF: .rdata:000000014006FC24↑o
;   __except(1) // owned by 1406A5C1A
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5CA2:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movups  [rsp+548h+var_438], xmm0 ; jumptable 00000001406A2DD5 case 56
                mov     rdi, r14
                mov     [rsp+548h+var_400], r14
                cmp     r15b, 1
                jnz     loc_1406A5D90

loc_1406A5CBF:                          ; DATA XREF: .rdata:000000014006FC34↑o
;   __try { // __except at loc_1406A5D73
                cmp     rbx, r12
                cmovnb  rbx, r12
                mov     eax, [rbx]
                mov     dword ptr [rsp+548h+var_438], eax
                mov     rcx, [rbx+8]
                mov     qword ptr [rsp+548h+var_438+8], rcx
                test    ax, ax
                jnz     short loc_1406A5CEA
                mov     eax, 0C000000Dh
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5CEA:                          ; CODE XREF: NtSetInformationProcess+321E↑j
                test    cl, 1
                jnz     loc_1406A6EE5
                movzx   edx, ax
                add     rdx, rcx
                cmp     rdx, r12
                ja      short loc_1406A5D03
                cmp     rdx, rcx
                jnb     short loc_1406A5D0E

loc_1406A5D03:                          ; CODE XREF: NtSetInformationProcess+323C↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1406A5D0E:                          ; CODE XREF: NtSetInformationProcess+3241↑j
                movzx   edx, word ptr [rsp+548h+var_438]
                mov     ecx, 200h
                mov     r8d, 6E497350h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+548h+var_400], rax
                test    rax, rax
                jnz     short loc_1406A5D40
                mov     eax, 0C000009Ah
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5D40:                          ; CODE XREF: NtSetInformationProcess+3274↑j
                movzx   r8d, word ptr [rsp+548h+var_438]
                mov     rdx, qword ptr [rsp+548h+var_438+8]
                mov     rcx, rdi
                call    memmove
                mov     qword ptr [rsp+548h+var_438+8], rdi
                lea     rbx, [rsp+548h+var_438]
                mov     [rsp+548h+var_260], rbx
                jmp     short loc_1406A5D90
;   } // starts at 1406A5CBF
; ---------------------------------------------------------------------------

loc_1406A5D73:                          ; DATA XREF: .rdata:000000014006FC34↑o
                                        ; .rdata:000000014006FE04↑o
;   __except(1) // owned by 1406A5CBF
;   __except(1) // owned by 1406A6EE5
                mov     ebx, eax
                mov     rcx, [rsp+548h+var_400]
                test    rcx, rcx
                jz      short loc_1406A5D89
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A5D89:                          ; CODE XREF: NtSetInformationProcess+32C0↑j
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5D90:                          ; CODE XREF: NtSetInformationProcess+31F9↑j
                                        ; NtSetInformationProcess+32B1↑j
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                jns     short loc_1406A5DDF
                test    rdi, rdi
                jz      loc_1406A2EA7
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5DDF:                          ; CODE XREF: NtSetInformationProcess+3303↑j
                mov     rdx, [rsp+548h+var_508]
                mov     rcx, rbx
                call    sub_1405072E0
                mov     ebx, eax
                test    rdi, rdi
                jz      loc_1406A3524
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1406A3524
; ---------------------------------------------------------------------------

loc_1406A5E06:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movzx   r9d, r15b       ; jumptable 00000001406A2DD5 case 57
                mov     r8d, edi
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140713410
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5E1D:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 59
                jnz     loc_1406A6CE6
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5

loc_1406A5E5D:                          ; DATA XREF: .rdata:000000014006FC44↑o
;   __try { // __except at loc_1406A5EDE
                mov     edi, r14d
                cmp     [rbx], r14d
                setnz   dil
                mov     [rsp+548h+var_3AC], edi
;   } // starts at 1406A5E5D

loc_1406A5E6E:                          ; DATA XREF: .rdata:000000014006FC44↑o
                call    PsGetCurrentProcess
                cmp     rax, [rsp+548h+var_508]
                jnz     short loc_1406A5E84
                mov     esi, 0C0000022h
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A5E84:                          ; CODE XREF: NtSetInformationProcess+33B8↑j
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_1406A5EA2
                mov     esi, 0C0000061h
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A5EA2:                          ; CODE XREF: NtSetInformationProcess+33D6↑j
                mov     esi, r14d
                mov     edx, edi
                mov     rcx, [rsp+548h+var_508]
                call    sub_1408BC61C
                test    edi, edi
                jnz     loc_1406A2E98
                mov     rcx, [rsp+548h+var_508]
                test    dword ptr [rcx+460h], 20000h
                jz      loc_1406A2E98
                lock and dword ptr [rcx+460h], 0FFFDFFFFh
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A5EDE:                          ; DATA XREF: .rdata:000000014006FC44↑o
;   __except(1) // owned by 1406A5E5D
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5EF6:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_3F0], r14 ; jumptable 00000001406A2DD5 case 63
                cmp     edi, 8
                jnz     loc_1406A6CE6
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5

loc_1406A5F3E:                          ; DATA XREF: .rdata:000000014006FC54↑o
;   __try { // __except at loc_1406A5F60
                mov     rax, [rbx]
                mov     [rsp+548h+var_3F0], rax
;   } // starts at 1406A5F3E

loc_1406A5F49:                          ; DATA XREF: .rdata:000000014006FC54↑o
                lea     rdx, [rsp+548h+var_3F0]
                mov     rcx, [rsp+548h+var_508]
                call    PsSetProcessFaultInformation
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A5F60:                          ; DATA XREF: .rdata:000000014006FC54↑o
;   __except(1) // owned by 1406A5F3E
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5F78:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 20h ; ' '  ; jumptable 00000001406A2DD5 case 65
                jnz     loc_1406A6CE6
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2001h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5

loc_1406A5FB8:                          ; DATA XREF: .rdata:000000014006FC64↑o
;   __try { // __except at loc_1406A6073
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_318], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  [rsp+548h+var_308], xmm1
;   } // starts at 1406A5FB8

loc_1406A5FCF:                          ; DATA XREF: .rdata:000000014006FC64↑o
                cmp     dword ptr [rsp+548h+var_318], 3
                jz      short loc_1406A5FF2
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                mov     eax, 0C0000059h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A5FF2:                          ; CODE XREF: NtSetInformationProcess+3517↑j
                mov     edx, dword ptr [rsp+548h+var_318+4]
                test    edx, 0FFFFFFF8h
                jnz     short loc_1406A605A
                cmp     qword ptr [rsp+548h+var_318+8], 0
                jnz     short loc_1406A605A
                cmp     qword ptr [rsp+548h+var_308], 0
                jnz     short loc_1406A605A
                mov     eax, edx
                shr     eax, 1
                and     eax, 1
                jnz     short loc_1406A6025
                test    dl, 4
                jz      short loc_1406A602A

loc_1406A6025:                          ; CODE XREF: NtSetInformationProcess+355E↑j
                test    dl, 1
                jz      short loc_1406A605A

loc_1406A602A:                          ; CODE XREF: NtSetInformationProcess+3563↑j
                test    eax, eax
                jnz     short loc_1406A6045
                test    dl, 4
                jnz     short loc_1406A6045
                and     edx, 1
                mov     rcx, [rsp+548h+var_508]
                call    sub_14052D0FC
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A6045:                          ; CODE XREF: NtSetInformationProcess+356C↑j
                                        ; NtSetInformationProcess+3571↑j
                shr     edx, 2
                and     edx, 1
                mov     rcx, [rsp+548h+var_508]
                call    sub_14052CEC4
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A605A:                          ; CODE XREF: NtSetInformationProcess+353F↑j
                                        ; NtSetInformationProcess+354A↑j ...
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag

loc_1406A6069:                          ; CODE XREF: NtSetInformationProcess+40B↑j
                                        ; NtSetInformationProcess+419↑j ...
                mov     eax, 0C000000Dh
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6073:                          ; DATA XREF: .rdata:000000014006FC64↑o
;   __except(1) // owned by 1406A5FB8
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A608B:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                test    dil, 7          ; jumptable 00000001406A2DD5 cases 66,67
                jnz     loc_1406A6CE6
                cmp     edi, 0A0h
                ja      loc_1406A6CE6

loc_1406A60A1:                          ; DATA XREF: .rdata:000000014006FC74↑o
;   __try { // __except at loc_1406A6132
                mov     r8, rdi
                mov     rdx, rbx
                lea     rcx, [rsp+548h+var_138]
                call    memmove
                nop
;   } // starts at 1406A60A1

loc_1406A60B5:                          ; DATA XREF: .rdata:000000014006FC74↑o
                shr     edi, 3
                mov     r13d, [rsp+548h+var_4C8]
                cmp     r13d, 43h ; 'C'
                jnz     short loc_1406A60D7
                movzx   ecx, r15b
                call    sub_14034F684
                test    eax, eax
                js      loc_1406A6EB5

loc_1406A60D7:                          ; CODE XREF: NtSetInformationProcess+3604↑j
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                cmp     r13d, 43h ; 'C'
                setz    r14b
                mov     r9d, r14d
                lea     r8, [rsp+548h+var_138]
                mov     edx, edi
                mov     rcx, [rsp+548h+var_508]
                call    sub_1403C5F34
                jmp     loc_1406A3522
; ---------------------------------------------------------------------------

loc_1406A6132:                          ; DATA XREF: .rdata:000000014006FC74↑o
;   __except(loc_1407E73E6) // owned by 1406A60A1
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6137:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                movzx   ecx, r15b       ; jumptable 00000001406A2DD5 case 80
                call    sub_14034F684
                test    eax, eax
                js      loc_1406A6EB5
                cmp     edi, 1
                jnz     loc_1406A6CE6

loc_1406A6151:                          ; DATA XREF: .rdata:000000014006FC84↑o
;   __try { // __except at loc_1406A61CF
                movzx   ebx, byte ptr [rbx]
                mov     [rsp+548h+var_4C3], bl
;   } // starts at 1406A6151

loc_1406A615B:                          ; DATA XREF: .rdata:000000014006FC84↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                test    bl, bl
                jz      short loc_1406A61B5
                lock or dword ptr [rax+460h], 8000000h
                mov     rcx, [rsp+548h+var_508]
                call    sub_14051CB28
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A61B5:                          ; CODE XREF: NtSetInformationProcess+36D9↑j
                lock and dword ptr [rax+460h], 0F7FFFFFFh
                mov     rcx, [rsp+548h+var_508]
                call    sub_14051CB28
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A61CF:                          ; DATA XREF: .rdata:000000014006FC84↑o
;   __except(1) // owned by 1406A6151
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A61D4:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                call    PsGetCurrentProcess ; jumptable 00000001406A2DD5 case 68
                test    byte ptr [rax+739h], 1
                jz      loc_1406A3000
                mov     r8, cs:PsProcessType
                mov     [rsp+548h+var_3E8], r14
                mov     [rsp+548h+var_520], r14
                lea     rax, [rsp+548h+var_3E8]
                mov     [rsp+548h+var_528], rax
                movzx   r9d, r15b
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                mov     rax, [rsp+548h+var_3E8]
                mov     [rsp+548h+var_508], rax
                test    ebx, ebx
                js      loc_1406A3533
                lock or dword ptr [rax+87Ch], 40h
                mov     rcx, [rsp+548h+var_508]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6248:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_518], r14 ; jumptable 00000001406A2DD5 case 70
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                lock or dword ptr [rax+460h], 80000000h
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A6294:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 71
                jnz     loc_1406A6CE6

loc_1406A629D:                          ; DATA XREF: .rdata:000000014006FC94↑o
;   __try { // __except at loc_1406A6309
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3A4], ebx
;   } // starts at 1406A629D

loc_1406A62A6:                          ; DATA XREF: .rdata:000000014006FC94↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rcx, [rsp+548h+var_508]
                call    sub_140639CB4
                test    rax, rax
                jz      loc_1406A5C92
                mov     edx, ebx
                mov     rcx, rax
                call    sub_14070CBF4
                mov     rcx, [rsp+548h+var_508]
                call    PsReleaseProcessExitSynchronization
                jmp     loc_1406A3BA1
; ---------------------------------------------------------------------------

loc_1406A6309:                          ; DATA XREF: .rdata:000000014006FC94↑o
;   __except(1) // owned by 1406A629D
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A630E:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     r8d, edi        ; jumptable 00000001406A2DD5 case 72
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14090E074
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6321:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 1          ; jumptable 00000001406A2DD5 case 74
                jnz     loc_1406A6CE6

loc_1406A632A:                          ; DATA XREF: .rdata:000000014006FCA4↑o
;   __try { // __except at loc_1406A63AC
                movzx   ebx, byte ptr [rbx]
                mov     [rsp+548h+var_4C2], bl
;   } // starts at 1406A632A

loc_1406A6334:                          ; DATA XREF: .rdata:000000014006FCA4↑o
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                test    bl, bl
                jz      short loc_1406A639C
                lock or dword ptr [rax+87Ch], 200h
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A639C:                          ; CODE XREF: NtSetInformationProcess+38CA↑j
                lock and dword ptr [rax+87Ch], 0FFFFFDFFh
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A63AC:                          ; DATA XREF: .rdata:000000014006FCA4↑o
;   __except(1) // owned by 1406A632A
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A63B1:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                xor     eax, eax        ; jumptable 00000001406A2DD5 case 77
                mov     [rsp+548h+var_258], rax
                mov     [rsp+548h+var_250], eax
                cmp     edi, 0Ch
                jnz     loc_1406A6CE6

loc_1406A63CB:                          ; DATA XREF: .rdata:000000014006FCB4↑o
;   __try { // __except at loc_1406A64AB
                movsd   xmm0, qword ptr [rbx]
                movsd   [rsp+548h+var_258], xmm0
                mov     ecx, [rbx+8]
                mov     [rsp+548h+var_250], ecx
;   } // starts at 1406A63CB

loc_1406A63E2:                          ; DATA XREF: .rdata:000000014006FCB4↑o
                cmp     dword ptr [rsp+548h+var_258], 1
                jnz     loc_1406A6069
                mov     rax, [rsp+548h+var_258]
                shr     rax, 20h
                test    eax, 0FFFFFFFCh
                jnz     loc_1406A6069
                not     eax
                test    ecx, eax
                jnz     loc_1406A6069
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D44
                mov     rbx, rax
                test    rax, rax
                jz      loc_1406A362D
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                jns     short loc_1406A6471
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D28
                mov     eax, edi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6471:                          ; CODE XREF: NtSetInformationProcess+399C↑j
                mov     rax, [rbx+8]
                lea     rdx, [rsp+548h+var_258]
                mov     rcx, [rsp+548h+var_508]
                call    sub_1404079D0
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D28
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A64AB:                          ; DATA XREF: .rdata:000000014006FCB4↑o
;   __except(loc_1407E73FC) // owned by 1406A63CB
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A64B0:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 82
                jb      loc_1406A6CE6
                movups  [rsp+548h+var_1C8], xmm0
                movups  [rsp+548h+var_1B8], xmm0
                movups  [rsp+548h+var_1A8], xmm0
                movups  [rsp+548h+var_198], xmm0
                movups  [rsp+548h+var_188], xmm0
                movups  [rsp+548h+var_178], xmm0
                movups  [rsp+548h+var_168], xmm0
                movups  [rsp+548h+var_158], xmm0
                movups  [rsp+548h+var_148], xmm0
                mov     eax, 90h
                cmp     edi, eax
                cmovb   eax, edi

loc_1406A650B:                          ; DATA XREF: .rdata:000000014006FCC4↑o
;   __try { // __except at loc_1406A6588
                mov     r8d, eax
                mov     rdx, rbx
                lea     rcx, [rsp+548h+var_1C8]
                call    memmove
                nop
;   } // starts at 1406A650B

loc_1406A651F:                          ; DATA XREF: .rdata:000000014006FCC4↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                lea     rdx, [rsp+548h+var_1C8]
                mov     rcx, [rsp+548h+var_508]
                call    sub_1407195E4
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                test    eax, eax
                jns     loc_1406A2F48
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6588:                          ; DATA XREF: .rdata:000000014006FCC4↑o
;   __except(1) // owned by 1406A650B
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A658D:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; NtSetInformationProcess+1F90↑j ...
                mov     eax, 0C00000BBh ; jumptable 00000001406A2DD5 case 83
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6597:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 18h        ; jumptable 00000001406A2DD5 case 85
                jnz     loc_1406A6CE6
                xor     eax, eax
                movups  [rsp+548h+var_98], xmm0
                movups  [rsp+548h+var_88], xmm0
                movups  [rsp+548h+var_78], xmm0
                movups  [rsp+548h+var_68], xmm0
                mov     [rsp+548h+var_58], al

loc_1406A65C9:                          ; DATA XREF: .rdata:000000014006FCD4↑o
;   __try { // __except at loc_1406A66AC
                movups  xmm1, xmmword ptr [rbx]
                movups  [rsp+548h+var_3D8], xmm1
                movsd   xmm0, qword ptr [rbx+10h]
                movsd   [rsp+548h+var_3C8], xmm0
                movq    r8, xmm1
                lea     rax, [r8+41h]
                cmp     rax, r12
                ja      short loc_1406A65F5
                cmp     rax, r8
                jnb     short loc_1406A6608

loc_1406A65F5:                          ; CODE XREF: NtSetInformationProcess+3B2E↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     r8, qword ptr [rsp+548h+var_3D8]

loc_1406A6608:                          ; CODE XREF: NtSetInformationProcess+3B33↑j
                mov     edx, 41h ; 'A'
                lea     rcx, [rsp+548h+var_98]
                call    sub_140208E00
                nop
;   } // starts at 1406A65C9

loc_1406A661B:                          ; DATA XREF: .rdata:000000014006FCD4↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 220h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                lea     rax, [rsp+548h+var_98]
                mov     qword ptr [rsp+548h+var_3D8], rax
                mov     [rsp+548h+var_58], 0
                lea     rdx, [rsp+548h+var_3D8]
                mov     rcx, [rsp+548h+var_508]
                call    sub_140770684
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_508]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406A668E:                          ; DATA XREF: .rdata:000000014006FCE4↑o
;   __try { // __except at loc_1406A66A7
                mov     ecx, dword ptr [rsp+548h+var_3D8+0Ch]
                mov     [rbx+0Ch], ecx
                mov     ecx, dword ptr [rsp+548h+var_3C8]
                mov     [rbx+10h], ecx
                jmp     loc_1406A30BA
;   } // starts at 1406A668E
; ---------------------------------------------------------------------------

loc_1406A66A7:                          ; DATA XREF: .rdata:000000014006FCE4↑o
;   __except(1) // owned by 1406A668E
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A66AC:                          ; DATA XREF: .rdata:000000014006FCD4↑o
;   __except(1) // owned by 1406A65C9
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A66B1:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     r10d, 57h ; 'W' ; jumptable 00000001406A2DD5 cases 87,96
                jnz     short loc_1406A66C0
                cmp     edi, 1
                jb      loc_1406A6CE6

loc_1406A66C0:                          ; CODE XREF: NtSetInformationProcess+3BF5↑j
                cmp     r10d, 60h ; '`'
                jnz     short loc_1406A66CF
                cmp     edi, 4
                jb      loc_1406A6CE6

loc_1406A66CF:                          ; CODE XREF: NtSetInformationProcess+3C04↑j
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_1406A66FB
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000

loc_1406A66FB:                          ; CODE XREF: NtSetInformationProcess+3C21↑j
                                        ; DATA XREF: .rdata:000000014006FCF4↑o
;   __try { // __except at loc_1406A67DA
                mov     [rsp+548h+var_4D0], r14d
                cmp     [rsp+548h+var_4C8], 57h ; 'W'
                jnz     short loc_1406A671F
                movzx   ecx, byte ptr [rbx]
                mov     eax, ecx
                and     eax, 1
                mov     [rsp+548h+var_4D0], eax
                xor     ecx, eax
                and     ecx, 2
                xor     eax, ecx
                jmp     short loc_1406A6721
; ---------------------------------------------------------------------------

loc_1406A671F:                          ; CODE XREF: NtSetInformationProcess+3C48↑j
                mov     eax, [rbx]

loc_1406A6721:                          ; CODE XREF: NtSetInformationProcess+3C5D↑j
                mov     [rsp+548h+var_4D0], eax
;   } // starts at 1406A66FB

loc_1406A6725:                          ; DATA XREF: .rdata:000000014006FCF4↑o
                test    eax, 0FFFFFFF0h
                jnz     loc_1406A6069
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     rax, [rsp+548h+var_508]
                lock and dword ptr [rax+87Ch], 0FFE7FFFFh
                mov     eax, [rsp+548h+var_4D0]
                mov     edx, eax
                shr     edx, 2
                and     edx, 1
                shl     edx, 13h
                mov     ecx, edx
                mov     r8d, 100000h
                or      ecx, r8d
                and     al, 8
                cmovz   ecx, edx
                mov     rax, [rsp+548h+var_508]
                lock or [rax+87Ch], ecx
                mov     rax, [rsp+548h+var_508]
                lock and dword ptr [rax+460h], 0FCFFFFFFh
                mov     eax, [rsp+548h+var_4D0]
                mov     edx, eax
                and     edx, 1
                shl     edx, 18h
                mov     ecx, edx
                bts     ecx, 19h
                and     al, 2
                cmovz   ecx, edx
                mov     rax, [rsp+548h+var_508]
                lock or [rax+460h], ecx
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A67DA:                          ; DATA XREF: .rdata:000000014006FCF4↑o
;   __except(1) // owned by 1406A66FB
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A67DF:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     r9d, edi        ; jumptable 00000001406A2DD5 case 90
                mov     r8, rbx
                mov     edx, r10d
                mov     rcx, rsi
                call    sub_14091D550
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A67F5:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 91
                jnz     loc_1406A6CE6

loc_1406A67FE:                          ; DATA XREF: .rdata:000000014006FD04↑o
;   __try { // __except at loc_1406A687A
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3A8], ebx
;   } // starts at 1406A67FE

loc_1406A6807:                          ; DATA XREF: .rdata:000000014006FD04↑o
                test    ebx, 0FFFFFFFEh
                jnz     loc_1406A6069
                movzx   edx, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1406A3000
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                and     bl, 1
                mov     r8b, 1
                movzx   edx, bl
                mov     rcx, [rsp+548h+var_508]
                call    sub_140681F80
                jmp     loc_1406A2F3E
; ---------------------------------------------------------------------------

loc_1406A687A:                          ; DATA XREF: .rdata:000000014006FD04↑o
;   __except(loc_1407E7412) // owned by 1406A67FE
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A687F:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 4          ; jumptable 00000001406A2DD5 case 93
                jnz     loc_1406A6CE6

loc_1406A6888:                          ; DATA XREF: .rdata:000000014006FD14↑o
;   __try { // __except at loc_1406A6918
                mov     ebx, [rbx]
                mov     [rsp+548h+var_3A0], ebx
;   } // starts at 1406A6888

loc_1406A6891:                          ; DATA XREF: .rdata:000000014006FD14↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_1406A6EB5
                call    PsGetCurrentProcess
                cmp     [rsp+548h+var_508], rax
                jnz     loc_1406A33E8
                test    ebx, ebx
                jz      loc_1406A33E8
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D44
                test    rax, rax
                jz      loc_1406A2E98
                mov     rax, [rax+28h]
                mov     edx, ebx
                mov     rcx, [rsp+548h+var_508]
                call    sub_1404079D0
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D28
                jmp     loc_1406A2E98
; ---------------------------------------------------------------------------

loc_1406A6918:                          ; DATA XREF: .rdata:000000014006FD14↑o
;   __except(1) // owned by 1406A6888
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A691D:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 95
                jnz     loc_1406A6CE6

loc_1406A6926:                          ; DATA XREF: .rdata:000000014006FD24↑o
;   __try { // __except at loc_1406A69CF
                mov     rbx, [rbx]
                mov     [rsp+548h+var_268], rbx
;   } // starts at 1406A6926

loc_1406A6931:                          ; DATA XREF: .rdata:000000014006FD24↑o
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_508]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 2000h
                mov     rcx, rsi
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406A6EB5
                mov     [rsp+548h+var_518], r14
                lea     rax, [rsp+548h+var_440]
                mov     [rsp+548h+var_520], rax
                mov     dword ptr [rsp+548h+var_528], 79517350h
                movzx   r9d, r15b
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, rbx
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                mov     rcx, [rsp+548h+var_508]
                test    eax, eax
                js      loc_1406A3529
                mov     rdx, [rsp+548h+var_440]
                call    sub_140704E40
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+548h+var_440]
                call    ObfDereferenceObjectWithTag
                jmp     loc_1406A3524
; ---------------------------------------------------------------------------

loc_1406A69CF:                          ; DATA XREF: .rdata:000000014006FD24↑o
;   __except(loc_1407E7428) // owned by 1406A6926
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A69D4:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 8          ; jumptable 00000001406A2DD5 case 97
                jnz     loc_1406A6CE6

loc_1406A69DD:                          ; DATA XREF: .rdata:000000014006FD34↑o
;   __try { // __except at loc_1406A6A6D
                mov     rbx, [rbx]
                mov     [rsp+548h+var_370], rbx
;   } // starts at 1406A69DD

loc_1406A69E8:                          ; DATA XREF: .rdata:000000014006FD34↑o
                test    ebx, 0FFFFFFFEh
                jnz     loc_1406A6069
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1406A6069
                call    PsGetCurrentProcess
                mov     [rsp+548h+var_508], rax
                mov     rdx, [rax+550h]
                test    rdx, rdx
                jz      loc_1406A6D55
                mov     rcx, r14
                mov     r8, [rax+580h]
                test    r8, r8
                jz      short loc_1406A6A2A
                mov     rcx, [r8]

loc_1406A6A2A:                          ; CODE XREF: NtSetInformationProcess+3F65↑j
                                        ; DATA XREF: .rdata:000000014006FD44↑o
;   __try { // __except at loc_1406A6A65
                and     ebx, 1
                mov     eax, [rdx+7C0h]
                jz      short loc_1406A6A3A
                or      eax, 1
                jmp     short loc_1406A6A3D
; ---------------------------------------------------------------------------

loc_1406A6A3A:                          ; CODE XREF: NtSetInformationProcess+3F73↑j
                and     eax, 0FFFFFFFEh

loc_1406A6A3D:                          ; CODE XREF: NtSetInformationProcess+3F78↑j
                mov     [rdx+7C0h], eax
                test    rcx, rcx
                jz      short loc_1406A6A60
                mov     eax, [rcx+474h]
                test    ebx, ebx
                jz      short loc_1406A6A57
                or      eax, 1
                jmp     short loc_1406A6A5A
; ---------------------------------------------------------------------------

loc_1406A6A57:                          ; CODE XREF: NtSetInformationProcess+3F90↑j
                and     eax, 0FFFFFFFEh

loc_1406A6A5A:                          ; CODE XREF: NtSetInformationProcess+3F95↑j
                mov     [rcx+474h], eax

loc_1406A6A60:                          ; CODE XREF: NtSetInformationProcess+3F86↑j
                jmp     loc_1406A3BB0
;   } // starts at 1406A6A2A
; ---------------------------------------------------------------------------

loc_1406A6A65:                          ; DATA XREF: .rdata:000000014006FD44↑o
;   __except(1) // owned by 1406A6A2A
                mov     r14d, eax
                jmp     loc_1406A3BB0
; ---------------------------------------------------------------------------

loc_1406A6A6D:                          ; DATA XREF: .rdata:000000014006FD34↑o
;   __except(loc_1407E743E) // owned by 1406A69DD
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6A72:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                cmp     edi, 1          ; jumptable 00000001406A2DD5 case 100
                jnz     loc_1406A6CE6

loc_1406A6A7B:                          ; DATA XREF: .rdata:000000014006FD54↑o
;   __try { // __except at loc_1406A6AF4
                movzx   eax, byte ptr [rbx]
                mov     [rsp+548h+var_4C1], al
;   } // starts at 1406A6A7B

loc_1406A6A85:                          ; DATA XREF: .rdata:000000014006FD54↑o
                test    al, al
                jz      loc_1406A6069
                test    r15b, r15b
                jnz     loc_1406A6D55
                mov     r8, cs:PsProcessType
                mov     [rsp+548h+var_3E0], r14
                mov     [rsp+548h+var_520], r14
                lea     rax, [rsp+548h+var_3E0]
                mov     [rsp+548h+var_528], rax
                xor     r9d, r9d
                mov     edx, 0BEAh
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+548h+var_3E0]
                mov     [rsp+548h+var_508], rcx
                test    eax, eax
                js      loc_1406A6EB5
                call    sub_140909308
                mov     ebx, eax
                mov     rcx, [rsp+548h+var_508]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6AF4:                          ; DATA XREF: .rdata:000000014006FD54↑o
;   __except(loc_1407E7454) // owned by 1406A6A7B
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6AF9:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_4A4], r14d ; jumptable 00000001406A2DD5 case 101
                mov     r12, r14
                cmp     edi, 10h
                jnz     loc_1406A6CE6

loc_1406A6B0D:                          ; DATA XREF: .rdata:000000014006FD64↑o
;   __try { // __except at loc_1406A6CD1
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_428], xmm0
;   } // starts at 1406A6B0D

loc_1406A6B18:                          ; DATA XREF: .rdata:000000014006FD64↑o
                movzx   eax, word ptr [rsp+548h+var_428]
                shl     eax, 4
                test    eax, eax
                jz      loc_1406A6069
                mov     rbx, qword ptr [rsp+548h+var_428+8]
                test    rbx, rbx
                jz      loc_1406A6069

loc_1406A6B3C:                          ; DATA XREF: .rdata:000000014006FD74↑o
;   __try { // __except at loc_1406A6CCC
                mov     edi, eax
                mov     r8d, r13d
                mov     edx, eax
                mov     rcx, rbx
                call    ProbeForWrite
                nop
;   } // starts at 1406A6B3C

loc_1406A6B4C:                          ; DATA XREF: .rdata:000000014006FD74↑o
                cmp     word ptr [rsp+548h+var_428+2], 0
                jnz     loc_1406A6069
                cmp     dword ptr [rsp+548h+var_428+4], 0
                jnz     loc_1406A6069
                cmp     r15b, 1
                jnz     loc_1406A6D55
                mov     r8, cs:PsProcessType
                mov     [rsp+548h+var_490], r14
                mov     [rsp+548h+var_520], r14
                lea     rax, [rsp+548h+var_490]
                mov     [rsp+548h+var_528], rax
                movzx   r9d, r15b
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+548h+var_490]
                mov     [rsp+548h+var_508], rcx
                test    eax, eax
                js      loc_1406A6EB5
                call    PsGetCurrentProcess
                mov     rcx, [rsp+548h+var_508]
                cmp     rcx, rax
                jnz     short loc_1406A6BDF
                test    dword ptr [rcx+9D4h], 40000000h
                jz      short loc_1406A6BDF
                mov     esi, 0C0000022h
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6BDF:                          ; CODE XREF: NtSetInformationProcess+4107↑j
                                        ; NtSetInformationProcess+4113↑j
                test    dword ptr [rcx+9D4h], 4000h
                jnz     short loc_1406A6BF5
                mov     esi, 0C00000BBh
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6BF5:                          ; CODE XREF: NtSetInformationProcess+4129↑j
                mov     r8d, 4E484544h
                mov     rdx, rdi
                mov     ecx, 101h
                call    ExAllocatePool2
                mov     r12, rax
                mov     [rsp+548h+var_490], rax
                test    rax, rax
                jnz     short loc_1406A6C27
                mov     esi, 0C0000017h

loc_1406A6C1D:                          ; CODE XREF: NtSetInformationProcess+41A7↓j
                mov     rcx, [rsp+548h+var_508]
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6C27:                          ; CODE XREF: NtSetInformationProcess+4156↑j
                                        ; DATA XREF: .rdata:000000014006FD84↑o
;   __try { // __except at loc_1406A6C99
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r12
                call    memmove
                nop
;   } // starts at 1406A6C27

loc_1406A6C36:                          ; DATA XREF: .rdata:000000014006FD84↑o
                lea     r9, [rsp+548h+var_4A4]
                movzx   r8d, word ptr [rsp+548h+var_428]
                mov     rdx, r12
                mov     rcx, [rsp+548h+var_508]
                call    sub_1409093F4
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax

loc_1406A6C5A:                          ; CODE XREF: NtSetInformationProcess+41D7↓j
                mov     [rsp+548h+var_4E8], r14d
                cmp     r14d, [rsp+548h+var_4A4]
                jnb     short loc_1406A6C1D

loc_1406A6C69:                          ; DATA XREF: .rdata:000000014006FD94↑o
;   __try { // __except at loc_1406A6C7B
                mov     ecx, r14d
                add     rcx, rcx
                mov     rax, [r12+rcx*8+8]
                mov     [rbx+rcx*8+8], rax
                jmp     short loc_1406A6C94
;   } // starts at 1406A6C69
; ---------------------------------------------------------------------------

loc_1406A6C7B:                          ; DATA XREF: .rdata:000000014006FD94↑o
;   __except(loc_1407E74AC) // owned by 1406A6C69
                mov     esi, [rsp+548h+var_4FC]
                mov     r14d, [rsp+548h+var_4E8]
                mov     r12, [rsp+548h+var_490]
                mov     rbx, qword ptr [rsp+548h+var_428+8]

loc_1406A6C94:                          ; CODE XREF: NtSetInformationProcess+41B9↑j
                inc     r14d
                jmp     short loc_1406A6C5A
; ---------------------------------------------------------------------------

loc_1406A6C99:                          ; DATA XREF: .rdata:000000014006FD84↑o
;   __except(loc_1407E7496) // owned by 1406A6C27
                mov     esi, eax
                mov     rcx, [rsp+548h+var_508]
                mov     r12, [rsp+548h+var_490]

loc_1406A6CA8:                          ; CODE XREF: NtSetInformationProcess+411A↑j
                                        ; NtSetInformationProcess+4130↑j ...
                test    rcx, rcx
                jz      short loc_1406A6CB2
                call    PsDereferenceSiloContext

loc_1406A6CB2:                          ; CODE XREF: NtSetInformationProcess+41EB↑j
                test    r12, r12
                jz      loc_1406A2EA7
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag
                mov     eax, esi
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6CCC:                          ; DATA XREF: .rdata:000000014006FD74↑o
;   __except(loc_1407E7480) // owned by 1406A6B3C
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6CD1:                          ; DATA XREF: .rdata:000000014006FD64↑o
;   __except(loc_1407E746A) // owned by 1406A6B0D
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6CD6:                          ; CODE XREF: NtSetInformationProcess+315↑j
                                        ; DATA XREF: NtSetInformationProcess:jpt_1406A2DD5↓o
                mov     [rsp+548h+var_4A0], r14d ; jumptable 00000001406A2DD5 case 102
                mov     r12, r14
                cmp     edi, 10h
                jz      short loc_1406A6CF0

loc_1406A6CE6:                          ; CODE XREF: NtSetInformationProcess+3F1↑j
                                        ; NtSetInformationProcess+49C↑j ...
                mov     eax, 0C0000004h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6CF0:                          ; CODE XREF: NtSetInformationProcess+4224↑j
                                        ; DATA XREF: .rdata:000000014006FDA4↑o
;   __try { // __except at loc_1406A6EAE
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+548h+var_418], xmm0
;   } // starts at 1406A6CF0

loc_1406A6CFB:                          ; DATA XREF: .rdata:000000014006FDA4↑o
                movzx   eax, word ptr [rsp+548h+var_418]
                lea     ecx, [rax+rax*2]
                shl     ecx, 3
                test    ecx, ecx
                jz      loc_1406A6069
                mov     rbx, qword ptr [rsp+548h+var_418+8]
                test    rbx, rbx
                jz      loc_1406A6069

loc_1406A6D22:                          ; DATA XREF: .rdata:000000014006FDB4↑o
;   __try { // __except at loc_1406A6EAC
                mov     edi, ecx
                mov     r8d, r13d
                mov     edx, ecx
                mov     rcx, rbx
                call    ProbeForWrite
                nop
;   } // starts at 1406A6D22

loc_1406A6D32:                          ; DATA XREF: .rdata:000000014006FDB4↑o
                cmp     word ptr [rsp+548h+var_418+2], 0
                jnz     loc_1406A6069
                cmp     dword ptr [rsp+548h+var_418+4], 0
                jnz     loc_1406A6069
                cmp     r15b, 1
                jz      short loc_1406A6D5F

loc_1406A6D55:                          ; CODE XREF: NtSetInformationProcess+1013↑j
                                        ; NtSetInformationProcess+3F52↑j ...
                mov     eax, 0C0000022h
                jmp     loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6D5F:                          ; CODE XREF: NtSetInformationProcess+4293↑j
                mov     r8, cs:PsProcessType
                mov     [rsp+548h+var_498], r14
                mov     [rsp+548h+var_520], r14
                lea     rax, [rsp+548h+var_498]
                mov     [rsp+548h+var_528], rax
                mov     r9b, 1
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+548h+var_498]
                mov     [rsp+548h+var_508], rcx
                test    eax, eax
                js      loc_1406A6EB5
                call    PsGetCurrentProcess
                mov     rcx, [rsp+548h+var_508]
                cmp     rcx, rax
                jnz     short loc_1406A6DCA
                test    dword ptr [rcx+9D4h], 40000000h
                jz      short loc_1406A6DCA
                mov     esi, 0C0000022h
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6DCA:                          ; CODE XREF: NtSetInformationProcess+42F2↑j
                                        ; NtSetInformationProcess+42FE↑j
                test    dword ptr [rcx+9D4h], 4000h
                jnz     short loc_1406A6DE0
                mov     esi, 0C00000BBh
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6DE0:                          ; CODE XREF: NtSetInformationProcess+4314↑j
                mov     r8d, 52414544h
                mov     rdx, rdi
                mov     ecx, 101h
                call    ExAllocatePool2
                mov     r12, rax
                mov     [rsp+548h+var_498], rax
                test    rax, rax
                jnz     short loc_1406A6E12
                mov     esi, 0C0000017h

loc_1406A6E08:                          ; CODE XREF: NtSetInformationProcess+439E↓j
                mov     rcx, [rsp+548h+var_508]
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6E12:                          ; CODE XREF: NtSetInformationProcess+4341↑j
                                        ; DATA XREF: .rdata:000000014006FDC4↑o
;   __try { // __except at loc_1406A6E98
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r12
                call    memmove
                nop
;   } // starts at 1406A6E12

loc_1406A6E21:                          ; DATA XREF: .rdata:000000014006FDC4↑o
                mov     rcx, [rsp+548h+var_508]
                lea     rdx, [rcx+0A10h]
                lea     rax, [rsp+548h+var_4A0]
                mov     [rsp+548h+var_528], rax
                movzx   r9d, word ptr [rsp+548h+var_418]
                mov     r8, r12
                call    sub_1405CEDD4
                mov     esi, eax
                mov     [rsp+548h+var_4FC], eax

loc_1406A6E51:                          ; CODE XREF: NtSetInformationProcess+43D6↓j
                mov     [rsp+548h+var_4E8], r14d
                cmp     r14d, [rsp+548h+var_4A0]
                jnb     short loc_1406A6E08

loc_1406A6E60:                          ; DATA XREF: .rdata:000000014006FDD4↑o
;   __try { // __except at loc_1406A6E7A
                mov     ecx, r14d
                lea     rax, [rcx+rcx*2]
                lea     rcx, ds:0[rax*8]
                mov     eax, [r12+rcx+10h]
                mov     [rbx+rcx+10h], eax
                jmp     short loc_1406A6E93
;   } // starts at 1406A6E60
; ---------------------------------------------------------------------------

loc_1406A6E7A:                          ; DATA XREF: .rdata:000000014006FDD4↑o
;   __except(loc_1407E7504) // owned by 1406A6E60
                mov     esi, [rsp+548h+var_4FC]
                mov     r14d, [rsp+548h+var_4E8]
                mov     r12, [rsp+548h+var_498]
                mov     rbx, qword ptr [rsp+548h+var_418+8]

loc_1406A6E93:                          ; CODE XREF: NtSetInformationProcess+43B8↑j
                inc     r14d
                jmp     short loc_1406A6E51
; ---------------------------------------------------------------------------

loc_1406A6E98:                          ; DATA XREF: .rdata:000000014006FDC4↑o
;   __except(loc_1407E74EE) // owned by 1406A6E12
                mov     esi, eax
                mov     rcx, [rsp+548h+var_508]
                mov     r12, [rsp+548h+var_498]
                jmp     loc_1406A6CA8
; ---------------------------------------------------------------------------

loc_1406A6EAC:                          ; DATA XREF: .rdata:000000014006FDB4↑o
;   __except(loc_1407E74D8) // owned by 1406A6D22
                jmp     short loc_1406A6EB5
; ---------------------------------------------------------------------------

loc_1406A6EAE:                          ; DATA XREF: .rdata:000000014006FDA4↑o
;   __except(loc_1407E74C2) // owned by 1406A6CF0
                jmp     short loc_1406A6EB5
; ---------------------------------------------------------------------------

def_1406A2DD5:                          ; CODE XREF: NtSetInformationProcess+2F2↑j
                                        ; NtSetInformationProcess+315↑j
                                        ; DATA XREF: ...
                mov     eax, 0C0000003h ; jumptable 00000001406A2DD5 default case, cases 2-4,7,14,20,26-28,30,36-38,43,44,47,50,51,55,58,60,61,64,69,73,75,76,78,79,81,84,86,88,89,92,94

loc_1406A6EB5:                          ; CODE XREF: NtSetInformationProcess:loc_1406A2D97↑j
                                        ; NtSetInformationProcess+34C↑j ...
                mov     rcx, [rsp+548h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 510h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A6ED9:                          ; CODE XREF: NtSetInformationProcess+299↑j
                                        ; DATA XREF: .rdata:000000014006FDE4↑o
;   __try { // __except at loc_1406A2D97
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406A6ED9
; ---------------------------------------------------------------------------

loc_1406A6EDF:                          ; CODE XREF: NtSetInformationProcess+17BA↑j
                                        ; DATA XREF: .rdata:000000014006FDE4↑o ...
;   __try { // __except at loc_1406A42F3
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406A6EDF
; ---------------------------------------------------------------------------

loc_1406A6EE5:                          ; CODE XREF: NtSetInformationProcess+322D↑j
                                        ; DATA XREF: .rdata:000000014006FDF4↑o ...
;   __try { // __except at loc_1406A5D73
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4
jpt_1406A2DD5   dd offset loc_1406A324A - 140000000h, offset loc_1406A2F59 - 140000000h
                                        ; DATA XREF: NtSetInformationProcess+30A↑r
                dd offset loc_1406A312D - 140000000h, offset loc_1406A3261 - 140000000h ; jump table for switch statement
                dd offset loc_1406A34B1 - 140000000h, offset loc_1406A34DB - 140000000h
                dd offset loc_1406A353A - 140000000h, offset loc_1406A31E5 - 140000000h
                dd offset loc_1406A3583 - 140000000h, offset loc_1406A2DDB - 140000000h
                dd offset loc_1406A35CF - 140000000h, offset loc_1406A3637 - 140000000h
                dd offset loc_1406A3034 - 140000000h, offset loc_1406A36F9 - 140000000h
                dd offset loc_1406A37AA - 140000000h, offset loc_1406A394D - 140000000h
                dd offset loc_1406A3AB2 - 140000000h, offset loc_1406A3B2B - 140000000h
                dd offset loc_1406A30C6 - 140000000h, offset loc_1406A3BBD - 140000000h
                dd offset loc_1406A3A24 - 140000000h, offset loc_1406A3C4C - 140000000h
                dd offset loc_1406A3CFA - 140000000h, offset loc_1406A3E81 - 140000000h
                dd offset loc_1406A3FE4 - 140000000h, offset loc_1406A3ED3 - 140000000h
                dd offset loc_1406A4602 - 140000000h, offset loc_1406A4913 - 140000000h
                dd offset loc_1406A4B14 - 140000000h, offset loc_1406A4B52 - 140000000h
                dd offset loc_1406A4BD6 - 140000000h, offset loc_1406A4C48 - 140000000h
                dd offset loc_1406A4C8B - 140000000h, offset loc_1406A5BC8 - 140000000h
                dd offset loc_1406A5C11 - 140000000h, offset loc_1406A5CA2 - 140000000h
                dd offset loc_1406A5E06 - 140000000h, offset loc_1406A5E1D - 140000000h
                dd offset loc_1406A2EAE - 140000000h, offset loc_1406A5EF6 - 140000000h
                dd offset loc_1406A5F78 - 140000000h, offset loc_1406A608B - 140000000h
                dd offset loc_1406A61D4 - 140000000h, offset loc_1406A6248 - 140000000h
                dd offset loc_1406A6294 - 140000000h, offset loc_1406A630E - 140000000h
                dd offset loc_1406A6321 - 140000000h, offset loc_1406A63B1 - 140000000h
                dd offset loc_1406A6137 - 140000000h, offset loc_1406A64B0 - 140000000h
                dd offset loc_1406A658D - 140000000h, offset loc_1406A6597 - 140000000h
                dd offset loc_1406A66B1 - 140000000h, offset loc_1406A67DF - 140000000h
                dd offset loc_1406A67F5 - 140000000h, offset loc_1406A687F - 140000000h
                dd offset loc_1406A691D - 140000000h, offset loc_1406A69D4 - 140000000h
                dd offset loc_1406A4A2C - 140000000h, offset loc_1406A4AB1 - 140000000h
                dd offset loc_1406A6A72 - 140000000h, offset loc_1406A6AF9 - 140000000h
                dd offset loc_1406A6CD6 - 140000000h, offset def_1406A2DD5 - 140000000h
byte_1406A6FEC  db      0,   3Fh,   3Fh,   3Fh
                                        ; DATA XREF: NtSetInformationProcess+301↑r
                db      1,     2,   3Fh,     3 ; indirect table for switch statement
                db      4,     5,     6,     7
                db      8,   3Fh,     9,   0Ah
                db    0Bh,   0Ch,   0Dh,   3Fh
                db    0Eh,   0Fh,   10h,   11h
                db    12h,   3Fh,   3Fh,   3Fh
                db    13h,   3Fh,   14h,   15h
                db    16h,   17h,   18h,   3Fh
                db    3Fh,   3Fh,   19h,   1Ah
                db    1Bh,     9,   3Fh,   3Fh
                db    1Ch,   1Dh,   3Fh,   1Eh
                db    1Fh,   3Fh,   3Fh,   20h
                db    21h,   22h,   3Fh,   23h
                db    24h,   3Fh,   25h,   3Fh
                db    3Fh,   26h,   27h,   3Fh
                db    28h,   29h,   29h,   2Ah
                db    3Fh,   2Bh,   2Ch,   2Dh
                db    3Fh,   2Eh,   3Fh,   3Fh
                db    2Fh,   3Fh,   3Fh,   30h
                db    3Fh,   31h,   32h,   3Fh
                db    33h,   3Fh,   34h,   3Fh
                db    3Fh,   35h,   36h,   3Fh
                db    37h,   3Fh,   38h,   34h
                db    39h,   3Ah,   3Bh,   3Ch
                db    3Dh,   3Eh
                align 4
jpt_1406A4CDB   dd offset loc_1406A4CE1 - 140000000h
                                        ; DATA XREF: NtSetInformationProcess+2211↑r
                dd offset loc_1406A4FAA - 140000000h ; jump table for switch statement
                dd offset loc_1406A4D8D - 140000000h
                dd offset loc_1406A4E19 - 140000000h
                dd offset def_1406A4CDB - 140000000h
                dd offset loc_1406A527A - 140000000h
                dd offset loc_1406A52CB - 140000000h
                dd offset loc_1406A531B - 140000000h
                dd offset loc_1406A54F9 - 140000000h
                dd offset loc_1406A559F - 140000000h
                dd offset def_1406A4CDB - 140000000h
                dd offset def_1406A4CDB - 140000000h
                dd offset loc_1406A56CA - 140000000h
                dd offset loc_1406A5859 - 140000000h
                dd offset loc_1406A596E - 140000000h
                dd offset loc_1406A57C5 - 140000000h
;   } // starts at 1406A6EE5
; } // starts at 1406A2AC0
NtSetInformationProcess endp
