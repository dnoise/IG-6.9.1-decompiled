// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.api.b:
//            c

public final class b
{

    String a;
    Float b;

    b()
    {
    }

    public static b a(String s, Float float1)
    {
        b b1 = new b();
        b1.a = s;
        b1.b = float1;
        return b1;
    }

    public static List a(l l1)
    {
        r r1 = l1.getCurrentToken();
        r r2 = r.m;
        ArrayList arraylist = null;
        if (r1 != r2)
        {
            do
            {
                if (l1.nextToken() == r.e)
                {
                    break;
                }
                b b1 = c.a(l1);
                if (b1.a() != null && b1.b() != null)
                {
                    if (arraylist == null)
                    {
                        arraylist = new ArrayList();
                    }
                    arraylist.add(b1);
                }
            } while (true);
        }
        return arraylist;
    }

    public final String a()
    {
        return a;
    }

    public final Float b()
    {
        return b;
    }
}
