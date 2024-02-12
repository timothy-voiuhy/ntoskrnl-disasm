ExTryAcquireAutoExpandPushLockExclusive proc near
                                        ; DATA XREF: .rdata:000000014009A01C↑o
                                        ; .pdata:00000001400DC59C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049DDAA SIZE 0000003B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14049DDAA
                test    dl, 2
                jnz     short loc_140391123
                xor     edx, edx
                lea     r8d, [rdi+1]
                call    sub_140244C10
                mov     rdi, rax

loc_140391123:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+23↑j
                lock bts qword ptr [rbx], 0
                jb      short loc_140391171
                mov     ecx, [rbx+8]
                mov     sil, 1
                test    sil, cl
                jnz     short loc_140391158

loc_140391136:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+7A↓j
                                        ; ExTryAcquireAutoExpandPushLockExclusive+97↓j ...
                test    rdi, rdi
                jz      short loc_140391144
                test    sil, sil
                jz      short loc_140391192
                or      byte ptr [rdi+1Ah], 1

loc_140391144:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+49↑j
                                        ; ExTryAcquireAutoExpandPushLockExclusive+AD↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140391158:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+44↑j
                mov     eax, 0FFFFFFF8h
                and     rcx, rax
                call    sub_14039136C
                mov     sil, al
                test    al, al
                jnz     short loc_140391136
                jmp     loc_14049DDC2
; ---------------------------------------------------------------------------

loc_140391171:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+39↑j
                mov     eax, [rbx+0Ch]
                lea     rcx, [rsp+38h+arg_8]
                mov     [rsp+38h+arg_8], eax
                xor     sil, sil
                call    sub_1403914AC
                test    al, al
                jz      short loc_140391136
                mov     eax, [rsp+38h+arg_8]
                mov     [rbx+0Ch], eax
                jmp     short loc_140391136
; ---------------------------------------------------------------------------

loc_140391192:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockExclusive+4E↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14031D1B0
                jmp     short loc_140391144
ExTryAcquireAutoExpandPushLockExclusive endp
