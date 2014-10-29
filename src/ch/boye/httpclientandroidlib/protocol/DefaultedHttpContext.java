// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;


// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public final class DefaultedHttpContext
    implements HttpContext
{

    private final HttpContext defaults;
    private final HttpContext local;

    public DefaultedHttpContext(HttpContext httpcontext, HttpContext httpcontext1)
    {
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else
        {
            local = httpcontext;
            defaults = httpcontext1;
            return;
        }
    }

    public final Object getAttribute(String s)
    {
        Object obj = local.getAttribute(s);
        if (obj == null)
        {
            obj = defaults.getAttribute(s);
        }
        return obj;
    }

    public final HttpContext getDefaults()
    {
        return defaults;
    }

    public final Object removeAttribute(String s)
    {
        return local.removeAttribute(s);
    }

    public final void setAttribute(String s, Object obj)
    {
        local.setAttribute(s, obj);
    }
}
