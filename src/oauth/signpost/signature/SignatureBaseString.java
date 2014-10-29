// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.signature;

import java.net.URI;
import java.util.Iterator;
import java.util.Set;
import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

public class SignatureBaseString
{

    private HttpRequest request;
    private HttpParameters requestParameters;

    public SignatureBaseString(HttpRequest httprequest, HttpParameters httpparameters)
    {
        request = httprequest;
        requestParameters = httpparameters;
    }

    public String generate()
    {
        String s2;
        try
        {
            String s = normalizeRequestUrl();
            String s1 = normalizeRequestParameters();
            s2 = (new StringBuilder()).append(request.getMethod()).append('&').append(OAuth.percentEncode(s)).append('&').append(OAuth.percentEncode(s1)).toString();
        }
        catch (Exception exception)
        {
            throw new OAuthMessageSignerException(exception);
        }
        return s2;
    }

    public String normalizeRequestParameters()
    {
        if (requestParameters == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = requestParameters.keySet().iterator();
        for (int i = 0; iterator.hasNext(); i++)
        {
            String s = (String)iterator.next();
            if ("oauth_signature".equals(s) || "realm".equals(s))
            {
                continue;
            }
            if (i > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(requestParameters.getAsQueryString(s));
        }

        return stringbuilder.toString();
    }

    public String normalizeRequestUrl()
    {
        URI uri = new URI(request.getRequestUrl());
        String s = uri.getScheme().toLowerCase();
        String s1 = uri.getAuthority().toLowerCase();
        boolean flag;
        String s2;
        if (s.equals("http") && uri.getPort() == 80 || s.equals("https") && uri.getPort() == 443)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            int i = s1.lastIndexOf(":");
            if (i >= 0)
            {
                s1 = s1.substring(0, i);
            }
        }
        s2 = uri.getRawPath();
        if (s2 == null || s2.length() <= 0)
        {
            s2 = "/";
        }
        return (new StringBuilder()).append(s).append("://").append(s1).append(s2).toString();
    }
}
