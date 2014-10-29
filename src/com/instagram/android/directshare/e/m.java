// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.content.Intent;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.directshare.e:
//            b

final class m
    implements a
{

    final b a;

    private m(b b1)
    {
        a = b1;
        super();
    }

    m(b b1, byte byte0)
    {
        this(b1);
    }

    public final void a(Intent intent)
    {
        if ("INTENT_ACTION_PENDING_REQUESTS_UPDATED".equals(intent.getAction()))
        {
            com.instagram.android.directshare.e.b.a(a);
        }
    }
}
