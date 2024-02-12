RtlEthernetStringToAddressW proc near   ; DATA XREF: .pdata:00000001400F7ECC↑o

var_48          = dword ptr -48h
var_43          = byte ptr -43h
var_42          = byte ptr -42h
var_40          = qword ptr -40h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_40], rax
                mov     rbx, rcx
                lea     r14, [rsp+68h+var_48]
                xor     ecx, ecx
                mov     r12, r8
                mov     r15, rdx
                lea     r13d, [rcx+2]

loc_14058CE97:                          ; CODE XREF: RtlEthernetStringToAddressW+D8↓j
                mov     ebp, ecx
                mov     dil, cl
                jmp     short loc_14058CF06
; ---------------------------------------------------------------------------

loc_14058CE9E:                          ; CODE XREF: RtlEthernetStringToAddressW+B1↓j
                cmp     si, ax
                jnb     short loc_14058CF13
                mov     edx, 4
                movzx   ecx, si
                call    sub_1403D45AC
                xor     ecx, ecx
                test    eax, eax
                jz      short loc_14058CEC3
                add     dil, 0Dh
                shl     dil, 4
                add     dil, sil
                jmp     short loc_14058CEFC
; ---------------------------------------------------------------------------

loc_14058CEC3:                          ; CODE XREF: RtlEthernetStringToAddressW+54↑j
                mov     edx, 80h
                movzx   ecx, si
                call    sub_1403D45AC
                xor     ecx, ecx
                test    eax, eax
                jz      short loc_14058CF13
                movzx   edx, r13w
                movzx   ecx, si
                call    sub_1403D45AC
                neg     eax
                sbb     cl, cl
                shl     dil, 4
                and     cl, 20h
                add     cl, 41h ; 'A'
                sub     dil, cl
                add     dil, 0Ah
                add     dil, sil
                xor     ecx, ecx

loc_14058CEFC:                          ; CODE XREF: RtlEthernetStringToAddressW+61↑j
                cmp     ebp, r13d
                jz      short loc_14058CF3E
                add     rbx, r13
                inc     ebp

loc_14058CF06:                          ; CODE XREF: RtlEthernetStringToAddressW+3C↑j
                movzx   esi, word ptr [rbx]
                mov     eax, 80h
                test    si, si
                jnz     short loc_14058CE9E

loc_14058CF13:                          ; CODE XREF: RtlEthernetStringToAddressW+41↑j
                                        ; RtlEthernetStringToAddressW+74↑j
                movzx   eax, word ptr [rbx]
                cmp     ax, 2Dh ; '-'
                jz      short loc_14058CF22
                cmp     ax, 3Ah ; ':'
                jnz     short loc_14058CF6C

loc_14058CF22:                          ; CODE XREF: RtlEthernetStringToAddressW+BA↑j
                lea     rax, [rsp+68h+var_43]
                cmp     r14, rax
                jnb     short loc_14058CF3E
                mov     [r14], dil
                add     rbx, r13
                inc     r14
                cmp     ebp, r13d
                jz      loc_14058CE97

loc_14058CF3E:                          ; CODE XREF: RtlEthernetStringToAddressW+9F↑j
                                        ; RtlEthernetStringToAddressW+CA↑j
                mov     [r15], rbx

loc_14058CF41:                          ; CODE XREF: RtlEthernetStringToAddressW+112↓j
                                        ; RtlEthernetStringToAddressW+123↓j
                mov     eax, 0C000000Dh

loc_14058CF46:                          ; CODE XREF: RtlEthernetStringToAddressW+13A↓j
                mov     rcx, [rsp+68h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14058CF6C:                          ; CODE XREF: RtlEthernetStringToAddressW+C0↑j
                mov     [r15], rbx
                cmp     ebp, r13d
                jnz     short loc_14058CF41
                lea     rax, [r14+1]
                mov     [r14], dil
                lea     rcx, [rsp+68h+var_42]
                cmp     rax, rcx
                jnz     short loc_14058CF41
                mov     eax, [rsp+68h+var_48]
                mov     [r12], eax
                movzx   eax, word ptr [rsp+24h]
                mov     [r12+4], ax
                xor     eax, eax
                jmp     short loc_14058CF46
; } // starts at 14058CE60
RtlEthernetStringToAddressW endp
