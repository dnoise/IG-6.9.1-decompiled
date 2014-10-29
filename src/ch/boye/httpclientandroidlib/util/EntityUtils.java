// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.util;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.NameValuePair;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

// Referenced classes of package ch.boye.httpclientandroidlib.util:
//            ByteArrayBuffer, CharArrayBuffer

public final class EntityUtils
{

    private EntityUtils()
    {
    }

    public static void consume(HttpEntity httpentity)
    {
        if (httpentity != null && httpentity.isStreaming())
        {
            InputStream inputstream = httpentity.getContent();
            if (inputstream != null)
            {
                inputstream.close();
                return;
            }
        }
    }

    public static String getContentCharSet(HttpEntity httpentity)
    {
        if (httpentity == null)
        {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        Header header = httpentity.getContentType();
        String s = null;
        if (header != null)
        {
            HeaderElement aheaderelement[] = httpentity.getContentType().getElements();
            int i = aheaderelement.length;
            s = null;
            if (i > 0)
            {
                NameValuePair namevaluepair = aheaderelement[0].getParameterByName("charset");
                s = null;
                if (namevaluepair != null)
                {
                    s = namevaluepair.getValue();
                }
            }
        }
        return s;
    }

    public static String getContentMimeType(HttpEntity httpentity)
    {
        if (httpentity == null)
        {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        Header header = httpentity.getContentType();
        String s = null;
        if (header != null)
        {
            HeaderElement aheaderelement[] = httpentity.getContentType().getElements();
            int i = aheaderelement.length;
            s = null;
            if (i > 0)
            {
                s = aheaderelement[0].getName();
            }
        }
        return s;
    }

    public static byte[] toByteArray(HttpEntity httpentity)
    {
        int i;
        InputStream inputstream;
        i = 4096;
        if (httpentity == null)
        {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        inputstream = httpentity.getContent();
        if (inputstream == null)
        {
            return null;
        }
        if (httpentity.getContentLength() > 0x7fffffffL)
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        break MISSING_BLOCK_LABEL_61;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
        int j = (int)httpentity.getContentLength();
        ByteArrayBuffer bytearraybuffer;
        byte abyte0[];
        int k;
        byte abyte1[];
        if (j >= 0)
        {
            i = j;
        }
        bytearraybuffer = new ByteArrayBuffer(i);
        abyte0 = new byte[4096];
_L1:
        k = inputstream.read(abyte0);
        if (k == -1)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        bytearraybuffer.append(abyte0, 0, k);
          goto _L1
        abyte1 = bytearraybuffer.toByteArray();
        inputstream.close();
        return abyte1;
    }

    public static String toString(HttpEntity httpentity)
    {
        return toString(httpentity, null);
    }

    public static String toString(HttpEntity httpentity, String s)
    {
        InputStream inputstream;
        if (httpentity == null)
        {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        inputstream = httpentity.getContent();
        if (inputstream == null)
        {
            return null;
        }
        if (httpentity.getContentLength() > 0x7fffffffL)
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
        int i = (int)httpentity.getContentLength();
        int j;
        String s1;
        if (i < 0)
        {
            j = 4096;
        } else
        {
            j = i;
        }
        s1 = getContentCharSet(httpentity);
        InputStreamReader inputstreamreader;
        CharArrayBuffer chararraybuffer;
        char ac[];
        int k;
        String s2;
        if (s1 == null)
        {
            s1 = s;
        }
        if (s1 == null)
        {
            s1 = "ISO-8859-1";
        }
          goto _L1
_L4:
        inputstreamreader = new InputStreamReader(inputstream, s1);
        chararraybuffer = new CharArrayBuffer(j);
        ac = new char[1024];
_L2:
        k = inputstreamreader.read(ac);
        if (k == -1)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        chararraybuffer.append(ac, 0, k);
          goto _L2
        s2 = chararraybuffer.toString();
        inputstream.close();
        return s2;
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }
}
