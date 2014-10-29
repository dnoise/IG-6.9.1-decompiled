// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import com.instagram.common.g.a.f;

// Referenced classes of package com.instagram.api.g:
//            b, j

public final class e
    implements f
{

    public static final e a = new e();

    private e()
    {
    }

    public final void a(HttpGet httpget, String s)
    {
        if (!com.instagram.common.y.e.c(s))
        {
            b.a(httpget);
            j.a(httpget, s);
        }
    }

}
