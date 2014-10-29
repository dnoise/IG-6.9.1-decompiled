// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.b.b;
import com.instagram.share.b.a;
import com.instagram.share.b.g;

// Referenced classes of package com.instagram.android.fragment:
//            bp

final class bs
    implements android.view.View.OnClickListener
{

    final bp a;

    bs(bp bp1)
    {
        a = bp1;
        super();
    }

    public final void onClick(View view)
    {
        b b1 = com.instagram.share.b.a.a();
        if (b1.b())
        {
            com.instagram.android.fragment.bp.b(a, b1.c());
            return;
        } else
        {
            b1.a(a, g.a, com.instagram.android.fragment.bp.a(a));
            return;
        }
    }
}
