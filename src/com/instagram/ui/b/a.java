// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.b;

import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import android.support.v4.view.ae;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class a extends ae
{

    private final s a;
    private ag b;
    private Fragment c;
    private ViewGroup d;
    private List e;

    public a(s s1)
    {
        b = null;
        c = null;
        a = s1;
    }

    private static String a(int i, long l)
    {
        return (new StringBuilder("android:switcher:")).append(i).append(":").append(l).toString();
    }

    private static long c(int i)
    {
        return (long)i;
    }

    public abstract Fragment a(int i);

    public final Object a(ViewGroup viewgroup, int i)
    {
        if (b == null)
        {
            b = a.a();
        }
        long l = c(i);
        String s1 = a(viewgroup.getId(), l);
        Fragment fragment = a.a(s1);
        boolean flag;
        if (fragment != null)
        {
            b.c(fragment);
        } else
        {
            fragment = b(i);
            b.a(viewgroup.getId(), fragment, a(viewgroup.getId(), l));
        }
        if (e != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            e.add(fragment);
        }
        if (fragment != c)
        {
            fragment.b(false);
            if (!flag)
            {
                fragment.c_(false);
            }
        }
        return fragment;
    }

    public final void a()
    {
        e = new ArrayList();
    }

    public final void a(ViewGroup viewgroup)
    {
        d = viewgroup;
    }

    public final void a(Object obj)
    {
        if (b == null)
        {
            b = a.a();
        }
        b.b((Fragment)obj);
    }

    public final boolean a(View view, Object obj)
    {
        return ((Fragment)obj).E() == view;
    }

    public final Fragment b(int i)
    {
        Fragment fragment = a.a(a(d.getId(), c(i)));
        if (fragment != null)
        {
            return fragment;
        } else
        {
            return a(i);
        }
    }

    public final void b()
    {
        if (e != null)
        {
            Iterator iterator = e.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Fragment fragment = (Fragment)iterator.next();
                if (fragment != c)
                {
                    fragment.c_(false);
                }
            } while (true);
            e = null;
        }
        if (b != null)
        {
            b.c();
            b = null;
            a.b();
        }
        if (c != null)
        {
            c.c_(true);
            c.b(true);
        }
    }

    public final void b(Object obj)
    {
        Fragment fragment = (Fragment)obj;
        if (fragment != c)
        {
            if (c != null)
            {
                c.c_(false);
                c.b(false);
            }
            c = fragment;
        }
    }
}
