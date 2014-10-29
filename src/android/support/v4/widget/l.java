// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.widget.Scroller;

// Referenced classes of package android.support.v4.widget:
//            k

final class l
    implements k
{

    l()
    {
    }

    public final void a(Object obj, int i, int j, int i1, int j1, int k1)
    {
        ((Scroller)obj).startScroll(i, j, i1, j1, k1);
    }

    public final boolean a(Object obj)
    {
        return ((Scroller)obj).isFinished();
    }

    public final int b(Object obj)
    {
        return ((Scroller)obj).getCurrX();
    }

    public final int c(Object obj)
    {
        return ((Scroller)obj).getCurrY();
    }

    public final boolean d(Object obj)
    {
        return ((Scroller)obj).computeScrollOffset();
    }

    public final void e(Object obj)
    {
        ((Scroller)obj).abortAnimation();
    }

    public final int f(Object obj)
    {
        return ((Scroller)obj).getFinalX();
    }

    public final int g(Object obj)
    {
        return ((Scroller)obj).getFinalY();
    }
}
