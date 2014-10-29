// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.f;

import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.impl.client.DefaultHttpClient;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpRequestExecutor;
import com.instagram.api.g.j;
import com.instagram.api.g.m;

// Referenced classes of package com.instagram.api.f:
//            a

final class b extends DefaultHttpClient
{

    final a a;

    b(a a1, ClientConnectionManager clientconnectionmanager, HttpParams httpparams)
    {
        a = a1;
        super(clientconnectionmanager, httpparams);
    }

    protected final HttpRequestExecutor createRequestExecutor()
    {
        return new m(j.a(com.instagram.api.f.a.a(a)));
    }
}
