// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Intent;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.directshare.c:
//            c, a

final class m
    implements a
{

    final c a;

    private m(c c1)
    {
        a = c1;
        super();
    }

    m(c c1, byte byte0)
    {
        this(c1);
    }

    public final void a(Intent intent)
    {
        String s = intent.getAction();
        if (!"InboxFragment.UPDATE_INBOX".equals(s)) goto _L2; else goto _L1
_L1:
        c.c(a).notifyDataSetChanged();
_L4:
        return;
_L2:
        if (!"InboxFragment.INBOX_SHARE_COUNT_CHANGED".equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!a.u()) goto _L4; else goto _L3
_L3:
        com.instagram.android.directshare.f.a.a().b();
        return;
        if (!"INTENT_ACTION_PENDING_REQUEST_ACCEPTED".equals(s)) goto _L4; else goto _L5
_L5:
        c.i(a);
        return;
    }
}
