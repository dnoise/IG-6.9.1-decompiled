// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.params.HttpParams;
import com.instagram.api.f.a;
import com.instagram.common.g.a.c;

// Referenced classes of package com.instagram.android.app:
//            InstagramApplicationForMainProcess

final class d
    implements c
{

    final InstagramApplicationForMainProcess a;

    d(InstagramApplicationForMainProcess instagramapplicationformainprocess)
    {
        a = instagramapplicationformainprocess;
        super();
    }

    public final HttpClient a(ClientConnectionManager clientconnectionmanager, HttpParams httpparams)
    {
        return (new a(InstagramApplicationForMainProcess.access$100(a))).a(clientconnectionmanager, httpparams);
    }
}
