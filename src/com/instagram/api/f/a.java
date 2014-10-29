// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.f;

import android.content.Context;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.impl.client.AbstractHttpClient;
import ch.boye.httpclientandroidlib.params.HttpParams;
import com.instagram.common.a.g.d;
import com.instagram.common.s.b;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;

// Referenced classes of package com.instagram.api.f:
//            b, c

public final class a
{

    private final Context a;

    public a(Context context)
    {
        a = context.getApplicationContext();
    }

    static Context a(a a1)
    {
        return a1.a;
    }

    public static HttpClient a()
    {
        return new DefaultHttpClient(new ThreadSafeClientConnManager(new BasicHttpParams(), com.instagram.common.a.g.a.a()), null);
    }

    public static AbstractHttpClient b()
    {
        return new ch.boye.httpclientandroidlib.impl.client.DefaultHttpClient(new ch.boye.httpclientandroidlib.impl.conn.tsccm.ThreadSafeClientConnManager(d.a()));
    }

    public final AbstractHttpClient a(ClientConnectionManager clientconnectionmanager, HttpParams httpparams)
    {
        com.instagram.api.f.b b1 = new com.instagram.api.f.b(this, clientconnectionmanager, httpparams);
        if (com.instagram.common.s.b.b())
        {
            ch.boye.httpclientandroidlib.HttpHost httphost = c.a();
            if (httphost != null)
            {
                b1.getParams().setParameter("http.route.default-proxy", httphost);
            }
        }
        return b1;
    }
}
