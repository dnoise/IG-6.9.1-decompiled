// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.support.v4.view.ae;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.app:
//            s, ag, Fragment

public abstract class ac extends ae
{

    private final s a;
    private ag b;
    private Fragment c;
    private List d;

    public ac(s s1)
    {
        b = null;
        c = null;
        a = s1;
    }

    private static String a(int i, long l)
    {
        return (new StringBuilder("android:switcher:")).append(i).append(":").append(l).toString();
    }

    private static long b(int i)
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
        long l = b(i);
        String s1 = a(viewgroup.getId(), l);
        Fragment fragment = a.a(s1);
        boolean flag;
        if (fragment != null)
        {
            b.c(fragment);
        } else
        {
            fragment = a(i);
            b.a(viewgroup.getId(), fragment, a(viewgroup.getId(), l));
        }
        if (d != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            d.add(fragment);
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
        d = new ArrayList();
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

    public final void b()
    {
        if (d != null)
        {
            Iterator iterator = d.iterator();
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
            d = null;
        }
        if (b != null)
        {
            b.c();
            b = null;
            a.b();
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
            if (fragment != null)
            {
                fragment.c_(true);
                fragment.b(true);
            }
            c = fragment;
        }
    }
}
