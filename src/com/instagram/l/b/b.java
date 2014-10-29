// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.instagram.common.h.a;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.instagram.l.b:
//            c

public final class b
    implements SharedPreferences, android.content.SharedPreferences.OnSharedPreferenceChangeListener
{

    private static WeakHashMap d = new WeakHashMap();
    private SharedPreferences a;
    private SharedPreferences b;
    private CopyOnWriteArrayList c;
    private final String e;

    private b(String s)
    {
        e = s;
        a = com.instagram.common.h.a.a().getSharedPreferences(s, 0);
        a.registerOnSharedPreferenceChangeListener(this);
        c = new CopyOnWriteArrayList();
    }

    static SharedPreferences a(b b1)
    {
        return b1.a;
    }

    public static b a(String s)
    {
        b b1;
        synchronized (d)
        {
            if (!d.containsKey(s))
            {
                d.put(s, new b(s));
            }
            b1 = (b)d.get(s);
        }
        return b1;
    }

    static SharedPreferences b(b b1)
    {
        return b1.b;
    }

    public final void a()
    {
        if (b != null)
        {
            b.unregisterOnSharedPreferenceChangeListener(this);
        }
        b = null;
    }

    public final void b(String s)
    {
        String s1 = (new StringBuilder()).append(s).append("_").append(e).toString();
        if (b != null)
        {
            b.unregisterOnSharedPreferenceChangeListener(this);
        }
        b = com.instagram.common.h.a.a().getSharedPreferences(s1, 0);
        b.registerOnSharedPreferenceChangeListener(this);
        if (!a.getAll().isEmpty())
        {
            com.instagram.l.b.a.a.a(a, b);
            a.edit().clear().commit();
        }
    }

    public final boolean contains(String s)
    {
        if (b != null && b.contains(s))
        {
            return true;
        } else
        {
            return a.contains(s);
        }
    }

    public final android.content.SharedPreferences.Editor edit()
    {
        return new c(this);
    }

    public final Map getAll()
    {
        if (b == null || b.getAll().isEmpty())
        {
            return a.getAll();
        } else
        {
            return b.getAll();
        }
    }

    public final boolean getBoolean(String s, boolean flag)
    {
        if (b == null || !b.contains(s))
        {
            return a.getBoolean(s, flag);
        } else
        {
            return b.getBoolean(s, flag);
        }
    }

    public final float getFloat(String s, float f)
    {
        if (b == null || !b.contains(s))
        {
            return a.getFloat(s, f);
        } else
        {
            return b.getFloat(s, f);
        }
    }

    public final int getInt(String s, int i)
    {
        if (b == null || !b.contains(s))
        {
            return a.getInt(s, i);
        } else
        {
            return b.getInt(s, i);
        }
    }

    public final long getLong(String s, long l)
    {
        if (b == null || !b.contains(s))
        {
            return a.getLong(s, l);
        } else
        {
            return b.getLong(s, l);
        }
    }

    public final String getString(String s, String s1)
    {
        if (b == null || !b.contains(s))
        {
            return a.getString(s, s1);
        } else
        {
            return b.getString(s, s1);
        }
    }

    public final Set getStringSet(String s, Set set)
    {
        throw new UnsupportedOperationException();
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((android.content.SharedPreferences.OnSharedPreferenceChangeListener)iterator.next()).onSharedPreferenceChanged(this, s)) { }
    }

    public final void registerOnSharedPreferenceChangeListener(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
        c.add(onsharedpreferencechangelistener);
    }

    public final void unregisterOnSharedPreferenceChangeListener(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
        c.remove(onsharedpreferencechangelistener);
    }

}
