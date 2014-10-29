// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.database.DataSetObserver;
import com.instagram.a.f;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class k extends DataSetObserver
{

    final a a;

    k(a a1)
    {
        a = a1;
        super();
    }

    public final void onChanged()
    {
        f.a(a.l()).b();
    }
}
