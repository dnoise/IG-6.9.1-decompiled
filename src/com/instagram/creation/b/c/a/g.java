// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import com.instagram.common.a.f.e;
import com.instagram.common.a.f.j;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

public final class g
    implements HttpEntity, e
{

    private final File a;
    private final int b;
    private final int c;
    private j d;

    public g(File file, int i, int k)
    {
        d = j.a;
        a = file;
        b = i;
        c = k;
    }

    public final void a(j j1)
    {
        d = j1;
    }

    public final void consumeContent()
    {
    }

    public final InputStream getContent()
    {
        throw new UnsupportedOperationException("Unsupported");
    }

    public final Header getContentEncoding()
    {
        return null;
    }

    public final long getContentLength()
    {
        return (long)c;
    }

    public final Header getContentType()
    {
        return new BasicHeader("Content-Type", "application/octet-stream");
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
        return true;
    }

    public final void writeTo(OutputStream outputstream)
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile(a, "r");
        long l;
        byte abyte0[];
        int i;
        randomaccessfile.seek(b);
        l = randomaccessfile.length();
        abyte0 = new byte[4096];
        i = c;
        d.a(b, l);
_L1:
        int k = randomaccessfile.read(abyte0, 0, Math.min(i, 4096));
        if (k == -1 || i <= 0)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        outputstream.write(abyte0, 0, k);
        i -= k;
        d.a((b + c) - i, l);
          goto _L1
        Exception exception;
        exception;
        randomaccessfile.close();
        throw exception;
        outputstream.flush();
        randomaccessfile.close();
        return;
    }
}
