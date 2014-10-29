// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.entity;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.client.entity:
//            DecompressingEntity

public class DeflateDecompressingEntity extends DecompressingEntity
{

    public DeflateDecompressingEntity(HttpEntity httpentity)
    {
        super(httpentity);
    }

    public volatile InputStream getContent()
    {
        return super.getContent();
    }

    public Header getContentEncoding()
    {
        return null;
    }

    public long getContentLength()
    {
        return -1L;
    }

    InputStream getDecompressingInputStream(InputStream inputstream)
    {
        byte abyte0[];
        PushbackInputStream pushbackinputstream;
        int i;
        byte abyte1[];
        Inflater inflater;
        abyte0 = new byte[6];
        pushbackinputstream = new PushbackInputStream(inputstream, 6);
        i = pushbackinputstream.read(abyte0);
        if (i == -1)
        {
            throw new IOException("Unable to read the response");
        }
        abyte1 = new byte[1];
        inflater = new Inflater();
_L2:
        int j;
        try
        {
            j = inflater.inflate(abyte1);
        }
        catch (DataFormatException dataformatexception)
        {
            pushbackinputstream.unread(abyte0, 0, i);
            return new InflaterInputStream(pushbackinputstream, new Inflater(true));
        }
        if (j != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (inflater.finished())
        {
            throw new IOException("Unable to read the response");
        }
        if (inflater.needsDictionary())
        {
            break; /* Loop/switch isn't completed */
        }
        if (inflater.needsInput())
        {
            inflater.setInput(abyte0);
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        throw new IOException("Unable to read the response");
        InflaterInputStream inflaterinputstream;
        pushbackinputstream.unread(abyte0, 0, i);
        inflaterinputstream = new InflaterInputStream(pushbackinputstream);
        return inflaterinputstream;
    }

    public volatile void writeTo(OutputStream outputstream)
    {
        super.writeTo(outputstream);
    }
}
