// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.params;

import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;

// Referenced classes of package ch.boye.httpclientandroidlib.params:
//            CoreProtocolPNames, HttpParams

public final class HttpProtocolParams
    implements CoreProtocolPNames
{

    private HttpProtocolParams()
    {
    }

    public static String getContentCharset(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        String s = (String)httpparams.getParameter("http.protocol.content-charset");
        if (s == null)
        {
            s = "ISO-8859-1";
        }
        return s;
    }

    public static String getHttpElementCharset(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        String s = (String)httpparams.getParameter("http.protocol.element-charset");
        if (s == null)
        {
            s = "US-ASCII";
        }
        return s;
    }

    public static String getUserAgent(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            return (String)httpparams.getParameter("http.useragent");
        }
    }

    public static ProtocolVersion getVersion(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        Object obj = httpparams.getParameter("http.protocol.version");
        if (obj == null)
        {
            return HttpVersion.HTTP_1_1;
        } else
        {
            return (ProtocolVersion)obj;
        }
    }

    public static void setContentCharset(HttpParams httpparams, String s)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setParameter("http.protocol.content-charset", s);
            return;
        }
    }

    public static void setHttpElementCharset(HttpParams httpparams, String s)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setParameter("http.protocol.element-charset", s);
            return;
        }
    }

    public static void setUseExpectContinue(HttpParams httpparams, boolean flag)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setBooleanParameter("http.protocol.expect-continue", flag);
            return;
        }
    }

    public static void setUserAgent(HttpParams httpparams, String s)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setParameter("http.useragent", s);
            return;
        }
    }

    public static void setVersion(HttpParams httpparams, ProtocolVersion protocolversion)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setParameter("http.protocol.version", protocolversion);
            return;
        }
    }

    public static boolean useExpectContinue(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            return httpparams.getBooleanParameter("http.protocol.expect-continue", false);
        }
    }
}
