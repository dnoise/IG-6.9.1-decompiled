// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;


// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpRequestHandler

public interface HttpRequestHandlerResolver
{

    public abstract HttpRequestHandler lookup(String s);
}
