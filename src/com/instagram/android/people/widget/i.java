// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.people.widget:
//            m, PeopleTagsLayout, c

final class i
    implements m
{

    final List a;
    final List b;
    final PeopleTagsLayout c;

    i(PeopleTagsLayout peopletagslayout, List list, List list1)
    {
        c = peopletagslayout;
        a = list;
        b = list1;
        super();
    }

    public final void a()
    {
        PeopleTagsLayout.a(c);
        Iterator iterator = a.iterator();
        while (iterator.hasNext()) 
        {
            c c1 = (c)iterator.next();
            PeopleTagsLayout _tmp = c;
            boolean flag;
            if (b.size() < 3)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            PeopleTagsLayout.a(c1, flag);
        }
    }
}
