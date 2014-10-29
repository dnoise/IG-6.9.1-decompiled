// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.b;

import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.instagram.creation.video.b:
//            c, b

public class a
    implements Iterable
{

    private LinkedList a;
    private c b;

    public a()
    {
        a = new LinkedList();
    }

    static LinkedList a(a a1)
    {
        return a1.a;
    }

    static c b(a a1)
    {
        return a1.b;
    }

    protected final Object a()
    {
        if (a.size() > 0)
        {
            return a.getLast();
        } else
        {
            return null;
        }
    }

    public final void a(c c1)
    {
        b = c1;
    }

    public final boolean a(Object obj)
    {
        boolean flag = a.add(obj);
        if (b != null)
        {
            b.b(obj);
        }
        return flag;
    }

    public final int b()
    {
        return a.size();
    }

    public final boolean b(Object obj)
    {
        boolean flag = a.remove(obj);
        if (flag && b != null)
        {
            b.a(obj);
        }
        return flag;
    }

    public Iterator iterator()
    {
        return new b(this);
    }
}
