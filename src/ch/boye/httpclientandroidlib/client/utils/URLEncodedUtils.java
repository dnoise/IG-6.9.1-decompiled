// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.utils;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.message.BasicNameValuePair;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class URLEncodedUtils
{

    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";

    public URLEncodedUtils()
    {
    }

    private static String decode(String s, String s1)
    {
        if (s1 == null)
        {
            s1 = "ISO-8859-1";
        }
        try
        {
            return URLDecoder.decode(s, s1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new IllegalArgumentException(unsupportedencodingexception);
        }
    }

    private static String encode(String s, String s1)
    {
        if (s1 == null)
        {
            s1 = "ISO-8859-1";
        }
        try
        {
            return URLEncoder.encode(s, s1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new IllegalArgumentException(unsupportedencodingexception);
        }
    }

    public static String format(List list, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            NameValuePair namevaluepair = (NameValuePair)iterator.next();
            String s1 = encode(namevaluepair.getName(), s);
            String s2 = namevaluepair.getValue();
            String s3;
            if (s2 != null)
            {
                s3 = encode(s2, s);
            } else
            {
                s3 = "";
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(s1);
            stringbuilder.append("=");
            stringbuilder.append(s3);
        }
        return stringbuilder.toString();
    }

    public static boolean isEncoded(HttpEntity httpentity)
    {
        Header header = httpentity.getContentType();
        boolean flag = false;
        if (header != null)
        {
            HeaderElement aheaderelement[] = header.getElements();
            int i = aheaderelement.length;
            flag = false;
            if (i > 0)
            {
                flag = aheaderelement[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
            }
        }
        return flag;
    }

    public static List parse(HttpEntity httpentity)
    {
        Object obj;
        Header header;
        obj = Collections.emptyList();
        header = httpentity.getContentType();
        if (header == null) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[] = header.getElements();
        if (aheaderelement.length <= 0) goto _L2; else goto _L3
_L3:
        String s;
        String s1;
        HeaderElement headerelement = aheaderelement[0];
        s1 = headerelement.getName();
        NameValuePair namevaluepair = headerelement.getParameterByName("charset");
        s = null;
        if (namevaluepair != null)
        {
            s = namevaluepair.getValue();
        }
_L5:
        if (s1 != null && s1.equalsIgnoreCase("application/x-www-form-urlencoded"))
        {
            String s2 = EntityUtils.toString(httpentity, "ASCII");
            if (s2 != null && s2.length() > 0)
            {
                obj = new ArrayList();
                parse(((List) (obj)), new Scanner(s2), s);
            }
        }
        return ((List) (obj));
_L2:
        s = null;
        s1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static List parse(URI uri, String s)
    {
        Object obj = Collections.emptyList();
        String s1 = uri.getRawQuery();
        if (s1 != null && s1.length() > 0)
        {
            obj = new ArrayList();
            parse(((List) (obj)), new Scanner(s1), s);
        }
        return ((List) (obj));
    }

    public static void parse(List list, Scanner scanner, String s)
    {
        scanner.useDelimiter("&");
        String s1;
        String s2;
        for (; scanner.hasNext(); list.add(new BasicNameValuePair(s1, s2)))
        {
            String as[] = scanner.next().split("=");
            if (as.length == 0 || as.length > 2)
            {
                throw new IllegalArgumentException("bad parameter");
            }
            s1 = decode(as[0], s);
            int i = as.length;
            s2 = null;
            if (i == 2)
            {
                s2 = decode(as[1], s);
            }
        }

    }
}
