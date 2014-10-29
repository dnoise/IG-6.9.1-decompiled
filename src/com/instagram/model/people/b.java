// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.people;

import com.instagram.user.c.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.model.people:
//            c, PeopleTag

public final class b extends ArrayList
{

    private c a;

    public b()
    {
    }

    public b(List list)
    {
        super(list);
    }

    private static void a()
    {
        throw new UnsupportedOperationException();
    }

    private static PeopleTag b()
    {
        throw new UnsupportedOperationException();
    }

    public final void a(c c1)
    {
        a = c1;
    }

    public final boolean a(PeopleTag peopletag)
    {
        boolean flag = super.add(peopletag);
        if (a != null)
        {
            a.b(peopletag);
        }
        return flag;
    }

    public final boolean a(a a1)
    {
        for (Iterator iterator = iterator(); iterator.hasNext();)
        {
            if (((PeopleTag)iterator.next()).d().equals(a1.g()))
            {
                return true;
            }
        }

        return false;
    }

    public final void add(int i, Object obj)
    {
        a();
    }

    public final boolean add(Object obj)
    {
        return a((PeopleTag)obj);
    }

    public final boolean addAll(int i, Collection collection)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean addAll(Collection collection)
    {
        throw new UnsupportedOperationException();
    }

    public final void clear()
    {
        throw new UnsupportedOperationException();
    }

    public final Object remove(int i)
    {
        return b();
    }

    public final boolean remove(Object obj)
    {
        boolean flag = super.remove(obj);
        if (a != null)
        {
            a.a((PeopleTag)obj);
        }
        return flag;
    }

    protected final void removeRange(int i, int j)
    {
        throw new UnsupportedOperationException();
    }
}
