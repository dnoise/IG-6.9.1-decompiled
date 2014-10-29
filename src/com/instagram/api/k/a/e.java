// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import com.fasterxml.jackson.a.l;
import com.instagram.common.a.a.n;
import com.instagram.common.n.a;
import java.io.IOException;

// Referenced classes of package com.instagram.api.k.a:
//            a, g, d

final class e
    implements n
{

    private com.instagram.api.k.a.a a;

    e(com.instagram.api.k.a.a a1)
    {
        a = a1;
    }

    private d b(HttpResponse httpresponse)
    {
        l l1 = null;
        java.io.InputStream inputstream;
        java.io.File file;
        inputstream = httpresponse.getEntity().getContent();
        file = a.f();
        l1 = null;
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        Object obj = new g(inputstream, file);
_L2:
        l1 = a.a.createParser(((java.io.InputStream) (obj)));
        l1.nextToken();
        if (l1.getCurrentToken() == null)
        {
            throw new IOException("Response body is empty");
        }
          goto _L1
        Exception exception;
        exception;
        com.instagram.common.l.c.a.a(l1);
        throw exception;
_L1:
        d d1;
        d1 = a.a(l1);
        d1.a(httpresponse.getStatusLine().getStatusCode());
        com.instagram.common.l.c.a.a(l1);
        return d1;
        obj = inputstream;
          goto _L2
    }

    public final Object a(HttpResponse httpresponse)
    {
        return b(httpresponse);
    }
}
