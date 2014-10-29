// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.people;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.model.people:
//            PeopleTag

public final class d
{

    public static PeopleTag a(l l1)
    {
        PeopleTag peopletag = new PeopleTag();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(peopletag, s, l1);
        }

        return peopletag.a();
    }

    private static boolean a(PeopleTag peopletag, String s, l l1)
    {
        if ("position".equals(s))
        {
            peopletag.b = PeopleTag.a(l1);
            return true;
        }
        if ("user".equals(s))
        {
            peopletag.a = com.instagram.user.c.l.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
