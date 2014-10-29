// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class BasicHttpContext
    implements HttpContext
{

    private Map map;
    private final HttpContext parentContext;

    public BasicHttpContext()
    {
        this(null);
    }

    public BasicHttpContext(HttpContext httpcontext)
    {
        map = null;
        parentContext = httpcontext;
    }

    public Object getAttribute(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Id may not be null");
        }
        Map map1 = map;
        Object obj = null;
        if (map1 != null)
        {
            obj = map.get(s);
        }
        if (obj == null && parentContext != null)
        {
            obj = parentContext.getAttribute(s);
        }
        return obj;
    }

    public Object removeAttribute(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Id may not be null");
        }
        if (map != null)
        {
            return map.remove(s);
        } else
        {
            return null;
        }
    }

    public void setAttribute(String s, Object obj)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Id may not be null");
        }
        if (map == null)
        {
            map = new HashMap();
        }
        map.put(s, obj);
    }
}
