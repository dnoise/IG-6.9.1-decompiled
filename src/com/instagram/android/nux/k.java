// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.android.nux:
//            j

public final class k
{

    public static j a(l l1)
    {
        j j1 = new j();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            j1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(j1, s, l1);
                l1.skipChildren();
            }
        }
        return j1;
    }

    private static boolean a(j j1, String s, l l1)
    {
        if ("name".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            j1.c = s4;
            return true;
        }
        if ("first_name".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            j1.a = s3;
            return true;
        }
        if ("last_name".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            j1.b = s2;
            return true;
        }
        if ("email".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            j1.d = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
