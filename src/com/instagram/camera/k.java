// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.instagram.camera:
//            l

public final class k
    implements SharedPreferences, android.content.SharedPreferences.OnSharedPreferenceChangeListener
{

    private static WeakHashMap d = new WeakHashMap();
    private SharedPreferences a;
    private SharedPreferences b;
    private CopyOnWriteArrayList c;

    public k(Context context)
    {
        a = PreferenceManager.getDefaultSharedPreferences(context);
        a.registerOnSharedPreferenceChangeListener(this);
        synchronized (d)
        {
            d.put(context, this);
        }
        c = new CopyOnWriteArrayList();
    }

    static SharedPreferences a(k k1)
    {
        return k1.a;
    }

    static boolean a(String s)
    {
        return b(s);
    }

    static SharedPreferences b(k k1)
    {
        return k1.b;
    }

    private static boolean b(String s)
    {
        return s.equals("pref_camera_id_key_v2");
    }

    public final SharedPreferences a()
    {
        return a;
    }

    public final void a(Context context, int i)
    {
        String s = (new StringBuilder()).append(context.getPackageName()).append("_preferences_").append(i).toString();
        if (b != null)
        {
            b.unregisterOnSharedPreferenceChangeListener(this);
        }
        b = context.getSharedPreferences(s, 0);
        b.registerOnSharedPreferenceChangeListener(this);
    }

    public final SharedPreferences b()
    {
        return b;
    }

    public final boolean contains(String s)
    {
        while (b.contains(s) || a.contains(s)) 
        {
            return true;
        }
        return false;
    }

    public final android.content.SharedPreferences.Editor edit()
    {
        return new l(this);
    }

    public final Map getAll()
    {
        throw new UnsupportedOperationException();
    }

    public final boolean getBoolean(String s, boolean flag)
    {
        if (b(s) || !b.contains(s))
        {
            return a.getBoolean(s, flag);
        } else
        {
            return b.getBoolean(s, flag);
        }
    }

    public final float getFloat(String s, float f)
    {
        if (b(s) || !b.contains(s))
        {
            return a.getFloat(s, f);
        } else
        {
            return b.getFloat(s, f);
        }
    }

    public final int getInt(String s, int i)
    {
        if (b(s) || !b.contains(s))
        {
            return a.getInt(s, i);
        } else
        {
            return b.getInt(s, i);
        }
    }

    public final long getLong(String s, long l1)
    {
        if (b(s) || !b.contains(s))
        {
            return a.getLong(s, l1);
        } else
        {
            return b.getLong(s, l1);
        }
    }

    public final String getString(String s, String s1)
    {
        if (b(s) || !b.contains(s))
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
