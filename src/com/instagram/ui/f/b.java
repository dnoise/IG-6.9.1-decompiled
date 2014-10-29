// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.f;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

// Referenced classes of package com.instagram.ui.f:
//            c, f, g, e, 
//            d

public final class b
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener, android.view.ViewTreeObserver.OnScrollChangedListener
{

    private final View a;
    private final f b;
    private final PopupWindow c;
    private int d;
    private int e;
    private e f;

    public b(View view, f f1, PopupWindow popupwindow)
    {
        a = view;
        b = f1;
        c = popupwindow;
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            c.setOutsideTouchable(true);
            c.setBackgroundDrawable(new ColorDrawable());
            c.setTouchInterceptor(new c(this));
        }
    }

    static PopupWindow a(b b1)
    {
        return b1.c;
    }

    private static boolean a(int i, int j, DisplayMetrics displaymetrics)
    {
        while (i < 0 || i > displaymetrics.widthPixels || j < 0 || j > displaymetrics.heightPixels) 
        {
            return false;
        }
        return true;
    }

    static void b(b b1)
    {
        b1.e();
    }

    private void d()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a.removeOnLayoutChangeListener(f);
        } else
        {
            a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
        a.getViewTreeObserver().removeOnScrollChangedListener(this);
    }

    private void e()
    {
        int ai[] = new int[2];
        DisplayMetrics displaymetrics = a.getResources().getDisplayMetrics();
        int ai1[] = b.a();
        a.getLocationOnScreen(ai);
        if (a.getWindowToken() == null || !a.isShown())
        {
            c.dismiss();
            return;
        }
        if (ai1[0] > displaymetrics.widthPixels || ai1[1] > displaymetrics.heightPixels)
        {
            throw new UnsupportedOperationException("can't fit popup");
        }
        int i = ai[0];
        int j = ai[1];
        int k = i + a.getWidth();
        int l = j + a.getHeight();
        if (!a(i, j, displaymetrics) && !a(i, l, displaymetrics) && !a(k, j, displaymetrics) && !a(k, l, displaymetrics))
        {
            c.dismiss();
            return;
        }
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        View view;
        View view1;
        if (displaymetrics.heightPixels - l > ai1[1])
        {
            i1 = g.b;
        } else
        {
            l = j - ai1[1];
            i1 = g.a;
        }
        f _tmp = b;
        j1 = l + 0;
        k1 = (i + k) / 2 - ai1[0] / 2;
        if (k1 < 0)
        {
            l1 = Math.max(k1, -b.b());
        } else
        if (k1 + ai1[0] > displaymetrics.widthPixels)
        {
            l1 = Math.min((k1 + ai1[0]) - displaymetrics.widthPixels, b.b());
        } else
        {
            l1 = 0;
        }
        i2 = k1 - l1;
        int _tmp1 = d;
        int _tmp2 = e;
        d = i1;
        e = l1;
        view = c.getContentView();
        view1 = b.a(d, e);
        if (view1 != view)
        {
            if (c.isShowing())
            {
                c.dismiss();
            }
            c.setContentView(view1);
        }
        if (c.isShowing())
        {
            c.update(i2, j1, ai1[0], ai1[1]);
            return;
        } else
        {
            c.setWidth(ai1[0]);
            c.setHeight(ai1[1]);
            c.showAtLocation(a, 51, i2, j1);
            return;
        }
    }

    public final void a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            f = new e(this, (byte)0);
            a.addOnLayoutChangeListener(f);
        } else
        {
            a.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
        a.getViewTreeObserver().addOnScrollChangedListener(this);
        e();
    }

    public final void a(Handler handler)
    {
        d();
        handler.post(new d(this));
    }

    public final void b()
    {
        d();
        c.dismiss();
    }

    public final void c()
    {
        if (c.isShowing())
        {
            a.clearFocus();
            b();
            return;
        } else
        {
            a();
            return;
        }
    }

    public final void onGlobalLayout()
    {
        e();
    }

    public final void onScrollChanged()
    {
        e();
    }
}
