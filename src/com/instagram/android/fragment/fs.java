// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            fo, fy

final class fs
    implements android.view.View.OnClickListener
{

    final fo a;

    fs(fo fo1)
    {
        a = fo1;
        super();
    }

    public final void onClick(View view)
    {
        if (fo.f(a))
        {
            (new a(a.p())).a(new fy()).a();
            return;
        } else
        {
            fo.g(a);
            return;
        }
    }
}
