// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;

public final class b extends PopupWindow
{

    private final View a = getContentView();
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;

    public b(Context context)
    {
        super(LayoutInflater.from(context).inflate(aw.nux_bubble_view, null, false), -2, -2, false);
        a.setEnabled(false);
        d = context.getResources().getDimensionPixelSize(at.nux_bubble_width);
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        b = displaymetrics.heightPixels;
        c = displaymetrics.widthPixels;
        f = d / 2;
        g = c - f;
        e = context.getResources().getDimensionPixelSize(at.nux_bubble_nub_width);
        h = context.getResources().getDimensionPixelSize(at.nux_bubble_nub_minimum_spacing);
        i = d - e / 2 - h;
        setTouchable(false);
    }

    public final void a(View view, int j)
    {
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        int k = (ai[0] + view.getWidth() / 2) - j;
        int l = k - d / 2;
        int i1 = Math.max(0, Math.min(c - d, l));
        a.setPadding(i1, 0, 0, b - ai[1]);
        if (k < f || k > g)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)a.findViewById(av.nux_bubble_nub).getLayoutParams();
            layoutparams.gravity = 3;
            layoutparams.leftMargin = Math.max(h, Math.min(i, k - e / 2 - i1));
        }
    }
}
