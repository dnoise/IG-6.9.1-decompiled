// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.a;

import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.impl.client.DefaultHttpClient;
import ch.boye.httpclientandroidlib.params.HttpParams;

// Referenced classes of package com.instagram.common.g.a:
//            c

public final class e
    implements c
{

    public e()
    {
    }

    public final HttpClient a(ClientConnectionManager clientconnectionmanager, HttpParams httpparams)
    {
        return new DefaultHttpClient(clientconnectionmanager, httpparams);
    }
}
