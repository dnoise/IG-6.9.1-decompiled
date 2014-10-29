// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn:
//            AbstractPoolEntry, SingleClientConnManager

public class or extends AbstractPoolEntry
{

    final SingleClientConnManager this$0;

    protected void close()
    {
        shutdownEntry();
        if (connection.isOpen())
        {
            connection.close();
        }
    }

    protected void shutdown()
    {
        shutdownEntry();
        if (connection.isOpen())
        {
            connection.shutdown();
        }
    }

    protected ()
    {
        this$0 = SingleClientConnManager.this;
        super(connOperator, null);
    }
}
