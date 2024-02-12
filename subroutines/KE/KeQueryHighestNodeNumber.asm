KeQueryHighestNodeNumber proc near      ; CODE XREF: sub_1406A7C14+27↓p
                                        ; IoGetDeviceNumaNode+3D↓p ...
                movzx   eax, cs:word_140CFB000
                dec     ax
                retn
KeQueryHighestNodeNumber endp
