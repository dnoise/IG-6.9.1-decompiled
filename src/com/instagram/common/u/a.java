// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import android.content.SharedPreferences;
import android.support.v4.app.bx;
import com.instagram.common.analytics.d;
import com.instagram.common.l.a.b;
import com.instagram.common.l.a.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.common.u:
//            i, m, l

final class a
{

    private final bx a;
    private final i b;
    private final d c;
    private final SharedPreferences d;
    private final String e;
    private boolean f;
    private Map g;
    private Set h;

    a(bx bx1, i j, d d1)
    {
        a = bx1;
        b = j;
        c = d1;
        d = b.b();
        e = b.a();
        g = new LinkedHashMap();
        h = new HashSet();
        if (e.contains("|"))
        {
            throw new IllegalArgumentException("category cannot contain delimiter");
        } else
        {
            return;
        }
    }

    private void c(String s)
    {
        h.add(s);
        d.edit().putBoolean(m.a(s), true).commit();
    }

    private void d()
    {
        if (f || !g.isEmpty() || !h.isEmpty())
        {
            throw new IllegalStateException("attempted to initialize twice");
        }
        Iterator iterator = d.getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            int j = s.indexOf("|");
            if (j != -1)
            {
                String s1 = s.substring(0, j);
                String s2 = s.substring(j + 1);
                if ("showing".equals(s2))
                {
                    h.add(s1);
                } else
                {
                    Object obj = (List)g.get(s1);
                    if (obj == null)
                    {
                        obj = new ArrayList();
                        g.put(s1, obj);
                    }
                    int k;
                    for (k = Integer.valueOf(s2).intValue(); k >= ((List) (obj)).size(); ((List) (obj)).add(null)) { }
                    ((List) (obj)).set(k, b.a((String)entry.getValue()));
                }
            }
        } while (true);
        f = true;
    }

    private void e()
    {
        d.edit().putBoolean(m.a(), true).commit();
    }

    private void f()
    {
        if (!f)
        {
            throw new IllegalStateException("notification category not initialized");
        } else
        {
            return;
        }
    }

    private boolean g()
    {
        return d.getBoolean(m.a(), false);
    }

    final a a()
    {
        this;
        JVM INSTR monitorenter ;
        if (!f)
        {
            d();
        }
        this;
        JVM INSTR monitorexit ;
        return this;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(String s)
    {
        f();
        a.a(l.a(e, s), 64278);
        h.remove(s);
        d.edit().remove(m.a(s)).commit();
    }

    final void a(String s, com.instagram.common.u.c.a a1)
    {
        Object obj;
label0:
        {
            f();
            obj = (List)g.get(s);
            if (obj == null)
            {
                obj = new ArrayList();
                g.put(s, obj);
            }
            ((List) (obj)).add(a1);
            d.edit().putString(m.a(s, -1 + ((List) (obj)).size()), b.a(a1)).commit();
            if (!g())
            {
                int j = h.size();
                if (!h.contains(s))
                {
                    j++;
                }
                if (!b.a(j))
                {
                    break label0;
                }
                for (Iterator iterator = (new HashSet(h)).iterator(); iterator.hasNext(); a((String)iterator.next())) { }
                e();
            }
            android.app.Notification notification = b.a(g, s);
            a.a(l.a(e), 64278, notification);
            com.instagram.common.u.a.a a2 = new com.instagram.common.u.a.a(a1, "notification_displayed");
            a2.a("was_aggregated", true);
            c.a(a2);
            return;
        }
        String s1 = l.a(e, s);
        android.app.Notification notification1 = b.a(s, ((List) (obj)));
        if (!h.contains(s))
        {
            c(s);
        }
        a.a(s1, 64278, notification1);
        c.a(new com.instagram.common.u.a.a(a1, "notification_displayed"));
    }

    final void b()
    {
        f();
        a.a(l.a(e), 64278);
        d.edit().remove(m.a()).commit();
    }

    final void b(String s)
    {
        f();
        android.content.SharedPreferences.Editor editor = d.edit();
        List list = (List)g.remove(s);
        if (list != null)
        {
            for (int j = 0; j < list.size(); j++)
            {
                editor.remove(m.a(s, j));
            }

        }
        if (g())
        {
            if (g.size() > 0)
            {
                android.app.Notification notification = b.a(g, null);
                a.a(l.a(e), 64278, notification);
            } else
            {
                b();
            }
        } else
        {
            a.a(l.a(e, s), 64278);
            h.remove(s);
            editor.remove(m.a(s));
        }
        editor.commit();
    }

    final void c()
    {
        f();
        for (Iterator iterator = (new HashSet(h)).iterator(); iterator.hasNext(); a((String)iterator.next())) { }
        if (g())
        {
            b();
        }
        d.edit().clear().commit();
        g.clear();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        c c1 = com.instagram.common.l.a.b.a("\n").b(" = ");
        stringbuilder.append("\nmCategoryName: ");
        stringbuilder.append(e);
        stringbuilder.append("\nmAggregateMode: ");
        stringbuilder.append(Boolean.toString(g()));
        stringbuilder.append("\nmData: \n");
        stringbuilder.append(c1.a(g));
        stringbuilder.append("\nmShowing: \n");
        stringbuilder.append(h.toString());
        stringbuilder.append("\nmPreferences: \n");
        stringbuilder.append(c1.a(d.getAll().entrySet()));
        return stringbuilder.toString();
    }
}
