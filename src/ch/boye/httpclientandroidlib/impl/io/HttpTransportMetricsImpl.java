// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.io.HttpTransportMetrics;

public class HttpTransportMetricsImpl
    implements HttpTransportMetrics
{

    private long bytesTransferred;

    public HttpTransportMetricsImpl()
    {
        bytesTransferred = 0L;
    }

    public long getBytesTransferred()
    {
        return bytesTransferred;
    }

    public void incrementBytesTransferred(long l)
    {
        bytesTransferred = l + bytesTransferred;
    }

    public void reset()
    {
        bytesTransferred = 0L;
    }

    public void setBytesTransferred(long l)
    {
        bytesTransferred = l;
    }
}
