// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.b;

import android.content.SharedPreferences;
import com.instagram.user.b.b;
import com.instagram.user.userservice.a;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

// Referenced classes of package com.instagram.user.userservice.b:
//            a

public final class f extends a
{

    public f()
    {
    }

    public static void b(long l)
    {
        com.instagram.l.b.a.a.a("audiencePickerSuggestions").edit().putLong("EXPIRES_DATE", l).commit();
    }

    public static long e()
    {
        return com.instagram.l.b.a.a.a("audiencePickerSuggestions").getLong("EXPIRES_DATE", -1L);
    }

    private static com.instagram.user.userservice.b.a f()
    {
        return new com.instagram.user.userservice.b.a();
    }

    protected final void a(com.instagram.user.c.a a1)
    {
        com.instagram.f.d.a.a().c(a1);
    }

    protected final void a(Collection collection)
    {
        android.content.SharedPreferences.Editor editor = c().edit();
        Iterator iterator = collection.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            com.instagram.user.c.a a1 = (com.instagram.user.c.a)iterator.next();
            try
            {
                editor.putString(Integer.toString(i), com.instagram.user.b.b.a(a1));
                a(a1);
            }
            catch (IOException ioexception) { }
            i++;
        }
        editor.commit();
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            c().edit().clear().commit();
        }
        com.instagram.f.d.a.a().g();
    }

    protected final void b()
    {
        Map map = c().getAll();
        TreeMap treemap = new TreeMap();
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (!s.equals("EXPIRES_DATE"))
            {
                try
                {
                    treemap.put(Integer.valueOf(Integer.parseInt(s)), com.instagram.user.b.b.a((String)entry.getValue()));
                }
                catch (NumberFormatException numberformatexception) { }
            }
        } while (true);
        for (Iterator iterator1 = treemap.values().iterator(); iterator1.hasNext(); a((com.instagram.user.c.a)iterator1.next())) { }
    }

    protected final SharedPreferences c()
    {
        return com.instagram.l.b.a.a.a("audiencePickerSuggestions");
    }

    protected final com.instagram.api.k.a.a d()
    {
        return f();
    }
}
