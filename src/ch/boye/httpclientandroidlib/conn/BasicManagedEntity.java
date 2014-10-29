// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.entity.HttpEntityWrapper;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.conn:
//            ConnectionReleaseTrigger, EofSensorWatcher, ManagedClientConnection, EofSensorInputStream

public class BasicManagedEntity extends HttpEntityWrapper
    implements ConnectionReleaseTrigger, EofSensorWatcher
{

    protected final boolean attemptReuse;
    protected ManagedClientConnection managedConn;

    public BasicManagedEntity(HttpEntity httpentity, ManagedClientConnection managedclientconnection, boolean flag)
    {
        super(httpentity);
        if (managedclientconnection == null)
        {
            throw new IllegalArgumentException("Connection may not be null.");
        } else
        {
            managedConn = managedclientconnection;
            attemptReuse = flag;
            return;
        }
    }

    private void ensureConsumed()
    {
        if (managedConn == null)
        {
            return;
        }
        if (attemptReuse)
        {
            EntityUtils.consume(wrappedEntity);
            managedConn.markReusable();
        }
        releaseManagedConnection();
        return;
        Exception exception;
        exception;
        releaseManagedConnection();
        throw exception;
    }

    public void abortConnection()
    {
        if (managedConn == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        managedConn.abortConnection();
        managedConn = null;
        return;
        Exception exception;
        exception;
        managedConn = null;
        throw exception;
    }

    public void consumeContent()
    {
        ensureConsumed();
    }

    public boolean eofDetected(InputStream inputstream)
    {
        if (attemptReuse && managedConn != null)
        {
            inputstream.close();
            managedConn.markReusable();
        }
        releaseManagedConnection();
        return false;
        Exception exception;
        exception;
        releaseManagedConnection();
        throw exception;
    }

    public InputStream getContent()
    {
        return new EofSensorInputStream(wrappedEntity.getContent(), this);
    }

    public boolean isRepeatable()
    {
        return false;
    }

    public void releaseConnection()
    {
        ensureConsumed();
    }

    protected void releaseManagedConnection()
    {
        if (managedConn == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        managedConn.releaseConnection();
        managedConn = null;
        return;
        Exception exception;
        exception;
        managedConn = null;
        throw exception;
    }

    public boolean streamAbort(InputStream inputstream)
    {
        if (managedConn != null)
        {
            managedConn.abortConnection();
        }
        return false;
    }

    public boolean streamClosed(InputStream inputstream)
    {
        if (attemptReuse && managedConn != null)
        {
            inputstream.close();
            managedConn.markReusable();
        }
        releaseManagedConnection();
        return false;
        Exception exception;
        exception;
        releaseManagedConnection();
        throw exception;
    }

    public void writeTo(OutputStream outputstream)
    {
        super.writeTo(outputstream);
        ensureConsumed();
    }
}
