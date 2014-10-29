// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

// Referenced classes of package android.support.v4.view:
//            an, av

class ao extends an
{

    ao()
    {
    }

    final long a()
    {
        return av.a();
    }

    public final void a(View view, int i, Paint paint)
    {
        av.a(view, i, paint);
    }

    public void a(View view, Paint paint)
    {
        a(view, d(view), paint);
        view.invalidate();
    }

    public final int d(View view)
    {
        return av.a(view);
    }
}
