// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.view.View;
import android.widget.TextView;
import com.instagram.common.ui.widget.imageview.IgImageView;

public final class ab
{

    private View a;
    private IgImageView b;
    private TextView c;
    private TextView d;
    private View e;

    public ab()
    {
    }

    static View a(ab ab1, View view)
    {
        ab1.a = view;
        return view;
    }

    static TextView a(ab ab1, TextView textview)
    {
        ab1.c = textview;
        return textview;
    }

    static IgImageView a(ab ab1)
    {
        return ab1.b;
    }

    static IgImageView a(ab ab1, IgImageView igimageview)
    {
        ab1.b = igimageview;
        return igimageview;
    }

    static View b(ab ab1, View view)
    {
        ab1.e = view;
        return view;
    }

    static TextView b(ab ab1)
    {
        return ab1.c;
    }

    static TextView b(ab ab1, TextView textview)
    {
        ab1.d = textview;
        return textview;
    }

    static TextView c(ab ab1)
    {
        return ab1.d;
    }

    static View d(ab ab1)
    {
        return ab1.a;
    }

    static View e(ab ab1)
    {
        return ab1.e;
    }
}
