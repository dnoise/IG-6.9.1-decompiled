// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.graphics.PointF;
import java.util.Comparator;

// Referenced classes of package com.instagram.android.people.widget:
//            c, PeopleTagsLayout

final class j
    implements Comparator
{

    final PeopleTagsLayout a;

    j(PeopleTagsLayout peopletagslayout)
    {
        a = peopletagslayout;
        super();
    }

    private static int a(c c1, c c2)
    {
        return (int)(c1.getAbsoluteTagPosition().x - c2.getAbsoluteTagPosition().x);
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((c)obj, (c)obj1);
    }
}
