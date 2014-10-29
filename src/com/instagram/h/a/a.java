// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.h.a;

import android.content.SharedPreferences;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;

public final class a
{

    private static final Map a = new HashMap();

    public static List a(CharSequence charsequence)
    {
        ArrayList arraylist = new ArrayList();
        if (charsequence != null && charsequence.length() > 0)
        {
            Character character = Character.valueOf(Character.toLowerCase(charsequence.charAt(0)));
            if (a.containsKey(character))
            {
                Iterator iterator = ((Set)a.get(character)).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s = (String)iterator.next();
                    if (s.toLowerCase().startsWith(charsequence.toString().toLowerCase()))
                    {
                        arraylist.add(s);
                    }
                } while (true);
            }
        }
        return arraylist;
    }

    public static void a()
    {
        c().edit().clear().commit();
        a.clear();
    }

    public static void a(String s)
    {
        c().edit().putString(s, s).commit();
        c(s);
    }

    public static void b()
    {
        for (Iterator iterator = c().getAll().entrySet().iterator(); iterator.hasNext(); c((String)((java.util.Map.Entry)iterator.next()).getValue())) { }
    }

    public static void b(String s)
    {
        if (e.c(s))
        {
            return;
        }
        Matcher matcher = e.a(s);
        android.content.SharedPreferences.Editor editor = c().edit();
        String s2;
        for (; matcher.find(); c(s2))
        {
            String s1 = matcher.group(1);
            s2 = s1.substring(1, s1.length());
            editor.putString(s2, s2);
        }

        editor.commit();
    }

    private static SharedPreferences c()
    {
        return com.instagram.l.b.a.a.a("AutoCompleteHashtagService");
    }

    private static void c(String s)
    {
        char c1 = Character.toLowerCase(s.charAt(0));
        if (!a.containsKey(Character.valueOf(c1)))
        {
            a.put(Character.valueOf(c1), new HashSet());
        }
        ((Set)a.get(Character.valueOf(c1))).add(s);
    }

}
