/***************************************************************************
*                Sample usage of Square Root Package Usage
*
*   File    : sample.c
*   Purpose : Demonstartes usage of square root algorithms
*   Author  : Michael Dipperstein
*   Date    : August 1, 2003
*
****************************************************************************
*   UPDATES
*
*   $Id: sample.c,v 1.2 2007/09/30 04:35:55 michael Exp $
*   $Log: sample.c,v $
*   Revision 1.2  2007/09/30 04:35:55  michael
*   Changes required for LGPL v3.
*
*
****************************************************************************
* Sample: Square root collection sample usage and time tests
* Copyright (C) 2003, 2007 by
*       Michael Dipperstein (mdipper@alumni.engr.ucsb.edu)
*
* This file is part of the square root collection.
*
* The square root collection is free software; you can redistribute it
* and/or modify it under the terms of the GNU Lesser General Public License
* as published by the Free Software Foundation; either version 3 of the
* License, or (at your option) any later version.
*
* The square root collection is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
* General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
***************************************************************************/

/***************************************************************************
*                             INCLUDED FILES
***************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifdef BUILD_WINDOWS
#include <windows.h>
#include <winbase.h>
#endif
#include <sys/time.h>
#include "sqrt.h"

/***************************************************************************
*                               PROTOTYPES
***************************************************************************/
#ifdef BUILD_WINDOWS
int gettimeofday(struct timeval *tp, void *tzp);
#endif

/***************************************************************************
*                                FUNCTIONS
***************************************************************************/

/***************************************************************************
*   Function   : main
*   Description: This is the main function for this program, demonstrates
*                calls to both forms of ENIACsqrt and prints a table,
*                allowing their results to be compared with the sqrt function
*                in math.h.
*
*                The time measurements are meaningless, they are remenats
*                of this sample's evolution and decent sample code all
*                the same.
*
*   Parameters : argc - number of parameters
*                argv - parameter list
*   Effects    : Validates calling parameter and prints results to stdout
*                comparing ENIACsqrt to sqrt in math.h.
*   Returned   : 0 for failure 1 for success.
***************************************************************************/
int main(int argc, char *argv[])
{
    long *value;
    double *sqrtAnswer, *approxAnswer;
    int numSquares, count;
    struct timeval startTime, endTime;

    /* check for input */
    if (argc < 2)
    {
        printf("Program must be called with number of square roots to obtain.\n");
        return (0);
    }

    numSquares = atoi(argv[1]);
    if (numSquares < 1)
    {
        printf("At least 1 square root must be requested.\n");
        return (0);
    }

    /* allocate memory for values and square roots of values */
    value = (long *)malloc(numSquares * sizeof(long));
    if (value == NULL)
    {
        printf("Unable to allocate storage for %d values.\n", numSquares);
        return (0);
    }

    sqrtAnswer = (double *)malloc(numSquares * sizeof(double));
    if (sqrtAnswer == NULL)
    {
        printf("Unable to allocate storage for %d sqrt(3) answers.\n", numSquares);
        free(value);
        return (0);
    }

    approxAnswer = (double *)malloc(numSquares * sizeof(double));
    if (approxAnswer == NULL)
    {
        printf("Unable to allocate storage for %d approximations.\n", numSquares);
        free(value);
        free(sqrtAnswer);
        return (0);
    }

    /* get random values and srt(3) of random values */
    gettimeofday(&startTime, NULL);
    srand(startTime.tv_usec);

    for (count = 0; count < numSquares; count++)
    {
        value[count] = rand() % (0xFFFF);
        sqrtAnswer[count] = sqrt(value[count]);
    }

    /* ENIAC Algorithm */
    gettimeofday(&startTime, NULL);
    for (count = 0; count < numSquares; count++)
    {
        approxAnswer[count] = ENIACSqrtInterpolated(value[count]);
    }
    gettimeofday(&endTime, NULL);

    printf("ENIAC Algorithm\n");
    printf("value\tapproximate\tsqrt(3)\n");

    for (count = 0; count < numSquares; count++)
    {
        printf("%5ld\t%f\t%f\n",
            value[count], approxAnswer[count], sqrtAnswer[count]);
    }

    if (startTime.tv_usec > endTime.tv_usec)
    {
        /* usec rolled over, borrow from seconds */
        endTime.tv_sec--;
        endTime.tv_usec += 1000000;
    }

    printf("Elapsed Time for %d Calls: %ld.%06ld seconds\n",
        count,
        endTime.tv_sec - startTime.tv_sec,
        endTime.tv_usec - startTime.tv_usec);

    /* Successive Approximation Algorithm */
    gettimeofday(&startTime, NULL);
    for (count = 0; count < numSquares; count++)
    {
        approxAnswer[count] = SuccessiveApproximationSqrt(value[count]);
    }
    gettimeofday(&endTime, NULL);

    printf("\nSuccessive Approximation Algorithm\n");
    printf("value\tapproximate\tsqrt(3)\n");

    for (count = 0; count < numSquares; count++)
    {
        printf("%5ld\t%f\t%f\n",
            value[count], approxAnswer[count], sqrtAnswer[count]);
    }

    if (startTime.tv_usec > endTime.tv_usec)
    {
        /* usec rolled over, borrow from seconds */
        endTime.tv_sec--;
        endTime.tv_usec += 1000000;
    }

    printf("Elapsed Time for %d Calls: %ld.%06ld seconds\n",
        count,
        endTime.tv_sec - startTime.tv_sec,
        endTime.tv_usec - startTime.tv_usec);

    /* Bisection Approximation Algorithm */
    gettimeofday(&startTime, NULL);
    for (count = 0; count < numSquares; count++)
    {
        approxAnswer[count] = BisectionSqrt(value[count]);
    }
    gettimeofday(&endTime, NULL);

    printf("\nBisection Approximation Algorithm\n");
    printf("value\tapproximate\tsqrt(3)\n");

    for (count = 0; count < numSquares; count++)
    {
        printf("%5ld\t%f\t%f\n",
            value[count], approxAnswer[count], sqrtAnswer[count]);
    }

    if (startTime.tv_usec > endTime.tv_usec)
    {
        /* usec rolled over, borrow from seconds */
        endTime.tv_sec--;
        endTime.tv_usec += 1000000;
    }

    printf("Elapsed Time for %d Calls: %ld.%06ld seconds\n",
        count,
        endTime.tv_sec - startTime.tv_sec,
        endTime.tv_usec - startTime.tv_usec);

    free(value);
    free(sqrtAnswer);
    free(approxAnswer);
    return(1);
}
