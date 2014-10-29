// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.e;

import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.analytics.b;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.WeakHashMap;

// Referenced classes of package com.instagram.ui.e:
//            c, b

public class a
    implements com.instagram.common.p.b.a
{

    private static final Class a = com/instagram/ui/e/a;
    private final com.instagram.common.y.b.a b;
    private final WeakHashMap c = new WeakHashMap();
    private final LinkedList d = new LinkedList();
    private long e;

    public a(com.instagram.common.y.b.a a1)
    {
        b = a1;
        e = -1L;
    }

    static com.instagram.common.y.b.a a(a a1)
    {
        return a1.b;
    }

    private void a(c c1)
    {
        this;
        JVM INSTR monitorenter ;
        if (d.size() > 10)
        {
            d.removeFirst();
        }
        if (com.instagram.ui.e.c.c(c1) > 10L)
        {
            d.offer(c1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        long l;
        b;
        l = com.instagram.common.y.b.a.c() - 5000L;
        for (Iterator iterator = c.values().iterator(); iterator.hasNext(); com.instagram.ui.e.c.a((c)iterator.next(), false, l)) { }
        break MISSING_BLOCK_LABEL_68;
        Exception exception;
        exception;
        throw exception;
        StringWriter stringwriter;
        h h1;
        stringwriter = new StringWriter();
        h1 = com.instagram.common.n.a.a.createGenerator(stringwriter);
        h1.writeStartArray();
        for (Iterator iterator1 = c.values().iterator(); iterator1.hasNext(); com.instagram.ui.e.c.a((c)iterator1.next(), h1)) { }
          goto _L1
        IOException ioexception;
        ioexception;
        a;
        String s = "";
_L2:
        long l1 = l - e;
        if (l1 <= 5000L)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        (new b("content_unavailable_event", null)).a("view_stats", s).a("in_app_duration_ms", l1).a();
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L1:
        for (Iterator iterator2 = d.iterator(); iterator2.hasNext(); com.instagram.ui.e.c.a((c)iterator2.next(), h1)) { }
        String s1;
        d.clear();
        h1.writeEndArray();
        h1.close();
        s1 = stringwriter.toString();
        s = s1;
          goto _L2
        b;
        e = com.instagram.common.y.b.a.c();
        c();
          goto _L3
    }

    private static boolean b(View view)
    {
        View view1;
        if (view.getVisibility() != 0)
        {
            return false;
        }
_L3:
        if (view.getParent() instanceof ViewGroup)
        {
            view1 = (View)view.getParent();
            if (view1.getRootView() == view1)
            {
                return true;
            }
            if (view1.getVisibility() != 0)
            {
                return false;
            }
        } else
        {
            return view.getParent() != null;
        }
        if (true) goto _L2; else goto _L1
_L2:
        view = view1;
        if (true) goto _L3; else goto _L1
_L1:
    }

    public final void a()
    {
        a(true);
    }

    public final void a(View view)
    {
        this;
        JVM INSTR monitorenter ;
        c c1 = (c)c.get(view);
        if (c1 == null) goto _L2; else goto _L1
_L1:
        c1.a(b.a);
        a;
        com.instagram.ui.e.c.b(c1);
        Long.valueOf(com.instagram.ui.e.c.c(c1));
        c.remove(view);
        a(c1);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(View view, int i)
    {
        this;
        JVM INSTR monitorenter ;
        c c1 = (c)c.get(view);
        if (c1 == null) goto _L2; else goto _L1
_L1:
        c1.a(i);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(View view, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = c.size();
        if (i < 15) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        c c1 = (c)c.get(view);
        if (c1 != null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        c1 = new c(this, s, (byte)0);
        c.put(view, c1);
        com.instagram.ui.e.c.a(c1);
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        a(false);
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        c c1;
        boolean flag;
        for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); com.instagram.ui.e.c.a(c1, flag, com.instagram.common.y.b.a.c()))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            c1 = (c)entry.getValue();
            flag = b((View)entry.getKey());
            b;
        }

        break MISSING_BLOCK_LABEL_82;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public final void d()
    {
        com.instagram.common.p.b.b.a().a(this);
    }

}
