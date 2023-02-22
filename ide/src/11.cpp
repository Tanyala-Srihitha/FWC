#include<Arduino.h>
int P,Q,R;
int A,B,C,D;
void disp_7447(int D,int C,int B,int A)
{
	digitalWrite(2,A);
	digitalWrite(3,B);
	digitalWrite(4,C);
	digitalWrite(5,D);
	digitalWrite(6,P);
	digitalWrite(7,Q);
	digitalWrite(8,R);
}
void setup()
{
	pinMode(2,OUTPUT);
	pinMode(3,OUTPUT);
	pinMode(4,OUTPUT);
	pinMode(5,OUTPUT);
	pinMode(6,INPUT);
	pinMode(7,INPUT);
	pinMode(8,INPUT);
}
void loop()
{
	P=digitalRead(6);
        Q=digitalRead(7);
	R=digitalRead(8);
	A=(R&&!Q)||(P&&Q);
	B=0;
	C=0;
	D=0;
	disp_7447(D,C,B,A);
}
