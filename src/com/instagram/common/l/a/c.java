// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.a;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.common.l.a:
//            f, b

public final class c
{

    private final b a;
    private final String b;

    private c(b b1, String s)
    {
        a = b1;
        b = (String)f.a(s);
    }

    c(b b1, String s, byte byte0)
    {
        this(b1, s);
    }

    private Appendable a(Appendable appendable, Iterator iterator)
    {
        f.a(appendable);
        if (iterator.hasNext())
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            b _tmp = a;
            appendable.append(com.instagram.common.l.a.b.a(entry.getKey()));
            appendable.append(b);
            b _tmp1 = a;
            appendable.append(com.instagram.common.l.a.b.a(entry.getValue()));
            java.util.Map.Entry entry1;
            for (; iterator.hasNext(); appendable.append(com.instagram.common.l.a.b.a(entry1.getValue())))
            {
                appendable.append(com.instagram.common.l.a.b.a(a));
                entry1 = (java.util.Map.Entry)iterator.next();
                b _tmp2 = a;
                appendable.append(com.instagram.common.l.a.b.a(entry1.getKey()));
                appendable.append(b);
                b _tmp3 = a;
            }

        }
        return appendable;
    }

    private String a(Iterator iterator)
    {
        return a(new StringBuilder(), iterator).toString();
    }

    private StringBuilder a(StringBuilder stringbuilder, Iterator iterator)
    {
        try
        {
            a(((Appendable) (stringbuilder)), iterator);
        }
        catch (IOException ioexception)
        {
            throw new AssertionError(ioexception);
        }
        return stringbuilder;
    }

    public final String a(Iterable iterable)
    {
        return a(iterable.iterator());
    }

    public final String a(Map map)
    {
        return a(((Iterable) (map.entrySet())));
    }
}
