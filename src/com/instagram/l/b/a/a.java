// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.b.a;

import android.content.SharedPreferences;
import com.instagram.l.b.b;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a
{

    public static SharedPreferences a(String s)
    {
        b b1 = b.a(s);
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            b1.b(com.instagram.service.a.a.a().c());
            return b1;
        } else
        {
            b1.a();
            return b1;
        }
    }

    public static void a(SharedPreferences sharedpreferences, SharedPreferences sharedpreferences1)
    {
        android.content.SharedPreferences.Editor editor = sharedpreferences1.edit();
        Iterator iterator = sharedpreferences.getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj = entry.getValue();
            String s = (String)entry.getKey();
            if (obj instanceof Boolean)
            {
                editor.putBoolean(s, ((Boolean)obj).booleanValue());
            } else
            if (obj instanceof Float)
            {
                editor.putFloat(s, ((Float)obj).floatValue());
            } else
            if (obj instanceof Integer)
            {
                editor.putInt(s, ((Integer)obj).intValue());
            } else
            if (obj instanceof Long)
            {
                editor.putLong(s, ((Long)obj).longValue());
            } else
            if (obj instanceof String)
            {
                editor.putString(s, (String)obj);
            }
        } while (true);
        editor.commit();
    }
}
