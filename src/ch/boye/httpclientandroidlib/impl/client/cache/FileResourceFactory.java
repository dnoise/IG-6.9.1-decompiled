// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.client.cache.InputLimit;
import ch.boye.httpclientandroidlib.client.cache.Resource;
import ch.boye.httpclientandroidlib.client.cache.ResourceFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            BasicIdGenerator, FileResource, IOUtils

public class FileResourceFactory
    implements ResourceFactory
{

    private final File cacheDir;
    private final BasicIdGenerator idgen = new BasicIdGenerator();

    public FileResourceFactory(File file)
    {
        cacheDir = file;
    }

    private File generateUniqueCacheFile(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        idgen.generate(stringbuilder);
        stringbuilder.append('.');
        int i = Math.min(s.length(), 100);
        int j = 0;
        while (j < i) 
        {
            char c = s.charAt(j);
            if (Character.isLetterOrDigit(c) || c == '.')
            {
                stringbuilder.append(c);
            } else
            {
                stringbuilder.append('-');
            }
            j++;
        }
        return new File(cacheDir, stringbuilder.toString());
    }

    public Resource copy(String s, Resource resource)
    {
        File file = generateUniqueCacheFile(s);
        if (resource instanceof FileResource)
        {
            IOUtils.copyFile(((FileResource)resource).getFile(), file);
        } else
        {
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            IOUtils.copyAndClose(resource.getInputStream(), fileoutputstream);
        }
        return new FileResource(file);
    }

    public Resource generate(String s, InputStream inputstream, InputLimit inputlimit)
    {
        File file;
        FileOutputStream fileoutputstream;
        file = generateUniqueCacheFile(s);
        fileoutputstream = new FileOutputStream(file);
        byte abyte0[] = new byte[2048];
        long l = 0L;
_L2:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        fileoutputstream.write(abyte0, 0, i);
        l += i;
        if (inputlimit == null) goto _L2; else goto _L1
_L1:
        if (l <= inputlimit.getValue()) goto _L2; else goto _L3
_L3:
        inputlimit.reached();
        fileoutputstream.close();
        return new FileResource(file);
        Exception exception;
        exception;
        fileoutputstream.close();
        throw exception;
    }
}
