// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.client.cache.InputLimit;
import ch.boye.httpclientandroidlib.client.cache.Resource;
import ch.boye.httpclientandroidlib.client.cache.ResourceFactory;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            HeapResource, IOUtils

public class HeapResourceFactory
    implements ResourceFactory
{

    public HeapResourceFactory()
    {
    }

    public Resource copy(String s, Resource resource)
    {
        byte abyte0[];
        if (resource instanceof HeapResource)
        {
            abyte0 = ((HeapResource)resource).getByteArray();
        } else
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            IOUtils.copyAndClose(resource.getInputStream(), bytearrayoutputstream);
            abyte0 = bytearrayoutputstream.toByteArray();
        }
        return new HeapResource(abyte0);
    }

    public Resource generate(String s, InputStream inputstream, InputLimit inputlimit)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[2048];
        long l = 0L;
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            bytearrayoutputstream.write(abyte0, 0, i);
            l += i;
            if (inputlimit == null || l <= inputlimit.getValue())
            {
                continue;
            }
            inputlimit.reached();
            break;
        } while (true);
        return new HeapResource(bytearrayoutputstream.toByteArray());
    }
}
