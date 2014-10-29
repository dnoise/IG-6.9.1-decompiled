// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.support.v4.view.ak;
import android.view.View;

// Referenced classes of package android.support.v4.widget:
//            t, SlidingPaneLayout

class u
    implements t
{

    u()
    {
    }

    public void a(SlidingPaneLayout slidingpanelayout, View view)
    {
        ak.a(slidingpanelayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }
}
