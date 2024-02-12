RtlVerifyVersionInfo proc near          ; CODE XREF: sub_140794E38+36B↓p
                                        ; sub_1407B2AD8+2A2↓p
                                        ; DATA XREF: ...

var_170         = dword ptr -170h
var_160         = byte ptr -160h
var_150         = dword ptr -150h
var_14C         = dword ptr -14Ch
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_140         = dword ptr -140h
var_3C          = word ptr -3Ch
var_3A          = word ptr -3Ah
var_38          = word ptr -38h
var_36          = byte ptr -36h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140495688 SIZE 0000014E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-70h]
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+90h+var_30], rax
                xor     r15d, r15d
                mov     rbx, r8
                mov     esi, edx
                mov     r14, rcx
                mov     dil, r15b
                test    edx, edx
                jz      loc_1404957CC
                xor     edx, edx
                lea     rcx, [rsp+190h+var_14C]
                mov     r8d, 118h
                call    memset
                lea     rcx, [rsp+190h+var_150]
                mov     [rsp+190h+var_150], 11Ch
                call    RtlGetVersion
                test    eax, eax
                jnz     short loc_14037DB75
                lea     r12d, [r15+1]
                test    sil, 40h
                jnz     loc_14037DB9E

loc_14037DB08:                          ; CODE XREF: RtlVerifyVersionInfo+119↓j
                                        ; RtlVerifyVersionInfo+14C↓j ...
                mov     edx, 2
                mov     al, r12b
                mov     [rsp+190h+var_160], al
                mov     edi, r12d
                test    dl, sil
                jnz     loc_14037DC1A

loc_14037DB20:                          ; CODE XREF: RtlVerifyVersionInfo+1C5↓j
                                        ; RtlVerifyVersionInfo+117C11↓j
                test    r12b, sil
                jnz     loc_14037DCA1

loc_14037DB29:                          ; CODE XREF: RtlVerifyVersionInfo+23A↓j
                test    al, al
                jz      short loc_14037DB49

loc_14037DB2D:                          ; CODE XREF: RtlVerifyVersionInfo+117C44↓j
                mov     edx, 20h ; ' '
                test    dl, sil
                jnz     loc_1404956DF

loc_14037DB3B:                          ; CODE XREF: RtlVerifyVersionInfo+117C9E↓j
                test    al, al
                jz      short loc_14037DB49

loc_14037DB3F:                          ; CODE XREF: RtlVerifyVersionInfo+117C8F↓j
                test    sil, 10h
                jnz     loc_140495733

loc_14037DB49:                          ; CODE XREF: RtlVerifyVersionInfo+9B↑j
                                        ; RtlVerifyVersionInfo+AD↑j ...
                mov     edx, 4
                test    dl, sil
                jnz     loc_14037DCD5

loc_14037DB57:                          ; CODE XREF: RtlVerifyVersionInfo+272↓j
                mov     edx, 8
                test    dl, sil
                jnz     loc_14049578B

loc_14037DB65:                          ; CODE XREF: RtlVerifyVersionInfo+117D2F↓j
                mov     edx, 80h
                test    dl, sil
                jnz     loc_14037DC60

loc_14037DB73:                          ; CODE XREF: RtlVerifyVersionInfo+201↓j
                xor     eax, eax

