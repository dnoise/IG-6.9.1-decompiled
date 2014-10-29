// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import android.content.Context;
import com.fasterxml.jackson.a.d;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.h.a;
import com.instagram.common.i.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.m:
//            e, d, g, h

public final class f
    implements com.instagram.m.e
{

    private final Map a = new ConcurrentHashMap();
    private final String b;
    private long c;

    public f(String s)
    {
        c = 0L;
        b = s;
    }

    private File d()
    {
        return new File(com.instagram.common.h.a.a().getFilesDir(), b);
    }

    public final com.instagram.m.d a(String s)
    {
        return (com.instagram.m.d)a.get(s);
    }

    public final void a()
    {
        File file;
        com.fasterxml.jackson.a.l l;
        file = d();
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_60;
        }
        l = null;
        com.instagram.m.h h1;
        l = com.instagram.common.n.a.a.createParser(file);
        h1 = com.instagram.m.g.a(l);
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        a.putAll(h1.a());
        c = h1.b();
        com.instagram.common.l.c.a.a(l);
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        com.instagram.common.i.c.b("QuickExperimentFileCache", "Unable to find file - not loading cache", filenotfoundexception);
        com.instagram.common.l.c.a.a(l);
        return;
        IOException ioexception;
        ioexception;
        com.instagram.common.i.c.b("QuickExperimentFileCache", "Error while reading file - not loading cache", ioexception);
        com.instagram.common.l.c.a.a(l);
        return;
        Exception exception;
        exception;
        com.instagram.common.l.c.a.a(l);
        throw exception;
    }

    public final void a(long l)
    {
        c = l;
    }

    public final void a(com.instagram.m.d d1)
    {
        a.put(d1.b(), d1);
    }

    public final long b()
    {
        return c;
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        File file = d();
        h h1 = com.instagram.common.n.a.a.createGenerator(file, d.a);
        com.instagram.m.g.a(h1, new com.instagram.m.h(a, c));
        h1.close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        com.instagram.common.i.c.b("QuickExperimentFileCache", "Error while writing to cache file", ioexception);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final String toString()
    {
        return a.toString();
    }
}
