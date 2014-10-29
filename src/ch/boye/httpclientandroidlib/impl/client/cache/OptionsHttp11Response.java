// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderIterator;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.message.AbstractHttpMessage;
import ch.boye.httpclientandroidlib.message.BasicStatusLine;
import ch.boye.httpclientandroidlib.message.HeaderGroup;
import ch.boye.httpclientandroidlib.params.BasicHttpParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.util.Locale;

final class OptionsHttp11Response extends AbstractHttpMessage
    implements HttpResponse
{

    private final StatusLine statusLine;
    private final ProtocolVersion version;

    OptionsHttp11Response()
    {
        statusLine = new BasicStatusLine(HttpVersion.HTTP_1_1, 501, "");
        version = HttpVersion.HTTP_1_1;
    }

    public final void addHeader(Header header)
    {
    }

    public final void addHeader(String s, String s1)
    {
    }

    public final boolean containsHeader(String s)
    {
        return headergroup.containsHeader(s);
    }

    public final Header[] getAllHeaders()
    {
        return headergroup.getAllHeaders();
    }

    public final HttpEntity getEntity()
    {
        return null;
    }

    public final Header getFirstHeader(String s)
    {
        return headergroup.getFirstHeader(s);
    }

    public final Header[] getHeaders(String s)
    {
        return headergroup.getHeaders(s);
    }

    public final Header getLastHeader(String s)
    {
        return headergroup.getLastHeader(s);
    }

    public final Locale getLocale()
    {
        return null;
    }

    public final HttpParams getParams()
    {
        if (params == null)
        {
            params = new BasicHttpParams();
        }
        return params;
    }

    public final ProtocolVersion getProtocolVersion()
    {
        return version;
    }

    public final StatusLine getStatusLine()
    {
        return statusLine;
    }

    public final HeaderIterator headerIterator()
    {
        return headergroup.iterator();
    }

    public final HeaderIterator headerIterator(String s)
    {
        return headergroup.iterator(s);
    }

    public final void removeHeader(Header header)
    {
    }

    public final void removeHeaders(String s)
    {
    }

    public final void setEntity(HttpEntity httpentity)
    {
    }

    public final void setHeader(Header header)
    {
    }

    public final void setHeader(String s, String s1)
    {
    }

    public final void setHeaders(Header aheader[])
    {
    }

    public final void setLocale(Locale locale)
    {
    }

    public final void setParams(HttpParams httpparams)
    {
    }

    public final void setReasonPhrase(String s)
    {
    }

    public final void setStatusCode(int i)
    {
    }

    public final void setStatusLine(ProtocolVersion protocolversion, int i)
    {
    }

    public final void setStatusLine(ProtocolVersion protocolversion, int i, String s)
    {
    }

    public final void setStatusLine(StatusLine statusline)
    {
    }
}
