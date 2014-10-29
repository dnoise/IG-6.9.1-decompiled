// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b.b;

import android.content.Context;
import com.facebook.d.b.b;
import com.instagram.common.u.b.c;
import com.instagram.common.u.b.e;
import com.instagram.common.u.b.f;
import com.instagram.common.u.b.h;

public final class a
    implements h
{

    public a()
    {
    }

    public final void a(Context context)
    {
        e e1 = f.a(context);
        if (e1 != null)
        {
            c.a(context, e1.g());
            return;
        } else
        {
            com.instagram.common.i.c.a().b("Push", "Push not initialized for device type");
            return;
        }
    }
}
