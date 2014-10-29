// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.c.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.LinkedHashMap;

// Referenced classes of package com.c.a:
//            f, a, e

public final class d
{

    final a a;
    private final f b;
    private final boolean c[];
    private boolean d;
    private boolean e;

    private d(a a1, f f1)
    {
        a = a1;
        super();
        b = f1;
        boolean aflag[];
        if (f.e(f1))
        {
            aflag = null;
        } else
        {
            aflag = new boolean[com.c.a.a.f(a1)];
        }
        c = aflag;
    }

    d(a a1, f f1, byte byte0)
    {
        this(a1, f1);
    }

    static f a(d d1)
    {
        return d1.b;
    }

    static boolean[] b(d d1)
    {
        return d1.c;
    }

    static void c(d d1)
    {
        d1.d();
    }

    private void d()
    {
        com.c.a.a.a(a, this, false);
    }

    static boolean d(d d1)
    {
        d1.d = true;
        return true;
    }

    public final OutputStream a()
    {
        synchronized (a)
        {
            if (f.b(b) != this)
            {
                throw new IllegalStateException();
            }
            break MISSING_BLOCK_LABEL_31;
        }
        File file;
        if (!f.e(b))
        {
            c[0] = true;
        }
        file = b.b(0);
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        FileOutputStream fileoutputstream1 = fileoutputstream;
_L1:
        e e1 = new e(this, fileoutputstream1, (byte)0);
        a1;
        JVM INSTR monitorexit ;
        return e1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        com.c.a.a.g(a).mkdirs();
        FileOutputStream fileoutputstream2 = new FileOutputStream(file);
        fileoutputstream1 = fileoutputstream2;
          goto _L1
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        OutputStream outputstream = com.c.a.a.b();
        a1;
        JVM INSTR monitorexit ;
        return outputstream;
    }

    public final void b()
    {
        if (d)
        {
            com.c.a.a.a(a, this, false);
            a.d(f.d(b));
        } else
        {
            com.c.a.a.a(a, this, true);
        }
        e = true;
    }

    public final void c()
    {
        f.a(b, null);
        com.c.a.a.h(a).remove(f.d(b));
        d();
    }
}
