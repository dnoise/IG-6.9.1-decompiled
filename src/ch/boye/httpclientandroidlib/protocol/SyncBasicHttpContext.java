// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;


// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            BasicHttpContext, HttpContext

public class SyncBasicHttpContext extends BasicHttpContext
{

    public SyncBasicHttpContext(HttpContext httpcontext)
    {
        super(httpcontext);
    }

    public Object getAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = super.getAttribute(s);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object removeAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = super.removeAttribute(s);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public void setAttribute(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        super.setAttribute(s, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
