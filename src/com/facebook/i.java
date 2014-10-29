// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.os.Bundle;
import com.facebook.widget.h;
import com.facebook.widget.l;

final class i extends l
{

    public i(Context context, String s, Bundle bundle)
    {
        super(context, s, "oauth", bundle);
    }

    public final h a()
    {
        Bundle bundle = e();
        bundle.putString("redirect_uri", "fbconnect://success");
        bundle.putString("client_id", b());
        return new h(c(), "oauth", bundle, d(), f());
    }
}
