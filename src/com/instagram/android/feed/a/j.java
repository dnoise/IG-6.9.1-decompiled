// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.view.View;
import com.instagram.android.feed.a.b.h;
import com.instagram.android.feed.a.b.i;
import com.instagram.android.fragment.a;
import com.instagram.android.g.c;

// Referenced classes of package com.instagram.android.feed.a:
//            m

public final class j extends m
{

    public j(a a1, int k)
    {
        super(a1, k);
    }

    protected final View a(Context context)
    {
        return h.a(context);
    }

    protected final void b(Context context, View view, int k)
    {
        h.a((i)view.getTag(), (c)getItem(k), context, this);
    }
}
