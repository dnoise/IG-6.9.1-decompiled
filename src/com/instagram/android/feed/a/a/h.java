// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.instagram.feed.d.l;

public abstract class h
{

    private final int a;
    private int b;
    private int c;

    private h(int i)
    {
        b = 0x80000000;
        c = 0x7fffffff;
        a = i;
    }

    h(int i, byte byte0)
    {
        this(i);
    }

    private void a(AbsListView abslistview)
    {
        c = 0x7fffffff;
        int i = 1 + Math.max(abslistview.getLastVisiblePosition(), b);
        int j;
        for (j = abslistview.getLastVisiblePosition() + a; i <= j; i++)
        {
            a(abslistview, i);
        }

        b = j;
    }

    private void a(AbsListView abslistview, int i)
    {
        if (i >= 0 && i < ((ListAdapter)abslistview.getAdapter()).getCount())
        {
            Object obj = ((ListAdapter)abslistview.getAdapter()).getItem(i);
            if (obj instanceof l)
            {
                a((l)obj);
            }
        }
    }

    static void a(h h1, AbsListView abslistview)
    {
        h1.a(abslistview);
    }

    private void b(AbsListView abslistview)
    {
        b = 0x80000000;
        int i = -1 + Math.min(abslistview.getFirstVisiblePosition(), c);
        int j;
        for (j = abslistview.getFirstVisiblePosition() - a; i >= j; i--)
        {
            a(abslistview, i);
        }

        c = j;
    }

    static void b(h h1, AbsListView abslistview)
    {
        h1.b(abslistview);
    }

    protected abstract void a(l l1);
}
