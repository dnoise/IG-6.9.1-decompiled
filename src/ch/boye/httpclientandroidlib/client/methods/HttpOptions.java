// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.methods;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HeaderIterator;
import ch.boye.httpclientandroidlib.HttpResponse;
import java.net.URI;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package ch.boye.httpclientandroidlib.client.methods:
//            HttpRequestBase

public class HttpOptions extends HttpRequestBase
{

    public static final String METHOD_NAME = "OPTIONS";

    public HttpOptions()
    {
    }

    public HttpOptions(String s)
    {
        setURI(URI.create(s));
    }

    public HttpOptions(URI uri)
    {
        setURI(uri);
    }

    public Set getAllowedMethods(HttpResponse httpresponse)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        HeaderIterator headeriterator = httpresponse.headerIterator("Allow");
        HashSet hashset = new HashSet();
        while (headeriterator.hasNext()) 
        {
            HeaderElement aheaderelement[] = headeriterator.nextHeader().getElements();
            int i = aheaderelement.length;
            int j = 0;
            while (j < i) 
            {
                hashset.add(aheaderelement[j].getName());
                j++;
            }
        }
        return hashset;
    }

    public String getMethod()
    {
        return "OPTIONS";
    }
}
