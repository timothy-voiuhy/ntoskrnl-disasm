RtlCheckPortableOperatingSystem proc near
                                        ; DATA XREF: .rdata:000000014008824C↑o
                                        ; .pdata:00000001400D9194↑o

var_88          = qword ptr -88h
var_78          = byte ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 000000014048A26C SIZE 00000012 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 0A0h
                xor     ebx, ebx
                lea     rdx, aMinint    ; "MiniNT"
                and     [rax+10h], ebx
                mov     rdi, rcx
                lea     ecx, [rbx+2]
                call    RtlCheckRegistryKey
                test    eax, eax
                jns     loc_14048A26C
                xor     edx, edx
                lea     r8d, [rbx+70h]
                lea     rcx, [rsp+0A8h+var_78]
                call    memset
                and     [rsp+0A8h+var_88], rbx
                lea     rax, aPortableoperat ; "PortableOperatingSystem"
                mov     [rsp+0A8h+var_68], rax
                lea     r8, [rsp+0A8h+var_78]
                lea     rax, [rsp+0A8h+arg_8]
                mov     [rsp+0A8h+var_70], 124h
                xor     r9d, r9d
                mov     [rsp+0A8h+var_60], rax
                xor     edx, edx
                mov     [rsp+0A8h+var_58], 4000000h
                lea     ecx, [rbx+2]
                call    RtlQueryRegistryValuesEx
                mov     ebx, eax
                mov     eax, 0C0000225h
                cmp     ebx, 0C0000034h
                cmovz   ebx, eax
                test    ebx, ebx
                jns     loc_14048A26C

loc_14035F086:                          ; CODE XREF: RtlCheckPortableOperatingSystem+12B289↓j
                mov     eax, ebx
                mov     rbx, [rsp+0A8h+arg_0]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCheckPortableOperatingSystem endp
