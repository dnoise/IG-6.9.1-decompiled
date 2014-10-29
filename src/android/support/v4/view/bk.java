// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.support.v4.view.a.w;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.view:
//            a, ViewPager, ae

final class bk extends android.support.v4.view.a
{

    final ViewPager b;

    bk(ViewPager viewpager)
    {
        b = viewpager;
        super();
    }

    private boolean b()
    {
        return ViewPager.b(b) != null && ViewPager.b(b).c() > 1;
    }

    private boolean c()
    {
        return ViewPager.b(b) != null && ViewPager.c(b) >= 0 && ViewPager.c(b) < -1 + ViewPager.b(b).c();
    }

    private boolean d()
    {
        return ViewPager.b(b) != null && ViewPager.c(b) > 0 && ViewPager.c(b) < ViewPager.b(b).c();
    }

    public final void a(View view, a a1)
    {
        super.a(view, a1);
        a1.a(android/support/v4/view/ViewPager.getName());
        a1.a(b());
        if (c())
        {
            a1.a(4096);
        }
        if (d())
        {
            a1.a(8192);
        }
    }

    public final boolean a(View view, int i, Bundle bundle)
    {
        if (super.a(view, i, bundle))
        {
            return true;
        }
        switch (i)
        {
        default:
            return false;

        case 4096: 
            if (c())
            {
                b.setCurrentItem(1 + ViewPager.c(b));
                return true;
            } else
            {
                return false;
            }

        case 8192: 
            break;
        }
        if (d())
        {
            b.setCurrentItem(-1 + ViewPager.c(b));
            return true;
        } else
        {
            return false;
        }
    }

    public final void d(View view, AccessibilityEvent accessibilityevent)
    {
        super.d(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v4/view/ViewPager.getName());
        w w1 = w.a();
        w1.a(b());
        if (accessibilityevent.getEventType() == 4096 && ViewPager.b(b) != null)
        {
            w1.a(ViewPager.b(b).c());
            w1.b(ViewPager.c(b));
            w1.c(ViewPager.c(b));
        }
    }
}
