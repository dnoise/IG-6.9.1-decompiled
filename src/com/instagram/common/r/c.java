// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.r;

import java.util.Iterator;
import java.util.Locale;

final class c
    implements Iterator
{

    private final String a;
    private final String b[] = Locale.getISOCountries();
    private int c;

    c(String s)
    {
        a = s;
    }

    private Locale a()
    {
        Locale locale = new Locale(a, b[c]);
        c = 1 + c;
        return locale;
    }

    public final boolean hasNext()
    {
        return c < b.length;
    }

    public final Object next()
    {
        return a();
    }

    public final void remove()
    {
        throw new UnsupportedOperationException("remove not supported");
    }
}
