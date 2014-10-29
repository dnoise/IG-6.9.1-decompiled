// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import android.net.Uri;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.n.a;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.api.g:
//            d, g, i, b, 
//            a

public class n
{

    private static final Class a = com/instagram/api/g/n;
    private static Boolean b;
    private static n c;
    private final ConcurrentHashMap d = new ConcurrentHashMap();
    private final boolean e;
    private final g f;

    private n(boolean flag, g g1)
    {
        e = flag;
        f = g1;
    }

    private com.instagram.api.g.d a(String s)
    {
        com.instagram.api.g.d d1 = (com.instagram.api.g.d)d.get(s);
        if (d1 == null)
        {
            d1 = new com.instagram.api.g.d(s);
            d.put(s, d1);
        }
        return d1;
    }

    public static n a()
    {
        com/instagram/api/g/n;
        JVM INSTR monitorenter ;
        n n1;
        if (c == null)
        {
            c = new n(d(), com.instagram.api.g.g.a());
        }
        n1 = c;
        com/instagram/api/g/n;
        JVM INSTR monitorexit ;
        return n1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String b(i j)
    {
        return (new StringBuilder()).append(j.b()).append(", ").append(b(j.a())).toString();
    }

    private static String b(String s)
    {
        String s1;
        if (s == null)
        {
            Class _tmp = a;
            s1 = "null";
        } else
        {
            Uri uri = Uri.parse(s);
            s1 = uri.getHost();
            if (s1 == null)
            {
                Class _tmp1 = a;
                return "null";
            }
            if (s1.endsWith("ak.instagram.com"))
            {
                String s3 = uri.getLastPathSegment();
                if (s3 != null && s3.indexOf('.') != -1)
                {
                    String s4 = s3.substring(1 + s3.indexOf('.'));
                    return (new StringBuilder("ak.instagram.com:")).append(s4).toString();
                } else
                {
                    return "ak.instagram.com";
                }
            }
            String s2 = uri.getPath();
            if (s2 != null)
            {
                if (s2.contains("upload/photo"))
                {
                    return (new StringBuilder()).append(s1).append(":upload_photo").toString();
                }
                if (s2.contains("feed/timeline"))
                {
                    return (new StringBuilder()).append(s1).append(":feed_fetch").toString();
                }
                if (s2.contains("transcode/v1"))
                {
                    return "transcode_server";
                }
            }
        }
        return s1;
    }

    private String c()
    {
        if (d.size() <= 0) goto _L2; else goto _L1
_L1:
        StringWriter stringwriter;
        h h1;
        stringwriter = new StringWriter();
        h1 = a.a.createGenerator(stringwriter);
        h1.writeStartArray();
        for (Iterator iterator = d.values().iterator(); iterator.hasNext(); ((com.instagram.api.g.d)iterator.next()).a(h1)) { }
          goto _L3
        IOException ioexception;
        ioexception;
        a;
_L2:
        String s = "";
_L5:
        d.clear();
        return s;
_L3:
        String s1;
        h1.writeEndArray();
        h1.close();
        s1 = stringwriter.toString();
        s = s1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void c(i j)
    {
        if (!j.d()) goto _L2; else goto _L1
_L1:
        b b1;
        com.instagram.api.g.a a1;
        b1 = new b("network_trace", null);
        b1.a("ct", j.b()).a("sd", j.l()).a("sb", j.i()).a("wd", j.m()).a("rd", j.n()).a("rb", j.j()).a("ts", j.h()).a("sip", j.f()).a("sc", j.e()).a("tt", j.c()).a("url", j.a()).a("hm", j.g());
        a1 = j.k();
        if (a1 == null) goto _L4; else goto _L3
_L3:
        if (!com.instagram.api.g.b.a(a1)) goto _L6; else goto _L5
_L5:
        b1.a("xc", a1.b()).a("cr", a1.c()).a("pc", a1.d());
_L4:
        com.instagram.common.analytics.a.a().a(b1);
_L2:
        return;
_L6:
        if (com.instagram.api.g.b.b(a1))
        {
            b1.a("xb", a1.e()).a("bi", a1.f()).a("ot", a1.g()).a("oh", a1.h()).a("op", a1.i()).a("oho", a1.j()).a("oit", a1.k()).a("eh", a1.l()).a("efp", a1.m()).a("ed", a1.n());
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    private static boolean d()
    {
        com/instagram/api/g/n;
        JVM INSTR monitorenter ;
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        Exception exception;
        boolean flag;
        boolean flag1;
        if (!com.instagram.common.s.b.b() && (new Random()).nextDouble() > 0.01D)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        b = Boolean.valueOf(flag1);
        flag = b.booleanValue();
        com/instagram/api/g/n;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        throw exception;
    }

    public final void a(i j)
    {
        if (j.o())
        {
            if (j.e() == 200)
            {
                a(b(j)).a(j);
                f.a(j);
                Class _tmp = a;
                j.p();
            }
            c(j);
        }
    }

    public final void a(i j, Exception exception)
    {
        a(b(j)).a(exception);
    }

    public final void b()
    {
        if (d.size() > 0 && e)
        {
            com.instagram.common.analytics.a.a().a((new b("network_performance", null)).a("traces", c()));
        }
        d.clear();
    }

}
