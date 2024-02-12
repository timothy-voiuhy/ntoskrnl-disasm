ExCancelTimer   proc near               ; CODE XREF: sub_1406B3A1C+15E↓p
                                        ; sub_140940D24+130↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                call    sub_1402B52B4
                mov     rdx, rbx
                mov     rcx, rdi
                call    KeCancelTimer2
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExCancelTimer   endp

byte_1402B4F9C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D098C↑o

; =============== S U B R O U T I N E =======================================


sub_1402B4FA4   proc near               ; CODE XREF: sub_14067BFD0+5C↓p
                                        ; sub_14076EF7C+A2↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     edx, 57647050h
                call    ExFreePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B4FA4   endp

algn_1402B4FB8:                         ; DATA XREF: .pdata:00000001400D0998↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B4FC0   proc near               ; CODE XREF: sub_14067C148+14↓p
                                        ; DATA XREF: .rdata:0000000140065620↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014044F888 SIZE 00000014 BYTES

                push    rbx
                sub     rsp, 50h
                and     [rsp+58h+var_30], 0
                mov     edx, 28h ; '('
                mov     ecx, 200h
                mov     r8d, 57647050h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402B5043
                xor     eax, eax
                mov     [rsp+58h+var_38], rbx
                xorps   xmm0, xmm0
                mov     cl, 1
                movups  xmmword ptr [rbx], xmm0
                movups  xmmword ptr [rbx+10h], xmm0
                mov     [rbx+20h], rax
                lea     rax, sub_1408AD210
                mov     [rsp+58h+var_28], rax
                call    sub_1402B5054
                mov     [rsp+58h+var_20], eax
                xor     ecx, ecx
                lea     rax, sub_14050ECD0
                mov     [rsp+58h+var_18], rax
                call    sub_1402B5054
                lea     rcx, [rsp+58h+var_38]
                mov     [rsp+58h+var_1C], eax
                call    sub_14067C044
                mov     [rbx+8], rax
                test    rax, rax
                jz      loc_14044F888

loc_1402B5043:                          ; CODE XREF: sub_1402B4FC0+27↑j
                                        ; sub_1402B4FC0+19A8D7↓j
                mov     rax, rbx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B4FC0   endp

byte_1402B504D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140065620↑o
                                        ; .pdata:00000001400D09A4↑o

; =============== S U B R O U T I N E =======================================


sub_1402B5054   proc near               ; CODE XREF: sub_1402B4FC0+4C↑p
                                        ; sub_1402B4FC0+63↑p
                                        ; DATA XREF: ...
                xor     eax, eax
                test    cl, cl
                jz      short loc_1402B5062
                mov     eax, cs:dword_140C433C0

locret_1402B5060:                       ; CODE XREF: sub_1402B5054+39↓j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B5062:                          ; CODE XREF: sub_1402B5054+4↑j
                cmp     byte ptr cs:dword_140CFB19C, al
                mov     cl, al
                jnz     short loc_1402B507C
                cmp     cs:byte_140C50B7D, al
                jnz     short loc_1402B5097
                cmp     cs:byte_140C50B7F, al
                jnz     short loc_1402B5097

loc_1402B507C:                          ; CODE XREF: sub_1402B5054+16↑j
                                        ; sub_1402B5054+45↓j
                mov     edx, cs:dword_140C433B8
                test    edx, edx
                jz      short loc_1402B509B
                cmp     edx, 1
                jz      short loc_1402B508F

loc_1402B508B:                          ; CODE XREF: sub_1402B5054+49↓j
                test    cl, cl
                jz      short locret_1402B5060

loc_1402B508F:                          ; CODE XREF: sub_1402B5054+35↑j
                mov     eax, cs:dword_140C433BC
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B5097:                          ; CODE XREF: sub_1402B5054+1E↑j
                                        ; sub_1402B5054+26↑j
                mov     cl, 1
                jmp     short loc_1402B507C
; ---------------------------------------------------------------------------

loc_1402B509B:                          ; CODE XREF: sub_1402B5054+30↑j
                mov     cl, al
                jmp     short loc_1402B508B
sub_1402B5054   endp

; ---------------------------------------------------------------------------
byte_1402B509F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400D09B0↑o
; Exported entry 189. ExAllocateTimer

; =============== S U B R O U T I N E =======================================


