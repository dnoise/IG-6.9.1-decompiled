// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.SharedPreferences;
import java.util.Set;

// Referenced classes of package com.instagram.camera:
//            k

final class l
    implements android.content.SharedPreferences.Editor
{

    final k a;
    private android.content.SharedPreferences.Editor b;
    private android.content.SharedPreferences.Editor c;

    l(k k1)
    {
        a = k1;
        super();
        b = k.a(k1).edit();
        c = k.b(k1).edit();
    }

    public final void apply()
    {
        b.apply();
        c.apply();
    }

    public final android.content.SharedPreferences.Editor clear()
    {
        b.clear();
        c.clear();
        return this;
    }

    public final boolean commit()
    {
        boolean flag = b.commit();
        boolean flag1 = c.commit();
        return flag && flag1;
    }

    public final android.content.SharedPreferences.Editor putBoolean(String s, boolean flag)
    {
        if (k.a(s))
        {
            b.putBoolean(s, flag);
            return this;
        } else
        {
            c.putBoolean(s, flag);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putFloat(String s, float f)
    {
        if (k.a(s))
        {
            b.putFloat(s, f);
            return this;
        } else
        {
            c.putFloat(s, f);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putInt(String s, int i)
    {
        if (k.a(s))
        {
            b.putInt(s, i);
            return this;
        } else
        {
            c.putInt(s, i);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putLong(String s, long l1)
    {
        if (k.a(s))
        {
            b.putLong(s, l1);
            return this;
        } else
        {
            c.putLong(s, l1);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putString(String s, String s1)
    {
        if (k.a(s))
        {
            b.putString(s, s1);
            return this;
        } else
        {
            c.putString(s, s1);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putStringSet(String s, Set set)
    {
        throw new UnsupportedOperationException();
    }

    public final android.content.SharedPreferences.Editor remove(String s)
    {
        b.remove(s);
        c.remove(s);
        return this;
    }
}
