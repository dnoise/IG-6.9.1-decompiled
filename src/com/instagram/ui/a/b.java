// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.a;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.instagram.ui.a:
//            a

public final class b
{

    public static void a(View view, int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            b(view, i);
            return;
        }
        if (i == 0)
        {
            view.clearAnimation();
            return;
        } else
        {
            c(view, i);
            return;
        }
    }

    private static void b(View view, int i)
    {
        view.setY(i);
    }

    private static void c(View view, int i)
    {
        Object obj = view.getAnimation();
        if (obj instanceof a)
        {
            ((a)obj).b(i);
            ((a)obj).c(i);
        } else
        {
            obj = new a(i, i);
        }
        ((Animation) (obj)).setDuration(0L);
        ((Animation) (obj)).setFillAfter(true);
        ((Animation) (obj)).setFillBefore(true);
        ((Animation) (obj)).setFillEnabled(true);
        view.clearAnimation();
        view.startAnimation(((Animation) (obj)));
    }
}
