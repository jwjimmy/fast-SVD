/***************************************************************************
*             Collection of Square Root Approximation Algorithms
*
*   File    : sqrt.h
*   Purpose : This is the header for a library containing a collection of
*             algorithms used to approximate the square root of a number.
*   Author  : Michael Dipperstein
*   Date    : August 1, 2003
*
****************************************************************************
*   UPDATES
*
*   $Id: sqrt.h,v 1.2 2007/09/30 04:35:55 michael Exp $
*   $Log: sqrt.h,v $
*   Revision 1.2  2007/09/30 04:35:55  michael
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
*                                CONSTANTS
***************************************************************************/

/***************************************************************************
* The original ENIAC used decimal adders and is naturally radix 10.
* Modern computers are binary, and radicies using powers of 2 may be used
* for quicker multiplacation and division.
*
* SQRT_USE_RADIX_10 provides the ENIAC implementation
* SQRT_USE_RADIX_8  provided a faster result than radix 10; accepting
*                   a larger input range, but produces a worst case result
*                   that is less accurate than the radix 10 method.
* SQRT_USE_RADIX_16 provides a more accurate result than radix 8, but
*                   requires more computational time, and accptes a smaller
*                   range of input values.
***************************************************************************/
#undef SQRT_USE_RADIX_10
#define SQRT_USE_RADIX_8
#undef SQRT_USE_RADIX_16

#ifdef SQRT_USE_RADIX_8
#define SQRT_RADIX                  8
#elif defined SQRT_USE_RADIX_10
#define SQRT_RADIX                  10
#elif defined SQRT_USE_RADIX_16
#define SQRT_RADIX                  16
#else
#error radix must be defined
#endif

#define SQRT_LARGE_STEP_SIZE        (SQRT_RADIX * SQRT_RADIX)
#define SQRT_VALUE_MULTIPLIER       (SQRT_LARGE_STEP_SIZE * \
                                    SQRT_LARGE_STEP_SIZE)

#define SQRT_TOLERANCE              0.0001

/***************************************************************************
*                               PROTOTYPES
***************************************************************************/
int ENIACSqrt(unsigned long value, float *lowerBound, float *upperBound);
float ENIACSqrtInterpolated(unsigned long value);
double SuccessiveApproximationSqrt(double value);
double BisectionSqrt(double value);
