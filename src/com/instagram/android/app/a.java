// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import com.instagram.common.g.a.f;
import java.net.URI;

// Referenced classes of package com.instagram.android.app:
//            InstagramApplicationForMainProcess

final class a
    implements f
{

    a()
    {
    }

    public final void a(HttpGet httpget, String s)
    {
        if (httpget.getURI().getHost().equalsIgnoreCase("maps.googleapis.com"))
        {
            httpget.addHeader(InstagramApplicationForMainProcess.access$000());
        }
    }
}
