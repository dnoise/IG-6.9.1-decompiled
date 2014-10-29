// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.t;

import android.util.Pair;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.analytics.g;
import com.instagram.common.n.a;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.LinkedList;

public final class b extends LinkedList
{

    private static final b b = new b();
    private final String a = getClass().getSimpleName();
    private final e c;
    private g d;

    private b()
    {
        c = a.a;
    }

    public static b a()
    {
        return b;
    }

    public final void a(g g, String s, String s1)
    {
        super.addFirst(new Pair(s, s1));
        for (; size() > 10; super.removeLast()) { }
        d = g;
    }

    public final g b()
    {
        return d;
    }

    public final String c()
    {
        StringWriter stringwriter = new StringWriter();
        IOException ioexception;
        h h1;
        h1 = c.createGenerator(stringwriter);
        h1.writeStartArray();
        for (Iterator iterator = iterator(); iterator.hasNext(); h1.writeEndObject())
        {
            Pair pair = (Pair)iterator.next();
            h1.writeStartObject();
            h1.writeFieldName("module");
            h1.writeString((String)pair.first);
            h1.writeFieldName("click_point");
            h1.writeString((String)pair.second);
        }

          goto _L1
_L3:
        return stringwriter.toString();
_L1:
        try
        {
            h1.writeEndArray();
            h1.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            a;
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

}
