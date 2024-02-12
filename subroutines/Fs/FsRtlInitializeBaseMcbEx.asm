FsRtlInitializeBaseMcbEx proc near      ; CODE XREF: FsRtlInitializeBaseMcb+A↑p
                                        ; FsRtlInitializeLargeMcb+13↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046CE92 SIZE 00000018 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     dword ptr [rcx+4], 0
                movzx   edi, r8w
                mov     [rcx+8], dx
                mov     rbx, rcx
                mov     [rcx+0Ah], r8w
                cmp     edx, 1
                jnz     short loc_14030E5C0
                lea     rcx, unk_140CDB800
                call    sub_14030E5D4

loc_14030E59F:                          ; CODE XREF: FsRtlInitializeBaseMcbEx+5C↓j
                mov     [rbx+10h], rax
                test    rax, rax
                jz      loc_14046CE92
                mov     dword ptr [rbx], 0Fh
                mov     al, 1

loc_14030E5B4:                          ; CODE XREF: FsRtlInitializeBaseMcbEx+15E935↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14030E5C0:                          ; CODE XREF: FsRtlInitializeBaseMcbEx+21↑j
                lea     rcx, unk_140CDB780
                call    sub_14030E5D4
                jmp     short loc_14030E59F
FsRtlInitializeBaseMcbEx endp
