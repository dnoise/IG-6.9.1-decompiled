// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.auth.AuthenticationException;
import ch.boye.httpclientandroidlib.auth.Credentials;
import ch.boye.httpclientandroidlib.auth.MalformedChallengeException;
import ch.boye.httpclientandroidlib.auth.params.AuthParams;
import ch.boye.httpclientandroidlib.message.BasicHeaderValueFormatter;
import ch.boye.httpclientandroidlib.message.BasicNameValuePair;
import ch.boye.httpclientandroidlib.message.BufferedHeader;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import ch.boye.httpclientandroidlib.util.EncodingUtils;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            RFC2617Scheme, UnsupportedDigestAlgorithmException

public class DigestScheme extends RFC2617Scheme
{

    private static final char HEXADECIMAL[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private String a1;
    private String a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestScheme()
    {
        complete = false;
    }

    public static String createCnonce()
    {
        SecureRandom securerandom = new SecureRandom();
        byte abyte0[] = new byte[8];
        securerandom.nextBytes(abyte0);
        return encode(abyte0);
    }

    private Header createDigestHeader(Credentials credentials)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        s = getParameter("uri");
        s1 = getParameter("realm");
        s2 = getParameter("nonce");
        s3 = getParameter("opaque");
        s4 = getParameter("methodname");
        s5 = getParameter("algorithm");
        if (s == null)
        {
            throw new IllegalStateException("URI may not be null");
        }
        if (s1 == null)
        {
            throw new IllegalStateException("Realm may not be null");
        }
        if (s2 == null)
        {
            throw new IllegalStateException("Nonce may not be null");
        }
        s6 = getParameter("qop");
        if (s6 == null) goto _L2; else goto _L1
_L1:
        StringTokenizer stringtokenizer = new StringTokenizer(s6, ",");
_L6:
        if (!stringtokenizer.hasMoreTokens()) goto _L4; else goto _L3
_L3:
        if (!stringtokenizer.nextToken().trim().equals("auth")) goto _L6; else goto _L5
_L5:
        byte byte0 = 2;
_L8:
        if (byte0 == -1)
        {
            throw new AuthenticationException((new StringBuilder("None of the qop methods is supported: ")).append(s6).toString());
        }
        break; /* Loop/switch isn't completed */
_L4:
        byte0 = -1;
        continue; /* Loop/switch isn't completed */
_L2:
        byte0 = 0;
        if (true) goto _L8; else goto _L7
_L7:
        if (s5 == null)
        {
            s5 = "MD5";
        }
        String s7 = getParameter("charset");
        if (s7 == null)
        {
            s7 = "ISO-8859-1";
        }
        String s8;
        MessageDigest messagedigest;
        String s9;
        String s10;
        StringBuilder stringbuilder;
        Formatter formatter;
        Object aobj[];
        String s11;
        String s12;
        String s13;
        String s15;
        String s16;
        CharArrayBuffer chararraybuffer;
        ArrayList arraylist;
        if (s5.equalsIgnoreCase("MD5-sess"))
        {
            s8 = "MD5";
        } else
        {
            s8 = s5;
        }
        try
        {
            messagedigest = createMessageDigest(s8);
        }
        catch (UnsupportedDigestAlgorithmException unsupporteddigestalgorithmexception)
        {
            throw new AuthenticationException((new StringBuilder("Unsuppported digest algorithm: ")).append(s8).toString());
        }
        s9 = credentials.getUserPrincipal().getName();
        s10 = credentials.getPassword();
        if (s2.equals(lastNonce))
        {
            nounceCount = 1L + nounceCount;
        } else
        {
            nounceCount = 1L;
            cnonce = null;
            lastNonce = s2;
        }
        stringbuilder = new StringBuilder(256);
        formatter = new Formatter(stringbuilder, Locale.US);
        aobj = new Object[1];
        aobj[0] = Long.valueOf(nounceCount);
        formatter.format("%08x", aobj);
        s11 = stringbuilder.toString();
        if (cnonce == null)
        {
            cnonce = createCnonce();
        }
        a1 = null;
        a2 = null;
        if (s5.equalsIgnoreCase("MD5-sess"))
        {
            stringbuilder.setLength(0);
            stringbuilder.append(s9).append(':').append(s1).append(':').append(s10);
            String s18 = encode(messagedigest.digest(EncodingUtils.getBytes(stringbuilder.toString(), s7)));
            stringbuilder.setLength(0);
            stringbuilder.append(s18).append(':').append(s2).append(':').append(cnonce);
            a1 = stringbuilder.toString();
        } else
        {
            stringbuilder.setLength(0);
            stringbuilder.append(s9).append(':').append(s1).append(':').append(s10);
            a1 = stringbuilder.toString();
        }
        s12 = encode(messagedigest.digest(EncodingUtils.getBytes(a1, s7)));
        if (byte0 == 2)
        {
            a2 = (new StringBuilder()).append(s4).append(':').append(s).toString();
        } else
        {
            if (byte0 == 1)
            {
                throw new AuthenticationException("qop-int method is not suppported");
            }
            a2 = (new StringBuilder()).append(s4).append(':').append(s).toString();
        }
        s13 = encode(messagedigest.digest(EncodingUtils.getBytes(a2, s7)));
        if (byte0 == 0)
        {
            stringbuilder.setLength(0);
            stringbuilder.append(s12).append(':').append(s2).append(':').append(s13);
            s15 = stringbuilder.toString();
        } else
        {
            stringbuilder.setLength(0);
            StringBuilder stringbuilder1 = stringbuilder.append(s12).append(':').append(s2).append(':').append(s11).append(':').append(cnonce).append(':');
            String s14;
            if (byte0 == 1)
            {
                s14 = "auth-int";
            } else
            {
                s14 = "auth";
            }
            stringbuilder1.append(s14).append(':').append(s13);
            s15 = stringbuilder.toString();
        }
        s16 = encode(messagedigest.digest(EncodingUtils.getAsciiBytes(s15)));
        chararraybuffer = new CharArrayBuffer(128);
        if (isProxy())
        {
            chararraybuffer.append("Proxy-Authorization");
        } else
        {
            chararraybuffer.append("Authorization");
        }
        chararraybuffer.append(": Digest ");
        arraylist = new ArrayList(20);
        arraylist.add(new BasicNameValuePair("username", s9));
        arraylist.add(new BasicNameValuePair("realm", s1));
        arraylist.add(new BasicNameValuePair("nonce", s2));
        arraylist.add(new BasicNameValuePair("uri", s));
        arraylist.add(new BasicNameValuePair("response", s16));
        if (byte0 != 0)
        {
            int i;
            BasicNameValuePair basicnamevaluepair;
            BasicHeaderValueFormatter basicheadervalueformatter;
            String s17;
            if (byte0 == 1)
            {
                s17 = "auth-int";
            } else
            {
                s17 = "auth";
            }
            arraylist.add(new BasicNameValuePair("qop", s17));
            arraylist.add(new BasicNameValuePair("nc", s11));
            arraylist.add(new BasicNameValuePair("cnonce", cnonce));
        }
        if (s5 != null)
        {
            arraylist.add(new BasicNameValuePair("algorithm", s5));
        }
        if (s3 != null)
        {
            arraylist.add(new BasicNameValuePair("opaque", s3));
        }
        i = 0;
        while (i < arraylist.size()) 
        {
            basicnamevaluepair = (BasicNameValuePair)arraylist.get(i);
            if (i > 0)
            {
                chararraybuffer.append(", ");
            }
            boolean flag;
            boolean flag1;
            if ("nc".equals(basicnamevaluepair.getName()) || "qop".equals(basicnamevaluepair.getName()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            basicheadervalueformatter = BasicHeaderValueFormatter.DEFAULT;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            basicheadervalueformatter.formatNameValuePair(chararraybuffer, basicnamevaluepair, flag1);
            i++;
        }
        return new BufferedHeader(chararraybuffer);
    }

    private static MessageDigest createMessageDigest(String s)
    {
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance(s);
        }
        catch (Exception exception)
        {
            throw new UnsupportedDigestAlgorithmException((new StringBuilder("Unsupported algorithm in HTTP Digest authentication: ")).append(s).toString());
        }
        return messagedigest;
    }

    private static String encode(byte abyte0[])
    {
        int i = abyte0.length;
        char ac[] = new char[i * 2];
        for (int j = 0; j < i; j++)
        {
            int k = 0xf & abyte0[j];
            int l = (0xf0 & abyte0[j]) >> 4;
            ac[j * 2] = HEXADECIMAL[l];
            ac[1 + j * 2] = HEXADECIMAL[k];
        }

        return new String(ac);
    }

    public Header authenticate(Credentials credentials, HttpRequest httprequest)
    {
        if (credentials == null)
        {
            throw new IllegalArgumentException("Credentials may not be null");
        }
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        getParameters().put("methodname", httprequest.getRequestLine().getMethod());
        getParameters().put("uri", httprequest.getRequestLine().getUri());
        if (getParameter("charset") == null)
        {
            String s = AuthParams.getCredentialCharset(httprequest.getParams());
            getParameters().put("charset", s);
        }
        return createDigestHeader(credentials);
    }

    String getA1()
    {
        return a1;
    }

    String getA2()
    {
        return a2;
    }

    String getCnonce()
    {
        return cnonce;
    }

    public String getSchemeName()
    {
        return "digest";
    }

    public boolean isComplete()
    {
        if ("true".equalsIgnoreCase(getParameter("stale")))
        {
            return false;
        } else
        {
            return complete;
        }
    }

    public boolean isConnectionBased()
    {
        return false;
    }

    public void overrideParamter(String s, String s1)
    {
        getParameters().put(s, s1);
    }

    public void processChallenge(Header header)
    {
        super.processChallenge(header);
        if (getParameter("realm") == null)
        {
            throw new MalformedChallengeException("missing realm in challenge");
        }
        if (getParameter("nonce") == null)
        {
            throw new MalformedChallengeException("missing nonce in challenge");
        } else
        {
            complete = true;
            return;
        }
    }

}
