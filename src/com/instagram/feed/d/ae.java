// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.model.people.d;
import java.util.ArrayList;

// Referenced classes of package com.instagram.feed.d:
//            p

public final class ae
{

    public static p a(l l1)
    {
        p p1 = new p();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            p1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(p1, s, l1);
                l1.skipChildren();
            }
        }
        return p1;
    }

    private static boolean a(p p1, String s, l l1)
    {
        if ("in".equals(s))
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
                    com.instagram.model.people.PeopleTag peopletag = d.a(l1);
                    if (peopletag != null)
                    {
                        arraylist.add(peopletag);
                    }
                } while (true);
            }
            p1.a = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
