// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public final class b extends LinkedList
{

    private int a;

    public b(int i)
    {
        a = -1;
        a = i;
    }

    public final void add(int i, Object obj)
    {
        if (size() == a)
        {
            removeFirst();
        }
        super.add(i, obj);
    }

    public final boolean add(Object obj)
    {
        if (size() == a)
        {
            removeFirst();
        }
        return super.add(obj);
    }

    public final boolean addAll(int i, Collection collection)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean addAll(Collection collection)
    {
        int i = (size() + collection.size()) - a;
        if (i > 0)
        {
            removeRange(0, i);
        }
        return super.addAll(collection);
    }

    public final void addFirst(Object obj)
    {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj)
    {
        add(obj);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = iterator(); iterator.hasNext(); stringbuilder.append(iterator.next().toString())) { }
        return stringbuilder.toString();
    }
}
