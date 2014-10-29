// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.entity;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.entity.HttpEntityWrapper;
import java.io.InputStream;
import java.io.OutputStream;

abstract class DecompressingEntity extends HttpEntityWrapper
{

    private static final int BUFFER_SIZE = 2048;
    private InputStream content;

    public DecompressingEntity(HttpEntity httpentity)
    {
        super(httpentity);
    }

    public InputStream getContent()
    {
        if (wrappedEntity.isStreaming())
        {
            if (content == null)
            {
                content = getDecompressingInputStream(wrappedEntity.getContent());
            }
            return content;
        } else
        {
            return getDecompressingInputStream(wrappedEntity.getContent());
        }
    }

    abstract InputStream getDecompressingInputStream(InputStream inputstream);

    public void writeTo(OutputStream outputstream)
    {
        InputStream inputstream;
        if (outputstream == null)
        {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        inputstream = getContent();
        byte abyte0[] = new byte[2048];
_L1:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        outputstream.write(abyte0, 0, i);
          goto _L1
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
        inputstream.close();
        return;
    }
}
