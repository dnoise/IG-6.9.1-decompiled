// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.p.a;

import android.app.Activity;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.instagram.common.p.a:
//            c, a

public final class b
{

    private List a;

    private b()
    {
        a = new CopyOnWriteArrayList();
    }

    b(byte byte0)
    {
        this();
    }

    public static b a()
    {
        return c.a;
    }

    public final void a(Activity activity)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).b(activity)) { }
    }

    public final void a(a a1)
    {
        if (!a.contains(a1))
        {
            a.add(a1);
        }
    }

    public final void b()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); iterator.next()) { }
    }

    public final void b(Activity activity)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).a(activity)) { }
    }

    public final void b(a a1)
    {
        if (a.contains(a1))
        {
            a.remove(a1);
        }
    }

    public final void c()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); iterator.next()) { }
    }
}
