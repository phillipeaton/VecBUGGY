e0020 "HELLO WORLD"
e002B 80
a001B
JSR $F192
JSR $F2A5
LDU $0020
LDA #$0
LDB #$0
JSR $F37A
BRA $001B
.

;-----------------------


a001B
JMP $400c
.

e4000 "HELLO WORLD"
e400B 80
a400C
JSR $F192
JSR $F2A5
LDU $4000
LDA #$10
LDB #-$50
JSR $F37A
BRA $400C
.

;Export above as Motorola S19 Records (import by pasting into terminal and hitting enter)
;------------------------------------
ss4000,20

Returns:
S113400048454C4C4F20574F524C4480BDF192BD13
S1134010F2A5FE40008610C6B0BDF37A20EE000083
S9030000FC


;Motorola S19 Record Format
;--------------------------

;Header Record (accepted but not produced by BUGGY)
;-------------
S0 XX 0000 (20 bytes Module Name + 2 bytes Version + 2 Bytes Revision + 0-36 bytes Text Comment) XX <- Checksum

;Data Record
;-----------
ID #b  1 2  3 4 5 6 7 8 9 a b c d  e f10 1112 13
S1 13 4000 6162636465666768696A6B 6C6D6E 6F70 24 <- Checksum

;Termination Record
;------------------
ID #b  1 2  3
S9 03 0000 FC
