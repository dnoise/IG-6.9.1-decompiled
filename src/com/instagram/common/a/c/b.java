// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.c;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.client.entity.UrlEncodedFormEntity;
import ch.boye.httpclientandroidlib.client.utils.URLEncodedUtils;
import ch.boye.httpclientandroidlib.message.BasicNameValuePair;
import com.instagram.common.a.f.a;
import com.instagram.common.a.f.d;
import com.instagram.common.a.f.f;
import com.instagram.common.a.f.h;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.common.a.c:
//            d, c

public class b
    implements com.instagram.common.a.c.d
{

    private final Map a = new ConcurrentHashMap();
    private final Map b = new ConcurrentHashMap();

    public b()
    {
    }

    private void a(String s, byte abyte0[], String s1, String s2)
    {
        b.put(s, new a(s1, abyte0, s2));
    }

    private List f()
    {
        LinkedList linkedlist = new LinkedList();
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); linkedlist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return linkedlist;
    }

    public final int a()
    {
        return a.size() + b.size();
    }

    public final String a(boolean flag)
    {
        List list = f();
        if (flag)
        {
            Collections.sort(list, new c(this));
        }
        return URLEncodedUtils.format(list, "UTF-8");
    }

    public final void a(String s, File file)
    {
        a(s, file, file.getName());
    }

    public final void a(String s, File file, String s1)
    {
        a(s, file, s1, "application/octet-stream");
    }

    public final void a(String s, File file, String s1, String s2)
    {
        b.put(s, new d(s1, file, s2));
    }

    public final void a(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            a.put(s, s1);
        }
    }

    public final void a(String s, byte abyte0[], String s1)
    {
        a(s, abyte0, s1, "application/octet-stream");
    }

    public final void a(Map map)
    {
        b.putAll(map);
    }

    public final Map b()
    {
        return Collections.unmodifiableMap(a);
    }

    public final Map c()
    {
        return Collections.unmodifiableMap(b);
    }

    public HttpEntity d()
    {
        if (!b.isEmpty())
        {
            f f1 = new f();
            java.util.Map.Entry entry1;
            for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); f1.a((String)entry1.getKey(), (String)entry1.getValue()))
            {
                entry1 = (java.util.Map.Entry)iterator.next();
            }

            java.util.Map.Entry entry;
            for (Iterator iterator1 = b.entrySet().iterator(); iterator1.hasNext(); f1.a((String)entry.getKey(), (h)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator1.next();
            }

            return f1;
        }
        UrlEncodedFormEntity urlencodedformentity;
        try
        {
            urlencodedformentity = new UrlEncodedFormEntity(f(), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            return null;
        }
        return urlencodedformentity;
    }

    public final String e()
    {
        return a(false);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(e());
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); stringbuilder.append("FILE"))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append("=");
        }

        return stringbuilder.toString();
    }
}
