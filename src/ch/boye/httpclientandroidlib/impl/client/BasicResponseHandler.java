// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.HttpResponseException;
import ch.boye.httpclientandroidlib.client.ResponseHandler;
import ch.boye.httpclientandroidlib.util.EntityUtils;

public class BasicResponseHandler
    implements ResponseHandler
{

    public BasicResponseHandler()
    {
    }

    public volatile Object handleResponse(HttpResponse httpresponse)
    {
        return handleResponse(httpresponse);
    }

    public String handleResponse(HttpResponse httpresponse)
    {
        StatusLine statusline = httpresponse.getStatusLine();
        if (statusline.getStatusCode() >= 300)
        {
            throw new HttpResponseException(statusline.getStatusCode(), statusline.getReasonPhrase());
        }
        ch.boye.httpclientandroidlib.HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity == null)
        {
            return null;
        } else
        {
            return EntityUtils.toString(httpentity);
        }
    }
}
