// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.a;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;

// Referenced classes of package com.instagram.common.l.a:
//            f, c

public final class b
{

    private final String a;

    private b(String s)
    {
        a = (String)f.a(s);
    }

    public static b a()
    {
        return new b(",");
    }

    public static b a(String s)
    {
        return new b(s);
    }

    private Appendable a(Appendable appendable, Iterator iterator)
    {
        f.a(appendable);
        if (iterator.hasNext())
        {
            appendable.append(a(iterator.next()));
            for (; iterator.hasNext(); appendable.append(a(iterator.next())))
            {
                appendable.append(a);
            }

        }
        return appendable;
    }

    static CharSequence a(Object obj)
    {
        f.a(obj);
        if (obj instanceof CharSequence)
        {
            return (CharSequence)obj;
        } else
        {
            return obj.toString();
        }
    }

    static String a(b b1)
    {
        return b1.a;
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

    public final String a(Object aobj[])
    {
        return a(((Iterable) (Arrays.asList(aobj))));
    }

    public final c b(String s)
    {
        return new c(this, s, (byte)0);
    }
}
