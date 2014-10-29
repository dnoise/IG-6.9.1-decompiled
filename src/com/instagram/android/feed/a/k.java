// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.view.View;
import com.instagram.android.feed.a.b.j;
import com.instagram.android.feed.a.b.l;
import com.instagram.android.fragment.a;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.feed.a:
//            m

public final class k extends m
{

    public k(a a1, int i)
    {
        super(a1, i);
    }

    protected final View a(Context context)
    {
        return j.a(context);
    }

    protected final void b(Context context, View view, int i)
    {
        j.a((l)view.getTag(), (Venue)getItem(i), a.l(), this);
    }
}
