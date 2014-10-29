// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view.a;

import java.util.List;

// Referenced classes of package android.support.v4.view.a:
//            n, l, p, k, 
//            a

public final class j
{

    private static final k a;
    private final Object b;

    public j()
    {
        b = a.a(this);
    }

    public j(Object obj)
    {
        b = obj;
    }

    public static a b()
    {
        return null;
    }

    public static boolean c()
    {
        return false;
    }

    public static List d()
    {
        return null;
    }

    public static a e()
    {
        return null;
    }

    public final Object a()
    {
        return b;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new n();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new l();
        } else
        {
            a = new p();
        }
    }
}
