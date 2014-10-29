// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.view.View;
import com.facebook.au;
import com.instagram.creation.video.i.a;
import com.instagram.creation.video.i.c;

public final class b extends View
    implements com.instagram.creation.video.i.b
{

    private final a a;

    public b(Context context, a a1)
    {
        super(context);
        setTag(a1);
        a = a1;
        a.a(this);
        b(a1.c());
    }

    private void b(int i)
    {
        if (i == c.a || i == c.b)
        {
            setBackgroundResource(au.camcorder_progress_blue);
        } else
        if (i == c.c)
        {
            setBackgroundResource(au.camcorder_progress_red);
            return;
        }
    }

    public final void a(int i)
    {
        b(i);
    }

    public final void a(a a1)
    {
        requestLayout();
    }

    protected final void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getSize(j);
        setMeasuredDimension((int)Math.max(((long)k * a.b()) / 15000L, 0L), l);
    }
}
