// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.k:
//            g, c, b

public class a
{

    private static final Class a = com/instagram/k/a;
    private static a b;
    private final int c;
    private final Context d;
    private final com.instagram.common.y.b.a e;
    private final ConnectivityManager f;
    private final g g;
    private final Map h;
    private BroadcastReceiver i;
    private c j;

    private a(int k, Context context, com.instagram.common.y.b.a a1, ConnectivityManager connectivitymanager, g g1)
    {
        c = k;
        d = context;
        e = a1;
        f = connectivitymanager;
        g = g1;
        h = new HashMap();
    }

    private a(Context context)
    {
        this(Process.myUid(), context.getApplicationContext(), com.instagram.common.y.b.a.a(), (ConnectivityManager)context.getSystemService("connectivity"), new g());
    }

    public static a a(Context context)
    {
        com/instagram/k/a;
        JVM INSTR monitorenter ;
        a a1;
        if (b == null)
        {
            b = new a(context);
        }
        a1 = b;
        com/instagram/k/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(a a1)
    {
        a1.c();
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        NetworkInfo networkinfo = f.getActiveNetworkInfo();
        if (networkinfo == null) goto _L2; else goto _L1
_L1:
        boolean flag = networkinfo.isConnectedOrConnecting();
        if (flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        c c1;
        long l2;
        long l3;
        long l4;
        c c2;
        g;
        long l = com.instagram.k.g.a(c);
        g;
        long l1 = com.instagram.k.g.b(c);
        e;
        c1 = new c(l, l1, com.instagram.common.y.b.a.c(), com.instagram.common.y.g.a.a(networkinfo), (byte)0);
        l2 = com.instagram.k.c.a(c1) - com.instagram.k.c.a(j);
        l3 = com.instagram.k.c.b(c1) - com.instagram.k.c.b(j);
        l4 = com.instagram.k.c.c(c1) - com.instagram.k.c.c(j);
        c2 = (c)h.get(com.instagram.k.c.d(j));
        if (c2 != null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        c c3 = new c(l2, l3, l4, com.instagram.k.c.d(j), (byte)0);
_L4:
        h.put(com.instagram.k.c.d(j), c3);
        j = c1;
          goto _L2
        Exception exception;
        exception;
        throw exception;
        c3 = new c(l2 + com.instagram.k.c.a(c2), l3 + com.instagram.k.c.b(c2), l4 + com.instagram.k.c.c(c2), com.instagram.k.c.d(j), (byte)0);
          goto _L4
    }

    private String d()
    {
        this;
        JVM INSTR monitorenter ;
        StringWriter stringwriter;
        h h1;
        stringwriter = new StringWriter();
        h1 = com.instagram.common.n.a.a.createGenerator(stringwriter);
        h1.writeStartArray();
        for (Iterator iterator = h.values().iterator(); iterator.hasNext(); ((c)iterator.next()).a(h1)) { }
          goto _L1
        IOException ioexception;
        ioexception;
        a;
        String s = "";
_L3:
        this;
        JVM INSTR monitorexit ;
        return s;
_L1:
        String s1;
        h1.writeEndArray();
        h1.close();
        s1 = stringwriter.toString();
        s = s1;
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        a;
        NetworkInfo networkinfo = f.getActiveNetworkInfo();
        g;
        long l = com.instagram.k.g.a(c);
        g;
        long l1 = com.instagram.k.g.b(c);
        e;
        j = new c(l, l1, com.instagram.common.y.b.a.c(), com.instagram.common.y.g.a.a(networkinfo), (byte)0);
        i = new b(this);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        d.registerReceiver(i, intentfilter);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String b()
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        c();
        s = d();
        h.clear();
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

}
