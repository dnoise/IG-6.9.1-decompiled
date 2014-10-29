// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import android.content.Context;
import com.facebook.b.b;
import com.instagram.common.c.a;
import com.instagram.common.i.c;

final class f extends a
{

    private final Context a;

    public f(Context context)
    {
        a = context;
    }

    private transient Void c()
    {
        String s1 = b.a(a.getContentResolver());
        String s = s1;
_L2:
        if (s != null)
        {
            com.instagram.l.a.b.a().c(s);
            com.instagram.service.a.a.a();
            if (!com.instagram.service.a.a.d())
            {
                com.instagram.p.b.aB.b().a("attribution_id", s).a();
            }
        }
        return null;
        RuntimeException runtimeexception;
        runtimeexception;
        com.facebook.e.a.a.a("FacebookAccount", "error fetching attributionId", runtimeexception);
        com.instagram.common.i.c.a("facebook-sdk", "failed to fetch attributionId", runtimeexception);
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected final Object a(Object aobj[])
    {
        return c();
    }
}
