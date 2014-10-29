// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.view.View;
import android.widget.TextView;

public final class n
{

    private View a;
    private TextView b;
    private View c;
    private View d;

    public n()
    {
    }

    static View a(n n1)
    {
        return n1.a;
    }

    static View a(n n1, View view)
    {
        n1.c = view;
        return view;
    }

    static TextView a(n n1, TextView textview)
    {
        n1.b = textview;
        return textview;
    }

    static View b(n n1, View view)
    {
        n1.d = view;
        return view;
    }

    static TextView b(n n1)
    {
        return n1.b;
    }

    static View c(n n1)
    {
        return n1.c;
    }

    static View c(n n1, View view)
    {
        n1.a = view;
        return view;
    }

    static View d(n n1)
    {
        return n1.d;
    }
}
