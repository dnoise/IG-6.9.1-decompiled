// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import android.widget.ImageView;
import com.instagram.common.ui.widget.imageview.IgImageView;

public final class l
{

    View a;
    View b;
    private ImageView c;
    private IgImageView d;

    public l()
    {
    }

    static ImageView a(l l1)
    {
        return l1.c;
    }

    static ImageView a(l l1, ImageView imageview)
    {
        l1.c = imageview;
        return imageview;
    }

    static IgImageView a(l l1, IgImageView igimageview)
    {
        l1.d = igimageview;
        return igimageview;
    }

    static IgImageView b(l l1)
    {
        return l1.d;
    }
}
