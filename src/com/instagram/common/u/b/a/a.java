// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b.a;

import android.content.Context;
import com.amazon.device.messaging.ADM;
import com.instagram.common.u.b.h;

public final class a
    implements h
{

    public a()
    {
    }

    public final void a(Context context)
    {
        (new ADM(context)).startRegister();
    }
}
