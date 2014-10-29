// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.instagram.creation.video.a;

// Referenced classes of package com.instagram.creation.video.ui:
//            m, n

public final class l extends PopupWindow
{

    private final a a;
    private float b;
    private float c;

    public l(Context context, a a1, View view)
    {
        super(new FrameLayout(context), -1, -1);
        a = a1;
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        getContentView().setOnTouchListener(new m(this, rect, view));
        getContentView().setOnClickListener(new n(this, rect, view));
    }

    static float a(l l1)
    {
        return l1.b;
    }

    static float a(l l1, float f)
    {
        l1.b = f;
        return f;
    }

    static float b(l l1)
    {
        return l1.c;
    }

    static float b(l l1, float f)
    {
        l1.c = f;
        return f;
    }

    static a c(l l1)
    {
        return l1.a;
    }
}
