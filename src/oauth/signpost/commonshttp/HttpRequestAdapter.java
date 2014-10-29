// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.commonshttp;

import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.http.HttpRequest;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;

public class HttpRequestAdapter
    implements HttpRequest
{

    private HttpEntity entity;
    private HttpUriRequest request;

    public HttpRequestAdapter(HttpUriRequest httpurirequest)
    {
        request = httpurirequest;
        if (httpurirequest instanceof HttpEntityEnclosingRequest)
        {
            entity = ((HttpEntityEnclosingRequest)httpurirequest).getEntity();
        }
    }

    public Map getAllHeaders()
    {
        Header aheader[] = request.getAllHeaders();
        HashMap hashmap = new HashMap();
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            Header header = aheader[j];
            hashmap.put(header.getName(), header.getValue());
        }

        return hashmap;
    }

    public String getContentType()
    {
        Header header;
        if (entity != null)
        {
            if ((header = entity.getContentType()) != null)
            {
                return header.getValue();
            }
        }
        return null;
    }

    public String getHeader(String s)
    {
        Header header = request.getFirstHeader(s);
        if (header == null)
        {
            return null;
        } else
        {
            return header.getValue();
        }
    }

    public InputStream getMessagePayload()
    {
        if (entity == null)
        {
            return null;
        } else
        {
            return entity.getContent();
        }
    }

    public String getMethod()
    {
        return request.getRequestLine().getMethod();
    }

    public String getRequestUrl()
    {
        return request.getURI().toString();
    }

    public void setHeader(String s, String s1)
    {
        request.setHeader(s, s1);
    }

    public void setRequestUrl(String s)
    {
        throw new RuntimeException(new UnsupportedOperationException());
    }

    public Object unwrap()
    {
        return request;
    }
}
