// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import com.instagram.api.f.a;
import com.instagram.common.l.a.b;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.feed.c:
//            l

final class m
    implements Runnable
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public final void run()
    {
        List list;
        list = com.instagram.feed.c.l.a(a);
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_142;
        }
        this;
        JVM INSTR monitorenter ;
        if (com.instagram.feed.c.l.b(a) == null)
        {
            new a(l.c(a));
            com.instagram.feed.c.l.a(a, com.instagram.api.f.a.b());
        }
        this;
        JVM INSTR monitorexit ;
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            try
            {
                com.instagram.feed.c.l.b(a).execute(new HttpGet(s));
            }
            catch (IOException ioexception)
            {
                com.instagram.feed.c.l.b();
            }
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        throw exception;
        com.instagram.feed.c.l.b();
        b.a().a(list);
    }
}
