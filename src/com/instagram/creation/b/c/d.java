// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c;

import android.content.Context;
import com.instagram.b.b.a;
import com.instagram.common.analytics.b;

public final class d
{

    private Context a;

    public d(Context context)
    {
        a = context.getApplicationContext();
    }

    public final void a(com.instagram.creation.b.a.b b1, com.instagram.creation.b.a.d d1, com.instagram.creation.b.a.d d2, long l)
    {
        com.instagram.b.b.a.a((new b("pending_media_process", null)).a("upload_id", b1.b()).a("media_type", String.valueOf(b1.n())).a("is_direct_share", String.valueOf(b1.P())).a("target", String.valueOf(b1.A())).a("from", String.valueOf(d1)).a("to", String.valueOf(d2)).a("duration_in_ms", l), a).a();
    }

    public final void a(com.instagram.creation.b.a.b b1, String s)
    {
        if (com.instagram.common.y.g.a.a(a))
        {
            b b2 = new b("media_upload_failure", null);
            b2.a("media_type", String.valueOf(b1.n()));
            if (s != null)
            {
                b2.a("reason", s);
            }
            b2.a("upload_id", b1.b());
            com.instagram.common.analytics.a.a().a(b2);
        }
    }
}
