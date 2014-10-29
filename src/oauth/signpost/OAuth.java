// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost;

import com.b.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import oauth.signpost.http.HttpParameters;

public class OAuth
{

    public static final String ENCODING = "UTF-8";
    public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
    public static final String HTTP_AUTHORIZATION_HEADER = "Authorization";
    public static final String OAUTH_CALLBACK = "oauth_callback";
    public static final String OAUTH_CALLBACK_CONFIRMED = "oauth_callback_confirmed";
    public static final String OAUTH_CONSUMER_KEY = "oauth_consumer_key";
    public static final String OAUTH_NONCE = "oauth_nonce";
    public static final String OAUTH_SIGNATURE = "oauth_signature";
    public static final String OAUTH_SIGNATURE_METHOD = "oauth_signature_method";
    public static final String OAUTH_TIMESTAMP = "oauth_timestamp";
    public static final String OAUTH_TOKEN = "oauth_token";
    public static final String OAUTH_TOKEN_SECRET = "oauth_token_secret";
    public static final String OAUTH_VERIFIER = "oauth_verifier";
    public static final String OAUTH_VERSION = "oauth_version";
    public static final String OUT_OF_BAND = "oob";
    public static final String VERSION_1_0 = "1.0";
    private static final a percentEncoder = new a("-._~");

    public OAuth()
    {
    }

    public static String addQueryParameters(String s, Map map)
    {
        String as[] = new String[2 * map.size()];
        Iterator iterator = map.keySet().iterator();
        for (int i = 0; iterator.hasNext(); i += 2)
        {
            String s1 = (String)iterator.next();
            as[i] = s1;
            as[i + 1] = (String)map.get(s1);
        }

        return addQueryParameters(s, as);
    }

    public static transient String addQueryParameters(String s, String as[])
    {
        String s1;
        StringBuilder stringbuilder;
        if (s.contains("?"))
        {
            s1 = "&";
        } else
        {
            s1 = "?";
        }
        stringbuilder = new StringBuilder((new StringBuilder()).append(s).append(s1).toString());
        for (int i = 0; i < as.length; i += 2)
        {
            if (i > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((new StringBuilder()).append(percentEncode(as[i])).append("=").append(percentEncode(as[i + 1])).toString());
        }

        return stringbuilder.toString();
    }

    public static void debugOut(String s, String s1)
    {
        if (System.getProperty("debug") != null)
        {
            System.out.println((new StringBuilder("[SIGNPOST] ")).append(s).append(": ").append(s1).toString());
        }
    }

    public static HttpParameters decodeForm(InputStream inputstream)
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        StringBuilder stringbuilder = new StringBuilder();
        for (String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
        {
            stringbuilder.append(s);
        }

        return decodeForm(stringbuilder.toString());
    }

    public static HttpParameters decodeForm(String s)
    {
        HttpParameters httpparameters = new HttpParameters();
        if (isEmpty(s))
        {
            return httpparameters;
        }
        String as[] = s.split("\\&");
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s1 = as[j];
            int k = s1.indexOf('=');
            String s2;
            String s3;
            if (k < 0)
            {
                s2 = percentDecode(s1);
                s3 = null;
            } else
            {
                s2 = percentDecode(s1.substring(0, k));
                s3 = percentDecode(s1.substring(k + 1));
            }
            httpparameters.put(s2, s3);
            j++;
        }
        return httpparameters;
    }

    public static String formEncode(Collection collection)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        formEncode(collection, ((OutputStream) (bytearrayoutputstream)));
        return new String(bytearrayoutputstream.toByteArray());
    }

    public static void formEncode(Collection collection, OutputStream outputstream)
    {
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            boolean flag = true;
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    outputstream.write(38);
                }
                outputstream.write(percentEncode(safeToString(entry.getKey())).getBytes());
                outputstream.write(61);
                outputstream.write(percentEncode(safeToString(entry.getValue())).getBytes());
            }
        }
    }

    public static boolean isEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static HttpParameters oauthHeaderToParamsMap(String s)
    {
        HttpParameters httpparameters = new HttpParameters();
        if (s != null && s.startsWith("OAuth "))
        {
            String as[] = s.substring(6).split(",");
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String as1[] = as[j].split("=");
                httpparameters.put(as1[0].trim(), as1[1].replace("\"", "").trim());
                j++;
            }
        }
        return httpparameters;
    }

    public static String percentDecode(String s)
    {
        if (s == null)
        {
            return "";
        }
        String s1;
        try
        {
            s1 = URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return s1;
    }

    public static String percentEncode(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return percentEncoder.a(s);
        }
    }

    public static transient String prepareOAuthHeader(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder("OAuth ");
        int i = 0;
        while (i < as.length) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            String s;
            if (as[i].startsWith("oauth_"))
            {
                s = percentEncode(as[i + 1]);
            } else
            {
                s = as[i + 1];
            }
            stringbuilder.append((new StringBuilder()).append(percentEncode(as[i])).append("=\"").append(s).append("\"").toString());
            i += 2;
        }
        return stringbuilder.toString();
    }

    public static final String safeToString(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return obj.toString();
        }
    }

    public static String toHeaderElement(String s, String s1)
    {
        return (new StringBuilder()).append(percentEncode(s)).append("=\"").append(percentEncode(s1)).append("\"").toString();
    }

    public static Map toMap(Collection collection)
    {
        HashMap hashmap = new HashMap();
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s = (String)entry.getKey();
                if (!hashmap.containsKey(s))
                {
                    hashmap.put(s, entry.getValue());
                }
            } while (true);
        }
        return hashmap;
    }

}
