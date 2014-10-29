// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.methods;

import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.client.utils.CloneUtils;
import ch.boye.httpclientandroidlib.conn.ClientConnectionRequest;
import ch.boye.httpclientandroidlib.conn.ConnectionReleaseTrigger;
import ch.boye.httpclientandroidlib.message.AbstractHttpMessage;
import ch.boye.httpclientandroidlib.message.BasicRequestLine;
import ch.boye.httpclientandroidlib.message.HeaderGroup;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;
import java.io.IOException;
import java.net.URI;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package ch.boye.httpclientandroidlib.client.methods:
//            AbortableHttpRequest, HttpUriRequest

public abstract class HttpRequestBase extends AbstractHttpMessage
    implements AbortableHttpRequest, HttpUriRequest, Cloneable
{

    private Lock abortLock;
    private boolean aborted;
    private ClientConnectionRequest connRequest;
    private ConnectionReleaseTrigger releaseTrigger;
    private URI uri;

    public HttpRequestBase()
    {
        abortLock = new ReentrantLock();
    }

    public void abort()
    {
        abortLock.lock();
        boolean flag = aborted;
        if (!flag) goto _L2; else goto _L1
_L1:
        abortLock.unlock();
_L4:
        return;
_L2:
        ClientConnectionRequest clientconnectionrequest;
        ConnectionReleaseTrigger connectionreleasetrigger;
        aborted = true;
        clientconnectionrequest = connRequest;
        connectionreleasetrigger = releaseTrigger;
        abortLock.unlock();
        if (clientconnectionrequest != null)
        {
            clientconnectionrequest.abortRequest();
        }
        if (connectionreleasetrigger == null) goto _L4; else goto _L3
_L3:
        try
        {
            connectionreleasetrigger.abortConnection();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
        Exception exception;
        exception;
        abortLock.unlock();
        throw exception;
    }

    public Object clone()
    {
        HttpRequestBase httprequestbase = (HttpRequestBase)super.clone();
        httprequestbase.abortLock = new ReentrantLock();
        httprequestbase.aborted = false;
        httprequestbase.releaseTrigger = null;
        httprequestbase.connRequest = null;
        httprequestbase.headergroup = (HeaderGroup)CloneUtils.clone(headergroup);
        httprequestbase.params = (HttpParams)CloneUtils.clone(params);
        return httprequestbase;
    }

    public abstract String getMethod();

    public ProtocolVersion getProtocolVersion()
    {
        return HttpProtocolParams.getVersion(getParams());
    }

    public RequestLine getRequestLine()
    {
        String s = getMethod();
        ProtocolVersion protocolversion = getProtocolVersion();
        URI uri1 = getURI();
        String s1 = null;
        if (uri1 != null)
        {
            s1 = uri1.toASCIIString();
        }
        if (s1 == null || s1.length() == 0)
        {
            s1 = "/";
        }
        return new BasicRequestLine(s, s1, protocolversion);
    }

    public URI getURI()
    {
        return uri;
    }

    public boolean isAborted()
    {
        return aborted;
    }

    public void setConnectionRequest(ClientConnectionRequest clientconnectionrequest)
    {
        abortLock.lock();
        if (aborted)
        {
            throw new IOException("Request already aborted");
        }
        break MISSING_BLOCK_LABEL_38;
        Exception exception;
        exception;
        abortLock.unlock();
        throw exception;
        releaseTrigger = null;
        connRequest = clientconnectionrequest;
        abortLock.unlock();
        return;
    }

    public void setReleaseTrigger(ConnectionReleaseTrigger connectionreleasetrigger)
    {
        abortLock.lock();
        if (aborted)
        {
            throw new IOException("Request already aborted");
        }
        break MISSING_BLOCK_LABEL_38;
        Exception exception;
        exception;
        abortLock.unlock();
        throw exception;
        connRequest = null;
        releaseTrigger = connectionreleasetrigger;
        abortLock.unlock();
        return;
    }

    public void setURI(URI uri1)
    {
        uri = uri1;
    }
}
