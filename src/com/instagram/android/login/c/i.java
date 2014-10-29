// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;

// Referenced classes of package com.instagram.android.login.c:
//            h

public final class i
{

    public static h a(l l1)
    {
        h h1 = new h();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            h1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(h1, s, l1);
                l1.skipChildren();
            }
        }
        return h1;
    }

    private static boolean a(h h1, String s, l l1)
    {
        if ("help_url".equals(s))
        {
            String s1;
            if (l1.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l1.getText();
            }
            h1.b = s1;
            return true;
        }
        if ("logged_in_user".equals(s))
        {
            h1.a = com.instagram.user.c.l.a(l1);
            return true;
        } else
        {
            return f.a(h1, s, l1);
        }
    }
}
