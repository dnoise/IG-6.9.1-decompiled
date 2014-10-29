// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.facebook.e.a.a;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.instagram.common.analytics:
//            ab, i, k, m, 
//            e

final class ad
    implements Runnable
{

    final ab a;

    private ad(ab ab1)
    {
        a = ab1;
        super();
    }

    ad(ab ab1, byte byte0)
    {
        this(ab1);
    }

    private void a()
    {
        java.io.File file = null;
        if (ab.d(a) == null || ab.d(a).f() < 5000L)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        HttpResponse httpresponse;
        try
        {
            file = ab.e(a).a(ab.d(a));
            com.instagram.common.analytics.ab.a(a, null);
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a("InstagramAnalyticsLogger", "Unable to store batch", ioexception);
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        httpresponse = ab.f(a).a(file);
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        if (httpresponse.getStatusLine().getStatusCode() == 200 && ab.g(a) != null)
        {
            ab.g(a).a(httpresponse);
        }
        EntityUtils.consume(httpresponse.getEntity());
        return;
        IOException ioexception1;
        ioexception1;
    }

    public final void run()
    {
        ab.b(a).set(false);
        for (; !ab.c(a).isEmpty(); ((Runnable)ab.c(a).remove()).run()) { }
        a();
    }
}
