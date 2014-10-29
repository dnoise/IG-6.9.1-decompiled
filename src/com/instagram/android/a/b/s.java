// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.View;
import com.instagram.common.analytics.b;
import com.instagram.creation.b.c.a;

final class s
    implements android.view.View.OnClickListener
{

    final a a;
    final com.instagram.creation.b.a.b b;
    final Context c;

    s(a a1, com.instagram.creation.b.a.b b1, Context context)
    {
        a = a1;
        b = b1;
        c = context;
        super();
    }

    public final void onClick(View view)
    {
        a.g(b);
        com.instagram.p.a.f.b().a("reason", "pending_media_cancel_tap").a();
        com.instagram.b.b.a.a((new b("pending_media_cancel_click", com.instagram.b.b.a.a(c))).a("media_type", b.n().toString()).a("upload_id", b.b()), c).a();
    }
}
