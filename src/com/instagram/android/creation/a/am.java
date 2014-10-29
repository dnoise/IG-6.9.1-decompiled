// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.Intent;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.creation.a:
//            ah

final class am
    implements a
{

    final ah a;

    private am(ah ah1)
    {
        a = ah1;
        super();
    }

    am(ah ah1, byte byte0)
    {
        this(ah1);
    }

    public final void a(Intent intent)
    {
        boolean flag = intent.getBooleanExtra("MetadataFragment.IS_DS_SHARE_ENABLED", false);
        a.c(flag);
    }
}
