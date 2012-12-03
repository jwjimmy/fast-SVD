#include "cordic-16bit.h"
#include <math.h>
#define MAXINT
int main(int argc, char **argv)
{
    double p;
    int s,c;
    int i, j;
	for (j=0;j<10;j++){
		p = j/10.0*M_PI/2;
		printf("using theta of %f2 radians\n", p);
    	for(i=1;i<20;i++)
    	{
    	    cordic((p*MUL), &s, &c, i);
    	    printf("error iteration %i: %f\n", i, sin(p) -s/MUL);
    	}	  
	}
}
