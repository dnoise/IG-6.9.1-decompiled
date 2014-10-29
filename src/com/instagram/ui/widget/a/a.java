// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.a;

import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.PopupWindow;
import com.facebook.ba;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.ui.widget.a:
//            d, c, b

public final class a
{

    private final Handler a = new Handler();
    private final View b;
    private final int c;
    private PopupWindow d;
    private android.view.View.OnClickListener e;

    public a(View view, int i)
    {
        b = view;
        c = i;
    }

    static android.view.View.OnClickListener a(a a1)
    {
        return a1.e;
    }

    private void a(View view)
    {
        d = new PopupWindow(view, view.getMeasuredWidth(), view.getMeasuredHeight());
        d.setInputMethodMode(1);
        d.setAnimationStyle(ba.CustomToast_Fade);
        int ai[] = new int[2];
        b.getLocationInWindow(ai);
        int i = (int)f.a(view.getResources().getDisplayMetrics(), 8);
        d.showAtLocation(b, 81, (ai[0] + b.getWidth() / 2) - c / 2, b.getHeight() - i);
    }

    private static void a(d d1, int i, int j, int k, int l)
    {
        d1.a(i, j, k, l);
        d1.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    private d b()
    {
        d d1 = new d(b.getContext());
        d1.setOnClickListener(new c(this));
        return d1;
    }

    public final void a()
    {
        a.removeCallbacksAndMessages(null);
        if (d != null)
        {
            d.dismiss();
        }
        d = null;
    }

    public final void a(int i)
    {
        if (d != null)
        {
            if (i == 0)
            {
                d.setAnimationStyle(ba.CustomToast_Fade);
                d.update();
            } else
            {
                d.setAnimationStyle(0);
                d.update();
            }
            d.getContentView().setVisibility(i);
        }
    }

    public final void a(int i, int j, int k, int l)
    {
        d d1;
        if (d != null)
        {
            d1 = (d)d.getContentView();
        } else
        {
            d1 = b();
        }
        a(d1, i, j, k, l);
        if (d == null)
        {
            a(((View) (d1)));
        } else
        {
            d.update(d1.getMeasuredWidth(), d1.getMeasuredHeight());
        }
        a.removeCallbacksAndMessages(null);
        a.postDelayed(new b(this), 7000L);
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        e = onclicklistener;
    }
}
