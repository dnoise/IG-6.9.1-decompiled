// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.receiver;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.instagram.android.c2dm.c;
import com.instagram.common.u.b.a;
import com.instagram.common.u.b.e;
import com.instagram.common.u.b.f;

public class C2DMReceiver extends a
{

    public C2DMReceiver()
    {
    }

    public final void a(Context context, String s)
    {
        c.a();
        c.a(context, s, f.a(context).h());
    }

    protected final void a(Intent intent)
    {
        intent.getExtras().getString("data");
        c.a().a(intent);
    }

    public final void a(String s)
    {
    }
}
