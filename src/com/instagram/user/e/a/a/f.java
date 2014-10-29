// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.e.a.a;

import android.view.View;
import android.widget.TextView;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.user.follow.FollowButton;

public final class f
{

    private View a;
    private CircularImageView b;
    private TextView c;
    private TextView d;
    private View e;
    private View f;
    private View g;
    private FollowButton h;

    public f()
    {
    }

    static View a(f f1)
    {
        return f1.a;
    }

    static View a(f f1, View view)
    {
        f1.a = view;
        return view;
    }

    static TextView a(f f1, TextView textview)
    {
        f1.c = textview;
        return textview;
    }

    static CircularImageView a(f f1, CircularImageView circularimageview)
    {
        f1.b = circularimageview;
        return circularimageview;
    }

    static FollowButton a(f f1, FollowButton followbutton)
    {
        f1.h = followbutton;
        return followbutton;
    }

    static View b(f f1, View view)
    {
        f1.e = view;
        return view;
    }

    static TextView b(f f1, TextView textview)
    {
        f1.d = textview;
        return textview;
    }

    static CircularImageView b(f f1)
    {
        return f1.b;
    }

    static View c(f f1, View view)
    {
        f1.f = view;
        return view;
    }

    static TextView c(f f1)
    {
        return f1.c;
    }

    static View d(f f1, View view)
    {
        f1.g = view;
        return view;
    }

    static TextView d(f f1)
    {
        return f1.d;
    }

    static View e(f f1)
    {
        return f1.f;
    }

    static View f(f f1)
    {
        return f1.g;
    }

    static FollowButton g(f f1)
    {
        return f1.h;
    }

    static View h(f f1)
    {
        return f1.e;
    }
}
