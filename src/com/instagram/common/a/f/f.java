// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

// Referenced classes of package com.instagram.common.a.f:
//            e, j, i, h, 
//            g, b, c

public final class f
    implements HttpEntity, e
{

    private static final char a[] = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private final Header b;
    private final b c;
    private final b d;
    private boolean e;
    private j f;
    private final List g = new LinkedList();

    public f()
    {
        e = false;
        f = j.a;
        StringBuilder stringbuilder = new StringBuilder();
        Random random = new Random();
        for (int k = 0; k < 30; k++)
        {
            stringbuilder.append(a[random.nextInt(a.length)]);
        }

        String s = stringbuilder.toString();
        b = new BasicHeader("Content-Type", (new StringBuilder("multipart/form-data; boundary=")).append(s).toString());
        c = new i(new String[] {
            "--", s, "\r\n"
        });
        d = new i(new String[] {
            "--", s, "--", "\r\n"
        });
    }

    public final void a(j j1)
    {
        f = j1;
    }

    public final void a(String s, h h1)
    {
        g.add(c);
        String as[] = new String[12];
        as[0] = "Content-Disposition: form-data; name=\"";
        as[1] = s;
        as[2] = "\"; filename=\"";
        as[3] = h1.a();
        as[4] = "\"";
        as[5] = "\r\n";
        as[6] = "Content-Type: ";
        as[7] = h1.c();
        as[8] = "\r\n";
        as[9] = "Content-Transfer-Encoding: binary";
        as[10] = "\r\n";
        as[11] = "\r\n";
        i k = new i(as);
        g.add(k);
        g.add(new g(h1));
        g.add(new i(new String[] {
            "\r\n"
        }));
        e = true;
    }

    public final void a(String s, String s1)
    {
        g.add(c);
        i k = new i(new String[] {
            "Content-Disposition: form-data; name=\"", s, "\"", "\r\n", "\r\n", s1, "\r\n"
        });
        g.add(k);
    }

    public final void consumeContent()
    {
    }

    public final InputStream getContent()
    {
        throw new UnsupportedOperationException("getContent circumvents upload progress listening");
    }

    public final Header getContentEncoding()
    {
        return null;
    }

    public final long getContentLength()
    {
        Iterator iterator = g.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((b)iterator.next()).a()) { }
        return l + d.a();
    }

    public final Header getContentType()
    {
        return b;
    }

    public final boolean isChunked()
    {
        return false;
    }

    public final boolean isRepeatable()
    {
        return true;
    }

    public final boolean isStreaming()
    {
        return e;
    }

    public final void writeTo(OutputStream outputstream)
    {
        long l = 0L;
        long l1 = getContentLength();
        f.a(l, l1);
        for (Iterator iterator = g.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            b1.a(outputstream, new c(f, l, l1));
            l += b1.a();
        }

        d.a(outputstream, new c(f, l, l1));
        e = false;
    }

}
