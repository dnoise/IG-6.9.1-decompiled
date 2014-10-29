// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.instagram.common.a.b.a;
import com.instagram.common.i.c;
import com.instagram.common.l.a.e;
import java.io.IOException;
import java.net.URI;

// Referenced classes of package com.instagram.common.a.a:
//            a, n

final class l
{

    static e a(com.instagram.common.a.a.a a1)
    {
        HttpResponse httpresponse;
        n n1;
        httpresponse = com.instagram.common.a.b.a.a().a(a1);
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        n1 = a1.d();
        if (n1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        e e1 = e.a(n1.a(httpresponse));
        Exception exception;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception2;
        try
        {
            EntityUtils.consume(httpresponse.getEntity());
        }
        catch (IOException ioexception3)
        {
            return e1;
        }
        return e1;
        ioexception1;
        c.b("network_request", URI.create(a1.g_()).getPath(), ioexception1);
        try
        {
            EntityUtils.consume(httpresponse.getEntity());
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2) { }
        return e.c();
        exception;
        try
        {
            EntityUtils.consume(httpresponse.getEntity());
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        throw exception;
    }
}
