// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.routing;

import ch.boye.httpclientandroidlib.HttpHost;
import java.net.InetAddress;

public interface RouteInfo
{

    public abstract int getHopCount();

    public abstract HttpHost getHopTarget(int i);

    public abstract LayerType getLayerType();

    public abstract InetAddress getLocalAddress();

    public abstract HttpHost getProxyHost();

    public abstract HttpHost getTargetHost();

    public abstract TunnelType getTunnelType();

    public abstract boolean isLayered();

    public abstract boolean isSecure();

    public abstract boolean isTunnelled();
}
