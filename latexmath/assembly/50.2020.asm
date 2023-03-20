
.include "/sdcard/Download/fwc/assembly/setup/m328Pdef/m328Pdef.inc"


ldi r16,0b11100011                         
out DDRD,r16                               
ldi r16,0b10000111
out DDRB,r16

loop:
ldi r30,0b00000000
out PORTB,r30
ldi r31,250

call delay

ldi r30,0b00000001
out PORTB,r30

in r17,PIND
mov r18,r17
lsr r18
lsr r18

mov r19,r17
lsr r19
lsr r19
lsr r19

mov r20,r17
lsr r20
lsr r20
lsr r20
lsr r20

eor r19,r18
and r19,r18

ldi r21,0b00000001
and r19,r21
mov r24,r19


ldi r22,0b00000111
loopt:
lsl r19
dec r22
brne loopt

out PORTB,r19

mov r23,r20
lsl r23
lsl r24
lsl r24
or r23,r24
or r23,r30

out PORTB,r23
 
rjmp loop

delay:
dec r30
brne delay
ret

Start:
rjmp Start

