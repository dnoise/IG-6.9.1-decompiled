// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.l.a;

import java.security.cert.X509Certificate;
import java.util.Arrays;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;

// Referenced classes of package com.facebook.l.a:
//            c, e, a

public final class d
    implements X509HostnameVerifier
{

    private final a a;
    private final c b = new c();

    public d(a a1)
    {
        a = a1;
    }

    public final void verify(String s, X509Certificate x509certificate)
    {
        if (!b.a(s, x509certificate).a())
        {
            throw new SSLException((new StringBuilder("Failed to verify certificate for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public final void verify(String s, SSLSocket sslsocket)
    {
        if (!verify(s, sslsocket.getSession()))
        {
            throw new SSLException((new StringBuilder("Failed to verify socket for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public final void verify(String s, String as[], String as1[])
    {
        if (a != null)
        {
            a.badVerifyInvoked(s, as, as1);
        }
        if (as.length > 1)
        {
            throw new SSLException("Certificate has multiple common names");
        }
        String s1;
        if (as.length == 0)
        {
            s1 = null;
        } else
        {
            s1 = as[0];
        }
        if (!b.a(s, s1, Arrays.asList(as1)).a())
        {
            throw new SSLException((new StringBuilder("Failed to verify cns and subjectAlts for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public final boolean verify(String s, SSLSession sslsession)
    {
        return b.verify(s, sslsession);
    }
}
