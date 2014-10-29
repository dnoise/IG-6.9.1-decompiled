// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.l.a;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

// Referenced classes of package com.facebook.l.a:
//            e, b

public final class c
    implements HostnameVerifier
{

    private static final Pattern a = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public c()
    {
    }

    private static e a(String s, List list)
    {
        e e1 = new e(s);
        e1.g();
        e1.c(s);
        e1.a(list);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            if (s.equalsIgnoreCase(s1))
            {
                e1.f();
                e1.a(s1);
                return e1.b();
            }
        }

        return e1.c();
    }

    private static List a(X509Certificate x509certificate, int i)
    {
        ArrayList arraylist = new ArrayList();
        Collection collection = x509certificate.getSubjectAlternativeNames();
        if (collection == null)
        {
            return Collections.emptyList();
        }
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            List list = (List)iterator.next();
            if (list != null && list.size() >= 2)
            {
                Integer integer = (Integer)list.get(0);
                if (integer != null && integer.intValue() == i)
                {
                    String s = (String)list.get(1);
                    if (s != null)
                    {
                        arraylist.add(s);
                    }
                }
            }
        } while (true);
        return arraylist;
    }

    private static boolean a(String s)
    {
        return a.matcher(s).matches();
    }

    private static boolean a(String s, String s1)
    {
        boolean flag = true;
        if (s == null || s.length() == 0 || s1 == null || s1.length() == 0)
        {
            flag = false;
        } else
        {
            String s2 = s1.toLowerCase(Locale.US);
            if (!s2.contains("*"))
            {
                return s.equals(s2);
            }
            if (!s2.startsWith("*.") || !s.regionMatches(0, s2, 2, -2 + s2.length()))
            {
                int i = s2.indexOf('*');
                if (i > s2.indexOf('.'))
                {
                    return false;
                }
                if (!s.regionMatches(0, s2, 0, i))
                {
                    return false;
                }
                int j = s2.length() - (i + 1);
                int k = s.length() - j;
                if (s.indexOf('.', i) < k && !s.endsWith(".clients.google.com"))
                {
                    return false;
                }
                if (!s.regionMatches(k, s2, i + 1, j))
                {
                    return false;
                }
            }
        }
        return flag;
    }

    private static e b(String s, String s1, List list)
    {
        e e1 = new e(s);
        e1.c(s1);
        e1.a(list);
        String s2 = s.toLowerCase(Locale.US);
        boolean flag = false;
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            String s3 = (String)iterator.next();
            if (a(s2, s3))
            {
                e1.e();
                e1.a(s3);
                return e1.b();
            }
            flag = true;
        }

        if (!flag && s1 != null && a(s2, s1))
        {
            e1.d();
            e1.a(s1);
            return e1.b();
        } else
        {
            return e1.c();
        }
    }

    private static e b(String s, X509Certificate x509certificate)
    {
        String s1 = "";
        List list = a(x509certificate, 7);
        Object obj = list;
_L2:
        e e1 = a(s, ((List) (obj)));
        e1.b(s1);
        return e1;
        CertificateParsingException certificateparsingexception;
        certificateparsingexception;
        obj = new ArrayList(0);
        s1 = (new StringBuilder("Failed parsing subjectAltName: ")).append(certificateparsingexception.getMessage()).toString();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private e c(String s, X509Certificate x509certificate)
    {
        String s1;
        String s2;
        s1 = (new b(x509certificate.getSubjectX500Principal())).a("cn");
        s2 = "";
        List list = a(x509certificate, 2);
        Object obj = list;
_L2:
        e e1 = b(s, s1, ((List) (obj)));
        e1.b(s2);
        return e1;
        CertificateParsingException certificateparsingexception;
        certificateparsingexception;
        obj = new ArrayList(0);
        s2 = (new StringBuilder("Failed parsing subjectAltName: ")).append(certificateparsingexception.getMessage()).toString();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final e a(String s, String s1, List list)
    {
        if (a(s))
        {
            return a(s, list);
        } else
        {
            return b(s, s1, list);
        }
    }

    public final e a(String s, X509Certificate x509certificate)
    {
        if (a(s))
        {
            return b(s, x509certificate);
        } else
        {
            return c(s, x509certificate);
        }
    }

    public final boolean verify(String s, SSLSession sslsession)
    {
        boolean flag;
        try
        {
            flag = a(s, (X509Certificate)sslsession.getPeerCertificates()[0]).a();
        }
        catch (SSLException sslexception)
        {
            return false;
        }
        return flag;
    }

}
