// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.b;

import android.content.SharedPreferences;
import java.util.Set;

// Referenced classes of package com.instagram.l.b:
//            b

final class c
    implements android.content.SharedPreferences.Editor
{

    final b a;
    private android.content.SharedPreferences.Editor b;
    private android.content.SharedPreferences.Editor c;

    c(b b1)
    {
        a = b1;
        super();
        b = com.instagram.l.b.b.a(b1).edit();
        if (com.instagram.l.b.b.b(b1) != null)
        {
            c = com.instagram.l.b.b.b(b1).edit();
        }
    }

    public final void apply()
    {
        b.apply();
        if (c != null)
        {
            c.apply();
        }
    }

    public final android.content.SharedPreferences.Editor clear()
    {
        b.clear();
        if (c != null)
        {
            c.clear();
        }
        return this;
    }

    public final boolean commit()
    {
label0:
        {
            boolean flag = b.commit();
            if (c != null)
            {
                boolean flag1 = c.commit();
                if (!flag || !flag1)
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public final android.content.SharedPreferences.Editor putBoolean(String s, boolean flag)
    {
        if (com.instagram.l.b.b.b(a) == null)
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
        if (com.instagram.l.b.b.b(a) == null)
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
        if (com.instagram.l.b.b.b(a) == null)
        {
            b.putInt(s, i);
            return this;
        } else
        {
            c.putInt(s, i);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putLong(String s, long l)
    {
        if (com.instagram.l.b.b.b(a) == null)
        {
            b.putLong(s, l);
            return this;
        } else
        {
            c.putLong(s, l);
            return this;
        }
    }

    public final android.content.SharedPreferences.Editor putString(String s, String s1)
    {
        if (com.instagram.l.b.b.b(a) == null)
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
        if (c != null)
        {
            c.remove(s);
        }
        return this;
    }
}
