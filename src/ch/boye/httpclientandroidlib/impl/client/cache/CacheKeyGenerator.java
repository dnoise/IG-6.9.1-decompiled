// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class CacheKeyGenerator
{

    CacheKeyGenerator()
    {
    }

    private String canonicalizePath(String s)
    {
        String s1;
        try
        {
            s1 = (new URI(URLDecoder.decode(s, "UTF-8"))).getPath();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            return s;
        }
        return s1;
    }

    private int canonicalizePort(int i, String s)
    {
        if (i == -1 && "http".equalsIgnoreCase(s))
        {
            i = 80;
        } else
        if (i == -1 && "https".equalsIgnoreCase(s))
        {
            return 443;
        }
        return i;
    }

    private boolean isRelativeRequest(HttpRequest httprequest)
    {
        String s = httprequest.getRequestLine().getUri();
        return "*".equals(s) || s.startsWith("/");
    }

    public String canonicalizeUri(String s)
    {
        URL url;
        String s1;
        String s2;
        int i;
        String s3;
        url = new URL(s);
        s1 = url.getProtocol().toLowerCase();
        s2 = url.getHost().toLowerCase();
        i = canonicalizePort(url.getPort(), s1);
        s3 = canonicalizePath(url.getPath());
        if ("".equals(s3))
        {
            s3 = "/";
        }
        String s4;
        String s5;
        try
        {
            s4 = url.getQuery();
        }
        catch (MalformedURLException malformedurlexception)
        {
            return s;
        }
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        s3 = (new StringBuilder()).append(s3).append("?").append(s4).toString();
        s5 = (new URL(s1, s2, i, s3)).toString();
        return s5;
    }

    protected String getFullHeaderValue(Header aheader[])
    {
        if (aheader == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder("");
        int i = aheader.length;
        boolean flag = true;
        for (int j = 0; j < i;)
        {
            Header header = aheader[j];
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(header.getValue().trim());
            j++;
            flag = false;
        }

        return stringbuilder.toString();
    }

    public String getURI(HttpHost httphost, HttpRequest httprequest)
    {
        if (isRelativeRequest(httprequest))
        {
            Object aobj[] = new Object[2];
            aobj[0] = httphost.toString();
            aobj[1] = httprequest.getRequestLine().getUri();
            return canonicalizeUri(String.format("%s%s", aobj));
        } else
        {
            return canonicalizeUri(httprequest.getRequestLine().getUri());
        }
    }

    public String getVariantKey(HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        ArrayList arraylist = new ArrayList();
        Header aheader[] = httpcacheentry.getHeaders("Vary");
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                arraylist.add(aheaderelement[l].getName());
            }

        }

        Collections.sort(arraylist);
        StringBuilder stringbuilder;
        Iterator iterator;
        boolean flag;
        String s;
        try
        {
            stringbuilder = new StringBuilder("{");
            iterator = arraylist.iterator();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("couldn't encode to UTF-8", unsupportedencodingexception);
        }
        flag = true;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = (String)iterator.next();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        stringbuilder.append("&");
        stringbuilder.append(URLEncoder.encode(s, "UTF-8"));
        stringbuilder.append("=");
        stringbuilder.append(URLEncoder.encode(getFullHeaderValue(httprequest.getHeaders(s)), "UTF-8"));
        flag = false;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_113;
_L1:
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public String getVariantURI(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        if (!httpcacheentry.hasVariants())
        {
            return getURI(httphost, httprequest);
        } else
        {
            return (new StringBuilder()).append(getVariantKey(httprequest, httpcacheentry)).append(getURI(httphost, httprequest)).toString();
        }
    }
}
