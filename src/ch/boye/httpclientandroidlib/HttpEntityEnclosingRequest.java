// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib;


// Referenced classes of package ch.boye.httpclientandroidlib:
//            HttpRequest, HttpEntity

public interface HttpEntityEnclosingRequest
    extends HttpRequest
{

    public abstract boolean expectContinue();

    public abstract HttpEntity getEntity();

    public abstract void setEntity(HttpEntity httpentity);
}
