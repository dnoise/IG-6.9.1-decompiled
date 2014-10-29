// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.au;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.android.nux:
//            m, l

public class LandingBackgroundView extends View
{

    private final m a;
    private final m b;
    private final m c;
    private final m d;
    private final m e;
    private final m f;
    private final m g[];
    private final m h[];
    private List i;
    private final Paint j;

    public LandingBackgroundView(Context context)
    {
        super(context);
        a = new m(au.nux_dayone_landing_background_small, 320, 569);
        b = new m(au.nux_dayone_landing_background_medium, 480, 852);
        c = new m(au.nux_dayone_landing_background_large, 1080, 1920);
        d = new m(au.nux_dayone_landing_logo_small, 300, 100);
        e = new m(au.nux_dayone_landing_logo_medium, 500, 150);
        f = new m(au.nux_dayone_landing_logo_large, 660, 200);
        m am[] = new m[3];
        am[0] = a;
        am[1] = b;
        am[2] = c;
        g = am;
        m am1[] = new m[3];
        am1[0] = d;
        am1[1] = e;
        am1[2] = f;
        h = am1;
        i = new LinkedList();
        j = new Paint(2);
    }

    public LandingBackgroundView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new m(au.nux_dayone_landing_background_small, 320, 569);
        b = new m(au.nux_dayone_landing_background_medium, 480, 852);
        c = new m(au.nux_dayone_landing_background_large, 1080, 1920);
        d = new m(au.nux_dayone_landing_logo_small, 300, 100);
        e = new m(au.nux_dayone_landing_logo_medium, 500, 150);
        f = new m(au.nux_dayone_landing_logo_large, 660, 200);
        m am[] = new m[3];
        am[0] = a;
        am[1] = b;
        am[2] = c;
        g = am;
        m am1[] = new m[3];
        am1[0] = d;
        am1[1] = e;
        am1[2] = f;
        h = am1;
        i = new LinkedList();
        j = new Paint(2);
    }

    public LandingBackgroundView(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        a = new m(au.nux_dayone_landing_background_small, 320, 569);
        b = new m(au.nux_dayone_landing_background_medium, 480, 852);
        c = new m(au.nux_dayone_landing_background_large, 1080, 1920);
        d = new m(au.nux_dayone_landing_logo_small, 300, 100);
        e = new m(au.nux_dayone_landing_logo_medium, 500, 150);
        f = new m(au.nux_dayone_landing_logo_large, 660, 200);
        m am[] = new m[3];
        am[0] = a;
        am[1] = b;
        am[2] = c;
        g = am;
        m am1[] = new m[3];
        am1[0] = d;
        am1[1] = e;
        am1[2] = f;
        h = am1;
        i = new LinkedList();
        j = new Paint(2);
    }

    private static l a(m m1, int k)
    {
        Matrix matrix = new Matrix();
        float f1 = (float)k / (float)m1.b;
        matrix.postScale(f1, f1);
        return new l(new m(m1.a, k, (int)(f1 * (float)m1.c)), matrix);
    }

    private static m a(m am[], int k)
    {
        for (int i1 = 0; i1 < -1 + am.length; i1++)
        {
            if (am[i1].b >= k)
            {
                return am[i1];
            }
        }

        return am[-1 + am.length];
    }

    private void a()
    {
        for (Iterator iterator = i.iterator(); iterator.hasNext(); ((l)iterator.next()).a.a(getResources())) { }
    }

    private void a(Canvas canvas, l l1)
    {
        if (l1.a.d != null)
        {
            canvas.drawBitmap(l1.a.d, l1.b, j);
        }
    }

    private void b()
    {
        for (Iterator iterator = i.iterator(); iterator.hasNext(); ((l)iterator.next()).a.a()) { }
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        a();
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        b();
    }

    public void onDraw(Canvas canvas)
    {
        for (Iterator iterator = i.iterator(); iterator.hasNext(); a(canvas, (l)iterator.next())) { }
    }

    public void onSizeChanged(int k, int i1, int j1, int k1)
    {
        l l1 = a(a(g, k), k);
        float f1 = Math.min(0.44F * (float)(-Math.max(l1.a.c - i1, 0)), (float)i1 - 0.55F * (float)l1.a.c - 0.62F * (float)k);
        l1.b.postTranslate(0.0F, f1);
        int i2 = (int)(0.64F * (float)k);
        m m1 = a(h, i2);
        l l2 = a(m1, Math.min(m1.b, i2));
        float f2 = f1 + 0.395F * (float)l1.a.c;
        float f3 = (float)(k - l2.a.b) / 2.0F;
        float f4 = f2 / 2.0F - 0.2F * (float)l2.a.c;
        l2.b.postTranslate(f3, f4);
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(l1);
        linkedlist.add(l2);
        i.removeAll(linkedlist);
        b();
        i = linkedlist;
        a();
    }
}
