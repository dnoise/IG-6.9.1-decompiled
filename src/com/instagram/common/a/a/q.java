// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.l;
import com.instagram.common.n.a;

// Referenced classes of package com.instagram.common.a.a:
//            n, p, m

public abstract class q
    implements n, p
{

    public q()
    {
    }

    private static m a(HttpResponse httpresponse, p p1)
    {
        l l1 = null;
        HttpEntity httpentity = httpresponse.getEntity();
        l1 = null;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        java.io.InputStream inputstream = httpentity.getContent();
        l1 = a.a.createParser(inputstream);
        l1.nextToken();
        m m1;
        m1 = (m)p1.a(l1);
        m1.a(httpresponse.getStatusLine().getStatusCode());
        com.instagram.common.l.c.a.a(l1);
        return m1;
        Exception exception;
        exception;
        com.instagram.common.l.c.a.a(l1);
        throw exception;
    }

    private m b(HttpResponse httpresponse)
    {
        return a(httpresponse, this);
    }

    public final Object a(HttpResponse httpresponse)
    {
        return b(httpresponse);
    }
}
