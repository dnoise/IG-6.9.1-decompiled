// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import com.android.internal.util.Predicate;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.people.widget:
//            a

final class b
    implements Predicate
{

    final com.instagram.android.people.widget.a a;

    b(com.instagram.android.people.widget.a a1)
    {
        a = a1;
        super();
    }

    private boolean a(a a1)
    {
        return !com.instagram.android.people.widget.a.a(a).a(a1);
    }

    public final boolean apply(Object obj)
    {
        return a((a)obj);
    }
}