loc_14037DB75:                          ; CODE XREF: RtlVerifyVersionInfo+68↑j
                                        ; RtlVerifyVersionInfo+20C↓j ...
                mov     rcx, [rbp+90h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+190h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14037DB9E:                          ; CODE XREF: RtlVerifyVersionInfo+72↑j
                movzx   eax, word ptr [r14+118h]
                test    ax, ax
                jz      loc_14037DB08
                mov     r10d, r15d
                mov     r11d, eax

loc_14037DBB5:                          ; CODE XREF: RtlVerifyVersionInfo+13A↓j
                mov     ecx, r10d
                mov     r9d, r12d
                shl     r9d, cl
                test    r9d, r11d
                jnz     short loc_14037DBF0

loc_14037DBC3:                          ; CODE XREF: RtlVerifyVersionInfo+186↓j
                                        ; RtlVerifyVersionInfo+28A↓j ...
                add     r10d, r12d
                cmp     r10d, 10h
                jb      short loc_14037DBB5
                mov     edx, 40h ; '@'
                mov     rcx, rbx
                call    sub_14037DD30
                cmp     eax, 7
                jnz     loc_14037DB08
                test    dil, dil
                jz      loc_14037DC97
                jmp     loc_14037DB08
; ---------------------------------------------------------------------------

loc_14037DBF0:                          ; CODE XREF: RtlVerifyVersionInfo+131↑j
                test    rbx, rbx
                jns     loc_140495688
                mov     edx, 40h ; '@'
                mov     rcx, rbx
                call    sub_14037DD30

loc_14037DC06:                          ; CODE XREF: RtlVerifyVersionInfo+117BFB↓j
                sub     eax, 6
                jnz     loc_14037DD0A
                movzx   eax, [rbp+90h+var_38]
                test    r9d, eax
                jnz     short loc_14037DBC3
                jmp     short loc_14037DC97
; ---------------------------------------------------------------------------

loc_14037DC1A:                          ; CODE XREF: RtlVerifyVersionInfo+8A↑j
                test    rbx, rbx
                jns     loc_140495690
                mov     rcx, rbx
                call    sub_14037DD30
                mov     edi, eax

loc_14037DC2D:                          ; CODE XREF: RtlVerifyVersionInfo+117C0A↓j
                mov     r8d, [rsp+190h+var_14C]
                lea     r9, [rsp+190h+var_160]
                mov     edx, [r14+4]
                mov     ecx, edi
                mov     [rsp+190h+var_170], r15d
                call    sub_14037DD50
                test    al, al
                mov     al, [rsp+190h+var_160]
                jz      loc_14049569F
                test    al, al
                jnz     loc_14037DB20
                jmp     loc_14037DB49
; ---------------------------------------------------------------------------

loc_14037DC60:                          ; CODE XREF: RtlVerifyVersionInfo+DD↑j
                test    rbx, rbx
                jns     loc_1404957C4
                mov     rcx, rbx
                call    sub_14037DD30

loc_14037DC71:                          ; CODE XREF: RtlVerifyVersionInfo+117D37↓j
                movzx   r8d, [rbp+90h+var_36]
                lea     r9, [rsp+190h+var_160]
                movzx   edx, byte ptr [r14+11Ah]
                mov     ecx, eax
                mov     [rsp+190h+var_170], r15d
                call    sub_14037DD50
                test    al, al
                jnz     loc_14037DB73

loc_14037DC97:                          ; CODE XREF: RtlVerifyVersionInfo+155↑j
                                        ; RtlVerifyVersionInfo+188↑j ...
                mov     eax, 0C0000059h
                jmp     loc_14037DB75
; ---------------------------------------------------------------------------

loc_14037DCA1:                          ; CODE XREF: RtlVerifyVersionInfo+93↑j
                cmp     edi, r12d
                jz      loc_1404956AC

loc_14037DCAA:                          ; CODE XREF: RtlVerifyVersionInfo+117C2B↓j
                                        ; RtlVerifyVersionInfo+117C3D↓j
                mov     r8d, [rsp+190h+var_148]
                lea     r9, [rsp+190h+var_160]
                mov     edx, [r14+8]
                mov     ecx, edi
                mov     [rsp+190h+var_170], r12d
                call    sub_14037DD50
                test    al, al
                mov     al, [rsp+190h+var_160]
                jnz     loc_14037DB29
                jmp     loc_1404956D2
; ---------------------------------------------------------------------------

loc_14037DCD5:                          ; CODE XREF: RtlVerifyVersionInfo+C1↑j
                test    rbx, rbx
                jns     loc_14049577C
                mov     rcx, rbx
                call    sub_14037DD30

loc_14037DCE6:                          ; CODE XREF: RtlVerifyVersionInfo+117CF6↓j
                mov     r8d, [rsp+190h+var_144]
                lea     r9, [rsp+190h+var_160]
                mov     edx, [r14+0Ch]
                mov     ecx, eax
                mov     [rsp+190h+var_170], r15d
                call    sub_14037DD50
                test    al, al
                jnz     loc_14037DB57
                jmp     short loc_14037DC97
; ---------------------------------------------------------------------------

loc_14037DD0A:                          ; CODE XREF: RtlVerifyVersionInfo+179↑j
                cmp     eax, r12d
                jnz     loc_1404957CC
                movzx   eax, [rbp+90h+var_38]
                test    r9d, eax
                jz      loc_14037DBC3
                mov     dil, r12b
                jmp     loc_14037DBC3
; } // starts at 14037DA90
RtlVerifyVersionInfo endp
