SeSetSecurityAttributesTokenEx proc near
                                        ; DATA XREF: .pdata:00000001400F8850↑o

var_48          = dword ptr -48h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-10h], 0
                and     dword ptr [rax+18h], 0
                test    r8, r8
                jz      short loc_140597848
                mov     ebx, 0C000000Dh
                jmp     loc_14059799F
; ---------------------------------------------------------------------------

loc_140597848:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+1C↑j
                test    r9b, r9b
                jz      loc_14059797B
                mov     eax, cs:dword_140CF4CF8
                and     eax, 3
                cmp     al, 3
                jnz     loc_14059797B
                test    dl, dl
                jz      short loc_140597870
                mov     ebx, 0C0000022h
                jmp     loc_14059799F
; ---------------------------------------------------------------------------

loc_140597870:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+44↑j
                mov     r8, cs:SeTokenObjectType
                lea     rax, [rsp+48h+var_18]
                and     [rsp+48h+var_20], 0
                xor     r9d, r9d
                and     [rsp+48h+var_18], 0
                mov     edx, 80h
                mov     [rsp+48h+var_28], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      loc_140597965
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+48h+var_18]
                mov     dl, 1
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+48h+var_48], 0
                mov     rdi, [rsp+48h+var_18]
                lea     r9, [rsp+48h+var_10]
                mov     rdx, rdi
                lea     r8, [rsp+48h+arg_10]
                mov     cl, 1
                call    sub_140597A80
                mov     r8, [rsp+48h+arg_28]
                mov     rdx, [rsp+48h+arg_20]
                test    eax, eax
                jns     short loc_14059790F
                mov     rax, [rsp+48h+arg_30]
                mov     byte ptr [rax], 0
                mov     rcx, [rdi+308h]
                call    sub_140203548
                mov     ebx, eax
                test    eax, eax
                js      short loc_140597949
                jmp     short loc_140597929
; ---------------------------------------------------------------------------

loc_14059790F:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+CE↑j
                mov     ecx, [rsp+48h+arg_10]
                call    sub_140597B5C
                mov     ebx, eax
                test    eax, eax
                js      short loc_140597949
                mov     rax, [rsp+48h+arg_30]
                mov     byte ptr [rax], 1

loc_140597929:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+ED↑j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdi+38h], eax
                shr     rax, 20h
                mov     [rdi+3Ch], eax

loc_140597949:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+EB↑j
                                        ; SeSetSecurityAttributesTokenEx+FC↑j
                lock or [rsp+48h+var_48], 0
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_140597965:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+7E↑j
                mov     rcx, [rsp+48h+var_18]
                test    rcx, rcx
                jz      short loc_14059799F
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                jmp     short loc_14059799F
; ---------------------------------------------------------------------------

loc_14059797B:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+2B↑j
                                        ; SeSetSecurityAttributesTokenEx+3C↑j
                mov     rax, [rsp+48h+arg_30]
                mov     r8b, 1
                mov     r9, [rsp+48h+arg_20]
                mov     byte ptr [rax], 0
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_28], rax
                call    sub_140595E84
                mov     ebx, eax

loc_14059799F:                          ; CODE XREF: SeSetSecurityAttributesTokenEx+23↑j
                                        ; SeSetSecurityAttributesTokenEx+4B↑j ...
                mov     rsi, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeSetSecurityAttributesTokenEx endp
