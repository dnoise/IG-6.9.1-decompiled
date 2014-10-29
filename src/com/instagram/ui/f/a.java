// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.f;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;

// Referenced classes of package com.instagram.ui.f:
//            b, f

public final class a
{

    private View a;
    private f b;
    private PopupWindow c;
    private int d;

    private a()
    {
        d = 0;
    }

    public static a a()
    {
        return new a();
    }

    public final a a(View view)
    {
        a = view;
        return this;
    }

    public final a a(f f)
    {
        b = f;
        return this;
    }

    public final b a(Context context)
    {
        if (c == null)
        {
            if (android.os.Build.VERSION.SDK_INT < 14)
            {
                c = new PopupWindow(new View(context));
            } else
            {
                c = new PopupWindow();
            }
        }
        c.setClippingEnabled(false);
        c.setInputMethodMode(d);
        return new b(a, b, c);
    }

    public final a b()
    {
        d = 1;
        return this;
    }
}
