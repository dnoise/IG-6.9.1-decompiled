// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import ch.boye.httpclientandroidlib.util.LangUtils;
import java.util.Locale;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.scheme:
//            LayeredSchemeSocketFactory, LayeredSocketFactory, LayeredSchemeSocketFactoryAdaptor, SchemeSocketFactoryAdaptor, 
//            LayeredSocketFactoryAdaptor, SocketFactoryAdaptor, SchemeSocketFactory, SocketFactory

public final class Scheme
{

    private final int defaultPort;
    private final boolean layered;
    private final String name;
    private final SchemeSocketFactory socketFactory;
    private String stringRep;

    public Scheme(String s, int i, SchemeSocketFactory schemesocketfactory)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Scheme name may not be null");
        }
        if (i <= 0 || i > 65535)
        {
            throw new IllegalArgumentException((new StringBuilder("Port is invalid: ")).append(i).toString());
        }
        if (schemesocketfactory == null)
        {
            throw new IllegalArgumentException("Socket factory may not be null");
        } else
        {
            name = s.toLowerCase(Locale.ENGLISH);
            socketFactory = schemesocketfactory;
            defaultPort = i;
            layered = schemesocketfactory instanceof LayeredSchemeSocketFactory;
            return;
        }
    }

    public Scheme(String s, SocketFactory socketfactory, int i)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Scheme name may not be null");
        }
        if (socketfactory == null)
        {
            throw new IllegalArgumentException("Socket factory may not be null");
        }
        if (i <= 0 || i > 65535)
        {
            throw new IllegalArgumentException((new StringBuilder("Port is invalid: ")).append(i).toString());
        }
        name = s.toLowerCase(Locale.ENGLISH);
        if (socketfactory instanceof LayeredSocketFactory)
        {
            socketFactory = new LayeredSchemeSocketFactoryAdaptor((LayeredSocketFactory)socketfactory);
            layered = true;
        } else
        {
            socketFactory = new SchemeSocketFactoryAdaptor(socketfactory);
            layered = false;
        }
        defaultPort = i;
    }

    public final boolean equals(Object obj)
    {
        Scheme scheme;
        if (this != obj)
        {
            if (obj instanceof Scheme)
            {
                if (!name.equals((scheme = (Scheme)obj).name) || defaultPort != scheme.defaultPort || layered != scheme.layered)
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

    public final int getDefaultPort()
    {
        return defaultPort;
    }

    public final String getName()
    {
        return name;
    }

    public final SchemeSocketFactory getSchemeSocketFactory()
    {
        return socketFactory;
    }

    public final SocketFactory getSocketFactory()
    {
        if (socketFactory instanceof SchemeSocketFactoryAdaptor)
        {
            return ((SchemeSocketFactoryAdaptor)socketFactory).getFactory();
        }
        if (layered)
        {
            return new LayeredSocketFactoryAdaptor((LayeredSchemeSocketFactory)socketFactory);
        } else
        {
            return new SocketFactoryAdaptor(socketFactory);
        }
    }

    public final int hashCode()
    {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, defaultPort), name), layered);
    }

    public final boolean isLayered()
    {
        return layered;
    }

    public final int resolvePort(int i)
    {
        if (i <= 0)
        {
            i = defaultPort;
        }
        return i;
    }

    public final String toString()
    {
        if (stringRep == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(name);
            stringbuilder.append(':');
            stringbuilder.append(Integer.toString(defaultPort));
            stringRep = stringbuilder.toString();
        }
        return stringRep;
    }
}
