// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.n.a;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g extends b
{

    private final com.instagram.creation.b.a.b a;

    public g(com.instagram.creation.b.a.b b1)
    {
        a = b1;
    }

    private static String a(List list)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = a.a.createGenerator(stringwriter);
        (new ObjectMapper()).writeValue(h1, list);
        h1.close();
        return stringwriter.toString();
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
        ArrayList arraylist;
        a1.a("caption", a.m());
        a1.a("upload_id", a.b());
        arraylist = new ArrayList();
        for (Iterator iterator = a.N().c().iterator(); iterator.hasNext(); arraylist.add(((com.instagram.creation.b.a.f)iterator.next()).b())) { }
        String s1 = a(((List) (arraylist)));
        String s = s1;
_L2:
        a1.a("recipients", s);
        if (a.O())
        {
            a1.a("video_result", a.C());
        }
        return;
        Exception exception;
        exception;
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected final String d_()
    {
        if (a.O())
        {
            return "direct_share/configure/?video=1";
        } else
        {
            return "direct_share/configure/";
        }
    }

    public final boolean e_()
    {
        return true;
    }
}
