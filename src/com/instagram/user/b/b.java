// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.b;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.n.a;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.user.b:
//            a, c

public final class b
{

    private static final e a;
    private static final com.instagram.user.b.a b = new com.instagram.user.b.a();
    private static final c c = new c();

    public static com.instagram.user.c.a a(String s)
    {
        l l1 = a.createParser(s);
        l1.nextToken();
        com.instagram.user.b.a _tmp = b;
        return com.instagram.user.b.a.a(l1);
    }

    public static String a(com.instagram.user.c.a a1)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = a.createGenerator(stringwriter);
        c _tmp = c;
        com.instagram.user.b.c.a(a1, h1);
        h1.close();
        return stringwriter.toString();
    }

    public static String a(List list)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = a.createGenerator(stringwriter);
        h1.writeStartArray();
        com.instagram.user.c.a a1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); com.instagram.user.b.c.a(a1, h1))
        {
            a1 = (com.instagram.user.c.a)iterator.next();
            c _tmp = c;
        }

        h1.writeEndArray();
        h1.close();
        return stringwriter.toString();
    }

    public static List b(String s)
    {
        l l1 = a.createParser(s);
        l1.nextToken();
        ArrayList arraylist = new ArrayList();
        if (l1.getCurrentToken() == r.d)
        {
            for (; l1.nextToken() != r.e; arraylist.add(com.instagram.user.b.a.a(l1)))
            {
                com.instagram.user.b.a _tmp = b;
            }

        }
        return arraylist;
    }

    static 
    {
        a = a.a;
    }
}
