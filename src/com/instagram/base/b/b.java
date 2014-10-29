// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.b;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.facebook.av;
import com.instagram.common.h.a;
import com.instagram.common.y.f;
import com.instagram.m.c;

// Referenced classes of package com.instagram.base.b:
//            c, a, d

public final class b
    implements android.view.View.OnTouchListener, android.widget.AbsListView.OnScrollListener
{

    private static Boolean a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private final int c = (int)com.instagram.common.y.f.a(com.instagram.common.h.a.a().getResources().getDisplayMetrics(), 2);
    private final com.instagram.base.b.c d = new com.instagram.base.b.c(this, (byte)0);
    private d e;
    private View f[];
    private float g;
    private float h;
    private int i;
    private int j;
    private int k;

    public b()
    {
    }

    static int a(b b1)
    {
        return b1.c;
    }

    public static b a(Context context)
    {
        Fragment fragment = ((k)context).d().a(av.layout_container_main);
        if (a(fragment))
        {
            return ((com.instagram.base.b.a)fragment).at();
        } else
        {
            return null;
        }
    }

    private void a(float f1)
    {
        float f2 = h;
        h = Math.max(0.0F, Math.min(g, f1 + h));
        if (f2 != h)
        {
            for (int l = 0; l < f.length; l++)
            {
                a(f[l], h);
            }

            if (e != null)
            {
                e.a(h);
            }
        }
    }

    private static void a(View view, float f1)
    {
        com.instagram.ui.a.b.a(view, (int)(-f1));
        if (android.os.Build.VERSION.SDK_INT < 11 && f1 == (float)view.getMeasuredHeight() && view.getMeasuredHeight() != 0)
        {
            view.setVisibility(4);
            view.clearAnimation();
            return;
        } else
        {
            view.setVisibility(0);
            return;
        }
    }

    public static boolean a(Fragment fragment)
    {
        for (; fragment.r() != null; fragment = fragment.r()) { }
        if (a == null)
        {
            a = Boolean.valueOf(c.f.b());
        }
        return a.booleanValue() && (fragment instanceof com.instagram.base.b.a);
    }

    static Handler b(b b1)
    {
        return b1.b;
    }

    public final void a()
    {
        a(-h);
        b.removeCallbacksAndMessages(null);
        f = null;
    }

    public final void a(ListView listview)
    {
        if (listview.getChildCount() == 0)
        {
            i = 0;
            j = 0;
            k = 0;
        } else
        {
            i = listview.getChildAt(0).getHeight();
            j = listview.getFirstVisiblePosition();
            k = -listview.getChildAt(0).getTop();
            onScrollStateChanged(listview, 0);
        }
        if (listview.getAdapter().isEmpty())
        {
            a(-g);
        } else
        if (listview.getFirstVisiblePosition() == 0 && b() == 0.0F)
        {
            listview.setSelection(1);
            return;
        }
    }

    public final void a(ListView listview, int l)
    {
        View view = new View(listview.getContext());
        view.setMinimumHeight(l);
        listview.addHeaderView(view);
        listview.setOnTouchListener(this);
    }

    public final transient void a(d d1, float f1, View aview[])
    {
        f = aview;
        e = d1;
        g = f1;
    }

    public final float b()
    {
        return g - h;
    }

    public final void onScroll(AbsListView abslistview, int l, int i1, int j1)
    {
        int k1 = -abslistview.getChildAt(0).getTop();
        int l1 = abslistview.getChildAt(0).getHeight();
        float f1;
        if (l > j)
        {
            f1 = k1 + (i - k);
        } else
        if (l < j)
        {
            f1 = -((l1 - k1) + k);
        } else
        {
            f1 = k1 - k;
        }
        if (f != null && f1 != 0.0F)
        {
            a(f1);
        }
        i = l1;
        j = l;
        k = k1;
    }

    public final void onScrollStateChanged(AbsListView abslistview, int l)
    {
        if (l == 0 && f != null)
        {
            boolean flag;
            float f1;
            if (b() > g / 2.0F)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                f1 = g;
            } else
            {
                f1 = 0.0F;
            }
            if (f1 != b())
            {
                d.a(f1, flag, (ListView)abslistview);
                b.post(d);
                return;
            }
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0 || motionevent.getAction() == 2)
        {
            b.removeCallbacksAndMessages(null);
        }
        return false;
    }
}
