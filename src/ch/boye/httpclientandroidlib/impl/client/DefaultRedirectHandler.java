// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.CircularRedirectException;
import ch.boye.httpclientandroidlib.client.RedirectHandler;
import ch.boye.httpclientandroidlib.client.utils.URIUtils;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client:
//            RedirectLocations

public class DefaultRedirectHandler
    implements RedirectHandler
{

    private static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    public HttpClientAndroidLog log;

    public DefaultRedirectHandler()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        Header header = httpresponse.getFirstHeader("location");
        if (header == null)
        {
            throw new ProtocolException((new StringBuilder("Received redirect response ")).append(httpresponse.getStatusLine()).append(" but no location header").toString());
        }
        String s = header.getValue();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Redirect requested to location '")).append(s).append("'").toString());
        }
        URI uri;
        HttpParams httpparams;
        try
        {
            uri = new URI(s);
        }
        catch (URISyntaxException urisyntaxexception2)
        {
            throw new ProtocolException((new StringBuilder("Invalid redirect URI: ")).append(s).toString(), urisyntaxexception2);
        }
        httpparams = httpresponse.getParams();
        URI uri1;
        if (!uri.isAbsolute())
        {
            if (httpparams.isParameterTrue("http.protocol.reject-relative-redirect"))
            {
                throw new ProtocolException((new StringBuilder("Relative redirect location '")).append(uri).append("' not allowed").toString());
            }
            HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
            if (httphost == null)
            {
                throw new IllegalStateException("Target host not available in the HTTP context");
            }
            HttpRequest httprequest = (HttpRequest)httpcontext.getAttribute("http.request");
            URI uri3;
            URI uri4;
            try
            {
                uri4 = URIUtils.resolve(URIUtils.rewriteURI(new URI(httprequest.getRequestLine().getUri()), httphost, true), uri);
            }
            catch (URISyntaxException urisyntaxexception1)
            {
                throw new ProtocolException(urisyntaxexception1.getMessage(), urisyntaxexception1);
            }
            uri1 = uri4;
        } else
        {
            uri1 = uri;
        }
        if (httpparams.isParameterFalse("http.protocol.allow-circular-redirects"))
        {
            RedirectLocations redirectlocations = (RedirectLocations)httpcontext.getAttribute("http.protocol.redirect-locations");
            if (redirectlocations == null)
            {
                redirectlocations = new RedirectLocations();
                httpcontext.setAttribute("http.protocol.redirect-locations", redirectlocations);
            }
            URI uri2;
            if (uri1.getFragment() != null)
            {
                try
                {
                    uri3 = URIUtils.rewriteURI(uri1, new HttpHost(uri1.getHost(), uri1.getPort(), uri1.getScheme()), true);
                }
                catch (URISyntaxException urisyntaxexception)
                {
                    throw new ProtocolException(urisyntaxexception.getMessage(), urisyntaxexception);
                }
                uri2 = uri3;
            } else
            {
                uri2 = uri1;
            }
            if (redirectlocations.contains(uri2))
            {
                throw new CircularRedirectException((new StringBuilder("Circular redirect to '")).append(uri2).append("'").toString());
            }
            redirectlocations.add(uri2);
        }
        return uri1;
    }

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        switch (httpresponse.getStatusLine().getStatusCode())
        {
        case 304: 
        case 305: 
        case 306: 
        default:
            return false;

        case 301: 
        case 302: 
        case 307: 
            String s = ((HttpRequest)httpcontext.getAttribute("http.request")).getRequestLine().getMethod();
            return s.equalsIgnoreCase("GET") || s.equalsIgnoreCase("HEAD");

        case 303: 
            return true;
        }
    }
}
