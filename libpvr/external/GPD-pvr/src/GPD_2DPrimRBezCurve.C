/*
 * Copyright (c) 2008
 *	Side Effects Software Inc.  All rights reserved.
 *
 * Redistribution and use of the GPD library in source and binary forms, with
 * or without modification, are permitted provided that the following
 * conditions are met:
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. The name of Side Effects Software may not be used to endorse or
 *    promote products derived from this software without specific prior
 *    written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY SIDE EFFECTS SOFTWARE `AS IS' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
 * NO EVENT SHALL SIDE EFFECTS SOFTWARE BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
 * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *----------------------------------------------------------------------------
 */
/*
 * GPD_2DPrimRBezCurve.C
 *
 */


#include "GPD-pvr/GPD_2DPrimRBezCurve.h"
#include "GPD-pvr/GPD_PrimType.h"
#include "GPD-pvr/GPD_Profiles.h"
#include "GPD-pvr/GPD_Util.h"

GPD_2DPrimRBezCurve::GPD_2DPrimRBezCurve(GPD_Profiles *d) : GPD_2DPrimPoly(d)
{
    knots = 0;
    numKnots = 0;
}

GPD_2DPrimRBezCurve::~GPD_2DPrimRBezCurve()
{
    delete [] knots;
}

unsigned
GPD_2DPrimRBezCurve::getProfileId() const
{
    return GPDPRIMBEZCURVE;
}

int
GPD_2DPrimRBezCurve::savePrivate(ostream &os, int binary) const
{
    if (binary)
    {
	char useflagb = 1;
	if (!UTwrite(os, &order))	return -1;
	if (!UTwrite(os, &useflagb))	return -1;
	for (int i=0; i < numKnots; i++)
	    if (!UTwrite(os, &(knots[i]))) return -1;
    }
    else
    {
	if (!(os << " " << GPD_BASIS_N << " " << order << " use ")) return -1;
	for (int i=0; i < numKnots; i++)
	    if (!(os << " " << knots[i])) return -1;
	if (!(os << " \n")) return -1;
    }
    return 0;
}

int
GPD_2DPrimRBezCurve::loadPrivate(istream &is, int binary) 
{
    int i;
    int usebkp;

    if (binary)
    {
	if (!UTread(is, &order)) return -1;
    }
    else
    {
	char bname[GPD_BUFSIZ];
	if (!(is >> bname >> order)) return -1;
    }
    if (order < 2) return -1;

    if ((usebkp = GPDuseBreakpoints(is,binary)) < 0) return -1;

    numKnots = (nVtx-!isClosed()) / (order-1) + !isClosed();
    knots    = new float[numKnots];

    if (usebkp)
    {
	if (binary)
	{
	    for (i=0; i < numKnots; i++)
		if (!UTread(is, &(knots[i]))) return -1;
	}
	else
	{
	    for (i=0; i < numKnots; i++)
		if (!(is >> knots[i])) return -1;
	}
    }
    else
    {
	for (i = 0; i < numKnots; i++) knots[i] = i;
    }

    return 0;
}

