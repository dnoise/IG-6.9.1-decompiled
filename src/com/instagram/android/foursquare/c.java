// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.foursquare;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import com.instagram.venue.model.Venue;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.foursquare:
//            b

public final class c
{

    public static b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            b1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(b1, s, l1);
                l1.skipChildren();
            }
        }
        return b1;
    }

    private static boolean a(b b1, String s, l l1)
    {
        if ("foursquare_branding".equals(s))
        {
            b1.c = l1.getValueAsBoolean();
            return true;
        }
        if ("request_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s1 = null;
            if (r3 != r4)
            {
                s1 = l1.getText();
            }
            b1.b = s1;
            return true;
        }
        if ("venues".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.d;
            ArrayList arraylist = null;
            if (r1 == r2)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    Venue venue = Venue.a(l1, false);
                    if (venue != null)
                    {
                        arraylist.add(venue);
                    }
                } while (true);
            }
            b1.a = arraylist;
            return true;
        } else
        {
            return f.a(b1, s, l1);
        }
    }
}
