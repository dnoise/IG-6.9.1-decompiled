// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.View;
import com.instagram.creation.video.a.a;
import com.instagram.creation.video.gl.GLRootView;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class p
    implements android.view.View.OnLayoutChangeListener
{

    final com.instagram.creation.video.f.a a;

    p(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    public final void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        if (i == 0 && j == 0 && k == 0 && l == 0)
        {
            return;
        } else
        {
            int i2 = k - i;
            int j2 = l - j;
            a.b.b(i2, j2);
            com.instagram.creation.video.f.a.k(a).a();
            return;
        }
    }
}
