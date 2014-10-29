// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import android.view.View;
import android.widget.TextView;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.user.follow.FollowButton;

public final class h
{

    private View a;
    private View b;
    private CircularImageView c;
    private TextView d;
    private TextView e;
    private FollowButton f;
    private View g;
    private View h;

    public h()
    {
    }

    static View a(h h1)
    {
        return h1.h;
    }

    static View a(h h1, View view)
    {
        h1.a = view;
        return view;
    }

    static TextView a(h h1, TextView textview)
    {
        h1.d = textview;
        return textview;
    }

    static CircularImageView a(h h1, CircularImageView circularimageview)
    {
        h1.c = circularimageview;
        return circularimageview;
    }

    static FollowButton a(h h1, FollowButton followbutton)
    {
        h1.f = followbutton;
        return followbutton;
    }

    static View b(h h1)
    {
        return h1.a;
    }

    static View b(h h1, View view)
    {
        h1.b = view;
        return view;
    }

    static TextView b(h h1, TextView textview)
    {
        h1.e = textview;
        return textview;
    }

    static View c(h h1)
    {
        return h1.b;
    }

    static View c(h h1, View view)
    {
        h1.g = view;
        return view;
    }

    static View d(h h1, View view)
    {
        h1.h = view;
        return view;
    }

    static CircularImageView d(h h1)
    {
        return h1.c;
    }

    static TextView e(h h1)
    {
        return h1.d;
    }

    static TextView f(h h1)
    {
        return h1.e;
    }

    static FollowButton g(h h1)
    {
        return h1.f;
    }

    static View h(h h1)
    {
        return h1.g;
    }
}
