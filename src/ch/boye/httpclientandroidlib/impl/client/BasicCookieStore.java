// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.client.CookieStore;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieIdentityComparator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class BasicCookieStore
    implements CookieStore, Serializable
{

    private static final long serialVersionUID = 0x96ca8bce24c77aa7L;
    private final TreeSet cookies = new TreeSet(new CookieIdentityComparator());

    public BasicCookieStore()
    {
    }

    public void addCookie(Cookie cookie)
    {
        this;
        JVM INSTR monitorenter ;
        if (cookie == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        cookies.remove(cookie);
        if (!cookie.isExpired(new Date()))
        {
            cookies.add(cookie);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addCookies(Cookie acookie[])
    {
        this;
        JVM INSTR monitorenter ;
        if (acookie == null) goto _L2; else goto _L1
_L1:
        int i = acookie.length;
        int j = 0;
_L3:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        addCookie(acookie[j]);
        j++;
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        cookies.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean clearExpired(Date date)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = false;
        if (date != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        Iterator iterator = cookies.iterator();
        boolean flag1 = false;
_L4:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!((Cookie)iterator.next()).isExpired(date))
        {
            continue; /* Loop/switch isn't completed */
        }
        iterator.remove();
        flag1 = true;
        if (true) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public List getCookies()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = new ArrayList(cookies);
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public String toString()
    {
        this;
        JVM INSTR monitorenter ;
        String s = cookies.toString();
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }
}
