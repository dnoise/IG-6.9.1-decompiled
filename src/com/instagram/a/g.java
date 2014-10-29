// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import android.graphics.drawable.Drawable;
import android.view.View;

// Referenced classes of package com.instagram.a:
//            f

final class g
    implements android.view.View.OnFocusChangeListener
{

    final f a;

    g(f f)
    {
        a = f;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        Drawable drawable = view.getBackground();
        byte byte0;
        if (flag)
        {
            byte0 = 77;
        } else
        {
            byte0 = 51;
        }
        drawable.setAlpha(byte0);
    }
}
