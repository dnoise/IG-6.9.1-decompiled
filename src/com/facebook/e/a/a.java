// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.a;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook.e.a:
//            c, b

public final class a
{

    private static b a;
    private static volatile int b = 5;
    private static final List c = new ArrayList();

    public static void a(int i)
    {
        b = i;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); iterator.next()) { }
    }

    public static void a(int i, String s, String s1)
    {
label0:
        {
            if (b <= i)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.println(i, s, s1);
    }

    public static void a(Class class1, String s)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
                com.facebook.e.a.c.a(class1);
            }
            return;
        }
        Log.e(com.facebook.e.a.c.a(class1), s);
    }

    public static void a(Class class1, String s, Throwable throwable)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
                com.facebook.e.a.c.a(class1);
            }
            return;
        }
        Log.e(com.facebook.e.a.c.a(class1), s, throwable);
    }

    public static transient void a(Class class1, String s, Object aobj[])
    {
        String s1;
label0:
        {
            if (b <= 6)
            {
                s1 = com.facebook.d.f.a.a(s, aobj);
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
                com.facebook.e.a.c.a(class1);
            }
            return;
        }
        Log.e(com.facebook.e.a.c.a(class1), s1);
    }

    public static void a(String s, String s1)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.e(s, s1);
    }

    public static void a(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.e(s, s1, throwable);
    }

    public static transient void a(String s, String s1, Object aobj[])
    {
        String s2;
label0:
        {
            if (b <= 6)
            {
                s2 = com.facebook.d.f.a.a(s1, aobj);
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.e(s, s2);
    }

    public static void b(Class class1, String s)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
                com.facebook.e.a.c.a(class1);
            }
            return;
        }
        Log.e(com.facebook.e.a.c.a(class1), s);
    }

    public static void b(String s, String s1)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.e(s, s1);
    }

    public static void b(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (b <= 6)
            {
                if (a == null)
                {
                    break label0;
                }
                b _tmp = a;
            }
            return;
        }
        Log.e(s, s1, throwable);
    }

    public static boolean b(int i)
    {
        return i >= b;
    }

}
