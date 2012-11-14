/***************************************************************************
*             Collection of Square Root Approximation Algorithms
*
*   File    : sqrt.c
*   Purpose : This library contains a collection of algorithms used to
*             approximate the square root of a number.
*   Author  : Michael Dipperstein
*   Date    : August 1, 2003
*
****************************************************************************
*   UPDATES
*
*   $Id: sqrt.c,v 1.3 2007/09/30 04:35:55 michael Exp $
*   $Log: sqrt.c,v $
*   Revision 1.3  2007/09/30 04:35:55  michael
*   Changes required for LGPL v3.
*
*
****************************************************************************
*
* sqrt: An ANSI C collection of square root approximation algorithms.
*       I have implemented these algorithms out of personal interest.  They
*       are not inteded to be the best or the fastest.  They are intended
*       to be clear, portable examples of techniques used to approximate
*       square roots.
*
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
#include <limits.h>
#include <errno.h>
#include "sqrt.h"

/***************************************************************************
*                                FUNCTIONS
***************************************************************************/

/***************************************************************************
*   Function   : ENIACsqrt
*   Description: This function computes a lower and upper bound
*                approximating the squre root of an integer.  The algorithm
*                used is an algorithm that was used by the original ENIAC
*                computer.  It is based on the fact that the sum of the
*                first N consecutive odd integers is N squared.  Further
*                accuracy is obtained by using the fact that the sum of the
*                first N odd multiples of a square is the (square * N)
*                squared.
*   Parameters : value - the value to take the square root of.
*                lowerBound - a pointer to lower bound on the square root.
*                upperBound - a pointer to upper bound on the square root.
*   Effects    : Uses the ENIAC algorithm to compute lower and upper bounds
*                on the square root of value, storing the results in
*                lowerBound and upperBound respectively..
*   Returned   : 0 for success, -1 for failue (value out of range).
*                Upon failure errno is set to EDOM.
****************************************************************************/
int ENIACSqrt(unsigned long value, float *lowerBound, float *upperBound)
{
    unsigned long oddStep;
    long remaining;

    /* check for valid input value */
    if ((value < 0) || (value > (LONG_MAX / SQRT_VALUE_MULTIPLIER)))
    {
        errno = EDOM;
        return (-1);
    }

    /* handle 0 and 1 */
    if (value <= 1)
    {
        *lowerBound = 0.0;
        *upperBound = 1.0;
        return (0);
    }

    remaining = value * SQRT_VALUE_MULTIPLIER;
    oddStep = SQRT_LARGE_STEP_SIZE;

    /* start summing up large steps until sum is greater than value */
    while ((remaining -= oddStep) >= 0)
    {
        oddStep += (2 * SQRT_LARGE_STEP_SIZE);
    }

    oddStep = (oddStep / SQRT_RADIX) + (SQRT_RADIX - 1);

    /* now refine by backing up with small steps */
    while ((remaining += oddStep) <= 0)
    {
        oddStep -= 2;
    }

    /***********************************************************************
    * All of the calcualtions up to here are integer.  I could use fixed
    * point here, but C doesn't have very good fixed point support.
    ***********************************************************************/
    *lowerBound = (oddStep - 1) / (float)(2 * SQRT_LARGE_STEP_SIZE);
    *upperBound = (oddStep + 1) / (float)(2 * SQRT_LARGE_STEP_SIZE);

    return (0);
}

