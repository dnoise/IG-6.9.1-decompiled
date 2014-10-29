// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib;

import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import ch.boye.httpclientandroidlib.util.LangUtils;
import java.io.Serializable;
import java.util.Locale;

public final class HttpHost
    implements Serializable, Cloneable
{

    public static final String DEFAULT_SCHEME_NAME = "http";
    private static final long serialVersionUID = 0x978228e715c1f9e6L;
    protected final String hostname;
    protected final String lcHostname;
    protected final int port;
    protected final String schemeName;

    public HttpHost(HttpHost httphost)
    {
        this(httphost.hostname, httphost.port, httphost.schemeName);
    }

    public HttpHost(String s)
    {
        this(s, -1, null);
    }

    public HttpHost(String s, int i)
    {
        this(s, i, null);
    }

    public HttpHost(String s, int i, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Host name may not be null");
        }
        hostname = s;
        lcHostname = s.toLowerCase(Locale.ENGLISH);
        if (s1 != null)
        {
            schemeName = s1.toLowerCase(Locale.ENGLISH);
        } else
        {
            schemeName = "http";
        }
        port = i;
    }

    public final Object clone()
    {
        return super.clone();
    }

    public final boolean equals(Object obj)
    {
        HttpHost httphost;
        if (this != obj)
        {
            if (obj instanceof HttpHost)
            {
                if (!lcHostname.equals((httphost = (HttpHost)obj).lcHostname) || port != httphost.port || !schemeName.equals(httphost.schemeName))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final String getHostName()
    {
        return hostname;
    }

    public final int getPort()
    {
        return port;
    }

    public final String getSchemeName()
    {
        return schemeName;
    }

    public final int hashCode()
    {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, lcHostname), port), schemeName);
    }

    public final String toHostString()
    {
        if (port != -1)
        {
            CharArrayBuffer chararraybuffer = new CharArrayBuffer(6 + hostname.length());
            chararraybuffer.append(hostname);
            chararraybuffer.append(":");
            chararraybuffer.append(Integer.toString(port));
            return chararraybuffer.toString();
        } else
        {
            return hostname;
        }
    }

    public final String toString()
    {
        return toURI();
    }

    public final String toURI()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(32);
        chararraybuffer.append(schemeName);
        chararraybuffer.append("://");
        chararraybuffer.append(hostname);
        if (port != -1)
        {
            chararraybuffer.append(':');
            chararraybuffer.append(Integer.toString(port));
        }
        return chararraybuffer.toString();
    }
}
