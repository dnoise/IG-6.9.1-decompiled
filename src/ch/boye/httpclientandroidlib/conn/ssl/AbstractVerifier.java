// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.ssl;

import ch.boye.httpclientandroidlib.conn.util.InetAddressUtils;
import java.io.InputStream;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.security.auth.x500.X500Principal;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.ssl:
//            X509HostnameVerifier

public abstract class AbstractVerifier
    implements X509HostnameVerifier
{

    private static final String BAD_COUNTRY_2LDS[];

    public AbstractVerifier()
    {
    }

    public static boolean acceptableCountryWildcard(String s)
    {
        for (String as[] = s.split("\\."); as.length != 3 || as[2].length() != 2 || Arrays.binarySearch(BAD_COUNTRY_2LDS, as[1]) < 0;)
        {
            return true;
        }

        return false;
    }

    public static int countDots(String s)
    {
        int i = 0;
        int j = 0;
        for (; i < s.length(); i++)
        {
            if (s.charAt(i) == '.')
            {
                j++;
            }
        }

        return j;
    }

    public static String[] getCNs(X509Certificate x509certificate)
    {
        LinkedList linkedlist = new LinkedList();
        StringTokenizer stringtokenizer = new StringTokenizer(x509certificate.getSubjectX500Principal().toString(), ",");
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s = stringtokenizer.nextToken();
            int i = s.indexOf("CN=");
            if (i >= 0)
            {
                linkedlist.add(s.substring(i + 3));
            }
        } while (true);
        if (!linkedlist.isEmpty())
        {
            String as[] = new String[linkedlist.size()];
            linkedlist.toArray(as);
            return as;
        } else
        {
            return null;
        }
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509certificate)
    {
        return getSubjectAlts(x509certificate, null);
    }

    private static String[] getSubjectAlts(X509Certificate x509certificate, String s)
    {
        LinkedList linkedlist;
        Collection collection;
        byte byte0;
        Iterator iterator;
        List list;
        Collection collection1;
        if (isIPAddress(s))
        {
            byte0 = 7;
        } else
        {
            byte0 = 2;
        }
        linkedlist = new LinkedList();
        collection1 = x509certificate.getSubjectAlternativeNames();
        collection = collection1;
_L2:
        if (collection != null)
        {
            iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                list = (List)iterator.next();
                if (((Integer)list.get(0)).intValue() == byte0)
                {
                    linkedlist.add((String)list.get(1));
                }
            } while (true);
        }
        break; /* Loop/switch isn't completed */
        CertificateParsingException certificateparsingexception;
        certificateparsingexception;
        Logger.getLogger(ch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier.getName()).log(Level.FINE, "Error parsing certificate.", certificateparsingexception);
        collection = null;
        if (true) goto _L2; else goto _L1
_L1:
        if (!linkedlist.isEmpty())
        {
            String as[] = new String[linkedlist.size()];
            linkedlist.toArray(as);
            return as;
        } else
        {
            return null;
        }
    }

    private static boolean isIPAddress(String s)
    {
        return s != null && (InetAddressUtils.isIPv4Address(s) || InetAddressUtils.isIPv6Address(s));
    }

    public final void verify(String s, X509Certificate x509certificate)
    {
        verify(s, getCNs(x509certificate), getSubjectAlts(x509certificate, s));
    }

    public final void verify(String s, SSLSocket sslsocket)
    {
        if (s == null)
        {
            throw new NullPointerException("host to verify is null");
        }
        SSLSession sslsession = sslsocket.getSession();
        if (sslsession == null)
        {
            sslsocket.getInputStream().available();
            sslsession = sslsocket.getSession();
            if (sslsession == null)
            {
                sslsocket.startHandshake();
                sslsession = sslsocket.getSession();
            }
        }
        verify(s, (X509Certificate)sslsession.getPeerCertificates()[0]);
    }

    public final void verify(String s, String as[], String as1[], boolean flag)
    {
        LinkedList linkedlist = new LinkedList();
        if (as != null && as.length > 0 && as[0] != null)
        {
            linkedlist.add(as[0]);
        }
        if (as1 != null)
        {
            int i = as1.length;
            for (int j = 0; j < i; j++)
            {
                String s6 = as1[j];
                if (s6 != null)
                {
                    linkedlist.add(s6);
                }
            }

        }
        if (linkedlist.isEmpty())
        {
            throw new SSLException((new StringBuilder("Certificate for <")).append(s).append("> doesn't contain CN or DNS subjectAlt").toString());
        }
        StringBuilder stringbuilder = new StringBuilder();
        String s1 = s.trim().toLowerCase(Locale.ENGLISH);
        Iterator iterator = linkedlist.iterator();
        boolean flag1 = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s2 = ((String)iterator.next()).toLowerCase(Locale.ENGLISH);
            stringbuilder.append(" <");
            stringbuilder.append(s2);
            stringbuilder.append('>');
            if (iterator.hasNext())
            {
                stringbuilder.append(" OR");
            }
            String as2[] = s2.split("\\.");
            boolean flag2;
            if (as2.length >= 3 && as2[0].endsWith("*") && acceptableCountryWildcard(s2) && !isIPAddress(s))
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag2)
            {
                if (as2[0].length() > 1)
                {
                    String s3 = as2[0].substring(0, -2 + as2.length);
                    String s4 = s2.substring(as2[0].length());
                    String s5 = s1.substring(s3.length());
                    if (s1.startsWith(s3) && s5.endsWith(s4))
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                } else
                {
                    flag1 = s1.endsWith(s2.substring(1));
                }
                if (flag1 && flag)
                {
                    if (countDots(s1) == countDots(s2))
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                }
            } else
            {
                flag1 = s1.equals(s2);
            }
        } while (!flag1);
        if (!flag1)
        {
            throw new SSLException((new StringBuilder("hostname in certificate didn't match: <")).append(s).append("> !=").append(stringbuilder).toString());
        } else
        {
            return;
        }
    }

    public final boolean verify(String s, SSLSession sslsession)
    {
        try
        {
            verify(s, (X509Certificate)sslsession.getPeerCertificates()[0]);
        }
        catch (SSLException sslexception)
        {
            return false;
        }
        return true;
    }

    static 
    {
        String as[] = {
            "ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", 
            "ne", "net", "or", "org"
        };
        BAD_COUNTRY_2LDS = as;
        Arrays.sort(as);
    }
}
