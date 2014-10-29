// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import android.widget.CheckBox;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.ui.widget.imagebutton.IgImageButton;

public final class w
{

    int a;
    View b;
    IgImageView c[];
    IgImageButton d[];
    CheckBox e[];
    View f[];

    public w(int i)
    {
        c = new IgImageView[i];
        d = new IgImageButton[i];
        e = new CheckBox[i];
        f = new View[i];
        a = i;
    }
}
