// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.utils;

import ch.boye.httpclientandroidlib.HttpHost;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Stack;

public class URIUtils
{

    private URIUtils()
    {
    }

    public static URI createURI(String s, String s1, int i, String s2, String s3, String s4)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (s1 != null)
        {
            if (s != null)
            {
                stringbuilder.append(s);
                stringbuilder.append("://");
            }
            stringbuilder.append(s1);
            if (i > 0)
            {
                stringbuilder.append(':');
                stringbuilder.append(i);
            }
        }
        if (s2 == null || !s2.startsWith("/"))
        {
            stringbuilder.append('/');
        }
        if (s2 != null)
        {
            stringbuilder.append(s2);
        }
        if (s3 != null)
        {
            stringbuilder.append('?');
            stringbuilder.append(s3);
        }
        if (s4 != null)
        {
            stringbuilder.append('#');
            stringbuilder.append(s4);
        }
        return new URI(stringbuilder.toString());
    }

    public static HttpHost extractHost(URI uri)
    {
        if (uri == null)
        {
            return null;
        }
        if (!uri.isAbsolute()) goto _L2; else goto _L1
_L1:
        int i;
        String s;
        i = uri.getPort();
        s = uri.getHost();
        if (s != null) goto _L4; else goto _L3
_L3:
        s = uri.getAuthority();
        if (s == null) goto _L4; else goto _L5
_L5:
        HttpHost httphost;
        int j;
        String s2;
        int k = s.indexOf('@');
        String s3;
        int l;
        String s4;
        if (k >= 0)
        {
            if (s.length() > k + 1)
            {
                s = s.substring(k + 1);
            } else
            {
                s = null;
            }
        }
        if (s == null) goto _L4; else goto _L6
_L6:
        l = s.indexOf(':');
        if (l < 0) goto _L4; else goto _L7
_L7:
        if (l + 1 < s.length())
        {
            i = Integer.parseInt(s.substring(l + 1));
        }
        s4 = s.substring(0, l);
        j = i;
        s2 = s4;
_L11:
        s3 = uri.getScheme();
        if (s2 == null) goto _L2; else goto _L8
_L8:
        httphost = new HttpHost(s2, j, s3);
_L9:
        return httphost;
_L2:
        httphost = null;
        if (true) goto _L9; else goto _L4
_L4:
        String s1 = s;
        j = i;
        s2 = s1;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private static String normalizePath(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            int i;
            for (i = 0; i < s.length() && s.charAt(i) == '/'; i++) { }
            if (i > 1)
            {
                return s.substring(i - 1);
            }
        }
        return s;
    }

    private static URI removeDotSegments(URI uri)
    {
        String s = uri.getPath();
        if (s == null || s.indexOf("/.") == -1)
        {
            return uri;
        }
        String as[] = s.split("/");
        Stack stack = new Stack();
        int i = 0;
        while (i < as.length) 
        {
            if (as[i].length() != 0 && !".".equals(as[i]))
            {
                if ("..".equals(as[i]))
                {
                    if (!stack.isEmpty())
                    {
                        stack.pop();
                    }
                } else
                {
                    stack.push(as[i]);
                }
            }
            i++;
        }
        StringBuilder stringbuilder = new StringBuilder();
        String s1;
        for (Iterator iterator = stack.iterator(); iterator.hasNext(); stringbuilder.append('/').append(s1))
        {
            s1 = (String)iterator.next();
        }

        URI uri1;
        try
        {
            uri1 = new URI(uri.getScheme(), uri.getAuthority(), stringbuilder.toString(), uri.getQuery(), uri.getFragment());
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalArgumentException(urisyntaxexception);
        }
        return uri1;
    }

    public static URI resolve(URI uri, String s)
    {
        return resolve(uri, URI.create(s));
    }

    public static URI resolve(URI uri, URI uri1)
    {
        if (uri == null)
        {
            throw new IllegalArgumentException("Base URI may nor be null");
        }
        if (uri1 == null)
        {
            throw new IllegalArgumentException("Reference URI may nor be null");
        }
        String s = uri1.toString();
        if (s.startsWith("?"))
        {
            return resolveReferenceStartingWithQueryString(uri, uri1);
        }
        boolean flag;
        URI uri2;
        if (s.length() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            uri1 = URI.create("#");
        }
        uri2 = uri.resolve(uri1);
        if (flag)
        {
            String s1 = uri2.toString();
            uri2 = URI.create(s1.substring(0, s1.indexOf('#')));
        }
        return removeDotSegments(uri2);
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri1)
    {
        String s = uri.toString();
        if (s.indexOf('?') >= 0)
        {
            s = s.substring(0, s.indexOf('?'));
        }
        return URI.create((new StringBuilder()).append(s).append(uri1.toString()).toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httphost)
    {
        return rewriteURI(uri, httphost, false);
    }

    public static URI rewriteURI(URI uri, HttpHost httphost, boolean flag)
    {
        if (uri == null)
        {
            throw new IllegalArgumentException("URI may nor be null");
        }
        if (httphost != null)
        {
            String s3 = httphost.getSchemeName();
            String s4 = httphost.getHostName();
            int i = httphost.getPort();
            String s5 = normalizePath(uri.getRawPath());
            String s6 = uri.getRawQuery();
            String s7;
            if (flag)
            {
                s7 = null;
            } else
            {
                s7 = uri.getRawFragment();
            }
            return createURI(s3, s4, i, s5, s6, s7);
        }
        String s = normalizePath(uri.getRawPath());
        String s1 = uri.getRawQuery();
        String s2;
        if (flag)
        {
            s2 = null;
        } else
        {
            s2 = uri.getRawFragment();
        }
        return createURI(null, null, -1, s, s1, s2);
    }
}
