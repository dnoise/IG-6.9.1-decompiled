// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UriPatternMatcher
{

    private final Map map = new HashMap();

    public UriPatternMatcher()
    {
    }

    public Object lookup(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("Request URI may not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i = s.indexOf("?");
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        s = s.substring(0, i);
        Object obj = map.get(s);
        if (obj != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
        Iterator iterator = map.keySet().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        String s2;
        s2 = (String)iterator.next();
        if (!matchUriRequestPattern(s2, s))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        if (s1.length() >= s2.length() && (s1.length() != s2.length() || !s2.endsWith("*")))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        Object obj1 = map.get(s2);
        Object obj2 = obj1;
_L5:
        obj = obj2;
        s1 = s2;
          goto _L4
_L2:
        this;
        JVM INSTR monitorexit ;
        return obj;
        s2 = s1;
        obj2 = obj;
          goto _L5
    }

    protected boolean matchUriRequestPattern(String s, String s1)
    {
        while (s.equals("*") || s.endsWith("*") && s1.startsWith(s.substring(0, -1 + s.length())) || s.startsWith("*") && s1.endsWith(s.substring(1, s.length()))) 
        {
            return true;
        }
        return false;
    }

    public void register(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("URI request pattern may not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        map.put(s, obj);
        this;
        JVM INSTR monitorexit ;
    }

    public void setHandlers(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        if (map1 != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("Map of handlers may not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
    }

    public void setObjects(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        if (map1 != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("Map of handlers may not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
    }

    public void unregister(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        map.remove(s);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
