// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.venue.model;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.venue.model:
//            Venue

public final class c
{

    protected static Venue a(l l1)
    {
        Venue venue = new Venue();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(venue, s, l1);
        }

        return venue.a();
    }

    private static boolean a(Venue venue, String s, l l1)
    {
        if ("foursquare_v2_id".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s6 = null;
            if (r11 != r12)
            {
                s6 = l1.getText();
            }
            venue.e = s6;
            return true;
        }
        if ("pk".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.m;
            String s5 = null;
            if (r9 != r10)
            {
                s5 = l1.getText();
            }
            venue.a = s5;
            return true;
        }
        if ("address".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            venue.c = s4;
            return true;
        }
        if ("name".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            venue.b = e.d(Venue.f(s3));
            return true;
        }
        if ("lng".equals(s))
        {
            venue.h = Double.valueOf(l1.getValueAsDouble());
            return true;
        }
        if ("lat".equals(s))
        {
            venue.g = Double.valueOf(l1.getValueAsDouble());
            return true;
        }
        if ("external_source".equals(s) || "external_id_source".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            venue.f = s1;
            return true;
        }
        if ("external_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            venue.d = s2;
            return true;
        } else
        {
            return false;
        }
    }
}
