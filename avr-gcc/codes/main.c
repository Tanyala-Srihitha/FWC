#include<avr/io.h>
#include<util/delay.h>

int main(void)
{
  int P,Q,R,S,T;
  int A,B,C,D;

  DDRD &=-(1<<PD2)&(1<<PD3)&(1<<PD4)&(1<<PD5)&(1<<PD6);

  DDRB |=(1<<PB5);


  while(1)
  {
    P=(PIND & (1<<PIND2)) == (1<<PIND2);
    Q=(PIND & (1<<PIND3)) == (1<<PIND3);
    R=(PIND & (1<<PIND4)) == (1<<PIND4);
    S=(PIND & (1<<PIND5)) == (1<<PIND5);
    T=(PIND & (1<<PIND6)) == (1<<PIND6);

    A=(P&&Q) && ((!T)||(R&&S));
    B=0;
    C=0;
    D=0;

    PORTB = (A<<5);


  }

  return 0;
}