/***************************************************************************
*   Function   : ENIACsqrtInterpolated
*   Description: This function approximates the squre root of an integer
*                The algorithm used is an algorithm that was used by the
*                original ENIAC computer.  Linear interpolation is used to
*                steer a bound closer to the actual answer.  This algorithm
*                is based on the fact that the sum of the first N
*                consecutive odd integers is N squared.  Further accuracy is
*                obtained by using the fact that the sum of the first N odd
*                multiples of a square is the (square * N) squared
*   Parameters : value - the value to take the square root of.
*   Effects    : Uses the ENIAC algorithm to approximate the square root of
*                value.  The answer is returned upon success.
*   Returned   : answer for success, -1.0 for failue (value out of range).
*                Upon failure errno is set to EDOM.
****************************************************************************/
float ENIACSqrtInterpolated(unsigned long value)
{
    unsigned long oddStep;
    long remaining, previous;
    float delta;

    /* check for valid input value */
    if ((value < 0) || (value > (LONG_MAX / SQRT_VALUE_MULTIPLIER)))
    {
        errno = EDOM;
        return (-1.0);
    }

    /* handle 0 and 1 */
    if (value <= 1)
    {
        return ((float)value);
    }

    remaining = value * SQRT_VALUE_MULTIPLIER;
    oddStep = SQRT_LARGE_STEP_SIZE;

    /* start summing up large steps until sum is greater than value */
    while ((remaining -= oddStep) >= 0)
    {
        oddStep += (2 * SQRT_LARGE_STEP_SIZE);
    }

    oddStep = (oddStep / SQRT_RADIX) + (SQRT_RADIX - 1);

    /* now refine by backing up with small steps */
    while ((remaining += oddStep) <= 0)
    {
        oddStep -= 2;
    }

    /***********************************************************************
    * The answer lies somewhere between
    * (oddStep - 1) / (2 * SQRT_LARGE_STEP_SIZE)
    * and
    * (oddStep + 1) / (2 * SQRT_LARGE_STEP_SIZE)
    *
    * Use linear interoplation to get from the closest to a single answer.
    ***********************************************************************/
    previous = remaining - (oddStep + 2);   /* last negative remaining */

    if ((-previous) < remaining)
    {
        /* upper bound is closer */
        delta = (float)(previous) / (float)(oddStep);
        return (((float)(oddStep  + 1) + delta) /
                (float)(2 * SQRT_LARGE_STEP_SIZE));
    }
    else
    {
        /* lower bound is closer */
        delta = (float)(remaining) / (float)(oddStep);
        return (((float)(oddStep - 1) + delta) /
            (float)(2 * SQRT_LARGE_STEP_SIZE));
    }
}


/***************************************************************************
*   Function   : SuccessiveApproximationSqrt
*   Description: This function approximates the squre root of a dobule
*                using successive approximation.  If x is the square root
*                of N, then (x + (N / x)) / 2 = x.  If y is an approximation
*                of the square root of N, then (y + (N / y)) / 2 is a better
*                approximation of the square root of N.  This function
*                continues the approximation process until the improvement
*                between itterations is less than a minimum value.
*   Parameters : value - the value to take the square root of.
*   Effects    : Uses successive approximation to approximate the square
*                root of value.  The answer is returned upon success.
*   Returned   : answer for success, -1.0 for failue (value out of range).
*                Upon failure errno is set to EDOM.
****************************************************************************/
double SuccessiveApproximationSqrt(double value)
{
    double old;
    double new; 
    double delta;

    /* check for valid input value */
    if (value < 0.0)
    {
        errno = EDOM;
        return (-1.0);
    }
    else if (value == 0.0)
    {
        return(value);
    }

    /* start with some guess */
    if (value < 1.0)
    {
        old = value * 2.0;
    }
    else
    {
        old = value / 2.0;
    }
    new = (old + (value / old)) / 2.0;

    /* start successive approximation */
    do
    {
        old = new;
        new = (old + (value / old)) / 2.0;
        delta = (old - new) / new;
    } while ((delta > SQRT_TOLERANCE) || (delta < (-SQRT_TOLERANCE)));

    return (new);
}

/***************************************************************************
*   Function   : BisectionSqrt
*   Description: This function approximates the squre root of a dobule using
*                bisection to refine a series of guesses.  If the guess
*                squared is greater than the value we are looking for, a
*                new guess is made, half way between our lower bound and
*                our guess.  The guess is then made the upper bound.  If the
*                guess squared is less than the value we are looking for,
*                a new guess is made half way between our last guess and
*                the upper bound.  The guess is then made the lower bound.
*                The algorithm stops when the guess squared is within a
*                threshold of the value.
*   Parameters : value - the value to take the square root of.
*   Effects    : Uses successive approximation to approximate the square
*                root of value.  The answer is returned upon success.
*   Returned   : answer for success, -1.0 for failue (value out of range).
*                Upon failure errno is set to EDOM.
****************************************************************************/
double BisectionSqrt(double value)
{
    double guess, min, max, delta;

    /* check for valid input value */
    if (value < 0.0)
    {
        errno = EDOM;
        return (-1.0);
    }

    /* come up with initail guess and bounds */
    if (value < 1.0)
    {
        guess = value * 2.0;
        max = 1.0;
    }
    else
    {
        guess = value / 2.0;
        max = value;
    }
    min = 0.0;
    delta = (guess * guess) - value;

    /* narrow in on answer until close enough approximation */
    while (1)
    {
        delta = (guess * guess) - value;

        if (delta > SQRT_TOLERANCE)
        {
            /* guess is too high bisect min and guess */
            max = guess;
        }
        else
        if (delta < (- SQRT_TOLERANCE))
        {
            /* guess is too low bisect max and guess */
            min = guess;
        }
        else
        {
            /* our guess is good enough */
            break;
        }

        /* bisect new bound to get new guess */
        guess = (min + max) / 2.0;
    }

    return (guess);
}
