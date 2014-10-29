// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import ch.boye.httpclientandroidlib.conn.ssl.X509HostnameVerifier;
import com.facebook.l.a.c;
import com.facebook.l.a.e;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public class f
    implements X509HostnameVerifier
{

    private static final Class b = com/instagram/common/a/g/f;
    private final c a = new c();

    public f()
    {
    }

    public void verify(String s, X509Certificate x509certificate)
    {
        if (!a.a(s, x509certificate).a())
        {
            throw new SSLException((new StringBuilder("Failed to verify certificate for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public void verify(String s, SSLSocket sslsocket)
    {
        if (!verify(s, sslsocket.getSession()))
        {
            throw new SSLException((new StringBuilder("Failed to verify socket for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public void verify(String s, String as[], String as1[])
    {
        Class _tmp = b;
        Object aobj[] = new Object[3];
        aobj[0] = s;
        aobj[1] = Arrays.asList(as);
        aobj[2] = Arrays.asList(as1);
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
        if (!a.a(s, s1, Arrays.asList(as1)).a())
        {
            throw new SSLException((new StringBuilder("Failed to verify cns and subjectAlts for ")).append(s).toString());
        } else
        {
            return;
        }
    }

    public boolean verify(String s, SSLSession sslsession)
    {
        return a.verify(s, sslsession);
    }

}
