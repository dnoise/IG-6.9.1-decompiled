// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.view.View;

// Referenced classes of package android.support.v4.widget:
//            z, DrawerLayout, x, b

final class d extends z
{

    final DrawerLayout a;
    private final int b;
    private x c;
    private final Runnable d;

    private void c()
    {
        byte byte0 = 3;
        if (b == byte0)
        {
            byte0 = 5;
        }
        View view = a.a(byte0);
        if (view != null)
        {
            a.d(view);
        }
    }

    public final void a()
    {
        a.removeCallbacks(d);
    }

    public final void a(int i)
    {
        DrawerLayout drawerlayout = a;
        int _tmp = b;
        drawerlayout.a(i, c.c());
    }

    public final void a(int i, int j)
    {
        View view;
        if ((i & 1) == 1)
        {
            view = a.a(3);
        } else
        {
            view = a.a(5);
        }
        if (view != null && a.a(view) == 0)
        {
            c.a(view, j);
        }
    }

    public final void a(View view, float f)
    {
        float f1;
        int i;
        a;
        f1 = DrawerLayout.b(view);
        i = view.getWidth();
        a;
        if (!DrawerLayout.a(view, 3)) goto _L2; else goto _L1
_L1:
        int j;
        if (f > 0.0F || f == 0.0F && f1 > 0.5F)
        {
            j = 0;
        } else
        {
            j = -i;
        }
_L4:
        c.a(j, view.getTop());
        a.invalidate();
        return;
_L2:
        j = a.getWidth();
        if (f < 0.0F || f == 0.0F && f1 < 0.5F)
        {
            j -= i;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(View view, int i)
    {
        int j = view.getWidth();
        DrawerLayout _tmp = a;
        float f;
        byte byte0;
        if (DrawerLayout.a(view, 3))
        {
            f = (float)(j + i) / (float)j;
        } else
        {
            f = (float)(a.getWidth() - i) / (float)j;
        }
        a.a(view, f);
        if (f == 0.0F)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        a.invalidate();
    }

    public final boolean a(View view)
    {
        DrawerLayout _tmp = a;
        if (DrawerLayout.c(view))
        {
            DrawerLayout _tmp1 = a;
            if (DrawerLayout.a(view, b) && a.a(view) == 0)
            {
                return true;
            }
        }
        return false;
    }

    public final int b(View view, int i)
    {
        DrawerLayout _tmp = a;
        if (DrawerLayout.a(view, 3))
        {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        } else
        {
            int j = a.getWidth();
            return Math.max(j - view.getWidth(), Math.min(i, j));
        }
    }

    public final void b()
    {
        a.postDelayed(d, 160L);
    }

    public final void b(View view)
    {
        ((b)view.getLayoutParams()).c = false;
        c();
    }

    public final int c(View view)
    {
        return view.getWidth();
    }

    public final int d(View view)
    {
        return view.getTop();
    }
}
