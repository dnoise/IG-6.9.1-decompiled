// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.database.DataSetObserver;

// Referenced classes of package com.instagram.android.directshare.c:
//            c

final class e extends DataSetObserver
{

    final c a;

    e(c c1)
    {
        a = c1;
        super();
    }

    public final void onChanged()
    {
        c.j(a);
    }
}
