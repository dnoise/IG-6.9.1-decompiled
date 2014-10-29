// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.instagram.android.feed.ui:
//            a, b

public final class e extends a
{

    private int b;

    public e(Drawable drawable, int i)
    {
        super(drawable);
        b = i;
    }

    protected final void a()
    {
        Rect rect = getBounds();
        int i = a.a.getLevel();
        int j = (int)((double)((rect.width() + b) * (i % 5000)) / 5000D);
        a.a.setBounds(j + -b, rect.top, j, rect.bottom);
    }
}
