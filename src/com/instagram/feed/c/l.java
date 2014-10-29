// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import android.content.Context;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.e;
import com.instagram.common.n.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.feed.c:
//            m, o, n, a, 
//            h

public final class l
    implements e
{

    private static final Class a = com/instagram/feed/c/l;
    private static l b;
    private final com.fasterxml.jackson.a.e c;
    private final Context d;
    private final Runnable e = new m(this);
    private HttpClient f;
    private List g;

    private l(Context context)
    {
        c = a.a;
        d = context;
    }

    static HttpClient a(l l1, HttpClient httpclient)
    {
        l1.f = httpclient;
        return httpclient;
    }

    public static l a()
    {
        if (b == null)
        {
            d();
        }
        return b;
    }

    static List a(l l1)
    {
        return l1.c();
    }

    static HttpClient b(l l1)
    {
        return l1.f;
    }

    static Class b()
    {
        return a;
    }

    static Context c(l l1)
    {
        return l1.d;
    }

    private List c()
    {
        this;
        JVM INSTR monitorenter ;
        List list;
        list = g;
        g = null;
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    private static void d()
    {
        com/instagram/feed/c/l;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new l(com.instagram.common.h.a.a());
            com.instagram.common.analytics.a.a().a(b);
        }
        com/instagram/feed/c/l;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(HttpResponse httpresponse)
    {
        n n1;
        if (httpresponse.getEntity() == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        java.io.InputStream inputstream = httpresponse.getEntity().getContent();
        com.fasterxml.jackson.a.l l1 = c.createParser(inputstream);
        l1.nextToken();
        n1 = com.instagram.feed.c.o.a(l1);
        if (n1 != null)
        {
            try
            {
                if (n1.a() != null && n1.a().a() != null)
                {
                    a(((Collection) (n1.a().a().a())));
                }
            }
            catch (IOException ioexception)
            {
                a;
            }
        }
        if (g != null)
        {
            com.instagram.common.y.c.a.a().execute(e);
        }
        return;
    }

    public final void a(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        if (collection == null) goto _L2; else goto _L1
_L1:
        boolean flag = collection.isEmpty();
        if (!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (g == null)
        {
            g = new ArrayList();
        }
        g.addAll(collection);
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

}
