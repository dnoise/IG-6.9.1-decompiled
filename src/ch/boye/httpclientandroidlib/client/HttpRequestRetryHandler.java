// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client;

import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.io.IOException;

public interface HttpRequestRetryHandler
{

    public abstract boolean retryRequest(IOException ioexception, int i, HttpContext httpcontext);
}
