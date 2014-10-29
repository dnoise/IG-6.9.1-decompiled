// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.e;

import android.content.SharedPreferences;
import com.instagram.android.g.b;
import com.instagram.feed.d.ai;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps.e:
//            b, c, d, e

public final class a
{

    private static a a;
    private SharedPreferences b;
    private SharedPreferences c;
    private List d;
    private d e;
    private e f;
    private boolean g;
    private List h;
    private List i;
    private String j;
    private List k;

    private a()
    {
        g = false;
        h = new ArrayList();
        i = new ArrayList();
        b = com.instagram.l.b.a.a.a("PhotoMapsEditManagerItemMap");
        c = com.instagram.l.b.a.a.a("PhotoMapsEditManagerGeneralPrefs");
        g = c.getBoolean("MapsPrefOnOff", false);
        e = new com.instagram.android.maps.e.b(this);
        f = new c(this);
    }

    public static a a()
    {
        if (a == null)
        {
            a = new a();
        }
        return a;
    }

    static List a(a a1)
    {
        return a1.h;
    }

    private void a(Collection collection, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); editor.putBoolean(((b)iterator.next()).f(), flag)) { }
        editor.commit();
        if (e != null)
        {
            e.a();
        }
    }

    static List b(a a1)
    {
        return a1.i;
    }

    private void b(b b1)
    {
        b.edit().putBoolean(b1.f(), false).commit();
        if (e != null)
        {
            e.a();
        }
    }

    private void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        for (Iterator iterator = b.getAll().keySet().iterator(); iterator.hasNext(); editor.putBoolean((String)iterator.next(), flag)) { }
        editor.commit();
        if (e != null)
        {
            e.a();
        }
    }

    private void c(b b1)
    {
        b.edit().putBoolean(b1.f(), true).commit();
        if (e != null)
        {
            e.a();
        }
    }

    private List e(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (!b.getBoolean(b1.f(), true))
            {
                arraylist.add(b1);
            }
        } while (true);
        return arraylist;
    }

    public final void a(b b1)
    {
        if (a(((ai) (b1))))
        {
            b(b1);
            return;
        } else
        {
            c(b1);
            return;
        }
    }

    public final void a(d d1)
    {
        h.add(d1);
    }

    public final void a(e e1)
    {
        i.add(e1);
    }

    public final void a(String s)
    {
        j = s;
    }

    public final void a(Collection collection)
    {
        a(collection, false);
    }

    public final void a(List list)
    {
        b.edit().clear().commit();
        d = list;
        android.content.SharedPreferences.Editor editor = b.edit();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); editor.putBoolean(((b)iterator.next()).f(), true)) { }
        editor.commit();
    }

    public final void a(boolean flag)
    {
        g = flag;
        c.edit().putBoolean("MapsPrefOnOff", flag).commit();
        if (!g)
        {
            b.edit().clear().commit();
        }
        if (e != null)
        {
            e.a();
        }
        if (f != null)
        {
            f.a(flag);
        }
    }

    public final boolean a(ai ai1)
    {
        return b.getBoolean(ai1.f(), true);
    }

    public final void b(d d1)
    {
        h.remove(d1);
    }

    public final void b(e e1)
    {
        i.remove(e1);
    }

    public final void b(Collection collection)
    {
        a(collection, true);
    }

    public final boolean b()
    {
        return com.instagram.service.a.a.a().b().g().equals(j) && g;
    }

    public final boolean b(List list)
    {
        new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            if (!b.getBoolean(b1.f(), true))
            {
                return true;
            }
        }

        return false;
    }

    public final String c()
    {
        return j;
    }

    public final void c(Collection collection)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); editor.putBoolean(((b)iterator.next()).f(), true)) { }
        editor.commit();
        if (e != null)
        {
            e.a();
        }
    }

    public final List d(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (b.getBoolean(b1.f(), true))
            {
                arraylist.add(b1);
            }
        } while (true);
        return arraylist;
    }

    public final void d()
    {
        b(false);
    }

    public final void e()
    {
        b(true);
    }

    public final boolean f()
    {
        return b.getAll().isEmpty();
    }

    public final int g()
    {
        Iterator iterator = b.getAll().values().iterator();
        int l = 0;
        while (iterator.hasNext()) 
        {
            int i1;
            if (!((Boolean)iterator.next()).booleanValue())
            {
                i1 = l + 1;
            } else
            {
                i1 = l;
            }
            l = i1;
        }
        return l;
    }

    public final int h()
    {
        Iterator iterator = b.getAll().values().iterator();
        int l = 0;
        while (iterator.hasNext()) 
        {
            int i1;
            if (((Boolean)iterator.next()).booleanValue())
            {
                i1 = l + 1;
            } else
            {
                i1 = l;
            }
            l = i1;
        }
        return l;
    }

    public final void i()
    {
        k = d(d);
    }

    public final List j()
    {
        List list = k;
        k = null;
        return list;
    }

    public final List k()
    {
        return e(d);
    }
}
