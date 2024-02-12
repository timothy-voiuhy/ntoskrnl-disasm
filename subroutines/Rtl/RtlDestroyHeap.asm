RtlDestroyHeap  proc near               ; DATA XREF: .rdata:000000014009559C↑o
                                        ; .pdata:000000014010AA60↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140849192 SIZE 000000CE BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax+8], 0
                mov     rdi, rcx
                and     qword ptr [rax+10h], 0
                test    rcx, rcx
                jz      loc_140849192
                cmp     dword ptr [rcx+10h], 0CCDDCCDDh
                jnz     loc_1408491B1

loc_140771813:                          ; CODE XREF: RtlDestroyHeap+D79B9↓j
                                        ; RtlDestroyHeap+D7A7B↓j
                mov     rbx, [rsp+38h+arg_10]
                xor     eax, eax
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlDestroyHeap  endp

byte_140771826  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009559C↑o
                                        ; .pdata:000000014010AA60↑o

; =============== S U B R O U T I N E =======================================


sub_14077182C   proc near               ; CODE XREF: NtSetInformationThread+E68↑p
                                        ; NtSetInformationProcess+F39↑p
                                        ; DATA XREF: ...
                test    edx, edx
                jz      short loc_14077183E
                lock bts dword ptr [rcx+78h], 3

loc_140771836:                          ; CODE XREF: sub_14077182C+18↓j
                setb    al
                movzx   eax, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14077183E:                          ; CODE XREF: sub_14077182C+2↑j
                lock btr dword ptr [rcx+78h], 3
                jmp     short loc_140771836
sub_14077182C   endp

; ---------------------------------------------------------------------------
algn_140771846:                         ; DATA XREF: .pdata:000000014010AA6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140771850   proc near               ; DATA XREF: .pdata:000000014010AA78↑o
                                        ; sub_140A6C348+24↓o

arg_0           = dword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     r9, [rsp+28h+arg_0]
                add     rcx, 28h ; '('
                xor     r8d, r8d
                mov     dl, 1
                call    RtlHashUnicodeString
                mov     eax, [rsp+28h+arg_0]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771850   endp

byte_140771876  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010AA78↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14077187C   proc near               ; CODE XREF: sub_140723E38+193↑p
                                        ; DATA XREF: .rdata:00000001400955E8↑o ...

var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A0          = byte ptr -0A0h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h

; FUNCTION CHUNK AT 0000000140849260 SIZE 000001AE BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                mov     rax, [rcx+138h]
                xor     r14d, r14d
                mov     edi, r8d
                mov     rcx, [rax+58h]
                mov     rsi, [rax+28h]
                test    rcx, rcx
                jz      loc_140849260
                mov     r9d, [rcx]
                cmp     r9d, edi
                jnz     loc_1408492E8
                add     rcx, 4
                mov     r8d, edi
                call    RtlCompareMemory
                mov     r9, rax
                cmp     rax, rdi
                jnz     loc_140849348

loc_1407718DF:                          ; CODE XREF: sub_14077187C+D79EB↓j
                                        ; sub_14077187C+D7A09↓j ...
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14077187C
sub_14077187C   endp

algn_1407718FA:                         ; DATA XREF: .rdata:00000001400955E8↑o
                                        ; .pdata:000000014010AA84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140771900   proc near               ; CODE XREF: sub_14073A3A0+18A↑p
                                        ; DATA XREF: .pdata:000000014010AA90↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     rsi, rdx
                mov     rbp, rcx
                mov     r8d, 47706E50h
                mov     ecx, 1
                lea     edx, [rdi+4]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140771981
                mov     r8d, edi
                mov     [rax], edi
                lea     rcx, [rax+4]
                mov     rdx, rsi
                call    memmove
                mov     rax, [rbp+138h]
                mov     rcx, [rax+58h]
                mov     [rax+58h], rbx
                test    rcx, rcx
                jnz     short loc_140771975

loc_14077195D:                          ; CODE XREF: sub_140771900+7F↓j
                xor     eax, eax

loc_14077195F:                          ; CODE XREF: sub_140771900+86↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771975:                          ; CODE XREF: sub_140771900+5B↑j
                mov     edx, 47706E50h
                call    ExFreePoolWithTag
                jmp     short loc_14077195D
; ---------------------------------------------------------------------------

loc_140771981:                          ; CODE XREF: sub_140771900+36↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14077195F
sub_140771900   endp

; ---------------------------------------------------------------------------
algn_140771988:                         ; DATA XREF: .pdata:000000014010AA90↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140771990   proc near               ; CODE XREF: sub_14066E11C+214↑p
                                        ; sub_1406E11DC+243↑p ...

var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                and     [rsp+48h+var_24], 0
                mov     eax, r8d
                and     [rsp+48h+var_1C], 0
                lea     r8, sub_140770C30
                mov     [rsp+48h+var_20], eax
                and     al, 1
                mov     [rsp+48h+var_28], edx
                mov     dl, al
                mov     [rsp+48h+var_18], r9
                lea     r9, [rsp+48h+var_28]
                call    sub_1406E2584
                mov     rcx, [rsp+48h+arg_20]
                test    rcx, rcx
                jz      short loc_1407719D3
                mov     eax, [rsp+48h+var_24]
                mov     [rcx], eax

loc_1407719D3:                          ; CODE XREF: sub_140771990+3B↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771990   endp

algn_1407719D9:                         ; DATA XREF: .pdata:000000014010AA9C↑o
                align 20h
; Exported entry 1948. PsSetProcessFaultInformation

; =============== S U B R O U T I N E =======================================


